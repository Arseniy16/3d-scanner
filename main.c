/* |\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\    |
 * |-------------------------------------------------------------|
 * | It's a CONCLUSION PROJECT in the course of Microcontrollers |
 * |               This is Ultrasonic 3d_scanner                 |
 * |-------------------------------------------------------------|
 * |----------------------THE_MAIN_IDEA--------------------------|
 * |=============================================================|
 * |It scans the space using ultrasonic sensor and two servos    |
 * |Also it shows the distance on the 7-segment indicator        |
 * |and sends it through the usart to show data in graph         |
 * |=============================================================|
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

/*---------------------------------------------------------------------*/
/*------------------Some information about servos----------------------*/

/* ========================================================
 * Pulse_duration: 0.5 - 2.6(ms), (normal: 0.6 - 2.4(ms) )
 * Period: 20 ms
 * NO: N_deg = Pulse_durarion / Period * ARR(64000)
 * ========================================================
 */ 
/*_____________________________________________________________________*/
/* 
 * 0deg -> ARR = 1600 (0.5 ms) - 50
 * 180deg -> ARR = 8300 (2.6 ms) - 260
 */
/*---------------------------------------------------------------------*/

/* ==============================================
 * Servo_1(X): 0 deg -> ARR = 2080 (0.65 ms) 
 *             180 deg -> ARR = 7680 (2.4 ms)
 * ----------------------------------------------
 * Servo_2(Y): 0 deg -> ARR = 1600 (0.5 ms)
 *             180 deg -> ARR = 7680 (2.4 ms)
 * ==============================================
 */ 
/*_____________________________________________________________________*/


/* ################################################################### */
/* ############################# VARIABLES ########################### */
/* ################################################################### */

/*
 * The difference (in mks) between the start and stop time (for ulttrasonic)
 */
uint32_t diff = 0;

/*
 * The distance between object and sonar 
 */
double dist = 0.0;

/*
 * Edge - ARR for servo in normal condition (0 - 180)
 */
const uint32_t minEdge_X = 1600;//2080;
const uint32_t maxEdge_X = 7680;//7680;

const uint32_t minEdge_Y = 1600;
const uint32_t maxEdge_Y = 7680;

/*
 * Initialization servos to limit angles
 * easier to control servos
 */
const uint32_t minArr_X = minEdge_X; // 0 deg
const uint32_t maxArr_X = maxEdge_X; // 180 deg

const uint32_t minArr_Y = 3627; // 60 deg
const uint32_t maxArr_Y = 6667; // 150 deg

/*
 * Initialization step: Step_X - for XY_plane
 *                      Step_Y - for XZ_plane
 * NO: 1 step = 0.03 deg
 */
const uint32_t Step_X = 60; //60
const uint32_t Step_Y = 90; //90 

const double deg2rad = M_PI / 180.0; 

/*
 * Count of cycles for scanning
 */
const uint8_t Cycle = 1;

/*
 * if scanDirection = 1 -> rotate the servo clockwise
 * else -> rotate the servo counterclockwise 
 */
uint8_t scanDirection = 1;

// uint8_t status_wait = 0;

/* ################################################################### */
/* --------------------------TEXT-VARIABLES----------------------------*/
/////////////////////////////////////////////////////////////////////////

/*
 * During TEXT_TIME you can show the text 
 * It uses in text()
 */ 
#define TEXT_TIME 1000 //in ms

/*
 * During DEC_TIME and DYN_TIME you can show a value 
 * It uses in dec_display() and in dyn_display()
 */ 
#define DEC_TIME 5 //in ms

#define DYN_TIME 1000 //in ms

/*
 * It uses in delay() and for calculate count in cycles 
 * If you change delay() you must change DELAY!!!
 */
#define DELAY 2 //in ms

/*
 * The higher DYNAMIC_COEF, the slower the text moves
 * It uses in dynamic_text()    
 */
#define DYNAMIC_COEF 50 //normal value

/////////////////////////////////////////////////////////////////////////

/*---------------------------------------------------------------------*/
/*
 * This is a special bit_mask to turn on segments on an indicator 
 */
#define bits(PIN_7, PIN_6, PIN_5, PIN_4, PIN_3, PIN_2, PIN_1, PIN_0) \
    ((PIN_7)* (LL_GPIO_PIN_7) | \
    (PIN_6) * (LL_GPIO_PIN_6) | \
    (PIN_5) * (LL_GPIO_PIN_5) | \
    (PIN_4) * (LL_GPIO_PIN_4) | \
    (PIN_3) * (LL_GPIO_PIN_3) | \
    (PIN_2) * (LL_GPIO_PIN_2) | \
    (PIN_1) * (LL_GPIO_PIN_1) | \
    (PIN_0) * (LL_GPIO_PIN_0)   )

/*---------------------------------------------------------------------*/
/*
 * It's a special mask to turn on paticular leds on indicator
 */
uint32_t mask_indicator(uint32_t mask)
{
    return bits((mask & (1<<7)) >> 7, (mask & (1<<6)) >> 6, \
                (mask & (1<<5)) >> 5, (mask & (1<<4)) >> 4, \
                (mask & (1<<3)) >> 3, (mask & (1<<2)) >> 2, \
                (mask & (1<<1)) >> 1, mask & 1);
}

/*---------------------------------------------------------------------*/
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
    LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI_DIV_2, LL_RCC_PLL_MUL_12);

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

/*---------------------------------------------------------------------*/
/*
 * Configurate all GPIO pins
 */
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
     * Init ports for the indicator
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

/*---------------------------------------------------------------------*/
/*
 * This function is for displaying number in decimal (0-9999)
 */
static void dec_display(uint32_t number)
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

    // Update the indicator
    LL_GPIO_WriteOutputPort(GPIOC, mask_indicator(0b1111));

    // Turn on a particular indicator
    LL_GPIO_ResetOutputPin(GPIOC, mask_indicator(1<<digit_num));

    if (digit_num == 0) out = decoder[(number % 10)];
    if (digit_num == 1) out = decoder[(number / 10) % 10];
    if (digit_num == 2) out = decoder[(number / 100) % 10];
    if (digit_num == 3) out = decoder[(number / 1000) % 10];

    LL_GPIO_WriteOutputPort(GPIOB, mask_indicator(out));

    digit_num = (digit_num + 1) % 4;
    
    return; 
}

/*---------------------------------------------------------------------*/
/*
 * Configuration for sonar trigger pin
 * 
 * // TIM14 CH1 (GPIOA Pin4 AF4) - TRIG \\
 */
static void sonar_trig(void)
{
    /*
     * Init trigger pin as // TIM14 CH1 (GPIOA Pin4 AF4) \\
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_4, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_0_7(GPIOA, LL_GPIO_PIN_4, LL_GPIO_AF_4);

    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM14);

    /*
     * Frequency = 1 MHz
     * Period PWM = 60 ms
     * Period Trigger = 10 mks (trigger input to module)
     */
    LL_TIM_SetPrescaler(TIM14, 47);
    LL_TIM_SetAutoReload(TIM14, 59999);
    LL_TIM_OC_SetCompareCH1(TIM14, 59989);

    LL_TIM_CC_EnableChannel(TIM14, LL_TIM_CHANNEL_CH1);

    LL_TIM_OC_SetPolarity(TIM14, LL_TIM_CHANNEL_CH1, LL_TIM_OCPOLARITY_HIGH);
    LL_TIM_OC_SetMode(TIM14, LL_TIM_CHANNEL_CH1, LL_TIM_OCMODE_PWM1);

    LL_TIM_SetCounterMode(TIM14, LL_TIM_COUNTERMODE_UP);
    
    LL_TIM_EnableIT_CC1(TIM14);
    LL_TIM_EnableCounter(TIM14);

    return ;
}

/*---------------------------------------------------------------------*/
/*
 * Configuration for sonar echo pin
 * 
 * // TIM3 CH2 (GPIOA Pin7 AF1) - ECHO \\
 */
static void sonar_echo(void)
{
    /*
     * Init echo pin as // TIM3 CH2 (GPIOA Pin7 AF1) \\
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_7, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_0_7(GPIOA, LL_GPIO_PIN_7, LL_GPIO_AF_1);
    
    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM3);

    LL_TIM_SetPrescaler(TIM3, 47); // frequency = 1 MHz

    LL_TIM_IC_SetActiveInput(TIM3, LL_TIM_CHANNEL_CH2, LL_TIM_ACTIVEINPUT_DIRECTTI);
    LL_TIM_IC_SetPrescaler(TIM3, LL_TIM_CHANNEL_CH2, LL_TIM_ICPSC_DIV1);
    LL_TIM_IC_SetPolarity(TIM3, LL_TIM_CHANNEL_CH2, LL_TIM_IC_POLARITY_RISING);

    LL_TIM_SetCounterMode(TIM3, LL_TIM_COUNTERMODE_UP); 
    LL_TIM_CC_EnableChannel(TIM3, LL_TIM_CHANNEL_CH2);
    
    LL_TIM_EnableIT_CC2(TIM3);
    LL_TIM_EnableCounter(TIM3);

    /*
     * Setup NVIC
     */ 
    NVIC_EnableIRQ(TIM3_IRQn);
    NVIC_SetPriority(TIM3_IRQn, 1);

    return ;
}

/*---------------------------------------------------------------------*/
/*
 * Configuration SERVO_1 in the XY plane
 * 
 * // TIM2 CH1 (GPIOA PIN0 AF2) - XY_plane \\
 */
static void servo_1(void) 
{   
    /*
     * Init servo as // TIM2 CH1 (GPIOA PIN0 AF2) \\
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_0, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_0_7(GPIOA, LL_GPIO_PIN_0, LL_GPIO_AF_2);

    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM2);

    /*
     * Period PWM = 20 ms
     */
    LL_TIM_SetPrescaler(TIM2, 14); //14
    LL_TIM_SetAutoReload(TIM2, 64000); //64000
    //LL_TIM_OC_SetCompareCH1(TIM2, minArr_X); //

    LL_TIM_CC_EnableChannel(TIM2, LL_TIM_CHANNEL_CH1);

    LL_TIM_OC_SetPolarity(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_OCPOLARITY_HIGH);
    LL_TIM_OC_SetMode(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_OCMODE_PWM1);

    LL_TIM_SetCounterMode(TIM2, LL_TIM_COUNTERMODE_UP);
    
    LL_TIM_EnableIT_CC1(TIM2);
    LL_TIM_EnableCounter(TIM2);

    NVIC_EnableIRQ(TIM2_IRQn);
    NVIC_SetPriority(TIM2_IRQn, 2);
    
    return ;
}

/*---------------------------------------------------------------------*/
/*
 * Configuration SERVO_2 in the XZ plane
 * 
 * // TIM2 CH3 (GPIOA PIN2 AF2) - XZ-plane \\
 */
static void servo_2(void)
{
    /*
     * Init servo as // TIM2 CH2 (GPIOA PIN1 AF2) \\
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_2, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_0_7(GPIOA, LL_GPIO_PIN_2, LL_GPIO_AF_2);

    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM2);

    /*
     * Period PWM = 20 ms
     */
    LL_TIM_SetPrescaler(TIM2, 14); 
    LL_TIM_SetAutoReload(TIM2, 64000);

    LL_TIM_CC_EnableChannel(TIM2, LL_TIM_CHANNEL_CH3);

    LL_TIM_OC_SetPolarity(TIM2, LL_TIM_CHANNEL_CH3, LL_TIM_OCPOLARITY_HIGH);
    LL_TIM_OC_SetMode(TIM2, LL_TIM_CHANNEL_CH3, LL_TIM_OCMODE_PWM1);

    LL_TIM_SetCounterMode(TIM2, LL_TIM_COUNTERMODE_UP);
    
    LL_TIM_EnableIT_CC3(TIM2);
    LL_TIM_EnableCounter(TIM2);

    NVIC_EnableIRQ(TIM2_IRQn);
    NVIC_SetPriority(TIM2_IRQn, 3);

    return ;
}

/*---------------------------------------------------------------------*/
/*
 * Handler for TIMER_2
 */
void TIM2_IRQHandler(void)
{
    LL_TIM_ClearFlag_UPDATE(TIM2);
    LL_TIM_ClearFlag_CC1(TIM2);
    LL_TIM_ClearFlag_CC3(TIM2);
}

/*---------------------------------------------------------------------*/
/*
 * Handler for TIMER_3
 */
void TIM3_IRQHandler(void)
{
    /*
     * Wait the sonar_echo pulse
     */
    while (!LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_7));
    
    LL_TIM_SetCounter(TIM3, 0); // update the counter

    /*
     * Wait the sonar_echo TTL
     * Time determines the difference
     */
    while (LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_7));
    
    diff = LL_TIM_GetCounter(TIM3); // difference in mks

    dist = diff / 58.8 ; // distance in centimeters

    LL_TIM_ClearFlag_CC2(TIM3);

    return;
}

/*---------------------------------------------------------------------*/
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

/*---------------------------------------------------------------------*/
/*
 * Structure for communication
 */
typedef struct 
{
    uint8_t cmd;
    uint8_t params[10];
    uint8_t active;
} uart_req_t;

static uart_req_t uart_req, uart_resp;

/*
 * Initialize USART module and associated pins
 */
static void usart_config(void)
{
    /*
     * Setting USART pins
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    
    // USART1_TX
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_9, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_8_15(GPIOA, LL_GPIO_PIN_9, LL_GPIO_AF_1);
    LL_GPIO_SetPinSpeed(GPIOA, LL_GPIO_PIN_9, LL_GPIO_SPEED_FREQ_HIGH);
    
    // USART1_RX
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
    LL_USART_SetBaudRate(USART1, SystemCoreClock, LL_USART_OVERSAMPLING_16, 115200);
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

/*---------------------------------------------------------------------*/
/*
 * Initialize USART to manage responses 
 */
static void manage_response(int16_t value) 
{
    int8_t pos = 0; // init the position
        
    LL_USART_ClearFlag_TC(USART1); // update the flag

    /*
     * Special separators for sending the string to usart
     */
    if ((value == '*') || (value == ',') || (value == '\n'))
    {
        LL_USART_TransmitData8(USART1, value);
        while (!LL_USART_IsActiveFlag_TC(USART1));
        
        return;
    }

    /*
     * To send negative numbers
     */
    if (value < 0) 
    {
        LL_USART_TransmitData8(USART1, '-');
        while (!LL_USART_IsActiveFlag_TC(USART1));
        value = abs(value);
    }

    /*
     * To send numbers
     */ 
    while (value)
    {
        uart_resp.params[pos++] =  value % 10;
        value /= 10;
    }

    if (pos > 0) pos--;

    /*
     * Send value to usart
     */  
    while (pos >= 0)
    {
        while (!LL_USART_IsActiveFlag_TXE(USART1));
        LL_USART_TransmitData8(USART1, uart_resp.params[pos--] + '0');
    }

    while (!LL_USART_IsActiveFlag_TC(USART1));

    return;
}

/*---------------------------------------------------------------------*/
/*
 * Manager to send coordinates in one string
 */
static void manage_string(int32_t X_axis, int32_t Y_axis, int32_t Z_axis)
{
    /*
     * String format: (X, Y, Z '\n')
     */
    manage_response(X_axis);
    manage_response(',');
    manage_response(Y_axis);
    manage_response(',');
    manage_response(Z_axis);
    manage_response('\n');
    return;
}

/*
 * Handler for system timer
 */
void SysTick_Handler(void)
{
    /*
     * Show the distance on the indicator
     */
    dec_display((uint32_t) dist);

    return;
}

/*---------------------------------------------------------------------*/
/*
 * azimuth   -> angle on the XY plane
 * elevation -> angle on the XZ plane
 */
static void Conversation(uint32_t Arr_X, uint32_t Arr_Y)
{
    /*
     * Calculation of position in degrees
     */
    double PosX = 180.0 * (Arr_X - minEdge_X) / (maxEdge_X - minEdge_X);
    double PosY = 180.0 * (Arr_Y - minEdge_Y) / (maxEdge_Y - minEdge_Y);

    /*
     * Converting to radians
     */
    double azimuth = PosX * deg2rad;
    double elevation = PosY * deg2rad;

    /*
     * Calculation of coordinates by azimuth and elevation
     */
    int32_t X_axis = (int32_t) dist * sin(elevation) * cos(azimuth); 
    int32_t Y_axis = (int32_t) dist * sin(elevation) * sin(azimuth);
    int32_t Z_axis = (int32_t) dist * -cos(elevation);

    /*
     * Send coordinates to USART
     */
    manage_string(X_axis, Y_axis, Z_axis);
    
    return;
} 

/*-----------------------------text------------------------------------*/
/*
 * This function translates symbol for 7_segment indicator
 */
uint32_t symbols(char c)
{
    uint32_t out = 0;
    switch(c)
    {
        case 'a': out = bits(0,1,1,1,0,1,1,1); break;                               
        case 'b': out = bits(0,1,1,1,1,1,0,0); break;
        case 'c': out = bits(0,0,1,1,1,0,0,1); break;
        case 'd': out = bits(0,1,0,1,1,1,1,0); break;
        case 'E': 
        case 'e': out = bits(0,1,1,1,1,0,0,1); break;
        case 'f': out = bits(0,1,1,1,0,0,0,1); break;
        case 'g': out = bits(0,1,1,1,1,1,0,1); break;
        case 'H': out = bits(0,1,1,1,0,1,1,0); break;
        case 'i': out = bits(0,0,0,0,0,1,1,0); break;
        case 'j': out = bits(0,0,0,0,1,1,1,0); break;
        case 'L': out = bits(0,0,1,1,1,0,0,0); break;
        case 'n': out = bits(0,1,0,1,0,1,0,0); break;
        case 'O': out = bits(0,0,1,1,1,1,1,1); break;
        case 'o': out = bits(0,1,0,1,1,1,0,0); break;
        case 'p': out = bits(0,1,1,1,0,0,1,1); break;
        case 's': out = bits(0,1,1,0,1,1,0,1); break;
        case 'U': out = bits(0,0,1,1,1,1,1,0); break;
        case 'u': out = bits(0,0,0,1,1,1,0,0); break;
        case 'z': out = bits(0,1,0,1,1,0,1,1); break;
        case 'q': out = bits(0,1,1,0,0,1,1,1); break;
        case 'r': out = bits(0,1,0,1,0,0,0,0); break;
        case 't': out = bits(0,1,1,1,1,0,0,0); break;
        case 'y': out = bits(0,1,1,0,1,1,1,0); break;
        case ',':
        case '.': out = bits(1,0,0,0,0,0,0,0); break;
        case '!': out = bits(1,0,0,0,0,1,1,0); break;
        case '?': out = bits(1,0,1,0,0,1,1,1); break;
        case '_': out = bits(0,0,0,0,1,0,0,0); break;
        case '-': out = bits(0,1,0,0,0,0,0,0); break;
        case '3': out = bits(0,1,0,0,1,1,1,1); break;
        default:  out = bits(0,0,0,0,0,0,0,0); break;
    }
    return out;
}

/*---------------------------------------------------------------------*/
/*
 * Just set of commands to waste CPU power for DELAY __2ms__ 
 */
__attribute__((naked)) static void delay(void)
{
    asm ("push {r7, lr}");
    asm ("ldr r6, [pc, #8]");
    asm ("sub r6, #1");
    asm ("cmp r6, #0");
    asm ("bne delay+0x4");
    asm ("pop {r7, pc}");
    asm (".word 0x2ee0"); //12000 (2ms)
}

/*---------------------------------------------------------------------*/
/*
 * this function is for displaying dynamic text (> 4 symbols)
 */
void dynamic_text(char line[])
{
    char c = line[0];
    uint32_t i = 0, last_cnt = 0;
    
    while(c != '\0')
    {           
        /*
         * This cycle to slow down the text
         * The higher DYNAMIC_COEF, the slower the text moves
         */
        for(int cnt = 0; cnt < DYNAMIC_COEF; cnt++) 
        {       
            //this cycle to scroll all text
            for(uint32_t num = i, next = 0; next < 4; num--, next++)
            {   
                c = line[num];
    
                //update indicator every cycle
                LL_GPIO_WriteOutputPort(GPIOC, mask_indicator(0b1111));
                
                //bit shift for 7-segment indicator
                LL_GPIO_ResetOutputPin(GPIOC, mask_indicator(1<<next));

                //turn on the indicator 
                LL_GPIO_WriteOutputPort(GPIOB, symbols(c));
            
                delay();
            }
        }
        
        c = line[i++];
        
        //it's necessary for the text to reach the end of the indicator
        if(c == '\0' || last_cnt != 0 )
        {       
            if(last_cnt < 2) 
            {   
                c = ' ';
                last_cnt++;
            }
            else c = '\0'; 
        }
    }
    return;
}

/*---------------------------------------------------------------------*/
/*
 * this function is for displaying static text (just < 4 symbols)
 */
void text(char line[])
{
    uint32_t out = 0;
    
    //during this TEXT_TIME you can show the text
    for(uint32_t cycle = 0; cycle < TEXT_TIME / (5 * DELAY) ; cycle++) 
    {
        char c = line[0];

        for(uint8_t shift = 3, i = 0; c != '\0'; shift--, i++)
        {
            c = line[i];
            
            out = symbols(c);

            //update indicator every cycle
            LL_GPIO_WriteOutputPort(GPIOC, mask_indicator(0b1111));

            //bit shift for the 7-segment indicator
            LL_GPIO_ResetOutputPin(GPIOC, mask_indicator(1 << shift));

            //turn on the indicator 
            LL_GPIO_WriteOutputPort(GPIOB, out);

            delay();
        }

        delay();
    }
    return;
}

/*-----------------------------main program-----------------------------------*/
int main()
{
    /*
     * Initialize all components
     */
    rcc_config();
    gpio_config();

    /*
     * Greeting to init the 3d-scanner
     */
    text(" ");
    dynamic_text("HELLO donou!");
    text(" ");
    dynamic_text("it is 3d-scanner");
    text("good");

    /*
     * Continue initialize neccesary components 
     */
    sonar_trig();
    sonar_echo();
    servo_1();
    servo_2();
    systick_config();
    usart_config();

    /*
     * Condition to start the main program
     */
    uint8_t condition = 1;

    while (condition != 0)
    {
        for (uint8_t i = 0; i < Cycle; i++)
        {
            /*
             * Initialize home position 
             */
            uint32_t Arr_X = minArr_X;
            uint32_t Arr_Y = minArr_Y;
            
            while (Arr_Y <= maxArr_Y)
            {
                /*
                 * Set the new position for the servo_2 (in XZ-plane)
                 */
                LL_TIM_OC_SetCompareCH3(TIM2, Arr_Y);

                /*
                 * Rotate the servo clockwise
                 */
                if (scanDirection)
                {
                    while (Arr_X <= maxArr_X)
                    {
                        /*
                         * Wait 60 ms until get the next distance  
                         */
                        if (LL_TIM_GetCounter(TIM14) < 58000) continue;

                        /*
                         * Send coordinates to USART
                         */   
                        Conversation(Arr_X, Arr_Y); 
                        
                        /*
                         * Set the new position for the servo_1 (in XY-plane)
                         */
                        LL_TIM_OC_SetCompareCH1(TIM2, Arr_X);
                     
                        Arr_X += Step_X;  
                    }

                    scanDirection = 0;
                }

                /*
                 * Rotate the servo counterclockwise
                 */
                else 
                {
                    while (Arr_X >= minArr_X)
                    {
                        /*
                         * Wait 60 ms until get the next distance  
                         */
                        if (LL_TIM_GetCounter(TIM14) < 58000) continue;
                        
                        /*
                         * Send coordinates to USART
                         */  
                        Conversation(Arr_X, Arr_Y);

                        /*
                         * Set the new position for the servo_1 (in XY-plane)
                         */
                        LL_TIM_OC_SetCompareCH1(TIM2, Arr_X);

                        Arr_X -= Step_X;
                    }

                    scanDirection = 1;
                }

                Arr_Y += Step_Y;
            }    
        }

        /*
         * Go to home position
         */
        LL_TIM_OC_SetCompareCH1(TIM2, minArr_X);
        LL_TIM_OC_SetCompareCH3(TIM2, minArr_Y);

        LL_TIM_ClearFlag_CC1(TIM2);
        LL_TIM_ClearFlag_CC3(TIM2);

        /* 
         * Send the symbol to stop data transfer
         */
        manage_response('*');
        condition = 0;
    }

    return 0;
}