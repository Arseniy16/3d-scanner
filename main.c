/*
 * This project is Lab08-02
 * Rotate encoder and change sound frequency of the piezo speaker and 
 * show on the 7-segment indicator frequency   
 */
#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_tim.h"
#include "stm32f0xx_ll_usart.h"

#include "stm32f0xx_ll_exti.h"
#include "stm32f0xx_ll_utils.h"
#include "stm32f0xx_ll_cortex.h"
#include "math.h"

/*-------------------VARIABLES----------------- */
//------------------------------------------------
static uint32_t diff = 0;
static uint32_t dist = 0;
//static uint32_t count = 0;


/*--------------------------------------------- */
/*
 * This is a special bit_mask to turn on segments on an indicator 
 */
#define bits(PIN_7, PIN_6, PIN_5, PIN_4, PIN_3, PIN_2, PIN_1, PIN_0) \
  ((PIN_7) * (LL_GPIO_PIN_7) | \
   (PIN_6) * (LL_GPIO_PIN_6) | \
   (PIN_5) * (LL_GPIO_PIN_5) | \
   (PIN_4) * (LL_GPIO_PIN_4) | \
   (PIN_3) * (LL_GPIO_PIN_3) | \
   (PIN_2) * (LL_GPIO_PIN_2) | \
   (PIN_1) * (LL_GPIO_PIN_1) | \
   (PIN_0) * (LL_GPIO_PIN_0)   )
/*---------------------------------------------*/
/*
 * it's a special mask to turn on paticular leds on indicator
 */
uint32_t mask_indicator(uint32_t mask)
{
  return bits((mask & (1<<7)) >> 7, (mask & (1<<6)) >> 6, (mask & (1<<5)) >> 5, (mask & (1<<4)) >> 4, \
        (mask & (1<<3)) >> 3, (mask & (1<<2)) >> 2, (mask & (1<<1)) >> 1, mask & 1);
}
/*---------------------------------------------*/

/**
  * System Clock Configuration
  * The system Clock is configured as follow :
  *    System Clock source            = PLL (HSI/2)
  *    SYSCLK(Hz)                     = 48000000
  *    HCLK(Hz)                       = 48000000
  *    AHB Prescaler                  = 1
  *    APB1 Prescaler                 = 1
  *    HSI Frequency(Hz)              = 8000000
  *    PLLMUL                         = 12
  *    Flash Latency(WS)              = 1
  */
static void rcc_config()
{
    /* Set FLASH latency */
    LL_FLASH_SetLatency(LL_FLASH_LATENCY_1);

    /* Enable HSI and wait for activation*/
    LL_RCC_HSI_Enable();
    while (LL_RCC_HSI_IsReady() != 1);

    /* Main PLL configuration and activation */
    LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI_DIV_2,
                LL_RCC_PLL_MUL_12);

    LL_RCC_PLL_Enable();
    while (LL_RCC_PLL_IsReady() != 1);

    /* Sysclk activation on the main PLL */
    LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
    LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
    while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL);

    /* Set APB1 prescaler */
    LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_1);

    /* Update CMSIS variable (which can be updated also
     * through SystemCoreClockUpdate function) */
    SystemCoreClock = 48000000;
}
/*---------------------------------------------*/
static void gpio_config(void)
{
    /*
    * Init two default LEDs
    */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);
    /*
    * Init main ports for indicators
    * from MSB to LSB -> 3_2_1_0    
    */
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_0, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_1, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_2, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_3, LL_GPIO_MODE_OUTPUT);
    /*
    * Init port for USER button
    */
    //LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    //LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_0, LL_GPIO_MODE_INPUT);
    /*
    * Init ports for indicator
    */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_0, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_1, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_2, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_3, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_4, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_5, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_6, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_7, LL_GPIO_MODE_OUTPUT);

    return;
}
/*---------------------------------------------*/
/*
 * This function is for displaying number in decimal (0-9999)
 */
void dec_display(uint32_t number)
{
    static uint32_t digit_num = 0;
    uint16_t out = 0;

    const uint16_t decoder[] = 
    {
    bits(0,0,1,1,1,1,1,1), //0
    bits(0,0,0,0,0,1,1,0), //1
    bits(0,1,0,1,1,0,1,1), //2
    bits(0,1,0,0,1,1,1,1), //3
    bits(0,1,1,0,0,1,1,0), //4
    bits(0,1,1,0,1,1,0,1), //5
    bits(0,1,1,1,1,1,0,1), //6
    bits(0,0,0,0,0,1,1,1), //7
    bits(0,1,1,1,1,1,1,1), //8
    bits(0,1,1,0,1,1,1,1), //9
    }; 

    //update indicator
    LL_GPIO_WriteOutputPort(GPIOC, mask_indicator(0b1111));

    //turn on a particular indicator
    LL_GPIO_ResetOutputPin(GPIOC, mask_indicator(1<<digit_num));

    if(digit_num == 0) out = decoder[(number % 10)];
    if(digit_num == 1) out = decoder[(number / 10) % 10];
    if(digit_num == 2) out = decoder[(number / 100) % 10];
    if(digit_num == 3) out = decoder[(number / 1000) % 10];

    LL_GPIO_WriteOutputPort(GPIOB, mask_indicator(out));

    digit_num = (digit_num + 1) % 4;
    
    return; 
}

//-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
__attribute__((naked)) static void delay(void)
{
    asm ("push {r7, lr}");
    asm ("ldr r6, [pc, #8]");
    asm ("sub r6, #1");
    asm ("cmp r6, #0");
    asm ("bne delay+0x4");
    asm ("pop {r7, pc}");
    asm (".word 0x3c"); //60 (10mks)
}
//-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

//TIM14 CH1 (GPIOA Pin4 AF4) - TRIG
static void sonar_trig(void)
{
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_4, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_0_7(GPIOA, LL_GPIO_PIN_4, LL_GPIO_AF_4); //TIM14 CH1 (GPIOA Pin4) - TRIG

    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM14);

    LL_TIM_SetPrescaler(TIM14, 47); 
    LL_TIM_SetAutoReload(TIM14, 59999); //period PWM = 60ms
    LL_TIM_OC_SetCompareCH1(TIM14, 59989); //10 mks

    LL_TIM_CC_EnableChannel(TIM14, LL_TIM_CHANNEL_CH1);

    LL_TIM_OC_SetPolarity(TIM14, LL_TIM_CHANNEL_CH1, LL_TIM_OCPOLARITY_HIGH);
    LL_TIM_OC_SetMode(TIM14, LL_TIM_CHANNEL_CH1, LL_TIM_OCMODE_PWM1);

    LL_TIM_SetCounterMode(TIM14, LL_TIM_COUNTERMODE_UP);
    
    LL_TIM_EnableIT_CC1(TIM14);
    LL_TIM_EnableCounter(TIM14);

    /*
     * Setup NVIC
     */
    //NVIC_EnableIRQ(TIM2_IRQn);
    //NVIC_SetPriority(TIM2_IRQn, 3);

    return ;
}
/*----------------------------------------------------------------*/
static void sonar_echo(void)
{
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_7, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_0_7(GPIOA, LL_GPIO_PIN_7, LL_GPIO_AF_1); //TIM3 CH2 - ECHO
    
    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM3);

    LL_TIM_SetPrescaler(TIM3, 47);//--
    //LL_TIM_SetAutoReload(TIM3, 65535);

    LL_TIM_IC_SetActiveInput(TIM3, LL_TIM_CHANNEL_CH2, LL_TIM_ACTIVEINPUT_DIRECTTI); 
    LL_TIM_IC_SetPrescaler(TIM3, LL_TIM_CHANNEL_CH2, LL_TIM_ICPSC_DIV1);

    LL_TIM_IC_SetPolarity(TIM3, LL_TIM_CHANNEL_CH2, LL_TIM_IC_POLARITY_RISING);  

    LL_TIM_SetCounterMode(TIM3, LL_TIM_COUNTERMODE_UP); 

    LL_TIM_CC_EnableChannel(TIM3, LL_TIM_CHANNEL_CH2);

    //LL_TIM_GenerateEvent_UPDATE(TIM3); //--
    
    LL_TIM_EnableIT_CC2(TIM3); //cc1
    LL_TIM_EnableCounter(TIM3);

    /*
     * Setup NVIC
     */ 
    NVIC_EnableIRQ(TIM3_IRQn);
    NVIC_SetPriority(TIM3_IRQn, 2);

    return ;
}

//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

//TIM2 CH1 (GPIOA PIN0 AF2)
static void servo_1(void)
{
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_0, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_0_7(GPIOA, LL_GPIO_PIN_0, LL_GPIO_AF_2); //TIM2 CH1

    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM2);

    LL_TIM_SetPrescaler(TIM2, 14); 
    LL_TIM_SetAutoReload(TIM2, 64000); //period PWM = 20ms
    
    //double Val = 0.6 / 20 * 64000;
    //LL_TIM_OC_SetCompareCH1(TIM14, 7680);

    LL_TIM_CC_EnableChannel(TIM2, LL_TIM_CHANNEL_CH1);

    LL_TIM_OC_SetPolarity(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_OCPOLARITY_HIGH);
    LL_TIM_OC_SetMode(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_OCMODE_PWM1);

    LL_TIM_SetCounterMode(TIM2, LL_TIM_COUNTERMODE_UP);
    
    LL_TIM_EnableIT_CC1(TIM2);
    LL_TIM_EnableCounter(TIM2);

    /*
     * Setup NVIC
     */
    //NVIC_EnableIRQ(TIM14_IRQn);
    //NVIC_SetPriority(TIM14_IRQn, 3);

    return ;
}
/*----------------------------------------------------------------*/

//TIM2 CH2 (GPIOA PIN1 AF2)
static void servo_2(void)
{
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);

    LL_GPIO_SetPinMode  (GPIOA, LL_GPIO_PIN_1, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_0_7(GPIOA, LL_GPIO_PIN_1, LL_GPIO_AF_2); //TIM2 CH2

    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM2);

    LL_TIM_SetPrescaler(TIM2, 14); 
    LL_TIM_SetAutoReload(TIM2, 64000); //period PWM = 20ms
    
    //double Val = 0.6 / 20 * 64000;
    //LL_TIM_OC_SetCompareCH1(TIM14, 7680);

    LL_TIM_CC_EnableChannel(TIM2, LL_TIM_CHANNEL_CH2);

    LL_TIM_OC_SetPolarity(TIM2, LL_TIM_CHANNEL_CH2, LL_TIM_OCPOLARITY_HIGH);
    LL_TIM_OC_SetMode(TIM2, LL_TIM_CHANNEL_CH2, LL_TIM_OCMODE_PWM1);

    LL_TIM_SetCounterMode(TIM2, LL_TIM_COUNTERMODE_UP);
    
    LL_TIM_EnableIT_CC1(TIM2);
    LL_TIM_EnableCounter(TIM2);

    /*
     * Setup NVIC
     */
    //NVIC_EnableIRQ(TIM2_IRQn);
    //NVIC_SetPriority(TIM2_IRQn, 3);

    return ;
}

//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

void TIM3_IRQHandler(void)
{
    while (!LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_7));

    LL_TIM_SetCounter(TIM3, 0);

    while (LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_7));
    
    diff = LL_TIM_GetCounter(TIM3); //difference in mks

    dist = (uint32_t) (diff / 58.8) ;

    LL_TIM_ClearFlag_CC2(TIM3);

    return;

}

/*----------------------------------------------------------------*/
/*
 * Configure system timer to time 1 ms
 */

static void systick_config(void)
{
    LL_InitTick(48000000, 1000);
    LL_SYSTICK_EnableIT();
    NVIC_SetPriority(SysTick_IRQn, 0);
    return;
}

/*----------------------------------------------------------------*/

/*
 * Structure for communication
 */
typedef struct {
    uint8_t cmd;
    uint8_t params[10];
    uint8_t active;
} uart_req_t;

static uart_req_t uart_req, uart_resp;

uint16_t count = 0;
//uint16_t value = 0;

/*
 * Initialize USART module and associated pins
 */
static void usart_config(void)
{
    /*
     * Setting USART pins
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    //USART1_TX
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_9, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_8_15(GPIOA, LL_GPIO_PIN_9, LL_GPIO_AF_1);
    LL_GPIO_SetPinSpeed(GPIOA, LL_GPIO_PIN_9, LL_GPIO_SPEED_FREQ_HIGH);
    //USART1_RX
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_10, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_8_15(GPIOA, LL_GPIO_PIN_10, LL_GPIO_AF_1);
    LL_GPIO_SetPinSpeed(GPIOA, LL_GPIO_PIN_10, LL_GPIO_SPEED_FREQ_HIGH);
    /*
     * USART Set clock source
     */
    LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_USART1);
    LL_RCC_SetUSARTClockSource(LL_RCC_USART1_CLKSOURCE_PCLK1);
    /*
     * USART Setting
     */
    LL_USART_SetTransferDirection(USART1, LL_USART_DIRECTION_TX_RX);
    LL_USART_SetParity(USART1, LL_USART_PARITY_NONE);
    LL_USART_SetDataWidth(USART1, LL_USART_DATAWIDTH_8B);
    LL_USART_SetStopBitsLength(USART1, LL_USART_STOPBITS_1);
    LL_USART_SetTransferBitOrder(USART1, LL_USART_BITORDER_LSBFIRST);
    LL_USART_SetBaudRate(USART1, SystemCoreClock,
                         LL_USART_OVERSAMPLING_16, 115200);
    LL_USART_EnableIT_IDLE(USART1);
    LL_USART_EnableIT_RXNE(USART1);
    /*
     * USART turn on
     */
    LL_USART_Enable(USART1);
    while (!(LL_USART_IsActiveFlag_TEACK(USART1) &&
             LL_USART_IsActiveFlag_REACK(USART1)));
    /*
     * Turn on NVIC interrupt line
     */
    //NVIC_SetPriority(USART1_IRQn, 0);
    //NVIC_EnableIRQ(USART1_IRQn);
    return;
}

/*---------------------------------------------*/
/*
void USART1_IRQHandler(void)
{
    static uint8_t pos = 0;
    
    if (LL_USART_IsActiveFlag_RXNE(USART1)) 
    {
        uart_req.params[pos] = LL_USART_ReceiveData8(USART1);
        pos++;
        count++;
    }
    if (LL_USART_IsActiveFlag_IDLE(USART1)) 
    {
        pos = 0;
        uart_req.active = 1;
        LL_USART_ClearFlag_IDLE(USART1);
    }
    return;
}
*/
/*---------------------------------------------*/

void manage_response(uint16_t value) 
{
    int8_t pos = 0;
    
    while (value)
    {
        uart_resp.params[pos++] =  value % 10;

        value /= 10;
    }

    if (pos > 0) pos--;

    while (!LL_USART_IsActiveFlag_TXE(USART1));

    //send value to usart
    while (pos >= 0)
    {
        LL_USART_TransmitData8(USART1, uart_resp.params[pos--] + '0');
        while (!LL_USART_IsActiveFlag_TC(USART1));
    }

    //special separotor to send string to usart
    LL_USART_TransmitData8(USART1, '|');
    while (!LL_USART_IsActiveFlag_TC(USART1));

    return;
}

/*
static void manage_requests(void) 
{
    uint16_t is_ok = 0, temp = 0;
   
    if (!uart_req.active)
        return;
    
    /*
     * for output on the indicator 
     */
/*    value = 0;
    
    // to limit value contains <= 4 digits 
    if (count > 4) 
    {
        count = 4;
        is_ok = 0;
    }
    else is_ok = 1;

    for (uint8_t i = 0; (i < count) && (i < 4); i++)
    {
        temp = uart_req.params[i] - '0';

        for (uint8_t j = 1; j < count - i; j++)
            temp *= 10;

        value += temp;
    }

    count = 0;

    //don't transmit anything to execute more than 1 command
    while (!LL_USART_IsActiveFlag_TXE(USART1));
    LL_USART_TransmitData8(USART1, 'a');

    uart_req.active = 0;
    return;
}
*/

/*---------------------------------------------*/

/* 
 * Pulse_duration: 0.5 - 2.6(ms), (normal: 0.6 - 2.4(ms) )
 * Period: 20ms
 * NO: N_deg = Pulse_durarion/Period * ARR(64000)
 */

/* 0deg -> ARR = 1600 (0.5ms)
 * 180deg -> ARR = 8300 (2.6ms)
 */

/* ////////////////////////////////////////
 * Servo_1(X): 0deg -> ARR = 1920 (0.6ms)
 *          180deg -> ARR = 7680 (2.4ms)
 * -------------------------------------
 * Servo_2(Y): 0deg -> ARR = 1600 (0.5ms)
 *          180deg -> ARR = 7680 (2.4ms) 
 * ////////////////////////////////////////
 */ 
/*---------------------------------------------*/


uint32_t cnt = 1760;
uint8_t flag = 1; //clockwise

/*
 * Handler for system timer
 */

void SysTick_Handler(void)
{

    dec_display(dist); //dist
/*
    if (flag)
    {
        if (cnt < 7680) cnt++;
        else flag = 0;
    }
    else if (!flag)
    {
        if(cnt > 1600) cnt--;
        else flag = 1;
    }
    //else cnt = 1600;
*/
    //LL_TIM_OC_SetCompareCH1(TIM2, 1920); //servo1
    //LL_TIM_OC_SetCompareCH2(TIM2, 3040); //servo2
    return;
}

/*
 * Edge - ARR for servo in normal condition (0 - 180)
 */
const uint32_t minEdge_X = 1920;
const uint32_t maxEdge_X = 7680;

const uint32_t minEdge_Y = 1600;
const uint32_t maxEdge_Y = 7680;

/*
 * Initialization for servos to limit angles
 * easier to control servos
 */
const uint32_t minArr_X = minEdge_X; // 0deg
const uint32_t maxArr_X = maxEdge_X; // 180 deg

const uint32_t minArr_Y = 2613; // 30deg
const uint32_t maxArr_Y = 6667; // 150deg

const uint32_t Step_X = 1; // 1 step = 0.03 deg (but it's not accurate)
const uint32_t Step_Y = 1;

//const double pi = 3.14159265;
const double deg2rad = M_PI / 180.0; 

uint8_t scanDirection = 1; 

uint8_t Cycle = 1; //number of cycles for scanning

/*
 * azimuth   -> angle on the surface XY
 * elevation -> angle on the surface XZ
 */

void Conversation(uint32_t Arr_X, uint32_t Arr_Y)
{
    double PosX = 180.0 * (Arr_X - minEdge_X) / (maxEdge_X - minEdge_X);
    double PosY = 180.0 * (Arr_Y - minEdge_Y) / (maxEdge_Y - minEdge_Y);

    double azimuth = PosX * deg2rad;
    double elevation = PosY * deg2rad;

    uint32_t X_axis = dist * sin(elevation) * cos(azimuth); 
    uint32_t Y_axis = dist * sin(elevation) * sin(azimuth);
    uint32_t Z_axis = dist * -cos(elevation);
    
    //send values to usart
    manage_response(X_axis);
    manage_response(Y_axis);
    manage_response(Z_axis);

    return;
} 

// ----------------------------------------------
for (uint8_t i = 0; i < Cycle; i++)
{
    //go to home
    Arr_X = minArr_X;
    Arr_Y = minArr_Y;

    while (Arr_Y <= maxArr_Y)
    {

        if (scanDirection)
        {
            while (Arr_X <= maxArr_X)
            {
                Conversation(Arr_X, Arr_Y);
                
                LL_TIM_OC_SetCompareCH1(TIM2, Arr_X); //servo1
                
                Arr_X += Step_X;  
            }

            scanDirection = 0;
        }
        else 
        {
            while (Arr_X >= minArr_X)
            {
                Conversation(Arr_X, Arr_Y);

                LL_TIM_OC_SetCompareCH1(TIM2, Arr_X); //servo1    

                Arr_X -= Step_X;  
            }

            scanDirection = 1;
        }

        LL_TIM_OC_SetCompareCH2(TIM2, Arr_Y); //servo2

        Arr_Y += Step_Y;  
    }
    
}

/* \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ 
 * TODO:
 * 1) go to home (servo)
 * 2) get Length
 * 3) send with usart value
 * 4) incX++ for X axis to maxPos and {2) - 3)}   <<<
 * 5) incY+1 and continue 4) to minPosX   --------->| 
 *
 */
/*---------------------------------------------*/
int main()
{
    rcc_config();
    gpio_config();
    sonar_trig();
    sonar_echo();
    servo_1();
    servo_2();
    systick_config();
    usart_config();
    
    manage_response(635);

    manage_response(105);

    manage_response(12323);

    while (1)
    {

    }

    return 0;
}
