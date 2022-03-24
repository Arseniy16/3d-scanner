
build/timers_pwm.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00005150  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000428  08005210  08005210  00015210  2**3  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08005638  08005638  00015638  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08005640  08005640  00015640  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08005644  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000040  20000438  08005a78  00020438  2**3  ALLOC
  7 ._user_heap_stack 00000600  20000478  08005a78  00020478  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00002087  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     000004ab  00000000  00000000  000224e3  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        00001202  00000000  00000000  0002298e  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000308  00000000  00000000  00023b90  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     000002d8  00000000  00000000  00023e98  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       0000143a  00000000  00000000  00024170  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        00000e4a  00000000  00000000  000255aa  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          0000004d  00000000  00000000  000263f4  2**0  CONTENTS, READONLY
 17 .debug_frame      00000ee4  00000000  00000000  00026444  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

Disassembly of section .text:

080000c0 <__do_global_dtors_aux>:
 80000c0:	b510      	push	{r4, lr}
 80000c2:	4c06      	ldr	r4, [pc, #24]	; (80000dc <__do_global_dtors_aux+0x1c>)
 80000c4:	7823      	ldrb	r3, [r4, #0]
 80000c6:	2b00      	cmp	r3, #0
 80000c8:	d107      	bne.n	80000da <__do_global_dtors_aux+0x1a>
 80000ca:	4b05      	ldr	r3, [pc, #20]	; (80000e0 <__do_global_dtors_aux+0x20>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d002      	beq.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d0:	4804      	ldr	r0, [pc, #16]	; (80000e4 <__do_global_dtors_aux+0x24>)
 80000d2:	e000      	b.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d4:	bf00      	nop
 80000d6:	2301      	movs	r3, #1
 80000d8:	7023      	strb	r3, [r4, #0]
 80000da:	bd10      	pop	{r4, pc}
 80000dc:	20000438 	.word	0x20000438
 80000e0:	00000000 	.word	0x00000000
 80000e4:	080051f8 	.word	0x080051f8

080000e8 <frame_dummy>:
 80000e8:	4b04      	ldr	r3, [pc, #16]	; (80000fc <frame_dummy+0x14>)
 80000ea:	b510      	push	{r4, lr}
 80000ec:	2b00      	cmp	r3, #0
 80000ee:	d003      	beq.n	80000f8 <frame_dummy+0x10>
 80000f0:	4903      	ldr	r1, [pc, #12]	; (8000100 <frame_dummy+0x18>)
 80000f2:	4804      	ldr	r0, [pc, #16]	; (8000104 <frame_dummy+0x1c>)
 80000f4:	e000      	b.n	80000f8 <frame_dummy+0x10>
 80000f6:	bf00      	nop
 80000f8:	bd10      	pop	{r4, pc}
 80000fa:	46c0      	nop			; (mov r8, r8)
 80000fc:	00000000 	.word	0x00000000
 8000100:	2000043c 	.word	0x2000043c
 8000104:	080051f8 	.word	0x080051f8

08000108 <__udivsi3>:
 8000108:	2200      	movs	r2, #0
 800010a:	0843      	lsrs	r3, r0, #1
 800010c:	428b      	cmp	r3, r1
 800010e:	d374      	bcc.n	80001fa <__udivsi3+0xf2>
 8000110:	0903      	lsrs	r3, r0, #4
 8000112:	428b      	cmp	r3, r1
 8000114:	d35f      	bcc.n	80001d6 <__udivsi3+0xce>
 8000116:	0a03      	lsrs	r3, r0, #8
 8000118:	428b      	cmp	r3, r1
 800011a:	d344      	bcc.n	80001a6 <__udivsi3+0x9e>
 800011c:	0b03      	lsrs	r3, r0, #12
 800011e:	428b      	cmp	r3, r1
 8000120:	d328      	bcc.n	8000174 <__udivsi3+0x6c>
 8000122:	0c03      	lsrs	r3, r0, #16
 8000124:	428b      	cmp	r3, r1
 8000126:	d30d      	bcc.n	8000144 <__udivsi3+0x3c>
 8000128:	22ff      	movs	r2, #255	; 0xff
 800012a:	0209      	lsls	r1, r1, #8
 800012c:	ba12      	rev	r2, r2
 800012e:	0c03      	lsrs	r3, r0, #16
 8000130:	428b      	cmp	r3, r1
 8000132:	d302      	bcc.n	800013a <__udivsi3+0x32>
 8000134:	1212      	asrs	r2, r2, #8
 8000136:	0209      	lsls	r1, r1, #8
 8000138:	d065      	beq.n	8000206 <__udivsi3+0xfe>
 800013a:	0b03      	lsrs	r3, r0, #12
 800013c:	428b      	cmp	r3, r1
 800013e:	d319      	bcc.n	8000174 <__udivsi3+0x6c>
 8000140:	e000      	b.n	8000144 <__udivsi3+0x3c>
 8000142:	0a09      	lsrs	r1, r1, #8
 8000144:	0bc3      	lsrs	r3, r0, #15
 8000146:	428b      	cmp	r3, r1
 8000148:	d301      	bcc.n	800014e <__udivsi3+0x46>
 800014a:	03cb      	lsls	r3, r1, #15
 800014c:	1ac0      	subs	r0, r0, r3
 800014e:	4152      	adcs	r2, r2
 8000150:	0b83      	lsrs	r3, r0, #14
 8000152:	428b      	cmp	r3, r1
 8000154:	d301      	bcc.n	800015a <__udivsi3+0x52>
 8000156:	038b      	lsls	r3, r1, #14
 8000158:	1ac0      	subs	r0, r0, r3
 800015a:	4152      	adcs	r2, r2
 800015c:	0b43      	lsrs	r3, r0, #13
 800015e:	428b      	cmp	r3, r1
 8000160:	d301      	bcc.n	8000166 <__udivsi3+0x5e>
 8000162:	034b      	lsls	r3, r1, #13
 8000164:	1ac0      	subs	r0, r0, r3
 8000166:	4152      	adcs	r2, r2
 8000168:	0b03      	lsrs	r3, r0, #12
 800016a:	428b      	cmp	r3, r1
 800016c:	d301      	bcc.n	8000172 <__udivsi3+0x6a>
 800016e:	030b      	lsls	r3, r1, #12
 8000170:	1ac0      	subs	r0, r0, r3
 8000172:	4152      	adcs	r2, r2
 8000174:	0ac3      	lsrs	r3, r0, #11
 8000176:	428b      	cmp	r3, r1
 8000178:	d301      	bcc.n	800017e <__udivsi3+0x76>
 800017a:	02cb      	lsls	r3, r1, #11
 800017c:	1ac0      	subs	r0, r0, r3
 800017e:	4152      	adcs	r2, r2
 8000180:	0a83      	lsrs	r3, r0, #10
 8000182:	428b      	cmp	r3, r1
 8000184:	d301      	bcc.n	800018a <__udivsi3+0x82>
 8000186:	028b      	lsls	r3, r1, #10
 8000188:	1ac0      	subs	r0, r0, r3
 800018a:	4152      	adcs	r2, r2
 800018c:	0a43      	lsrs	r3, r0, #9
 800018e:	428b      	cmp	r3, r1
 8000190:	d301      	bcc.n	8000196 <__udivsi3+0x8e>
 8000192:	024b      	lsls	r3, r1, #9
 8000194:	1ac0      	subs	r0, r0, r3
 8000196:	4152      	adcs	r2, r2
 8000198:	0a03      	lsrs	r3, r0, #8
 800019a:	428b      	cmp	r3, r1
 800019c:	d301      	bcc.n	80001a2 <__udivsi3+0x9a>
 800019e:	020b      	lsls	r3, r1, #8
 80001a0:	1ac0      	subs	r0, r0, r3
 80001a2:	4152      	adcs	r2, r2
 80001a4:	d2cd      	bcs.n	8000142 <__udivsi3+0x3a>
 80001a6:	09c3      	lsrs	r3, r0, #7
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d301      	bcc.n	80001b0 <__udivsi3+0xa8>
 80001ac:	01cb      	lsls	r3, r1, #7
 80001ae:	1ac0      	subs	r0, r0, r3
 80001b0:	4152      	adcs	r2, r2
 80001b2:	0983      	lsrs	r3, r0, #6
 80001b4:	428b      	cmp	r3, r1
 80001b6:	d301      	bcc.n	80001bc <__udivsi3+0xb4>
 80001b8:	018b      	lsls	r3, r1, #6
 80001ba:	1ac0      	subs	r0, r0, r3
 80001bc:	4152      	adcs	r2, r2
 80001be:	0943      	lsrs	r3, r0, #5
 80001c0:	428b      	cmp	r3, r1
 80001c2:	d301      	bcc.n	80001c8 <__udivsi3+0xc0>
 80001c4:	014b      	lsls	r3, r1, #5
 80001c6:	1ac0      	subs	r0, r0, r3
 80001c8:	4152      	adcs	r2, r2
 80001ca:	0903      	lsrs	r3, r0, #4
 80001cc:	428b      	cmp	r3, r1
 80001ce:	d301      	bcc.n	80001d4 <__udivsi3+0xcc>
 80001d0:	010b      	lsls	r3, r1, #4
 80001d2:	1ac0      	subs	r0, r0, r3
 80001d4:	4152      	adcs	r2, r2
 80001d6:	08c3      	lsrs	r3, r0, #3
 80001d8:	428b      	cmp	r3, r1
 80001da:	d301      	bcc.n	80001e0 <__udivsi3+0xd8>
 80001dc:	00cb      	lsls	r3, r1, #3
 80001de:	1ac0      	subs	r0, r0, r3
 80001e0:	4152      	adcs	r2, r2
 80001e2:	0883      	lsrs	r3, r0, #2
 80001e4:	428b      	cmp	r3, r1
 80001e6:	d301      	bcc.n	80001ec <__udivsi3+0xe4>
 80001e8:	008b      	lsls	r3, r1, #2
 80001ea:	1ac0      	subs	r0, r0, r3
 80001ec:	4152      	adcs	r2, r2
 80001ee:	0843      	lsrs	r3, r0, #1
 80001f0:	428b      	cmp	r3, r1
 80001f2:	d301      	bcc.n	80001f8 <__udivsi3+0xf0>
 80001f4:	004b      	lsls	r3, r1, #1
 80001f6:	1ac0      	subs	r0, r0, r3
 80001f8:	4152      	adcs	r2, r2
 80001fa:	1a41      	subs	r1, r0, r1
 80001fc:	d200      	bcs.n	8000200 <__udivsi3+0xf8>
 80001fe:	4601      	mov	r1, r0
 8000200:	4152      	adcs	r2, r2
 8000202:	4610      	mov	r0, r2
 8000204:	4770      	bx	lr
 8000206:	e7ff      	b.n	8000208 <__udivsi3+0x100>
 8000208:	b501      	push	{r0, lr}
 800020a:	2000      	movs	r0, #0
 800020c:	f000 f8f0 	bl	80003f0 <__aeabi_idiv0>
 8000210:	bd02      	pop	{r1, pc}
 8000212:	46c0      	nop			; (mov r8, r8)

08000214 <__aeabi_uidivmod>:
 8000214:	2900      	cmp	r1, #0
 8000216:	d0f7      	beq.n	8000208 <__udivsi3+0x100>
 8000218:	e776      	b.n	8000108 <__udivsi3>
 800021a:	4770      	bx	lr

0800021c <__divsi3>:
 800021c:	4603      	mov	r3, r0
 800021e:	430b      	orrs	r3, r1
 8000220:	d47f      	bmi.n	8000322 <__divsi3+0x106>
 8000222:	2200      	movs	r2, #0
 8000224:	0843      	lsrs	r3, r0, #1
 8000226:	428b      	cmp	r3, r1
 8000228:	d374      	bcc.n	8000314 <__divsi3+0xf8>
 800022a:	0903      	lsrs	r3, r0, #4
 800022c:	428b      	cmp	r3, r1
 800022e:	d35f      	bcc.n	80002f0 <__divsi3+0xd4>
 8000230:	0a03      	lsrs	r3, r0, #8
 8000232:	428b      	cmp	r3, r1
 8000234:	d344      	bcc.n	80002c0 <__divsi3+0xa4>
 8000236:	0b03      	lsrs	r3, r0, #12
 8000238:	428b      	cmp	r3, r1
 800023a:	d328      	bcc.n	800028e <__divsi3+0x72>
 800023c:	0c03      	lsrs	r3, r0, #16
 800023e:	428b      	cmp	r3, r1
 8000240:	d30d      	bcc.n	800025e <__divsi3+0x42>
 8000242:	22ff      	movs	r2, #255	; 0xff
 8000244:	0209      	lsls	r1, r1, #8
 8000246:	ba12      	rev	r2, r2
 8000248:	0c03      	lsrs	r3, r0, #16
 800024a:	428b      	cmp	r3, r1
 800024c:	d302      	bcc.n	8000254 <__divsi3+0x38>
 800024e:	1212      	asrs	r2, r2, #8
 8000250:	0209      	lsls	r1, r1, #8
 8000252:	d065      	beq.n	8000320 <__divsi3+0x104>
 8000254:	0b03      	lsrs	r3, r0, #12
 8000256:	428b      	cmp	r3, r1
 8000258:	d319      	bcc.n	800028e <__divsi3+0x72>
 800025a:	e000      	b.n	800025e <__divsi3+0x42>
 800025c:	0a09      	lsrs	r1, r1, #8
 800025e:	0bc3      	lsrs	r3, r0, #15
 8000260:	428b      	cmp	r3, r1
 8000262:	d301      	bcc.n	8000268 <__divsi3+0x4c>
 8000264:	03cb      	lsls	r3, r1, #15
 8000266:	1ac0      	subs	r0, r0, r3
 8000268:	4152      	adcs	r2, r2
 800026a:	0b83      	lsrs	r3, r0, #14
 800026c:	428b      	cmp	r3, r1
 800026e:	d301      	bcc.n	8000274 <__divsi3+0x58>
 8000270:	038b      	lsls	r3, r1, #14
 8000272:	1ac0      	subs	r0, r0, r3
 8000274:	4152      	adcs	r2, r2
 8000276:	0b43      	lsrs	r3, r0, #13
 8000278:	428b      	cmp	r3, r1
 800027a:	d301      	bcc.n	8000280 <__divsi3+0x64>
 800027c:	034b      	lsls	r3, r1, #13
 800027e:	1ac0      	subs	r0, r0, r3
 8000280:	4152      	adcs	r2, r2
 8000282:	0b03      	lsrs	r3, r0, #12
 8000284:	428b      	cmp	r3, r1
 8000286:	d301      	bcc.n	800028c <__divsi3+0x70>
 8000288:	030b      	lsls	r3, r1, #12
 800028a:	1ac0      	subs	r0, r0, r3
 800028c:	4152      	adcs	r2, r2
 800028e:	0ac3      	lsrs	r3, r0, #11
 8000290:	428b      	cmp	r3, r1
 8000292:	d301      	bcc.n	8000298 <__divsi3+0x7c>
 8000294:	02cb      	lsls	r3, r1, #11
 8000296:	1ac0      	subs	r0, r0, r3
 8000298:	4152      	adcs	r2, r2
 800029a:	0a83      	lsrs	r3, r0, #10
 800029c:	428b      	cmp	r3, r1
 800029e:	d301      	bcc.n	80002a4 <__divsi3+0x88>
 80002a0:	028b      	lsls	r3, r1, #10
 80002a2:	1ac0      	subs	r0, r0, r3
 80002a4:	4152      	adcs	r2, r2
 80002a6:	0a43      	lsrs	r3, r0, #9
 80002a8:	428b      	cmp	r3, r1
 80002aa:	d301      	bcc.n	80002b0 <__divsi3+0x94>
 80002ac:	024b      	lsls	r3, r1, #9
 80002ae:	1ac0      	subs	r0, r0, r3
 80002b0:	4152      	adcs	r2, r2
 80002b2:	0a03      	lsrs	r3, r0, #8
 80002b4:	428b      	cmp	r3, r1
 80002b6:	d301      	bcc.n	80002bc <__divsi3+0xa0>
 80002b8:	020b      	lsls	r3, r1, #8
 80002ba:	1ac0      	subs	r0, r0, r3
 80002bc:	4152      	adcs	r2, r2
 80002be:	d2cd      	bcs.n	800025c <__divsi3+0x40>
 80002c0:	09c3      	lsrs	r3, r0, #7
 80002c2:	428b      	cmp	r3, r1
 80002c4:	d301      	bcc.n	80002ca <__divsi3+0xae>
 80002c6:	01cb      	lsls	r3, r1, #7
 80002c8:	1ac0      	subs	r0, r0, r3
 80002ca:	4152      	adcs	r2, r2
 80002cc:	0983      	lsrs	r3, r0, #6
 80002ce:	428b      	cmp	r3, r1
 80002d0:	d301      	bcc.n	80002d6 <__divsi3+0xba>
 80002d2:	018b      	lsls	r3, r1, #6
 80002d4:	1ac0      	subs	r0, r0, r3
 80002d6:	4152      	adcs	r2, r2
 80002d8:	0943      	lsrs	r3, r0, #5
 80002da:	428b      	cmp	r3, r1
 80002dc:	d301      	bcc.n	80002e2 <__divsi3+0xc6>
 80002de:	014b      	lsls	r3, r1, #5
 80002e0:	1ac0      	subs	r0, r0, r3
 80002e2:	4152      	adcs	r2, r2
 80002e4:	0903      	lsrs	r3, r0, #4
 80002e6:	428b      	cmp	r3, r1
 80002e8:	d301      	bcc.n	80002ee <__divsi3+0xd2>
 80002ea:	010b      	lsls	r3, r1, #4
 80002ec:	1ac0      	subs	r0, r0, r3
 80002ee:	4152      	adcs	r2, r2
 80002f0:	08c3      	lsrs	r3, r0, #3
 80002f2:	428b      	cmp	r3, r1
 80002f4:	d301      	bcc.n	80002fa <__divsi3+0xde>
 80002f6:	00cb      	lsls	r3, r1, #3
 80002f8:	1ac0      	subs	r0, r0, r3
 80002fa:	4152      	adcs	r2, r2
 80002fc:	0883      	lsrs	r3, r0, #2
 80002fe:	428b      	cmp	r3, r1
 8000300:	d301      	bcc.n	8000306 <__divsi3+0xea>
 8000302:	008b      	lsls	r3, r1, #2
 8000304:	1ac0      	subs	r0, r0, r3
 8000306:	4152      	adcs	r2, r2
 8000308:	0843      	lsrs	r3, r0, #1
 800030a:	428b      	cmp	r3, r1
 800030c:	d301      	bcc.n	8000312 <__divsi3+0xf6>
 800030e:	004b      	lsls	r3, r1, #1
 8000310:	1ac0      	subs	r0, r0, r3
 8000312:	4152      	adcs	r2, r2
 8000314:	1a41      	subs	r1, r0, r1
 8000316:	d200      	bcs.n	800031a <__divsi3+0xfe>
 8000318:	4601      	mov	r1, r0
 800031a:	4152      	adcs	r2, r2
 800031c:	4610      	mov	r0, r2
 800031e:	4770      	bx	lr
 8000320:	e05d      	b.n	80003de <__divsi3+0x1c2>
 8000322:	0fca      	lsrs	r2, r1, #31
 8000324:	d000      	beq.n	8000328 <__divsi3+0x10c>
 8000326:	4249      	negs	r1, r1
 8000328:	1003      	asrs	r3, r0, #32
 800032a:	d300      	bcc.n	800032e <__divsi3+0x112>
 800032c:	4240      	negs	r0, r0
 800032e:	4053      	eors	r3, r2
 8000330:	2200      	movs	r2, #0
 8000332:	469c      	mov	ip, r3
 8000334:	0903      	lsrs	r3, r0, #4
 8000336:	428b      	cmp	r3, r1
 8000338:	d32d      	bcc.n	8000396 <__divsi3+0x17a>
 800033a:	0a03      	lsrs	r3, r0, #8
 800033c:	428b      	cmp	r3, r1
 800033e:	d312      	bcc.n	8000366 <__divsi3+0x14a>
 8000340:	22fc      	movs	r2, #252	; 0xfc
 8000342:	0189      	lsls	r1, r1, #6
 8000344:	ba12      	rev	r2, r2
 8000346:	0a03      	lsrs	r3, r0, #8
 8000348:	428b      	cmp	r3, r1
 800034a:	d30c      	bcc.n	8000366 <__divsi3+0x14a>
 800034c:	0189      	lsls	r1, r1, #6
 800034e:	1192      	asrs	r2, r2, #6
 8000350:	428b      	cmp	r3, r1
 8000352:	d308      	bcc.n	8000366 <__divsi3+0x14a>
 8000354:	0189      	lsls	r1, r1, #6
 8000356:	1192      	asrs	r2, r2, #6
 8000358:	428b      	cmp	r3, r1
 800035a:	d304      	bcc.n	8000366 <__divsi3+0x14a>
 800035c:	0189      	lsls	r1, r1, #6
 800035e:	d03a      	beq.n	80003d6 <__divsi3+0x1ba>
 8000360:	1192      	asrs	r2, r2, #6
 8000362:	e000      	b.n	8000366 <__divsi3+0x14a>
 8000364:	0989      	lsrs	r1, r1, #6
 8000366:	09c3      	lsrs	r3, r0, #7
 8000368:	428b      	cmp	r3, r1
 800036a:	d301      	bcc.n	8000370 <__divsi3+0x154>
 800036c:	01cb      	lsls	r3, r1, #7
 800036e:	1ac0      	subs	r0, r0, r3
 8000370:	4152      	adcs	r2, r2
 8000372:	0983      	lsrs	r3, r0, #6
 8000374:	428b      	cmp	r3, r1
 8000376:	d301      	bcc.n	800037c <__divsi3+0x160>
 8000378:	018b      	lsls	r3, r1, #6
 800037a:	1ac0      	subs	r0, r0, r3
 800037c:	4152      	adcs	r2, r2
 800037e:	0943      	lsrs	r3, r0, #5
 8000380:	428b      	cmp	r3, r1
 8000382:	d301      	bcc.n	8000388 <__divsi3+0x16c>
 8000384:	014b      	lsls	r3, r1, #5
 8000386:	1ac0      	subs	r0, r0, r3
 8000388:	4152      	adcs	r2, r2
 800038a:	0903      	lsrs	r3, r0, #4
 800038c:	428b      	cmp	r3, r1
 800038e:	d301      	bcc.n	8000394 <__divsi3+0x178>
 8000390:	010b      	lsls	r3, r1, #4
 8000392:	1ac0      	subs	r0, r0, r3
 8000394:	4152      	adcs	r2, r2
 8000396:	08c3      	lsrs	r3, r0, #3
 8000398:	428b      	cmp	r3, r1
 800039a:	d301      	bcc.n	80003a0 <__divsi3+0x184>
 800039c:	00cb      	lsls	r3, r1, #3
 800039e:	1ac0      	subs	r0, r0, r3
 80003a0:	4152      	adcs	r2, r2
 80003a2:	0883      	lsrs	r3, r0, #2
 80003a4:	428b      	cmp	r3, r1
 80003a6:	d301      	bcc.n	80003ac <__divsi3+0x190>
 80003a8:	008b      	lsls	r3, r1, #2
 80003aa:	1ac0      	subs	r0, r0, r3
 80003ac:	4152      	adcs	r2, r2
 80003ae:	d2d9      	bcs.n	8000364 <__divsi3+0x148>
 80003b0:	0843      	lsrs	r3, r0, #1
 80003b2:	428b      	cmp	r3, r1
 80003b4:	d301      	bcc.n	80003ba <__divsi3+0x19e>
 80003b6:	004b      	lsls	r3, r1, #1
 80003b8:	1ac0      	subs	r0, r0, r3
 80003ba:	4152      	adcs	r2, r2
 80003bc:	1a41      	subs	r1, r0, r1
 80003be:	d200      	bcs.n	80003c2 <__divsi3+0x1a6>
 80003c0:	4601      	mov	r1, r0
 80003c2:	4663      	mov	r3, ip
 80003c4:	4152      	adcs	r2, r2
 80003c6:	105b      	asrs	r3, r3, #1
 80003c8:	4610      	mov	r0, r2
 80003ca:	d301      	bcc.n	80003d0 <__divsi3+0x1b4>
 80003cc:	4240      	negs	r0, r0
 80003ce:	2b00      	cmp	r3, #0
 80003d0:	d500      	bpl.n	80003d4 <__divsi3+0x1b8>
 80003d2:	4249      	negs	r1, r1
 80003d4:	4770      	bx	lr
 80003d6:	4663      	mov	r3, ip
 80003d8:	105b      	asrs	r3, r3, #1
 80003da:	d300      	bcc.n	80003de <__divsi3+0x1c2>
 80003dc:	4240      	negs	r0, r0
 80003de:	b501      	push	{r0, lr}
 80003e0:	2000      	movs	r0, #0
 80003e2:	f000 f805 	bl	80003f0 <__aeabi_idiv0>
 80003e6:	bd02      	pop	{r1, pc}

080003e8 <__aeabi_idivmod>:
 80003e8:	2900      	cmp	r1, #0
 80003ea:	d0f8      	beq.n	80003de <__divsi3+0x1c2>
 80003ec:	e716      	b.n	800021c <__divsi3>
 80003ee:	4770      	bx	lr

080003f0 <__aeabi_idiv0>:
 80003f0:	4770      	bx	lr
 80003f2:	46c0      	nop			; (mov r8, r8)

080003f4 <__aeabi_d2uiz>:
 80003f4:	b570      	push	{r4, r5, r6, lr}
 80003f6:	2200      	movs	r2, #0
 80003f8:	4b0c      	ldr	r3, [pc, #48]	; (800042c <__aeabi_d2uiz+0x38>)
 80003fa:	0004      	movs	r4, r0
 80003fc:	000d      	movs	r5, r1
 80003fe:	f001 f9cd 	bl	800179c <__aeabi_dcmpge>
 8000402:	2800      	cmp	r0, #0
 8000404:	d104      	bne.n	8000410 <__aeabi_d2uiz+0x1c>
 8000406:	0020      	movs	r0, r4
 8000408:	0029      	movs	r1, r5
 800040a:	f001 f907 	bl	800161c <__aeabi_d2iz>
 800040e:	bd70      	pop	{r4, r5, r6, pc}
 8000410:	4b06      	ldr	r3, [pc, #24]	; (800042c <__aeabi_d2uiz+0x38>)
 8000412:	2200      	movs	r2, #0
 8000414:	0020      	movs	r0, r4
 8000416:	0029      	movs	r1, r5
 8000418:	f000 fd6e 	bl	8000ef8 <__aeabi_dsub>
 800041c:	f001 f8fe 	bl	800161c <__aeabi_d2iz>
 8000420:	2380      	movs	r3, #128	; 0x80
 8000422:	061b      	lsls	r3, r3, #24
 8000424:	469c      	mov	ip, r3
 8000426:	4460      	add	r0, ip
 8000428:	e7f1      	b.n	800040e <__aeabi_d2uiz+0x1a>
 800042a:	46c0      	nop			; (mov r8, r8)
 800042c:	41e00000 	.word	0x41e00000

08000430 <__aeabi_ddiv>:
 8000430:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000432:	4657      	mov	r7, sl
 8000434:	464e      	mov	r6, r9
 8000436:	4645      	mov	r5, r8
 8000438:	46de      	mov	lr, fp
 800043a:	b5e0      	push	{r5, r6, r7, lr}
 800043c:	4681      	mov	r9, r0
 800043e:	0005      	movs	r5, r0
 8000440:	030c      	lsls	r4, r1, #12
 8000442:	0048      	lsls	r0, r1, #1
 8000444:	4692      	mov	sl, r2
 8000446:	001f      	movs	r7, r3
 8000448:	b085      	sub	sp, #20
 800044a:	0b24      	lsrs	r4, r4, #12
 800044c:	0d40      	lsrs	r0, r0, #21
 800044e:	0fce      	lsrs	r6, r1, #31
 8000450:	2800      	cmp	r0, #0
 8000452:	d100      	bne.n	8000456 <__aeabi_ddiv+0x26>
 8000454:	e156      	b.n	8000704 <__aeabi_ddiv+0x2d4>
 8000456:	4bd4      	ldr	r3, [pc, #848]	; (80007a8 <__aeabi_ddiv+0x378>)
 8000458:	4298      	cmp	r0, r3
 800045a:	d100      	bne.n	800045e <__aeabi_ddiv+0x2e>
 800045c:	e172      	b.n	8000744 <__aeabi_ddiv+0x314>
 800045e:	0f6b      	lsrs	r3, r5, #29
 8000460:	00e4      	lsls	r4, r4, #3
 8000462:	431c      	orrs	r4, r3
 8000464:	2380      	movs	r3, #128	; 0x80
 8000466:	041b      	lsls	r3, r3, #16
 8000468:	4323      	orrs	r3, r4
 800046a:	4698      	mov	r8, r3
 800046c:	4bcf      	ldr	r3, [pc, #828]	; (80007ac <__aeabi_ddiv+0x37c>)
 800046e:	00ed      	lsls	r5, r5, #3
 8000470:	469b      	mov	fp, r3
 8000472:	2300      	movs	r3, #0
 8000474:	4699      	mov	r9, r3
 8000476:	4483      	add	fp, r0
 8000478:	9300      	str	r3, [sp, #0]
 800047a:	033c      	lsls	r4, r7, #12
 800047c:	007b      	lsls	r3, r7, #1
 800047e:	4650      	mov	r0, sl
 8000480:	0b24      	lsrs	r4, r4, #12
 8000482:	0d5b      	lsrs	r3, r3, #21
 8000484:	0fff      	lsrs	r7, r7, #31
 8000486:	2b00      	cmp	r3, #0
 8000488:	d100      	bne.n	800048c <__aeabi_ddiv+0x5c>
 800048a:	e11f      	b.n	80006cc <__aeabi_ddiv+0x29c>
 800048c:	4ac6      	ldr	r2, [pc, #792]	; (80007a8 <__aeabi_ddiv+0x378>)
 800048e:	4293      	cmp	r3, r2
 8000490:	d100      	bne.n	8000494 <__aeabi_ddiv+0x64>
 8000492:	e162      	b.n	800075a <__aeabi_ddiv+0x32a>
 8000494:	49c5      	ldr	r1, [pc, #788]	; (80007ac <__aeabi_ddiv+0x37c>)
 8000496:	0f42      	lsrs	r2, r0, #29
 8000498:	468c      	mov	ip, r1
 800049a:	00e4      	lsls	r4, r4, #3
 800049c:	4659      	mov	r1, fp
 800049e:	4314      	orrs	r4, r2
 80004a0:	2280      	movs	r2, #128	; 0x80
 80004a2:	4463      	add	r3, ip
 80004a4:	0412      	lsls	r2, r2, #16
 80004a6:	1acb      	subs	r3, r1, r3
 80004a8:	4314      	orrs	r4, r2
 80004aa:	469b      	mov	fp, r3
 80004ac:	00c2      	lsls	r2, r0, #3
 80004ae:	2000      	movs	r0, #0
 80004b0:	0033      	movs	r3, r6
 80004b2:	407b      	eors	r3, r7
 80004b4:	469a      	mov	sl, r3
 80004b6:	464b      	mov	r3, r9
 80004b8:	2b0f      	cmp	r3, #15
 80004ba:	d827      	bhi.n	800050c <__aeabi_ddiv+0xdc>
 80004bc:	49bc      	ldr	r1, [pc, #752]	; (80007b0 <__aeabi_ddiv+0x380>)
 80004be:	009b      	lsls	r3, r3, #2
 80004c0:	58cb      	ldr	r3, [r1, r3]
 80004c2:	469f      	mov	pc, r3
 80004c4:	46b2      	mov	sl, r6
 80004c6:	9b00      	ldr	r3, [sp, #0]
 80004c8:	2b02      	cmp	r3, #2
 80004ca:	d016      	beq.n	80004fa <__aeabi_ddiv+0xca>
 80004cc:	2b03      	cmp	r3, #3
 80004ce:	d100      	bne.n	80004d2 <__aeabi_ddiv+0xa2>
 80004d0:	e28e      	b.n	80009f0 <__aeabi_ddiv+0x5c0>
 80004d2:	2b01      	cmp	r3, #1
 80004d4:	d000      	beq.n	80004d8 <__aeabi_ddiv+0xa8>
 80004d6:	e0d9      	b.n	800068c <__aeabi_ddiv+0x25c>
 80004d8:	2300      	movs	r3, #0
 80004da:	2400      	movs	r4, #0
 80004dc:	2500      	movs	r5, #0
 80004de:	4652      	mov	r2, sl
 80004e0:	051b      	lsls	r3, r3, #20
 80004e2:	4323      	orrs	r3, r4
 80004e4:	07d2      	lsls	r2, r2, #31
 80004e6:	4313      	orrs	r3, r2
 80004e8:	0028      	movs	r0, r5
 80004ea:	0019      	movs	r1, r3
 80004ec:	b005      	add	sp, #20
 80004ee:	bcf0      	pop	{r4, r5, r6, r7}
 80004f0:	46bb      	mov	fp, r7
 80004f2:	46b2      	mov	sl, r6
 80004f4:	46a9      	mov	r9, r5
 80004f6:	46a0      	mov	r8, r4
 80004f8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80004fa:	2400      	movs	r4, #0
 80004fc:	2500      	movs	r5, #0
 80004fe:	4baa      	ldr	r3, [pc, #680]	; (80007a8 <__aeabi_ddiv+0x378>)
 8000500:	e7ed      	b.n	80004de <__aeabi_ddiv+0xae>
 8000502:	46ba      	mov	sl, r7
 8000504:	46a0      	mov	r8, r4
 8000506:	0015      	movs	r5, r2
 8000508:	9000      	str	r0, [sp, #0]
 800050a:	e7dc      	b.n	80004c6 <__aeabi_ddiv+0x96>
 800050c:	4544      	cmp	r4, r8
 800050e:	d200      	bcs.n	8000512 <__aeabi_ddiv+0xe2>
 8000510:	e1c7      	b.n	80008a2 <__aeabi_ddiv+0x472>
 8000512:	d100      	bne.n	8000516 <__aeabi_ddiv+0xe6>
 8000514:	e1c2      	b.n	800089c <__aeabi_ddiv+0x46c>
 8000516:	2301      	movs	r3, #1
 8000518:	425b      	negs	r3, r3
 800051a:	469c      	mov	ip, r3
 800051c:	002e      	movs	r6, r5
 800051e:	4640      	mov	r0, r8
 8000520:	2500      	movs	r5, #0
 8000522:	44e3      	add	fp, ip
 8000524:	0223      	lsls	r3, r4, #8
 8000526:	0e14      	lsrs	r4, r2, #24
 8000528:	431c      	orrs	r4, r3
 800052a:	0c1b      	lsrs	r3, r3, #16
 800052c:	4699      	mov	r9, r3
 800052e:	0423      	lsls	r3, r4, #16
 8000530:	0c1f      	lsrs	r7, r3, #16
 8000532:	0212      	lsls	r2, r2, #8
 8000534:	4649      	mov	r1, r9
 8000536:	9200      	str	r2, [sp, #0]
 8000538:	9701      	str	r7, [sp, #4]
 800053a:	f7ff fe6b 	bl	8000214 <__aeabi_uidivmod>
 800053e:	0002      	movs	r2, r0
 8000540:	437a      	muls	r2, r7
 8000542:	040b      	lsls	r3, r1, #16
 8000544:	0c31      	lsrs	r1, r6, #16
 8000546:	4680      	mov	r8, r0
 8000548:	4319      	orrs	r1, r3
 800054a:	428a      	cmp	r2, r1
 800054c:	d907      	bls.n	800055e <__aeabi_ddiv+0x12e>
 800054e:	2301      	movs	r3, #1
 8000550:	425b      	negs	r3, r3
 8000552:	469c      	mov	ip, r3
 8000554:	1909      	adds	r1, r1, r4
 8000556:	44e0      	add	r8, ip
 8000558:	428c      	cmp	r4, r1
 800055a:	d800      	bhi.n	800055e <__aeabi_ddiv+0x12e>
 800055c:	e207      	b.n	800096e <__aeabi_ddiv+0x53e>
 800055e:	1a88      	subs	r0, r1, r2
 8000560:	4649      	mov	r1, r9
 8000562:	f7ff fe57 	bl	8000214 <__aeabi_uidivmod>
 8000566:	0409      	lsls	r1, r1, #16
 8000568:	468c      	mov	ip, r1
 800056a:	0431      	lsls	r1, r6, #16
 800056c:	4666      	mov	r6, ip
 800056e:	9a01      	ldr	r2, [sp, #4]
 8000570:	0c09      	lsrs	r1, r1, #16
 8000572:	4342      	muls	r2, r0
 8000574:	0003      	movs	r3, r0
 8000576:	4331      	orrs	r1, r6
 8000578:	428a      	cmp	r2, r1
 800057a:	d904      	bls.n	8000586 <__aeabi_ddiv+0x156>
 800057c:	1909      	adds	r1, r1, r4
 800057e:	3b01      	subs	r3, #1
 8000580:	428c      	cmp	r4, r1
 8000582:	d800      	bhi.n	8000586 <__aeabi_ddiv+0x156>
 8000584:	e1ed      	b.n	8000962 <__aeabi_ddiv+0x532>
 8000586:	1a88      	subs	r0, r1, r2
 8000588:	4642      	mov	r2, r8
 800058a:	0412      	lsls	r2, r2, #16
 800058c:	431a      	orrs	r2, r3
 800058e:	4690      	mov	r8, r2
 8000590:	4641      	mov	r1, r8
 8000592:	9b00      	ldr	r3, [sp, #0]
 8000594:	040e      	lsls	r6, r1, #16
 8000596:	0c1b      	lsrs	r3, r3, #16
 8000598:	001f      	movs	r7, r3
 800059a:	9302      	str	r3, [sp, #8]
 800059c:	9b00      	ldr	r3, [sp, #0]
 800059e:	0c36      	lsrs	r6, r6, #16
 80005a0:	041b      	lsls	r3, r3, #16
 80005a2:	0c19      	lsrs	r1, r3, #16
 80005a4:	000b      	movs	r3, r1
 80005a6:	4373      	muls	r3, r6
 80005a8:	0c12      	lsrs	r2, r2, #16
 80005aa:	437e      	muls	r6, r7
 80005ac:	9103      	str	r1, [sp, #12]
 80005ae:	4351      	muls	r1, r2
 80005b0:	437a      	muls	r2, r7
 80005b2:	0c1f      	lsrs	r7, r3, #16
 80005b4:	46bc      	mov	ip, r7
 80005b6:	1876      	adds	r6, r6, r1
 80005b8:	4466      	add	r6, ip
 80005ba:	42b1      	cmp	r1, r6
 80005bc:	d903      	bls.n	80005c6 <__aeabi_ddiv+0x196>
 80005be:	2180      	movs	r1, #128	; 0x80
 80005c0:	0249      	lsls	r1, r1, #9
 80005c2:	468c      	mov	ip, r1
 80005c4:	4462      	add	r2, ip
 80005c6:	0c31      	lsrs	r1, r6, #16
 80005c8:	188a      	adds	r2, r1, r2
 80005ca:	0431      	lsls	r1, r6, #16
 80005cc:	041e      	lsls	r6, r3, #16
 80005ce:	0c36      	lsrs	r6, r6, #16
 80005d0:	198e      	adds	r6, r1, r6
 80005d2:	4290      	cmp	r0, r2
 80005d4:	d302      	bcc.n	80005dc <__aeabi_ddiv+0x1ac>
 80005d6:	d112      	bne.n	80005fe <__aeabi_ddiv+0x1ce>
 80005d8:	42b5      	cmp	r5, r6
 80005da:	d210      	bcs.n	80005fe <__aeabi_ddiv+0x1ce>
 80005dc:	4643      	mov	r3, r8
 80005de:	1e59      	subs	r1, r3, #1
 80005e0:	9b00      	ldr	r3, [sp, #0]
 80005e2:	469c      	mov	ip, r3
 80005e4:	4465      	add	r5, ip
 80005e6:	001f      	movs	r7, r3
 80005e8:	429d      	cmp	r5, r3
 80005ea:	419b      	sbcs	r3, r3
 80005ec:	425b      	negs	r3, r3
 80005ee:	191b      	adds	r3, r3, r4
 80005f0:	18c0      	adds	r0, r0, r3
 80005f2:	4284      	cmp	r4, r0
 80005f4:	d200      	bcs.n	80005f8 <__aeabi_ddiv+0x1c8>
 80005f6:	e1a0      	b.n	800093a <__aeabi_ddiv+0x50a>
 80005f8:	d100      	bne.n	80005fc <__aeabi_ddiv+0x1cc>
 80005fa:	e19b      	b.n	8000934 <__aeabi_ddiv+0x504>
 80005fc:	4688      	mov	r8, r1
 80005fe:	1bae      	subs	r6, r5, r6
 8000600:	42b5      	cmp	r5, r6
 8000602:	41ad      	sbcs	r5, r5
 8000604:	1a80      	subs	r0, r0, r2
 8000606:	426d      	negs	r5, r5
 8000608:	1b40      	subs	r0, r0, r5
 800060a:	4284      	cmp	r4, r0
 800060c:	d100      	bne.n	8000610 <__aeabi_ddiv+0x1e0>
 800060e:	e1d5      	b.n	80009bc <__aeabi_ddiv+0x58c>
 8000610:	4649      	mov	r1, r9
 8000612:	f7ff fdff 	bl	8000214 <__aeabi_uidivmod>
 8000616:	9a01      	ldr	r2, [sp, #4]
 8000618:	040b      	lsls	r3, r1, #16
 800061a:	4342      	muls	r2, r0
 800061c:	0c31      	lsrs	r1, r6, #16
 800061e:	0005      	movs	r5, r0
 8000620:	4319      	orrs	r1, r3
 8000622:	428a      	cmp	r2, r1
 8000624:	d900      	bls.n	8000628 <__aeabi_ddiv+0x1f8>
 8000626:	e16c      	b.n	8000902 <__aeabi_ddiv+0x4d2>
 8000628:	1a88      	subs	r0, r1, r2
 800062a:	4649      	mov	r1, r9
 800062c:	f7ff fdf2 	bl	8000214 <__aeabi_uidivmod>
 8000630:	9a01      	ldr	r2, [sp, #4]
 8000632:	0436      	lsls	r6, r6, #16
 8000634:	4342      	muls	r2, r0
 8000636:	0409      	lsls	r1, r1, #16
 8000638:	0c36      	lsrs	r6, r6, #16
 800063a:	0003      	movs	r3, r0
 800063c:	430e      	orrs	r6, r1
 800063e:	42b2      	cmp	r2, r6
 8000640:	d900      	bls.n	8000644 <__aeabi_ddiv+0x214>
 8000642:	e153      	b.n	80008ec <__aeabi_ddiv+0x4bc>
 8000644:	9803      	ldr	r0, [sp, #12]
 8000646:	1ab6      	subs	r6, r6, r2
 8000648:	0002      	movs	r2, r0
 800064a:	042d      	lsls	r5, r5, #16
 800064c:	431d      	orrs	r5, r3
 800064e:	9f02      	ldr	r7, [sp, #8]
 8000650:	042b      	lsls	r3, r5, #16
 8000652:	0c1b      	lsrs	r3, r3, #16
 8000654:	435a      	muls	r2, r3
 8000656:	437b      	muls	r3, r7
 8000658:	469c      	mov	ip, r3
 800065a:	0c29      	lsrs	r1, r5, #16
 800065c:	4348      	muls	r0, r1
 800065e:	0c13      	lsrs	r3, r2, #16
 8000660:	4484      	add	ip, r0
 8000662:	4463      	add	r3, ip
 8000664:	4379      	muls	r1, r7
 8000666:	4298      	cmp	r0, r3
 8000668:	d903      	bls.n	8000672 <__aeabi_ddiv+0x242>
 800066a:	2080      	movs	r0, #128	; 0x80
 800066c:	0240      	lsls	r0, r0, #9
 800066e:	4684      	mov	ip, r0
 8000670:	4461      	add	r1, ip
 8000672:	0c18      	lsrs	r0, r3, #16
 8000674:	0412      	lsls	r2, r2, #16
 8000676:	041b      	lsls	r3, r3, #16
 8000678:	0c12      	lsrs	r2, r2, #16
 800067a:	1841      	adds	r1, r0, r1
 800067c:	189b      	adds	r3, r3, r2
 800067e:	428e      	cmp	r6, r1
 8000680:	d200      	bcs.n	8000684 <__aeabi_ddiv+0x254>
 8000682:	e0ff      	b.n	8000884 <__aeabi_ddiv+0x454>
 8000684:	d100      	bne.n	8000688 <__aeabi_ddiv+0x258>
 8000686:	e0fa      	b.n	800087e <__aeabi_ddiv+0x44e>
 8000688:	2301      	movs	r3, #1
 800068a:	431d      	orrs	r5, r3
 800068c:	4a49      	ldr	r2, [pc, #292]	; (80007b4 <__aeabi_ddiv+0x384>)
 800068e:	445a      	add	r2, fp
 8000690:	2a00      	cmp	r2, #0
 8000692:	dc00      	bgt.n	8000696 <__aeabi_ddiv+0x266>
 8000694:	e0aa      	b.n	80007ec <__aeabi_ddiv+0x3bc>
 8000696:	076b      	lsls	r3, r5, #29
 8000698:	d000      	beq.n	800069c <__aeabi_ddiv+0x26c>
 800069a:	e13d      	b.n	8000918 <__aeabi_ddiv+0x4e8>
 800069c:	08ed      	lsrs	r5, r5, #3
 800069e:	4643      	mov	r3, r8
 80006a0:	01db      	lsls	r3, r3, #7
 80006a2:	d506      	bpl.n	80006b2 <__aeabi_ddiv+0x282>
 80006a4:	4642      	mov	r2, r8
 80006a6:	4b44      	ldr	r3, [pc, #272]	; (80007b8 <__aeabi_ddiv+0x388>)
 80006a8:	401a      	ands	r2, r3
 80006aa:	4690      	mov	r8, r2
 80006ac:	2280      	movs	r2, #128	; 0x80
 80006ae:	00d2      	lsls	r2, r2, #3
 80006b0:	445a      	add	r2, fp
 80006b2:	4b42      	ldr	r3, [pc, #264]	; (80007bc <__aeabi_ddiv+0x38c>)
 80006b4:	429a      	cmp	r2, r3
 80006b6:	dd00      	ble.n	80006ba <__aeabi_ddiv+0x28a>
 80006b8:	e71f      	b.n	80004fa <__aeabi_ddiv+0xca>
 80006ba:	4643      	mov	r3, r8
 80006bc:	075b      	lsls	r3, r3, #29
 80006be:	431d      	orrs	r5, r3
 80006c0:	4643      	mov	r3, r8
 80006c2:	0552      	lsls	r2, r2, #21
 80006c4:	025c      	lsls	r4, r3, #9
 80006c6:	0b24      	lsrs	r4, r4, #12
 80006c8:	0d53      	lsrs	r3, r2, #21
 80006ca:	e708      	b.n	80004de <__aeabi_ddiv+0xae>
 80006cc:	4652      	mov	r2, sl
 80006ce:	4322      	orrs	r2, r4
 80006d0:	d100      	bne.n	80006d4 <__aeabi_ddiv+0x2a4>
 80006d2:	e07b      	b.n	80007cc <__aeabi_ddiv+0x39c>
 80006d4:	2c00      	cmp	r4, #0
 80006d6:	d100      	bne.n	80006da <__aeabi_ddiv+0x2aa>
 80006d8:	e0fa      	b.n	80008d0 <__aeabi_ddiv+0x4a0>
 80006da:	0020      	movs	r0, r4
 80006dc:	f001 f868 	bl	80017b0 <__clzsi2>
 80006e0:	0002      	movs	r2, r0
 80006e2:	3a0b      	subs	r2, #11
 80006e4:	231d      	movs	r3, #29
 80006e6:	0001      	movs	r1, r0
 80006e8:	1a9b      	subs	r3, r3, r2
 80006ea:	4652      	mov	r2, sl
 80006ec:	3908      	subs	r1, #8
 80006ee:	40da      	lsrs	r2, r3
 80006f0:	408c      	lsls	r4, r1
 80006f2:	4314      	orrs	r4, r2
 80006f4:	4652      	mov	r2, sl
 80006f6:	408a      	lsls	r2, r1
 80006f8:	4b31      	ldr	r3, [pc, #196]	; (80007c0 <__aeabi_ddiv+0x390>)
 80006fa:	4458      	add	r0, fp
 80006fc:	469b      	mov	fp, r3
 80006fe:	4483      	add	fp, r0
 8000700:	2000      	movs	r0, #0
 8000702:	e6d5      	b.n	80004b0 <__aeabi_ddiv+0x80>
 8000704:	464b      	mov	r3, r9
 8000706:	4323      	orrs	r3, r4
 8000708:	4698      	mov	r8, r3
 800070a:	d044      	beq.n	8000796 <__aeabi_ddiv+0x366>
 800070c:	2c00      	cmp	r4, #0
 800070e:	d100      	bne.n	8000712 <__aeabi_ddiv+0x2e2>
 8000710:	e0ce      	b.n	80008b0 <__aeabi_ddiv+0x480>
 8000712:	0020      	movs	r0, r4
 8000714:	f001 f84c 	bl	80017b0 <__clzsi2>
 8000718:	0001      	movs	r1, r0
 800071a:	0002      	movs	r2, r0
 800071c:	390b      	subs	r1, #11
 800071e:	231d      	movs	r3, #29
 8000720:	1a5b      	subs	r3, r3, r1
 8000722:	4649      	mov	r1, r9
 8000724:	0010      	movs	r0, r2
 8000726:	40d9      	lsrs	r1, r3
 8000728:	3808      	subs	r0, #8
 800072a:	4084      	lsls	r4, r0
 800072c:	000b      	movs	r3, r1
 800072e:	464d      	mov	r5, r9
 8000730:	4323      	orrs	r3, r4
 8000732:	4698      	mov	r8, r3
 8000734:	4085      	lsls	r5, r0
 8000736:	4823      	ldr	r0, [pc, #140]	; (80007c4 <__aeabi_ddiv+0x394>)
 8000738:	1a83      	subs	r3, r0, r2
 800073a:	469b      	mov	fp, r3
 800073c:	2300      	movs	r3, #0
 800073e:	4699      	mov	r9, r3
 8000740:	9300      	str	r3, [sp, #0]
 8000742:	e69a      	b.n	800047a <__aeabi_ddiv+0x4a>
 8000744:	464b      	mov	r3, r9
 8000746:	4323      	orrs	r3, r4
 8000748:	4698      	mov	r8, r3
 800074a:	d11d      	bne.n	8000788 <__aeabi_ddiv+0x358>
 800074c:	2308      	movs	r3, #8
 800074e:	4699      	mov	r9, r3
 8000750:	3b06      	subs	r3, #6
 8000752:	2500      	movs	r5, #0
 8000754:	4683      	mov	fp, r0
 8000756:	9300      	str	r3, [sp, #0]
 8000758:	e68f      	b.n	800047a <__aeabi_ddiv+0x4a>
 800075a:	4652      	mov	r2, sl
 800075c:	4322      	orrs	r2, r4
 800075e:	d109      	bne.n	8000774 <__aeabi_ddiv+0x344>
 8000760:	2302      	movs	r3, #2
 8000762:	4649      	mov	r1, r9
 8000764:	4319      	orrs	r1, r3
 8000766:	4b18      	ldr	r3, [pc, #96]	; (80007c8 <__aeabi_ddiv+0x398>)
 8000768:	4689      	mov	r9, r1
 800076a:	469c      	mov	ip, r3
 800076c:	2400      	movs	r4, #0
 800076e:	2002      	movs	r0, #2
 8000770:	44e3      	add	fp, ip
 8000772:	e69d      	b.n	80004b0 <__aeabi_ddiv+0x80>
 8000774:	2303      	movs	r3, #3
 8000776:	464a      	mov	r2, r9
 8000778:	431a      	orrs	r2, r3
 800077a:	4b13      	ldr	r3, [pc, #76]	; (80007c8 <__aeabi_ddiv+0x398>)
 800077c:	4691      	mov	r9, r2
 800077e:	469c      	mov	ip, r3
 8000780:	4652      	mov	r2, sl
 8000782:	2003      	movs	r0, #3
 8000784:	44e3      	add	fp, ip
 8000786:	e693      	b.n	80004b0 <__aeabi_ddiv+0x80>
 8000788:	230c      	movs	r3, #12
 800078a:	4699      	mov	r9, r3
 800078c:	3b09      	subs	r3, #9
 800078e:	46a0      	mov	r8, r4
 8000790:	4683      	mov	fp, r0
 8000792:	9300      	str	r3, [sp, #0]
 8000794:	e671      	b.n	800047a <__aeabi_ddiv+0x4a>
 8000796:	2304      	movs	r3, #4
 8000798:	4699      	mov	r9, r3
 800079a:	2300      	movs	r3, #0
 800079c:	469b      	mov	fp, r3
 800079e:	3301      	adds	r3, #1
 80007a0:	2500      	movs	r5, #0
 80007a2:	9300      	str	r3, [sp, #0]
 80007a4:	e669      	b.n	800047a <__aeabi_ddiv+0x4a>
 80007a6:	46c0      	nop			; (mov r8, r8)
 80007a8:	000007ff 	.word	0x000007ff
 80007ac:	fffffc01 	.word	0xfffffc01
 80007b0:	08005254 	.word	0x08005254
 80007b4:	000003ff 	.word	0x000003ff
 80007b8:	feffffff 	.word	0xfeffffff
 80007bc:	000007fe 	.word	0x000007fe
 80007c0:	000003f3 	.word	0x000003f3
 80007c4:	fffffc0d 	.word	0xfffffc0d
 80007c8:	fffff801 	.word	0xfffff801
 80007cc:	4649      	mov	r1, r9
 80007ce:	2301      	movs	r3, #1
 80007d0:	4319      	orrs	r1, r3
 80007d2:	4689      	mov	r9, r1
 80007d4:	2400      	movs	r4, #0
 80007d6:	2001      	movs	r0, #1
 80007d8:	e66a      	b.n	80004b0 <__aeabi_ddiv+0x80>
 80007da:	2300      	movs	r3, #0
 80007dc:	2480      	movs	r4, #128	; 0x80
 80007de:	469a      	mov	sl, r3
 80007e0:	2500      	movs	r5, #0
 80007e2:	4b8a      	ldr	r3, [pc, #552]	; (8000a0c <__aeabi_ddiv+0x5dc>)
 80007e4:	0324      	lsls	r4, r4, #12
 80007e6:	e67a      	b.n	80004de <__aeabi_ddiv+0xae>
 80007e8:	2501      	movs	r5, #1
 80007ea:	426d      	negs	r5, r5
 80007ec:	2301      	movs	r3, #1
 80007ee:	1a9b      	subs	r3, r3, r2
 80007f0:	2b38      	cmp	r3, #56	; 0x38
 80007f2:	dd00      	ble.n	80007f6 <__aeabi_ddiv+0x3c6>
 80007f4:	e670      	b.n	80004d8 <__aeabi_ddiv+0xa8>
 80007f6:	2b1f      	cmp	r3, #31
 80007f8:	dc00      	bgt.n	80007fc <__aeabi_ddiv+0x3cc>
 80007fa:	e0bf      	b.n	800097c <__aeabi_ddiv+0x54c>
 80007fc:	211f      	movs	r1, #31
 80007fe:	4249      	negs	r1, r1
 8000800:	1a8a      	subs	r2, r1, r2
 8000802:	4641      	mov	r1, r8
 8000804:	40d1      	lsrs	r1, r2
 8000806:	000a      	movs	r2, r1
 8000808:	2b20      	cmp	r3, #32
 800080a:	d004      	beq.n	8000816 <__aeabi_ddiv+0x3e6>
 800080c:	4641      	mov	r1, r8
 800080e:	4b80      	ldr	r3, [pc, #512]	; (8000a10 <__aeabi_ddiv+0x5e0>)
 8000810:	445b      	add	r3, fp
 8000812:	4099      	lsls	r1, r3
 8000814:	430d      	orrs	r5, r1
 8000816:	1e6b      	subs	r3, r5, #1
 8000818:	419d      	sbcs	r5, r3
 800081a:	2307      	movs	r3, #7
 800081c:	432a      	orrs	r2, r5
 800081e:	001d      	movs	r5, r3
 8000820:	2400      	movs	r4, #0
 8000822:	4015      	ands	r5, r2
 8000824:	4213      	tst	r3, r2
 8000826:	d100      	bne.n	800082a <__aeabi_ddiv+0x3fa>
 8000828:	e0d4      	b.n	80009d4 <__aeabi_ddiv+0x5a4>
 800082a:	210f      	movs	r1, #15
 800082c:	2300      	movs	r3, #0
 800082e:	4011      	ands	r1, r2
 8000830:	2904      	cmp	r1, #4
 8000832:	d100      	bne.n	8000836 <__aeabi_ddiv+0x406>
 8000834:	e0cb      	b.n	80009ce <__aeabi_ddiv+0x59e>
 8000836:	1d11      	adds	r1, r2, #4
 8000838:	4291      	cmp	r1, r2
 800083a:	4192      	sbcs	r2, r2
 800083c:	4252      	negs	r2, r2
 800083e:	189b      	adds	r3, r3, r2
 8000840:	000a      	movs	r2, r1
 8000842:	0219      	lsls	r1, r3, #8
 8000844:	d400      	bmi.n	8000848 <__aeabi_ddiv+0x418>
 8000846:	e0c2      	b.n	80009ce <__aeabi_ddiv+0x59e>
 8000848:	2301      	movs	r3, #1
 800084a:	2400      	movs	r4, #0
 800084c:	2500      	movs	r5, #0
 800084e:	e646      	b.n	80004de <__aeabi_ddiv+0xae>
 8000850:	2380      	movs	r3, #128	; 0x80
 8000852:	4641      	mov	r1, r8
 8000854:	031b      	lsls	r3, r3, #12
 8000856:	4219      	tst	r1, r3
 8000858:	d008      	beq.n	800086c <__aeabi_ddiv+0x43c>
 800085a:	421c      	tst	r4, r3
 800085c:	d106      	bne.n	800086c <__aeabi_ddiv+0x43c>
 800085e:	431c      	orrs	r4, r3
 8000860:	0324      	lsls	r4, r4, #12
 8000862:	46ba      	mov	sl, r7
 8000864:	0015      	movs	r5, r2
 8000866:	4b69      	ldr	r3, [pc, #420]	; (8000a0c <__aeabi_ddiv+0x5dc>)
 8000868:	0b24      	lsrs	r4, r4, #12
 800086a:	e638      	b.n	80004de <__aeabi_ddiv+0xae>
 800086c:	2480      	movs	r4, #128	; 0x80
 800086e:	4643      	mov	r3, r8
 8000870:	0324      	lsls	r4, r4, #12
 8000872:	431c      	orrs	r4, r3
 8000874:	0324      	lsls	r4, r4, #12
 8000876:	46b2      	mov	sl, r6
 8000878:	4b64      	ldr	r3, [pc, #400]	; (8000a0c <__aeabi_ddiv+0x5dc>)
 800087a:	0b24      	lsrs	r4, r4, #12
 800087c:	e62f      	b.n	80004de <__aeabi_ddiv+0xae>
 800087e:	2b00      	cmp	r3, #0
 8000880:	d100      	bne.n	8000884 <__aeabi_ddiv+0x454>
 8000882:	e703      	b.n	800068c <__aeabi_ddiv+0x25c>
 8000884:	19a6      	adds	r6, r4, r6
 8000886:	1e68      	subs	r0, r5, #1
 8000888:	42a6      	cmp	r6, r4
 800088a:	d200      	bcs.n	800088e <__aeabi_ddiv+0x45e>
 800088c:	e08d      	b.n	80009aa <__aeabi_ddiv+0x57a>
 800088e:	428e      	cmp	r6, r1
 8000890:	d200      	bcs.n	8000894 <__aeabi_ddiv+0x464>
 8000892:	e0a3      	b.n	80009dc <__aeabi_ddiv+0x5ac>
 8000894:	d100      	bne.n	8000898 <__aeabi_ddiv+0x468>
 8000896:	e0b3      	b.n	8000a00 <__aeabi_ddiv+0x5d0>
 8000898:	0005      	movs	r5, r0
 800089a:	e6f5      	b.n	8000688 <__aeabi_ddiv+0x258>
 800089c:	42aa      	cmp	r2, r5
 800089e:	d900      	bls.n	80008a2 <__aeabi_ddiv+0x472>
 80008a0:	e639      	b.n	8000516 <__aeabi_ddiv+0xe6>
 80008a2:	4643      	mov	r3, r8
 80008a4:	07de      	lsls	r6, r3, #31
 80008a6:	0858      	lsrs	r0, r3, #1
 80008a8:	086b      	lsrs	r3, r5, #1
 80008aa:	431e      	orrs	r6, r3
 80008ac:	07ed      	lsls	r5, r5, #31
 80008ae:	e639      	b.n	8000524 <__aeabi_ddiv+0xf4>
 80008b0:	4648      	mov	r0, r9
 80008b2:	f000 ff7d 	bl	80017b0 <__clzsi2>
 80008b6:	0001      	movs	r1, r0
 80008b8:	0002      	movs	r2, r0
 80008ba:	3115      	adds	r1, #21
 80008bc:	3220      	adds	r2, #32
 80008be:	291c      	cmp	r1, #28
 80008c0:	dc00      	bgt.n	80008c4 <__aeabi_ddiv+0x494>
 80008c2:	e72c      	b.n	800071e <__aeabi_ddiv+0x2ee>
 80008c4:	464b      	mov	r3, r9
 80008c6:	3808      	subs	r0, #8
 80008c8:	4083      	lsls	r3, r0
 80008ca:	2500      	movs	r5, #0
 80008cc:	4698      	mov	r8, r3
 80008ce:	e732      	b.n	8000736 <__aeabi_ddiv+0x306>
 80008d0:	f000 ff6e 	bl	80017b0 <__clzsi2>
 80008d4:	0003      	movs	r3, r0
 80008d6:	001a      	movs	r2, r3
 80008d8:	3215      	adds	r2, #21
 80008da:	3020      	adds	r0, #32
 80008dc:	2a1c      	cmp	r2, #28
 80008de:	dc00      	bgt.n	80008e2 <__aeabi_ddiv+0x4b2>
 80008e0:	e700      	b.n	80006e4 <__aeabi_ddiv+0x2b4>
 80008e2:	4654      	mov	r4, sl
 80008e4:	3b08      	subs	r3, #8
 80008e6:	2200      	movs	r2, #0
 80008e8:	409c      	lsls	r4, r3
 80008ea:	e705      	b.n	80006f8 <__aeabi_ddiv+0x2c8>
 80008ec:	1936      	adds	r6, r6, r4
 80008ee:	3b01      	subs	r3, #1
 80008f0:	42b4      	cmp	r4, r6
 80008f2:	d900      	bls.n	80008f6 <__aeabi_ddiv+0x4c6>
 80008f4:	e6a6      	b.n	8000644 <__aeabi_ddiv+0x214>
 80008f6:	42b2      	cmp	r2, r6
 80008f8:	d800      	bhi.n	80008fc <__aeabi_ddiv+0x4cc>
 80008fa:	e6a3      	b.n	8000644 <__aeabi_ddiv+0x214>
 80008fc:	1e83      	subs	r3, r0, #2
 80008fe:	1936      	adds	r6, r6, r4
 8000900:	e6a0      	b.n	8000644 <__aeabi_ddiv+0x214>
 8000902:	1909      	adds	r1, r1, r4
 8000904:	3d01      	subs	r5, #1
 8000906:	428c      	cmp	r4, r1
 8000908:	d900      	bls.n	800090c <__aeabi_ddiv+0x4dc>
 800090a:	e68d      	b.n	8000628 <__aeabi_ddiv+0x1f8>
 800090c:	428a      	cmp	r2, r1
 800090e:	d800      	bhi.n	8000912 <__aeabi_ddiv+0x4e2>
 8000910:	e68a      	b.n	8000628 <__aeabi_ddiv+0x1f8>
 8000912:	1e85      	subs	r5, r0, #2
 8000914:	1909      	adds	r1, r1, r4
 8000916:	e687      	b.n	8000628 <__aeabi_ddiv+0x1f8>
 8000918:	230f      	movs	r3, #15
 800091a:	402b      	ands	r3, r5
 800091c:	2b04      	cmp	r3, #4
 800091e:	d100      	bne.n	8000922 <__aeabi_ddiv+0x4f2>
 8000920:	e6bc      	b.n	800069c <__aeabi_ddiv+0x26c>
 8000922:	2305      	movs	r3, #5
 8000924:	425b      	negs	r3, r3
 8000926:	42ab      	cmp	r3, r5
 8000928:	419b      	sbcs	r3, r3
 800092a:	3504      	adds	r5, #4
 800092c:	425b      	negs	r3, r3
 800092e:	08ed      	lsrs	r5, r5, #3
 8000930:	4498      	add	r8, r3
 8000932:	e6b4      	b.n	800069e <__aeabi_ddiv+0x26e>
 8000934:	42af      	cmp	r7, r5
 8000936:	d900      	bls.n	800093a <__aeabi_ddiv+0x50a>
 8000938:	e660      	b.n	80005fc <__aeabi_ddiv+0x1cc>
 800093a:	4282      	cmp	r2, r0
 800093c:	d804      	bhi.n	8000948 <__aeabi_ddiv+0x518>
 800093e:	d000      	beq.n	8000942 <__aeabi_ddiv+0x512>
 8000940:	e65c      	b.n	80005fc <__aeabi_ddiv+0x1cc>
 8000942:	42ae      	cmp	r6, r5
 8000944:	d800      	bhi.n	8000948 <__aeabi_ddiv+0x518>
 8000946:	e659      	b.n	80005fc <__aeabi_ddiv+0x1cc>
 8000948:	2302      	movs	r3, #2
 800094a:	425b      	negs	r3, r3
 800094c:	469c      	mov	ip, r3
 800094e:	9b00      	ldr	r3, [sp, #0]
 8000950:	44e0      	add	r8, ip
 8000952:	469c      	mov	ip, r3
 8000954:	4465      	add	r5, ip
 8000956:	429d      	cmp	r5, r3
 8000958:	419b      	sbcs	r3, r3
 800095a:	425b      	negs	r3, r3
 800095c:	191b      	adds	r3, r3, r4
 800095e:	18c0      	adds	r0, r0, r3
 8000960:	e64d      	b.n	80005fe <__aeabi_ddiv+0x1ce>
 8000962:	428a      	cmp	r2, r1
 8000964:	d800      	bhi.n	8000968 <__aeabi_ddiv+0x538>
 8000966:	e60e      	b.n	8000586 <__aeabi_ddiv+0x156>
 8000968:	1e83      	subs	r3, r0, #2
 800096a:	1909      	adds	r1, r1, r4
 800096c:	e60b      	b.n	8000586 <__aeabi_ddiv+0x156>
 800096e:	428a      	cmp	r2, r1
 8000970:	d800      	bhi.n	8000974 <__aeabi_ddiv+0x544>
 8000972:	e5f4      	b.n	800055e <__aeabi_ddiv+0x12e>
 8000974:	1e83      	subs	r3, r0, #2
 8000976:	4698      	mov	r8, r3
 8000978:	1909      	adds	r1, r1, r4
 800097a:	e5f0      	b.n	800055e <__aeabi_ddiv+0x12e>
 800097c:	4925      	ldr	r1, [pc, #148]	; (8000a14 <__aeabi_ddiv+0x5e4>)
 800097e:	0028      	movs	r0, r5
 8000980:	4459      	add	r1, fp
 8000982:	408d      	lsls	r5, r1
 8000984:	4642      	mov	r2, r8
 8000986:	408a      	lsls	r2, r1
 8000988:	1e69      	subs	r1, r5, #1
 800098a:	418d      	sbcs	r5, r1
 800098c:	4641      	mov	r1, r8
 800098e:	40d8      	lsrs	r0, r3
 8000990:	40d9      	lsrs	r1, r3
 8000992:	4302      	orrs	r2, r0
 8000994:	432a      	orrs	r2, r5
 8000996:	000b      	movs	r3, r1
 8000998:	0751      	lsls	r1, r2, #29
 800099a:	d100      	bne.n	800099e <__aeabi_ddiv+0x56e>
 800099c:	e751      	b.n	8000842 <__aeabi_ddiv+0x412>
 800099e:	210f      	movs	r1, #15
 80009a0:	4011      	ands	r1, r2
 80009a2:	2904      	cmp	r1, #4
 80009a4:	d000      	beq.n	80009a8 <__aeabi_ddiv+0x578>
 80009a6:	e746      	b.n	8000836 <__aeabi_ddiv+0x406>
 80009a8:	e74b      	b.n	8000842 <__aeabi_ddiv+0x412>
 80009aa:	0005      	movs	r5, r0
 80009ac:	428e      	cmp	r6, r1
 80009ae:	d000      	beq.n	80009b2 <__aeabi_ddiv+0x582>
 80009b0:	e66a      	b.n	8000688 <__aeabi_ddiv+0x258>
 80009b2:	9a00      	ldr	r2, [sp, #0]
 80009b4:	4293      	cmp	r3, r2
 80009b6:	d000      	beq.n	80009ba <__aeabi_ddiv+0x58a>
 80009b8:	e666      	b.n	8000688 <__aeabi_ddiv+0x258>
 80009ba:	e667      	b.n	800068c <__aeabi_ddiv+0x25c>
 80009bc:	4a16      	ldr	r2, [pc, #88]	; (8000a18 <__aeabi_ddiv+0x5e8>)
 80009be:	445a      	add	r2, fp
 80009c0:	2a00      	cmp	r2, #0
 80009c2:	dc00      	bgt.n	80009c6 <__aeabi_ddiv+0x596>
 80009c4:	e710      	b.n	80007e8 <__aeabi_ddiv+0x3b8>
 80009c6:	2301      	movs	r3, #1
 80009c8:	2500      	movs	r5, #0
 80009ca:	4498      	add	r8, r3
 80009cc:	e667      	b.n	800069e <__aeabi_ddiv+0x26e>
 80009ce:	075d      	lsls	r5, r3, #29
 80009d0:	025b      	lsls	r3, r3, #9
 80009d2:	0b1c      	lsrs	r4, r3, #12
 80009d4:	08d2      	lsrs	r2, r2, #3
 80009d6:	2300      	movs	r3, #0
 80009d8:	4315      	orrs	r5, r2
 80009da:	e580      	b.n	80004de <__aeabi_ddiv+0xae>
 80009dc:	9800      	ldr	r0, [sp, #0]
 80009de:	3d02      	subs	r5, #2
 80009e0:	0042      	lsls	r2, r0, #1
 80009e2:	4282      	cmp	r2, r0
 80009e4:	41bf      	sbcs	r7, r7
 80009e6:	427f      	negs	r7, r7
 80009e8:	193c      	adds	r4, r7, r4
 80009ea:	1936      	adds	r6, r6, r4
 80009ec:	9200      	str	r2, [sp, #0]
 80009ee:	e7dd      	b.n	80009ac <__aeabi_ddiv+0x57c>
 80009f0:	2480      	movs	r4, #128	; 0x80
 80009f2:	4643      	mov	r3, r8
 80009f4:	0324      	lsls	r4, r4, #12
 80009f6:	431c      	orrs	r4, r3
 80009f8:	0324      	lsls	r4, r4, #12
 80009fa:	4b04      	ldr	r3, [pc, #16]	; (8000a0c <__aeabi_ddiv+0x5dc>)
 80009fc:	0b24      	lsrs	r4, r4, #12
 80009fe:	e56e      	b.n	80004de <__aeabi_ddiv+0xae>
 8000a00:	9a00      	ldr	r2, [sp, #0]
 8000a02:	429a      	cmp	r2, r3
 8000a04:	d3ea      	bcc.n	80009dc <__aeabi_ddiv+0x5ac>
 8000a06:	0005      	movs	r5, r0
 8000a08:	e7d3      	b.n	80009b2 <__aeabi_ddiv+0x582>
 8000a0a:	46c0      	nop			; (mov r8, r8)
 8000a0c:	000007ff 	.word	0x000007ff
 8000a10:	0000043e 	.word	0x0000043e
 8000a14:	0000041e 	.word	0x0000041e
 8000a18:	000003ff 	.word	0x000003ff

08000a1c <__aeabi_dmul>:
 8000a1c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000a1e:	4657      	mov	r7, sl
 8000a20:	464e      	mov	r6, r9
 8000a22:	4645      	mov	r5, r8
 8000a24:	46de      	mov	lr, fp
 8000a26:	b5e0      	push	{r5, r6, r7, lr}
 8000a28:	4698      	mov	r8, r3
 8000a2a:	030c      	lsls	r4, r1, #12
 8000a2c:	004b      	lsls	r3, r1, #1
 8000a2e:	0006      	movs	r6, r0
 8000a30:	4692      	mov	sl, r2
 8000a32:	b087      	sub	sp, #28
 8000a34:	0b24      	lsrs	r4, r4, #12
 8000a36:	0d5b      	lsrs	r3, r3, #21
 8000a38:	0fcf      	lsrs	r7, r1, #31
 8000a3a:	2b00      	cmp	r3, #0
 8000a3c:	d100      	bne.n	8000a40 <__aeabi_dmul+0x24>
 8000a3e:	e15e      	b.n	8000cfe <__aeabi_dmul+0x2e2>
 8000a40:	4ada      	ldr	r2, [pc, #872]	; (8000dac <__aeabi_dmul+0x390>)
 8000a42:	4293      	cmp	r3, r2
 8000a44:	d100      	bne.n	8000a48 <__aeabi_dmul+0x2c>
 8000a46:	e177      	b.n	8000d38 <__aeabi_dmul+0x31c>
 8000a48:	0f42      	lsrs	r2, r0, #29
 8000a4a:	00e4      	lsls	r4, r4, #3
 8000a4c:	4314      	orrs	r4, r2
 8000a4e:	2280      	movs	r2, #128	; 0x80
 8000a50:	0412      	lsls	r2, r2, #16
 8000a52:	4314      	orrs	r4, r2
 8000a54:	4ad6      	ldr	r2, [pc, #856]	; (8000db0 <__aeabi_dmul+0x394>)
 8000a56:	00c5      	lsls	r5, r0, #3
 8000a58:	4694      	mov	ip, r2
 8000a5a:	4463      	add	r3, ip
 8000a5c:	9300      	str	r3, [sp, #0]
 8000a5e:	2300      	movs	r3, #0
 8000a60:	4699      	mov	r9, r3
 8000a62:	469b      	mov	fp, r3
 8000a64:	4643      	mov	r3, r8
 8000a66:	4642      	mov	r2, r8
 8000a68:	031e      	lsls	r6, r3, #12
 8000a6a:	0fd2      	lsrs	r2, r2, #31
 8000a6c:	005b      	lsls	r3, r3, #1
 8000a6e:	4650      	mov	r0, sl
 8000a70:	4690      	mov	r8, r2
 8000a72:	0b36      	lsrs	r6, r6, #12
 8000a74:	0d5b      	lsrs	r3, r3, #21
 8000a76:	d100      	bne.n	8000a7a <__aeabi_dmul+0x5e>
 8000a78:	e122      	b.n	8000cc0 <__aeabi_dmul+0x2a4>
 8000a7a:	4acc      	ldr	r2, [pc, #816]	; (8000dac <__aeabi_dmul+0x390>)
 8000a7c:	4293      	cmp	r3, r2
 8000a7e:	d100      	bne.n	8000a82 <__aeabi_dmul+0x66>
 8000a80:	e164      	b.n	8000d4c <__aeabi_dmul+0x330>
 8000a82:	49cb      	ldr	r1, [pc, #812]	; (8000db0 <__aeabi_dmul+0x394>)
 8000a84:	0f42      	lsrs	r2, r0, #29
 8000a86:	468c      	mov	ip, r1
 8000a88:	9900      	ldr	r1, [sp, #0]
 8000a8a:	4463      	add	r3, ip
 8000a8c:	00f6      	lsls	r6, r6, #3
 8000a8e:	468c      	mov	ip, r1
 8000a90:	4316      	orrs	r6, r2
 8000a92:	2280      	movs	r2, #128	; 0x80
 8000a94:	449c      	add	ip, r3
 8000a96:	0412      	lsls	r2, r2, #16
 8000a98:	4663      	mov	r3, ip
 8000a9a:	4316      	orrs	r6, r2
 8000a9c:	00c2      	lsls	r2, r0, #3
 8000a9e:	2000      	movs	r0, #0
 8000aa0:	9300      	str	r3, [sp, #0]
 8000aa2:	9900      	ldr	r1, [sp, #0]
 8000aa4:	4643      	mov	r3, r8
 8000aa6:	3101      	adds	r1, #1
 8000aa8:	468c      	mov	ip, r1
 8000aaa:	4649      	mov	r1, r9
 8000aac:	407b      	eors	r3, r7
 8000aae:	9301      	str	r3, [sp, #4]
 8000ab0:	290f      	cmp	r1, #15
 8000ab2:	d826      	bhi.n	8000b02 <__aeabi_dmul+0xe6>
 8000ab4:	4bbf      	ldr	r3, [pc, #764]	; (8000db4 <__aeabi_dmul+0x398>)
 8000ab6:	0089      	lsls	r1, r1, #2
 8000ab8:	5859      	ldr	r1, [r3, r1]
 8000aba:	468f      	mov	pc, r1
 8000abc:	4643      	mov	r3, r8
 8000abe:	9301      	str	r3, [sp, #4]
 8000ac0:	0034      	movs	r4, r6
 8000ac2:	0015      	movs	r5, r2
 8000ac4:	4683      	mov	fp, r0
 8000ac6:	465b      	mov	r3, fp
 8000ac8:	2b02      	cmp	r3, #2
 8000aca:	d016      	beq.n	8000afa <__aeabi_dmul+0xde>
 8000acc:	2b03      	cmp	r3, #3
 8000ace:	d100      	bne.n	8000ad2 <__aeabi_dmul+0xb6>
 8000ad0:	e205      	b.n	8000ede <__aeabi_dmul+0x4c2>
 8000ad2:	2b01      	cmp	r3, #1
 8000ad4:	d000      	beq.n	8000ad8 <__aeabi_dmul+0xbc>
 8000ad6:	e0cf      	b.n	8000c78 <__aeabi_dmul+0x25c>
 8000ad8:	2200      	movs	r2, #0
 8000ada:	2400      	movs	r4, #0
 8000adc:	2500      	movs	r5, #0
 8000ade:	9b01      	ldr	r3, [sp, #4]
 8000ae0:	0512      	lsls	r2, r2, #20
 8000ae2:	4322      	orrs	r2, r4
 8000ae4:	07db      	lsls	r3, r3, #31
 8000ae6:	431a      	orrs	r2, r3
 8000ae8:	0028      	movs	r0, r5
 8000aea:	0011      	movs	r1, r2
 8000aec:	b007      	add	sp, #28
 8000aee:	bcf0      	pop	{r4, r5, r6, r7}
 8000af0:	46bb      	mov	fp, r7
 8000af2:	46b2      	mov	sl, r6
 8000af4:	46a9      	mov	r9, r5
 8000af6:	46a0      	mov	r8, r4
 8000af8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000afa:	2400      	movs	r4, #0
 8000afc:	2500      	movs	r5, #0
 8000afe:	4aab      	ldr	r2, [pc, #684]	; (8000dac <__aeabi_dmul+0x390>)
 8000b00:	e7ed      	b.n	8000ade <__aeabi_dmul+0xc2>
 8000b02:	0c28      	lsrs	r0, r5, #16
 8000b04:	042d      	lsls	r5, r5, #16
 8000b06:	0c2d      	lsrs	r5, r5, #16
 8000b08:	002b      	movs	r3, r5
 8000b0a:	0c11      	lsrs	r1, r2, #16
 8000b0c:	0412      	lsls	r2, r2, #16
 8000b0e:	0c12      	lsrs	r2, r2, #16
 8000b10:	4353      	muls	r3, r2
 8000b12:	4698      	mov	r8, r3
 8000b14:	0013      	movs	r3, r2
 8000b16:	002f      	movs	r7, r5
 8000b18:	4343      	muls	r3, r0
 8000b1a:	4699      	mov	r9, r3
 8000b1c:	434f      	muls	r7, r1
 8000b1e:	444f      	add	r7, r9
 8000b20:	46bb      	mov	fp, r7
 8000b22:	4647      	mov	r7, r8
 8000b24:	000b      	movs	r3, r1
 8000b26:	0c3f      	lsrs	r7, r7, #16
 8000b28:	46ba      	mov	sl, r7
 8000b2a:	465f      	mov	r7, fp
 8000b2c:	4343      	muls	r3, r0
 8000b2e:	4457      	add	r7, sl
 8000b30:	9302      	str	r3, [sp, #8]
 8000b32:	45b9      	cmp	r9, r7
 8000b34:	d906      	bls.n	8000b44 <__aeabi_dmul+0x128>
 8000b36:	469a      	mov	sl, r3
 8000b38:	2380      	movs	r3, #128	; 0x80
 8000b3a:	025b      	lsls	r3, r3, #9
 8000b3c:	4699      	mov	r9, r3
 8000b3e:	44ca      	add	sl, r9
 8000b40:	4653      	mov	r3, sl
 8000b42:	9302      	str	r3, [sp, #8]
 8000b44:	0c3b      	lsrs	r3, r7, #16
 8000b46:	469b      	mov	fp, r3
 8000b48:	4643      	mov	r3, r8
 8000b4a:	041b      	lsls	r3, r3, #16
 8000b4c:	043f      	lsls	r7, r7, #16
 8000b4e:	0c1b      	lsrs	r3, r3, #16
 8000b50:	4698      	mov	r8, r3
 8000b52:	003b      	movs	r3, r7
 8000b54:	4443      	add	r3, r8
 8000b56:	9304      	str	r3, [sp, #16]
 8000b58:	0c33      	lsrs	r3, r6, #16
 8000b5a:	0436      	lsls	r6, r6, #16
 8000b5c:	0c36      	lsrs	r6, r6, #16
 8000b5e:	4698      	mov	r8, r3
 8000b60:	0033      	movs	r3, r6
 8000b62:	4343      	muls	r3, r0
 8000b64:	4699      	mov	r9, r3
 8000b66:	4643      	mov	r3, r8
 8000b68:	4343      	muls	r3, r0
 8000b6a:	002f      	movs	r7, r5
 8000b6c:	469a      	mov	sl, r3
 8000b6e:	4643      	mov	r3, r8
 8000b70:	4377      	muls	r7, r6
 8000b72:	435d      	muls	r5, r3
 8000b74:	0c38      	lsrs	r0, r7, #16
 8000b76:	444d      	add	r5, r9
 8000b78:	1945      	adds	r5, r0, r5
 8000b7a:	45a9      	cmp	r9, r5
 8000b7c:	d903      	bls.n	8000b86 <__aeabi_dmul+0x16a>
 8000b7e:	2380      	movs	r3, #128	; 0x80
 8000b80:	025b      	lsls	r3, r3, #9
 8000b82:	4699      	mov	r9, r3
 8000b84:	44ca      	add	sl, r9
 8000b86:	043f      	lsls	r7, r7, #16
 8000b88:	0c28      	lsrs	r0, r5, #16
 8000b8a:	0c3f      	lsrs	r7, r7, #16
 8000b8c:	042d      	lsls	r5, r5, #16
 8000b8e:	19ed      	adds	r5, r5, r7
 8000b90:	0c27      	lsrs	r7, r4, #16
 8000b92:	0424      	lsls	r4, r4, #16
 8000b94:	0c24      	lsrs	r4, r4, #16
 8000b96:	0003      	movs	r3, r0
 8000b98:	0020      	movs	r0, r4
 8000b9a:	4350      	muls	r0, r2
 8000b9c:	437a      	muls	r2, r7
 8000b9e:	4691      	mov	r9, r2
 8000ba0:	003a      	movs	r2, r7
 8000ba2:	4453      	add	r3, sl
 8000ba4:	9305      	str	r3, [sp, #20]
 8000ba6:	0c03      	lsrs	r3, r0, #16
 8000ba8:	469a      	mov	sl, r3
 8000baa:	434a      	muls	r2, r1
 8000bac:	4361      	muls	r1, r4
 8000bae:	4449      	add	r1, r9
 8000bb0:	4451      	add	r1, sl
 8000bb2:	44ab      	add	fp, r5
 8000bb4:	4589      	cmp	r9, r1
 8000bb6:	d903      	bls.n	8000bc0 <__aeabi_dmul+0x1a4>
 8000bb8:	2380      	movs	r3, #128	; 0x80
 8000bba:	025b      	lsls	r3, r3, #9
 8000bbc:	4699      	mov	r9, r3
 8000bbe:	444a      	add	r2, r9
 8000bc0:	0400      	lsls	r0, r0, #16
 8000bc2:	0c0b      	lsrs	r3, r1, #16
 8000bc4:	0c00      	lsrs	r0, r0, #16
 8000bc6:	0409      	lsls	r1, r1, #16
 8000bc8:	1809      	adds	r1, r1, r0
 8000bca:	0020      	movs	r0, r4
 8000bcc:	4699      	mov	r9, r3
 8000bce:	4643      	mov	r3, r8
 8000bd0:	4370      	muls	r0, r6
 8000bd2:	435c      	muls	r4, r3
 8000bd4:	437e      	muls	r6, r7
 8000bd6:	435f      	muls	r7, r3
 8000bd8:	0c03      	lsrs	r3, r0, #16
 8000bda:	4698      	mov	r8, r3
 8000bdc:	19a4      	adds	r4, r4, r6
 8000bde:	4444      	add	r4, r8
 8000be0:	444a      	add	r2, r9
 8000be2:	9703      	str	r7, [sp, #12]
 8000be4:	42a6      	cmp	r6, r4
 8000be6:	d904      	bls.n	8000bf2 <__aeabi_dmul+0x1d6>
 8000be8:	2380      	movs	r3, #128	; 0x80
 8000bea:	025b      	lsls	r3, r3, #9
 8000bec:	4698      	mov	r8, r3
 8000bee:	4447      	add	r7, r8
 8000bf0:	9703      	str	r7, [sp, #12]
 8000bf2:	9b02      	ldr	r3, [sp, #8]
 8000bf4:	0400      	lsls	r0, r0, #16
 8000bf6:	445b      	add	r3, fp
 8000bf8:	001e      	movs	r6, r3
 8000bfa:	42ab      	cmp	r3, r5
 8000bfc:	41ad      	sbcs	r5, r5
 8000bfe:	0423      	lsls	r3, r4, #16
 8000c00:	469a      	mov	sl, r3
 8000c02:	9b05      	ldr	r3, [sp, #20]
 8000c04:	1876      	adds	r6, r6, r1
 8000c06:	4698      	mov	r8, r3
 8000c08:	428e      	cmp	r6, r1
 8000c0a:	4189      	sbcs	r1, r1
 8000c0c:	0c00      	lsrs	r0, r0, #16
 8000c0e:	4450      	add	r0, sl
 8000c10:	4440      	add	r0, r8
 8000c12:	426d      	negs	r5, r5
 8000c14:	1947      	adds	r7, r0, r5
 8000c16:	46b8      	mov	r8, r7
 8000c18:	4693      	mov	fp, r2
 8000c1a:	4249      	negs	r1, r1
 8000c1c:	4689      	mov	r9, r1
 8000c1e:	44c3      	add	fp, r8
 8000c20:	44d9      	add	r9, fp
 8000c22:	4298      	cmp	r0, r3
 8000c24:	4180      	sbcs	r0, r0
 8000c26:	45a8      	cmp	r8, r5
 8000c28:	41ad      	sbcs	r5, r5
 8000c2a:	4593      	cmp	fp, r2
 8000c2c:	4192      	sbcs	r2, r2
 8000c2e:	4589      	cmp	r9, r1
 8000c30:	4189      	sbcs	r1, r1
 8000c32:	426d      	negs	r5, r5
 8000c34:	4240      	negs	r0, r0
 8000c36:	4328      	orrs	r0, r5
 8000c38:	0c24      	lsrs	r4, r4, #16
 8000c3a:	4252      	negs	r2, r2
 8000c3c:	4249      	negs	r1, r1
 8000c3e:	430a      	orrs	r2, r1
 8000c40:	9b03      	ldr	r3, [sp, #12]
 8000c42:	1900      	adds	r0, r0, r4
 8000c44:	1880      	adds	r0, r0, r2
 8000c46:	18c7      	adds	r7, r0, r3
 8000c48:	464b      	mov	r3, r9
 8000c4a:	0ddc      	lsrs	r4, r3, #23
 8000c4c:	9b04      	ldr	r3, [sp, #16]
 8000c4e:	0275      	lsls	r5, r6, #9
 8000c50:	431d      	orrs	r5, r3
 8000c52:	1e6a      	subs	r2, r5, #1
 8000c54:	4195      	sbcs	r5, r2
 8000c56:	464b      	mov	r3, r9
 8000c58:	0df6      	lsrs	r6, r6, #23
 8000c5a:	027f      	lsls	r7, r7, #9
 8000c5c:	4335      	orrs	r5, r6
 8000c5e:	025a      	lsls	r2, r3, #9
 8000c60:	433c      	orrs	r4, r7
 8000c62:	4315      	orrs	r5, r2
 8000c64:	01fb      	lsls	r3, r7, #7
 8000c66:	d400      	bmi.n	8000c6a <__aeabi_dmul+0x24e>
 8000c68:	e11c      	b.n	8000ea4 <__aeabi_dmul+0x488>
 8000c6a:	2101      	movs	r1, #1
 8000c6c:	086a      	lsrs	r2, r5, #1
 8000c6e:	400d      	ands	r5, r1
 8000c70:	4315      	orrs	r5, r2
 8000c72:	07e2      	lsls	r2, r4, #31
 8000c74:	4315      	orrs	r5, r2
 8000c76:	0864      	lsrs	r4, r4, #1
 8000c78:	494f      	ldr	r1, [pc, #316]	; (8000db8 <__aeabi_dmul+0x39c>)
 8000c7a:	4461      	add	r1, ip
 8000c7c:	2900      	cmp	r1, #0
 8000c7e:	dc00      	bgt.n	8000c82 <__aeabi_dmul+0x266>
 8000c80:	e0b0      	b.n	8000de4 <__aeabi_dmul+0x3c8>
 8000c82:	076b      	lsls	r3, r5, #29
 8000c84:	d009      	beq.n	8000c9a <__aeabi_dmul+0x27e>
 8000c86:	220f      	movs	r2, #15
 8000c88:	402a      	ands	r2, r5
 8000c8a:	2a04      	cmp	r2, #4
 8000c8c:	d005      	beq.n	8000c9a <__aeabi_dmul+0x27e>
 8000c8e:	1d2a      	adds	r2, r5, #4
 8000c90:	42aa      	cmp	r2, r5
 8000c92:	41ad      	sbcs	r5, r5
 8000c94:	426d      	negs	r5, r5
 8000c96:	1964      	adds	r4, r4, r5
 8000c98:	0015      	movs	r5, r2
 8000c9a:	01e3      	lsls	r3, r4, #7
 8000c9c:	d504      	bpl.n	8000ca8 <__aeabi_dmul+0x28c>
 8000c9e:	2180      	movs	r1, #128	; 0x80
 8000ca0:	4a46      	ldr	r2, [pc, #280]	; (8000dbc <__aeabi_dmul+0x3a0>)
 8000ca2:	00c9      	lsls	r1, r1, #3
 8000ca4:	4014      	ands	r4, r2
 8000ca6:	4461      	add	r1, ip
 8000ca8:	4a45      	ldr	r2, [pc, #276]	; (8000dc0 <__aeabi_dmul+0x3a4>)
 8000caa:	4291      	cmp	r1, r2
 8000cac:	dd00      	ble.n	8000cb0 <__aeabi_dmul+0x294>
 8000cae:	e724      	b.n	8000afa <__aeabi_dmul+0xde>
 8000cb0:	0762      	lsls	r2, r4, #29
 8000cb2:	08ed      	lsrs	r5, r5, #3
 8000cb4:	0264      	lsls	r4, r4, #9
 8000cb6:	0549      	lsls	r1, r1, #21
 8000cb8:	4315      	orrs	r5, r2
 8000cba:	0b24      	lsrs	r4, r4, #12
 8000cbc:	0d4a      	lsrs	r2, r1, #21
 8000cbe:	e70e      	b.n	8000ade <__aeabi_dmul+0xc2>
 8000cc0:	4652      	mov	r2, sl
 8000cc2:	4332      	orrs	r2, r6
 8000cc4:	d100      	bne.n	8000cc8 <__aeabi_dmul+0x2ac>
 8000cc6:	e07f      	b.n	8000dc8 <__aeabi_dmul+0x3ac>
 8000cc8:	2e00      	cmp	r6, #0
 8000cca:	d100      	bne.n	8000cce <__aeabi_dmul+0x2b2>
 8000ccc:	e0dc      	b.n	8000e88 <__aeabi_dmul+0x46c>
 8000cce:	0030      	movs	r0, r6
 8000cd0:	f000 fd6e 	bl	80017b0 <__clzsi2>
 8000cd4:	0002      	movs	r2, r0
 8000cd6:	3a0b      	subs	r2, #11
 8000cd8:	231d      	movs	r3, #29
 8000cda:	0001      	movs	r1, r0
 8000cdc:	1a9b      	subs	r3, r3, r2
 8000cde:	4652      	mov	r2, sl
 8000ce0:	3908      	subs	r1, #8
 8000ce2:	40da      	lsrs	r2, r3
 8000ce4:	408e      	lsls	r6, r1
 8000ce6:	4316      	orrs	r6, r2
 8000ce8:	4652      	mov	r2, sl
 8000cea:	408a      	lsls	r2, r1
 8000cec:	9b00      	ldr	r3, [sp, #0]
 8000cee:	4935      	ldr	r1, [pc, #212]	; (8000dc4 <__aeabi_dmul+0x3a8>)
 8000cf0:	1a18      	subs	r0, r3, r0
 8000cf2:	0003      	movs	r3, r0
 8000cf4:	468c      	mov	ip, r1
 8000cf6:	4463      	add	r3, ip
 8000cf8:	2000      	movs	r0, #0
 8000cfa:	9300      	str	r3, [sp, #0]
 8000cfc:	e6d1      	b.n	8000aa2 <__aeabi_dmul+0x86>
 8000cfe:	0025      	movs	r5, r4
 8000d00:	4305      	orrs	r5, r0
 8000d02:	d04a      	beq.n	8000d9a <__aeabi_dmul+0x37e>
 8000d04:	2c00      	cmp	r4, #0
 8000d06:	d100      	bne.n	8000d0a <__aeabi_dmul+0x2ee>
 8000d08:	e0b0      	b.n	8000e6c <__aeabi_dmul+0x450>
 8000d0a:	0020      	movs	r0, r4
 8000d0c:	f000 fd50 	bl	80017b0 <__clzsi2>
 8000d10:	0001      	movs	r1, r0
 8000d12:	0002      	movs	r2, r0
 8000d14:	390b      	subs	r1, #11
 8000d16:	231d      	movs	r3, #29
 8000d18:	0010      	movs	r0, r2
 8000d1a:	1a5b      	subs	r3, r3, r1
 8000d1c:	0031      	movs	r1, r6
 8000d1e:	0035      	movs	r5, r6
 8000d20:	3808      	subs	r0, #8
 8000d22:	4084      	lsls	r4, r0
 8000d24:	40d9      	lsrs	r1, r3
 8000d26:	4085      	lsls	r5, r0
 8000d28:	430c      	orrs	r4, r1
 8000d2a:	4826      	ldr	r0, [pc, #152]	; (8000dc4 <__aeabi_dmul+0x3a8>)
 8000d2c:	1a83      	subs	r3, r0, r2
 8000d2e:	9300      	str	r3, [sp, #0]
 8000d30:	2300      	movs	r3, #0
 8000d32:	4699      	mov	r9, r3
 8000d34:	469b      	mov	fp, r3
 8000d36:	e695      	b.n	8000a64 <__aeabi_dmul+0x48>
 8000d38:	0005      	movs	r5, r0
 8000d3a:	4325      	orrs	r5, r4
 8000d3c:	d126      	bne.n	8000d8c <__aeabi_dmul+0x370>
 8000d3e:	2208      	movs	r2, #8
 8000d40:	9300      	str	r3, [sp, #0]
 8000d42:	2302      	movs	r3, #2
 8000d44:	2400      	movs	r4, #0
 8000d46:	4691      	mov	r9, r2
 8000d48:	469b      	mov	fp, r3
 8000d4a:	e68b      	b.n	8000a64 <__aeabi_dmul+0x48>
 8000d4c:	4652      	mov	r2, sl
 8000d4e:	9b00      	ldr	r3, [sp, #0]
 8000d50:	4332      	orrs	r2, r6
 8000d52:	d110      	bne.n	8000d76 <__aeabi_dmul+0x35a>
 8000d54:	4915      	ldr	r1, [pc, #84]	; (8000dac <__aeabi_dmul+0x390>)
 8000d56:	2600      	movs	r6, #0
 8000d58:	468c      	mov	ip, r1
 8000d5a:	4463      	add	r3, ip
 8000d5c:	4649      	mov	r1, r9
 8000d5e:	9300      	str	r3, [sp, #0]
 8000d60:	2302      	movs	r3, #2
 8000d62:	4319      	orrs	r1, r3
 8000d64:	4689      	mov	r9, r1
 8000d66:	2002      	movs	r0, #2
 8000d68:	e69b      	b.n	8000aa2 <__aeabi_dmul+0x86>
 8000d6a:	465b      	mov	r3, fp
 8000d6c:	9701      	str	r7, [sp, #4]
 8000d6e:	2b02      	cmp	r3, #2
 8000d70:	d000      	beq.n	8000d74 <__aeabi_dmul+0x358>
 8000d72:	e6ab      	b.n	8000acc <__aeabi_dmul+0xb0>
 8000d74:	e6c1      	b.n	8000afa <__aeabi_dmul+0xde>
 8000d76:	4a0d      	ldr	r2, [pc, #52]	; (8000dac <__aeabi_dmul+0x390>)
 8000d78:	2003      	movs	r0, #3
 8000d7a:	4694      	mov	ip, r2
 8000d7c:	4463      	add	r3, ip
 8000d7e:	464a      	mov	r2, r9
 8000d80:	9300      	str	r3, [sp, #0]
 8000d82:	2303      	movs	r3, #3
 8000d84:	431a      	orrs	r2, r3
 8000d86:	4691      	mov	r9, r2
 8000d88:	4652      	mov	r2, sl
 8000d8a:	e68a      	b.n	8000aa2 <__aeabi_dmul+0x86>
 8000d8c:	220c      	movs	r2, #12
 8000d8e:	9300      	str	r3, [sp, #0]
 8000d90:	2303      	movs	r3, #3
 8000d92:	0005      	movs	r5, r0
 8000d94:	4691      	mov	r9, r2
 8000d96:	469b      	mov	fp, r3
 8000d98:	e664      	b.n	8000a64 <__aeabi_dmul+0x48>
 8000d9a:	2304      	movs	r3, #4
 8000d9c:	4699      	mov	r9, r3
 8000d9e:	2300      	movs	r3, #0
 8000da0:	9300      	str	r3, [sp, #0]
 8000da2:	3301      	adds	r3, #1
 8000da4:	2400      	movs	r4, #0
 8000da6:	469b      	mov	fp, r3
 8000da8:	e65c      	b.n	8000a64 <__aeabi_dmul+0x48>
 8000daa:	46c0      	nop			; (mov r8, r8)
 8000dac:	000007ff 	.word	0x000007ff
 8000db0:	fffffc01 	.word	0xfffffc01
 8000db4:	08005294 	.word	0x08005294
 8000db8:	000003ff 	.word	0x000003ff
 8000dbc:	feffffff 	.word	0xfeffffff
 8000dc0:	000007fe 	.word	0x000007fe
 8000dc4:	fffffc0d 	.word	0xfffffc0d
 8000dc8:	4649      	mov	r1, r9
 8000dca:	2301      	movs	r3, #1
 8000dcc:	4319      	orrs	r1, r3
 8000dce:	4689      	mov	r9, r1
 8000dd0:	2600      	movs	r6, #0
 8000dd2:	2001      	movs	r0, #1
 8000dd4:	e665      	b.n	8000aa2 <__aeabi_dmul+0x86>
 8000dd6:	2300      	movs	r3, #0
 8000dd8:	2480      	movs	r4, #128	; 0x80
 8000dda:	2500      	movs	r5, #0
 8000ddc:	4a43      	ldr	r2, [pc, #268]	; (8000eec <__aeabi_dmul+0x4d0>)
 8000dde:	9301      	str	r3, [sp, #4]
 8000de0:	0324      	lsls	r4, r4, #12
 8000de2:	e67c      	b.n	8000ade <__aeabi_dmul+0xc2>
 8000de4:	2001      	movs	r0, #1
 8000de6:	1a40      	subs	r0, r0, r1
 8000de8:	2838      	cmp	r0, #56	; 0x38
 8000dea:	dd00      	ble.n	8000dee <__aeabi_dmul+0x3d2>
 8000dec:	e674      	b.n	8000ad8 <__aeabi_dmul+0xbc>
 8000dee:	281f      	cmp	r0, #31
 8000df0:	dd5b      	ble.n	8000eaa <__aeabi_dmul+0x48e>
 8000df2:	221f      	movs	r2, #31
 8000df4:	0023      	movs	r3, r4
 8000df6:	4252      	negs	r2, r2
 8000df8:	1a51      	subs	r1, r2, r1
 8000dfa:	40cb      	lsrs	r3, r1
 8000dfc:	0019      	movs	r1, r3
 8000dfe:	2820      	cmp	r0, #32
 8000e00:	d003      	beq.n	8000e0a <__aeabi_dmul+0x3ee>
 8000e02:	4a3b      	ldr	r2, [pc, #236]	; (8000ef0 <__aeabi_dmul+0x4d4>)
 8000e04:	4462      	add	r2, ip
 8000e06:	4094      	lsls	r4, r2
 8000e08:	4325      	orrs	r5, r4
 8000e0a:	1e6a      	subs	r2, r5, #1
 8000e0c:	4195      	sbcs	r5, r2
 8000e0e:	002a      	movs	r2, r5
 8000e10:	430a      	orrs	r2, r1
 8000e12:	2107      	movs	r1, #7
 8000e14:	000d      	movs	r5, r1
 8000e16:	2400      	movs	r4, #0
 8000e18:	4015      	ands	r5, r2
 8000e1a:	4211      	tst	r1, r2
 8000e1c:	d05b      	beq.n	8000ed6 <__aeabi_dmul+0x4ba>
 8000e1e:	210f      	movs	r1, #15
 8000e20:	2400      	movs	r4, #0
 8000e22:	4011      	ands	r1, r2
 8000e24:	2904      	cmp	r1, #4
 8000e26:	d053      	beq.n	8000ed0 <__aeabi_dmul+0x4b4>
 8000e28:	1d11      	adds	r1, r2, #4
 8000e2a:	4291      	cmp	r1, r2
 8000e2c:	4192      	sbcs	r2, r2
 8000e2e:	4252      	negs	r2, r2
 8000e30:	18a4      	adds	r4, r4, r2
 8000e32:	000a      	movs	r2, r1
 8000e34:	0223      	lsls	r3, r4, #8
 8000e36:	d54b      	bpl.n	8000ed0 <__aeabi_dmul+0x4b4>
 8000e38:	2201      	movs	r2, #1
 8000e3a:	2400      	movs	r4, #0
 8000e3c:	2500      	movs	r5, #0
 8000e3e:	e64e      	b.n	8000ade <__aeabi_dmul+0xc2>
 8000e40:	2380      	movs	r3, #128	; 0x80
 8000e42:	031b      	lsls	r3, r3, #12
 8000e44:	421c      	tst	r4, r3
 8000e46:	d009      	beq.n	8000e5c <__aeabi_dmul+0x440>
 8000e48:	421e      	tst	r6, r3
 8000e4a:	d107      	bne.n	8000e5c <__aeabi_dmul+0x440>
 8000e4c:	4333      	orrs	r3, r6
 8000e4e:	031c      	lsls	r4, r3, #12
 8000e50:	4643      	mov	r3, r8
 8000e52:	0015      	movs	r5, r2
 8000e54:	0b24      	lsrs	r4, r4, #12
 8000e56:	4a25      	ldr	r2, [pc, #148]	; (8000eec <__aeabi_dmul+0x4d0>)
 8000e58:	9301      	str	r3, [sp, #4]
 8000e5a:	e640      	b.n	8000ade <__aeabi_dmul+0xc2>
 8000e5c:	2280      	movs	r2, #128	; 0x80
 8000e5e:	0312      	lsls	r2, r2, #12
 8000e60:	4314      	orrs	r4, r2
 8000e62:	0324      	lsls	r4, r4, #12
 8000e64:	4a21      	ldr	r2, [pc, #132]	; (8000eec <__aeabi_dmul+0x4d0>)
 8000e66:	0b24      	lsrs	r4, r4, #12
 8000e68:	9701      	str	r7, [sp, #4]
 8000e6a:	e638      	b.n	8000ade <__aeabi_dmul+0xc2>
 8000e6c:	f000 fca0 	bl	80017b0 <__clzsi2>
 8000e70:	0001      	movs	r1, r0
 8000e72:	0002      	movs	r2, r0
 8000e74:	3115      	adds	r1, #21
 8000e76:	3220      	adds	r2, #32
 8000e78:	291c      	cmp	r1, #28
 8000e7a:	dc00      	bgt.n	8000e7e <__aeabi_dmul+0x462>
 8000e7c:	e74b      	b.n	8000d16 <__aeabi_dmul+0x2fa>
 8000e7e:	0034      	movs	r4, r6
 8000e80:	3808      	subs	r0, #8
 8000e82:	2500      	movs	r5, #0
 8000e84:	4084      	lsls	r4, r0
 8000e86:	e750      	b.n	8000d2a <__aeabi_dmul+0x30e>
 8000e88:	f000 fc92 	bl	80017b0 <__clzsi2>
 8000e8c:	0003      	movs	r3, r0
 8000e8e:	001a      	movs	r2, r3
 8000e90:	3215      	adds	r2, #21
 8000e92:	3020      	adds	r0, #32
 8000e94:	2a1c      	cmp	r2, #28
 8000e96:	dc00      	bgt.n	8000e9a <__aeabi_dmul+0x47e>
 8000e98:	e71e      	b.n	8000cd8 <__aeabi_dmul+0x2bc>
 8000e9a:	4656      	mov	r6, sl
 8000e9c:	3b08      	subs	r3, #8
 8000e9e:	2200      	movs	r2, #0
 8000ea0:	409e      	lsls	r6, r3
 8000ea2:	e723      	b.n	8000cec <__aeabi_dmul+0x2d0>
 8000ea4:	9b00      	ldr	r3, [sp, #0]
 8000ea6:	469c      	mov	ip, r3
 8000ea8:	e6e6      	b.n	8000c78 <__aeabi_dmul+0x25c>
 8000eaa:	4912      	ldr	r1, [pc, #72]	; (8000ef4 <__aeabi_dmul+0x4d8>)
 8000eac:	0022      	movs	r2, r4
 8000eae:	4461      	add	r1, ip
 8000eb0:	002e      	movs	r6, r5
 8000eb2:	408d      	lsls	r5, r1
 8000eb4:	408a      	lsls	r2, r1
 8000eb6:	40c6      	lsrs	r6, r0
 8000eb8:	1e69      	subs	r1, r5, #1
 8000eba:	418d      	sbcs	r5, r1
 8000ebc:	4332      	orrs	r2, r6
 8000ebe:	432a      	orrs	r2, r5
 8000ec0:	40c4      	lsrs	r4, r0
 8000ec2:	0753      	lsls	r3, r2, #29
 8000ec4:	d0b6      	beq.n	8000e34 <__aeabi_dmul+0x418>
 8000ec6:	210f      	movs	r1, #15
 8000ec8:	4011      	ands	r1, r2
 8000eca:	2904      	cmp	r1, #4
 8000ecc:	d1ac      	bne.n	8000e28 <__aeabi_dmul+0x40c>
 8000ece:	e7b1      	b.n	8000e34 <__aeabi_dmul+0x418>
 8000ed0:	0765      	lsls	r5, r4, #29
 8000ed2:	0264      	lsls	r4, r4, #9
 8000ed4:	0b24      	lsrs	r4, r4, #12
 8000ed6:	08d2      	lsrs	r2, r2, #3
 8000ed8:	4315      	orrs	r5, r2
 8000eda:	2200      	movs	r2, #0
 8000edc:	e5ff      	b.n	8000ade <__aeabi_dmul+0xc2>
 8000ede:	2280      	movs	r2, #128	; 0x80
 8000ee0:	0312      	lsls	r2, r2, #12
 8000ee2:	4314      	orrs	r4, r2
 8000ee4:	0324      	lsls	r4, r4, #12
 8000ee6:	4a01      	ldr	r2, [pc, #4]	; (8000eec <__aeabi_dmul+0x4d0>)
 8000ee8:	0b24      	lsrs	r4, r4, #12
 8000eea:	e5f8      	b.n	8000ade <__aeabi_dmul+0xc2>
 8000eec:	000007ff 	.word	0x000007ff
 8000ef0:	0000043e 	.word	0x0000043e
 8000ef4:	0000041e 	.word	0x0000041e

08000ef8 <__aeabi_dsub>:
 8000ef8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000efa:	4657      	mov	r7, sl
 8000efc:	464e      	mov	r6, r9
 8000efe:	4645      	mov	r5, r8
 8000f00:	46de      	mov	lr, fp
 8000f02:	b5e0      	push	{r5, r6, r7, lr}
 8000f04:	001e      	movs	r6, r3
 8000f06:	0017      	movs	r7, r2
 8000f08:	004a      	lsls	r2, r1, #1
 8000f0a:	030b      	lsls	r3, r1, #12
 8000f0c:	0d52      	lsrs	r2, r2, #21
 8000f0e:	0a5b      	lsrs	r3, r3, #9
 8000f10:	4690      	mov	r8, r2
 8000f12:	0f42      	lsrs	r2, r0, #29
 8000f14:	431a      	orrs	r2, r3
 8000f16:	0fcd      	lsrs	r5, r1, #31
 8000f18:	4ccd      	ldr	r4, [pc, #820]	; (8001250 <__aeabi_dsub+0x358>)
 8000f1a:	0331      	lsls	r1, r6, #12
 8000f1c:	00c3      	lsls	r3, r0, #3
 8000f1e:	4694      	mov	ip, r2
 8000f20:	0070      	lsls	r0, r6, #1
 8000f22:	0f7a      	lsrs	r2, r7, #29
 8000f24:	0a49      	lsrs	r1, r1, #9
 8000f26:	00ff      	lsls	r7, r7, #3
 8000f28:	469a      	mov	sl, r3
 8000f2a:	46b9      	mov	r9, r7
 8000f2c:	0d40      	lsrs	r0, r0, #21
 8000f2e:	0ff6      	lsrs	r6, r6, #31
 8000f30:	4311      	orrs	r1, r2
 8000f32:	42a0      	cmp	r0, r4
 8000f34:	d100      	bne.n	8000f38 <__aeabi_dsub+0x40>
 8000f36:	e0b1      	b.n	800109c <__aeabi_dsub+0x1a4>
 8000f38:	2201      	movs	r2, #1
 8000f3a:	4056      	eors	r6, r2
 8000f3c:	46b3      	mov	fp, r6
 8000f3e:	42b5      	cmp	r5, r6
 8000f40:	d100      	bne.n	8000f44 <__aeabi_dsub+0x4c>
 8000f42:	e088      	b.n	8001056 <__aeabi_dsub+0x15e>
 8000f44:	4642      	mov	r2, r8
 8000f46:	1a12      	subs	r2, r2, r0
 8000f48:	2a00      	cmp	r2, #0
 8000f4a:	dc00      	bgt.n	8000f4e <__aeabi_dsub+0x56>
 8000f4c:	e0ae      	b.n	80010ac <__aeabi_dsub+0x1b4>
 8000f4e:	2800      	cmp	r0, #0
 8000f50:	d100      	bne.n	8000f54 <__aeabi_dsub+0x5c>
 8000f52:	e0c1      	b.n	80010d8 <__aeabi_dsub+0x1e0>
 8000f54:	48be      	ldr	r0, [pc, #760]	; (8001250 <__aeabi_dsub+0x358>)
 8000f56:	4580      	cmp	r8, r0
 8000f58:	d100      	bne.n	8000f5c <__aeabi_dsub+0x64>
 8000f5a:	e151      	b.n	8001200 <__aeabi_dsub+0x308>
 8000f5c:	2080      	movs	r0, #128	; 0x80
 8000f5e:	0400      	lsls	r0, r0, #16
 8000f60:	4301      	orrs	r1, r0
 8000f62:	2a38      	cmp	r2, #56	; 0x38
 8000f64:	dd00      	ble.n	8000f68 <__aeabi_dsub+0x70>
 8000f66:	e17b      	b.n	8001260 <__aeabi_dsub+0x368>
 8000f68:	2a1f      	cmp	r2, #31
 8000f6a:	dd00      	ble.n	8000f6e <__aeabi_dsub+0x76>
 8000f6c:	e1ee      	b.n	800134c <__aeabi_dsub+0x454>
 8000f6e:	2020      	movs	r0, #32
 8000f70:	003e      	movs	r6, r7
 8000f72:	1a80      	subs	r0, r0, r2
 8000f74:	000c      	movs	r4, r1
 8000f76:	40d6      	lsrs	r6, r2
 8000f78:	40d1      	lsrs	r1, r2
 8000f7a:	4087      	lsls	r7, r0
 8000f7c:	4662      	mov	r2, ip
 8000f7e:	4084      	lsls	r4, r0
 8000f80:	1a52      	subs	r2, r2, r1
 8000f82:	1e78      	subs	r0, r7, #1
 8000f84:	4187      	sbcs	r7, r0
 8000f86:	4694      	mov	ip, r2
 8000f88:	4334      	orrs	r4, r6
 8000f8a:	4327      	orrs	r7, r4
 8000f8c:	1bdc      	subs	r4, r3, r7
 8000f8e:	42a3      	cmp	r3, r4
 8000f90:	419b      	sbcs	r3, r3
 8000f92:	4662      	mov	r2, ip
 8000f94:	425b      	negs	r3, r3
 8000f96:	1ad3      	subs	r3, r2, r3
 8000f98:	4699      	mov	r9, r3
 8000f9a:	464b      	mov	r3, r9
 8000f9c:	021b      	lsls	r3, r3, #8
 8000f9e:	d400      	bmi.n	8000fa2 <__aeabi_dsub+0xaa>
 8000fa0:	e118      	b.n	80011d4 <__aeabi_dsub+0x2dc>
 8000fa2:	464b      	mov	r3, r9
 8000fa4:	0258      	lsls	r0, r3, #9
 8000fa6:	0a43      	lsrs	r3, r0, #9
 8000fa8:	4699      	mov	r9, r3
 8000faa:	464b      	mov	r3, r9
 8000fac:	2b00      	cmp	r3, #0
 8000fae:	d100      	bne.n	8000fb2 <__aeabi_dsub+0xba>
 8000fb0:	e137      	b.n	8001222 <__aeabi_dsub+0x32a>
 8000fb2:	4648      	mov	r0, r9
 8000fb4:	f000 fbfc 	bl	80017b0 <__clzsi2>
 8000fb8:	0001      	movs	r1, r0
 8000fba:	3908      	subs	r1, #8
 8000fbc:	2320      	movs	r3, #32
 8000fbe:	0022      	movs	r2, r4
 8000fc0:	4648      	mov	r0, r9
 8000fc2:	1a5b      	subs	r3, r3, r1
 8000fc4:	40da      	lsrs	r2, r3
 8000fc6:	4088      	lsls	r0, r1
 8000fc8:	408c      	lsls	r4, r1
 8000fca:	4643      	mov	r3, r8
 8000fcc:	4310      	orrs	r0, r2
 8000fce:	4588      	cmp	r8, r1
 8000fd0:	dd00      	ble.n	8000fd4 <__aeabi_dsub+0xdc>
 8000fd2:	e136      	b.n	8001242 <__aeabi_dsub+0x34a>
 8000fd4:	1ac9      	subs	r1, r1, r3
 8000fd6:	1c4b      	adds	r3, r1, #1
 8000fd8:	2b1f      	cmp	r3, #31
 8000fda:	dd00      	ble.n	8000fde <__aeabi_dsub+0xe6>
 8000fdc:	e0ea      	b.n	80011b4 <__aeabi_dsub+0x2bc>
 8000fde:	2220      	movs	r2, #32
 8000fe0:	0026      	movs	r6, r4
 8000fe2:	1ad2      	subs	r2, r2, r3
 8000fe4:	0001      	movs	r1, r0
 8000fe6:	4094      	lsls	r4, r2
 8000fe8:	40de      	lsrs	r6, r3
 8000fea:	40d8      	lsrs	r0, r3
 8000fec:	2300      	movs	r3, #0
 8000fee:	4091      	lsls	r1, r2
 8000ff0:	1e62      	subs	r2, r4, #1
 8000ff2:	4194      	sbcs	r4, r2
 8000ff4:	4681      	mov	r9, r0
 8000ff6:	4698      	mov	r8, r3
 8000ff8:	4331      	orrs	r1, r6
 8000ffa:	430c      	orrs	r4, r1
 8000ffc:	0763      	lsls	r3, r4, #29
 8000ffe:	d009      	beq.n	8001014 <__aeabi_dsub+0x11c>
 8001000:	230f      	movs	r3, #15
 8001002:	4023      	ands	r3, r4
 8001004:	2b04      	cmp	r3, #4
 8001006:	d005      	beq.n	8001014 <__aeabi_dsub+0x11c>
 8001008:	1d23      	adds	r3, r4, #4
 800100a:	42a3      	cmp	r3, r4
 800100c:	41a4      	sbcs	r4, r4
 800100e:	4264      	negs	r4, r4
 8001010:	44a1      	add	r9, r4
 8001012:	001c      	movs	r4, r3
 8001014:	464b      	mov	r3, r9
 8001016:	021b      	lsls	r3, r3, #8
 8001018:	d400      	bmi.n	800101c <__aeabi_dsub+0x124>
 800101a:	e0de      	b.n	80011da <__aeabi_dsub+0x2e2>
 800101c:	4641      	mov	r1, r8
 800101e:	4b8c      	ldr	r3, [pc, #560]	; (8001250 <__aeabi_dsub+0x358>)
 8001020:	3101      	adds	r1, #1
 8001022:	4299      	cmp	r1, r3
 8001024:	d100      	bne.n	8001028 <__aeabi_dsub+0x130>
 8001026:	e0e7      	b.n	80011f8 <__aeabi_dsub+0x300>
 8001028:	464b      	mov	r3, r9
 800102a:	488a      	ldr	r0, [pc, #552]	; (8001254 <__aeabi_dsub+0x35c>)
 800102c:	08e4      	lsrs	r4, r4, #3
 800102e:	4003      	ands	r3, r0
 8001030:	0018      	movs	r0, r3
 8001032:	0549      	lsls	r1, r1, #21
 8001034:	075b      	lsls	r3, r3, #29
 8001036:	0240      	lsls	r0, r0, #9
 8001038:	4323      	orrs	r3, r4
 800103a:	0d4a      	lsrs	r2, r1, #21
 800103c:	0b04      	lsrs	r4, r0, #12
 800103e:	0512      	lsls	r2, r2, #20
 8001040:	07ed      	lsls	r5, r5, #31
 8001042:	4322      	orrs	r2, r4
 8001044:	432a      	orrs	r2, r5
 8001046:	0018      	movs	r0, r3
 8001048:	0011      	movs	r1, r2
 800104a:	bcf0      	pop	{r4, r5, r6, r7}
 800104c:	46bb      	mov	fp, r7
 800104e:	46b2      	mov	sl, r6
 8001050:	46a9      	mov	r9, r5
 8001052:	46a0      	mov	r8, r4
 8001054:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001056:	4642      	mov	r2, r8
 8001058:	1a12      	subs	r2, r2, r0
 800105a:	2a00      	cmp	r2, #0
 800105c:	dd52      	ble.n	8001104 <__aeabi_dsub+0x20c>
 800105e:	2800      	cmp	r0, #0
 8001060:	d100      	bne.n	8001064 <__aeabi_dsub+0x16c>
 8001062:	e09c      	b.n	800119e <__aeabi_dsub+0x2a6>
 8001064:	45a0      	cmp	r8, r4
 8001066:	d100      	bne.n	800106a <__aeabi_dsub+0x172>
 8001068:	e0ca      	b.n	8001200 <__aeabi_dsub+0x308>
 800106a:	2080      	movs	r0, #128	; 0x80
 800106c:	0400      	lsls	r0, r0, #16
 800106e:	4301      	orrs	r1, r0
 8001070:	2a38      	cmp	r2, #56	; 0x38
 8001072:	dd00      	ble.n	8001076 <__aeabi_dsub+0x17e>
 8001074:	e149      	b.n	800130a <__aeabi_dsub+0x412>
 8001076:	2a1f      	cmp	r2, #31
 8001078:	dc00      	bgt.n	800107c <__aeabi_dsub+0x184>
 800107a:	e197      	b.n	80013ac <__aeabi_dsub+0x4b4>
 800107c:	0010      	movs	r0, r2
 800107e:	000e      	movs	r6, r1
 8001080:	3820      	subs	r0, #32
 8001082:	40c6      	lsrs	r6, r0
 8001084:	2a20      	cmp	r2, #32
 8001086:	d004      	beq.n	8001092 <__aeabi_dsub+0x19a>
 8001088:	2040      	movs	r0, #64	; 0x40
 800108a:	1a82      	subs	r2, r0, r2
 800108c:	4091      	lsls	r1, r2
 800108e:	430f      	orrs	r7, r1
 8001090:	46b9      	mov	r9, r7
 8001092:	464c      	mov	r4, r9
 8001094:	1e62      	subs	r2, r4, #1
 8001096:	4194      	sbcs	r4, r2
 8001098:	4334      	orrs	r4, r6
 800109a:	e13a      	b.n	8001312 <__aeabi_dsub+0x41a>
 800109c:	000a      	movs	r2, r1
 800109e:	433a      	orrs	r2, r7
 80010a0:	d028      	beq.n	80010f4 <__aeabi_dsub+0x1fc>
 80010a2:	46b3      	mov	fp, r6
 80010a4:	42b5      	cmp	r5, r6
 80010a6:	d02b      	beq.n	8001100 <__aeabi_dsub+0x208>
 80010a8:	4a6b      	ldr	r2, [pc, #428]	; (8001258 <__aeabi_dsub+0x360>)
 80010aa:	4442      	add	r2, r8
 80010ac:	2a00      	cmp	r2, #0
 80010ae:	d05d      	beq.n	800116c <__aeabi_dsub+0x274>
 80010b0:	4642      	mov	r2, r8
 80010b2:	4644      	mov	r4, r8
 80010b4:	1a82      	subs	r2, r0, r2
 80010b6:	2c00      	cmp	r4, #0
 80010b8:	d000      	beq.n	80010bc <__aeabi_dsub+0x1c4>
 80010ba:	e0f5      	b.n	80012a8 <__aeabi_dsub+0x3b0>
 80010bc:	4665      	mov	r5, ip
 80010be:	431d      	orrs	r5, r3
 80010c0:	d100      	bne.n	80010c4 <__aeabi_dsub+0x1cc>
 80010c2:	e19c      	b.n	80013fe <__aeabi_dsub+0x506>
 80010c4:	1e55      	subs	r5, r2, #1
 80010c6:	2a01      	cmp	r2, #1
 80010c8:	d100      	bne.n	80010cc <__aeabi_dsub+0x1d4>
 80010ca:	e1fb      	b.n	80014c4 <__aeabi_dsub+0x5cc>
 80010cc:	4c60      	ldr	r4, [pc, #384]	; (8001250 <__aeabi_dsub+0x358>)
 80010ce:	42a2      	cmp	r2, r4
 80010d0:	d100      	bne.n	80010d4 <__aeabi_dsub+0x1dc>
 80010d2:	e1bd      	b.n	8001450 <__aeabi_dsub+0x558>
 80010d4:	002a      	movs	r2, r5
 80010d6:	e0f0      	b.n	80012ba <__aeabi_dsub+0x3c2>
 80010d8:	0008      	movs	r0, r1
 80010da:	4338      	orrs	r0, r7
 80010dc:	d100      	bne.n	80010e0 <__aeabi_dsub+0x1e8>
 80010de:	e0c3      	b.n	8001268 <__aeabi_dsub+0x370>
 80010e0:	1e50      	subs	r0, r2, #1
 80010e2:	2a01      	cmp	r2, #1
 80010e4:	d100      	bne.n	80010e8 <__aeabi_dsub+0x1f0>
 80010e6:	e1a8      	b.n	800143a <__aeabi_dsub+0x542>
 80010e8:	4c59      	ldr	r4, [pc, #356]	; (8001250 <__aeabi_dsub+0x358>)
 80010ea:	42a2      	cmp	r2, r4
 80010ec:	d100      	bne.n	80010f0 <__aeabi_dsub+0x1f8>
 80010ee:	e087      	b.n	8001200 <__aeabi_dsub+0x308>
 80010f0:	0002      	movs	r2, r0
 80010f2:	e736      	b.n	8000f62 <__aeabi_dsub+0x6a>
 80010f4:	2201      	movs	r2, #1
 80010f6:	4056      	eors	r6, r2
 80010f8:	46b3      	mov	fp, r6
 80010fa:	42b5      	cmp	r5, r6
 80010fc:	d000      	beq.n	8001100 <__aeabi_dsub+0x208>
 80010fe:	e721      	b.n	8000f44 <__aeabi_dsub+0x4c>
 8001100:	4a55      	ldr	r2, [pc, #340]	; (8001258 <__aeabi_dsub+0x360>)
 8001102:	4442      	add	r2, r8
 8001104:	2a00      	cmp	r2, #0
 8001106:	d100      	bne.n	800110a <__aeabi_dsub+0x212>
 8001108:	e0b5      	b.n	8001276 <__aeabi_dsub+0x37e>
 800110a:	4642      	mov	r2, r8
 800110c:	4644      	mov	r4, r8
 800110e:	1a82      	subs	r2, r0, r2
 8001110:	2c00      	cmp	r4, #0
 8001112:	d100      	bne.n	8001116 <__aeabi_dsub+0x21e>
 8001114:	e138      	b.n	8001388 <__aeabi_dsub+0x490>
 8001116:	4e4e      	ldr	r6, [pc, #312]	; (8001250 <__aeabi_dsub+0x358>)
 8001118:	42b0      	cmp	r0, r6
 800111a:	d100      	bne.n	800111e <__aeabi_dsub+0x226>
 800111c:	e1de      	b.n	80014dc <__aeabi_dsub+0x5e4>
 800111e:	2680      	movs	r6, #128	; 0x80
 8001120:	4664      	mov	r4, ip
 8001122:	0436      	lsls	r6, r6, #16
 8001124:	4334      	orrs	r4, r6
 8001126:	46a4      	mov	ip, r4
 8001128:	2a38      	cmp	r2, #56	; 0x38
 800112a:	dd00      	ble.n	800112e <__aeabi_dsub+0x236>
 800112c:	e196      	b.n	800145c <__aeabi_dsub+0x564>
 800112e:	2a1f      	cmp	r2, #31
 8001130:	dd00      	ble.n	8001134 <__aeabi_dsub+0x23c>
 8001132:	e224      	b.n	800157e <__aeabi_dsub+0x686>
 8001134:	2620      	movs	r6, #32
 8001136:	1ab4      	subs	r4, r6, r2
 8001138:	46a2      	mov	sl, r4
 800113a:	4664      	mov	r4, ip
 800113c:	4656      	mov	r6, sl
 800113e:	40b4      	lsls	r4, r6
 8001140:	46a1      	mov	r9, r4
 8001142:	001c      	movs	r4, r3
 8001144:	464e      	mov	r6, r9
 8001146:	40d4      	lsrs	r4, r2
 8001148:	4326      	orrs	r6, r4
 800114a:	0034      	movs	r4, r6
 800114c:	4656      	mov	r6, sl
 800114e:	40b3      	lsls	r3, r6
 8001150:	1e5e      	subs	r6, r3, #1
 8001152:	41b3      	sbcs	r3, r6
 8001154:	431c      	orrs	r4, r3
 8001156:	4663      	mov	r3, ip
 8001158:	40d3      	lsrs	r3, r2
 800115a:	18c9      	adds	r1, r1, r3
 800115c:	19e4      	adds	r4, r4, r7
 800115e:	42bc      	cmp	r4, r7
 8001160:	41bf      	sbcs	r7, r7
 8001162:	427f      	negs	r7, r7
 8001164:	46b9      	mov	r9, r7
 8001166:	4680      	mov	r8, r0
 8001168:	4489      	add	r9, r1
 800116a:	e0d8      	b.n	800131e <__aeabi_dsub+0x426>
 800116c:	4640      	mov	r0, r8
 800116e:	4c3b      	ldr	r4, [pc, #236]	; (800125c <__aeabi_dsub+0x364>)
 8001170:	3001      	adds	r0, #1
 8001172:	4220      	tst	r0, r4
 8001174:	d000      	beq.n	8001178 <__aeabi_dsub+0x280>
 8001176:	e0b4      	b.n	80012e2 <__aeabi_dsub+0x3ea>
 8001178:	4640      	mov	r0, r8
 800117a:	2800      	cmp	r0, #0
 800117c:	d000      	beq.n	8001180 <__aeabi_dsub+0x288>
 800117e:	e144      	b.n	800140a <__aeabi_dsub+0x512>
 8001180:	4660      	mov	r0, ip
 8001182:	4318      	orrs	r0, r3
 8001184:	d100      	bne.n	8001188 <__aeabi_dsub+0x290>
 8001186:	e190      	b.n	80014aa <__aeabi_dsub+0x5b2>
 8001188:	0008      	movs	r0, r1
 800118a:	4338      	orrs	r0, r7
 800118c:	d000      	beq.n	8001190 <__aeabi_dsub+0x298>
 800118e:	e1aa      	b.n	80014e6 <__aeabi_dsub+0x5ee>
 8001190:	4661      	mov	r1, ip
 8001192:	08db      	lsrs	r3, r3, #3
 8001194:	0749      	lsls	r1, r1, #29
 8001196:	430b      	orrs	r3, r1
 8001198:	4661      	mov	r1, ip
 800119a:	08cc      	lsrs	r4, r1, #3
 800119c:	e027      	b.n	80011ee <__aeabi_dsub+0x2f6>
 800119e:	0008      	movs	r0, r1
 80011a0:	4338      	orrs	r0, r7
 80011a2:	d061      	beq.n	8001268 <__aeabi_dsub+0x370>
 80011a4:	1e50      	subs	r0, r2, #1
 80011a6:	2a01      	cmp	r2, #1
 80011a8:	d100      	bne.n	80011ac <__aeabi_dsub+0x2b4>
 80011aa:	e139      	b.n	8001420 <__aeabi_dsub+0x528>
 80011ac:	42a2      	cmp	r2, r4
 80011ae:	d027      	beq.n	8001200 <__aeabi_dsub+0x308>
 80011b0:	0002      	movs	r2, r0
 80011b2:	e75d      	b.n	8001070 <__aeabi_dsub+0x178>
 80011b4:	0002      	movs	r2, r0
 80011b6:	391f      	subs	r1, #31
 80011b8:	40ca      	lsrs	r2, r1
 80011ba:	0011      	movs	r1, r2
 80011bc:	2b20      	cmp	r3, #32
 80011be:	d003      	beq.n	80011c8 <__aeabi_dsub+0x2d0>
 80011c0:	2240      	movs	r2, #64	; 0x40
 80011c2:	1ad3      	subs	r3, r2, r3
 80011c4:	4098      	lsls	r0, r3
 80011c6:	4304      	orrs	r4, r0
 80011c8:	1e63      	subs	r3, r4, #1
 80011ca:	419c      	sbcs	r4, r3
 80011cc:	2300      	movs	r3, #0
 80011ce:	4699      	mov	r9, r3
 80011d0:	4698      	mov	r8, r3
 80011d2:	430c      	orrs	r4, r1
 80011d4:	0763      	lsls	r3, r4, #29
 80011d6:	d000      	beq.n	80011da <__aeabi_dsub+0x2e2>
 80011d8:	e712      	b.n	8001000 <__aeabi_dsub+0x108>
 80011da:	464b      	mov	r3, r9
 80011dc:	464a      	mov	r2, r9
 80011de:	08e4      	lsrs	r4, r4, #3
 80011e0:	075b      	lsls	r3, r3, #29
 80011e2:	4323      	orrs	r3, r4
 80011e4:	08d4      	lsrs	r4, r2, #3
 80011e6:	4642      	mov	r2, r8
 80011e8:	4919      	ldr	r1, [pc, #100]	; (8001250 <__aeabi_dsub+0x358>)
 80011ea:	428a      	cmp	r2, r1
 80011ec:	d00e      	beq.n	800120c <__aeabi_dsub+0x314>
 80011ee:	0324      	lsls	r4, r4, #12
 80011f0:	0552      	lsls	r2, r2, #21
 80011f2:	0b24      	lsrs	r4, r4, #12
 80011f4:	0d52      	lsrs	r2, r2, #21
 80011f6:	e722      	b.n	800103e <__aeabi_dsub+0x146>
 80011f8:	000a      	movs	r2, r1
 80011fa:	2400      	movs	r4, #0
 80011fc:	2300      	movs	r3, #0
 80011fe:	e71e      	b.n	800103e <__aeabi_dsub+0x146>
 8001200:	08db      	lsrs	r3, r3, #3
 8001202:	4662      	mov	r2, ip
 8001204:	0752      	lsls	r2, r2, #29
 8001206:	4313      	orrs	r3, r2
 8001208:	4662      	mov	r2, ip
 800120a:	08d4      	lsrs	r4, r2, #3
 800120c:	001a      	movs	r2, r3
 800120e:	4322      	orrs	r2, r4
 8001210:	d100      	bne.n	8001214 <__aeabi_dsub+0x31c>
 8001212:	e1fc      	b.n	800160e <__aeabi_dsub+0x716>
 8001214:	2280      	movs	r2, #128	; 0x80
 8001216:	0312      	lsls	r2, r2, #12
 8001218:	4314      	orrs	r4, r2
 800121a:	0324      	lsls	r4, r4, #12
 800121c:	4a0c      	ldr	r2, [pc, #48]	; (8001250 <__aeabi_dsub+0x358>)
 800121e:	0b24      	lsrs	r4, r4, #12
 8001220:	e70d      	b.n	800103e <__aeabi_dsub+0x146>
 8001222:	0020      	movs	r0, r4
 8001224:	f000 fac4 	bl	80017b0 <__clzsi2>
 8001228:	0001      	movs	r1, r0
 800122a:	3118      	adds	r1, #24
 800122c:	291f      	cmp	r1, #31
 800122e:	dc00      	bgt.n	8001232 <__aeabi_dsub+0x33a>
 8001230:	e6c4      	b.n	8000fbc <__aeabi_dsub+0xc4>
 8001232:	3808      	subs	r0, #8
 8001234:	4084      	lsls	r4, r0
 8001236:	4643      	mov	r3, r8
 8001238:	0020      	movs	r0, r4
 800123a:	2400      	movs	r4, #0
 800123c:	4588      	cmp	r8, r1
 800123e:	dc00      	bgt.n	8001242 <__aeabi_dsub+0x34a>
 8001240:	e6c8      	b.n	8000fd4 <__aeabi_dsub+0xdc>
 8001242:	4a04      	ldr	r2, [pc, #16]	; (8001254 <__aeabi_dsub+0x35c>)
 8001244:	1a5b      	subs	r3, r3, r1
 8001246:	4010      	ands	r0, r2
 8001248:	4698      	mov	r8, r3
 800124a:	4681      	mov	r9, r0
 800124c:	e6d6      	b.n	8000ffc <__aeabi_dsub+0x104>
 800124e:	46c0      	nop			; (mov r8, r8)
 8001250:	000007ff 	.word	0x000007ff
 8001254:	ff7fffff 	.word	0xff7fffff
 8001258:	fffff801 	.word	0xfffff801
 800125c:	000007fe 	.word	0x000007fe
 8001260:	430f      	orrs	r7, r1
 8001262:	1e7a      	subs	r2, r7, #1
 8001264:	4197      	sbcs	r7, r2
 8001266:	e691      	b.n	8000f8c <__aeabi_dsub+0x94>
 8001268:	4661      	mov	r1, ip
 800126a:	08db      	lsrs	r3, r3, #3
 800126c:	0749      	lsls	r1, r1, #29
 800126e:	430b      	orrs	r3, r1
 8001270:	4661      	mov	r1, ip
 8001272:	08cc      	lsrs	r4, r1, #3
 8001274:	e7b8      	b.n	80011e8 <__aeabi_dsub+0x2f0>
 8001276:	4640      	mov	r0, r8
 8001278:	4cd3      	ldr	r4, [pc, #844]	; (80015c8 <__aeabi_dsub+0x6d0>)
 800127a:	3001      	adds	r0, #1
 800127c:	4220      	tst	r0, r4
 800127e:	d000      	beq.n	8001282 <__aeabi_dsub+0x38a>
 8001280:	e0a2      	b.n	80013c8 <__aeabi_dsub+0x4d0>
 8001282:	4640      	mov	r0, r8
 8001284:	2800      	cmp	r0, #0
 8001286:	d000      	beq.n	800128a <__aeabi_dsub+0x392>
 8001288:	e101      	b.n	800148e <__aeabi_dsub+0x596>
 800128a:	4660      	mov	r0, ip
 800128c:	4318      	orrs	r0, r3
 800128e:	d100      	bne.n	8001292 <__aeabi_dsub+0x39a>
 8001290:	e15e      	b.n	8001550 <__aeabi_dsub+0x658>
 8001292:	0008      	movs	r0, r1
 8001294:	4338      	orrs	r0, r7
 8001296:	d000      	beq.n	800129a <__aeabi_dsub+0x3a2>
 8001298:	e15f      	b.n	800155a <__aeabi_dsub+0x662>
 800129a:	4661      	mov	r1, ip
 800129c:	08db      	lsrs	r3, r3, #3
 800129e:	0749      	lsls	r1, r1, #29
 80012a0:	430b      	orrs	r3, r1
 80012a2:	4661      	mov	r1, ip
 80012a4:	08cc      	lsrs	r4, r1, #3
 80012a6:	e7a2      	b.n	80011ee <__aeabi_dsub+0x2f6>
 80012a8:	4dc8      	ldr	r5, [pc, #800]	; (80015cc <__aeabi_dsub+0x6d4>)
 80012aa:	42a8      	cmp	r0, r5
 80012ac:	d100      	bne.n	80012b0 <__aeabi_dsub+0x3b8>
 80012ae:	e0cf      	b.n	8001450 <__aeabi_dsub+0x558>
 80012b0:	2580      	movs	r5, #128	; 0x80
 80012b2:	4664      	mov	r4, ip
 80012b4:	042d      	lsls	r5, r5, #16
 80012b6:	432c      	orrs	r4, r5
 80012b8:	46a4      	mov	ip, r4
 80012ba:	2a38      	cmp	r2, #56	; 0x38
 80012bc:	dc56      	bgt.n	800136c <__aeabi_dsub+0x474>
 80012be:	2a1f      	cmp	r2, #31
 80012c0:	dd00      	ble.n	80012c4 <__aeabi_dsub+0x3cc>
 80012c2:	e0d1      	b.n	8001468 <__aeabi_dsub+0x570>
 80012c4:	2520      	movs	r5, #32
 80012c6:	001e      	movs	r6, r3
 80012c8:	1aad      	subs	r5, r5, r2
 80012ca:	4664      	mov	r4, ip
 80012cc:	40ab      	lsls	r3, r5
 80012ce:	40ac      	lsls	r4, r5
 80012d0:	40d6      	lsrs	r6, r2
 80012d2:	1e5d      	subs	r5, r3, #1
 80012d4:	41ab      	sbcs	r3, r5
 80012d6:	4334      	orrs	r4, r6
 80012d8:	4323      	orrs	r3, r4
 80012da:	4664      	mov	r4, ip
 80012dc:	40d4      	lsrs	r4, r2
 80012de:	1b09      	subs	r1, r1, r4
 80012e0:	e049      	b.n	8001376 <__aeabi_dsub+0x47e>
 80012e2:	4660      	mov	r0, ip
 80012e4:	1bdc      	subs	r4, r3, r7
 80012e6:	1a46      	subs	r6, r0, r1
 80012e8:	42a3      	cmp	r3, r4
 80012ea:	4180      	sbcs	r0, r0
 80012ec:	4240      	negs	r0, r0
 80012ee:	4681      	mov	r9, r0
 80012f0:	0030      	movs	r0, r6
 80012f2:	464e      	mov	r6, r9
 80012f4:	1b80      	subs	r0, r0, r6
 80012f6:	4681      	mov	r9, r0
 80012f8:	0200      	lsls	r0, r0, #8
 80012fa:	d476      	bmi.n	80013ea <__aeabi_dsub+0x4f2>
 80012fc:	464b      	mov	r3, r9
 80012fe:	4323      	orrs	r3, r4
 8001300:	d000      	beq.n	8001304 <__aeabi_dsub+0x40c>
 8001302:	e652      	b.n	8000faa <__aeabi_dsub+0xb2>
 8001304:	2400      	movs	r4, #0
 8001306:	2500      	movs	r5, #0
 8001308:	e771      	b.n	80011ee <__aeabi_dsub+0x2f6>
 800130a:	4339      	orrs	r1, r7
 800130c:	000c      	movs	r4, r1
 800130e:	1e62      	subs	r2, r4, #1
 8001310:	4194      	sbcs	r4, r2
 8001312:	18e4      	adds	r4, r4, r3
 8001314:	429c      	cmp	r4, r3
 8001316:	419b      	sbcs	r3, r3
 8001318:	425b      	negs	r3, r3
 800131a:	4463      	add	r3, ip
 800131c:	4699      	mov	r9, r3
 800131e:	464b      	mov	r3, r9
 8001320:	021b      	lsls	r3, r3, #8
 8001322:	d400      	bmi.n	8001326 <__aeabi_dsub+0x42e>
 8001324:	e756      	b.n	80011d4 <__aeabi_dsub+0x2dc>
 8001326:	2301      	movs	r3, #1
 8001328:	469c      	mov	ip, r3
 800132a:	4ba8      	ldr	r3, [pc, #672]	; (80015cc <__aeabi_dsub+0x6d4>)
 800132c:	44e0      	add	r8, ip
 800132e:	4598      	cmp	r8, r3
 8001330:	d038      	beq.n	80013a4 <__aeabi_dsub+0x4ac>
 8001332:	464b      	mov	r3, r9
 8001334:	48a6      	ldr	r0, [pc, #664]	; (80015d0 <__aeabi_dsub+0x6d8>)
 8001336:	2201      	movs	r2, #1
 8001338:	4003      	ands	r3, r0
 800133a:	0018      	movs	r0, r3
 800133c:	0863      	lsrs	r3, r4, #1
 800133e:	4014      	ands	r4, r2
 8001340:	431c      	orrs	r4, r3
 8001342:	07c3      	lsls	r3, r0, #31
 8001344:	431c      	orrs	r4, r3
 8001346:	0843      	lsrs	r3, r0, #1
 8001348:	4699      	mov	r9, r3
 800134a:	e657      	b.n	8000ffc <__aeabi_dsub+0x104>
 800134c:	0010      	movs	r0, r2
 800134e:	000e      	movs	r6, r1
 8001350:	3820      	subs	r0, #32
 8001352:	40c6      	lsrs	r6, r0
 8001354:	2a20      	cmp	r2, #32
 8001356:	d004      	beq.n	8001362 <__aeabi_dsub+0x46a>
 8001358:	2040      	movs	r0, #64	; 0x40
 800135a:	1a82      	subs	r2, r0, r2
 800135c:	4091      	lsls	r1, r2
 800135e:	430f      	orrs	r7, r1
 8001360:	46b9      	mov	r9, r7
 8001362:	464f      	mov	r7, r9
 8001364:	1e7a      	subs	r2, r7, #1
 8001366:	4197      	sbcs	r7, r2
 8001368:	4337      	orrs	r7, r6
 800136a:	e60f      	b.n	8000f8c <__aeabi_dsub+0x94>
 800136c:	4662      	mov	r2, ip
 800136e:	431a      	orrs	r2, r3
 8001370:	0013      	movs	r3, r2
 8001372:	1e5a      	subs	r2, r3, #1
 8001374:	4193      	sbcs	r3, r2
 8001376:	1afc      	subs	r4, r7, r3
 8001378:	42a7      	cmp	r7, r4
 800137a:	41bf      	sbcs	r7, r7
 800137c:	427f      	negs	r7, r7
 800137e:	1bcb      	subs	r3, r1, r7
 8001380:	4699      	mov	r9, r3
 8001382:	465d      	mov	r5, fp
 8001384:	4680      	mov	r8, r0
 8001386:	e608      	b.n	8000f9a <__aeabi_dsub+0xa2>
 8001388:	4666      	mov	r6, ip
 800138a:	431e      	orrs	r6, r3
 800138c:	d100      	bne.n	8001390 <__aeabi_dsub+0x498>
 800138e:	e0be      	b.n	800150e <__aeabi_dsub+0x616>
 8001390:	1e56      	subs	r6, r2, #1
 8001392:	2a01      	cmp	r2, #1
 8001394:	d100      	bne.n	8001398 <__aeabi_dsub+0x4a0>
 8001396:	e109      	b.n	80015ac <__aeabi_dsub+0x6b4>
 8001398:	4c8c      	ldr	r4, [pc, #560]	; (80015cc <__aeabi_dsub+0x6d4>)
 800139a:	42a2      	cmp	r2, r4
 800139c:	d100      	bne.n	80013a0 <__aeabi_dsub+0x4a8>
 800139e:	e119      	b.n	80015d4 <__aeabi_dsub+0x6dc>
 80013a0:	0032      	movs	r2, r6
 80013a2:	e6c1      	b.n	8001128 <__aeabi_dsub+0x230>
 80013a4:	4642      	mov	r2, r8
 80013a6:	2400      	movs	r4, #0
 80013a8:	2300      	movs	r3, #0
 80013aa:	e648      	b.n	800103e <__aeabi_dsub+0x146>
 80013ac:	2020      	movs	r0, #32
 80013ae:	000c      	movs	r4, r1
 80013b0:	1a80      	subs	r0, r0, r2
 80013b2:	003e      	movs	r6, r7
 80013b4:	4087      	lsls	r7, r0
 80013b6:	4084      	lsls	r4, r0
 80013b8:	40d6      	lsrs	r6, r2
 80013ba:	1e78      	subs	r0, r7, #1
 80013bc:	4187      	sbcs	r7, r0
 80013be:	40d1      	lsrs	r1, r2
 80013c0:	4334      	orrs	r4, r6
 80013c2:	433c      	orrs	r4, r7
 80013c4:	448c      	add	ip, r1
 80013c6:	e7a4      	b.n	8001312 <__aeabi_dsub+0x41a>
 80013c8:	4a80      	ldr	r2, [pc, #512]	; (80015cc <__aeabi_dsub+0x6d4>)
 80013ca:	4290      	cmp	r0, r2
 80013cc:	d100      	bne.n	80013d0 <__aeabi_dsub+0x4d8>
 80013ce:	e0e9      	b.n	80015a4 <__aeabi_dsub+0x6ac>
 80013d0:	19df      	adds	r7, r3, r7
 80013d2:	429f      	cmp	r7, r3
 80013d4:	419b      	sbcs	r3, r3
 80013d6:	4461      	add	r1, ip
 80013d8:	425b      	negs	r3, r3
 80013da:	18c9      	adds	r1, r1, r3
 80013dc:	07cc      	lsls	r4, r1, #31
 80013de:	087f      	lsrs	r7, r7, #1
 80013e0:	084b      	lsrs	r3, r1, #1
 80013e2:	4699      	mov	r9, r3
 80013e4:	4680      	mov	r8, r0
 80013e6:	433c      	orrs	r4, r7
 80013e8:	e6f4      	b.n	80011d4 <__aeabi_dsub+0x2dc>
 80013ea:	1afc      	subs	r4, r7, r3
 80013ec:	42a7      	cmp	r7, r4
 80013ee:	41bf      	sbcs	r7, r7
 80013f0:	4663      	mov	r3, ip
 80013f2:	427f      	negs	r7, r7
 80013f4:	1ac9      	subs	r1, r1, r3
 80013f6:	1bcb      	subs	r3, r1, r7
 80013f8:	4699      	mov	r9, r3
 80013fa:	465d      	mov	r5, fp
 80013fc:	e5d5      	b.n	8000faa <__aeabi_dsub+0xb2>
 80013fe:	08ff      	lsrs	r7, r7, #3
 8001400:	074b      	lsls	r3, r1, #29
 8001402:	465d      	mov	r5, fp
 8001404:	433b      	orrs	r3, r7
 8001406:	08cc      	lsrs	r4, r1, #3
 8001408:	e6ee      	b.n	80011e8 <__aeabi_dsub+0x2f0>
 800140a:	4662      	mov	r2, ip
 800140c:	431a      	orrs	r2, r3
 800140e:	d000      	beq.n	8001412 <__aeabi_dsub+0x51a>
 8001410:	e082      	b.n	8001518 <__aeabi_dsub+0x620>
 8001412:	000b      	movs	r3, r1
 8001414:	433b      	orrs	r3, r7
 8001416:	d11b      	bne.n	8001450 <__aeabi_dsub+0x558>
 8001418:	2480      	movs	r4, #128	; 0x80
 800141a:	2500      	movs	r5, #0
 800141c:	0324      	lsls	r4, r4, #12
 800141e:	e6f9      	b.n	8001214 <__aeabi_dsub+0x31c>
 8001420:	19dc      	adds	r4, r3, r7
 8001422:	429c      	cmp	r4, r3
 8001424:	419b      	sbcs	r3, r3
 8001426:	4461      	add	r1, ip
 8001428:	4689      	mov	r9, r1
 800142a:	425b      	negs	r3, r3
 800142c:	4499      	add	r9, r3
 800142e:	464b      	mov	r3, r9
 8001430:	021b      	lsls	r3, r3, #8
 8001432:	d444      	bmi.n	80014be <__aeabi_dsub+0x5c6>
 8001434:	2301      	movs	r3, #1
 8001436:	4698      	mov	r8, r3
 8001438:	e6cc      	b.n	80011d4 <__aeabi_dsub+0x2dc>
 800143a:	1bdc      	subs	r4, r3, r7
 800143c:	4662      	mov	r2, ip
 800143e:	42a3      	cmp	r3, r4
 8001440:	419b      	sbcs	r3, r3
 8001442:	1a51      	subs	r1, r2, r1
 8001444:	425b      	negs	r3, r3
 8001446:	1acb      	subs	r3, r1, r3
 8001448:	4699      	mov	r9, r3
 800144a:	2301      	movs	r3, #1
 800144c:	4698      	mov	r8, r3
 800144e:	e5a4      	b.n	8000f9a <__aeabi_dsub+0xa2>
 8001450:	08ff      	lsrs	r7, r7, #3
 8001452:	074b      	lsls	r3, r1, #29
 8001454:	465d      	mov	r5, fp
 8001456:	433b      	orrs	r3, r7
 8001458:	08cc      	lsrs	r4, r1, #3
 800145a:	e6d7      	b.n	800120c <__aeabi_dsub+0x314>
 800145c:	4662      	mov	r2, ip
 800145e:	431a      	orrs	r2, r3
 8001460:	0014      	movs	r4, r2
 8001462:	1e63      	subs	r3, r4, #1
 8001464:	419c      	sbcs	r4, r3
 8001466:	e679      	b.n	800115c <__aeabi_dsub+0x264>
 8001468:	0015      	movs	r5, r2
 800146a:	4664      	mov	r4, ip
 800146c:	3d20      	subs	r5, #32
 800146e:	40ec      	lsrs	r4, r5
 8001470:	46a0      	mov	r8, r4
 8001472:	2a20      	cmp	r2, #32
 8001474:	d005      	beq.n	8001482 <__aeabi_dsub+0x58a>
 8001476:	2540      	movs	r5, #64	; 0x40
 8001478:	4664      	mov	r4, ip
 800147a:	1aaa      	subs	r2, r5, r2
 800147c:	4094      	lsls	r4, r2
 800147e:	4323      	orrs	r3, r4
 8001480:	469a      	mov	sl, r3
 8001482:	4654      	mov	r4, sl
 8001484:	1e63      	subs	r3, r4, #1
 8001486:	419c      	sbcs	r4, r3
 8001488:	4643      	mov	r3, r8
 800148a:	4323      	orrs	r3, r4
 800148c:	e773      	b.n	8001376 <__aeabi_dsub+0x47e>
 800148e:	4662      	mov	r2, ip
 8001490:	431a      	orrs	r2, r3
 8001492:	d023      	beq.n	80014dc <__aeabi_dsub+0x5e4>
 8001494:	000a      	movs	r2, r1
 8001496:	433a      	orrs	r2, r7
 8001498:	d000      	beq.n	800149c <__aeabi_dsub+0x5a4>
 800149a:	e0a0      	b.n	80015de <__aeabi_dsub+0x6e6>
 800149c:	4662      	mov	r2, ip
 800149e:	08db      	lsrs	r3, r3, #3
 80014a0:	0752      	lsls	r2, r2, #29
 80014a2:	4313      	orrs	r3, r2
 80014a4:	4662      	mov	r2, ip
 80014a6:	08d4      	lsrs	r4, r2, #3
 80014a8:	e6b0      	b.n	800120c <__aeabi_dsub+0x314>
 80014aa:	000b      	movs	r3, r1
 80014ac:	433b      	orrs	r3, r7
 80014ae:	d100      	bne.n	80014b2 <__aeabi_dsub+0x5ba>
 80014b0:	e728      	b.n	8001304 <__aeabi_dsub+0x40c>
 80014b2:	08ff      	lsrs	r7, r7, #3
 80014b4:	074b      	lsls	r3, r1, #29
 80014b6:	465d      	mov	r5, fp
 80014b8:	433b      	orrs	r3, r7
 80014ba:	08cc      	lsrs	r4, r1, #3
 80014bc:	e697      	b.n	80011ee <__aeabi_dsub+0x2f6>
 80014be:	2302      	movs	r3, #2
 80014c0:	4698      	mov	r8, r3
 80014c2:	e736      	b.n	8001332 <__aeabi_dsub+0x43a>
 80014c4:	1afc      	subs	r4, r7, r3
 80014c6:	42a7      	cmp	r7, r4
 80014c8:	41bf      	sbcs	r7, r7
 80014ca:	4663      	mov	r3, ip
 80014cc:	427f      	negs	r7, r7
 80014ce:	1ac9      	subs	r1, r1, r3
 80014d0:	1bcb      	subs	r3, r1, r7
 80014d2:	4699      	mov	r9, r3
 80014d4:	2301      	movs	r3, #1
 80014d6:	465d      	mov	r5, fp
 80014d8:	4698      	mov	r8, r3
 80014da:	e55e      	b.n	8000f9a <__aeabi_dsub+0xa2>
 80014dc:	074b      	lsls	r3, r1, #29
 80014de:	08ff      	lsrs	r7, r7, #3
 80014e0:	433b      	orrs	r3, r7
 80014e2:	08cc      	lsrs	r4, r1, #3
 80014e4:	e692      	b.n	800120c <__aeabi_dsub+0x314>
 80014e6:	1bdc      	subs	r4, r3, r7
 80014e8:	4660      	mov	r0, ip
 80014ea:	42a3      	cmp	r3, r4
 80014ec:	41b6      	sbcs	r6, r6
 80014ee:	1a40      	subs	r0, r0, r1
 80014f0:	4276      	negs	r6, r6
 80014f2:	1b80      	subs	r0, r0, r6
 80014f4:	4681      	mov	r9, r0
 80014f6:	0200      	lsls	r0, r0, #8
 80014f8:	d560      	bpl.n	80015bc <__aeabi_dsub+0x6c4>
 80014fa:	1afc      	subs	r4, r7, r3
 80014fc:	42a7      	cmp	r7, r4
 80014fe:	41bf      	sbcs	r7, r7
 8001500:	4663      	mov	r3, ip
 8001502:	427f      	negs	r7, r7
 8001504:	1ac9      	subs	r1, r1, r3
 8001506:	1bcb      	subs	r3, r1, r7
 8001508:	4699      	mov	r9, r3
 800150a:	465d      	mov	r5, fp
 800150c:	e576      	b.n	8000ffc <__aeabi_dsub+0x104>
 800150e:	08ff      	lsrs	r7, r7, #3
 8001510:	074b      	lsls	r3, r1, #29
 8001512:	433b      	orrs	r3, r7
 8001514:	08cc      	lsrs	r4, r1, #3
 8001516:	e667      	b.n	80011e8 <__aeabi_dsub+0x2f0>
 8001518:	000a      	movs	r2, r1
 800151a:	08db      	lsrs	r3, r3, #3
 800151c:	433a      	orrs	r2, r7
 800151e:	d100      	bne.n	8001522 <__aeabi_dsub+0x62a>
 8001520:	e66f      	b.n	8001202 <__aeabi_dsub+0x30a>
 8001522:	4662      	mov	r2, ip
 8001524:	0752      	lsls	r2, r2, #29
 8001526:	4313      	orrs	r3, r2
 8001528:	4662      	mov	r2, ip
 800152a:	08d4      	lsrs	r4, r2, #3
 800152c:	2280      	movs	r2, #128	; 0x80
 800152e:	0312      	lsls	r2, r2, #12
 8001530:	4214      	tst	r4, r2
 8001532:	d007      	beq.n	8001544 <__aeabi_dsub+0x64c>
 8001534:	08c8      	lsrs	r0, r1, #3
 8001536:	4210      	tst	r0, r2
 8001538:	d104      	bne.n	8001544 <__aeabi_dsub+0x64c>
 800153a:	465d      	mov	r5, fp
 800153c:	0004      	movs	r4, r0
 800153e:	08fb      	lsrs	r3, r7, #3
 8001540:	0749      	lsls	r1, r1, #29
 8001542:	430b      	orrs	r3, r1
 8001544:	0f5a      	lsrs	r2, r3, #29
 8001546:	00db      	lsls	r3, r3, #3
 8001548:	08db      	lsrs	r3, r3, #3
 800154a:	0752      	lsls	r2, r2, #29
 800154c:	4313      	orrs	r3, r2
 800154e:	e65d      	b.n	800120c <__aeabi_dsub+0x314>
 8001550:	074b      	lsls	r3, r1, #29
 8001552:	08ff      	lsrs	r7, r7, #3
 8001554:	433b      	orrs	r3, r7
 8001556:	08cc      	lsrs	r4, r1, #3
 8001558:	e649      	b.n	80011ee <__aeabi_dsub+0x2f6>
 800155a:	19dc      	adds	r4, r3, r7
 800155c:	429c      	cmp	r4, r3
 800155e:	419b      	sbcs	r3, r3
 8001560:	4461      	add	r1, ip
 8001562:	4689      	mov	r9, r1
 8001564:	425b      	negs	r3, r3
 8001566:	4499      	add	r9, r3
 8001568:	464b      	mov	r3, r9
 800156a:	021b      	lsls	r3, r3, #8
 800156c:	d400      	bmi.n	8001570 <__aeabi_dsub+0x678>
 800156e:	e631      	b.n	80011d4 <__aeabi_dsub+0x2dc>
 8001570:	464a      	mov	r2, r9
 8001572:	4b17      	ldr	r3, [pc, #92]	; (80015d0 <__aeabi_dsub+0x6d8>)
 8001574:	401a      	ands	r2, r3
 8001576:	2301      	movs	r3, #1
 8001578:	4691      	mov	r9, r2
 800157a:	4698      	mov	r8, r3
 800157c:	e62a      	b.n	80011d4 <__aeabi_dsub+0x2dc>
 800157e:	0016      	movs	r6, r2
 8001580:	4664      	mov	r4, ip
 8001582:	3e20      	subs	r6, #32
 8001584:	40f4      	lsrs	r4, r6
 8001586:	46a0      	mov	r8, r4
 8001588:	2a20      	cmp	r2, #32
 800158a:	d005      	beq.n	8001598 <__aeabi_dsub+0x6a0>
 800158c:	2640      	movs	r6, #64	; 0x40
 800158e:	4664      	mov	r4, ip
 8001590:	1ab2      	subs	r2, r6, r2
 8001592:	4094      	lsls	r4, r2
 8001594:	4323      	orrs	r3, r4
 8001596:	469a      	mov	sl, r3
 8001598:	4654      	mov	r4, sl
 800159a:	1e63      	subs	r3, r4, #1
 800159c:	419c      	sbcs	r4, r3
 800159e:	4643      	mov	r3, r8
 80015a0:	431c      	orrs	r4, r3
 80015a2:	e5db      	b.n	800115c <__aeabi_dsub+0x264>
 80015a4:	0002      	movs	r2, r0
 80015a6:	2400      	movs	r4, #0
 80015a8:	2300      	movs	r3, #0
 80015aa:	e548      	b.n	800103e <__aeabi_dsub+0x146>
 80015ac:	19dc      	adds	r4, r3, r7
 80015ae:	42bc      	cmp	r4, r7
 80015b0:	41bf      	sbcs	r7, r7
 80015b2:	4461      	add	r1, ip
 80015b4:	4689      	mov	r9, r1
 80015b6:	427f      	negs	r7, r7
 80015b8:	44b9      	add	r9, r7
 80015ba:	e738      	b.n	800142e <__aeabi_dsub+0x536>
 80015bc:	464b      	mov	r3, r9
 80015be:	4323      	orrs	r3, r4
 80015c0:	d100      	bne.n	80015c4 <__aeabi_dsub+0x6cc>
 80015c2:	e69f      	b.n	8001304 <__aeabi_dsub+0x40c>
 80015c4:	e606      	b.n	80011d4 <__aeabi_dsub+0x2dc>
 80015c6:	46c0      	nop			; (mov r8, r8)
 80015c8:	000007fe 	.word	0x000007fe
 80015cc:	000007ff 	.word	0x000007ff
 80015d0:	ff7fffff 	.word	0xff7fffff
 80015d4:	08ff      	lsrs	r7, r7, #3
 80015d6:	074b      	lsls	r3, r1, #29
 80015d8:	433b      	orrs	r3, r7
 80015da:	08cc      	lsrs	r4, r1, #3
 80015dc:	e616      	b.n	800120c <__aeabi_dsub+0x314>
 80015de:	4662      	mov	r2, ip
 80015e0:	08db      	lsrs	r3, r3, #3
 80015e2:	0752      	lsls	r2, r2, #29
 80015e4:	4313      	orrs	r3, r2
 80015e6:	4662      	mov	r2, ip
 80015e8:	08d4      	lsrs	r4, r2, #3
 80015ea:	2280      	movs	r2, #128	; 0x80
 80015ec:	0312      	lsls	r2, r2, #12
 80015ee:	4214      	tst	r4, r2
 80015f0:	d007      	beq.n	8001602 <__aeabi_dsub+0x70a>
 80015f2:	08c8      	lsrs	r0, r1, #3
 80015f4:	4210      	tst	r0, r2
 80015f6:	d104      	bne.n	8001602 <__aeabi_dsub+0x70a>
 80015f8:	465d      	mov	r5, fp
 80015fa:	0004      	movs	r4, r0
 80015fc:	08fb      	lsrs	r3, r7, #3
 80015fe:	0749      	lsls	r1, r1, #29
 8001600:	430b      	orrs	r3, r1
 8001602:	0f5a      	lsrs	r2, r3, #29
 8001604:	00db      	lsls	r3, r3, #3
 8001606:	0752      	lsls	r2, r2, #29
 8001608:	08db      	lsrs	r3, r3, #3
 800160a:	4313      	orrs	r3, r2
 800160c:	e5fe      	b.n	800120c <__aeabi_dsub+0x314>
 800160e:	2300      	movs	r3, #0
 8001610:	4a01      	ldr	r2, [pc, #4]	; (8001618 <__aeabi_dsub+0x720>)
 8001612:	001c      	movs	r4, r3
 8001614:	e513      	b.n	800103e <__aeabi_dsub+0x146>
 8001616:	46c0      	nop			; (mov r8, r8)
 8001618:	000007ff 	.word	0x000007ff

0800161c <__aeabi_d2iz>:
 800161c:	000a      	movs	r2, r1
 800161e:	b530      	push	{r4, r5, lr}
 8001620:	4c13      	ldr	r4, [pc, #76]	; (8001670 <__aeabi_d2iz+0x54>)
 8001622:	0053      	lsls	r3, r2, #1
 8001624:	0309      	lsls	r1, r1, #12
 8001626:	0005      	movs	r5, r0
 8001628:	0b09      	lsrs	r1, r1, #12
 800162a:	2000      	movs	r0, #0
 800162c:	0d5b      	lsrs	r3, r3, #21
 800162e:	0fd2      	lsrs	r2, r2, #31
 8001630:	42a3      	cmp	r3, r4
 8001632:	dd04      	ble.n	800163e <__aeabi_d2iz+0x22>
 8001634:	480f      	ldr	r0, [pc, #60]	; (8001674 <__aeabi_d2iz+0x58>)
 8001636:	4283      	cmp	r3, r0
 8001638:	dd02      	ble.n	8001640 <__aeabi_d2iz+0x24>
 800163a:	4b0f      	ldr	r3, [pc, #60]	; (8001678 <__aeabi_d2iz+0x5c>)
 800163c:	18d0      	adds	r0, r2, r3
 800163e:	bd30      	pop	{r4, r5, pc}
 8001640:	2080      	movs	r0, #128	; 0x80
 8001642:	0340      	lsls	r0, r0, #13
 8001644:	4301      	orrs	r1, r0
 8001646:	480d      	ldr	r0, [pc, #52]	; (800167c <__aeabi_d2iz+0x60>)
 8001648:	1ac0      	subs	r0, r0, r3
 800164a:	281f      	cmp	r0, #31
 800164c:	dd08      	ble.n	8001660 <__aeabi_d2iz+0x44>
 800164e:	480c      	ldr	r0, [pc, #48]	; (8001680 <__aeabi_d2iz+0x64>)
 8001650:	1ac3      	subs	r3, r0, r3
 8001652:	40d9      	lsrs	r1, r3
 8001654:	000b      	movs	r3, r1
 8001656:	4258      	negs	r0, r3
 8001658:	2a00      	cmp	r2, #0
 800165a:	d1f0      	bne.n	800163e <__aeabi_d2iz+0x22>
 800165c:	0018      	movs	r0, r3
 800165e:	e7ee      	b.n	800163e <__aeabi_d2iz+0x22>
 8001660:	4c08      	ldr	r4, [pc, #32]	; (8001684 <__aeabi_d2iz+0x68>)
 8001662:	40c5      	lsrs	r5, r0
 8001664:	46a4      	mov	ip, r4
 8001666:	4463      	add	r3, ip
 8001668:	4099      	lsls	r1, r3
 800166a:	000b      	movs	r3, r1
 800166c:	432b      	orrs	r3, r5
 800166e:	e7f2      	b.n	8001656 <__aeabi_d2iz+0x3a>
 8001670:	000003fe 	.word	0x000003fe
 8001674:	0000041d 	.word	0x0000041d
 8001678:	7fffffff 	.word	0x7fffffff
 800167c:	00000433 	.word	0x00000433
 8001680:	00000413 	.word	0x00000413
 8001684:	fffffbed 	.word	0xfffffbed

08001688 <__aeabi_i2d>:
 8001688:	b570      	push	{r4, r5, r6, lr}
 800168a:	2800      	cmp	r0, #0
 800168c:	d016      	beq.n	80016bc <__aeabi_i2d+0x34>
 800168e:	17c3      	asrs	r3, r0, #31
 8001690:	18c5      	adds	r5, r0, r3
 8001692:	405d      	eors	r5, r3
 8001694:	0fc4      	lsrs	r4, r0, #31
 8001696:	0028      	movs	r0, r5
 8001698:	f000 f88a 	bl	80017b0 <__clzsi2>
 800169c:	4a11      	ldr	r2, [pc, #68]	; (80016e4 <__aeabi_i2d+0x5c>)
 800169e:	1a12      	subs	r2, r2, r0
 80016a0:	280a      	cmp	r0, #10
 80016a2:	dc16      	bgt.n	80016d2 <__aeabi_i2d+0x4a>
 80016a4:	0003      	movs	r3, r0
 80016a6:	002e      	movs	r6, r5
 80016a8:	3315      	adds	r3, #21
 80016aa:	409e      	lsls	r6, r3
 80016ac:	230b      	movs	r3, #11
 80016ae:	1a18      	subs	r0, r3, r0
 80016b0:	40c5      	lsrs	r5, r0
 80016b2:	0552      	lsls	r2, r2, #21
 80016b4:	032d      	lsls	r5, r5, #12
 80016b6:	0b2d      	lsrs	r5, r5, #12
 80016b8:	0d53      	lsrs	r3, r2, #21
 80016ba:	e003      	b.n	80016c4 <__aeabi_i2d+0x3c>
 80016bc:	2400      	movs	r4, #0
 80016be:	2300      	movs	r3, #0
 80016c0:	2500      	movs	r5, #0
 80016c2:	2600      	movs	r6, #0
 80016c4:	051b      	lsls	r3, r3, #20
 80016c6:	432b      	orrs	r3, r5
 80016c8:	07e4      	lsls	r4, r4, #31
 80016ca:	4323      	orrs	r3, r4
 80016cc:	0030      	movs	r0, r6
 80016ce:	0019      	movs	r1, r3
 80016d0:	bd70      	pop	{r4, r5, r6, pc}
 80016d2:	380b      	subs	r0, #11
 80016d4:	4085      	lsls	r5, r0
 80016d6:	0552      	lsls	r2, r2, #21
 80016d8:	032d      	lsls	r5, r5, #12
 80016da:	2600      	movs	r6, #0
 80016dc:	0b2d      	lsrs	r5, r5, #12
 80016de:	0d53      	lsrs	r3, r2, #21
 80016e0:	e7f0      	b.n	80016c4 <__aeabi_i2d+0x3c>
 80016e2:	46c0      	nop			; (mov r8, r8)
 80016e4:	0000041e 	.word	0x0000041e

080016e8 <__aeabi_ui2d>:
 80016e8:	b510      	push	{r4, lr}
 80016ea:	1e04      	subs	r4, r0, #0
 80016ec:	d010      	beq.n	8001710 <__aeabi_ui2d+0x28>
 80016ee:	f000 f85f 	bl	80017b0 <__clzsi2>
 80016f2:	4b0f      	ldr	r3, [pc, #60]	; (8001730 <__aeabi_ui2d+0x48>)
 80016f4:	1a1b      	subs	r3, r3, r0
 80016f6:	280a      	cmp	r0, #10
 80016f8:	dc11      	bgt.n	800171e <__aeabi_ui2d+0x36>
 80016fa:	220b      	movs	r2, #11
 80016fc:	0021      	movs	r1, r4
 80016fe:	1a12      	subs	r2, r2, r0
 8001700:	40d1      	lsrs	r1, r2
 8001702:	3015      	adds	r0, #21
 8001704:	030a      	lsls	r2, r1, #12
 8001706:	055b      	lsls	r3, r3, #21
 8001708:	4084      	lsls	r4, r0
 800170a:	0b12      	lsrs	r2, r2, #12
 800170c:	0d5b      	lsrs	r3, r3, #21
 800170e:	e001      	b.n	8001714 <__aeabi_ui2d+0x2c>
 8001710:	2300      	movs	r3, #0
 8001712:	2200      	movs	r2, #0
 8001714:	051b      	lsls	r3, r3, #20
 8001716:	4313      	orrs	r3, r2
 8001718:	0020      	movs	r0, r4
 800171a:	0019      	movs	r1, r3
 800171c:	bd10      	pop	{r4, pc}
 800171e:	0022      	movs	r2, r4
 8001720:	380b      	subs	r0, #11
 8001722:	4082      	lsls	r2, r0
 8001724:	055b      	lsls	r3, r3, #21
 8001726:	0312      	lsls	r2, r2, #12
 8001728:	2400      	movs	r4, #0
 800172a:	0b12      	lsrs	r2, r2, #12
 800172c:	0d5b      	lsrs	r3, r3, #21
 800172e:	e7f1      	b.n	8001714 <__aeabi_ui2d+0x2c>
 8001730:	0000041e 	.word	0x0000041e

08001734 <__aeabi_cdrcmple>:
 8001734:	4684      	mov	ip, r0
 8001736:	0010      	movs	r0, r2
 8001738:	4662      	mov	r2, ip
 800173a:	468c      	mov	ip, r1
 800173c:	0019      	movs	r1, r3
 800173e:	4663      	mov	r3, ip
 8001740:	e000      	b.n	8001744 <__aeabi_cdcmpeq>
 8001742:	46c0      	nop			; (mov r8, r8)

08001744 <__aeabi_cdcmpeq>:
 8001744:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8001746:	f000 f8f9 	bl	800193c <__ledf2>
 800174a:	2800      	cmp	r0, #0
 800174c:	d401      	bmi.n	8001752 <__aeabi_cdcmpeq+0xe>
 800174e:	2100      	movs	r1, #0
 8001750:	42c8      	cmn	r0, r1
 8001752:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

08001754 <__aeabi_dcmpeq>:
 8001754:	b510      	push	{r4, lr}
 8001756:	f000 f849 	bl	80017ec <__eqdf2>
 800175a:	4240      	negs	r0, r0
 800175c:	3001      	adds	r0, #1
 800175e:	bd10      	pop	{r4, pc}

08001760 <__aeabi_dcmplt>:
 8001760:	b510      	push	{r4, lr}
 8001762:	f000 f8eb 	bl	800193c <__ledf2>
 8001766:	2800      	cmp	r0, #0
 8001768:	db01      	blt.n	800176e <__aeabi_dcmplt+0xe>
 800176a:	2000      	movs	r0, #0
 800176c:	bd10      	pop	{r4, pc}
 800176e:	2001      	movs	r0, #1
 8001770:	bd10      	pop	{r4, pc}
 8001772:	46c0      	nop			; (mov r8, r8)

08001774 <__aeabi_dcmple>:
 8001774:	b510      	push	{r4, lr}
 8001776:	f000 f8e1 	bl	800193c <__ledf2>
 800177a:	2800      	cmp	r0, #0
 800177c:	dd01      	ble.n	8001782 <__aeabi_dcmple+0xe>
 800177e:	2000      	movs	r0, #0
 8001780:	bd10      	pop	{r4, pc}
 8001782:	2001      	movs	r0, #1
 8001784:	bd10      	pop	{r4, pc}
 8001786:	46c0      	nop			; (mov r8, r8)

08001788 <__aeabi_dcmpgt>:
 8001788:	b510      	push	{r4, lr}
 800178a:	f000 f871 	bl	8001870 <__gedf2>
 800178e:	2800      	cmp	r0, #0
 8001790:	dc01      	bgt.n	8001796 <__aeabi_dcmpgt+0xe>
 8001792:	2000      	movs	r0, #0
 8001794:	bd10      	pop	{r4, pc}
 8001796:	2001      	movs	r0, #1
 8001798:	bd10      	pop	{r4, pc}
 800179a:	46c0      	nop			; (mov r8, r8)

0800179c <__aeabi_dcmpge>:
 800179c:	b510      	push	{r4, lr}
 800179e:	f000 f867 	bl	8001870 <__gedf2>
 80017a2:	2800      	cmp	r0, #0
 80017a4:	da01      	bge.n	80017aa <__aeabi_dcmpge+0xe>
 80017a6:	2000      	movs	r0, #0
 80017a8:	bd10      	pop	{r4, pc}
 80017aa:	2001      	movs	r0, #1
 80017ac:	bd10      	pop	{r4, pc}
 80017ae:	46c0      	nop			; (mov r8, r8)

080017b0 <__clzsi2>:
 80017b0:	211c      	movs	r1, #28
 80017b2:	2301      	movs	r3, #1
 80017b4:	041b      	lsls	r3, r3, #16
 80017b6:	4298      	cmp	r0, r3
 80017b8:	d301      	bcc.n	80017be <__clzsi2+0xe>
 80017ba:	0c00      	lsrs	r0, r0, #16
 80017bc:	3910      	subs	r1, #16
 80017be:	0a1b      	lsrs	r3, r3, #8
 80017c0:	4298      	cmp	r0, r3
 80017c2:	d301      	bcc.n	80017c8 <__clzsi2+0x18>
 80017c4:	0a00      	lsrs	r0, r0, #8
 80017c6:	3908      	subs	r1, #8
 80017c8:	091b      	lsrs	r3, r3, #4
 80017ca:	4298      	cmp	r0, r3
 80017cc:	d301      	bcc.n	80017d2 <__clzsi2+0x22>
 80017ce:	0900      	lsrs	r0, r0, #4
 80017d0:	3904      	subs	r1, #4
 80017d2:	a202      	add	r2, pc, #8	; (adr r2, 80017dc <__clzsi2+0x2c>)
 80017d4:	5c10      	ldrb	r0, [r2, r0]
 80017d6:	1840      	adds	r0, r0, r1
 80017d8:	4770      	bx	lr
 80017da:	46c0      	nop			; (mov r8, r8)
 80017dc:	02020304 	.word	0x02020304
 80017e0:	01010101 	.word	0x01010101
	...

080017ec <__eqdf2>:
 80017ec:	b5f0      	push	{r4, r5, r6, r7, lr}
 80017ee:	464e      	mov	r6, r9
 80017f0:	4645      	mov	r5, r8
 80017f2:	46de      	mov	lr, fp
 80017f4:	4657      	mov	r7, sl
 80017f6:	4690      	mov	r8, r2
 80017f8:	b5e0      	push	{r5, r6, r7, lr}
 80017fa:	0017      	movs	r7, r2
 80017fc:	031a      	lsls	r2, r3, #12
 80017fe:	0b12      	lsrs	r2, r2, #12
 8001800:	0005      	movs	r5, r0
 8001802:	4684      	mov	ip, r0
 8001804:	4819      	ldr	r0, [pc, #100]	; (800186c <__eqdf2+0x80>)
 8001806:	030e      	lsls	r6, r1, #12
 8001808:	004c      	lsls	r4, r1, #1
 800180a:	4691      	mov	r9, r2
 800180c:	005a      	lsls	r2, r3, #1
 800180e:	0fdb      	lsrs	r3, r3, #31
 8001810:	469b      	mov	fp, r3
 8001812:	0b36      	lsrs	r6, r6, #12
 8001814:	0d64      	lsrs	r4, r4, #21
 8001816:	0fc9      	lsrs	r1, r1, #31
 8001818:	0d52      	lsrs	r2, r2, #21
 800181a:	4284      	cmp	r4, r0
 800181c:	d019      	beq.n	8001852 <__eqdf2+0x66>
 800181e:	4282      	cmp	r2, r0
 8001820:	d010      	beq.n	8001844 <__eqdf2+0x58>
 8001822:	2001      	movs	r0, #1
 8001824:	4294      	cmp	r4, r2
 8001826:	d10e      	bne.n	8001846 <__eqdf2+0x5a>
 8001828:	454e      	cmp	r6, r9
 800182a:	d10c      	bne.n	8001846 <__eqdf2+0x5a>
 800182c:	2001      	movs	r0, #1
 800182e:	45c4      	cmp	ip, r8
 8001830:	d109      	bne.n	8001846 <__eqdf2+0x5a>
 8001832:	4559      	cmp	r1, fp
 8001834:	d017      	beq.n	8001866 <__eqdf2+0x7a>
 8001836:	2c00      	cmp	r4, #0
 8001838:	d105      	bne.n	8001846 <__eqdf2+0x5a>
 800183a:	0030      	movs	r0, r6
 800183c:	4328      	orrs	r0, r5
 800183e:	1e43      	subs	r3, r0, #1
 8001840:	4198      	sbcs	r0, r3
 8001842:	e000      	b.n	8001846 <__eqdf2+0x5a>
 8001844:	2001      	movs	r0, #1
 8001846:	bcf0      	pop	{r4, r5, r6, r7}
 8001848:	46bb      	mov	fp, r7
 800184a:	46b2      	mov	sl, r6
 800184c:	46a9      	mov	r9, r5
 800184e:	46a0      	mov	r8, r4
 8001850:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001852:	0033      	movs	r3, r6
 8001854:	2001      	movs	r0, #1
 8001856:	432b      	orrs	r3, r5
 8001858:	d1f5      	bne.n	8001846 <__eqdf2+0x5a>
 800185a:	42a2      	cmp	r2, r4
 800185c:	d1f3      	bne.n	8001846 <__eqdf2+0x5a>
 800185e:	464b      	mov	r3, r9
 8001860:	433b      	orrs	r3, r7
 8001862:	d1f0      	bne.n	8001846 <__eqdf2+0x5a>
 8001864:	e7e2      	b.n	800182c <__eqdf2+0x40>
 8001866:	2000      	movs	r0, #0
 8001868:	e7ed      	b.n	8001846 <__eqdf2+0x5a>
 800186a:	46c0      	nop			; (mov r8, r8)
 800186c:	000007ff 	.word	0x000007ff

08001870 <__gedf2>:
 8001870:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001872:	4647      	mov	r7, r8
 8001874:	46ce      	mov	lr, r9
 8001876:	0004      	movs	r4, r0
 8001878:	0018      	movs	r0, r3
 800187a:	0016      	movs	r6, r2
 800187c:	031b      	lsls	r3, r3, #12
 800187e:	0b1b      	lsrs	r3, r3, #12
 8001880:	4d2d      	ldr	r5, [pc, #180]	; (8001938 <__gedf2+0xc8>)
 8001882:	004a      	lsls	r2, r1, #1
 8001884:	4699      	mov	r9, r3
 8001886:	b580      	push	{r7, lr}
 8001888:	0043      	lsls	r3, r0, #1
 800188a:	030f      	lsls	r7, r1, #12
 800188c:	46a4      	mov	ip, r4
 800188e:	46b0      	mov	r8, r6
 8001890:	0b3f      	lsrs	r7, r7, #12
 8001892:	0d52      	lsrs	r2, r2, #21
 8001894:	0fc9      	lsrs	r1, r1, #31
 8001896:	0d5b      	lsrs	r3, r3, #21
 8001898:	0fc0      	lsrs	r0, r0, #31
 800189a:	42aa      	cmp	r2, r5
 800189c:	d021      	beq.n	80018e2 <__gedf2+0x72>
 800189e:	42ab      	cmp	r3, r5
 80018a0:	d013      	beq.n	80018ca <__gedf2+0x5a>
 80018a2:	2a00      	cmp	r2, #0
 80018a4:	d122      	bne.n	80018ec <__gedf2+0x7c>
 80018a6:	433c      	orrs	r4, r7
 80018a8:	2b00      	cmp	r3, #0
 80018aa:	d102      	bne.n	80018b2 <__gedf2+0x42>
 80018ac:	464d      	mov	r5, r9
 80018ae:	432e      	orrs	r6, r5
 80018b0:	d022      	beq.n	80018f8 <__gedf2+0x88>
 80018b2:	2c00      	cmp	r4, #0
 80018b4:	d010      	beq.n	80018d8 <__gedf2+0x68>
 80018b6:	4281      	cmp	r1, r0
 80018b8:	d022      	beq.n	8001900 <__gedf2+0x90>
 80018ba:	2002      	movs	r0, #2
 80018bc:	3901      	subs	r1, #1
 80018be:	4008      	ands	r0, r1
 80018c0:	3801      	subs	r0, #1
 80018c2:	bcc0      	pop	{r6, r7}
 80018c4:	46b9      	mov	r9, r7
 80018c6:	46b0      	mov	r8, r6
 80018c8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80018ca:	464d      	mov	r5, r9
 80018cc:	432e      	orrs	r6, r5
 80018ce:	d129      	bne.n	8001924 <__gedf2+0xb4>
 80018d0:	2a00      	cmp	r2, #0
 80018d2:	d1f0      	bne.n	80018b6 <__gedf2+0x46>
 80018d4:	433c      	orrs	r4, r7
 80018d6:	d1ee      	bne.n	80018b6 <__gedf2+0x46>
 80018d8:	2800      	cmp	r0, #0
 80018da:	d1f2      	bne.n	80018c2 <__gedf2+0x52>
 80018dc:	2001      	movs	r0, #1
 80018de:	4240      	negs	r0, r0
 80018e0:	e7ef      	b.n	80018c2 <__gedf2+0x52>
 80018e2:	003d      	movs	r5, r7
 80018e4:	4325      	orrs	r5, r4
 80018e6:	d11d      	bne.n	8001924 <__gedf2+0xb4>
 80018e8:	4293      	cmp	r3, r2
 80018ea:	d0ee      	beq.n	80018ca <__gedf2+0x5a>
 80018ec:	2b00      	cmp	r3, #0
 80018ee:	d1e2      	bne.n	80018b6 <__gedf2+0x46>
 80018f0:	464c      	mov	r4, r9
 80018f2:	4326      	orrs	r6, r4
 80018f4:	d1df      	bne.n	80018b6 <__gedf2+0x46>
 80018f6:	e7e0      	b.n	80018ba <__gedf2+0x4a>
 80018f8:	2000      	movs	r0, #0
 80018fa:	2c00      	cmp	r4, #0
 80018fc:	d0e1      	beq.n	80018c2 <__gedf2+0x52>
 80018fe:	e7dc      	b.n	80018ba <__gedf2+0x4a>
 8001900:	429a      	cmp	r2, r3
 8001902:	dc0a      	bgt.n	800191a <__gedf2+0xaa>
 8001904:	dbe8      	blt.n	80018d8 <__gedf2+0x68>
 8001906:	454f      	cmp	r7, r9
 8001908:	d8d7      	bhi.n	80018ba <__gedf2+0x4a>
 800190a:	d00e      	beq.n	800192a <__gedf2+0xba>
 800190c:	2000      	movs	r0, #0
 800190e:	454f      	cmp	r7, r9
 8001910:	d2d7      	bcs.n	80018c2 <__gedf2+0x52>
 8001912:	2900      	cmp	r1, #0
 8001914:	d0e2      	beq.n	80018dc <__gedf2+0x6c>
 8001916:	0008      	movs	r0, r1
 8001918:	e7d3      	b.n	80018c2 <__gedf2+0x52>
 800191a:	4243      	negs	r3, r0
 800191c:	4158      	adcs	r0, r3
 800191e:	0040      	lsls	r0, r0, #1
 8001920:	3801      	subs	r0, #1
 8001922:	e7ce      	b.n	80018c2 <__gedf2+0x52>
 8001924:	2002      	movs	r0, #2
 8001926:	4240      	negs	r0, r0
 8001928:	e7cb      	b.n	80018c2 <__gedf2+0x52>
 800192a:	45c4      	cmp	ip, r8
 800192c:	d8c5      	bhi.n	80018ba <__gedf2+0x4a>
 800192e:	2000      	movs	r0, #0
 8001930:	45c4      	cmp	ip, r8
 8001932:	d2c6      	bcs.n	80018c2 <__gedf2+0x52>
 8001934:	e7ed      	b.n	8001912 <__gedf2+0xa2>
 8001936:	46c0      	nop			; (mov r8, r8)
 8001938:	000007ff 	.word	0x000007ff

0800193c <__ledf2>:
 800193c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800193e:	4647      	mov	r7, r8
 8001940:	46ce      	mov	lr, r9
 8001942:	0004      	movs	r4, r0
 8001944:	0018      	movs	r0, r3
 8001946:	0016      	movs	r6, r2
 8001948:	031b      	lsls	r3, r3, #12
 800194a:	0b1b      	lsrs	r3, r3, #12
 800194c:	4d2c      	ldr	r5, [pc, #176]	; (8001a00 <__ledf2+0xc4>)
 800194e:	004a      	lsls	r2, r1, #1
 8001950:	4699      	mov	r9, r3
 8001952:	b580      	push	{r7, lr}
 8001954:	0043      	lsls	r3, r0, #1
 8001956:	030f      	lsls	r7, r1, #12
 8001958:	46a4      	mov	ip, r4
 800195a:	46b0      	mov	r8, r6
 800195c:	0b3f      	lsrs	r7, r7, #12
 800195e:	0d52      	lsrs	r2, r2, #21
 8001960:	0fc9      	lsrs	r1, r1, #31
 8001962:	0d5b      	lsrs	r3, r3, #21
 8001964:	0fc0      	lsrs	r0, r0, #31
 8001966:	42aa      	cmp	r2, r5
 8001968:	d00d      	beq.n	8001986 <__ledf2+0x4a>
 800196a:	42ab      	cmp	r3, r5
 800196c:	d010      	beq.n	8001990 <__ledf2+0x54>
 800196e:	2a00      	cmp	r2, #0
 8001970:	d127      	bne.n	80019c2 <__ledf2+0x86>
 8001972:	433c      	orrs	r4, r7
 8001974:	2b00      	cmp	r3, #0
 8001976:	d111      	bne.n	800199c <__ledf2+0x60>
 8001978:	464d      	mov	r5, r9
 800197a:	432e      	orrs	r6, r5
 800197c:	d10e      	bne.n	800199c <__ledf2+0x60>
 800197e:	2000      	movs	r0, #0
 8001980:	2c00      	cmp	r4, #0
 8001982:	d015      	beq.n	80019b0 <__ledf2+0x74>
 8001984:	e00e      	b.n	80019a4 <__ledf2+0x68>
 8001986:	003d      	movs	r5, r7
 8001988:	4325      	orrs	r5, r4
 800198a:	d110      	bne.n	80019ae <__ledf2+0x72>
 800198c:	4293      	cmp	r3, r2
 800198e:	d118      	bne.n	80019c2 <__ledf2+0x86>
 8001990:	464d      	mov	r5, r9
 8001992:	432e      	orrs	r6, r5
 8001994:	d10b      	bne.n	80019ae <__ledf2+0x72>
 8001996:	2a00      	cmp	r2, #0
 8001998:	d102      	bne.n	80019a0 <__ledf2+0x64>
 800199a:	433c      	orrs	r4, r7
 800199c:	2c00      	cmp	r4, #0
 800199e:	d00b      	beq.n	80019b8 <__ledf2+0x7c>
 80019a0:	4281      	cmp	r1, r0
 80019a2:	d014      	beq.n	80019ce <__ledf2+0x92>
 80019a4:	2002      	movs	r0, #2
 80019a6:	3901      	subs	r1, #1
 80019a8:	4008      	ands	r0, r1
 80019aa:	3801      	subs	r0, #1
 80019ac:	e000      	b.n	80019b0 <__ledf2+0x74>
 80019ae:	2002      	movs	r0, #2
 80019b0:	bcc0      	pop	{r6, r7}
 80019b2:	46b9      	mov	r9, r7
 80019b4:	46b0      	mov	r8, r6
 80019b6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80019b8:	2800      	cmp	r0, #0
 80019ba:	d1f9      	bne.n	80019b0 <__ledf2+0x74>
 80019bc:	2001      	movs	r0, #1
 80019be:	4240      	negs	r0, r0
 80019c0:	e7f6      	b.n	80019b0 <__ledf2+0x74>
 80019c2:	2b00      	cmp	r3, #0
 80019c4:	d1ec      	bne.n	80019a0 <__ledf2+0x64>
 80019c6:	464c      	mov	r4, r9
 80019c8:	4326      	orrs	r6, r4
 80019ca:	d1e9      	bne.n	80019a0 <__ledf2+0x64>
 80019cc:	e7ea      	b.n	80019a4 <__ledf2+0x68>
 80019ce:	429a      	cmp	r2, r3
 80019d0:	dd04      	ble.n	80019dc <__ledf2+0xa0>
 80019d2:	4243      	negs	r3, r0
 80019d4:	4158      	adcs	r0, r3
 80019d6:	0040      	lsls	r0, r0, #1
 80019d8:	3801      	subs	r0, #1
 80019da:	e7e9      	b.n	80019b0 <__ledf2+0x74>
 80019dc:	429a      	cmp	r2, r3
 80019de:	dbeb      	blt.n	80019b8 <__ledf2+0x7c>
 80019e0:	454f      	cmp	r7, r9
 80019e2:	d8df      	bhi.n	80019a4 <__ledf2+0x68>
 80019e4:	d006      	beq.n	80019f4 <__ledf2+0xb8>
 80019e6:	2000      	movs	r0, #0
 80019e8:	454f      	cmp	r7, r9
 80019ea:	d2e1      	bcs.n	80019b0 <__ledf2+0x74>
 80019ec:	2900      	cmp	r1, #0
 80019ee:	d0e5      	beq.n	80019bc <__ledf2+0x80>
 80019f0:	0008      	movs	r0, r1
 80019f2:	e7dd      	b.n	80019b0 <__ledf2+0x74>
 80019f4:	45c4      	cmp	ip, r8
 80019f6:	d8d5      	bhi.n	80019a4 <__ledf2+0x68>
 80019f8:	2000      	movs	r0, #0
 80019fa:	45c4      	cmp	ip, r8
 80019fc:	d2d8      	bcs.n	80019b0 <__ledf2+0x74>
 80019fe:	e7f5      	b.n	80019ec <__ledf2+0xb0>
 8001a00:	000007ff 	.word	0x000007ff

08001a04 <__aeabi_dadd>:
 8001a04:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001a06:	464f      	mov	r7, r9
 8001a08:	4646      	mov	r6, r8
 8001a0a:	46d6      	mov	lr, sl
 8001a0c:	000d      	movs	r5, r1
 8001a0e:	0004      	movs	r4, r0
 8001a10:	b5c0      	push	{r6, r7, lr}
 8001a12:	001f      	movs	r7, r3
 8001a14:	0011      	movs	r1, r2
 8001a16:	0328      	lsls	r0, r5, #12
 8001a18:	0f62      	lsrs	r2, r4, #29
 8001a1a:	0a40      	lsrs	r0, r0, #9
 8001a1c:	4310      	orrs	r0, r2
 8001a1e:	007a      	lsls	r2, r7, #1
 8001a20:	0d52      	lsrs	r2, r2, #21
 8001a22:	00e3      	lsls	r3, r4, #3
 8001a24:	033c      	lsls	r4, r7, #12
 8001a26:	4691      	mov	r9, r2
 8001a28:	0a64      	lsrs	r4, r4, #9
 8001a2a:	0ffa      	lsrs	r2, r7, #31
 8001a2c:	0f4f      	lsrs	r7, r1, #29
 8001a2e:	006e      	lsls	r6, r5, #1
 8001a30:	4327      	orrs	r7, r4
 8001a32:	4692      	mov	sl, r2
 8001a34:	46b8      	mov	r8, r7
 8001a36:	0d76      	lsrs	r6, r6, #21
 8001a38:	0fed      	lsrs	r5, r5, #31
 8001a3a:	00c9      	lsls	r1, r1, #3
 8001a3c:	4295      	cmp	r5, r2
 8001a3e:	d100      	bne.n	8001a42 <__aeabi_dadd+0x3e>
 8001a40:	e099      	b.n	8001b76 <__aeabi_dadd+0x172>
 8001a42:	464c      	mov	r4, r9
 8001a44:	1b34      	subs	r4, r6, r4
 8001a46:	46a4      	mov	ip, r4
 8001a48:	2c00      	cmp	r4, #0
 8001a4a:	dc00      	bgt.n	8001a4e <__aeabi_dadd+0x4a>
 8001a4c:	e07c      	b.n	8001b48 <__aeabi_dadd+0x144>
 8001a4e:	464a      	mov	r2, r9
 8001a50:	2a00      	cmp	r2, #0
 8001a52:	d100      	bne.n	8001a56 <__aeabi_dadd+0x52>
 8001a54:	e0b8      	b.n	8001bc8 <__aeabi_dadd+0x1c4>
 8001a56:	4ac5      	ldr	r2, [pc, #788]	; (8001d6c <__aeabi_dadd+0x368>)
 8001a58:	4296      	cmp	r6, r2
 8001a5a:	d100      	bne.n	8001a5e <__aeabi_dadd+0x5a>
 8001a5c:	e11c      	b.n	8001c98 <__aeabi_dadd+0x294>
 8001a5e:	2280      	movs	r2, #128	; 0x80
 8001a60:	003c      	movs	r4, r7
 8001a62:	0412      	lsls	r2, r2, #16
 8001a64:	4314      	orrs	r4, r2
 8001a66:	46a0      	mov	r8, r4
 8001a68:	4662      	mov	r2, ip
 8001a6a:	2a38      	cmp	r2, #56	; 0x38
 8001a6c:	dd00      	ble.n	8001a70 <__aeabi_dadd+0x6c>
 8001a6e:	e161      	b.n	8001d34 <__aeabi_dadd+0x330>
 8001a70:	2a1f      	cmp	r2, #31
 8001a72:	dd00      	ble.n	8001a76 <__aeabi_dadd+0x72>
 8001a74:	e1cc      	b.n	8001e10 <__aeabi_dadd+0x40c>
 8001a76:	4664      	mov	r4, ip
 8001a78:	2220      	movs	r2, #32
 8001a7a:	1b12      	subs	r2, r2, r4
 8001a7c:	4644      	mov	r4, r8
 8001a7e:	4094      	lsls	r4, r2
 8001a80:	000f      	movs	r7, r1
 8001a82:	46a1      	mov	r9, r4
 8001a84:	4664      	mov	r4, ip
 8001a86:	4091      	lsls	r1, r2
 8001a88:	40e7      	lsrs	r7, r4
 8001a8a:	464c      	mov	r4, r9
 8001a8c:	1e4a      	subs	r2, r1, #1
 8001a8e:	4191      	sbcs	r1, r2
 8001a90:	433c      	orrs	r4, r7
 8001a92:	4642      	mov	r2, r8
 8001a94:	4321      	orrs	r1, r4
 8001a96:	4664      	mov	r4, ip
 8001a98:	40e2      	lsrs	r2, r4
 8001a9a:	1a80      	subs	r0, r0, r2
 8001a9c:	1a5c      	subs	r4, r3, r1
 8001a9e:	42a3      	cmp	r3, r4
 8001aa0:	419b      	sbcs	r3, r3
 8001aa2:	425f      	negs	r7, r3
 8001aa4:	1bc7      	subs	r7, r0, r7
 8001aa6:	023b      	lsls	r3, r7, #8
 8001aa8:	d400      	bmi.n	8001aac <__aeabi_dadd+0xa8>
 8001aaa:	e0d0      	b.n	8001c4e <__aeabi_dadd+0x24a>
 8001aac:	027f      	lsls	r7, r7, #9
 8001aae:	0a7f      	lsrs	r7, r7, #9
 8001ab0:	2f00      	cmp	r7, #0
 8001ab2:	d100      	bne.n	8001ab6 <__aeabi_dadd+0xb2>
 8001ab4:	e0ff      	b.n	8001cb6 <__aeabi_dadd+0x2b2>
 8001ab6:	0038      	movs	r0, r7
 8001ab8:	f7ff fe7a 	bl	80017b0 <__clzsi2>
 8001abc:	0001      	movs	r1, r0
 8001abe:	3908      	subs	r1, #8
 8001ac0:	2320      	movs	r3, #32
 8001ac2:	0022      	movs	r2, r4
 8001ac4:	1a5b      	subs	r3, r3, r1
 8001ac6:	408f      	lsls	r7, r1
 8001ac8:	40da      	lsrs	r2, r3
 8001aca:	408c      	lsls	r4, r1
 8001acc:	4317      	orrs	r7, r2
 8001ace:	42b1      	cmp	r1, r6
 8001ad0:	da00      	bge.n	8001ad4 <__aeabi_dadd+0xd0>
 8001ad2:	e0ff      	b.n	8001cd4 <__aeabi_dadd+0x2d0>
 8001ad4:	1b89      	subs	r1, r1, r6
 8001ad6:	1c4b      	adds	r3, r1, #1
 8001ad8:	2b1f      	cmp	r3, #31
 8001ada:	dd00      	ble.n	8001ade <__aeabi_dadd+0xda>
 8001adc:	e0a8      	b.n	8001c30 <__aeabi_dadd+0x22c>
 8001ade:	2220      	movs	r2, #32
 8001ae0:	0039      	movs	r1, r7
 8001ae2:	1ad2      	subs	r2, r2, r3
 8001ae4:	0020      	movs	r0, r4
 8001ae6:	4094      	lsls	r4, r2
 8001ae8:	4091      	lsls	r1, r2
 8001aea:	40d8      	lsrs	r0, r3
 8001aec:	1e62      	subs	r2, r4, #1
 8001aee:	4194      	sbcs	r4, r2
 8001af0:	40df      	lsrs	r7, r3
 8001af2:	2600      	movs	r6, #0
 8001af4:	4301      	orrs	r1, r0
 8001af6:	430c      	orrs	r4, r1
 8001af8:	0763      	lsls	r3, r4, #29
 8001afa:	d009      	beq.n	8001b10 <__aeabi_dadd+0x10c>
 8001afc:	230f      	movs	r3, #15
 8001afe:	4023      	ands	r3, r4
 8001b00:	2b04      	cmp	r3, #4
 8001b02:	d005      	beq.n	8001b10 <__aeabi_dadd+0x10c>
 8001b04:	1d23      	adds	r3, r4, #4
 8001b06:	42a3      	cmp	r3, r4
 8001b08:	41a4      	sbcs	r4, r4
 8001b0a:	4264      	negs	r4, r4
 8001b0c:	193f      	adds	r7, r7, r4
 8001b0e:	001c      	movs	r4, r3
 8001b10:	023b      	lsls	r3, r7, #8
 8001b12:	d400      	bmi.n	8001b16 <__aeabi_dadd+0x112>
 8001b14:	e09e      	b.n	8001c54 <__aeabi_dadd+0x250>
 8001b16:	4b95      	ldr	r3, [pc, #596]	; (8001d6c <__aeabi_dadd+0x368>)
 8001b18:	3601      	adds	r6, #1
 8001b1a:	429e      	cmp	r6, r3
 8001b1c:	d100      	bne.n	8001b20 <__aeabi_dadd+0x11c>
 8001b1e:	e0b7      	b.n	8001c90 <__aeabi_dadd+0x28c>
 8001b20:	4a93      	ldr	r2, [pc, #588]	; (8001d70 <__aeabi_dadd+0x36c>)
 8001b22:	08e4      	lsrs	r4, r4, #3
 8001b24:	4017      	ands	r7, r2
 8001b26:	077b      	lsls	r3, r7, #29
 8001b28:	0571      	lsls	r1, r6, #21
 8001b2a:	027f      	lsls	r7, r7, #9
 8001b2c:	4323      	orrs	r3, r4
 8001b2e:	0b3f      	lsrs	r7, r7, #12
 8001b30:	0d4a      	lsrs	r2, r1, #21
 8001b32:	0512      	lsls	r2, r2, #20
 8001b34:	433a      	orrs	r2, r7
 8001b36:	07ed      	lsls	r5, r5, #31
 8001b38:	432a      	orrs	r2, r5
 8001b3a:	0018      	movs	r0, r3
 8001b3c:	0011      	movs	r1, r2
 8001b3e:	bce0      	pop	{r5, r6, r7}
 8001b40:	46ba      	mov	sl, r7
 8001b42:	46b1      	mov	r9, r6
 8001b44:	46a8      	mov	r8, r5
 8001b46:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001b48:	2c00      	cmp	r4, #0
 8001b4a:	d04b      	beq.n	8001be4 <__aeabi_dadd+0x1e0>
 8001b4c:	464c      	mov	r4, r9
 8001b4e:	1ba4      	subs	r4, r4, r6
 8001b50:	46a4      	mov	ip, r4
 8001b52:	2e00      	cmp	r6, #0
 8001b54:	d000      	beq.n	8001b58 <__aeabi_dadd+0x154>
 8001b56:	e123      	b.n	8001da0 <__aeabi_dadd+0x39c>
 8001b58:	0004      	movs	r4, r0
 8001b5a:	431c      	orrs	r4, r3
 8001b5c:	d100      	bne.n	8001b60 <__aeabi_dadd+0x15c>
 8001b5e:	e1af      	b.n	8001ec0 <__aeabi_dadd+0x4bc>
 8001b60:	4662      	mov	r2, ip
 8001b62:	1e54      	subs	r4, r2, #1
 8001b64:	2a01      	cmp	r2, #1
 8001b66:	d100      	bne.n	8001b6a <__aeabi_dadd+0x166>
 8001b68:	e215      	b.n	8001f96 <__aeabi_dadd+0x592>
 8001b6a:	4d80      	ldr	r5, [pc, #512]	; (8001d6c <__aeabi_dadd+0x368>)
 8001b6c:	45ac      	cmp	ip, r5
 8001b6e:	d100      	bne.n	8001b72 <__aeabi_dadd+0x16e>
 8001b70:	e1c8      	b.n	8001f04 <__aeabi_dadd+0x500>
 8001b72:	46a4      	mov	ip, r4
 8001b74:	e11b      	b.n	8001dae <__aeabi_dadd+0x3aa>
 8001b76:	464a      	mov	r2, r9
 8001b78:	1ab2      	subs	r2, r6, r2
 8001b7a:	4694      	mov	ip, r2
 8001b7c:	2a00      	cmp	r2, #0
 8001b7e:	dc00      	bgt.n	8001b82 <__aeabi_dadd+0x17e>
 8001b80:	e0ac      	b.n	8001cdc <__aeabi_dadd+0x2d8>
 8001b82:	464a      	mov	r2, r9
 8001b84:	2a00      	cmp	r2, #0
 8001b86:	d043      	beq.n	8001c10 <__aeabi_dadd+0x20c>
 8001b88:	4a78      	ldr	r2, [pc, #480]	; (8001d6c <__aeabi_dadd+0x368>)
 8001b8a:	4296      	cmp	r6, r2
 8001b8c:	d100      	bne.n	8001b90 <__aeabi_dadd+0x18c>
 8001b8e:	e1af      	b.n	8001ef0 <__aeabi_dadd+0x4ec>
 8001b90:	2280      	movs	r2, #128	; 0x80
 8001b92:	003c      	movs	r4, r7
 8001b94:	0412      	lsls	r2, r2, #16
 8001b96:	4314      	orrs	r4, r2
 8001b98:	46a0      	mov	r8, r4
 8001b9a:	4662      	mov	r2, ip
 8001b9c:	2a38      	cmp	r2, #56	; 0x38
 8001b9e:	dc67      	bgt.n	8001c70 <__aeabi_dadd+0x26c>
 8001ba0:	2a1f      	cmp	r2, #31
 8001ba2:	dc00      	bgt.n	8001ba6 <__aeabi_dadd+0x1a2>
 8001ba4:	e15f      	b.n	8001e66 <__aeabi_dadd+0x462>
 8001ba6:	4647      	mov	r7, r8
 8001ba8:	3a20      	subs	r2, #32
 8001baa:	40d7      	lsrs	r7, r2
 8001bac:	4662      	mov	r2, ip
 8001bae:	2a20      	cmp	r2, #32
 8001bb0:	d005      	beq.n	8001bbe <__aeabi_dadd+0x1ba>
 8001bb2:	4664      	mov	r4, ip
 8001bb4:	2240      	movs	r2, #64	; 0x40
 8001bb6:	1b12      	subs	r2, r2, r4
 8001bb8:	4644      	mov	r4, r8
 8001bba:	4094      	lsls	r4, r2
 8001bbc:	4321      	orrs	r1, r4
 8001bbe:	1e4a      	subs	r2, r1, #1
 8001bc0:	4191      	sbcs	r1, r2
 8001bc2:	000c      	movs	r4, r1
 8001bc4:	433c      	orrs	r4, r7
 8001bc6:	e057      	b.n	8001c78 <__aeabi_dadd+0x274>
 8001bc8:	003a      	movs	r2, r7
 8001bca:	430a      	orrs	r2, r1
 8001bcc:	d100      	bne.n	8001bd0 <__aeabi_dadd+0x1cc>
 8001bce:	e105      	b.n	8001ddc <__aeabi_dadd+0x3d8>
 8001bd0:	0022      	movs	r2, r4
 8001bd2:	3a01      	subs	r2, #1
 8001bd4:	2c01      	cmp	r4, #1
 8001bd6:	d100      	bne.n	8001bda <__aeabi_dadd+0x1d6>
 8001bd8:	e182      	b.n	8001ee0 <__aeabi_dadd+0x4dc>
 8001bda:	4c64      	ldr	r4, [pc, #400]	; (8001d6c <__aeabi_dadd+0x368>)
 8001bdc:	45a4      	cmp	ip, r4
 8001bde:	d05b      	beq.n	8001c98 <__aeabi_dadd+0x294>
 8001be0:	4694      	mov	ip, r2
 8001be2:	e741      	b.n	8001a68 <__aeabi_dadd+0x64>
 8001be4:	4c63      	ldr	r4, [pc, #396]	; (8001d74 <__aeabi_dadd+0x370>)
 8001be6:	1c77      	adds	r7, r6, #1
 8001be8:	4227      	tst	r7, r4
 8001bea:	d000      	beq.n	8001bee <__aeabi_dadd+0x1ea>
 8001bec:	e0c4      	b.n	8001d78 <__aeabi_dadd+0x374>
 8001bee:	0004      	movs	r4, r0
 8001bf0:	431c      	orrs	r4, r3
 8001bf2:	2e00      	cmp	r6, #0
 8001bf4:	d000      	beq.n	8001bf8 <__aeabi_dadd+0x1f4>
 8001bf6:	e169      	b.n	8001ecc <__aeabi_dadd+0x4c8>
 8001bf8:	2c00      	cmp	r4, #0
 8001bfa:	d100      	bne.n	8001bfe <__aeabi_dadd+0x1fa>
 8001bfc:	e1bf      	b.n	8001f7e <__aeabi_dadd+0x57a>
 8001bfe:	4644      	mov	r4, r8
 8001c00:	430c      	orrs	r4, r1
 8001c02:	d000      	beq.n	8001c06 <__aeabi_dadd+0x202>
 8001c04:	e1d0      	b.n	8001fa8 <__aeabi_dadd+0x5a4>
 8001c06:	0742      	lsls	r2, r0, #29
 8001c08:	08db      	lsrs	r3, r3, #3
 8001c0a:	4313      	orrs	r3, r2
 8001c0c:	08c0      	lsrs	r0, r0, #3
 8001c0e:	e029      	b.n	8001c64 <__aeabi_dadd+0x260>
 8001c10:	003a      	movs	r2, r7
 8001c12:	430a      	orrs	r2, r1
 8001c14:	d100      	bne.n	8001c18 <__aeabi_dadd+0x214>
 8001c16:	e170      	b.n	8001efa <__aeabi_dadd+0x4f6>
 8001c18:	4662      	mov	r2, ip
 8001c1a:	4664      	mov	r4, ip
 8001c1c:	3a01      	subs	r2, #1
 8001c1e:	2c01      	cmp	r4, #1
 8001c20:	d100      	bne.n	8001c24 <__aeabi_dadd+0x220>
 8001c22:	e0e0      	b.n	8001de6 <__aeabi_dadd+0x3e2>
 8001c24:	4c51      	ldr	r4, [pc, #324]	; (8001d6c <__aeabi_dadd+0x368>)
 8001c26:	45a4      	cmp	ip, r4
 8001c28:	d100      	bne.n	8001c2c <__aeabi_dadd+0x228>
 8001c2a:	e161      	b.n	8001ef0 <__aeabi_dadd+0x4ec>
 8001c2c:	4694      	mov	ip, r2
 8001c2e:	e7b4      	b.n	8001b9a <__aeabi_dadd+0x196>
 8001c30:	003a      	movs	r2, r7
 8001c32:	391f      	subs	r1, #31
 8001c34:	40ca      	lsrs	r2, r1
 8001c36:	0011      	movs	r1, r2
 8001c38:	2b20      	cmp	r3, #32
 8001c3a:	d003      	beq.n	8001c44 <__aeabi_dadd+0x240>
 8001c3c:	2240      	movs	r2, #64	; 0x40
 8001c3e:	1ad3      	subs	r3, r2, r3
 8001c40:	409f      	lsls	r7, r3
 8001c42:	433c      	orrs	r4, r7
 8001c44:	1e63      	subs	r3, r4, #1
 8001c46:	419c      	sbcs	r4, r3
 8001c48:	2700      	movs	r7, #0
 8001c4a:	2600      	movs	r6, #0
 8001c4c:	430c      	orrs	r4, r1
 8001c4e:	0763      	lsls	r3, r4, #29
 8001c50:	d000      	beq.n	8001c54 <__aeabi_dadd+0x250>
 8001c52:	e753      	b.n	8001afc <__aeabi_dadd+0xf8>
 8001c54:	46b4      	mov	ip, r6
 8001c56:	08e4      	lsrs	r4, r4, #3
 8001c58:	077b      	lsls	r3, r7, #29
 8001c5a:	4323      	orrs	r3, r4
 8001c5c:	08f8      	lsrs	r0, r7, #3
 8001c5e:	4a43      	ldr	r2, [pc, #268]	; (8001d6c <__aeabi_dadd+0x368>)
 8001c60:	4594      	cmp	ip, r2
 8001c62:	d01d      	beq.n	8001ca0 <__aeabi_dadd+0x29c>
 8001c64:	4662      	mov	r2, ip
 8001c66:	0307      	lsls	r7, r0, #12
 8001c68:	0552      	lsls	r2, r2, #21
 8001c6a:	0b3f      	lsrs	r7, r7, #12
 8001c6c:	0d52      	lsrs	r2, r2, #21
 8001c6e:	e760      	b.n	8001b32 <__aeabi_dadd+0x12e>
 8001c70:	4644      	mov	r4, r8
 8001c72:	430c      	orrs	r4, r1
 8001c74:	1e62      	subs	r2, r4, #1
 8001c76:	4194      	sbcs	r4, r2
 8001c78:	18e4      	adds	r4, r4, r3
 8001c7a:	429c      	cmp	r4, r3
 8001c7c:	419b      	sbcs	r3, r3
 8001c7e:	425f      	negs	r7, r3
 8001c80:	183f      	adds	r7, r7, r0
 8001c82:	023b      	lsls	r3, r7, #8
 8001c84:	d5e3      	bpl.n	8001c4e <__aeabi_dadd+0x24a>
 8001c86:	4b39      	ldr	r3, [pc, #228]	; (8001d6c <__aeabi_dadd+0x368>)
 8001c88:	3601      	adds	r6, #1
 8001c8a:	429e      	cmp	r6, r3
 8001c8c:	d000      	beq.n	8001c90 <__aeabi_dadd+0x28c>
 8001c8e:	e0b5      	b.n	8001dfc <__aeabi_dadd+0x3f8>
 8001c90:	0032      	movs	r2, r6
 8001c92:	2700      	movs	r7, #0
 8001c94:	2300      	movs	r3, #0
 8001c96:	e74c      	b.n	8001b32 <__aeabi_dadd+0x12e>
 8001c98:	0742      	lsls	r2, r0, #29
 8001c9a:	08db      	lsrs	r3, r3, #3
 8001c9c:	4313      	orrs	r3, r2
 8001c9e:	08c0      	lsrs	r0, r0, #3
 8001ca0:	001a      	movs	r2, r3
 8001ca2:	4302      	orrs	r2, r0
 8001ca4:	d100      	bne.n	8001ca8 <__aeabi_dadd+0x2a4>
 8001ca6:	e1e1      	b.n	800206c <__aeabi_dadd+0x668>
 8001ca8:	2780      	movs	r7, #128	; 0x80
 8001caa:	033f      	lsls	r7, r7, #12
 8001cac:	4307      	orrs	r7, r0
 8001cae:	033f      	lsls	r7, r7, #12
 8001cb0:	4a2e      	ldr	r2, [pc, #184]	; (8001d6c <__aeabi_dadd+0x368>)
 8001cb2:	0b3f      	lsrs	r7, r7, #12
 8001cb4:	e73d      	b.n	8001b32 <__aeabi_dadd+0x12e>
 8001cb6:	0020      	movs	r0, r4
 8001cb8:	f7ff fd7a 	bl	80017b0 <__clzsi2>
 8001cbc:	0001      	movs	r1, r0
 8001cbe:	3118      	adds	r1, #24
 8001cc0:	291f      	cmp	r1, #31
 8001cc2:	dc00      	bgt.n	8001cc6 <__aeabi_dadd+0x2c2>
 8001cc4:	e6fc      	b.n	8001ac0 <__aeabi_dadd+0xbc>
 8001cc6:	3808      	subs	r0, #8
 8001cc8:	4084      	lsls	r4, r0
 8001cca:	0027      	movs	r7, r4
 8001ccc:	2400      	movs	r4, #0
 8001cce:	42b1      	cmp	r1, r6
 8001cd0:	db00      	blt.n	8001cd4 <__aeabi_dadd+0x2d0>
 8001cd2:	e6ff      	b.n	8001ad4 <__aeabi_dadd+0xd0>
 8001cd4:	4a26      	ldr	r2, [pc, #152]	; (8001d70 <__aeabi_dadd+0x36c>)
 8001cd6:	1a76      	subs	r6, r6, r1
 8001cd8:	4017      	ands	r7, r2
 8001cda:	e70d      	b.n	8001af8 <__aeabi_dadd+0xf4>
 8001cdc:	2a00      	cmp	r2, #0
 8001cde:	d02f      	beq.n	8001d40 <__aeabi_dadd+0x33c>
 8001ce0:	464a      	mov	r2, r9
 8001ce2:	1b92      	subs	r2, r2, r6
 8001ce4:	4694      	mov	ip, r2
 8001ce6:	2e00      	cmp	r6, #0
 8001ce8:	d100      	bne.n	8001cec <__aeabi_dadd+0x2e8>
 8001cea:	e0ad      	b.n	8001e48 <__aeabi_dadd+0x444>
 8001cec:	4a1f      	ldr	r2, [pc, #124]	; (8001d6c <__aeabi_dadd+0x368>)
 8001cee:	4591      	cmp	r9, r2
 8001cf0:	d100      	bne.n	8001cf4 <__aeabi_dadd+0x2f0>
 8001cf2:	e10f      	b.n	8001f14 <__aeabi_dadd+0x510>
 8001cf4:	2280      	movs	r2, #128	; 0x80
 8001cf6:	0412      	lsls	r2, r2, #16
 8001cf8:	4310      	orrs	r0, r2
 8001cfa:	4662      	mov	r2, ip
 8001cfc:	2a38      	cmp	r2, #56	; 0x38
 8001cfe:	dd00      	ble.n	8001d02 <__aeabi_dadd+0x2fe>
 8001d00:	e10f      	b.n	8001f22 <__aeabi_dadd+0x51e>
 8001d02:	2a1f      	cmp	r2, #31
 8001d04:	dd00      	ble.n	8001d08 <__aeabi_dadd+0x304>
 8001d06:	e180      	b.n	800200a <__aeabi_dadd+0x606>
 8001d08:	4664      	mov	r4, ip
 8001d0a:	2220      	movs	r2, #32
 8001d0c:	001e      	movs	r6, r3
 8001d0e:	1b12      	subs	r2, r2, r4
 8001d10:	4667      	mov	r7, ip
 8001d12:	0004      	movs	r4, r0
 8001d14:	4093      	lsls	r3, r2
 8001d16:	4094      	lsls	r4, r2
 8001d18:	40fe      	lsrs	r6, r7
 8001d1a:	1e5a      	subs	r2, r3, #1
 8001d1c:	4193      	sbcs	r3, r2
 8001d1e:	40f8      	lsrs	r0, r7
 8001d20:	4334      	orrs	r4, r6
 8001d22:	431c      	orrs	r4, r3
 8001d24:	4480      	add	r8, r0
 8001d26:	1864      	adds	r4, r4, r1
 8001d28:	428c      	cmp	r4, r1
 8001d2a:	41bf      	sbcs	r7, r7
 8001d2c:	427f      	negs	r7, r7
 8001d2e:	464e      	mov	r6, r9
 8001d30:	4447      	add	r7, r8
 8001d32:	e7a6      	b.n	8001c82 <__aeabi_dadd+0x27e>
 8001d34:	4642      	mov	r2, r8
 8001d36:	430a      	orrs	r2, r1
 8001d38:	0011      	movs	r1, r2
 8001d3a:	1e4a      	subs	r2, r1, #1
 8001d3c:	4191      	sbcs	r1, r2
 8001d3e:	e6ad      	b.n	8001a9c <__aeabi_dadd+0x98>
 8001d40:	4c0c      	ldr	r4, [pc, #48]	; (8001d74 <__aeabi_dadd+0x370>)
 8001d42:	1c72      	adds	r2, r6, #1
 8001d44:	4222      	tst	r2, r4
 8001d46:	d000      	beq.n	8001d4a <__aeabi_dadd+0x346>
 8001d48:	e0a1      	b.n	8001e8e <__aeabi_dadd+0x48a>
 8001d4a:	0002      	movs	r2, r0
 8001d4c:	431a      	orrs	r2, r3
 8001d4e:	2e00      	cmp	r6, #0
 8001d50:	d000      	beq.n	8001d54 <__aeabi_dadd+0x350>
 8001d52:	e0fa      	b.n	8001f4a <__aeabi_dadd+0x546>
 8001d54:	2a00      	cmp	r2, #0
 8001d56:	d100      	bne.n	8001d5a <__aeabi_dadd+0x356>
 8001d58:	e145      	b.n	8001fe6 <__aeabi_dadd+0x5e2>
 8001d5a:	003a      	movs	r2, r7
 8001d5c:	430a      	orrs	r2, r1
 8001d5e:	d000      	beq.n	8001d62 <__aeabi_dadd+0x35e>
 8001d60:	e146      	b.n	8001ff0 <__aeabi_dadd+0x5ec>
 8001d62:	0742      	lsls	r2, r0, #29
 8001d64:	08db      	lsrs	r3, r3, #3
 8001d66:	4313      	orrs	r3, r2
 8001d68:	08c0      	lsrs	r0, r0, #3
 8001d6a:	e77b      	b.n	8001c64 <__aeabi_dadd+0x260>
 8001d6c:	000007ff 	.word	0x000007ff
 8001d70:	ff7fffff 	.word	0xff7fffff
 8001d74:	000007fe 	.word	0x000007fe
 8001d78:	4647      	mov	r7, r8
 8001d7a:	1a5c      	subs	r4, r3, r1
 8001d7c:	1bc2      	subs	r2, r0, r7
 8001d7e:	42a3      	cmp	r3, r4
 8001d80:	41bf      	sbcs	r7, r7
 8001d82:	427f      	negs	r7, r7
 8001d84:	46b9      	mov	r9, r7
 8001d86:	0017      	movs	r7, r2
 8001d88:	464a      	mov	r2, r9
 8001d8a:	1abf      	subs	r7, r7, r2
 8001d8c:	023a      	lsls	r2, r7, #8
 8001d8e:	d500      	bpl.n	8001d92 <__aeabi_dadd+0x38e>
 8001d90:	e08d      	b.n	8001eae <__aeabi_dadd+0x4aa>
 8001d92:	0023      	movs	r3, r4
 8001d94:	433b      	orrs	r3, r7
 8001d96:	d000      	beq.n	8001d9a <__aeabi_dadd+0x396>
 8001d98:	e68a      	b.n	8001ab0 <__aeabi_dadd+0xac>
 8001d9a:	2000      	movs	r0, #0
 8001d9c:	2500      	movs	r5, #0
 8001d9e:	e761      	b.n	8001c64 <__aeabi_dadd+0x260>
 8001da0:	4cb4      	ldr	r4, [pc, #720]	; (8002074 <__aeabi_dadd+0x670>)
 8001da2:	45a1      	cmp	r9, r4
 8001da4:	d100      	bne.n	8001da8 <__aeabi_dadd+0x3a4>
 8001da6:	e0ad      	b.n	8001f04 <__aeabi_dadd+0x500>
 8001da8:	2480      	movs	r4, #128	; 0x80
 8001daa:	0424      	lsls	r4, r4, #16
 8001dac:	4320      	orrs	r0, r4
 8001dae:	4664      	mov	r4, ip
 8001db0:	2c38      	cmp	r4, #56	; 0x38
 8001db2:	dc3d      	bgt.n	8001e30 <__aeabi_dadd+0x42c>
 8001db4:	4662      	mov	r2, ip
 8001db6:	2c1f      	cmp	r4, #31
 8001db8:	dd00      	ble.n	8001dbc <__aeabi_dadd+0x3b8>
 8001dba:	e0b7      	b.n	8001f2c <__aeabi_dadd+0x528>
 8001dbc:	2520      	movs	r5, #32
 8001dbe:	001e      	movs	r6, r3
 8001dc0:	1b2d      	subs	r5, r5, r4
 8001dc2:	0004      	movs	r4, r0
 8001dc4:	40ab      	lsls	r3, r5
 8001dc6:	40ac      	lsls	r4, r5
 8001dc8:	40d6      	lsrs	r6, r2
 8001dca:	40d0      	lsrs	r0, r2
 8001dcc:	4642      	mov	r2, r8
 8001dce:	1e5d      	subs	r5, r3, #1
 8001dd0:	41ab      	sbcs	r3, r5
 8001dd2:	4334      	orrs	r4, r6
 8001dd4:	1a12      	subs	r2, r2, r0
 8001dd6:	4690      	mov	r8, r2
 8001dd8:	4323      	orrs	r3, r4
 8001dda:	e02c      	b.n	8001e36 <__aeabi_dadd+0x432>
 8001ddc:	0742      	lsls	r2, r0, #29
 8001dde:	08db      	lsrs	r3, r3, #3
 8001de0:	4313      	orrs	r3, r2
 8001de2:	08c0      	lsrs	r0, r0, #3
 8001de4:	e73b      	b.n	8001c5e <__aeabi_dadd+0x25a>
 8001de6:	185c      	adds	r4, r3, r1
 8001de8:	429c      	cmp	r4, r3
 8001dea:	419b      	sbcs	r3, r3
 8001dec:	4440      	add	r0, r8
 8001dee:	425b      	negs	r3, r3
 8001df0:	18c7      	adds	r7, r0, r3
 8001df2:	2601      	movs	r6, #1
 8001df4:	023b      	lsls	r3, r7, #8
 8001df6:	d400      	bmi.n	8001dfa <__aeabi_dadd+0x3f6>
 8001df8:	e729      	b.n	8001c4e <__aeabi_dadd+0x24a>
 8001dfa:	2602      	movs	r6, #2
 8001dfc:	4a9e      	ldr	r2, [pc, #632]	; (8002078 <__aeabi_dadd+0x674>)
 8001dfe:	0863      	lsrs	r3, r4, #1
 8001e00:	4017      	ands	r7, r2
 8001e02:	2201      	movs	r2, #1
 8001e04:	4014      	ands	r4, r2
 8001e06:	431c      	orrs	r4, r3
 8001e08:	07fb      	lsls	r3, r7, #31
 8001e0a:	431c      	orrs	r4, r3
 8001e0c:	087f      	lsrs	r7, r7, #1
 8001e0e:	e673      	b.n	8001af8 <__aeabi_dadd+0xf4>
 8001e10:	4644      	mov	r4, r8
 8001e12:	3a20      	subs	r2, #32
 8001e14:	40d4      	lsrs	r4, r2
 8001e16:	4662      	mov	r2, ip
 8001e18:	2a20      	cmp	r2, #32
 8001e1a:	d005      	beq.n	8001e28 <__aeabi_dadd+0x424>
 8001e1c:	4667      	mov	r7, ip
 8001e1e:	2240      	movs	r2, #64	; 0x40
 8001e20:	1bd2      	subs	r2, r2, r7
 8001e22:	4647      	mov	r7, r8
 8001e24:	4097      	lsls	r7, r2
 8001e26:	4339      	orrs	r1, r7
 8001e28:	1e4a      	subs	r2, r1, #1
 8001e2a:	4191      	sbcs	r1, r2
 8001e2c:	4321      	orrs	r1, r4
 8001e2e:	e635      	b.n	8001a9c <__aeabi_dadd+0x98>
 8001e30:	4303      	orrs	r3, r0
 8001e32:	1e58      	subs	r0, r3, #1
 8001e34:	4183      	sbcs	r3, r0
 8001e36:	1acc      	subs	r4, r1, r3
 8001e38:	42a1      	cmp	r1, r4
 8001e3a:	41bf      	sbcs	r7, r7
 8001e3c:	4643      	mov	r3, r8
 8001e3e:	427f      	negs	r7, r7
 8001e40:	4655      	mov	r5, sl
 8001e42:	464e      	mov	r6, r9
 8001e44:	1bdf      	subs	r7, r3, r7
 8001e46:	e62e      	b.n	8001aa6 <__aeabi_dadd+0xa2>
 8001e48:	0002      	movs	r2, r0
 8001e4a:	431a      	orrs	r2, r3
 8001e4c:	d100      	bne.n	8001e50 <__aeabi_dadd+0x44c>
 8001e4e:	e0bd      	b.n	8001fcc <__aeabi_dadd+0x5c8>
 8001e50:	4662      	mov	r2, ip
 8001e52:	4664      	mov	r4, ip
 8001e54:	3a01      	subs	r2, #1
 8001e56:	2c01      	cmp	r4, #1
 8001e58:	d100      	bne.n	8001e5c <__aeabi_dadd+0x458>
 8001e5a:	e0e5      	b.n	8002028 <__aeabi_dadd+0x624>
 8001e5c:	4c85      	ldr	r4, [pc, #532]	; (8002074 <__aeabi_dadd+0x670>)
 8001e5e:	45a4      	cmp	ip, r4
 8001e60:	d058      	beq.n	8001f14 <__aeabi_dadd+0x510>
 8001e62:	4694      	mov	ip, r2
 8001e64:	e749      	b.n	8001cfa <__aeabi_dadd+0x2f6>
 8001e66:	4664      	mov	r4, ip
 8001e68:	2220      	movs	r2, #32
 8001e6a:	1b12      	subs	r2, r2, r4
 8001e6c:	4644      	mov	r4, r8
 8001e6e:	4094      	lsls	r4, r2
 8001e70:	000f      	movs	r7, r1
 8001e72:	46a1      	mov	r9, r4
 8001e74:	4664      	mov	r4, ip
 8001e76:	4091      	lsls	r1, r2
 8001e78:	40e7      	lsrs	r7, r4
 8001e7a:	464c      	mov	r4, r9
 8001e7c:	1e4a      	subs	r2, r1, #1
 8001e7e:	4191      	sbcs	r1, r2
 8001e80:	433c      	orrs	r4, r7
 8001e82:	4642      	mov	r2, r8
 8001e84:	430c      	orrs	r4, r1
 8001e86:	4661      	mov	r1, ip
 8001e88:	40ca      	lsrs	r2, r1
 8001e8a:	1880      	adds	r0, r0, r2
 8001e8c:	e6f4      	b.n	8001c78 <__aeabi_dadd+0x274>
 8001e8e:	4c79      	ldr	r4, [pc, #484]	; (8002074 <__aeabi_dadd+0x670>)
 8001e90:	42a2      	cmp	r2, r4
 8001e92:	d100      	bne.n	8001e96 <__aeabi_dadd+0x492>
 8001e94:	e6fd      	b.n	8001c92 <__aeabi_dadd+0x28e>
 8001e96:	1859      	adds	r1, r3, r1
 8001e98:	4299      	cmp	r1, r3
 8001e9a:	419b      	sbcs	r3, r3
 8001e9c:	4440      	add	r0, r8
 8001e9e:	425f      	negs	r7, r3
 8001ea0:	19c7      	adds	r7, r0, r7
 8001ea2:	07fc      	lsls	r4, r7, #31
 8001ea4:	0849      	lsrs	r1, r1, #1
 8001ea6:	0016      	movs	r6, r2
 8001ea8:	430c      	orrs	r4, r1
 8001eaa:	087f      	lsrs	r7, r7, #1
 8001eac:	e6cf      	b.n	8001c4e <__aeabi_dadd+0x24a>
 8001eae:	1acc      	subs	r4, r1, r3
 8001eb0:	42a1      	cmp	r1, r4
 8001eb2:	41bf      	sbcs	r7, r7
 8001eb4:	4643      	mov	r3, r8
 8001eb6:	427f      	negs	r7, r7
 8001eb8:	1a18      	subs	r0, r3, r0
 8001eba:	4655      	mov	r5, sl
 8001ebc:	1bc7      	subs	r7, r0, r7
 8001ebe:	e5f7      	b.n	8001ab0 <__aeabi_dadd+0xac>
 8001ec0:	08c9      	lsrs	r1, r1, #3
 8001ec2:	077b      	lsls	r3, r7, #29
 8001ec4:	4655      	mov	r5, sl
 8001ec6:	430b      	orrs	r3, r1
 8001ec8:	08f8      	lsrs	r0, r7, #3
 8001eca:	e6c8      	b.n	8001c5e <__aeabi_dadd+0x25a>
 8001ecc:	2c00      	cmp	r4, #0
 8001ece:	d000      	beq.n	8001ed2 <__aeabi_dadd+0x4ce>
 8001ed0:	e081      	b.n	8001fd6 <__aeabi_dadd+0x5d2>
 8001ed2:	4643      	mov	r3, r8
 8001ed4:	430b      	orrs	r3, r1
 8001ed6:	d115      	bne.n	8001f04 <__aeabi_dadd+0x500>
 8001ed8:	2080      	movs	r0, #128	; 0x80
 8001eda:	2500      	movs	r5, #0
 8001edc:	0300      	lsls	r0, r0, #12
 8001ede:	e6e3      	b.n	8001ca8 <__aeabi_dadd+0x2a4>
 8001ee0:	1a5c      	subs	r4, r3, r1
 8001ee2:	42a3      	cmp	r3, r4
 8001ee4:	419b      	sbcs	r3, r3
 8001ee6:	1bc7      	subs	r7, r0, r7
 8001ee8:	425b      	negs	r3, r3
 8001eea:	2601      	movs	r6, #1
 8001eec:	1aff      	subs	r7, r7, r3
 8001eee:	e5da      	b.n	8001aa6 <__aeabi_dadd+0xa2>
 8001ef0:	0742      	lsls	r2, r0, #29
 8001ef2:	08db      	lsrs	r3, r3, #3
 8001ef4:	4313      	orrs	r3, r2
 8001ef6:	08c0      	lsrs	r0, r0, #3
 8001ef8:	e6d2      	b.n	8001ca0 <__aeabi_dadd+0x29c>
 8001efa:	0742      	lsls	r2, r0, #29
 8001efc:	08db      	lsrs	r3, r3, #3
 8001efe:	4313      	orrs	r3, r2
 8001f00:	08c0      	lsrs	r0, r0, #3
 8001f02:	e6ac      	b.n	8001c5e <__aeabi_dadd+0x25a>
 8001f04:	4643      	mov	r3, r8
 8001f06:	4642      	mov	r2, r8
 8001f08:	08c9      	lsrs	r1, r1, #3
 8001f0a:	075b      	lsls	r3, r3, #29
 8001f0c:	4655      	mov	r5, sl
 8001f0e:	430b      	orrs	r3, r1
 8001f10:	08d0      	lsrs	r0, r2, #3
 8001f12:	e6c5      	b.n	8001ca0 <__aeabi_dadd+0x29c>
 8001f14:	4643      	mov	r3, r8
 8001f16:	4642      	mov	r2, r8
 8001f18:	075b      	lsls	r3, r3, #29
 8001f1a:	08c9      	lsrs	r1, r1, #3
 8001f1c:	430b      	orrs	r3, r1
 8001f1e:	08d0      	lsrs	r0, r2, #3
 8001f20:	e6be      	b.n	8001ca0 <__aeabi_dadd+0x29c>
 8001f22:	4303      	orrs	r3, r0
 8001f24:	001c      	movs	r4, r3
 8001f26:	1e63      	subs	r3, r4, #1
 8001f28:	419c      	sbcs	r4, r3
 8001f2a:	e6fc      	b.n	8001d26 <__aeabi_dadd+0x322>
 8001f2c:	0002      	movs	r2, r0
 8001f2e:	3c20      	subs	r4, #32
 8001f30:	40e2      	lsrs	r2, r4
 8001f32:	0014      	movs	r4, r2
 8001f34:	4662      	mov	r2, ip
 8001f36:	2a20      	cmp	r2, #32
 8001f38:	d003      	beq.n	8001f42 <__aeabi_dadd+0x53e>
 8001f3a:	2540      	movs	r5, #64	; 0x40
 8001f3c:	1aad      	subs	r5, r5, r2
 8001f3e:	40a8      	lsls	r0, r5
 8001f40:	4303      	orrs	r3, r0
 8001f42:	1e58      	subs	r0, r3, #1
 8001f44:	4183      	sbcs	r3, r0
 8001f46:	4323      	orrs	r3, r4
 8001f48:	e775      	b.n	8001e36 <__aeabi_dadd+0x432>
 8001f4a:	2a00      	cmp	r2, #0
 8001f4c:	d0e2      	beq.n	8001f14 <__aeabi_dadd+0x510>
 8001f4e:	003a      	movs	r2, r7
 8001f50:	430a      	orrs	r2, r1
 8001f52:	d0cd      	beq.n	8001ef0 <__aeabi_dadd+0x4ec>
 8001f54:	0742      	lsls	r2, r0, #29
 8001f56:	08db      	lsrs	r3, r3, #3
 8001f58:	4313      	orrs	r3, r2
 8001f5a:	2280      	movs	r2, #128	; 0x80
 8001f5c:	08c0      	lsrs	r0, r0, #3
 8001f5e:	0312      	lsls	r2, r2, #12
 8001f60:	4210      	tst	r0, r2
 8001f62:	d006      	beq.n	8001f72 <__aeabi_dadd+0x56e>
 8001f64:	08fc      	lsrs	r4, r7, #3
 8001f66:	4214      	tst	r4, r2
 8001f68:	d103      	bne.n	8001f72 <__aeabi_dadd+0x56e>
 8001f6a:	0020      	movs	r0, r4
 8001f6c:	08cb      	lsrs	r3, r1, #3
 8001f6e:	077a      	lsls	r2, r7, #29
 8001f70:	4313      	orrs	r3, r2
 8001f72:	0f5a      	lsrs	r2, r3, #29
 8001f74:	00db      	lsls	r3, r3, #3
 8001f76:	0752      	lsls	r2, r2, #29
 8001f78:	08db      	lsrs	r3, r3, #3
 8001f7a:	4313      	orrs	r3, r2
 8001f7c:	e690      	b.n	8001ca0 <__aeabi_dadd+0x29c>
 8001f7e:	4643      	mov	r3, r8
 8001f80:	430b      	orrs	r3, r1
 8001f82:	d100      	bne.n	8001f86 <__aeabi_dadd+0x582>
 8001f84:	e709      	b.n	8001d9a <__aeabi_dadd+0x396>
 8001f86:	4643      	mov	r3, r8
 8001f88:	4642      	mov	r2, r8
 8001f8a:	08c9      	lsrs	r1, r1, #3
 8001f8c:	075b      	lsls	r3, r3, #29
 8001f8e:	4655      	mov	r5, sl
 8001f90:	430b      	orrs	r3, r1
 8001f92:	08d0      	lsrs	r0, r2, #3
 8001f94:	e666      	b.n	8001c64 <__aeabi_dadd+0x260>
 8001f96:	1acc      	subs	r4, r1, r3
 8001f98:	42a1      	cmp	r1, r4
 8001f9a:	4189      	sbcs	r1, r1
 8001f9c:	1a3f      	subs	r7, r7, r0
 8001f9e:	4249      	negs	r1, r1
 8001fa0:	4655      	mov	r5, sl
 8001fa2:	2601      	movs	r6, #1
 8001fa4:	1a7f      	subs	r7, r7, r1
 8001fa6:	e57e      	b.n	8001aa6 <__aeabi_dadd+0xa2>
 8001fa8:	4642      	mov	r2, r8
 8001faa:	1a5c      	subs	r4, r3, r1
 8001fac:	1a87      	subs	r7, r0, r2
 8001fae:	42a3      	cmp	r3, r4
 8001fb0:	4192      	sbcs	r2, r2
 8001fb2:	4252      	negs	r2, r2
 8001fb4:	1abf      	subs	r7, r7, r2
 8001fb6:	023a      	lsls	r2, r7, #8
 8001fb8:	d53d      	bpl.n	8002036 <__aeabi_dadd+0x632>
 8001fba:	1acc      	subs	r4, r1, r3
 8001fbc:	42a1      	cmp	r1, r4
 8001fbe:	4189      	sbcs	r1, r1
 8001fc0:	4643      	mov	r3, r8
 8001fc2:	4249      	negs	r1, r1
 8001fc4:	1a1f      	subs	r7, r3, r0
 8001fc6:	4655      	mov	r5, sl
 8001fc8:	1a7f      	subs	r7, r7, r1
 8001fca:	e595      	b.n	8001af8 <__aeabi_dadd+0xf4>
 8001fcc:	077b      	lsls	r3, r7, #29
 8001fce:	08c9      	lsrs	r1, r1, #3
 8001fd0:	430b      	orrs	r3, r1
 8001fd2:	08f8      	lsrs	r0, r7, #3
 8001fd4:	e643      	b.n	8001c5e <__aeabi_dadd+0x25a>
 8001fd6:	4644      	mov	r4, r8
 8001fd8:	08db      	lsrs	r3, r3, #3
 8001fda:	430c      	orrs	r4, r1
 8001fdc:	d130      	bne.n	8002040 <__aeabi_dadd+0x63c>
 8001fde:	0742      	lsls	r2, r0, #29
 8001fe0:	4313      	orrs	r3, r2
 8001fe2:	08c0      	lsrs	r0, r0, #3
 8001fe4:	e65c      	b.n	8001ca0 <__aeabi_dadd+0x29c>
 8001fe6:	077b      	lsls	r3, r7, #29
 8001fe8:	08c9      	lsrs	r1, r1, #3
 8001fea:	430b      	orrs	r3, r1
 8001fec:	08f8      	lsrs	r0, r7, #3
 8001fee:	e639      	b.n	8001c64 <__aeabi_dadd+0x260>
 8001ff0:	185c      	adds	r4, r3, r1
 8001ff2:	429c      	cmp	r4, r3
 8001ff4:	419b      	sbcs	r3, r3
 8001ff6:	4440      	add	r0, r8
 8001ff8:	425b      	negs	r3, r3
 8001ffa:	18c7      	adds	r7, r0, r3
 8001ffc:	023b      	lsls	r3, r7, #8
 8001ffe:	d400      	bmi.n	8002002 <__aeabi_dadd+0x5fe>
 8002000:	e625      	b.n	8001c4e <__aeabi_dadd+0x24a>
 8002002:	4b1d      	ldr	r3, [pc, #116]	; (8002078 <__aeabi_dadd+0x674>)
 8002004:	2601      	movs	r6, #1
 8002006:	401f      	ands	r7, r3
 8002008:	e621      	b.n	8001c4e <__aeabi_dadd+0x24a>
 800200a:	0004      	movs	r4, r0
 800200c:	3a20      	subs	r2, #32
 800200e:	40d4      	lsrs	r4, r2
 8002010:	4662      	mov	r2, ip
 8002012:	2a20      	cmp	r2, #32
 8002014:	d004      	beq.n	8002020 <__aeabi_dadd+0x61c>
 8002016:	2240      	movs	r2, #64	; 0x40
 8002018:	4666      	mov	r6, ip
 800201a:	1b92      	subs	r2, r2, r6
 800201c:	4090      	lsls	r0, r2
 800201e:	4303      	orrs	r3, r0
 8002020:	1e5a      	subs	r2, r3, #1
 8002022:	4193      	sbcs	r3, r2
 8002024:	431c      	orrs	r4, r3
 8002026:	e67e      	b.n	8001d26 <__aeabi_dadd+0x322>
 8002028:	185c      	adds	r4, r3, r1
 800202a:	428c      	cmp	r4, r1
 800202c:	4189      	sbcs	r1, r1
 800202e:	4440      	add	r0, r8
 8002030:	4249      	negs	r1, r1
 8002032:	1847      	adds	r7, r0, r1
 8002034:	e6dd      	b.n	8001df2 <__aeabi_dadd+0x3ee>
 8002036:	0023      	movs	r3, r4
 8002038:	433b      	orrs	r3, r7
 800203a:	d100      	bne.n	800203e <__aeabi_dadd+0x63a>
 800203c:	e6ad      	b.n	8001d9a <__aeabi_dadd+0x396>
 800203e:	e606      	b.n	8001c4e <__aeabi_dadd+0x24a>
 8002040:	0744      	lsls	r4, r0, #29
 8002042:	4323      	orrs	r3, r4
 8002044:	2480      	movs	r4, #128	; 0x80
 8002046:	08c0      	lsrs	r0, r0, #3
 8002048:	0324      	lsls	r4, r4, #12
 800204a:	4220      	tst	r0, r4
 800204c:	d008      	beq.n	8002060 <__aeabi_dadd+0x65c>
 800204e:	4642      	mov	r2, r8
 8002050:	08d6      	lsrs	r6, r2, #3
 8002052:	4226      	tst	r6, r4
 8002054:	d104      	bne.n	8002060 <__aeabi_dadd+0x65c>
 8002056:	4655      	mov	r5, sl
 8002058:	0030      	movs	r0, r6
 800205a:	08cb      	lsrs	r3, r1, #3
 800205c:	0751      	lsls	r1, r2, #29
 800205e:	430b      	orrs	r3, r1
 8002060:	0f5a      	lsrs	r2, r3, #29
 8002062:	00db      	lsls	r3, r3, #3
 8002064:	08db      	lsrs	r3, r3, #3
 8002066:	0752      	lsls	r2, r2, #29
 8002068:	4313      	orrs	r3, r2
 800206a:	e619      	b.n	8001ca0 <__aeabi_dadd+0x29c>
 800206c:	2300      	movs	r3, #0
 800206e:	4a01      	ldr	r2, [pc, #4]	; (8002074 <__aeabi_dadd+0x670>)
 8002070:	001f      	movs	r7, r3
 8002072:	e55e      	b.n	8001b32 <__aeabi_dadd+0x12e>
 8002074:	000007ff 	.word	0x000007ff
 8002078:	ff7fffff 	.word	0xff7fffff

0800207c <Reset_Handler>:
 800207c:	480d      	ldr	r0, [pc, #52]	; (80020b4 <LoopForever+0x2>)
 800207e:	4685      	mov	sp, r0
 8002080:	480d      	ldr	r0, [pc, #52]	; (80020b8 <LoopForever+0x6>)
 8002082:	490e      	ldr	r1, [pc, #56]	; (80020bc <LoopForever+0xa>)
 8002084:	4a0e      	ldr	r2, [pc, #56]	; (80020c0 <LoopForever+0xe>)
 8002086:	2300      	movs	r3, #0
 8002088:	e002      	b.n	8002090 <LoopCopyDataInit>

0800208a <CopyDataInit>:
 800208a:	58d4      	ldr	r4, [r2, r3]
 800208c:	50c4      	str	r4, [r0, r3]
 800208e:	3304      	adds	r3, #4

08002090 <LoopCopyDataInit>:
 8002090:	18c4      	adds	r4, r0, r3
 8002092:	428c      	cmp	r4, r1
 8002094:	d3f9      	bcc.n	800208a <CopyDataInit>
 8002096:	4a0b      	ldr	r2, [pc, #44]	; (80020c4 <LoopForever+0x12>)
 8002098:	4c0b      	ldr	r4, [pc, #44]	; (80020c8 <LoopForever+0x16>)
 800209a:	2300      	movs	r3, #0
 800209c:	e001      	b.n	80020a2 <LoopFillZerobss>

0800209e <FillZerobss>:
 800209e:	6013      	str	r3, [r2, #0]
 80020a0:	3204      	adds	r2, #4

080020a2 <LoopFillZerobss>:
 80020a2:	42a2      	cmp	r2, r4
 80020a4:	d3fb      	bcc.n	800209e <FillZerobss>
 80020a6:	f001 fdb5 	bl	8003c14 <SystemInit>
 80020aa:	f001 fe09 	bl	8003cc0 <__libc_init_array>
 80020ae:	f001 fcd7 	bl	8003a60 <main>

080020b2 <LoopForever>:
 80020b2:	e7fe      	b.n	80020b2 <LoopForever>
 80020b4:	20002000 	.word	0x20002000
 80020b8:	20000000 	.word	0x20000000
 80020bc:	20000434 	.word	0x20000434
 80020c0:	08005644 	.word	0x08005644
 80020c4:	20000438 	.word	0x20000438
 80020c8:	20000478 	.word	0x20000478

080020cc <ADC1_COMP_IRQHandler>:
 80020cc:	e7fe      	b.n	80020cc <ADC1_COMP_IRQHandler>
	...

080020d0 <NVIC_EnableIRQ>:
 80020d0:	b580      	push	{r7, lr}
 80020d2:	b082      	sub	sp, #8
 80020d4:	af00      	add	r7, sp, #0
 80020d6:	0002      	movs	r2, r0
 80020d8:	1dfb      	adds	r3, r7, #7
 80020da:	701a      	strb	r2, [r3, #0]
 80020dc:	1dfb      	adds	r3, r7, #7
 80020de:	781b      	ldrb	r3, [r3, #0]
 80020e0:	001a      	movs	r2, r3
 80020e2:	231f      	movs	r3, #31
 80020e4:	401a      	ands	r2, r3
 80020e6:	4b04      	ldr	r3, [pc, #16]	; (80020f8 <NVIC_EnableIRQ+0x28>)
 80020e8:	2101      	movs	r1, #1
 80020ea:	4091      	lsls	r1, r2
 80020ec:	000a      	movs	r2, r1
 80020ee:	601a      	str	r2, [r3, #0]
 80020f0:	46c0      	nop			; (mov r8, r8)
 80020f2:	46bd      	mov	sp, r7
 80020f4:	b002      	add	sp, #8
 80020f6:	bd80      	pop	{r7, pc}
 80020f8:	e000e100 	.word	0xe000e100

080020fc <NVIC_SetPriority>:
 80020fc:	b590      	push	{r4, r7, lr}
 80020fe:	b083      	sub	sp, #12
 8002100:	af00      	add	r7, sp, #0
 8002102:	0002      	movs	r2, r0
 8002104:	6039      	str	r1, [r7, #0]
 8002106:	1dfb      	adds	r3, r7, #7
 8002108:	701a      	strb	r2, [r3, #0]
 800210a:	1dfb      	adds	r3, r7, #7
 800210c:	781b      	ldrb	r3, [r3, #0]
 800210e:	2b7f      	cmp	r3, #127	; 0x7f
 8002110:	d932      	bls.n	8002178 <NVIC_SetPriority+0x7c>
 8002112:	4a2f      	ldr	r2, [pc, #188]	; (80021d0 <NVIC_SetPriority+0xd4>)
 8002114:	1dfb      	adds	r3, r7, #7
 8002116:	781b      	ldrb	r3, [r3, #0]
 8002118:	0019      	movs	r1, r3
 800211a:	230f      	movs	r3, #15
 800211c:	400b      	ands	r3, r1
 800211e:	3b08      	subs	r3, #8
 8002120:	089b      	lsrs	r3, r3, #2
 8002122:	3306      	adds	r3, #6
 8002124:	009b      	lsls	r3, r3, #2
 8002126:	18d3      	adds	r3, r2, r3
 8002128:	3304      	adds	r3, #4
 800212a:	681b      	ldr	r3, [r3, #0]
 800212c:	1dfa      	adds	r2, r7, #7
 800212e:	7812      	ldrb	r2, [r2, #0]
 8002130:	0011      	movs	r1, r2
 8002132:	2203      	movs	r2, #3
 8002134:	400a      	ands	r2, r1
 8002136:	00d2      	lsls	r2, r2, #3
 8002138:	21ff      	movs	r1, #255	; 0xff
 800213a:	4091      	lsls	r1, r2
 800213c:	000a      	movs	r2, r1
 800213e:	43d2      	mvns	r2, r2
 8002140:	401a      	ands	r2, r3
 8002142:	0011      	movs	r1, r2
 8002144:	683b      	ldr	r3, [r7, #0]
 8002146:	019b      	lsls	r3, r3, #6
 8002148:	22ff      	movs	r2, #255	; 0xff
 800214a:	401a      	ands	r2, r3
 800214c:	1dfb      	adds	r3, r7, #7
 800214e:	781b      	ldrb	r3, [r3, #0]
 8002150:	0018      	movs	r0, r3
 8002152:	2303      	movs	r3, #3
 8002154:	4003      	ands	r3, r0
 8002156:	00db      	lsls	r3, r3, #3
 8002158:	409a      	lsls	r2, r3
 800215a:	481d      	ldr	r0, [pc, #116]	; (80021d0 <NVIC_SetPriority+0xd4>)
 800215c:	1dfb      	adds	r3, r7, #7
 800215e:	781b      	ldrb	r3, [r3, #0]
 8002160:	001c      	movs	r4, r3
 8002162:	230f      	movs	r3, #15
 8002164:	4023      	ands	r3, r4
 8002166:	3b08      	subs	r3, #8
 8002168:	089b      	lsrs	r3, r3, #2
 800216a:	430a      	orrs	r2, r1
 800216c:	3306      	adds	r3, #6
 800216e:	009b      	lsls	r3, r3, #2
 8002170:	18c3      	adds	r3, r0, r3
 8002172:	3304      	adds	r3, #4
 8002174:	601a      	str	r2, [r3, #0]
 8002176:	e027      	b.n	80021c8 <NVIC_SetPriority+0xcc>
 8002178:	4a16      	ldr	r2, [pc, #88]	; (80021d4 <NVIC_SetPriority+0xd8>)
 800217a:	1dfb      	adds	r3, r7, #7
 800217c:	781b      	ldrb	r3, [r3, #0]
 800217e:	b25b      	sxtb	r3, r3
 8002180:	089b      	lsrs	r3, r3, #2
 8002182:	33c0      	adds	r3, #192	; 0xc0
 8002184:	009b      	lsls	r3, r3, #2
 8002186:	589b      	ldr	r3, [r3, r2]
 8002188:	1dfa      	adds	r2, r7, #7
 800218a:	7812      	ldrb	r2, [r2, #0]
 800218c:	0011      	movs	r1, r2
 800218e:	2203      	movs	r2, #3
 8002190:	400a      	ands	r2, r1
 8002192:	00d2      	lsls	r2, r2, #3
 8002194:	21ff      	movs	r1, #255	; 0xff
 8002196:	4091      	lsls	r1, r2
 8002198:	000a      	movs	r2, r1
 800219a:	43d2      	mvns	r2, r2
 800219c:	401a      	ands	r2, r3
 800219e:	0011      	movs	r1, r2
 80021a0:	683b      	ldr	r3, [r7, #0]
 80021a2:	019b      	lsls	r3, r3, #6
 80021a4:	22ff      	movs	r2, #255	; 0xff
 80021a6:	401a      	ands	r2, r3
 80021a8:	1dfb      	adds	r3, r7, #7
 80021aa:	781b      	ldrb	r3, [r3, #0]
 80021ac:	0018      	movs	r0, r3
 80021ae:	2303      	movs	r3, #3
 80021b0:	4003      	ands	r3, r0
 80021b2:	00db      	lsls	r3, r3, #3
 80021b4:	409a      	lsls	r2, r3
 80021b6:	4807      	ldr	r0, [pc, #28]	; (80021d4 <NVIC_SetPriority+0xd8>)
 80021b8:	1dfb      	adds	r3, r7, #7
 80021ba:	781b      	ldrb	r3, [r3, #0]
 80021bc:	b25b      	sxtb	r3, r3
 80021be:	089b      	lsrs	r3, r3, #2
 80021c0:	430a      	orrs	r2, r1
 80021c2:	33c0      	adds	r3, #192	; 0xc0
 80021c4:	009b      	lsls	r3, r3, #2
 80021c6:	501a      	str	r2, [r3, r0]
 80021c8:	46c0      	nop			; (mov r8, r8)
 80021ca:	46bd      	mov	sp, r7
 80021cc:	b003      	add	sp, #12
 80021ce:	bd90      	pop	{r4, r7, pc}
 80021d0:	e000ed00 	.word	0xe000ed00
 80021d4:	e000e100 	.word	0xe000e100

080021d8 <LL_RCC_HSI_Enable>:
 80021d8:	b580      	push	{r7, lr}
 80021da:	af00      	add	r7, sp, #0
 80021dc:	4b04      	ldr	r3, [pc, #16]	; (80021f0 <LL_RCC_HSI_Enable+0x18>)
 80021de:	681a      	ldr	r2, [r3, #0]
 80021e0:	4b03      	ldr	r3, [pc, #12]	; (80021f0 <LL_RCC_HSI_Enable+0x18>)
 80021e2:	2101      	movs	r1, #1
 80021e4:	430a      	orrs	r2, r1
 80021e6:	601a      	str	r2, [r3, #0]
 80021e8:	46c0      	nop			; (mov r8, r8)
 80021ea:	46bd      	mov	sp, r7
 80021ec:	bd80      	pop	{r7, pc}
 80021ee:	46c0      	nop			; (mov r8, r8)
 80021f0:	40021000 	.word	0x40021000

080021f4 <LL_RCC_HSI_IsReady>:
 80021f4:	b580      	push	{r7, lr}
 80021f6:	af00      	add	r7, sp, #0
 80021f8:	4b05      	ldr	r3, [pc, #20]	; (8002210 <LL_RCC_HSI_IsReady+0x1c>)
 80021fa:	681b      	ldr	r3, [r3, #0]
 80021fc:	2202      	movs	r2, #2
 80021fe:	4013      	ands	r3, r2
 8002200:	3b02      	subs	r3, #2
 8002202:	425a      	negs	r2, r3
 8002204:	4153      	adcs	r3, r2
 8002206:	b2db      	uxtb	r3, r3
 8002208:	0018      	movs	r0, r3
 800220a:	46bd      	mov	sp, r7
 800220c:	bd80      	pop	{r7, pc}
 800220e:	46c0      	nop			; (mov r8, r8)
 8002210:	40021000 	.word	0x40021000

08002214 <LL_RCC_SetSysClkSource>:
 8002214:	b580      	push	{r7, lr}
 8002216:	b082      	sub	sp, #8
 8002218:	af00      	add	r7, sp, #0
 800221a:	6078      	str	r0, [r7, #4]
 800221c:	4b06      	ldr	r3, [pc, #24]	; (8002238 <LL_RCC_SetSysClkSource+0x24>)
 800221e:	685b      	ldr	r3, [r3, #4]
 8002220:	2203      	movs	r2, #3
 8002222:	4393      	bics	r3, r2
 8002224:	0019      	movs	r1, r3
 8002226:	4b04      	ldr	r3, [pc, #16]	; (8002238 <LL_RCC_SetSysClkSource+0x24>)
 8002228:	687a      	ldr	r2, [r7, #4]
 800222a:	430a      	orrs	r2, r1
 800222c:	605a      	str	r2, [r3, #4]
 800222e:	46c0      	nop			; (mov r8, r8)
 8002230:	46bd      	mov	sp, r7
 8002232:	b002      	add	sp, #8
 8002234:	bd80      	pop	{r7, pc}
 8002236:	46c0      	nop			; (mov r8, r8)
 8002238:	40021000 	.word	0x40021000

0800223c <LL_RCC_GetSysClkSource>:
 800223c:	b580      	push	{r7, lr}
 800223e:	af00      	add	r7, sp, #0
 8002240:	4b03      	ldr	r3, [pc, #12]	; (8002250 <LL_RCC_GetSysClkSource+0x14>)
 8002242:	685b      	ldr	r3, [r3, #4]
 8002244:	220c      	movs	r2, #12
 8002246:	4013      	ands	r3, r2
 8002248:	0018      	movs	r0, r3
 800224a:	46bd      	mov	sp, r7
 800224c:	bd80      	pop	{r7, pc}
 800224e:	46c0      	nop			; (mov r8, r8)
 8002250:	40021000 	.word	0x40021000

08002254 <LL_RCC_SetAHBPrescaler>:
 8002254:	b580      	push	{r7, lr}
 8002256:	b082      	sub	sp, #8
 8002258:	af00      	add	r7, sp, #0
 800225a:	6078      	str	r0, [r7, #4]
 800225c:	4b06      	ldr	r3, [pc, #24]	; (8002278 <LL_RCC_SetAHBPrescaler+0x24>)
 800225e:	685b      	ldr	r3, [r3, #4]
 8002260:	22f0      	movs	r2, #240	; 0xf0
 8002262:	4393      	bics	r3, r2
 8002264:	0019      	movs	r1, r3
 8002266:	4b04      	ldr	r3, [pc, #16]	; (8002278 <LL_RCC_SetAHBPrescaler+0x24>)
 8002268:	687a      	ldr	r2, [r7, #4]
 800226a:	430a      	orrs	r2, r1
 800226c:	605a      	str	r2, [r3, #4]
 800226e:	46c0      	nop			; (mov r8, r8)
 8002270:	46bd      	mov	sp, r7
 8002272:	b002      	add	sp, #8
 8002274:	bd80      	pop	{r7, pc}
 8002276:	46c0      	nop			; (mov r8, r8)
 8002278:	40021000 	.word	0x40021000

0800227c <LL_RCC_SetAPB1Prescaler>:
 800227c:	b580      	push	{r7, lr}
 800227e:	b082      	sub	sp, #8
 8002280:	af00      	add	r7, sp, #0
 8002282:	6078      	str	r0, [r7, #4]
 8002284:	4b06      	ldr	r3, [pc, #24]	; (80022a0 <LL_RCC_SetAPB1Prescaler+0x24>)
 8002286:	685b      	ldr	r3, [r3, #4]
 8002288:	4a06      	ldr	r2, [pc, #24]	; (80022a4 <LL_RCC_SetAPB1Prescaler+0x28>)
 800228a:	4013      	ands	r3, r2
 800228c:	0019      	movs	r1, r3
 800228e:	4b04      	ldr	r3, [pc, #16]	; (80022a0 <LL_RCC_SetAPB1Prescaler+0x24>)
 8002290:	687a      	ldr	r2, [r7, #4]
 8002292:	430a      	orrs	r2, r1
 8002294:	605a      	str	r2, [r3, #4]
 8002296:	46c0      	nop			; (mov r8, r8)
 8002298:	46bd      	mov	sp, r7
 800229a:	b002      	add	sp, #8
 800229c:	bd80      	pop	{r7, pc}
 800229e:	46c0      	nop			; (mov r8, r8)
 80022a0:	40021000 	.word	0x40021000
 80022a4:	fffff8ff 	.word	0xfffff8ff

080022a8 <LL_RCC_SetUSARTClockSource>:
 80022a8:	b580      	push	{r7, lr}
 80022aa:	b082      	sub	sp, #8
 80022ac:	af00      	add	r7, sp, #0
 80022ae:	6078      	str	r0, [r7, #4]
 80022b0:	4b09      	ldr	r3, [pc, #36]	; (80022d8 <LL_RCC_SetUSARTClockSource+0x30>)
 80022b2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80022b4:	687a      	ldr	r2, [r7, #4]
 80022b6:	0e12      	lsrs	r2, r2, #24
 80022b8:	2103      	movs	r1, #3
 80022ba:	4091      	lsls	r1, r2
 80022bc:	000a      	movs	r2, r1
 80022be:	43d2      	mvns	r2, r2
 80022c0:	401a      	ands	r2, r3
 80022c2:	0011      	movs	r1, r2
 80022c4:	687b      	ldr	r3, [r7, #4]
 80022c6:	021b      	lsls	r3, r3, #8
 80022c8:	0a1a      	lsrs	r2, r3, #8
 80022ca:	4b03      	ldr	r3, [pc, #12]	; (80022d8 <LL_RCC_SetUSARTClockSource+0x30>)
 80022cc:	430a      	orrs	r2, r1
 80022ce:	631a      	str	r2, [r3, #48]	; 0x30
 80022d0:	46c0      	nop			; (mov r8, r8)
 80022d2:	46bd      	mov	sp, r7
 80022d4:	b002      	add	sp, #8
 80022d6:	bd80      	pop	{r7, pc}
 80022d8:	40021000 	.word	0x40021000

080022dc <LL_RCC_PLL_Enable>:
 80022dc:	b580      	push	{r7, lr}
 80022de:	af00      	add	r7, sp, #0
 80022e0:	4b04      	ldr	r3, [pc, #16]	; (80022f4 <LL_RCC_PLL_Enable+0x18>)
 80022e2:	681a      	ldr	r2, [r3, #0]
 80022e4:	4b03      	ldr	r3, [pc, #12]	; (80022f4 <LL_RCC_PLL_Enable+0x18>)
 80022e6:	2180      	movs	r1, #128	; 0x80
 80022e8:	0449      	lsls	r1, r1, #17
 80022ea:	430a      	orrs	r2, r1
 80022ec:	601a      	str	r2, [r3, #0]
 80022ee:	46c0      	nop			; (mov r8, r8)
 80022f0:	46bd      	mov	sp, r7
 80022f2:	bd80      	pop	{r7, pc}
 80022f4:	40021000 	.word	0x40021000

080022f8 <LL_RCC_PLL_IsReady>:
 80022f8:	b580      	push	{r7, lr}
 80022fa:	af00      	add	r7, sp, #0
 80022fc:	4b07      	ldr	r3, [pc, #28]	; (800231c <LL_RCC_PLL_IsReady+0x24>)
 80022fe:	681a      	ldr	r2, [r3, #0]
 8002300:	2380      	movs	r3, #128	; 0x80
 8002302:	049b      	lsls	r3, r3, #18
 8002304:	4013      	ands	r3, r2
 8002306:	22fe      	movs	r2, #254	; 0xfe
 8002308:	0612      	lsls	r2, r2, #24
 800230a:	4694      	mov	ip, r2
 800230c:	4463      	add	r3, ip
 800230e:	425a      	negs	r2, r3
 8002310:	4153      	adcs	r3, r2
 8002312:	b2db      	uxtb	r3, r3
 8002314:	0018      	movs	r0, r3
 8002316:	46bd      	mov	sp, r7
 8002318:	bd80      	pop	{r7, pc}
 800231a:	46c0      	nop			; (mov r8, r8)
 800231c:	40021000 	.word	0x40021000

08002320 <LL_RCC_PLL_ConfigDomain_SYS>:
 8002320:	b580      	push	{r7, lr}
 8002322:	b082      	sub	sp, #8
 8002324:	af00      	add	r7, sp, #0
 8002326:	6078      	str	r0, [r7, #4]
 8002328:	6039      	str	r1, [r7, #0]
 800232a:	4b0e      	ldr	r3, [pc, #56]	; (8002364 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800232c:	685b      	ldr	r3, [r3, #4]
 800232e:	4a0e      	ldr	r2, [pc, #56]	; (8002368 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8002330:	4013      	ands	r3, r2
 8002332:	0019      	movs	r1, r3
 8002334:	687a      	ldr	r2, [r7, #4]
 8002336:	2380      	movs	r3, #128	; 0x80
 8002338:	025b      	lsls	r3, r3, #9
 800233a:	401a      	ands	r2, r3
 800233c:	683b      	ldr	r3, [r7, #0]
 800233e:	431a      	orrs	r2, r3
 8002340:	4b08      	ldr	r3, [pc, #32]	; (8002364 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8002342:	430a      	orrs	r2, r1
 8002344:	605a      	str	r2, [r3, #4]
 8002346:	4b07      	ldr	r3, [pc, #28]	; (8002364 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8002348:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800234a:	220f      	movs	r2, #15
 800234c:	4393      	bics	r3, r2
 800234e:	0019      	movs	r1, r3
 8002350:	687b      	ldr	r3, [r7, #4]
 8002352:	220f      	movs	r2, #15
 8002354:	401a      	ands	r2, r3
 8002356:	4b03      	ldr	r3, [pc, #12]	; (8002364 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8002358:	430a      	orrs	r2, r1
 800235a:	62da      	str	r2, [r3, #44]	; 0x2c
 800235c:	46c0      	nop			; (mov r8, r8)
 800235e:	46bd      	mov	sp, r7
 8002360:	b002      	add	sp, #8
 8002362:	bd80      	pop	{r7, pc}
 8002364:	40021000 	.word	0x40021000
 8002368:	ffc2ffff 	.word	0xffc2ffff

0800236c <LL_FLASH_SetLatency>:
 800236c:	b580      	push	{r7, lr}
 800236e:	b082      	sub	sp, #8
 8002370:	af00      	add	r7, sp, #0
 8002372:	6078      	str	r0, [r7, #4]
 8002374:	4b06      	ldr	r3, [pc, #24]	; (8002390 <LL_FLASH_SetLatency+0x24>)
 8002376:	681b      	ldr	r3, [r3, #0]
 8002378:	2201      	movs	r2, #1
 800237a:	4393      	bics	r3, r2
 800237c:	0019      	movs	r1, r3
 800237e:	4b04      	ldr	r3, [pc, #16]	; (8002390 <LL_FLASH_SetLatency+0x24>)
 8002380:	687a      	ldr	r2, [r7, #4]
 8002382:	430a      	orrs	r2, r1
 8002384:	601a      	str	r2, [r3, #0]
 8002386:	46c0      	nop			; (mov r8, r8)
 8002388:	46bd      	mov	sp, r7
 800238a:	b002      	add	sp, #8
 800238c:	bd80      	pop	{r7, pc}
 800238e:	46c0      	nop			; (mov r8, r8)
 8002390:	40022000 	.word	0x40022000

08002394 <LL_AHB1_GRP1_EnableClock>:
 8002394:	b580      	push	{r7, lr}
 8002396:	b084      	sub	sp, #16
 8002398:	af00      	add	r7, sp, #0
 800239a:	6078      	str	r0, [r7, #4]
 800239c:	4b07      	ldr	r3, [pc, #28]	; (80023bc <LL_AHB1_GRP1_EnableClock+0x28>)
 800239e:	6959      	ldr	r1, [r3, #20]
 80023a0:	4b06      	ldr	r3, [pc, #24]	; (80023bc <LL_AHB1_GRP1_EnableClock+0x28>)
 80023a2:	687a      	ldr	r2, [r7, #4]
 80023a4:	430a      	orrs	r2, r1
 80023a6:	615a      	str	r2, [r3, #20]
 80023a8:	4b04      	ldr	r3, [pc, #16]	; (80023bc <LL_AHB1_GRP1_EnableClock+0x28>)
 80023aa:	695b      	ldr	r3, [r3, #20]
 80023ac:	687a      	ldr	r2, [r7, #4]
 80023ae:	4013      	ands	r3, r2
 80023b0:	60fb      	str	r3, [r7, #12]
 80023b2:	68fb      	ldr	r3, [r7, #12]
 80023b4:	46c0      	nop			; (mov r8, r8)
 80023b6:	46bd      	mov	sp, r7
 80023b8:	b004      	add	sp, #16
 80023ba:	bd80      	pop	{r7, pc}
 80023bc:	40021000 	.word	0x40021000

080023c0 <LL_APB1_GRP1_EnableClock>:
 80023c0:	b580      	push	{r7, lr}
 80023c2:	b084      	sub	sp, #16
 80023c4:	af00      	add	r7, sp, #0
 80023c6:	6078      	str	r0, [r7, #4]
 80023c8:	4b07      	ldr	r3, [pc, #28]	; (80023e8 <LL_APB1_GRP1_EnableClock+0x28>)
 80023ca:	69d9      	ldr	r1, [r3, #28]
 80023cc:	4b06      	ldr	r3, [pc, #24]	; (80023e8 <LL_APB1_GRP1_EnableClock+0x28>)
 80023ce:	687a      	ldr	r2, [r7, #4]
 80023d0:	430a      	orrs	r2, r1
 80023d2:	61da      	str	r2, [r3, #28]
 80023d4:	4b04      	ldr	r3, [pc, #16]	; (80023e8 <LL_APB1_GRP1_EnableClock+0x28>)
 80023d6:	69db      	ldr	r3, [r3, #28]
 80023d8:	687a      	ldr	r2, [r7, #4]
 80023da:	4013      	ands	r3, r2
 80023dc:	60fb      	str	r3, [r7, #12]
 80023de:	68fb      	ldr	r3, [r7, #12]
 80023e0:	46c0      	nop			; (mov r8, r8)
 80023e2:	46bd      	mov	sp, r7
 80023e4:	b004      	add	sp, #16
 80023e6:	bd80      	pop	{r7, pc}
 80023e8:	40021000 	.word	0x40021000

080023ec <LL_APB1_GRP2_EnableClock>:
 80023ec:	b580      	push	{r7, lr}
 80023ee:	b084      	sub	sp, #16
 80023f0:	af00      	add	r7, sp, #0
 80023f2:	6078      	str	r0, [r7, #4]
 80023f4:	4b07      	ldr	r3, [pc, #28]	; (8002414 <LL_APB1_GRP2_EnableClock+0x28>)
 80023f6:	6999      	ldr	r1, [r3, #24]
 80023f8:	4b06      	ldr	r3, [pc, #24]	; (8002414 <LL_APB1_GRP2_EnableClock+0x28>)
 80023fa:	687a      	ldr	r2, [r7, #4]
 80023fc:	430a      	orrs	r2, r1
 80023fe:	619a      	str	r2, [r3, #24]
 8002400:	4b04      	ldr	r3, [pc, #16]	; (8002414 <LL_APB1_GRP2_EnableClock+0x28>)
 8002402:	699b      	ldr	r3, [r3, #24]
 8002404:	687a      	ldr	r2, [r7, #4]
 8002406:	4013      	ands	r3, r2
 8002408:	60fb      	str	r3, [r7, #12]
 800240a:	68fb      	ldr	r3, [r7, #12]
 800240c:	46c0      	nop			; (mov r8, r8)
 800240e:	46bd      	mov	sp, r7
 8002410:	b004      	add	sp, #16
 8002412:	bd80      	pop	{r7, pc}
 8002414:	40021000 	.word	0x40021000

08002418 <LL_GPIO_SetPinMode>:
 8002418:	b580      	push	{r7, lr}
 800241a:	b084      	sub	sp, #16
 800241c:	af00      	add	r7, sp, #0
 800241e:	60f8      	str	r0, [r7, #12]
 8002420:	60b9      	str	r1, [r7, #8]
 8002422:	607a      	str	r2, [r7, #4]
 8002424:	68fb      	ldr	r3, [r7, #12]
 8002426:	6819      	ldr	r1, [r3, #0]
 8002428:	68bb      	ldr	r3, [r7, #8]
 800242a:	435b      	muls	r3, r3
 800242c:	001a      	movs	r2, r3
 800242e:	0013      	movs	r3, r2
 8002430:	005b      	lsls	r3, r3, #1
 8002432:	189b      	adds	r3, r3, r2
 8002434:	43db      	mvns	r3, r3
 8002436:	400b      	ands	r3, r1
 8002438:	001a      	movs	r2, r3
 800243a:	68bb      	ldr	r3, [r7, #8]
 800243c:	435b      	muls	r3, r3
 800243e:	6879      	ldr	r1, [r7, #4]
 8002440:	434b      	muls	r3, r1
 8002442:	431a      	orrs	r2, r3
 8002444:	68fb      	ldr	r3, [r7, #12]
 8002446:	601a      	str	r2, [r3, #0]
 8002448:	46c0      	nop			; (mov r8, r8)
 800244a:	46bd      	mov	sp, r7
 800244c:	b004      	add	sp, #16
 800244e:	bd80      	pop	{r7, pc}

08002450 <LL_GPIO_SetPinSpeed>:
 8002450:	b580      	push	{r7, lr}
 8002452:	b084      	sub	sp, #16
 8002454:	af00      	add	r7, sp, #0
 8002456:	60f8      	str	r0, [r7, #12]
 8002458:	60b9      	str	r1, [r7, #8]
 800245a:	607a      	str	r2, [r7, #4]
 800245c:	68fb      	ldr	r3, [r7, #12]
 800245e:	6899      	ldr	r1, [r3, #8]
 8002460:	68bb      	ldr	r3, [r7, #8]
 8002462:	435b      	muls	r3, r3
 8002464:	001a      	movs	r2, r3
 8002466:	0013      	movs	r3, r2
 8002468:	005b      	lsls	r3, r3, #1
 800246a:	189b      	adds	r3, r3, r2
 800246c:	43db      	mvns	r3, r3
 800246e:	400b      	ands	r3, r1
 8002470:	001a      	movs	r2, r3
 8002472:	68bb      	ldr	r3, [r7, #8]
 8002474:	435b      	muls	r3, r3
 8002476:	6879      	ldr	r1, [r7, #4]
 8002478:	434b      	muls	r3, r1
 800247a:	431a      	orrs	r2, r3
 800247c:	68fb      	ldr	r3, [r7, #12]
 800247e:	609a      	str	r2, [r3, #8]
 8002480:	46c0      	nop			; (mov r8, r8)
 8002482:	46bd      	mov	sp, r7
 8002484:	b004      	add	sp, #16
 8002486:	bd80      	pop	{r7, pc}

08002488 <LL_GPIO_SetAFPin_0_7>:
 8002488:	b580      	push	{r7, lr}
 800248a:	b084      	sub	sp, #16
 800248c:	af00      	add	r7, sp, #0
 800248e:	60f8      	str	r0, [r7, #12]
 8002490:	60b9      	str	r1, [r7, #8]
 8002492:	607a      	str	r2, [r7, #4]
 8002494:	68fb      	ldr	r3, [r7, #12]
 8002496:	6a19      	ldr	r1, [r3, #32]
 8002498:	68bb      	ldr	r3, [r7, #8]
 800249a:	435b      	muls	r3, r3
 800249c:	68ba      	ldr	r2, [r7, #8]
 800249e:	4353      	muls	r3, r2
 80024a0:	68ba      	ldr	r2, [r7, #8]
 80024a2:	435a      	muls	r2, r3
 80024a4:	0013      	movs	r3, r2
 80024a6:	011b      	lsls	r3, r3, #4
 80024a8:	1a9b      	subs	r3, r3, r2
 80024aa:	43db      	mvns	r3, r3
 80024ac:	400b      	ands	r3, r1
 80024ae:	001a      	movs	r2, r3
 80024b0:	68bb      	ldr	r3, [r7, #8]
 80024b2:	435b      	muls	r3, r3
 80024b4:	68b9      	ldr	r1, [r7, #8]
 80024b6:	434b      	muls	r3, r1
 80024b8:	68b9      	ldr	r1, [r7, #8]
 80024ba:	434b      	muls	r3, r1
 80024bc:	6879      	ldr	r1, [r7, #4]
 80024be:	434b      	muls	r3, r1
 80024c0:	431a      	orrs	r2, r3
 80024c2:	68fb      	ldr	r3, [r7, #12]
 80024c4:	621a      	str	r2, [r3, #32]
 80024c6:	46c0      	nop			; (mov r8, r8)
 80024c8:	46bd      	mov	sp, r7
 80024ca:	b004      	add	sp, #16
 80024cc:	bd80      	pop	{r7, pc}

080024ce <LL_GPIO_SetAFPin_8_15>:
 80024ce:	b580      	push	{r7, lr}
 80024d0:	b084      	sub	sp, #16
 80024d2:	af00      	add	r7, sp, #0
 80024d4:	60f8      	str	r0, [r7, #12]
 80024d6:	60b9      	str	r1, [r7, #8]
 80024d8:	607a      	str	r2, [r7, #4]
 80024da:	68fb      	ldr	r3, [r7, #12]
 80024dc:	6a59      	ldr	r1, [r3, #36]	; 0x24
 80024de:	68bb      	ldr	r3, [r7, #8]
 80024e0:	0a1b      	lsrs	r3, r3, #8
 80024e2:	68ba      	ldr	r2, [r7, #8]
 80024e4:	0a12      	lsrs	r2, r2, #8
 80024e6:	4353      	muls	r3, r2
 80024e8:	68ba      	ldr	r2, [r7, #8]
 80024ea:	0a12      	lsrs	r2, r2, #8
 80024ec:	4353      	muls	r3, r2
 80024ee:	68ba      	ldr	r2, [r7, #8]
 80024f0:	0a12      	lsrs	r2, r2, #8
 80024f2:	435a      	muls	r2, r3
 80024f4:	0013      	movs	r3, r2
 80024f6:	011b      	lsls	r3, r3, #4
 80024f8:	1a9b      	subs	r3, r3, r2
 80024fa:	43db      	mvns	r3, r3
 80024fc:	400b      	ands	r3, r1
 80024fe:	001a      	movs	r2, r3
 8002500:	68bb      	ldr	r3, [r7, #8]
 8002502:	0a1b      	lsrs	r3, r3, #8
 8002504:	68b9      	ldr	r1, [r7, #8]
 8002506:	0a09      	lsrs	r1, r1, #8
 8002508:	434b      	muls	r3, r1
 800250a:	68b9      	ldr	r1, [r7, #8]
 800250c:	0a09      	lsrs	r1, r1, #8
 800250e:	434b      	muls	r3, r1
 8002510:	68b9      	ldr	r1, [r7, #8]
 8002512:	0a09      	lsrs	r1, r1, #8
 8002514:	434b      	muls	r3, r1
 8002516:	6879      	ldr	r1, [r7, #4]
 8002518:	434b      	muls	r3, r1
 800251a:	431a      	orrs	r2, r3
 800251c:	68fb      	ldr	r3, [r7, #12]
 800251e:	625a      	str	r2, [r3, #36]	; 0x24
 8002520:	46c0      	nop			; (mov r8, r8)
 8002522:	46bd      	mov	sp, r7
 8002524:	b004      	add	sp, #16
 8002526:	bd80      	pop	{r7, pc}

08002528 <LL_GPIO_IsInputPinSet>:
 8002528:	b580      	push	{r7, lr}
 800252a:	b082      	sub	sp, #8
 800252c:	af00      	add	r7, sp, #0
 800252e:	6078      	str	r0, [r7, #4]
 8002530:	6039      	str	r1, [r7, #0]
 8002532:	687b      	ldr	r3, [r7, #4]
 8002534:	691b      	ldr	r3, [r3, #16]
 8002536:	683a      	ldr	r2, [r7, #0]
 8002538:	4013      	ands	r3, r2
 800253a:	683a      	ldr	r2, [r7, #0]
 800253c:	1ad3      	subs	r3, r2, r3
 800253e:	425a      	negs	r2, r3
 8002540:	4153      	adcs	r3, r2
 8002542:	b2db      	uxtb	r3, r3
 8002544:	0018      	movs	r0, r3
 8002546:	46bd      	mov	sp, r7
 8002548:	b002      	add	sp, #8
 800254a:	bd80      	pop	{r7, pc}

0800254c <LL_GPIO_WriteOutputPort>:
 800254c:	b580      	push	{r7, lr}
 800254e:	b082      	sub	sp, #8
 8002550:	af00      	add	r7, sp, #0
 8002552:	6078      	str	r0, [r7, #4]
 8002554:	6039      	str	r1, [r7, #0]
 8002556:	687b      	ldr	r3, [r7, #4]
 8002558:	683a      	ldr	r2, [r7, #0]
 800255a:	615a      	str	r2, [r3, #20]
 800255c:	46c0      	nop			; (mov r8, r8)
 800255e:	46bd      	mov	sp, r7
 8002560:	b002      	add	sp, #8
 8002562:	bd80      	pop	{r7, pc}

08002564 <LL_GPIO_ResetOutputPin>:
 8002564:	b580      	push	{r7, lr}
 8002566:	b082      	sub	sp, #8
 8002568:	af00      	add	r7, sp, #0
 800256a:	6078      	str	r0, [r7, #4]
 800256c:	6039      	str	r1, [r7, #0]
 800256e:	687b      	ldr	r3, [r7, #4]
 8002570:	683a      	ldr	r2, [r7, #0]
 8002572:	629a      	str	r2, [r3, #40]	; 0x28
 8002574:	46c0      	nop			; (mov r8, r8)
 8002576:	46bd      	mov	sp, r7
 8002578:	b002      	add	sp, #8
 800257a:	bd80      	pop	{r7, pc}

0800257c <LL_TIM_EnableCounter>:
 800257c:	b580      	push	{r7, lr}
 800257e:	b082      	sub	sp, #8
 8002580:	af00      	add	r7, sp, #0
 8002582:	6078      	str	r0, [r7, #4]
 8002584:	687b      	ldr	r3, [r7, #4]
 8002586:	681b      	ldr	r3, [r3, #0]
 8002588:	2201      	movs	r2, #1
 800258a:	431a      	orrs	r2, r3
 800258c:	687b      	ldr	r3, [r7, #4]
 800258e:	601a      	str	r2, [r3, #0]
 8002590:	46c0      	nop			; (mov r8, r8)
 8002592:	46bd      	mov	sp, r7
 8002594:	b002      	add	sp, #8
 8002596:	bd80      	pop	{r7, pc}

08002598 <LL_TIM_SetCounterMode>:
 8002598:	b580      	push	{r7, lr}
 800259a:	b082      	sub	sp, #8
 800259c:	af00      	add	r7, sp, #0
 800259e:	6078      	str	r0, [r7, #4]
 80025a0:	6039      	str	r1, [r7, #0]
 80025a2:	687b      	ldr	r3, [r7, #4]
 80025a4:	681b      	ldr	r3, [r3, #0]
 80025a6:	2270      	movs	r2, #112	; 0x70
 80025a8:	4393      	bics	r3, r2
 80025aa:	001a      	movs	r2, r3
 80025ac:	683b      	ldr	r3, [r7, #0]
 80025ae:	431a      	orrs	r2, r3
 80025b0:	687b      	ldr	r3, [r7, #4]
 80025b2:	601a      	str	r2, [r3, #0]
 80025b4:	46c0      	nop			; (mov r8, r8)
 80025b6:	46bd      	mov	sp, r7
 80025b8:	b002      	add	sp, #8
 80025ba:	bd80      	pop	{r7, pc}

080025bc <LL_TIM_SetCounter>:
 80025bc:	b580      	push	{r7, lr}
 80025be:	b082      	sub	sp, #8
 80025c0:	af00      	add	r7, sp, #0
 80025c2:	6078      	str	r0, [r7, #4]
 80025c4:	6039      	str	r1, [r7, #0]
 80025c6:	687b      	ldr	r3, [r7, #4]
 80025c8:	683a      	ldr	r2, [r7, #0]
 80025ca:	625a      	str	r2, [r3, #36]	; 0x24
 80025cc:	46c0      	nop			; (mov r8, r8)
 80025ce:	46bd      	mov	sp, r7
 80025d0:	b002      	add	sp, #8
 80025d2:	bd80      	pop	{r7, pc}

080025d4 <LL_TIM_GetCounter>:
 80025d4:	b580      	push	{r7, lr}
 80025d6:	b082      	sub	sp, #8
 80025d8:	af00      	add	r7, sp, #0
 80025da:	6078      	str	r0, [r7, #4]
 80025dc:	687b      	ldr	r3, [r7, #4]
 80025de:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80025e0:	0018      	movs	r0, r3
 80025e2:	46bd      	mov	sp, r7
 80025e4:	b002      	add	sp, #8
 80025e6:	bd80      	pop	{r7, pc}

080025e8 <LL_TIM_SetPrescaler>:
 80025e8:	b580      	push	{r7, lr}
 80025ea:	b082      	sub	sp, #8
 80025ec:	af00      	add	r7, sp, #0
 80025ee:	6078      	str	r0, [r7, #4]
 80025f0:	6039      	str	r1, [r7, #0]
 80025f2:	687b      	ldr	r3, [r7, #4]
 80025f4:	683a      	ldr	r2, [r7, #0]
 80025f6:	629a      	str	r2, [r3, #40]	; 0x28
 80025f8:	46c0      	nop			; (mov r8, r8)
 80025fa:	46bd      	mov	sp, r7
 80025fc:	b002      	add	sp, #8
 80025fe:	bd80      	pop	{r7, pc}

08002600 <LL_TIM_SetAutoReload>:
 8002600:	b580      	push	{r7, lr}
 8002602:	b082      	sub	sp, #8
 8002604:	af00      	add	r7, sp, #0
 8002606:	6078      	str	r0, [r7, #4]
 8002608:	6039      	str	r1, [r7, #0]
 800260a:	687b      	ldr	r3, [r7, #4]
 800260c:	683a      	ldr	r2, [r7, #0]
 800260e:	62da      	str	r2, [r3, #44]	; 0x2c
 8002610:	46c0      	nop			; (mov r8, r8)
 8002612:	46bd      	mov	sp, r7
 8002614:	b002      	add	sp, #8
 8002616:	bd80      	pop	{r7, pc}

08002618 <LL_TIM_CC_EnableChannel>:
 8002618:	b580      	push	{r7, lr}
 800261a:	b082      	sub	sp, #8
 800261c:	af00      	add	r7, sp, #0
 800261e:	6078      	str	r0, [r7, #4]
 8002620:	6039      	str	r1, [r7, #0]
 8002622:	687b      	ldr	r3, [r7, #4]
 8002624:	6a1a      	ldr	r2, [r3, #32]
 8002626:	683b      	ldr	r3, [r7, #0]
 8002628:	431a      	orrs	r2, r3
 800262a:	687b      	ldr	r3, [r7, #4]
 800262c:	621a      	str	r2, [r3, #32]
 800262e:	46c0      	nop			; (mov r8, r8)
 8002630:	46bd      	mov	sp, r7
 8002632:	b002      	add	sp, #8
 8002634:	bd80      	pop	{r7, pc}
	...

08002638 <LL_TIM_OC_SetMode>:
 8002638:	b5b0      	push	{r4, r5, r7, lr}
 800263a:	b084      	sub	sp, #16
 800263c:	af00      	add	r7, sp, #0
 800263e:	60f8      	str	r0, [r7, #12]
 8002640:	60b9      	str	r1, [r7, #8]
 8002642:	607a      	str	r2, [r7, #4]
 8002644:	68bb      	ldr	r3, [r7, #8]
 8002646:	2b01      	cmp	r3, #1
 8002648:	d01e      	beq.n	8002688 <LL_TIM_OC_SetMode+0x50>
 800264a:	68bb      	ldr	r3, [r7, #8]
 800264c:	2b04      	cmp	r3, #4
 800264e:	d019      	beq.n	8002684 <LL_TIM_OC_SetMode+0x4c>
 8002650:	68bb      	ldr	r3, [r7, #8]
 8002652:	2b10      	cmp	r3, #16
 8002654:	d014      	beq.n	8002680 <LL_TIM_OC_SetMode+0x48>
 8002656:	68bb      	ldr	r3, [r7, #8]
 8002658:	2b40      	cmp	r3, #64	; 0x40
 800265a:	d00f      	beq.n	800267c <LL_TIM_OC_SetMode+0x44>
 800265c:	68ba      	ldr	r2, [r7, #8]
 800265e:	2380      	movs	r3, #128	; 0x80
 8002660:	005b      	lsls	r3, r3, #1
 8002662:	429a      	cmp	r2, r3
 8002664:	d008      	beq.n	8002678 <LL_TIM_OC_SetMode+0x40>
 8002666:	68ba      	ldr	r2, [r7, #8]
 8002668:	2380      	movs	r3, #128	; 0x80
 800266a:	00db      	lsls	r3, r3, #3
 800266c:	429a      	cmp	r2, r3
 800266e:	d101      	bne.n	8002674 <LL_TIM_OC_SetMode+0x3c>
 8002670:	2305      	movs	r3, #5
 8002672:	e00a      	b.n	800268a <LL_TIM_OC_SetMode+0x52>
 8002674:	2306      	movs	r3, #6
 8002676:	e008      	b.n	800268a <LL_TIM_OC_SetMode+0x52>
 8002678:	2304      	movs	r3, #4
 800267a:	e006      	b.n	800268a <LL_TIM_OC_SetMode+0x52>
 800267c:	2303      	movs	r3, #3
 800267e:	e004      	b.n	800268a <LL_TIM_OC_SetMode+0x52>
 8002680:	2302      	movs	r3, #2
 8002682:	e002      	b.n	800268a <LL_TIM_OC_SetMode+0x52>
 8002684:	2301      	movs	r3, #1
 8002686:	e000      	b.n	800268a <LL_TIM_OC_SetMode+0x52>
 8002688:	2300      	movs	r3, #0
 800268a:	001d      	movs	r5, r3
 800268c:	68fb      	ldr	r3, [r7, #12]
 800268e:	3318      	adds	r3, #24
 8002690:	001a      	movs	r2, r3
 8002692:	0029      	movs	r1, r5
 8002694:	4b0c      	ldr	r3, [pc, #48]	; (80026c8 <LL_TIM_OC_SetMode+0x90>)
 8002696:	5c5b      	ldrb	r3, [r3, r1]
 8002698:	18d3      	adds	r3, r2, r3
 800269a:	001c      	movs	r4, r3
 800269c:	6823      	ldr	r3, [r4, #0]
 800269e:	0029      	movs	r1, r5
 80026a0:	4a0a      	ldr	r2, [pc, #40]	; (80026cc <LL_TIM_OC_SetMode+0x94>)
 80026a2:	5c52      	ldrb	r2, [r2, r1]
 80026a4:	0011      	movs	r1, r2
 80026a6:	2273      	movs	r2, #115	; 0x73
 80026a8:	408a      	lsls	r2, r1
 80026aa:	43d2      	mvns	r2, r2
 80026ac:	401a      	ands	r2, r3
 80026ae:	0029      	movs	r1, r5
 80026b0:	4b06      	ldr	r3, [pc, #24]	; (80026cc <LL_TIM_OC_SetMode+0x94>)
 80026b2:	5c5b      	ldrb	r3, [r3, r1]
 80026b4:	0019      	movs	r1, r3
 80026b6:	687b      	ldr	r3, [r7, #4]
 80026b8:	408b      	lsls	r3, r1
 80026ba:	4313      	orrs	r3, r2
 80026bc:	6023      	str	r3, [r4, #0]
 80026be:	46c0      	nop			; (mov r8, r8)
 80026c0:	46bd      	mov	sp, r7
 80026c2:	b004      	add	sp, #16
 80026c4:	bdb0      	pop	{r4, r5, r7, pc}
 80026c6:	46c0      	nop			; (mov r8, r8)
 80026c8:	080052d4 	.word	0x080052d4
 80026cc:	080052dc 	.word	0x080052dc

080026d0 <LL_TIM_OC_SetPolarity>:
 80026d0:	b590      	push	{r4, r7, lr}
 80026d2:	b085      	sub	sp, #20
 80026d4:	af00      	add	r7, sp, #0
 80026d6:	60f8      	str	r0, [r7, #12]
 80026d8:	60b9      	str	r1, [r7, #8]
 80026da:	607a      	str	r2, [r7, #4]
 80026dc:	68bb      	ldr	r3, [r7, #8]
 80026de:	2b01      	cmp	r3, #1
 80026e0:	d01e      	beq.n	8002720 <LL_TIM_OC_SetPolarity+0x50>
 80026e2:	68bb      	ldr	r3, [r7, #8]
 80026e4:	2b04      	cmp	r3, #4
 80026e6:	d019      	beq.n	800271c <LL_TIM_OC_SetPolarity+0x4c>
 80026e8:	68bb      	ldr	r3, [r7, #8]
 80026ea:	2b10      	cmp	r3, #16
 80026ec:	d014      	beq.n	8002718 <LL_TIM_OC_SetPolarity+0x48>
 80026ee:	68bb      	ldr	r3, [r7, #8]
 80026f0:	2b40      	cmp	r3, #64	; 0x40
 80026f2:	d00f      	beq.n	8002714 <LL_TIM_OC_SetPolarity+0x44>
 80026f4:	68ba      	ldr	r2, [r7, #8]
 80026f6:	2380      	movs	r3, #128	; 0x80
 80026f8:	005b      	lsls	r3, r3, #1
 80026fa:	429a      	cmp	r2, r3
 80026fc:	d008      	beq.n	8002710 <LL_TIM_OC_SetPolarity+0x40>
 80026fe:	68ba      	ldr	r2, [r7, #8]
 8002700:	2380      	movs	r3, #128	; 0x80
 8002702:	00db      	lsls	r3, r3, #3
 8002704:	429a      	cmp	r2, r3
 8002706:	d101      	bne.n	800270c <LL_TIM_OC_SetPolarity+0x3c>
 8002708:	2305      	movs	r3, #5
 800270a:	e00a      	b.n	8002722 <LL_TIM_OC_SetPolarity+0x52>
 800270c:	2306      	movs	r3, #6
 800270e:	e008      	b.n	8002722 <LL_TIM_OC_SetPolarity+0x52>
 8002710:	2304      	movs	r3, #4
 8002712:	e006      	b.n	8002722 <LL_TIM_OC_SetPolarity+0x52>
 8002714:	2303      	movs	r3, #3
 8002716:	e004      	b.n	8002722 <LL_TIM_OC_SetPolarity+0x52>
 8002718:	2302      	movs	r3, #2
 800271a:	e002      	b.n	8002722 <LL_TIM_OC_SetPolarity+0x52>
 800271c:	2301      	movs	r3, #1
 800271e:	e000      	b.n	8002722 <LL_TIM_OC_SetPolarity+0x52>
 8002720:	2300      	movs	r3, #0
 8002722:	001c      	movs	r4, r3
 8002724:	68fb      	ldr	r3, [r7, #12]
 8002726:	6a1b      	ldr	r3, [r3, #32]
 8002728:	0021      	movs	r1, r4
 800272a:	4a0a      	ldr	r2, [pc, #40]	; (8002754 <LL_TIM_OC_SetPolarity+0x84>)
 800272c:	5c52      	ldrb	r2, [r2, r1]
 800272e:	0011      	movs	r1, r2
 8002730:	2202      	movs	r2, #2
 8002732:	408a      	lsls	r2, r1
 8002734:	43d2      	mvns	r2, r2
 8002736:	401a      	ands	r2, r3
 8002738:	0021      	movs	r1, r4
 800273a:	4b06      	ldr	r3, [pc, #24]	; (8002754 <LL_TIM_OC_SetPolarity+0x84>)
 800273c:	5c5b      	ldrb	r3, [r3, r1]
 800273e:	0019      	movs	r1, r3
 8002740:	687b      	ldr	r3, [r7, #4]
 8002742:	408b      	lsls	r3, r1
 8002744:	431a      	orrs	r2, r3
 8002746:	68fb      	ldr	r3, [r7, #12]
 8002748:	621a      	str	r2, [r3, #32]
 800274a:	46c0      	nop			; (mov r8, r8)
 800274c:	46bd      	mov	sp, r7
 800274e:	b005      	add	sp, #20
 8002750:	bd90      	pop	{r4, r7, pc}
 8002752:	46c0      	nop			; (mov r8, r8)
 8002754:	080052ec 	.word	0x080052ec

08002758 <LL_TIM_OC_SetCompareCH1>:
 8002758:	b580      	push	{r7, lr}
 800275a:	b082      	sub	sp, #8
 800275c:	af00      	add	r7, sp, #0
 800275e:	6078      	str	r0, [r7, #4]
 8002760:	6039      	str	r1, [r7, #0]
 8002762:	687b      	ldr	r3, [r7, #4]
 8002764:	683a      	ldr	r2, [r7, #0]
 8002766:	635a      	str	r2, [r3, #52]	; 0x34
 8002768:	46c0      	nop			; (mov r8, r8)
 800276a:	46bd      	mov	sp, r7
 800276c:	b002      	add	sp, #8
 800276e:	bd80      	pop	{r7, pc}

08002770 <LL_TIM_OC_SetCompareCH3>:
 8002770:	b580      	push	{r7, lr}
 8002772:	b082      	sub	sp, #8
 8002774:	af00      	add	r7, sp, #0
 8002776:	6078      	str	r0, [r7, #4]
 8002778:	6039      	str	r1, [r7, #0]
 800277a:	687b      	ldr	r3, [r7, #4]
 800277c:	683a      	ldr	r2, [r7, #0]
 800277e:	63da      	str	r2, [r3, #60]	; 0x3c
 8002780:	46c0      	nop			; (mov r8, r8)
 8002782:	46bd      	mov	sp, r7
 8002784:	b002      	add	sp, #8
 8002786:	bd80      	pop	{r7, pc}

08002788 <LL_TIM_IC_SetActiveInput>:
 8002788:	b5b0      	push	{r4, r5, r7, lr}
 800278a:	b084      	sub	sp, #16
 800278c:	af00      	add	r7, sp, #0
 800278e:	60f8      	str	r0, [r7, #12]
 8002790:	60b9      	str	r1, [r7, #8]
 8002792:	607a      	str	r2, [r7, #4]
 8002794:	68bb      	ldr	r3, [r7, #8]
 8002796:	2b01      	cmp	r3, #1
 8002798:	d01e      	beq.n	80027d8 <LL_TIM_IC_SetActiveInput+0x50>
 800279a:	68bb      	ldr	r3, [r7, #8]
 800279c:	2b04      	cmp	r3, #4
 800279e:	d019      	beq.n	80027d4 <LL_TIM_IC_SetActiveInput+0x4c>
 80027a0:	68bb      	ldr	r3, [r7, #8]
 80027a2:	2b10      	cmp	r3, #16
 80027a4:	d014      	beq.n	80027d0 <LL_TIM_IC_SetActiveInput+0x48>
 80027a6:	68bb      	ldr	r3, [r7, #8]
 80027a8:	2b40      	cmp	r3, #64	; 0x40
 80027aa:	d00f      	beq.n	80027cc <LL_TIM_IC_SetActiveInput+0x44>
 80027ac:	68ba      	ldr	r2, [r7, #8]
 80027ae:	2380      	movs	r3, #128	; 0x80
 80027b0:	005b      	lsls	r3, r3, #1
 80027b2:	429a      	cmp	r2, r3
 80027b4:	d008      	beq.n	80027c8 <LL_TIM_IC_SetActiveInput+0x40>
 80027b6:	68ba      	ldr	r2, [r7, #8]
 80027b8:	2380      	movs	r3, #128	; 0x80
 80027ba:	00db      	lsls	r3, r3, #3
 80027bc:	429a      	cmp	r2, r3
 80027be:	d101      	bne.n	80027c4 <LL_TIM_IC_SetActiveInput+0x3c>
 80027c0:	2305      	movs	r3, #5
 80027c2:	e00a      	b.n	80027da <LL_TIM_IC_SetActiveInput+0x52>
 80027c4:	2306      	movs	r3, #6
 80027c6:	e008      	b.n	80027da <LL_TIM_IC_SetActiveInput+0x52>
 80027c8:	2304      	movs	r3, #4
 80027ca:	e006      	b.n	80027da <LL_TIM_IC_SetActiveInput+0x52>
 80027cc:	2303      	movs	r3, #3
 80027ce:	e004      	b.n	80027da <LL_TIM_IC_SetActiveInput+0x52>
 80027d0:	2302      	movs	r3, #2
 80027d2:	e002      	b.n	80027da <LL_TIM_IC_SetActiveInput+0x52>
 80027d4:	2301      	movs	r3, #1
 80027d6:	e000      	b.n	80027da <LL_TIM_IC_SetActiveInput+0x52>
 80027d8:	2300      	movs	r3, #0
 80027da:	001d      	movs	r5, r3
 80027dc:	68fb      	ldr	r3, [r7, #12]
 80027de:	3318      	adds	r3, #24
 80027e0:	001a      	movs	r2, r3
 80027e2:	0029      	movs	r1, r5
 80027e4:	4b0c      	ldr	r3, [pc, #48]	; (8002818 <LL_TIM_IC_SetActiveInput+0x90>)
 80027e6:	5c5b      	ldrb	r3, [r3, r1]
 80027e8:	18d3      	adds	r3, r2, r3
 80027ea:	001c      	movs	r4, r3
 80027ec:	6823      	ldr	r3, [r4, #0]
 80027ee:	0029      	movs	r1, r5
 80027f0:	4a0a      	ldr	r2, [pc, #40]	; (800281c <LL_TIM_IC_SetActiveInput+0x94>)
 80027f2:	5c52      	ldrb	r2, [r2, r1]
 80027f4:	0011      	movs	r1, r2
 80027f6:	2203      	movs	r2, #3
 80027f8:	408a      	lsls	r2, r1
 80027fa:	43d2      	mvns	r2, r2
 80027fc:	401a      	ands	r2, r3
 80027fe:	687b      	ldr	r3, [r7, #4]
 8002800:	0c1b      	lsrs	r3, r3, #16
 8002802:	0028      	movs	r0, r5
 8002804:	4905      	ldr	r1, [pc, #20]	; (800281c <LL_TIM_IC_SetActiveInput+0x94>)
 8002806:	5c09      	ldrb	r1, [r1, r0]
 8002808:	408b      	lsls	r3, r1
 800280a:	4313      	orrs	r3, r2
 800280c:	6023      	str	r3, [r4, #0]
 800280e:	46c0      	nop			; (mov r8, r8)
 8002810:	46bd      	mov	sp, r7
 8002812:	b004      	add	sp, #16
 8002814:	bdb0      	pop	{r4, r5, r7, pc}
 8002816:	46c0      	nop			; (mov r8, r8)
 8002818:	080052d4 	.word	0x080052d4
 800281c:	080052e4 	.word	0x080052e4

08002820 <LL_TIM_IC_SetPrescaler>:
 8002820:	b5b0      	push	{r4, r5, r7, lr}
 8002822:	b084      	sub	sp, #16
 8002824:	af00      	add	r7, sp, #0
 8002826:	60f8      	str	r0, [r7, #12]
 8002828:	60b9      	str	r1, [r7, #8]
 800282a:	607a      	str	r2, [r7, #4]
 800282c:	68bb      	ldr	r3, [r7, #8]
 800282e:	2b01      	cmp	r3, #1
 8002830:	d01e      	beq.n	8002870 <LL_TIM_IC_SetPrescaler+0x50>
 8002832:	68bb      	ldr	r3, [r7, #8]
 8002834:	2b04      	cmp	r3, #4
 8002836:	d019      	beq.n	800286c <LL_TIM_IC_SetPrescaler+0x4c>
 8002838:	68bb      	ldr	r3, [r7, #8]
 800283a:	2b10      	cmp	r3, #16
 800283c:	d014      	beq.n	8002868 <LL_TIM_IC_SetPrescaler+0x48>
 800283e:	68bb      	ldr	r3, [r7, #8]
 8002840:	2b40      	cmp	r3, #64	; 0x40
 8002842:	d00f      	beq.n	8002864 <LL_TIM_IC_SetPrescaler+0x44>
 8002844:	68ba      	ldr	r2, [r7, #8]
 8002846:	2380      	movs	r3, #128	; 0x80
 8002848:	005b      	lsls	r3, r3, #1
 800284a:	429a      	cmp	r2, r3
 800284c:	d008      	beq.n	8002860 <LL_TIM_IC_SetPrescaler+0x40>
 800284e:	68ba      	ldr	r2, [r7, #8]
 8002850:	2380      	movs	r3, #128	; 0x80
 8002852:	00db      	lsls	r3, r3, #3
 8002854:	429a      	cmp	r2, r3
 8002856:	d101      	bne.n	800285c <LL_TIM_IC_SetPrescaler+0x3c>
 8002858:	2305      	movs	r3, #5
 800285a:	e00a      	b.n	8002872 <LL_TIM_IC_SetPrescaler+0x52>
 800285c:	2306      	movs	r3, #6
 800285e:	e008      	b.n	8002872 <LL_TIM_IC_SetPrescaler+0x52>
 8002860:	2304      	movs	r3, #4
 8002862:	e006      	b.n	8002872 <LL_TIM_IC_SetPrescaler+0x52>
 8002864:	2303      	movs	r3, #3
 8002866:	e004      	b.n	8002872 <LL_TIM_IC_SetPrescaler+0x52>
 8002868:	2302      	movs	r3, #2
 800286a:	e002      	b.n	8002872 <LL_TIM_IC_SetPrescaler+0x52>
 800286c:	2301      	movs	r3, #1
 800286e:	e000      	b.n	8002872 <LL_TIM_IC_SetPrescaler+0x52>
 8002870:	2300      	movs	r3, #0
 8002872:	001d      	movs	r5, r3
 8002874:	68fb      	ldr	r3, [r7, #12]
 8002876:	3318      	adds	r3, #24
 8002878:	001a      	movs	r2, r3
 800287a:	0029      	movs	r1, r5
 800287c:	4b0c      	ldr	r3, [pc, #48]	; (80028b0 <LL_TIM_IC_SetPrescaler+0x90>)
 800287e:	5c5b      	ldrb	r3, [r3, r1]
 8002880:	18d3      	adds	r3, r2, r3
 8002882:	001c      	movs	r4, r3
 8002884:	6823      	ldr	r3, [r4, #0]
 8002886:	0029      	movs	r1, r5
 8002888:	4a0a      	ldr	r2, [pc, #40]	; (80028b4 <LL_TIM_IC_SetPrescaler+0x94>)
 800288a:	5c52      	ldrb	r2, [r2, r1]
 800288c:	0011      	movs	r1, r2
 800288e:	220c      	movs	r2, #12
 8002890:	408a      	lsls	r2, r1
 8002892:	43d2      	mvns	r2, r2
 8002894:	401a      	ands	r2, r3
 8002896:	687b      	ldr	r3, [r7, #4]
 8002898:	0c1b      	lsrs	r3, r3, #16
 800289a:	0028      	movs	r0, r5
 800289c:	4905      	ldr	r1, [pc, #20]	; (80028b4 <LL_TIM_IC_SetPrescaler+0x94>)
 800289e:	5c09      	ldrb	r1, [r1, r0]
 80028a0:	408b      	lsls	r3, r1
 80028a2:	4313      	orrs	r3, r2
 80028a4:	6023      	str	r3, [r4, #0]
 80028a6:	46c0      	nop			; (mov r8, r8)
 80028a8:	46bd      	mov	sp, r7
 80028aa:	b004      	add	sp, #16
 80028ac:	bdb0      	pop	{r4, r5, r7, pc}
 80028ae:	46c0      	nop			; (mov r8, r8)
 80028b0:	080052d4 	.word	0x080052d4
 80028b4:	080052e4 	.word	0x080052e4

080028b8 <LL_TIM_IC_SetPolarity>:
 80028b8:	b590      	push	{r4, r7, lr}
 80028ba:	b085      	sub	sp, #20
 80028bc:	af00      	add	r7, sp, #0
 80028be:	60f8      	str	r0, [r7, #12]
 80028c0:	60b9      	str	r1, [r7, #8]
 80028c2:	607a      	str	r2, [r7, #4]
 80028c4:	68bb      	ldr	r3, [r7, #8]
 80028c6:	2b01      	cmp	r3, #1
 80028c8:	d01e      	beq.n	8002908 <LL_TIM_IC_SetPolarity+0x50>
 80028ca:	68bb      	ldr	r3, [r7, #8]
 80028cc:	2b04      	cmp	r3, #4
 80028ce:	d019      	beq.n	8002904 <LL_TIM_IC_SetPolarity+0x4c>
 80028d0:	68bb      	ldr	r3, [r7, #8]
 80028d2:	2b10      	cmp	r3, #16
 80028d4:	d014      	beq.n	8002900 <LL_TIM_IC_SetPolarity+0x48>
 80028d6:	68bb      	ldr	r3, [r7, #8]
 80028d8:	2b40      	cmp	r3, #64	; 0x40
 80028da:	d00f      	beq.n	80028fc <LL_TIM_IC_SetPolarity+0x44>
 80028dc:	68ba      	ldr	r2, [r7, #8]
 80028de:	2380      	movs	r3, #128	; 0x80
 80028e0:	005b      	lsls	r3, r3, #1
 80028e2:	429a      	cmp	r2, r3
 80028e4:	d008      	beq.n	80028f8 <LL_TIM_IC_SetPolarity+0x40>
 80028e6:	68ba      	ldr	r2, [r7, #8]
 80028e8:	2380      	movs	r3, #128	; 0x80
 80028ea:	00db      	lsls	r3, r3, #3
 80028ec:	429a      	cmp	r2, r3
 80028ee:	d101      	bne.n	80028f4 <LL_TIM_IC_SetPolarity+0x3c>
 80028f0:	2305      	movs	r3, #5
 80028f2:	e00a      	b.n	800290a <LL_TIM_IC_SetPolarity+0x52>
 80028f4:	2306      	movs	r3, #6
 80028f6:	e008      	b.n	800290a <LL_TIM_IC_SetPolarity+0x52>
 80028f8:	2304      	movs	r3, #4
 80028fa:	e006      	b.n	800290a <LL_TIM_IC_SetPolarity+0x52>
 80028fc:	2303      	movs	r3, #3
 80028fe:	e004      	b.n	800290a <LL_TIM_IC_SetPolarity+0x52>
 8002900:	2302      	movs	r3, #2
 8002902:	e002      	b.n	800290a <LL_TIM_IC_SetPolarity+0x52>
 8002904:	2301      	movs	r3, #1
 8002906:	e000      	b.n	800290a <LL_TIM_IC_SetPolarity+0x52>
 8002908:	2300      	movs	r3, #0
 800290a:	001c      	movs	r4, r3
 800290c:	68fb      	ldr	r3, [r7, #12]
 800290e:	6a1b      	ldr	r3, [r3, #32]
 8002910:	0021      	movs	r1, r4
 8002912:	4a0a      	ldr	r2, [pc, #40]	; (800293c <LL_TIM_IC_SetPolarity+0x84>)
 8002914:	5c52      	ldrb	r2, [r2, r1]
 8002916:	0011      	movs	r1, r2
 8002918:	220a      	movs	r2, #10
 800291a:	408a      	lsls	r2, r1
 800291c:	43d2      	mvns	r2, r2
 800291e:	401a      	ands	r2, r3
 8002920:	0021      	movs	r1, r4
 8002922:	4b06      	ldr	r3, [pc, #24]	; (800293c <LL_TIM_IC_SetPolarity+0x84>)
 8002924:	5c5b      	ldrb	r3, [r3, r1]
 8002926:	0019      	movs	r1, r3
 8002928:	687b      	ldr	r3, [r7, #4]
 800292a:	408b      	lsls	r3, r1
 800292c:	431a      	orrs	r2, r3
 800292e:	68fb      	ldr	r3, [r7, #12]
 8002930:	621a      	str	r2, [r3, #32]
 8002932:	46c0      	nop			; (mov r8, r8)
 8002934:	46bd      	mov	sp, r7
 8002936:	b005      	add	sp, #20
 8002938:	bd90      	pop	{r4, r7, pc}
 800293a:	46c0      	nop			; (mov r8, r8)
 800293c:	080052ec 	.word	0x080052ec

08002940 <LL_TIM_ClearFlag_UPDATE>:
 8002940:	b580      	push	{r7, lr}
 8002942:	b082      	sub	sp, #8
 8002944:	af00      	add	r7, sp, #0
 8002946:	6078      	str	r0, [r7, #4]
 8002948:	687b      	ldr	r3, [r7, #4]
 800294a:	2202      	movs	r2, #2
 800294c:	4252      	negs	r2, r2
 800294e:	611a      	str	r2, [r3, #16]
 8002950:	46c0      	nop			; (mov r8, r8)
 8002952:	46bd      	mov	sp, r7
 8002954:	b002      	add	sp, #8
 8002956:	bd80      	pop	{r7, pc}

08002958 <LL_TIM_ClearFlag_CC1>:
 8002958:	b580      	push	{r7, lr}
 800295a:	b082      	sub	sp, #8
 800295c:	af00      	add	r7, sp, #0
 800295e:	6078      	str	r0, [r7, #4]
 8002960:	687b      	ldr	r3, [r7, #4]
 8002962:	2203      	movs	r2, #3
 8002964:	4252      	negs	r2, r2
 8002966:	611a      	str	r2, [r3, #16]
 8002968:	46c0      	nop			; (mov r8, r8)
 800296a:	46bd      	mov	sp, r7
 800296c:	b002      	add	sp, #8
 800296e:	bd80      	pop	{r7, pc}

08002970 <LL_TIM_ClearFlag_CC2>:
 8002970:	b580      	push	{r7, lr}
 8002972:	b082      	sub	sp, #8
 8002974:	af00      	add	r7, sp, #0
 8002976:	6078      	str	r0, [r7, #4]
 8002978:	687b      	ldr	r3, [r7, #4]
 800297a:	2205      	movs	r2, #5
 800297c:	4252      	negs	r2, r2
 800297e:	611a      	str	r2, [r3, #16]
 8002980:	46c0      	nop			; (mov r8, r8)
 8002982:	46bd      	mov	sp, r7
 8002984:	b002      	add	sp, #8
 8002986:	bd80      	pop	{r7, pc}

08002988 <LL_TIM_ClearFlag_CC3>:
 8002988:	b580      	push	{r7, lr}
 800298a:	b082      	sub	sp, #8
 800298c:	af00      	add	r7, sp, #0
 800298e:	6078      	str	r0, [r7, #4]
 8002990:	687b      	ldr	r3, [r7, #4]
 8002992:	2209      	movs	r2, #9
 8002994:	4252      	negs	r2, r2
 8002996:	611a      	str	r2, [r3, #16]
 8002998:	46c0      	nop			; (mov r8, r8)
 800299a:	46bd      	mov	sp, r7
 800299c:	b002      	add	sp, #8
 800299e:	bd80      	pop	{r7, pc}

080029a0 <LL_TIM_EnableIT_CC1>:
 80029a0:	b580      	push	{r7, lr}
 80029a2:	b082      	sub	sp, #8
 80029a4:	af00      	add	r7, sp, #0
 80029a6:	6078      	str	r0, [r7, #4]
 80029a8:	687b      	ldr	r3, [r7, #4]
 80029aa:	68db      	ldr	r3, [r3, #12]
 80029ac:	2202      	movs	r2, #2
 80029ae:	431a      	orrs	r2, r3
 80029b0:	687b      	ldr	r3, [r7, #4]
 80029b2:	60da      	str	r2, [r3, #12]
 80029b4:	46c0      	nop			; (mov r8, r8)
 80029b6:	46bd      	mov	sp, r7
 80029b8:	b002      	add	sp, #8
 80029ba:	bd80      	pop	{r7, pc}

080029bc <LL_TIM_EnableIT_CC2>:
 80029bc:	b580      	push	{r7, lr}
 80029be:	b082      	sub	sp, #8
 80029c0:	af00      	add	r7, sp, #0
 80029c2:	6078      	str	r0, [r7, #4]
 80029c4:	687b      	ldr	r3, [r7, #4]
 80029c6:	68db      	ldr	r3, [r3, #12]
 80029c8:	2204      	movs	r2, #4
 80029ca:	431a      	orrs	r2, r3
 80029cc:	687b      	ldr	r3, [r7, #4]
 80029ce:	60da      	str	r2, [r3, #12]
 80029d0:	46c0      	nop			; (mov r8, r8)
 80029d2:	46bd      	mov	sp, r7
 80029d4:	b002      	add	sp, #8
 80029d6:	bd80      	pop	{r7, pc}

080029d8 <LL_TIM_EnableIT_CC3>:
 80029d8:	b580      	push	{r7, lr}
 80029da:	b082      	sub	sp, #8
 80029dc:	af00      	add	r7, sp, #0
 80029de:	6078      	str	r0, [r7, #4]
 80029e0:	687b      	ldr	r3, [r7, #4]
 80029e2:	68db      	ldr	r3, [r3, #12]
 80029e4:	2208      	movs	r2, #8
 80029e6:	431a      	orrs	r2, r3
 80029e8:	687b      	ldr	r3, [r7, #4]
 80029ea:	60da      	str	r2, [r3, #12]
 80029ec:	46c0      	nop			; (mov r8, r8)
 80029ee:	46bd      	mov	sp, r7
 80029f0:	b002      	add	sp, #8
 80029f2:	bd80      	pop	{r7, pc}

080029f4 <LL_USART_Enable>:
 80029f4:	b580      	push	{r7, lr}
 80029f6:	b082      	sub	sp, #8
 80029f8:	af00      	add	r7, sp, #0
 80029fa:	6078      	str	r0, [r7, #4]
 80029fc:	687b      	ldr	r3, [r7, #4]
 80029fe:	681b      	ldr	r3, [r3, #0]
 8002a00:	2201      	movs	r2, #1
 8002a02:	431a      	orrs	r2, r3
 8002a04:	687b      	ldr	r3, [r7, #4]
 8002a06:	601a      	str	r2, [r3, #0]
 8002a08:	46c0      	nop			; (mov r8, r8)
 8002a0a:	46bd      	mov	sp, r7
 8002a0c:	b002      	add	sp, #8
 8002a0e:	bd80      	pop	{r7, pc}

08002a10 <LL_USART_SetTransferDirection>:
 8002a10:	b580      	push	{r7, lr}
 8002a12:	b082      	sub	sp, #8
 8002a14:	af00      	add	r7, sp, #0
 8002a16:	6078      	str	r0, [r7, #4]
 8002a18:	6039      	str	r1, [r7, #0]
 8002a1a:	687b      	ldr	r3, [r7, #4]
 8002a1c:	681b      	ldr	r3, [r3, #0]
 8002a1e:	220c      	movs	r2, #12
 8002a20:	4393      	bics	r3, r2
 8002a22:	001a      	movs	r2, r3
 8002a24:	683b      	ldr	r3, [r7, #0]
 8002a26:	431a      	orrs	r2, r3
 8002a28:	687b      	ldr	r3, [r7, #4]
 8002a2a:	601a      	str	r2, [r3, #0]
 8002a2c:	46c0      	nop			; (mov r8, r8)
 8002a2e:	46bd      	mov	sp, r7
 8002a30:	b002      	add	sp, #8
 8002a32:	bd80      	pop	{r7, pc}

08002a34 <LL_USART_SetParity>:
 8002a34:	b580      	push	{r7, lr}
 8002a36:	b082      	sub	sp, #8
 8002a38:	af00      	add	r7, sp, #0
 8002a3a:	6078      	str	r0, [r7, #4]
 8002a3c:	6039      	str	r1, [r7, #0]
 8002a3e:	687b      	ldr	r3, [r7, #4]
 8002a40:	681b      	ldr	r3, [r3, #0]
 8002a42:	4a05      	ldr	r2, [pc, #20]	; (8002a58 <LL_USART_SetParity+0x24>)
 8002a44:	401a      	ands	r2, r3
 8002a46:	683b      	ldr	r3, [r7, #0]
 8002a48:	431a      	orrs	r2, r3
 8002a4a:	687b      	ldr	r3, [r7, #4]
 8002a4c:	601a      	str	r2, [r3, #0]
 8002a4e:	46c0      	nop			; (mov r8, r8)
 8002a50:	46bd      	mov	sp, r7
 8002a52:	b002      	add	sp, #8
 8002a54:	bd80      	pop	{r7, pc}
 8002a56:	46c0      	nop			; (mov r8, r8)
 8002a58:	fffff9ff 	.word	0xfffff9ff

08002a5c <LL_USART_SetDataWidth>:
 8002a5c:	b580      	push	{r7, lr}
 8002a5e:	b082      	sub	sp, #8
 8002a60:	af00      	add	r7, sp, #0
 8002a62:	6078      	str	r0, [r7, #4]
 8002a64:	6039      	str	r1, [r7, #0]
 8002a66:	687b      	ldr	r3, [r7, #4]
 8002a68:	681b      	ldr	r3, [r3, #0]
 8002a6a:	4a05      	ldr	r2, [pc, #20]	; (8002a80 <LL_USART_SetDataWidth+0x24>)
 8002a6c:	401a      	ands	r2, r3
 8002a6e:	683b      	ldr	r3, [r7, #0]
 8002a70:	431a      	orrs	r2, r3
 8002a72:	687b      	ldr	r3, [r7, #4]
 8002a74:	601a      	str	r2, [r3, #0]
 8002a76:	46c0      	nop			; (mov r8, r8)
 8002a78:	46bd      	mov	sp, r7
 8002a7a:	b002      	add	sp, #8
 8002a7c:	bd80      	pop	{r7, pc}
 8002a7e:	46c0      	nop			; (mov r8, r8)
 8002a80:	ffffefff 	.word	0xffffefff

08002a84 <LL_USART_SetStopBitsLength>:
 8002a84:	b580      	push	{r7, lr}
 8002a86:	b082      	sub	sp, #8
 8002a88:	af00      	add	r7, sp, #0
 8002a8a:	6078      	str	r0, [r7, #4]
 8002a8c:	6039      	str	r1, [r7, #0]
 8002a8e:	687b      	ldr	r3, [r7, #4]
 8002a90:	685b      	ldr	r3, [r3, #4]
 8002a92:	4a05      	ldr	r2, [pc, #20]	; (8002aa8 <LL_USART_SetStopBitsLength+0x24>)
 8002a94:	401a      	ands	r2, r3
 8002a96:	683b      	ldr	r3, [r7, #0]
 8002a98:	431a      	orrs	r2, r3
 8002a9a:	687b      	ldr	r3, [r7, #4]
 8002a9c:	605a      	str	r2, [r3, #4]
 8002a9e:	46c0      	nop			; (mov r8, r8)
 8002aa0:	46bd      	mov	sp, r7
 8002aa2:	b002      	add	sp, #8
 8002aa4:	bd80      	pop	{r7, pc}
 8002aa6:	46c0      	nop			; (mov r8, r8)
 8002aa8:	ffffcfff 	.word	0xffffcfff

08002aac <LL_USART_SetTransferBitOrder>:
 8002aac:	b580      	push	{r7, lr}
 8002aae:	b082      	sub	sp, #8
 8002ab0:	af00      	add	r7, sp, #0
 8002ab2:	6078      	str	r0, [r7, #4]
 8002ab4:	6039      	str	r1, [r7, #0]
 8002ab6:	687b      	ldr	r3, [r7, #4]
 8002ab8:	685b      	ldr	r3, [r3, #4]
 8002aba:	4a05      	ldr	r2, [pc, #20]	; (8002ad0 <LL_USART_SetTransferBitOrder+0x24>)
 8002abc:	401a      	ands	r2, r3
 8002abe:	683b      	ldr	r3, [r7, #0]
 8002ac0:	431a      	orrs	r2, r3
 8002ac2:	687b      	ldr	r3, [r7, #4]
 8002ac4:	605a      	str	r2, [r3, #4]
 8002ac6:	46c0      	nop			; (mov r8, r8)
 8002ac8:	46bd      	mov	sp, r7
 8002aca:	b002      	add	sp, #8
 8002acc:	bd80      	pop	{r7, pc}
 8002ace:	46c0      	nop			; (mov r8, r8)
 8002ad0:	fff7ffff 	.word	0xfff7ffff

08002ad4 <LL_USART_SetBaudRate>:
 8002ad4:	b5b0      	push	{r4, r5, r7, lr}
 8002ad6:	b084      	sub	sp, #16
 8002ad8:	af00      	add	r7, sp, #0
 8002ada:	60f8      	str	r0, [r7, #12]
 8002adc:	60b9      	str	r1, [r7, #8]
 8002ade:	607a      	str	r2, [r7, #4]
 8002ae0:	603b      	str	r3, [r7, #0]
 8002ae2:	687a      	ldr	r2, [r7, #4]
 8002ae4:	2380      	movs	r3, #128	; 0x80
 8002ae6:	021b      	lsls	r3, r3, #8
 8002ae8:	429a      	cmp	r2, r3
 8002aea:	d117      	bne.n	8002b1c <LL_USART_SetBaudRate+0x48>
 8002aec:	68bb      	ldr	r3, [r7, #8]
 8002aee:	005a      	lsls	r2, r3, #1
 8002af0:	683b      	ldr	r3, [r7, #0]
 8002af2:	085b      	lsrs	r3, r3, #1
 8002af4:	18d3      	adds	r3, r2, r3
 8002af6:	6839      	ldr	r1, [r7, #0]
 8002af8:	0018      	movs	r0, r3
 8002afa:	f7fd fb05 	bl	8000108 <__udivsi3>
 8002afe:	0003      	movs	r3, r0
 8002b00:	b29b      	uxth	r3, r3
 8002b02:	001d      	movs	r5, r3
 8002b04:	4b0e      	ldr	r3, [pc, #56]	; (8002b40 <LL_USART_SetBaudRate+0x6c>)
 8002b06:	402b      	ands	r3, r5
 8002b08:	001c      	movs	r4, r3
 8002b0a:	086b      	lsrs	r3, r5, #1
 8002b0c:	b29b      	uxth	r3, r3
 8002b0e:	001a      	movs	r2, r3
 8002b10:	2307      	movs	r3, #7
 8002b12:	4013      	ands	r3, r2
 8002b14:	431c      	orrs	r4, r3
 8002b16:	68fb      	ldr	r3, [r7, #12]
 8002b18:	60dc      	str	r4, [r3, #12]
 8002b1a:	e00c      	b.n	8002b36 <LL_USART_SetBaudRate+0x62>
 8002b1c:	683b      	ldr	r3, [r7, #0]
 8002b1e:	085a      	lsrs	r2, r3, #1
 8002b20:	68bb      	ldr	r3, [r7, #8]
 8002b22:	18d3      	adds	r3, r2, r3
 8002b24:	6839      	ldr	r1, [r7, #0]
 8002b26:	0018      	movs	r0, r3
 8002b28:	f7fd faee 	bl	8000108 <__udivsi3>
 8002b2c:	0003      	movs	r3, r0
 8002b2e:	b29b      	uxth	r3, r3
 8002b30:	001a      	movs	r2, r3
 8002b32:	68fb      	ldr	r3, [r7, #12]
 8002b34:	60da      	str	r2, [r3, #12]
 8002b36:	46c0      	nop			; (mov r8, r8)
 8002b38:	46bd      	mov	sp, r7
 8002b3a:	b004      	add	sp, #16
 8002b3c:	bdb0      	pop	{r4, r5, r7, pc}
 8002b3e:	46c0      	nop			; (mov r8, r8)
 8002b40:	0000fff0 	.word	0x0000fff0

08002b44 <LL_USART_IsActiveFlag_TC>:
 8002b44:	b580      	push	{r7, lr}
 8002b46:	b082      	sub	sp, #8
 8002b48:	af00      	add	r7, sp, #0
 8002b4a:	6078      	str	r0, [r7, #4]
 8002b4c:	687b      	ldr	r3, [r7, #4]
 8002b4e:	69db      	ldr	r3, [r3, #28]
 8002b50:	2240      	movs	r2, #64	; 0x40
 8002b52:	4013      	ands	r3, r2
 8002b54:	3b40      	subs	r3, #64	; 0x40
 8002b56:	425a      	negs	r2, r3
 8002b58:	4153      	adcs	r3, r2
 8002b5a:	b2db      	uxtb	r3, r3
 8002b5c:	0018      	movs	r0, r3
 8002b5e:	46bd      	mov	sp, r7
 8002b60:	b002      	add	sp, #8
 8002b62:	bd80      	pop	{r7, pc}

08002b64 <LL_USART_IsActiveFlag_TXE>:
 8002b64:	b580      	push	{r7, lr}
 8002b66:	b082      	sub	sp, #8
 8002b68:	af00      	add	r7, sp, #0
 8002b6a:	6078      	str	r0, [r7, #4]
 8002b6c:	687b      	ldr	r3, [r7, #4]
 8002b6e:	69db      	ldr	r3, [r3, #28]
 8002b70:	2280      	movs	r2, #128	; 0x80
 8002b72:	4013      	ands	r3, r2
 8002b74:	3b80      	subs	r3, #128	; 0x80
 8002b76:	425a      	negs	r2, r3
 8002b78:	4153      	adcs	r3, r2
 8002b7a:	b2db      	uxtb	r3, r3
 8002b7c:	0018      	movs	r0, r3
 8002b7e:	46bd      	mov	sp, r7
 8002b80:	b002      	add	sp, #8
 8002b82:	bd80      	pop	{r7, pc}

08002b84 <LL_USART_IsActiveFlag_TEACK>:
 8002b84:	b580      	push	{r7, lr}
 8002b86:	b082      	sub	sp, #8
 8002b88:	af00      	add	r7, sp, #0
 8002b8a:	6078      	str	r0, [r7, #4]
 8002b8c:	687b      	ldr	r3, [r7, #4]
 8002b8e:	69da      	ldr	r2, [r3, #28]
 8002b90:	2380      	movs	r3, #128	; 0x80
 8002b92:	039b      	lsls	r3, r3, #14
 8002b94:	4013      	ands	r3, r2
 8002b96:	4a05      	ldr	r2, [pc, #20]	; (8002bac <LL_USART_IsActiveFlag_TEACK+0x28>)
 8002b98:	4694      	mov	ip, r2
 8002b9a:	4463      	add	r3, ip
 8002b9c:	425a      	negs	r2, r3
 8002b9e:	4153      	adcs	r3, r2
 8002ba0:	b2db      	uxtb	r3, r3
 8002ba2:	0018      	movs	r0, r3
 8002ba4:	46bd      	mov	sp, r7
 8002ba6:	b002      	add	sp, #8
 8002ba8:	bd80      	pop	{r7, pc}
 8002baa:	46c0      	nop			; (mov r8, r8)
 8002bac:	ffe00000 	.word	0xffe00000

08002bb0 <LL_USART_IsActiveFlag_REACK>:
 8002bb0:	b580      	push	{r7, lr}
 8002bb2:	b082      	sub	sp, #8
 8002bb4:	af00      	add	r7, sp, #0
 8002bb6:	6078      	str	r0, [r7, #4]
 8002bb8:	687b      	ldr	r3, [r7, #4]
 8002bba:	69da      	ldr	r2, [r3, #28]
 8002bbc:	2380      	movs	r3, #128	; 0x80
 8002bbe:	03db      	lsls	r3, r3, #15
 8002bc0:	4013      	ands	r3, r2
 8002bc2:	4a05      	ldr	r2, [pc, #20]	; (8002bd8 <LL_USART_IsActiveFlag_REACK+0x28>)
 8002bc4:	4694      	mov	ip, r2
 8002bc6:	4463      	add	r3, ip
 8002bc8:	425a      	negs	r2, r3
 8002bca:	4153      	adcs	r3, r2
 8002bcc:	b2db      	uxtb	r3, r3
 8002bce:	0018      	movs	r0, r3
 8002bd0:	46bd      	mov	sp, r7
 8002bd2:	b002      	add	sp, #8
 8002bd4:	bd80      	pop	{r7, pc}
 8002bd6:	46c0      	nop			; (mov r8, r8)
 8002bd8:	ffc00000 	.word	0xffc00000

08002bdc <LL_USART_ClearFlag_TC>:
 8002bdc:	b580      	push	{r7, lr}
 8002bde:	b082      	sub	sp, #8
 8002be0:	af00      	add	r7, sp, #0
 8002be2:	6078      	str	r0, [r7, #4]
 8002be4:	687b      	ldr	r3, [r7, #4]
 8002be6:	2240      	movs	r2, #64	; 0x40
 8002be8:	621a      	str	r2, [r3, #32]
 8002bea:	46c0      	nop			; (mov r8, r8)
 8002bec:	46bd      	mov	sp, r7
 8002bee:	b002      	add	sp, #8
 8002bf0:	bd80      	pop	{r7, pc}

08002bf2 <LL_USART_EnableIT_IDLE>:
 8002bf2:	b580      	push	{r7, lr}
 8002bf4:	b082      	sub	sp, #8
 8002bf6:	af00      	add	r7, sp, #0
 8002bf8:	6078      	str	r0, [r7, #4]
 8002bfa:	687b      	ldr	r3, [r7, #4]
 8002bfc:	681b      	ldr	r3, [r3, #0]
 8002bfe:	2210      	movs	r2, #16
 8002c00:	431a      	orrs	r2, r3
 8002c02:	687b      	ldr	r3, [r7, #4]
 8002c04:	601a      	str	r2, [r3, #0]
 8002c06:	46c0      	nop			; (mov r8, r8)
 8002c08:	46bd      	mov	sp, r7
 8002c0a:	b002      	add	sp, #8
 8002c0c:	bd80      	pop	{r7, pc}

08002c0e <LL_USART_EnableIT_RXNE>:
 8002c0e:	b580      	push	{r7, lr}
 8002c10:	b082      	sub	sp, #8
 8002c12:	af00      	add	r7, sp, #0
 8002c14:	6078      	str	r0, [r7, #4]
 8002c16:	687b      	ldr	r3, [r7, #4]
 8002c18:	681b      	ldr	r3, [r3, #0]
 8002c1a:	2220      	movs	r2, #32
 8002c1c:	431a      	orrs	r2, r3
 8002c1e:	687b      	ldr	r3, [r7, #4]
 8002c20:	601a      	str	r2, [r3, #0]
 8002c22:	46c0      	nop			; (mov r8, r8)
 8002c24:	46bd      	mov	sp, r7
 8002c26:	b002      	add	sp, #8
 8002c28:	bd80      	pop	{r7, pc}

08002c2a <LL_USART_TransmitData8>:
 8002c2a:	b580      	push	{r7, lr}
 8002c2c:	b082      	sub	sp, #8
 8002c2e:	af00      	add	r7, sp, #0
 8002c30:	6078      	str	r0, [r7, #4]
 8002c32:	000a      	movs	r2, r1
 8002c34:	1cfb      	adds	r3, r7, #3
 8002c36:	701a      	strb	r2, [r3, #0]
 8002c38:	1cfb      	adds	r3, r7, #3
 8002c3a:	781b      	ldrb	r3, [r3, #0]
 8002c3c:	b29a      	uxth	r2, r3
 8002c3e:	687b      	ldr	r3, [r7, #4]
 8002c40:	851a      	strh	r2, [r3, #40]	; 0x28
 8002c42:	46c0      	nop			; (mov r8, r8)
 8002c44:	46bd      	mov	sp, r7
 8002c46:	b002      	add	sp, #8
 8002c48:	bd80      	pop	{r7, pc}
	...

08002c4c <LL_InitTick>:
 8002c4c:	b580      	push	{r7, lr}
 8002c4e:	b082      	sub	sp, #8
 8002c50:	af00      	add	r7, sp, #0
 8002c52:	6078      	str	r0, [r7, #4]
 8002c54:	6039      	str	r1, [r7, #0]
 8002c56:	6839      	ldr	r1, [r7, #0]
 8002c58:	6878      	ldr	r0, [r7, #4]
 8002c5a:	f7fd fa55 	bl	8000108 <__udivsi3>
 8002c5e:	0003      	movs	r3, r0
 8002c60:	001a      	movs	r2, r3
 8002c62:	4b06      	ldr	r3, [pc, #24]	; (8002c7c <LL_InitTick+0x30>)
 8002c64:	3a01      	subs	r2, #1
 8002c66:	605a      	str	r2, [r3, #4]
 8002c68:	4b04      	ldr	r3, [pc, #16]	; (8002c7c <LL_InitTick+0x30>)
 8002c6a:	2200      	movs	r2, #0
 8002c6c:	609a      	str	r2, [r3, #8]
 8002c6e:	4b03      	ldr	r3, [pc, #12]	; (8002c7c <LL_InitTick+0x30>)
 8002c70:	2205      	movs	r2, #5
 8002c72:	601a      	str	r2, [r3, #0]
 8002c74:	46c0      	nop			; (mov r8, r8)
 8002c76:	46bd      	mov	sp, r7
 8002c78:	b002      	add	sp, #8
 8002c7a:	bd80      	pop	{r7, pc}
 8002c7c:	e000e010 	.word	0xe000e010

08002c80 <LL_SYSTICK_EnableIT>:
 8002c80:	b580      	push	{r7, lr}
 8002c82:	af00      	add	r7, sp, #0
 8002c84:	4b04      	ldr	r3, [pc, #16]	; (8002c98 <LL_SYSTICK_EnableIT+0x18>)
 8002c86:	681a      	ldr	r2, [r3, #0]
 8002c88:	4b03      	ldr	r3, [pc, #12]	; (8002c98 <LL_SYSTICK_EnableIT+0x18>)
 8002c8a:	2102      	movs	r1, #2
 8002c8c:	430a      	orrs	r2, r1
 8002c8e:	601a      	str	r2, [r3, #0]
 8002c90:	46c0      	nop			; (mov r8, r8)
 8002c92:	46bd      	mov	sp, r7
 8002c94:	bd80      	pop	{r7, pc}
 8002c96:	46c0      	nop			; (mov r8, r8)
 8002c98:	e000e010 	.word	0xe000e010

08002c9c <mask_indicator>:
 8002c9c:	b580      	push	{r7, lr}
 8002c9e:	b082      	sub	sp, #8
 8002ca0:	af00      	add	r7, sp, #0
 8002ca2:	6078      	str	r0, [r7, #4]
 8002ca4:	687b      	ldr	r3, [r7, #4]
 8002ca6:	09db      	lsrs	r3, r3, #7
 8002ca8:	2201      	movs	r2, #1
 8002caa:	4013      	ands	r3, r2
 8002cac:	01da      	lsls	r2, r3, #7
 8002cae:	687b      	ldr	r3, [r7, #4]
 8002cb0:	099b      	lsrs	r3, r3, #6
 8002cb2:	2101      	movs	r1, #1
 8002cb4:	400b      	ands	r3, r1
 8002cb6:	019b      	lsls	r3, r3, #6
 8002cb8:	431a      	orrs	r2, r3
 8002cba:	687b      	ldr	r3, [r7, #4]
 8002cbc:	095b      	lsrs	r3, r3, #5
 8002cbe:	2101      	movs	r1, #1
 8002cc0:	400b      	ands	r3, r1
 8002cc2:	015b      	lsls	r3, r3, #5
 8002cc4:	431a      	orrs	r2, r3
 8002cc6:	687b      	ldr	r3, [r7, #4]
 8002cc8:	091b      	lsrs	r3, r3, #4
 8002cca:	2101      	movs	r1, #1
 8002ccc:	400b      	ands	r3, r1
 8002cce:	011b      	lsls	r3, r3, #4
 8002cd0:	431a      	orrs	r2, r3
 8002cd2:	687b      	ldr	r3, [r7, #4]
 8002cd4:	08db      	lsrs	r3, r3, #3
 8002cd6:	2101      	movs	r1, #1
 8002cd8:	400b      	ands	r3, r1
 8002cda:	00db      	lsls	r3, r3, #3
 8002cdc:	431a      	orrs	r2, r3
 8002cde:	687b      	ldr	r3, [r7, #4]
 8002ce0:	089b      	lsrs	r3, r3, #2
 8002ce2:	2101      	movs	r1, #1
 8002ce4:	400b      	ands	r3, r1
 8002ce6:	009b      	lsls	r3, r3, #2
 8002ce8:	431a      	orrs	r2, r3
 8002cea:	687b      	ldr	r3, [r7, #4]
 8002cec:	085b      	lsrs	r3, r3, #1
 8002cee:	2101      	movs	r1, #1
 8002cf0:	400b      	ands	r3, r1
 8002cf2:	005b      	lsls	r3, r3, #1
 8002cf4:	431a      	orrs	r2, r3
 8002cf6:	687b      	ldr	r3, [r7, #4]
 8002cf8:	2101      	movs	r1, #1
 8002cfa:	400b      	ands	r3, r1
 8002cfc:	4313      	orrs	r3, r2
 8002cfe:	0018      	movs	r0, r3
 8002d00:	46bd      	mov	sp, r7
 8002d02:	b002      	add	sp, #8
 8002d04:	bd80      	pop	{r7, pc}
	...

08002d08 <rcc_config>:
 8002d08:	b580      	push	{r7, lr}
 8002d0a:	af00      	add	r7, sp, #0
 8002d0c:	2001      	movs	r0, #1
 8002d0e:	f7ff fb2d 	bl	800236c <LL_FLASH_SetLatency>
 8002d12:	f7ff fa61 	bl	80021d8 <LL_RCC_HSI_Enable>
 8002d16:	46c0      	nop			; (mov r8, r8)
 8002d18:	f7ff fa6c 	bl	80021f4 <LL_RCC_HSI_IsReady>
 8002d1c:	0003      	movs	r3, r0
 8002d1e:	2b01      	cmp	r3, #1
 8002d20:	d1fa      	bne.n	8002d18 <rcc_config+0x10>
 8002d22:	23a0      	movs	r3, #160	; 0xa0
 8002d24:	039b      	lsls	r3, r3, #14
 8002d26:	0019      	movs	r1, r3
 8002d28:	2000      	movs	r0, #0
 8002d2a:	f7ff faf9 	bl	8002320 <LL_RCC_PLL_ConfigDomain_SYS>
 8002d2e:	f7ff fad5 	bl	80022dc <LL_RCC_PLL_Enable>
 8002d32:	46c0      	nop			; (mov r8, r8)
 8002d34:	f7ff fae0 	bl	80022f8 <LL_RCC_PLL_IsReady>
 8002d38:	0003      	movs	r3, r0
 8002d3a:	2b01      	cmp	r3, #1
 8002d3c:	d1fa      	bne.n	8002d34 <rcc_config+0x2c>
 8002d3e:	2000      	movs	r0, #0
 8002d40:	f7ff fa88 	bl	8002254 <LL_RCC_SetAHBPrescaler>
 8002d44:	2002      	movs	r0, #2
 8002d46:	f7ff fa65 	bl	8002214 <LL_RCC_SetSysClkSource>
 8002d4a:	46c0      	nop			; (mov r8, r8)
 8002d4c:	f7ff fa76 	bl	800223c <LL_RCC_GetSysClkSource>
 8002d50:	0003      	movs	r3, r0
 8002d52:	2b08      	cmp	r3, #8
 8002d54:	d1fa      	bne.n	8002d4c <rcc_config+0x44>
 8002d56:	2000      	movs	r0, #0
 8002d58:	f7ff fa90 	bl	800227c <LL_RCC_SetAPB1Prescaler>
 8002d5c:	4b02      	ldr	r3, [pc, #8]	; (8002d68 <rcc_config+0x60>)
 8002d5e:	4a03      	ldr	r2, [pc, #12]	; (8002d6c <rcc_config+0x64>)
 8002d60:	601a      	str	r2, [r3, #0]
 8002d62:	46c0      	nop			; (mov r8, r8)
 8002d64:	46bd      	mov	sp, r7
 8002d66:	bd80      	pop	{r7, pc}
 8002d68:	20000004 	.word	0x20000004
 8002d6c:	02dc6c00 	.word	0x02dc6c00

08002d70 <gpio_config>:
 8002d70:	b580      	push	{r7, lr}
 8002d72:	af00      	add	r7, sp, #0
 8002d74:	2380      	movs	r3, #128	; 0x80
 8002d76:	031b      	lsls	r3, r3, #12
 8002d78:	0018      	movs	r0, r3
 8002d7a:	f7ff fb0b 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 8002d7e:	2380      	movs	r3, #128	; 0x80
 8002d80:	005b      	lsls	r3, r3, #1
 8002d82:	482e      	ldr	r0, [pc, #184]	; (8002e3c <gpio_config+0xcc>)
 8002d84:	2201      	movs	r2, #1
 8002d86:	0019      	movs	r1, r3
 8002d88:	f7ff fb46 	bl	8002418 <LL_GPIO_SetPinMode>
 8002d8c:	2380      	movs	r3, #128	; 0x80
 8002d8e:	009b      	lsls	r3, r3, #2
 8002d90:	482a      	ldr	r0, [pc, #168]	; (8002e3c <gpio_config+0xcc>)
 8002d92:	2201      	movs	r2, #1
 8002d94:	0019      	movs	r1, r3
 8002d96:	f7ff fb3f 	bl	8002418 <LL_GPIO_SetPinMode>
 8002d9a:	4b28      	ldr	r3, [pc, #160]	; (8002e3c <gpio_config+0xcc>)
 8002d9c:	2201      	movs	r2, #1
 8002d9e:	2101      	movs	r1, #1
 8002da0:	0018      	movs	r0, r3
 8002da2:	f7ff fb39 	bl	8002418 <LL_GPIO_SetPinMode>
 8002da6:	4b25      	ldr	r3, [pc, #148]	; (8002e3c <gpio_config+0xcc>)
 8002da8:	2201      	movs	r2, #1
 8002daa:	2102      	movs	r1, #2
 8002dac:	0018      	movs	r0, r3
 8002dae:	f7ff fb33 	bl	8002418 <LL_GPIO_SetPinMode>
 8002db2:	4b22      	ldr	r3, [pc, #136]	; (8002e3c <gpio_config+0xcc>)
 8002db4:	2201      	movs	r2, #1
 8002db6:	2104      	movs	r1, #4
 8002db8:	0018      	movs	r0, r3
 8002dba:	f7ff fb2d 	bl	8002418 <LL_GPIO_SetPinMode>
 8002dbe:	4b1f      	ldr	r3, [pc, #124]	; (8002e3c <gpio_config+0xcc>)
 8002dc0:	2201      	movs	r2, #1
 8002dc2:	2108      	movs	r1, #8
 8002dc4:	0018      	movs	r0, r3
 8002dc6:	f7ff fb27 	bl	8002418 <LL_GPIO_SetPinMode>
 8002dca:	2380      	movs	r3, #128	; 0x80
 8002dcc:	02db      	lsls	r3, r3, #11
 8002dce:	0018      	movs	r0, r3
 8002dd0:	f7ff fae0 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 8002dd4:	4b1a      	ldr	r3, [pc, #104]	; (8002e40 <gpio_config+0xd0>)
 8002dd6:	2201      	movs	r2, #1
 8002dd8:	2101      	movs	r1, #1
 8002dda:	0018      	movs	r0, r3
 8002ddc:	f7ff fb1c 	bl	8002418 <LL_GPIO_SetPinMode>
 8002de0:	4b17      	ldr	r3, [pc, #92]	; (8002e40 <gpio_config+0xd0>)
 8002de2:	2201      	movs	r2, #1
 8002de4:	2102      	movs	r1, #2
 8002de6:	0018      	movs	r0, r3
 8002de8:	f7ff fb16 	bl	8002418 <LL_GPIO_SetPinMode>
 8002dec:	4b14      	ldr	r3, [pc, #80]	; (8002e40 <gpio_config+0xd0>)
 8002dee:	2201      	movs	r2, #1
 8002df0:	2104      	movs	r1, #4
 8002df2:	0018      	movs	r0, r3
 8002df4:	f7ff fb10 	bl	8002418 <LL_GPIO_SetPinMode>
 8002df8:	4b11      	ldr	r3, [pc, #68]	; (8002e40 <gpio_config+0xd0>)
 8002dfa:	2201      	movs	r2, #1
 8002dfc:	2108      	movs	r1, #8
 8002dfe:	0018      	movs	r0, r3
 8002e00:	f7ff fb0a 	bl	8002418 <LL_GPIO_SetPinMode>
 8002e04:	4b0e      	ldr	r3, [pc, #56]	; (8002e40 <gpio_config+0xd0>)
 8002e06:	2201      	movs	r2, #1
 8002e08:	2110      	movs	r1, #16
 8002e0a:	0018      	movs	r0, r3
 8002e0c:	f7ff fb04 	bl	8002418 <LL_GPIO_SetPinMode>
 8002e10:	4b0b      	ldr	r3, [pc, #44]	; (8002e40 <gpio_config+0xd0>)
 8002e12:	2201      	movs	r2, #1
 8002e14:	2120      	movs	r1, #32
 8002e16:	0018      	movs	r0, r3
 8002e18:	f7ff fafe 	bl	8002418 <LL_GPIO_SetPinMode>
 8002e1c:	4b08      	ldr	r3, [pc, #32]	; (8002e40 <gpio_config+0xd0>)
 8002e1e:	2201      	movs	r2, #1
 8002e20:	2140      	movs	r1, #64	; 0x40
 8002e22:	0018      	movs	r0, r3
 8002e24:	f7ff faf8 	bl	8002418 <LL_GPIO_SetPinMode>
 8002e28:	4b05      	ldr	r3, [pc, #20]	; (8002e40 <gpio_config+0xd0>)
 8002e2a:	2201      	movs	r2, #1
 8002e2c:	2180      	movs	r1, #128	; 0x80
 8002e2e:	0018      	movs	r0, r3
 8002e30:	f7ff faf2 	bl	8002418 <LL_GPIO_SetPinMode>
 8002e34:	46c0      	nop			; (mov r8, r8)
 8002e36:	46bd      	mov	sp, r7
 8002e38:	bd80      	pop	{r7, pc}
 8002e3a:	46c0      	nop			; (mov r8, r8)
 8002e3c:	48000800 	.word	0x48000800
 8002e40:	48000400 	.word	0x48000400

08002e44 <dec_display>:
 8002e44:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002e46:	b089      	sub	sp, #36	; 0x24
 8002e48:	af00      	add	r7, sp, #0
 8002e4a:	6078      	str	r0, [r7, #4]
 8002e4c:	241e      	movs	r4, #30
 8002e4e:	193b      	adds	r3, r7, r4
 8002e50:	2200      	movs	r2, #0
 8002e52:	801a      	strh	r2, [r3, #0]
 8002e54:	2508      	movs	r5, #8
 8002e56:	197b      	adds	r3, r7, r5
 8002e58:	4a44      	ldr	r2, [pc, #272]	; (8002f6c <dec_display+0x128>)
 8002e5a:	ca43      	ldmia	r2!, {r0, r1, r6}
 8002e5c:	c343      	stmia	r3!, {r0, r1, r6}
 8002e5e:	ca03      	ldmia	r2!, {r0, r1}
 8002e60:	c303      	stmia	r3!, {r0, r1}
 8002e62:	200f      	movs	r0, #15
 8002e64:	f7ff ff1a 	bl	8002c9c <mask_indicator>
 8002e68:	0003      	movs	r3, r0
 8002e6a:	4a41      	ldr	r2, [pc, #260]	; (8002f70 <dec_display+0x12c>)
 8002e6c:	0019      	movs	r1, r3
 8002e6e:	0010      	movs	r0, r2
 8002e70:	f7ff fb6c 	bl	800254c <LL_GPIO_WriteOutputPort>
 8002e74:	4b3f      	ldr	r3, [pc, #252]	; (8002f74 <dec_display+0x130>)
 8002e76:	681b      	ldr	r3, [r3, #0]
 8002e78:	2201      	movs	r2, #1
 8002e7a:	409a      	lsls	r2, r3
 8002e7c:	0013      	movs	r3, r2
 8002e7e:	0018      	movs	r0, r3
 8002e80:	f7ff ff0c 	bl	8002c9c <mask_indicator>
 8002e84:	0003      	movs	r3, r0
 8002e86:	4a3a      	ldr	r2, [pc, #232]	; (8002f70 <dec_display+0x12c>)
 8002e88:	0019      	movs	r1, r3
 8002e8a:	0010      	movs	r0, r2
 8002e8c:	f7ff fb6a 	bl	8002564 <LL_GPIO_ResetOutputPin>
 8002e90:	4b38      	ldr	r3, [pc, #224]	; (8002f74 <dec_display+0x130>)
 8002e92:	681b      	ldr	r3, [r3, #0]
 8002e94:	2b00      	cmp	r3, #0
 8002e96:	d10b      	bne.n	8002eb0 <dec_display+0x6c>
 8002e98:	687b      	ldr	r3, [r7, #4]
 8002e9a:	210a      	movs	r1, #10
 8002e9c:	0018      	movs	r0, r3
 8002e9e:	f7fd f9b9 	bl	8000214 <__aeabi_uidivmod>
 8002ea2:	000b      	movs	r3, r1
 8002ea4:	0019      	movs	r1, r3
 8002ea6:	193b      	adds	r3, r7, r4
 8002ea8:	197a      	adds	r2, r7, r5
 8002eaa:	0049      	lsls	r1, r1, #1
 8002eac:	5a8a      	ldrh	r2, [r1, r2]
 8002eae:	801a      	strh	r2, [r3, #0]
 8002eb0:	4b30      	ldr	r3, [pc, #192]	; (8002f74 <dec_display+0x130>)
 8002eb2:	681b      	ldr	r3, [r3, #0]
 8002eb4:	2b01      	cmp	r3, #1
 8002eb6:	d112      	bne.n	8002ede <dec_display+0x9a>
 8002eb8:	687b      	ldr	r3, [r7, #4]
 8002eba:	210a      	movs	r1, #10
 8002ebc:	0018      	movs	r0, r3
 8002ebe:	f7fd f923 	bl	8000108 <__udivsi3>
 8002ec2:	0003      	movs	r3, r0
 8002ec4:	210a      	movs	r1, #10
 8002ec6:	0018      	movs	r0, r3
 8002ec8:	f7fd f9a4 	bl	8000214 <__aeabi_uidivmod>
 8002ecc:	000b      	movs	r3, r1
 8002ece:	0019      	movs	r1, r3
 8002ed0:	231e      	movs	r3, #30
 8002ed2:	18fb      	adds	r3, r7, r3
 8002ed4:	2208      	movs	r2, #8
 8002ed6:	18ba      	adds	r2, r7, r2
 8002ed8:	0049      	lsls	r1, r1, #1
 8002eda:	5a8a      	ldrh	r2, [r1, r2]
 8002edc:	801a      	strh	r2, [r3, #0]
 8002ede:	4b25      	ldr	r3, [pc, #148]	; (8002f74 <dec_display+0x130>)
 8002ee0:	681b      	ldr	r3, [r3, #0]
 8002ee2:	2b02      	cmp	r3, #2
 8002ee4:	d112      	bne.n	8002f0c <dec_display+0xc8>
 8002ee6:	687b      	ldr	r3, [r7, #4]
 8002ee8:	2164      	movs	r1, #100	; 0x64
 8002eea:	0018      	movs	r0, r3
 8002eec:	f7fd f90c 	bl	8000108 <__udivsi3>
 8002ef0:	0003      	movs	r3, r0
 8002ef2:	210a      	movs	r1, #10
 8002ef4:	0018      	movs	r0, r3
 8002ef6:	f7fd f98d 	bl	8000214 <__aeabi_uidivmod>
 8002efa:	000b      	movs	r3, r1
 8002efc:	0019      	movs	r1, r3
 8002efe:	231e      	movs	r3, #30
 8002f00:	18fb      	adds	r3, r7, r3
 8002f02:	2208      	movs	r2, #8
 8002f04:	18ba      	adds	r2, r7, r2
 8002f06:	0049      	lsls	r1, r1, #1
 8002f08:	5a8a      	ldrh	r2, [r1, r2]
 8002f0a:	801a      	strh	r2, [r3, #0]
 8002f0c:	4b19      	ldr	r3, [pc, #100]	; (8002f74 <dec_display+0x130>)
 8002f0e:	681b      	ldr	r3, [r3, #0]
 8002f10:	2b03      	cmp	r3, #3
 8002f12:	d113      	bne.n	8002f3c <dec_display+0xf8>
 8002f14:	687b      	ldr	r3, [r7, #4]
 8002f16:	22fa      	movs	r2, #250	; 0xfa
 8002f18:	0091      	lsls	r1, r2, #2
 8002f1a:	0018      	movs	r0, r3
 8002f1c:	f7fd f8f4 	bl	8000108 <__udivsi3>
 8002f20:	0003      	movs	r3, r0
 8002f22:	210a      	movs	r1, #10
 8002f24:	0018      	movs	r0, r3
 8002f26:	f7fd f975 	bl	8000214 <__aeabi_uidivmod>
 8002f2a:	000b      	movs	r3, r1
 8002f2c:	0019      	movs	r1, r3
 8002f2e:	231e      	movs	r3, #30
 8002f30:	18fb      	adds	r3, r7, r3
 8002f32:	2208      	movs	r2, #8
 8002f34:	18ba      	adds	r2, r7, r2
 8002f36:	0049      	lsls	r1, r1, #1
 8002f38:	5a8a      	ldrh	r2, [r1, r2]
 8002f3a:	801a      	strh	r2, [r3, #0]
 8002f3c:	231e      	movs	r3, #30
 8002f3e:	18fb      	adds	r3, r7, r3
 8002f40:	881b      	ldrh	r3, [r3, #0]
 8002f42:	0018      	movs	r0, r3
 8002f44:	f7ff feaa 	bl	8002c9c <mask_indicator>
 8002f48:	0003      	movs	r3, r0
 8002f4a:	4a0b      	ldr	r2, [pc, #44]	; (8002f78 <dec_display+0x134>)
 8002f4c:	0019      	movs	r1, r3
 8002f4e:	0010      	movs	r0, r2
 8002f50:	f7ff fafc 	bl	800254c <LL_GPIO_WriteOutputPort>
 8002f54:	4b07      	ldr	r3, [pc, #28]	; (8002f74 <dec_display+0x130>)
 8002f56:	681b      	ldr	r3, [r3, #0]
 8002f58:	3301      	adds	r3, #1
 8002f5a:	2203      	movs	r2, #3
 8002f5c:	401a      	ands	r2, r3
 8002f5e:	4b05      	ldr	r3, [pc, #20]	; (8002f74 <dec_display+0x130>)
 8002f60:	601a      	str	r2, [r3, #0]
 8002f62:	46c0      	nop			; (mov r8, r8)
 8002f64:	46bd      	mov	sp, r7
 8002f66:	b009      	add	sp, #36	; 0x24
 8002f68:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002f6a:	46c0      	nop			; (mov r8, r8)
 8002f6c:	08005210 	.word	0x08005210
 8002f70:	48000800 	.word	0x48000800
 8002f74:	20000470 	.word	0x20000470
 8002f78:	48000400 	.word	0x48000400

08002f7c <sonar_trig>:
 8002f7c:	b580      	push	{r7, lr}
 8002f7e:	af00      	add	r7, sp, #0
 8002f80:	2380      	movs	r3, #128	; 0x80
 8002f82:	029b      	lsls	r3, r3, #10
 8002f84:	0018      	movs	r0, r3
 8002f86:	f7ff fa05 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 8002f8a:	2390      	movs	r3, #144	; 0x90
 8002f8c:	05db      	lsls	r3, r3, #23
 8002f8e:	2202      	movs	r2, #2
 8002f90:	2110      	movs	r1, #16
 8002f92:	0018      	movs	r0, r3
 8002f94:	f7ff fa40 	bl	8002418 <LL_GPIO_SetPinMode>
 8002f98:	2390      	movs	r3, #144	; 0x90
 8002f9a:	05db      	lsls	r3, r3, #23
 8002f9c:	2204      	movs	r2, #4
 8002f9e:	2110      	movs	r1, #16
 8002fa0:	0018      	movs	r0, r3
 8002fa2:	f7ff fa71 	bl	8002488 <LL_GPIO_SetAFPin_0_7>
 8002fa6:	2380      	movs	r3, #128	; 0x80
 8002fa8:	005b      	lsls	r3, r3, #1
 8002faa:	0018      	movs	r0, r3
 8002fac:	f7ff fa08 	bl	80023c0 <LL_APB1_GRP1_EnableClock>
 8002fb0:	4b18      	ldr	r3, [pc, #96]	; (8003014 <sonar_trig+0x98>)
 8002fb2:	212f      	movs	r1, #47	; 0x2f
 8002fb4:	0018      	movs	r0, r3
 8002fb6:	f7ff fb17 	bl	80025e8 <LL_TIM_SetPrescaler>
 8002fba:	4a17      	ldr	r2, [pc, #92]	; (8003018 <sonar_trig+0x9c>)
 8002fbc:	4b15      	ldr	r3, [pc, #84]	; (8003014 <sonar_trig+0x98>)
 8002fbe:	0011      	movs	r1, r2
 8002fc0:	0018      	movs	r0, r3
 8002fc2:	f7ff fb1d 	bl	8002600 <LL_TIM_SetAutoReload>
 8002fc6:	4a15      	ldr	r2, [pc, #84]	; (800301c <sonar_trig+0xa0>)
 8002fc8:	4b12      	ldr	r3, [pc, #72]	; (8003014 <sonar_trig+0x98>)
 8002fca:	0011      	movs	r1, r2
 8002fcc:	0018      	movs	r0, r3
 8002fce:	f7ff fbc3 	bl	8002758 <LL_TIM_OC_SetCompareCH1>
 8002fd2:	4b10      	ldr	r3, [pc, #64]	; (8003014 <sonar_trig+0x98>)
 8002fd4:	2101      	movs	r1, #1
 8002fd6:	0018      	movs	r0, r3
 8002fd8:	f7ff fb1e 	bl	8002618 <LL_TIM_CC_EnableChannel>
 8002fdc:	4b0d      	ldr	r3, [pc, #52]	; (8003014 <sonar_trig+0x98>)
 8002fde:	2200      	movs	r2, #0
 8002fe0:	2101      	movs	r1, #1
 8002fe2:	0018      	movs	r0, r3
 8002fe4:	f7ff fb74 	bl	80026d0 <LL_TIM_OC_SetPolarity>
 8002fe8:	4b0a      	ldr	r3, [pc, #40]	; (8003014 <sonar_trig+0x98>)
 8002fea:	2260      	movs	r2, #96	; 0x60
 8002fec:	2101      	movs	r1, #1
 8002fee:	0018      	movs	r0, r3
 8002ff0:	f7ff fb22 	bl	8002638 <LL_TIM_OC_SetMode>
 8002ff4:	4b07      	ldr	r3, [pc, #28]	; (8003014 <sonar_trig+0x98>)
 8002ff6:	2100      	movs	r1, #0
 8002ff8:	0018      	movs	r0, r3
 8002ffa:	f7ff facd 	bl	8002598 <LL_TIM_SetCounterMode>
 8002ffe:	4b05      	ldr	r3, [pc, #20]	; (8003014 <sonar_trig+0x98>)
 8003000:	0018      	movs	r0, r3
 8003002:	f7ff fccd 	bl	80029a0 <LL_TIM_EnableIT_CC1>
 8003006:	4b03      	ldr	r3, [pc, #12]	; (8003014 <sonar_trig+0x98>)
 8003008:	0018      	movs	r0, r3
 800300a:	f7ff fab7 	bl	800257c <LL_TIM_EnableCounter>
 800300e:	46c0      	nop			; (mov r8, r8)
 8003010:	46bd      	mov	sp, r7
 8003012:	bd80      	pop	{r7, pc}
 8003014:	40002000 	.word	0x40002000
 8003018:	0000ea5f 	.word	0x0000ea5f
 800301c:	0000ea55 	.word	0x0000ea55

08003020 <sonar_echo>:
 8003020:	b580      	push	{r7, lr}
 8003022:	af00      	add	r7, sp, #0
 8003024:	2380      	movs	r3, #128	; 0x80
 8003026:	029b      	lsls	r3, r3, #10
 8003028:	0018      	movs	r0, r3
 800302a:	f7ff f9b3 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 800302e:	2390      	movs	r3, #144	; 0x90
 8003030:	05db      	lsls	r3, r3, #23
 8003032:	2202      	movs	r2, #2
 8003034:	2180      	movs	r1, #128	; 0x80
 8003036:	0018      	movs	r0, r3
 8003038:	f7ff f9ee 	bl	8002418 <LL_GPIO_SetPinMode>
 800303c:	2390      	movs	r3, #144	; 0x90
 800303e:	05db      	lsls	r3, r3, #23
 8003040:	2201      	movs	r2, #1
 8003042:	2180      	movs	r1, #128	; 0x80
 8003044:	0018      	movs	r0, r3
 8003046:	f7ff fa1f 	bl	8002488 <LL_GPIO_SetAFPin_0_7>
 800304a:	2002      	movs	r0, #2
 800304c:	f7ff f9b8 	bl	80023c0 <LL_APB1_GRP1_EnableClock>
 8003050:	4b19      	ldr	r3, [pc, #100]	; (80030b8 <sonar_echo+0x98>)
 8003052:	212f      	movs	r1, #47	; 0x2f
 8003054:	0018      	movs	r0, r3
 8003056:	f7ff fac7 	bl	80025e8 <LL_TIM_SetPrescaler>
 800305a:	2380      	movs	r3, #128	; 0x80
 800305c:	025b      	lsls	r3, r3, #9
 800305e:	4816      	ldr	r0, [pc, #88]	; (80030b8 <sonar_echo+0x98>)
 8003060:	001a      	movs	r2, r3
 8003062:	2110      	movs	r1, #16
 8003064:	f7ff fb90 	bl	8002788 <LL_TIM_IC_SetActiveInput>
 8003068:	4b13      	ldr	r3, [pc, #76]	; (80030b8 <sonar_echo+0x98>)
 800306a:	2200      	movs	r2, #0
 800306c:	2110      	movs	r1, #16
 800306e:	0018      	movs	r0, r3
 8003070:	f7ff fbd6 	bl	8002820 <LL_TIM_IC_SetPrescaler>
 8003074:	4b10      	ldr	r3, [pc, #64]	; (80030b8 <sonar_echo+0x98>)
 8003076:	2200      	movs	r2, #0
 8003078:	2110      	movs	r1, #16
 800307a:	0018      	movs	r0, r3
 800307c:	f7ff fc1c 	bl	80028b8 <LL_TIM_IC_SetPolarity>
 8003080:	4b0d      	ldr	r3, [pc, #52]	; (80030b8 <sonar_echo+0x98>)
 8003082:	2100      	movs	r1, #0
 8003084:	0018      	movs	r0, r3
 8003086:	f7ff fa87 	bl	8002598 <LL_TIM_SetCounterMode>
 800308a:	4b0b      	ldr	r3, [pc, #44]	; (80030b8 <sonar_echo+0x98>)
 800308c:	2110      	movs	r1, #16
 800308e:	0018      	movs	r0, r3
 8003090:	f7ff fac2 	bl	8002618 <LL_TIM_CC_EnableChannel>
 8003094:	4b08      	ldr	r3, [pc, #32]	; (80030b8 <sonar_echo+0x98>)
 8003096:	0018      	movs	r0, r3
 8003098:	f7ff fc90 	bl	80029bc <LL_TIM_EnableIT_CC2>
 800309c:	4b06      	ldr	r3, [pc, #24]	; (80030b8 <sonar_echo+0x98>)
 800309e:	0018      	movs	r0, r3
 80030a0:	f7ff fa6c 	bl	800257c <LL_TIM_EnableCounter>
 80030a4:	2010      	movs	r0, #16
 80030a6:	f7ff f813 	bl	80020d0 <NVIC_EnableIRQ>
 80030aa:	2101      	movs	r1, #1
 80030ac:	2010      	movs	r0, #16
 80030ae:	f7ff f825 	bl	80020fc <NVIC_SetPriority>
 80030b2:	46c0      	nop			; (mov r8, r8)
 80030b4:	46bd      	mov	sp, r7
 80030b6:	bd80      	pop	{r7, pc}
 80030b8:	40000400 	.word	0x40000400

080030bc <servo_1>:
 80030bc:	b580      	push	{r7, lr}
 80030be:	af00      	add	r7, sp, #0
 80030c0:	2380      	movs	r3, #128	; 0x80
 80030c2:	029b      	lsls	r3, r3, #10
 80030c4:	0018      	movs	r0, r3
 80030c6:	f7ff f965 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 80030ca:	2390      	movs	r3, #144	; 0x90
 80030cc:	05db      	lsls	r3, r3, #23
 80030ce:	2202      	movs	r2, #2
 80030d0:	2101      	movs	r1, #1
 80030d2:	0018      	movs	r0, r3
 80030d4:	f7ff f9a0 	bl	8002418 <LL_GPIO_SetPinMode>
 80030d8:	2390      	movs	r3, #144	; 0x90
 80030da:	05db      	lsls	r3, r3, #23
 80030dc:	2202      	movs	r2, #2
 80030de:	2101      	movs	r1, #1
 80030e0:	0018      	movs	r0, r3
 80030e2:	f7ff f9d1 	bl	8002488 <LL_GPIO_SetAFPin_0_7>
 80030e6:	2001      	movs	r0, #1
 80030e8:	f7ff f96a 	bl	80023c0 <LL_APB1_GRP1_EnableClock>
 80030ec:	2380      	movs	r3, #128	; 0x80
 80030ee:	05db      	lsls	r3, r3, #23
 80030f0:	210e      	movs	r1, #14
 80030f2:	0018      	movs	r0, r3
 80030f4:	f7ff fa78 	bl	80025e8 <LL_TIM_SetPrescaler>
 80030f8:	23fa      	movs	r3, #250	; 0xfa
 80030fa:	021a      	lsls	r2, r3, #8
 80030fc:	2380      	movs	r3, #128	; 0x80
 80030fe:	05db      	lsls	r3, r3, #23
 8003100:	0011      	movs	r1, r2
 8003102:	0018      	movs	r0, r3
 8003104:	f7ff fa7c 	bl	8002600 <LL_TIM_SetAutoReload>
 8003108:	2380      	movs	r3, #128	; 0x80
 800310a:	05db      	lsls	r3, r3, #23
 800310c:	2101      	movs	r1, #1
 800310e:	0018      	movs	r0, r3
 8003110:	f7ff fa82 	bl	8002618 <LL_TIM_CC_EnableChannel>
 8003114:	2380      	movs	r3, #128	; 0x80
 8003116:	05db      	lsls	r3, r3, #23
 8003118:	2200      	movs	r2, #0
 800311a:	2101      	movs	r1, #1
 800311c:	0018      	movs	r0, r3
 800311e:	f7ff fad7 	bl	80026d0 <LL_TIM_OC_SetPolarity>
 8003122:	2380      	movs	r3, #128	; 0x80
 8003124:	05db      	lsls	r3, r3, #23
 8003126:	2260      	movs	r2, #96	; 0x60
 8003128:	2101      	movs	r1, #1
 800312a:	0018      	movs	r0, r3
 800312c:	f7ff fa84 	bl	8002638 <LL_TIM_OC_SetMode>
 8003130:	2380      	movs	r3, #128	; 0x80
 8003132:	05db      	lsls	r3, r3, #23
 8003134:	2100      	movs	r1, #0
 8003136:	0018      	movs	r0, r3
 8003138:	f7ff fa2e 	bl	8002598 <LL_TIM_SetCounterMode>
 800313c:	2380      	movs	r3, #128	; 0x80
 800313e:	05db      	lsls	r3, r3, #23
 8003140:	0018      	movs	r0, r3
 8003142:	f7ff fc2d 	bl	80029a0 <LL_TIM_EnableIT_CC1>
 8003146:	2380      	movs	r3, #128	; 0x80
 8003148:	05db      	lsls	r3, r3, #23
 800314a:	0018      	movs	r0, r3
 800314c:	f7ff fa16 	bl	800257c <LL_TIM_EnableCounter>
 8003150:	200f      	movs	r0, #15
 8003152:	f7fe ffbd 	bl	80020d0 <NVIC_EnableIRQ>
 8003156:	2102      	movs	r1, #2
 8003158:	200f      	movs	r0, #15
 800315a:	f7fe ffcf 	bl	80020fc <NVIC_SetPriority>
 800315e:	46c0      	nop			; (mov r8, r8)
 8003160:	46bd      	mov	sp, r7
 8003162:	bd80      	pop	{r7, pc}

08003164 <servo_2>:
 8003164:	b580      	push	{r7, lr}
 8003166:	af00      	add	r7, sp, #0
 8003168:	2380      	movs	r3, #128	; 0x80
 800316a:	029b      	lsls	r3, r3, #10
 800316c:	0018      	movs	r0, r3
 800316e:	f7ff f911 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 8003172:	2390      	movs	r3, #144	; 0x90
 8003174:	05db      	lsls	r3, r3, #23
 8003176:	2202      	movs	r2, #2
 8003178:	2104      	movs	r1, #4
 800317a:	0018      	movs	r0, r3
 800317c:	f7ff f94c 	bl	8002418 <LL_GPIO_SetPinMode>
 8003180:	2390      	movs	r3, #144	; 0x90
 8003182:	05db      	lsls	r3, r3, #23
 8003184:	2202      	movs	r2, #2
 8003186:	2104      	movs	r1, #4
 8003188:	0018      	movs	r0, r3
 800318a:	f7ff f97d 	bl	8002488 <LL_GPIO_SetAFPin_0_7>
 800318e:	2001      	movs	r0, #1
 8003190:	f7ff f916 	bl	80023c0 <LL_APB1_GRP1_EnableClock>
 8003194:	2380      	movs	r3, #128	; 0x80
 8003196:	05db      	lsls	r3, r3, #23
 8003198:	210e      	movs	r1, #14
 800319a:	0018      	movs	r0, r3
 800319c:	f7ff fa24 	bl	80025e8 <LL_TIM_SetPrescaler>
 80031a0:	23fa      	movs	r3, #250	; 0xfa
 80031a2:	021a      	lsls	r2, r3, #8
 80031a4:	2380      	movs	r3, #128	; 0x80
 80031a6:	05db      	lsls	r3, r3, #23
 80031a8:	0011      	movs	r1, r2
 80031aa:	0018      	movs	r0, r3
 80031ac:	f7ff fa28 	bl	8002600 <LL_TIM_SetAutoReload>
 80031b0:	2380      	movs	r3, #128	; 0x80
 80031b2:	005a      	lsls	r2, r3, #1
 80031b4:	2380      	movs	r3, #128	; 0x80
 80031b6:	05db      	lsls	r3, r3, #23
 80031b8:	0011      	movs	r1, r2
 80031ba:	0018      	movs	r0, r3
 80031bc:	f7ff fa2c 	bl	8002618 <LL_TIM_CC_EnableChannel>
 80031c0:	2380      	movs	r3, #128	; 0x80
 80031c2:	0059      	lsls	r1, r3, #1
 80031c4:	2380      	movs	r3, #128	; 0x80
 80031c6:	05db      	lsls	r3, r3, #23
 80031c8:	2200      	movs	r2, #0
 80031ca:	0018      	movs	r0, r3
 80031cc:	f7ff fa80 	bl	80026d0 <LL_TIM_OC_SetPolarity>
 80031d0:	2380      	movs	r3, #128	; 0x80
 80031d2:	0059      	lsls	r1, r3, #1
 80031d4:	2380      	movs	r3, #128	; 0x80
 80031d6:	05db      	lsls	r3, r3, #23
 80031d8:	2260      	movs	r2, #96	; 0x60
 80031da:	0018      	movs	r0, r3
 80031dc:	f7ff fa2c 	bl	8002638 <LL_TIM_OC_SetMode>
 80031e0:	2380      	movs	r3, #128	; 0x80
 80031e2:	05db      	lsls	r3, r3, #23
 80031e4:	2100      	movs	r1, #0
 80031e6:	0018      	movs	r0, r3
 80031e8:	f7ff f9d6 	bl	8002598 <LL_TIM_SetCounterMode>
 80031ec:	2380      	movs	r3, #128	; 0x80
 80031ee:	05db      	lsls	r3, r3, #23
 80031f0:	0018      	movs	r0, r3
 80031f2:	f7ff fbf1 	bl	80029d8 <LL_TIM_EnableIT_CC3>
 80031f6:	2380      	movs	r3, #128	; 0x80
 80031f8:	05db      	lsls	r3, r3, #23
 80031fa:	0018      	movs	r0, r3
 80031fc:	f7ff f9be 	bl	800257c <LL_TIM_EnableCounter>
 8003200:	200f      	movs	r0, #15
 8003202:	f7fe ff65 	bl	80020d0 <NVIC_EnableIRQ>
 8003206:	2103      	movs	r1, #3
 8003208:	200f      	movs	r0, #15
 800320a:	f7fe ff77 	bl	80020fc <NVIC_SetPriority>
 800320e:	46c0      	nop			; (mov r8, r8)
 8003210:	46bd      	mov	sp, r7
 8003212:	bd80      	pop	{r7, pc}

08003214 <TIM2_IRQHandler>:
 8003214:	b580      	push	{r7, lr}
 8003216:	af00      	add	r7, sp, #0
 8003218:	2380      	movs	r3, #128	; 0x80
 800321a:	05db      	lsls	r3, r3, #23
 800321c:	0018      	movs	r0, r3
 800321e:	f7ff fb8f 	bl	8002940 <LL_TIM_ClearFlag_UPDATE>
 8003222:	2380      	movs	r3, #128	; 0x80
 8003224:	05db      	lsls	r3, r3, #23
 8003226:	0018      	movs	r0, r3
 8003228:	f7ff fb96 	bl	8002958 <LL_TIM_ClearFlag_CC1>
 800322c:	2380      	movs	r3, #128	; 0x80
 800322e:	05db      	lsls	r3, r3, #23
 8003230:	0018      	movs	r0, r3
 8003232:	f7ff fba9 	bl	8002988 <LL_TIM_ClearFlag_CC3>
 8003236:	46c0      	nop			; (mov r8, r8)
 8003238:	46bd      	mov	sp, r7
 800323a:	bd80      	pop	{r7, pc}

0800323c <TIM3_IRQHandler>:
 800323c:	b580      	push	{r7, lr}
 800323e:	af00      	add	r7, sp, #0
 8003240:	46c0      	nop			; (mov r8, r8)
 8003242:	2390      	movs	r3, #144	; 0x90
 8003244:	05db      	lsls	r3, r3, #23
 8003246:	2180      	movs	r1, #128	; 0x80
 8003248:	0018      	movs	r0, r3
 800324a:	f7ff f96d 	bl	8002528 <LL_GPIO_IsInputPinSet>
 800324e:	1e03      	subs	r3, r0, #0
 8003250:	d0f7      	beq.n	8003242 <TIM3_IRQHandler+0x6>
 8003252:	4b16      	ldr	r3, [pc, #88]	; (80032ac <TIM3_IRQHandler+0x70>)
 8003254:	2100      	movs	r1, #0
 8003256:	0018      	movs	r0, r3
 8003258:	f7ff f9b0 	bl	80025bc <LL_TIM_SetCounter>
 800325c:	46c0      	nop			; (mov r8, r8)
 800325e:	2390      	movs	r3, #144	; 0x90
 8003260:	05db      	lsls	r3, r3, #23
 8003262:	2180      	movs	r1, #128	; 0x80
 8003264:	0018      	movs	r0, r3
 8003266:	f7ff f95f 	bl	8002528 <LL_GPIO_IsInputPinSet>
 800326a:	1e03      	subs	r3, r0, #0
 800326c:	d1f7      	bne.n	800325e <TIM3_IRQHandler+0x22>
 800326e:	4b0f      	ldr	r3, [pc, #60]	; (80032ac <TIM3_IRQHandler+0x70>)
 8003270:	0018      	movs	r0, r3
 8003272:	f7ff f9af 	bl	80025d4 <LL_TIM_GetCounter>
 8003276:	0002      	movs	r2, r0
 8003278:	4b0d      	ldr	r3, [pc, #52]	; (80032b0 <TIM3_IRQHandler+0x74>)
 800327a:	601a      	str	r2, [r3, #0]
 800327c:	4b0c      	ldr	r3, [pc, #48]	; (80032b0 <TIM3_IRQHandler+0x74>)
 800327e:	681b      	ldr	r3, [r3, #0]
 8003280:	0018      	movs	r0, r3
 8003282:	f7fe fa31 	bl	80016e8 <__aeabi_ui2d>
 8003286:	4a0b      	ldr	r2, [pc, #44]	; (80032b4 <TIM3_IRQHandler+0x78>)
 8003288:	4b0b      	ldr	r3, [pc, #44]	; (80032b8 <TIM3_IRQHandler+0x7c>)
 800328a:	f7fd f8d1 	bl	8000430 <__aeabi_ddiv>
 800328e:	0002      	movs	r2, r0
 8003290:	000b      	movs	r3, r1
 8003292:	490a      	ldr	r1, [pc, #40]	; (80032bc <TIM3_IRQHandler+0x80>)
 8003294:	600a      	str	r2, [r1, #0]
 8003296:	604b      	str	r3, [r1, #4]
 8003298:	4b04      	ldr	r3, [pc, #16]	; (80032ac <TIM3_IRQHandler+0x70>)
 800329a:	0018      	movs	r0, r3
 800329c:	f7ff fb68 	bl	8002970 <LL_TIM_ClearFlag_CC2>
 80032a0:	4b07      	ldr	r3, [pc, #28]	; (80032c0 <TIM3_IRQHandler+0x84>)
 80032a2:	2201      	movs	r2, #1
 80032a4:	701a      	strb	r2, [r3, #0]
 80032a6:	46c0      	nop			; (mov r8, r8)
 80032a8:	46bd      	mov	sp, r7
 80032aa:	bd80      	pop	{r7, pc}
 80032ac:	40000400 	.word	0x40000400
 80032b0:	20000454 	.word	0x20000454
 80032b4:	66666666 	.word	0x66666666
 80032b8:	404d6666 	.word	0x404d6666
 80032bc:	20000458 	.word	0x20000458
 80032c0:	20000460 	.word	0x20000460

080032c4 <systick_config>:
 80032c4:	b580      	push	{r7, lr}
 80032c6:	af00      	add	r7, sp, #0
 80032c8:	23fa      	movs	r3, #250	; 0xfa
 80032ca:	009b      	lsls	r3, r3, #2
 80032cc:	4a07      	ldr	r2, [pc, #28]	; (80032ec <systick_config+0x28>)
 80032ce:	0019      	movs	r1, r3
 80032d0:	0010      	movs	r0, r2
 80032d2:	f7ff fcbb 	bl	8002c4c <LL_InitTick>
 80032d6:	f7ff fcd3 	bl	8002c80 <LL_SYSTICK_EnableIT>
 80032da:	2301      	movs	r3, #1
 80032dc:	425b      	negs	r3, r3
 80032de:	2100      	movs	r1, #0
 80032e0:	0018      	movs	r0, r3
 80032e2:	f7fe ff0b 	bl	80020fc <NVIC_SetPriority>
 80032e6:	46c0      	nop			; (mov r8, r8)
 80032e8:	46bd      	mov	sp, r7
 80032ea:	bd80      	pop	{r7, pc}
 80032ec:	02dc6c00 	.word	0x02dc6c00

080032f0 <usart_config>:
 80032f0:	b580      	push	{r7, lr}
 80032f2:	af00      	add	r7, sp, #0
 80032f4:	2380      	movs	r3, #128	; 0x80
 80032f6:	029b      	lsls	r3, r3, #10
 80032f8:	0018      	movs	r0, r3
 80032fa:	f7ff f84b 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 80032fe:	2380      	movs	r3, #128	; 0x80
 8003300:	0099      	lsls	r1, r3, #2
 8003302:	2390      	movs	r3, #144	; 0x90
 8003304:	05db      	lsls	r3, r3, #23
 8003306:	2202      	movs	r2, #2
 8003308:	0018      	movs	r0, r3
 800330a:	f7ff f885 	bl	8002418 <LL_GPIO_SetPinMode>
 800330e:	2380      	movs	r3, #128	; 0x80
 8003310:	0099      	lsls	r1, r3, #2
 8003312:	2390      	movs	r3, #144	; 0x90
 8003314:	05db      	lsls	r3, r3, #23
 8003316:	2201      	movs	r2, #1
 8003318:	0018      	movs	r0, r3
 800331a:	f7ff f8d8 	bl	80024ce <LL_GPIO_SetAFPin_8_15>
 800331e:	2380      	movs	r3, #128	; 0x80
 8003320:	0099      	lsls	r1, r3, #2
 8003322:	2390      	movs	r3, #144	; 0x90
 8003324:	05db      	lsls	r3, r3, #23
 8003326:	2203      	movs	r2, #3
 8003328:	0018      	movs	r0, r3
 800332a:	f7ff f891 	bl	8002450 <LL_GPIO_SetPinSpeed>
 800332e:	2380      	movs	r3, #128	; 0x80
 8003330:	00d9      	lsls	r1, r3, #3
 8003332:	2390      	movs	r3, #144	; 0x90
 8003334:	05db      	lsls	r3, r3, #23
 8003336:	2202      	movs	r2, #2
 8003338:	0018      	movs	r0, r3
 800333a:	f7ff f86d 	bl	8002418 <LL_GPIO_SetPinMode>
 800333e:	2380      	movs	r3, #128	; 0x80
 8003340:	00d9      	lsls	r1, r3, #3
 8003342:	2390      	movs	r3, #144	; 0x90
 8003344:	05db      	lsls	r3, r3, #23
 8003346:	2201      	movs	r2, #1
 8003348:	0018      	movs	r0, r3
 800334a:	f7ff f8c0 	bl	80024ce <LL_GPIO_SetAFPin_8_15>
 800334e:	2380      	movs	r3, #128	; 0x80
 8003350:	00d9      	lsls	r1, r3, #3
 8003352:	2390      	movs	r3, #144	; 0x90
 8003354:	05db      	lsls	r3, r3, #23
 8003356:	2203      	movs	r2, #3
 8003358:	0018      	movs	r0, r3
 800335a:	f7ff f879 	bl	8002450 <LL_GPIO_SetPinSpeed>
 800335e:	2380      	movs	r3, #128	; 0x80
 8003360:	01db      	lsls	r3, r3, #7
 8003362:	0018      	movs	r0, r3
 8003364:	f7ff f842 	bl	80023ec <LL_APB1_GRP2_EnableClock>
 8003368:	2000      	movs	r0, #0
 800336a:	f7fe ff9d 	bl	80022a8 <LL_RCC_SetUSARTClockSource>
 800336e:	4b1e      	ldr	r3, [pc, #120]	; (80033e8 <usart_config+0xf8>)
 8003370:	210c      	movs	r1, #12
 8003372:	0018      	movs	r0, r3
 8003374:	f7ff fb4c 	bl	8002a10 <LL_USART_SetTransferDirection>
 8003378:	4b1b      	ldr	r3, [pc, #108]	; (80033e8 <usart_config+0xf8>)
 800337a:	2100      	movs	r1, #0
 800337c:	0018      	movs	r0, r3
 800337e:	f7ff fb59 	bl	8002a34 <LL_USART_SetParity>
 8003382:	4b19      	ldr	r3, [pc, #100]	; (80033e8 <usart_config+0xf8>)
 8003384:	2100      	movs	r1, #0
 8003386:	0018      	movs	r0, r3
 8003388:	f7ff fb68 	bl	8002a5c <LL_USART_SetDataWidth>
 800338c:	4b16      	ldr	r3, [pc, #88]	; (80033e8 <usart_config+0xf8>)
 800338e:	2100      	movs	r1, #0
 8003390:	0018      	movs	r0, r3
 8003392:	f7ff fb77 	bl	8002a84 <LL_USART_SetStopBitsLength>
 8003396:	4b14      	ldr	r3, [pc, #80]	; (80033e8 <usart_config+0xf8>)
 8003398:	2100      	movs	r1, #0
 800339a:	0018      	movs	r0, r3
 800339c:	f7ff fb86 	bl	8002aac <LL_USART_SetTransferBitOrder>
 80033a0:	4b12      	ldr	r3, [pc, #72]	; (80033ec <usart_config+0xfc>)
 80033a2:	6819      	ldr	r1, [r3, #0]
 80033a4:	23e1      	movs	r3, #225	; 0xe1
 80033a6:	025b      	lsls	r3, r3, #9
 80033a8:	480f      	ldr	r0, [pc, #60]	; (80033e8 <usart_config+0xf8>)
 80033aa:	2200      	movs	r2, #0
 80033ac:	f7ff fb92 	bl	8002ad4 <LL_USART_SetBaudRate>
 80033b0:	4b0d      	ldr	r3, [pc, #52]	; (80033e8 <usart_config+0xf8>)
 80033b2:	0018      	movs	r0, r3
 80033b4:	f7ff fc1d 	bl	8002bf2 <LL_USART_EnableIT_IDLE>
 80033b8:	4b0b      	ldr	r3, [pc, #44]	; (80033e8 <usart_config+0xf8>)
 80033ba:	0018      	movs	r0, r3
 80033bc:	f7ff fc27 	bl	8002c0e <LL_USART_EnableIT_RXNE>
 80033c0:	4b09      	ldr	r3, [pc, #36]	; (80033e8 <usart_config+0xf8>)
 80033c2:	0018      	movs	r0, r3
 80033c4:	f7ff fb16 	bl	80029f4 <LL_USART_Enable>
 80033c8:	46c0      	nop			; (mov r8, r8)
 80033ca:	4b07      	ldr	r3, [pc, #28]	; (80033e8 <usart_config+0xf8>)
 80033cc:	0018      	movs	r0, r3
 80033ce:	f7ff fbd9 	bl	8002b84 <LL_USART_IsActiveFlag_TEACK>
 80033d2:	1e03      	subs	r3, r0, #0
 80033d4:	d0f9      	beq.n	80033ca <usart_config+0xda>
 80033d6:	4b04      	ldr	r3, [pc, #16]	; (80033e8 <usart_config+0xf8>)
 80033d8:	0018      	movs	r0, r3
 80033da:	f7ff fbe9 	bl	8002bb0 <LL_USART_IsActiveFlag_REACK>
 80033de:	1e03      	subs	r3, r0, #0
 80033e0:	d0f3      	beq.n	80033ca <usart_config+0xda>
 80033e2:	46c0      	nop			; (mov r8, r8)
 80033e4:	46bd      	mov	sp, r7
 80033e6:	bd80      	pop	{r7, pc}
 80033e8:	40013800 	.word	0x40013800
 80033ec:	20000004 	.word	0x20000004

080033f0 <manage_response>:
 80033f0:	b590      	push	{r4, r7, lr}
 80033f2:	b085      	sub	sp, #20
 80033f4:	af00      	add	r7, sp, #0
 80033f6:	0002      	movs	r2, r0
 80033f8:	1dbb      	adds	r3, r7, #6
 80033fa:	801a      	strh	r2, [r3, #0]
 80033fc:	230f      	movs	r3, #15
 80033fe:	18fb      	adds	r3, r7, r3
 8003400:	2200      	movs	r2, #0
 8003402:	701a      	strb	r2, [r3, #0]
 8003404:	4b4e      	ldr	r3, [pc, #312]	; (8003540 <manage_response+0x150>)
 8003406:	0018      	movs	r0, r3
 8003408:	f7ff fbe8 	bl	8002bdc <LL_USART_ClearFlag_TC>
 800340c:	1dbb      	adds	r3, r7, #6
 800340e:	2200      	movs	r2, #0
 8003410:	5e9b      	ldrsh	r3, [r3, r2]
 8003412:	2b2a      	cmp	r3, #42	; 0x2a
 8003414:	d009      	beq.n	800342a <manage_response+0x3a>
 8003416:	1dbb      	adds	r3, r7, #6
 8003418:	2200      	movs	r2, #0
 800341a:	5e9b      	ldrsh	r3, [r3, r2]
 800341c:	2b2c      	cmp	r3, #44	; 0x2c
 800341e:	d004      	beq.n	800342a <manage_response+0x3a>
 8003420:	1dbb      	adds	r3, r7, #6
 8003422:	2200      	movs	r2, #0
 8003424:	5e9b      	ldrsh	r3, [r3, r2]
 8003426:	2b0a      	cmp	r3, #10
 8003428:	d10f      	bne.n	800344a <manage_response+0x5a>
 800342a:	1dbb      	adds	r3, r7, #6
 800342c:	881b      	ldrh	r3, [r3, #0]
 800342e:	b2db      	uxtb	r3, r3
 8003430:	4a43      	ldr	r2, [pc, #268]	; (8003540 <manage_response+0x150>)
 8003432:	0019      	movs	r1, r3
 8003434:	0010      	movs	r0, r2
 8003436:	f7ff fbf8 	bl	8002c2a <LL_USART_TransmitData8>
 800343a:	46c0      	nop			; (mov r8, r8)
 800343c:	4b40      	ldr	r3, [pc, #256]	; (8003540 <manage_response+0x150>)
 800343e:	0018      	movs	r0, r3
 8003440:	f7ff fb80 	bl	8002b44 <LL_USART_IsActiveFlag_TC>
 8003444:	1e03      	subs	r3, r0, #0
 8003446:	d0f9      	beq.n	800343c <manage_response+0x4c>
 8003448:	e076      	b.n	8003538 <manage_response+0x148>
 800344a:	1dbb      	adds	r3, r7, #6
 800344c:	2200      	movs	r2, #0
 800344e:	5e9b      	ldrsh	r3, [r3, r2]
 8003450:	2b00      	cmp	r3, #0
 8003452:	da36      	bge.n	80034c2 <manage_response+0xd2>
 8003454:	4b3a      	ldr	r3, [pc, #232]	; (8003540 <manage_response+0x150>)
 8003456:	212d      	movs	r1, #45	; 0x2d
 8003458:	0018      	movs	r0, r3
 800345a:	f7ff fbe6 	bl	8002c2a <LL_USART_TransmitData8>
 800345e:	46c0      	nop			; (mov r8, r8)
 8003460:	4b37      	ldr	r3, [pc, #220]	; (8003540 <manage_response+0x150>)
 8003462:	0018      	movs	r0, r3
 8003464:	f7ff fb6e 	bl	8002b44 <LL_USART_IsActiveFlag_TC>
 8003468:	1e03      	subs	r3, r0, #0
 800346a:	d0f9      	beq.n	8003460 <manage_response+0x70>
 800346c:	1dbb      	adds	r3, r7, #6
 800346e:	2200      	movs	r2, #0
 8003470:	5e9b      	ldrsh	r3, [r3, r2]
 8003472:	17da      	asrs	r2, r3, #31
 8003474:	189b      	adds	r3, r3, r2
 8003476:	4053      	eors	r3, r2
 8003478:	b29a      	uxth	r2, r3
 800347a:	1dbb      	adds	r3, r7, #6
 800347c:	801a      	strh	r2, [r3, #0]
 800347e:	e020      	b.n	80034c2 <manage_response+0xd2>
 8003480:	1dbb      	adds	r3, r7, #6
 8003482:	2200      	movs	r2, #0
 8003484:	5e9b      	ldrsh	r3, [r3, r2]
 8003486:	210a      	movs	r1, #10
 8003488:	0018      	movs	r0, r3
 800348a:	f7fc ffad 	bl	80003e8 <__aeabi_idivmod>
 800348e:	000b      	movs	r3, r1
 8003490:	b218      	sxth	r0, r3
 8003492:	240f      	movs	r4, #15
 8003494:	193b      	adds	r3, r7, r4
 8003496:	2200      	movs	r2, #0
 8003498:	569a      	ldrsb	r2, [r3, r2]
 800349a:	b2d3      	uxtb	r3, r2
 800349c:	3301      	adds	r3, #1
 800349e:	b2d9      	uxtb	r1, r3
 80034a0:	193b      	adds	r3, r7, r4
 80034a2:	7019      	strb	r1, [r3, #0]
 80034a4:	0011      	movs	r1, r2
 80034a6:	b2c2      	uxtb	r2, r0
 80034a8:	4b26      	ldr	r3, [pc, #152]	; (8003544 <manage_response+0x154>)
 80034aa:	185b      	adds	r3, r3, r1
 80034ac:	705a      	strb	r2, [r3, #1]
 80034ae:	1dbc      	adds	r4, r7, #6
 80034b0:	1dbb      	adds	r3, r7, #6
 80034b2:	2200      	movs	r2, #0
 80034b4:	5e9b      	ldrsh	r3, [r3, r2]
 80034b6:	210a      	movs	r1, #10
 80034b8:	0018      	movs	r0, r3
 80034ba:	f7fc feaf 	bl	800021c <__divsi3>
 80034be:	0003      	movs	r3, r0
 80034c0:	8023      	strh	r3, [r4, #0]
 80034c2:	1dbb      	adds	r3, r7, #6
 80034c4:	2200      	movs	r2, #0
 80034c6:	5e9b      	ldrsh	r3, [r3, r2]
 80034c8:	2b00      	cmp	r3, #0
 80034ca:	d1d9      	bne.n	8003480 <manage_response+0x90>
 80034cc:	210f      	movs	r1, #15
 80034ce:	187b      	adds	r3, r7, r1
 80034d0:	781b      	ldrb	r3, [r3, #0]
 80034d2:	b25b      	sxtb	r3, r3
 80034d4:	2b00      	cmp	r3, #0
 80034d6:	dd22      	ble.n	800351e <manage_response+0x12e>
 80034d8:	187b      	adds	r3, r7, r1
 80034da:	781b      	ldrb	r3, [r3, #0]
 80034dc:	b25b      	sxtb	r3, r3
 80034de:	b2db      	uxtb	r3, r3
 80034e0:	3b01      	subs	r3, #1
 80034e2:	b2da      	uxtb	r2, r3
 80034e4:	187b      	adds	r3, r7, r1
 80034e6:	701a      	strb	r2, [r3, #0]
 80034e8:	e019      	b.n	800351e <manage_response+0x12e>
 80034ea:	46c0      	nop			; (mov r8, r8)
 80034ec:	4b14      	ldr	r3, [pc, #80]	; (8003540 <manage_response+0x150>)
 80034ee:	0018      	movs	r0, r3
 80034f0:	f7ff fb38 	bl	8002b64 <LL_USART_IsActiveFlag_TXE>
 80034f4:	1e03      	subs	r3, r0, #0
 80034f6:	d0f9      	beq.n	80034ec <manage_response+0xfc>
 80034f8:	200f      	movs	r0, #15
 80034fa:	183b      	adds	r3, r7, r0
 80034fc:	2200      	movs	r2, #0
 80034fe:	569a      	ldrsb	r2, [r3, r2]
 8003500:	b2d3      	uxtb	r3, r2
 8003502:	3b01      	subs	r3, #1
 8003504:	b2d9      	uxtb	r1, r3
 8003506:	183b      	adds	r3, r7, r0
 8003508:	7019      	strb	r1, [r3, #0]
 800350a:	4b0e      	ldr	r3, [pc, #56]	; (8003544 <manage_response+0x154>)
 800350c:	189b      	adds	r3, r3, r2
 800350e:	785b      	ldrb	r3, [r3, #1]
 8003510:	3330      	adds	r3, #48	; 0x30
 8003512:	b2db      	uxtb	r3, r3
 8003514:	4a0a      	ldr	r2, [pc, #40]	; (8003540 <manage_response+0x150>)
 8003516:	0019      	movs	r1, r3
 8003518:	0010      	movs	r0, r2
 800351a:	f7ff fb86 	bl	8002c2a <LL_USART_TransmitData8>
 800351e:	230f      	movs	r3, #15
 8003520:	18fb      	adds	r3, r7, r3
 8003522:	781b      	ldrb	r3, [r3, #0]
 8003524:	2b7f      	cmp	r3, #127	; 0x7f
 8003526:	d9e0      	bls.n	80034ea <manage_response+0xfa>
 8003528:	46c0      	nop			; (mov r8, r8)
 800352a:	4b05      	ldr	r3, [pc, #20]	; (8003540 <manage_response+0x150>)
 800352c:	0018      	movs	r0, r3
 800352e:	f7ff fb09 	bl	8002b44 <LL_USART_IsActiveFlag_TC>
 8003532:	1e03      	subs	r3, r0, #0
 8003534:	d0f9      	beq.n	800352a <manage_response+0x13a>
 8003536:	46c0      	nop			; (mov r8, r8)
 8003538:	46bd      	mov	sp, r7
 800353a:	b005      	add	sp, #20
 800353c:	bd90      	pop	{r4, r7, pc}
 800353e:	46c0      	nop			; (mov r8, r8)
 8003540:	40013800 	.word	0x40013800
 8003544:	20000464 	.word	0x20000464

08003548 <manage_string>:
 8003548:	b580      	push	{r7, lr}
 800354a:	b084      	sub	sp, #16
 800354c:	af00      	add	r7, sp, #0
 800354e:	60f8      	str	r0, [r7, #12]
 8003550:	60b9      	str	r1, [r7, #8]
 8003552:	607a      	str	r2, [r7, #4]
 8003554:	68fb      	ldr	r3, [r7, #12]
 8003556:	b21b      	sxth	r3, r3
 8003558:	0018      	movs	r0, r3
 800355a:	f7ff ff49 	bl	80033f0 <manage_response>
 800355e:	202c      	movs	r0, #44	; 0x2c
 8003560:	f7ff ff46 	bl	80033f0 <manage_response>
 8003564:	68bb      	ldr	r3, [r7, #8]
 8003566:	b21b      	sxth	r3, r3
 8003568:	0018      	movs	r0, r3
 800356a:	f7ff ff41 	bl	80033f0 <manage_response>
 800356e:	202c      	movs	r0, #44	; 0x2c
 8003570:	f7ff ff3e 	bl	80033f0 <manage_response>
 8003574:	687b      	ldr	r3, [r7, #4]
 8003576:	b21b      	sxth	r3, r3
 8003578:	0018      	movs	r0, r3
 800357a:	f7ff ff39 	bl	80033f0 <manage_response>
 800357e:	200a      	movs	r0, #10
 8003580:	f7ff ff36 	bl	80033f0 <manage_response>
 8003584:	46c0      	nop			; (mov r8, r8)
 8003586:	46bd      	mov	sp, r7
 8003588:	b004      	add	sp, #16
 800358a:	bd80      	pop	{r7, pc}

0800358c <SysTick_Handler>:
 800358c:	b580      	push	{r7, lr}
 800358e:	af00      	add	r7, sp, #0
 8003590:	4b06      	ldr	r3, [pc, #24]	; (80035ac <SysTick_Handler+0x20>)
 8003592:	681a      	ldr	r2, [r3, #0]
 8003594:	685b      	ldr	r3, [r3, #4]
 8003596:	0010      	movs	r0, r2
 8003598:	0019      	movs	r1, r3
 800359a:	f7fc ff2b 	bl	80003f4 <__aeabi_d2uiz>
 800359e:	0003      	movs	r3, r0
 80035a0:	0018      	movs	r0, r3
 80035a2:	f7ff fc4f 	bl	8002e44 <dec_display>
 80035a6:	46c0      	nop			; (mov r8, r8)
 80035a8:	46bd      	mov	sp, r7
 80035aa:	bd80      	pop	{r7, pc}
 80035ac:	20000458 	.word	0x20000458

080035b0 <Conversation>:
 80035b0:	b5b0      	push	{r4, r5, r7, lr}
 80035b2:	b090      	sub	sp, #64	; 0x40
 80035b4:	af00      	add	r7, sp, #0
 80035b6:	60f8      	str	r0, [r7, #12]
 80035b8:	60b9      	str	r1, [r7, #8]
 80035ba:	23c8      	movs	r3, #200	; 0xc8
 80035bc:	00db      	lsls	r3, r3, #3
 80035be:	68fa      	ldr	r2, [r7, #12]
 80035c0:	1ad3      	subs	r3, r2, r3
 80035c2:	0018      	movs	r0, r3
 80035c4:	f7fe f890 	bl	80016e8 <__aeabi_ui2d>
 80035c8:	2200      	movs	r2, #0
 80035ca:	4b71      	ldr	r3, [pc, #452]	; (8003790 <Conversation+0x1e0>)
 80035cc:	f7fd fa26 	bl	8000a1c <__aeabi_dmul>
 80035d0:	0002      	movs	r2, r0
 80035d2:	000b      	movs	r3, r1
 80035d4:	0014      	movs	r4, r2
 80035d6:	001d      	movs	r5, r3
 80035d8:	23f0      	movs	r3, #240	; 0xf0
 80035da:	015a      	lsls	r2, r3, #5
 80035dc:	23c8      	movs	r3, #200	; 0xc8
 80035de:	00db      	lsls	r3, r3, #3
 80035e0:	1ad3      	subs	r3, r2, r3
 80035e2:	0018      	movs	r0, r3
 80035e4:	f7fe f880 	bl	80016e8 <__aeabi_ui2d>
 80035e8:	0002      	movs	r2, r0
 80035ea:	000b      	movs	r3, r1
 80035ec:	0020      	movs	r0, r4
 80035ee:	0029      	movs	r1, r5
 80035f0:	f7fc ff1e 	bl	8000430 <__aeabi_ddiv>
 80035f4:	0002      	movs	r2, r0
 80035f6:	000b      	movs	r3, r1
 80035f8:	63ba      	str	r2, [r7, #56]	; 0x38
 80035fa:	63fb      	str	r3, [r7, #60]	; 0x3c
 80035fc:	23c8      	movs	r3, #200	; 0xc8
 80035fe:	00db      	lsls	r3, r3, #3
 8003600:	68ba      	ldr	r2, [r7, #8]
 8003602:	1ad3      	subs	r3, r2, r3
 8003604:	0018      	movs	r0, r3
 8003606:	f7fe f86f 	bl	80016e8 <__aeabi_ui2d>
 800360a:	2200      	movs	r2, #0
 800360c:	4b60      	ldr	r3, [pc, #384]	; (8003790 <Conversation+0x1e0>)
 800360e:	f7fd fa05 	bl	8000a1c <__aeabi_dmul>
 8003612:	0002      	movs	r2, r0
 8003614:	000b      	movs	r3, r1
 8003616:	0014      	movs	r4, r2
 8003618:	001d      	movs	r5, r3
 800361a:	23f0      	movs	r3, #240	; 0xf0
 800361c:	015a      	lsls	r2, r3, #5
 800361e:	23c8      	movs	r3, #200	; 0xc8
 8003620:	00db      	lsls	r3, r3, #3
 8003622:	1ad3      	subs	r3, r2, r3
 8003624:	0018      	movs	r0, r3
 8003626:	f7fe f85f 	bl	80016e8 <__aeabi_ui2d>
 800362a:	0002      	movs	r2, r0
 800362c:	000b      	movs	r3, r1
 800362e:	0020      	movs	r0, r4
 8003630:	0029      	movs	r1, r5
 8003632:	f7fc fefd 	bl	8000430 <__aeabi_ddiv>
 8003636:	0002      	movs	r2, r0
 8003638:	000b      	movs	r3, r1
 800363a:	633a      	str	r2, [r7, #48]	; 0x30
 800363c:	637b      	str	r3, [r7, #52]	; 0x34
 800363e:	4a55      	ldr	r2, [pc, #340]	; (8003794 <Conversation+0x1e4>)
 8003640:	4b55      	ldr	r3, [pc, #340]	; (8003798 <Conversation+0x1e8>)
 8003642:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 8003644:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8003646:	f7fd f9e9 	bl	8000a1c <__aeabi_dmul>
 800364a:	0002      	movs	r2, r0
 800364c:	000b      	movs	r3, r1
 800364e:	62ba      	str	r2, [r7, #40]	; 0x28
 8003650:	62fb      	str	r3, [r7, #44]	; 0x2c
 8003652:	4a50      	ldr	r2, [pc, #320]	; (8003794 <Conversation+0x1e4>)
 8003654:	4b50      	ldr	r3, [pc, #320]	; (8003798 <Conversation+0x1e8>)
 8003656:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8003658:	6b79      	ldr	r1, [r7, #52]	; 0x34
 800365a:	f7fd f9df 	bl	8000a1c <__aeabi_dmul>
 800365e:	0002      	movs	r2, r0
 8003660:	000b      	movs	r3, r1
 8003662:	623a      	str	r2, [r7, #32]
 8003664:	627b      	str	r3, [r7, #36]	; 0x24
 8003666:	4b4d      	ldr	r3, [pc, #308]	; (800379c <Conversation+0x1ec>)
 8003668:	681a      	ldr	r2, [r3, #0]
 800366a:	685b      	ldr	r3, [r3, #4]
 800366c:	0010      	movs	r0, r2
 800366e:	0019      	movs	r1, r3
 8003670:	f7fd ffd4 	bl	800161c <__aeabi_d2iz>
 8003674:	0003      	movs	r3, r0
 8003676:	0018      	movs	r0, r3
 8003678:	f7fe f806 	bl	8001688 <__aeabi_i2d>
 800367c:	0004      	movs	r4, r0
 800367e:	000d      	movs	r5, r1
 8003680:	6a3a      	ldr	r2, [r7, #32]
 8003682:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8003684:	0010      	movs	r0, r2
 8003686:	0019      	movs	r1, r3
 8003688:	f000 fc0e 	bl	8003ea8 <sin>
 800368c:	0002      	movs	r2, r0
 800368e:	000b      	movs	r3, r1
 8003690:	0020      	movs	r0, r4
 8003692:	0029      	movs	r1, r5
 8003694:	f7fd f9c2 	bl	8000a1c <__aeabi_dmul>
 8003698:	0002      	movs	r2, r0
 800369a:	000b      	movs	r3, r1
 800369c:	0014      	movs	r4, r2
 800369e:	001d      	movs	r5, r3
 80036a0:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80036a2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80036a4:	0010      	movs	r0, r2
 80036a6:	0019      	movs	r1, r3
 80036a8:	f000 fbae 	bl	8003e08 <cos>
 80036ac:	0002      	movs	r2, r0
 80036ae:	000b      	movs	r3, r1
 80036b0:	0020      	movs	r0, r4
 80036b2:	0029      	movs	r1, r5
 80036b4:	f7fd f9b2 	bl	8000a1c <__aeabi_dmul>
 80036b8:	0002      	movs	r2, r0
 80036ba:	000b      	movs	r3, r1
 80036bc:	0010      	movs	r0, r2
 80036be:	0019      	movs	r1, r3
 80036c0:	f7fd ffac 	bl	800161c <__aeabi_d2iz>
 80036c4:	0003      	movs	r3, r0
 80036c6:	61fb      	str	r3, [r7, #28]
 80036c8:	4b34      	ldr	r3, [pc, #208]	; (800379c <Conversation+0x1ec>)
 80036ca:	681a      	ldr	r2, [r3, #0]
 80036cc:	685b      	ldr	r3, [r3, #4]
 80036ce:	0010      	movs	r0, r2
 80036d0:	0019      	movs	r1, r3
 80036d2:	f7fd ffa3 	bl	800161c <__aeabi_d2iz>
 80036d6:	0003      	movs	r3, r0
 80036d8:	0018      	movs	r0, r3
 80036da:	f7fd ffd5 	bl	8001688 <__aeabi_i2d>
 80036de:	0004      	movs	r4, r0
 80036e0:	000d      	movs	r5, r1
 80036e2:	6a3a      	ldr	r2, [r7, #32]
 80036e4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80036e6:	0010      	movs	r0, r2
 80036e8:	0019      	movs	r1, r3
 80036ea:	f000 fbdd 	bl	8003ea8 <sin>
 80036ee:	0002      	movs	r2, r0
 80036f0:	000b      	movs	r3, r1
 80036f2:	0020      	movs	r0, r4
 80036f4:	0029      	movs	r1, r5
 80036f6:	f7fd f991 	bl	8000a1c <__aeabi_dmul>
 80036fa:	0002      	movs	r2, r0
 80036fc:	000b      	movs	r3, r1
 80036fe:	0014      	movs	r4, r2
 8003700:	001d      	movs	r5, r3
 8003702:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8003704:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8003706:	0010      	movs	r0, r2
 8003708:	0019      	movs	r1, r3
 800370a:	f000 fbcd 	bl	8003ea8 <sin>
 800370e:	0002      	movs	r2, r0
 8003710:	000b      	movs	r3, r1
 8003712:	0020      	movs	r0, r4
 8003714:	0029      	movs	r1, r5
 8003716:	f7fd f981 	bl	8000a1c <__aeabi_dmul>
 800371a:	0002      	movs	r2, r0
 800371c:	000b      	movs	r3, r1
 800371e:	0010      	movs	r0, r2
 8003720:	0019      	movs	r1, r3
 8003722:	f7fd ff7b 	bl	800161c <__aeabi_d2iz>
 8003726:	0003      	movs	r3, r0
 8003728:	61bb      	str	r3, [r7, #24]
 800372a:	4b1c      	ldr	r3, [pc, #112]	; (800379c <Conversation+0x1ec>)
 800372c:	681a      	ldr	r2, [r3, #0]
 800372e:	685b      	ldr	r3, [r3, #4]
 8003730:	0010      	movs	r0, r2
 8003732:	0019      	movs	r1, r3
 8003734:	f7fd ff72 	bl	800161c <__aeabi_d2iz>
 8003738:	0003      	movs	r3, r0
 800373a:	0018      	movs	r0, r3
 800373c:	f7fd ffa4 	bl	8001688 <__aeabi_i2d>
 8003740:	0004      	movs	r4, r0
 8003742:	000d      	movs	r5, r1
 8003744:	6a3a      	ldr	r2, [r7, #32]
 8003746:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8003748:	0010      	movs	r0, r2
 800374a:	0019      	movs	r1, r3
 800374c:	f000 fb5c 	bl	8003e08 <cos>
 8003750:	0002      	movs	r2, r0
 8003752:	000b      	movs	r3, r1
 8003754:	0011      	movs	r1, r2
 8003756:	6039      	str	r1, [r7, #0]
 8003758:	2180      	movs	r1, #128	; 0x80
 800375a:	0609      	lsls	r1, r1, #24
 800375c:	4059      	eors	r1, r3
 800375e:	6079      	str	r1, [r7, #4]
 8003760:	683a      	ldr	r2, [r7, #0]
 8003762:	687b      	ldr	r3, [r7, #4]
 8003764:	0020      	movs	r0, r4
 8003766:	0029      	movs	r1, r5
 8003768:	f7fd f958 	bl	8000a1c <__aeabi_dmul>
 800376c:	0002      	movs	r2, r0
 800376e:	000b      	movs	r3, r1
 8003770:	0010      	movs	r0, r2
 8003772:	0019      	movs	r1, r3
 8003774:	f7fd ff52 	bl	800161c <__aeabi_d2iz>
 8003778:	0003      	movs	r3, r0
 800377a:	617b      	str	r3, [r7, #20]
 800377c:	697a      	ldr	r2, [r7, #20]
 800377e:	69b9      	ldr	r1, [r7, #24]
 8003780:	69fb      	ldr	r3, [r7, #28]
 8003782:	0018      	movs	r0, r3
 8003784:	f7ff fee0 	bl	8003548 <manage_string>
 8003788:	46c0      	nop			; (mov r8, r8)
 800378a:	46bd      	mov	sp, r7
 800378c:	b010      	add	sp, #64	; 0x40
 800378e:	bdb0      	pop	{r4, r5, r7, pc}
 8003790:	40668000 	.word	0x40668000
 8003794:	a2529d39 	.word	0xa2529d39
 8003798:	3f91df46 	.word	0x3f91df46
 800379c:	20000458 	.word	0x20000458

080037a0 <symbols>:
 80037a0:	b580      	push	{r7, lr}
 80037a2:	b084      	sub	sp, #16
 80037a4:	af00      	add	r7, sp, #0
 80037a6:	0002      	movs	r2, r0
 80037a8:	1dfb      	adds	r3, r7, #7
 80037aa:	701a      	strb	r2, [r3, #0]
 80037ac:	2300      	movs	r3, #0
 80037ae:	60fb      	str	r3, [r7, #12]
 80037b0:	1dfb      	adds	r3, r7, #7
 80037b2:	781b      	ldrb	r3, [r3, #0]
 80037b4:	3b21      	subs	r3, #33	; 0x21
 80037b6:	2b59      	cmp	r3, #89	; 0x59
 80037b8:	d85b      	bhi.n	8003872 <symbols+0xd2>
 80037ba:	009a      	lsls	r2, r3, #2
 80037bc:	4b31      	ldr	r3, [pc, #196]	; (8003884 <symbols+0xe4>)
 80037be:	18d3      	adds	r3, r2, r3
 80037c0:	681b      	ldr	r3, [r3, #0]
 80037c2:	469f      	mov	pc, r3
 80037c4:	2377      	movs	r3, #119	; 0x77
 80037c6:	60fb      	str	r3, [r7, #12]
 80037c8:	e056      	b.n	8003878 <symbols+0xd8>
 80037ca:	237c      	movs	r3, #124	; 0x7c
 80037cc:	60fb      	str	r3, [r7, #12]
 80037ce:	e053      	b.n	8003878 <symbols+0xd8>
 80037d0:	2339      	movs	r3, #57	; 0x39
 80037d2:	60fb      	str	r3, [r7, #12]
 80037d4:	e050      	b.n	8003878 <symbols+0xd8>
 80037d6:	235e      	movs	r3, #94	; 0x5e
 80037d8:	60fb      	str	r3, [r7, #12]
 80037da:	e04d      	b.n	8003878 <symbols+0xd8>
 80037dc:	2379      	movs	r3, #121	; 0x79
 80037de:	60fb      	str	r3, [r7, #12]
 80037e0:	e04a      	b.n	8003878 <symbols+0xd8>
 80037e2:	2371      	movs	r3, #113	; 0x71
 80037e4:	60fb      	str	r3, [r7, #12]
 80037e6:	e047      	b.n	8003878 <symbols+0xd8>
 80037e8:	237d      	movs	r3, #125	; 0x7d
 80037ea:	60fb      	str	r3, [r7, #12]
 80037ec:	e044      	b.n	8003878 <symbols+0xd8>
 80037ee:	2376      	movs	r3, #118	; 0x76
 80037f0:	60fb      	str	r3, [r7, #12]
 80037f2:	e041      	b.n	8003878 <symbols+0xd8>
 80037f4:	2306      	movs	r3, #6
 80037f6:	60fb      	str	r3, [r7, #12]
 80037f8:	e03e      	b.n	8003878 <symbols+0xd8>
 80037fa:	230e      	movs	r3, #14
 80037fc:	60fb      	str	r3, [r7, #12]
 80037fe:	e03b      	b.n	8003878 <symbols+0xd8>
 8003800:	2338      	movs	r3, #56	; 0x38
 8003802:	60fb      	str	r3, [r7, #12]
 8003804:	e038      	b.n	8003878 <symbols+0xd8>
 8003806:	2354      	movs	r3, #84	; 0x54
 8003808:	60fb      	str	r3, [r7, #12]
 800380a:	e035      	b.n	8003878 <symbols+0xd8>
 800380c:	233f      	movs	r3, #63	; 0x3f
 800380e:	60fb      	str	r3, [r7, #12]
 8003810:	e032      	b.n	8003878 <symbols+0xd8>
 8003812:	235c      	movs	r3, #92	; 0x5c
 8003814:	60fb      	str	r3, [r7, #12]
 8003816:	e02f      	b.n	8003878 <symbols+0xd8>
 8003818:	2373      	movs	r3, #115	; 0x73
 800381a:	60fb      	str	r3, [r7, #12]
 800381c:	e02c      	b.n	8003878 <symbols+0xd8>
 800381e:	236d      	movs	r3, #109	; 0x6d
 8003820:	60fb      	str	r3, [r7, #12]
 8003822:	e029      	b.n	8003878 <symbols+0xd8>
 8003824:	233e      	movs	r3, #62	; 0x3e
 8003826:	60fb      	str	r3, [r7, #12]
 8003828:	e026      	b.n	8003878 <symbols+0xd8>
 800382a:	231c      	movs	r3, #28
 800382c:	60fb      	str	r3, [r7, #12]
 800382e:	e023      	b.n	8003878 <symbols+0xd8>
 8003830:	235b      	movs	r3, #91	; 0x5b
 8003832:	60fb      	str	r3, [r7, #12]
 8003834:	e020      	b.n	8003878 <symbols+0xd8>
 8003836:	2367      	movs	r3, #103	; 0x67
 8003838:	60fb      	str	r3, [r7, #12]
 800383a:	e01d      	b.n	8003878 <symbols+0xd8>
 800383c:	2350      	movs	r3, #80	; 0x50
 800383e:	60fb      	str	r3, [r7, #12]
 8003840:	e01a      	b.n	8003878 <symbols+0xd8>
 8003842:	2378      	movs	r3, #120	; 0x78
 8003844:	60fb      	str	r3, [r7, #12]
 8003846:	e017      	b.n	8003878 <symbols+0xd8>
 8003848:	236e      	movs	r3, #110	; 0x6e
 800384a:	60fb      	str	r3, [r7, #12]
 800384c:	e014      	b.n	8003878 <symbols+0xd8>
 800384e:	2380      	movs	r3, #128	; 0x80
 8003850:	60fb      	str	r3, [r7, #12]
 8003852:	e011      	b.n	8003878 <symbols+0xd8>
 8003854:	2386      	movs	r3, #134	; 0x86
 8003856:	60fb      	str	r3, [r7, #12]
 8003858:	e00e      	b.n	8003878 <symbols+0xd8>
 800385a:	23a7      	movs	r3, #167	; 0xa7
 800385c:	60fb      	str	r3, [r7, #12]
 800385e:	e00b      	b.n	8003878 <symbols+0xd8>
 8003860:	2308      	movs	r3, #8
 8003862:	60fb      	str	r3, [r7, #12]
 8003864:	e008      	b.n	8003878 <symbols+0xd8>
 8003866:	2340      	movs	r3, #64	; 0x40
 8003868:	60fb      	str	r3, [r7, #12]
 800386a:	e005      	b.n	8003878 <symbols+0xd8>
 800386c:	234f      	movs	r3, #79	; 0x4f
 800386e:	60fb      	str	r3, [r7, #12]
 8003870:	e002      	b.n	8003878 <symbols+0xd8>
 8003872:	2300      	movs	r3, #0
 8003874:	60fb      	str	r3, [r7, #12]
 8003876:	46c0      	nop			; (mov r8, r8)
 8003878:	68fb      	ldr	r3, [r7, #12]
 800387a:	0018      	movs	r0, r3
 800387c:	46bd      	mov	sp, r7
 800387e:	b004      	add	sp, #16
 8003880:	bd80      	pop	{r7, pc}
 8003882:	46c0      	nop			; (mov r8, r8)
 8003884:	080052f4 	.word	0x080052f4

08003888 <delay>:
 8003888:	b580      	push	{r7, lr}
 800388a:	4e02      	ldr	r6, [pc, #8]	; (8003894 <delay+0xc>)
 800388c:	3e01      	subs	r6, #1
 800388e:	2e00      	cmp	r6, #0
 8003890:	d1fc      	bne.n	800388c <delay+0x4>
 8003892:	bd80      	pop	{r7, pc}
 8003894:	00002ee0 	.word	0x00002ee0
 8003898:	46c0      	nop			; (mov r8, r8)
	...

0800389c <dynamic_text>:
 800389c:	b590      	push	{r4, r7, lr}
 800389e:	b089      	sub	sp, #36	; 0x24
 80038a0:	af00      	add	r7, sp, #0
 80038a2:	6078      	str	r0, [r7, #4]
 80038a4:	231f      	movs	r3, #31
 80038a6:	18fb      	adds	r3, r7, r3
 80038a8:	687a      	ldr	r2, [r7, #4]
 80038aa:	7812      	ldrb	r2, [r2, #0]
 80038ac:	701a      	strb	r2, [r3, #0]
 80038ae:	2300      	movs	r3, #0
 80038b0:	61bb      	str	r3, [r7, #24]
 80038b2:	2300      	movs	r3, #0
 80038b4:	617b      	str	r3, [r7, #20]
 80038b6:	e05f      	b.n	8003978 <dynamic_text+0xdc>
 80038b8:	2300      	movs	r3, #0
 80038ba:	613b      	str	r3, [r7, #16]
 80038bc:	e03a      	b.n	8003934 <dynamic_text+0x98>
 80038be:	69bb      	ldr	r3, [r7, #24]
 80038c0:	60fb      	str	r3, [r7, #12]
 80038c2:	2300      	movs	r3, #0
 80038c4:	60bb      	str	r3, [r7, #8]
 80038c6:	e02f      	b.n	8003928 <dynamic_text+0x8c>
 80038c8:	687a      	ldr	r2, [r7, #4]
 80038ca:	68fb      	ldr	r3, [r7, #12]
 80038cc:	18d2      	adds	r2, r2, r3
 80038ce:	241f      	movs	r4, #31
 80038d0:	193b      	adds	r3, r7, r4
 80038d2:	7812      	ldrb	r2, [r2, #0]
 80038d4:	701a      	strb	r2, [r3, #0]
 80038d6:	200f      	movs	r0, #15
 80038d8:	f7ff f9e0 	bl	8002c9c <mask_indicator>
 80038dc:	0003      	movs	r3, r0
 80038de:	4a2b      	ldr	r2, [pc, #172]	; (800398c <dynamic_text+0xf0>)
 80038e0:	0019      	movs	r1, r3
 80038e2:	0010      	movs	r0, r2
 80038e4:	f7fe fe32 	bl	800254c <LL_GPIO_WriteOutputPort>
 80038e8:	2201      	movs	r2, #1
 80038ea:	68bb      	ldr	r3, [r7, #8]
 80038ec:	409a      	lsls	r2, r3
 80038ee:	0013      	movs	r3, r2
 80038f0:	0018      	movs	r0, r3
 80038f2:	f7ff f9d3 	bl	8002c9c <mask_indicator>
 80038f6:	0003      	movs	r3, r0
 80038f8:	4a24      	ldr	r2, [pc, #144]	; (800398c <dynamic_text+0xf0>)
 80038fa:	0019      	movs	r1, r3
 80038fc:	0010      	movs	r0, r2
 80038fe:	f7fe fe31 	bl	8002564 <LL_GPIO_ResetOutputPin>
 8003902:	193b      	adds	r3, r7, r4
 8003904:	781b      	ldrb	r3, [r3, #0]
 8003906:	0018      	movs	r0, r3
 8003908:	f7ff ff4a 	bl	80037a0 <symbols>
 800390c:	0003      	movs	r3, r0
 800390e:	4a20      	ldr	r2, [pc, #128]	; (8003990 <dynamic_text+0xf4>)
 8003910:	0019      	movs	r1, r3
 8003912:	0010      	movs	r0, r2
 8003914:	f7fe fe1a 	bl	800254c <LL_GPIO_WriteOutputPort>
 8003918:	f7ff ffb6 	bl	8003888 <delay>
 800391c:	68fb      	ldr	r3, [r7, #12]
 800391e:	3b01      	subs	r3, #1
 8003920:	60fb      	str	r3, [r7, #12]
 8003922:	68bb      	ldr	r3, [r7, #8]
 8003924:	3301      	adds	r3, #1
 8003926:	60bb      	str	r3, [r7, #8]
 8003928:	68bb      	ldr	r3, [r7, #8]
 800392a:	2b03      	cmp	r3, #3
 800392c:	d9cc      	bls.n	80038c8 <dynamic_text+0x2c>
 800392e:	693b      	ldr	r3, [r7, #16]
 8003930:	3301      	adds	r3, #1
 8003932:	613b      	str	r3, [r7, #16]
 8003934:	693b      	ldr	r3, [r7, #16]
 8003936:	2b31      	cmp	r3, #49	; 0x31
 8003938:	ddc1      	ble.n	80038be <dynamic_text+0x22>
 800393a:	69bb      	ldr	r3, [r7, #24]
 800393c:	1c5a      	adds	r2, r3, #1
 800393e:	61ba      	str	r2, [r7, #24]
 8003940:	687a      	ldr	r2, [r7, #4]
 8003942:	18d2      	adds	r2, r2, r3
 8003944:	211f      	movs	r1, #31
 8003946:	187b      	adds	r3, r7, r1
 8003948:	7812      	ldrb	r2, [r2, #0]
 800394a:	701a      	strb	r2, [r3, #0]
 800394c:	187b      	adds	r3, r7, r1
 800394e:	781b      	ldrb	r3, [r3, #0]
 8003950:	2b00      	cmp	r3, #0
 8003952:	d002      	beq.n	800395a <dynamic_text+0xbe>
 8003954:	697b      	ldr	r3, [r7, #20]
 8003956:	2b00      	cmp	r3, #0
 8003958:	d00e      	beq.n	8003978 <dynamic_text+0xdc>
 800395a:	697b      	ldr	r3, [r7, #20]
 800395c:	2b01      	cmp	r3, #1
 800395e:	d807      	bhi.n	8003970 <dynamic_text+0xd4>
 8003960:	231f      	movs	r3, #31
 8003962:	18fb      	adds	r3, r7, r3
 8003964:	2220      	movs	r2, #32
 8003966:	701a      	strb	r2, [r3, #0]
 8003968:	697b      	ldr	r3, [r7, #20]
 800396a:	3301      	adds	r3, #1
 800396c:	617b      	str	r3, [r7, #20]
 800396e:	e003      	b.n	8003978 <dynamic_text+0xdc>
 8003970:	231f      	movs	r3, #31
 8003972:	18fb      	adds	r3, r7, r3
 8003974:	2200      	movs	r2, #0
 8003976:	701a      	strb	r2, [r3, #0]
 8003978:	231f      	movs	r3, #31
 800397a:	18fb      	adds	r3, r7, r3
 800397c:	781b      	ldrb	r3, [r3, #0]
 800397e:	2b00      	cmp	r3, #0
 8003980:	d19a      	bne.n	80038b8 <dynamic_text+0x1c>
 8003982:	46c0      	nop			; (mov r8, r8)
 8003984:	46bd      	mov	sp, r7
 8003986:	b009      	add	sp, #36	; 0x24
 8003988:	bd90      	pop	{r4, r7, pc}
 800398a:	46c0      	nop			; (mov r8, r8)
 800398c:	48000800 	.word	0x48000800
 8003990:	48000400 	.word	0x48000400

08003994 <text>:
 8003994:	b5b0      	push	{r4, r5, r7, lr}
 8003996:	b086      	sub	sp, #24
 8003998:	af00      	add	r7, sp, #0
 800399a:	6078      	str	r0, [r7, #4]
 800399c:	2300      	movs	r3, #0
 800399e:	60fb      	str	r3, [r7, #12]
 80039a0:	2300      	movs	r3, #0
 80039a2:	617b      	str	r3, [r7, #20]
 80039a4:	e051      	b.n	8003a4a <text+0xb6>
 80039a6:	2313      	movs	r3, #19
 80039a8:	18fb      	adds	r3, r7, r3
 80039aa:	687a      	ldr	r2, [r7, #4]
 80039ac:	7812      	ldrb	r2, [r2, #0]
 80039ae:	701a      	strb	r2, [r3, #0]
 80039b0:	2312      	movs	r3, #18
 80039b2:	18fb      	adds	r3, r7, r3
 80039b4:	2203      	movs	r2, #3
 80039b6:	701a      	strb	r2, [r3, #0]
 80039b8:	2311      	movs	r3, #17
 80039ba:	18fb      	adds	r3, r7, r3
 80039bc:	2200      	movs	r2, #0
 80039be:	701a      	strb	r2, [r3, #0]
 80039c0:	e039      	b.n	8003a36 <text+0xa2>
 80039c2:	2411      	movs	r4, #17
 80039c4:	193b      	adds	r3, r7, r4
 80039c6:	781b      	ldrb	r3, [r3, #0]
 80039c8:	687a      	ldr	r2, [r7, #4]
 80039ca:	18d2      	adds	r2, r2, r3
 80039cc:	2113      	movs	r1, #19
 80039ce:	187b      	adds	r3, r7, r1
 80039d0:	7812      	ldrb	r2, [r2, #0]
 80039d2:	701a      	strb	r2, [r3, #0]
 80039d4:	187b      	adds	r3, r7, r1
 80039d6:	781b      	ldrb	r3, [r3, #0]
 80039d8:	0018      	movs	r0, r3
 80039da:	f7ff fee1 	bl	80037a0 <symbols>
 80039de:	0003      	movs	r3, r0
 80039e0:	60fb      	str	r3, [r7, #12]
 80039e2:	200f      	movs	r0, #15
 80039e4:	f7ff f95a 	bl	8002c9c <mask_indicator>
 80039e8:	0003      	movs	r3, r0
 80039ea:	4a1b      	ldr	r2, [pc, #108]	; (8003a58 <text+0xc4>)
 80039ec:	0019      	movs	r1, r3
 80039ee:	0010      	movs	r0, r2
 80039f0:	f7fe fdac 	bl	800254c <LL_GPIO_WriteOutputPort>
 80039f4:	2512      	movs	r5, #18
 80039f6:	197b      	adds	r3, r7, r5
 80039f8:	781b      	ldrb	r3, [r3, #0]
 80039fa:	2201      	movs	r2, #1
 80039fc:	409a      	lsls	r2, r3
 80039fe:	0013      	movs	r3, r2
 8003a00:	0018      	movs	r0, r3
 8003a02:	f7ff f94b 	bl	8002c9c <mask_indicator>
 8003a06:	0003      	movs	r3, r0
 8003a08:	4a13      	ldr	r2, [pc, #76]	; (8003a58 <text+0xc4>)
 8003a0a:	0019      	movs	r1, r3
 8003a0c:	0010      	movs	r0, r2
 8003a0e:	f7fe fda9 	bl	8002564 <LL_GPIO_ResetOutputPin>
 8003a12:	68fb      	ldr	r3, [r7, #12]
 8003a14:	4a11      	ldr	r2, [pc, #68]	; (8003a5c <text+0xc8>)
 8003a16:	0019      	movs	r1, r3
 8003a18:	0010      	movs	r0, r2
 8003a1a:	f7fe fd97 	bl	800254c <LL_GPIO_WriteOutputPort>
 8003a1e:	f7ff ff33 	bl	8003888 <delay>
 8003a22:	197b      	adds	r3, r7, r5
 8003a24:	781a      	ldrb	r2, [r3, #0]
 8003a26:	197b      	adds	r3, r7, r5
 8003a28:	3a01      	subs	r2, #1
 8003a2a:	701a      	strb	r2, [r3, #0]
 8003a2c:	193b      	adds	r3, r7, r4
 8003a2e:	781a      	ldrb	r2, [r3, #0]
 8003a30:	193b      	adds	r3, r7, r4
 8003a32:	3201      	adds	r2, #1
 8003a34:	701a      	strb	r2, [r3, #0]
 8003a36:	2313      	movs	r3, #19
 8003a38:	18fb      	adds	r3, r7, r3
 8003a3a:	781b      	ldrb	r3, [r3, #0]
 8003a3c:	2b00      	cmp	r3, #0
 8003a3e:	d1c0      	bne.n	80039c2 <text+0x2e>
 8003a40:	f7ff ff22 	bl	8003888 <delay>
 8003a44:	697b      	ldr	r3, [r7, #20]
 8003a46:	3301      	adds	r3, #1
 8003a48:	617b      	str	r3, [r7, #20]
 8003a4a:	697b      	ldr	r3, [r7, #20]
 8003a4c:	2b63      	cmp	r3, #99	; 0x63
 8003a4e:	d9aa      	bls.n	80039a6 <text+0x12>
 8003a50:	46c0      	nop			; (mov r8, r8)
 8003a52:	46bd      	mov	sp, r7
 8003a54:	b006      	add	sp, #24
 8003a56:	bdb0      	pop	{r4, r5, r7, pc}
 8003a58:	48000800 	.word	0x48000800
 8003a5c:	48000400 	.word	0x48000400

08003a60 <main>:
 8003a60:	b580      	push	{r7, lr}
 8003a62:	b084      	sub	sp, #16
 8003a64:	af00      	add	r7, sp, #0
 8003a66:	f7ff f94f 	bl	8002d08 <rcc_config>
 8003a6a:	f7ff f981 	bl	8002d70 <gpio_config>
 8003a6e:	4b60      	ldr	r3, [pc, #384]	; (8003bf0 <main+0x190>)
 8003a70:	0018      	movs	r0, r3
 8003a72:	f7ff ff8f 	bl	8003994 <text>
 8003a76:	4b5f      	ldr	r3, [pc, #380]	; (8003bf4 <main+0x194>)
 8003a78:	0018      	movs	r0, r3
 8003a7a:	f7ff ff0f 	bl	800389c <dynamic_text>
 8003a7e:	4b5c      	ldr	r3, [pc, #368]	; (8003bf0 <main+0x190>)
 8003a80:	0018      	movs	r0, r3
 8003a82:	f7ff ff87 	bl	8003994 <text>
 8003a86:	4b5c      	ldr	r3, [pc, #368]	; (8003bf8 <main+0x198>)
 8003a88:	0018      	movs	r0, r3
 8003a8a:	f7ff ff07 	bl	800389c <dynamic_text>
 8003a8e:	4b5b      	ldr	r3, [pc, #364]	; (8003bfc <main+0x19c>)
 8003a90:	0018      	movs	r0, r3
 8003a92:	f7ff ff7f 	bl	8003994 <text>
 8003a96:	f7ff fa71 	bl	8002f7c <sonar_trig>
 8003a9a:	f7ff fac1 	bl	8003020 <sonar_echo>
 8003a9e:	f7ff fb0d 	bl	80030bc <servo_1>
 8003aa2:	f7ff fb5f 	bl	8003164 <servo_2>
 8003aa6:	f7ff fc0d 	bl	80032c4 <systick_config>
 8003aaa:	f7ff fc21 	bl	80032f0 <usart_config>
 8003aae:	230f      	movs	r3, #15
 8003ab0:	18fb      	adds	r3, r7, r3
 8003ab2:	2201      	movs	r2, #1
 8003ab4:	701a      	strb	r2, [r3, #0]
 8003ab6:	e08f      	b.n	8003bd8 <main+0x178>
 8003ab8:	230e      	movs	r3, #14
 8003aba:	18fb      	adds	r3, r7, r3
 8003abc:	2200      	movs	r2, #0
 8003abe:	701a      	strb	r2, [r3, #0]
 8003ac0:	e064      	b.n	8003b8c <main+0x12c>
 8003ac2:	23c8      	movs	r3, #200	; 0xc8
 8003ac4:	00db      	lsls	r3, r3, #3
 8003ac6:	60bb      	str	r3, [r7, #8]
 8003ac8:	4b4d      	ldr	r3, [pc, #308]	; (8003c00 <main+0x1a0>)
 8003aca:	607b      	str	r3, [r7, #4]
 8003acc:	e054      	b.n	8003b78 <main+0x118>
 8003ace:	687a      	ldr	r2, [r7, #4]
 8003ad0:	2380      	movs	r3, #128	; 0x80
 8003ad2:	05db      	lsls	r3, r3, #23
 8003ad4:	0011      	movs	r1, r2
 8003ad6:	0018      	movs	r0, r3
 8003ad8:	f7fe fe4a 	bl	8002770 <LL_TIM_OC_SetCompareCH3>
 8003adc:	4b49      	ldr	r3, [pc, #292]	; (8003c04 <main+0x1a4>)
 8003ade:	781b      	ldrb	r3, [r3, #0]
 8003ae0:	2b00      	cmp	r3, #0
 8003ae2:	d03d      	beq.n	8003b60 <main+0x100>
 8003ae4:	e019      	b.n	8003b1a <main+0xba>
 8003ae6:	4b48      	ldr	r3, [pc, #288]	; (8003c08 <main+0x1a8>)
 8003ae8:	0018      	movs	r0, r3
 8003aea:	f7fe fd73 	bl	80025d4 <LL_TIM_GetCounter>
 8003aee:	0003      	movs	r3, r0
 8003af0:	4a46      	ldr	r2, [pc, #280]	; (8003c0c <main+0x1ac>)
 8003af2:	4293      	cmp	r3, r2
 8003af4:	d800      	bhi.n	8003af8 <main+0x98>
 8003af6:	e010      	b.n	8003b1a <main+0xba>
 8003af8:	687a      	ldr	r2, [r7, #4]
 8003afa:	68bb      	ldr	r3, [r7, #8]
 8003afc:	0011      	movs	r1, r2
 8003afe:	0018      	movs	r0, r3
 8003b00:	f7ff fd56 	bl	80035b0 <Conversation>
 8003b04:	68ba      	ldr	r2, [r7, #8]
 8003b06:	2380      	movs	r3, #128	; 0x80
 8003b08:	05db      	lsls	r3, r3, #23
 8003b0a:	0011      	movs	r1, r2
 8003b0c:	0018      	movs	r0, r3
 8003b0e:	f7fe fe23 	bl	8002758 <LL_TIM_OC_SetCompareCH1>
 8003b12:	223c      	movs	r2, #60	; 0x3c
 8003b14:	68bb      	ldr	r3, [r7, #8]
 8003b16:	189b      	adds	r3, r3, r2
 8003b18:	60bb      	str	r3, [r7, #8]
 8003b1a:	23f0      	movs	r3, #240	; 0xf0
 8003b1c:	015b      	lsls	r3, r3, #5
 8003b1e:	68ba      	ldr	r2, [r7, #8]
 8003b20:	429a      	cmp	r2, r3
 8003b22:	d9e0      	bls.n	8003ae6 <main+0x86>
 8003b24:	4b37      	ldr	r3, [pc, #220]	; (8003c04 <main+0x1a4>)
 8003b26:	2200      	movs	r2, #0
 8003b28:	701a      	strb	r2, [r3, #0]
 8003b2a:	e021      	b.n	8003b70 <main+0x110>
 8003b2c:	4b36      	ldr	r3, [pc, #216]	; (8003c08 <main+0x1a8>)
 8003b2e:	0018      	movs	r0, r3
 8003b30:	f7fe fd50 	bl	80025d4 <LL_TIM_GetCounter>
 8003b34:	0003      	movs	r3, r0
 8003b36:	4a35      	ldr	r2, [pc, #212]	; (8003c0c <main+0x1ac>)
 8003b38:	4293      	cmp	r3, r2
 8003b3a:	d800      	bhi.n	8003b3e <main+0xde>
 8003b3c:	e010      	b.n	8003b60 <main+0x100>
 8003b3e:	687a      	ldr	r2, [r7, #4]
 8003b40:	68bb      	ldr	r3, [r7, #8]
 8003b42:	0011      	movs	r1, r2
 8003b44:	0018      	movs	r0, r3
 8003b46:	f7ff fd33 	bl	80035b0 <Conversation>
 8003b4a:	68ba      	ldr	r2, [r7, #8]
 8003b4c:	2380      	movs	r3, #128	; 0x80
 8003b4e:	05db      	lsls	r3, r3, #23
 8003b50:	0011      	movs	r1, r2
 8003b52:	0018      	movs	r0, r3
 8003b54:	f7fe fe00 	bl	8002758 <LL_TIM_OC_SetCompareCH1>
 8003b58:	223c      	movs	r2, #60	; 0x3c
 8003b5a:	68bb      	ldr	r3, [r7, #8]
 8003b5c:	1a9b      	subs	r3, r3, r2
 8003b5e:	60bb      	str	r3, [r7, #8]
 8003b60:	23c8      	movs	r3, #200	; 0xc8
 8003b62:	00db      	lsls	r3, r3, #3
 8003b64:	68ba      	ldr	r2, [r7, #8]
 8003b66:	429a      	cmp	r2, r3
 8003b68:	d2e0      	bcs.n	8003b2c <main+0xcc>
 8003b6a:	4b26      	ldr	r3, [pc, #152]	; (8003c04 <main+0x1a4>)
 8003b6c:	2201      	movs	r2, #1
 8003b6e:	701a      	strb	r2, [r3, #0]
 8003b70:	225a      	movs	r2, #90	; 0x5a
 8003b72:	687b      	ldr	r3, [r7, #4]
 8003b74:	189b      	adds	r3, r3, r2
 8003b76:	607b      	str	r3, [r7, #4]
 8003b78:	4a25      	ldr	r2, [pc, #148]	; (8003c10 <main+0x1b0>)
 8003b7a:	687b      	ldr	r3, [r7, #4]
 8003b7c:	4293      	cmp	r3, r2
 8003b7e:	d9a6      	bls.n	8003ace <main+0x6e>
 8003b80:	210e      	movs	r1, #14
 8003b82:	187b      	adds	r3, r7, r1
 8003b84:	781a      	ldrb	r2, [r3, #0]
 8003b86:	187b      	adds	r3, r7, r1
 8003b88:	3201      	adds	r2, #1
 8003b8a:	701a      	strb	r2, [r3, #0]
 8003b8c:	2201      	movs	r2, #1
 8003b8e:	230e      	movs	r3, #14
 8003b90:	18fb      	adds	r3, r7, r3
 8003b92:	781b      	ldrb	r3, [r3, #0]
 8003b94:	4293      	cmp	r3, r2
 8003b96:	d394      	bcc.n	8003ac2 <main+0x62>
 8003b98:	23c8      	movs	r3, #200	; 0xc8
 8003b9a:	00da      	lsls	r2, r3, #3
 8003b9c:	2380      	movs	r3, #128	; 0x80
 8003b9e:	05db      	lsls	r3, r3, #23
 8003ba0:	0011      	movs	r1, r2
 8003ba2:	0018      	movs	r0, r3
 8003ba4:	f7fe fdd8 	bl	8002758 <LL_TIM_OC_SetCompareCH1>
 8003ba8:	4a15      	ldr	r2, [pc, #84]	; (8003c00 <main+0x1a0>)
 8003baa:	2380      	movs	r3, #128	; 0x80
 8003bac:	05db      	lsls	r3, r3, #23
 8003bae:	0011      	movs	r1, r2
 8003bb0:	0018      	movs	r0, r3
 8003bb2:	f7fe fddd 	bl	8002770 <LL_TIM_OC_SetCompareCH3>
 8003bb6:	2380      	movs	r3, #128	; 0x80
 8003bb8:	05db      	lsls	r3, r3, #23
 8003bba:	0018      	movs	r0, r3
 8003bbc:	f7fe fecc 	bl	8002958 <LL_TIM_ClearFlag_CC1>
 8003bc0:	2380      	movs	r3, #128	; 0x80
 8003bc2:	05db      	lsls	r3, r3, #23
 8003bc4:	0018      	movs	r0, r3
 8003bc6:	f7fe fedf 	bl	8002988 <LL_TIM_ClearFlag_CC3>
 8003bca:	202a      	movs	r0, #42	; 0x2a
 8003bcc:	f7ff fc10 	bl	80033f0 <manage_response>
 8003bd0:	230f      	movs	r3, #15
 8003bd2:	18fb      	adds	r3, r7, r3
 8003bd4:	2200      	movs	r2, #0
 8003bd6:	701a      	strb	r2, [r3, #0]
 8003bd8:	230f      	movs	r3, #15
 8003bda:	18fb      	adds	r3, r7, r3
 8003bdc:	781b      	ldrb	r3, [r3, #0]
 8003bde:	2b00      	cmp	r3, #0
 8003be0:	d000      	beq.n	8003be4 <main+0x184>
 8003be2:	e769      	b.n	8003ab8 <main+0x58>
 8003be4:	2300      	movs	r3, #0
 8003be6:	0018      	movs	r0, r3
 8003be8:	46bd      	mov	sp, r7
 8003bea:	b004      	add	sp, #16
 8003bec:	bd80      	pop	{r7, pc}
 8003bee:	46c0      	nop			; (mov r8, r8)
 8003bf0:	08005224 	.word	0x08005224
 8003bf4:	08005228 	.word	0x08005228
 8003bf8:	08005238 	.word	0x08005238
 8003bfc:	0800524c 	.word	0x0800524c
 8003c00:	00000e2b 	.word	0x00000e2b
 8003c04:	20000000 	.word	0x20000000
 8003c08:	40002000 	.word	0x40002000
 8003c0c:	0000e28f 	.word	0x0000e28f
 8003c10:	00001a0b 	.word	0x00001a0b

08003c14 <SystemInit>:
 8003c14:	b580      	push	{r7, lr}
 8003c16:	af00      	add	r7, sp, #0
 8003c18:	4b1a      	ldr	r3, [pc, #104]	; (8003c84 <SystemInit+0x70>)
 8003c1a:	681a      	ldr	r2, [r3, #0]
 8003c1c:	4b19      	ldr	r3, [pc, #100]	; (8003c84 <SystemInit+0x70>)
 8003c1e:	2101      	movs	r1, #1
 8003c20:	430a      	orrs	r2, r1
 8003c22:	601a      	str	r2, [r3, #0]
 8003c24:	4b17      	ldr	r3, [pc, #92]	; (8003c84 <SystemInit+0x70>)
 8003c26:	685a      	ldr	r2, [r3, #4]
 8003c28:	4b16      	ldr	r3, [pc, #88]	; (8003c84 <SystemInit+0x70>)
 8003c2a:	4917      	ldr	r1, [pc, #92]	; (8003c88 <SystemInit+0x74>)
 8003c2c:	400a      	ands	r2, r1
 8003c2e:	605a      	str	r2, [r3, #4]
 8003c30:	4b14      	ldr	r3, [pc, #80]	; (8003c84 <SystemInit+0x70>)
 8003c32:	681a      	ldr	r2, [r3, #0]
 8003c34:	4b13      	ldr	r3, [pc, #76]	; (8003c84 <SystemInit+0x70>)
 8003c36:	4915      	ldr	r1, [pc, #84]	; (8003c8c <SystemInit+0x78>)
 8003c38:	400a      	ands	r2, r1
 8003c3a:	601a      	str	r2, [r3, #0]
 8003c3c:	4b11      	ldr	r3, [pc, #68]	; (8003c84 <SystemInit+0x70>)
 8003c3e:	681a      	ldr	r2, [r3, #0]
 8003c40:	4b10      	ldr	r3, [pc, #64]	; (8003c84 <SystemInit+0x70>)
 8003c42:	4913      	ldr	r1, [pc, #76]	; (8003c90 <SystemInit+0x7c>)
 8003c44:	400a      	ands	r2, r1
 8003c46:	601a      	str	r2, [r3, #0]
 8003c48:	4b0e      	ldr	r3, [pc, #56]	; (8003c84 <SystemInit+0x70>)
 8003c4a:	685a      	ldr	r2, [r3, #4]
 8003c4c:	4b0d      	ldr	r3, [pc, #52]	; (8003c84 <SystemInit+0x70>)
 8003c4e:	4911      	ldr	r1, [pc, #68]	; (8003c94 <SystemInit+0x80>)
 8003c50:	400a      	ands	r2, r1
 8003c52:	605a      	str	r2, [r3, #4]
 8003c54:	4b0b      	ldr	r3, [pc, #44]	; (8003c84 <SystemInit+0x70>)
 8003c56:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8003c58:	4b0a      	ldr	r3, [pc, #40]	; (8003c84 <SystemInit+0x70>)
 8003c5a:	210f      	movs	r1, #15
 8003c5c:	438a      	bics	r2, r1
 8003c5e:	62da      	str	r2, [r3, #44]	; 0x2c
 8003c60:	4b08      	ldr	r3, [pc, #32]	; (8003c84 <SystemInit+0x70>)
 8003c62:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8003c64:	4b07      	ldr	r3, [pc, #28]	; (8003c84 <SystemInit+0x70>)
 8003c66:	490c      	ldr	r1, [pc, #48]	; (8003c98 <SystemInit+0x84>)
 8003c68:	400a      	ands	r2, r1
 8003c6a:	631a      	str	r2, [r3, #48]	; 0x30
 8003c6c:	4b05      	ldr	r3, [pc, #20]	; (8003c84 <SystemInit+0x70>)
 8003c6e:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8003c70:	4b04      	ldr	r3, [pc, #16]	; (8003c84 <SystemInit+0x70>)
 8003c72:	2101      	movs	r1, #1
 8003c74:	438a      	bics	r2, r1
 8003c76:	635a      	str	r2, [r3, #52]	; 0x34
 8003c78:	4b02      	ldr	r3, [pc, #8]	; (8003c84 <SystemInit+0x70>)
 8003c7a:	2200      	movs	r2, #0
 8003c7c:	609a      	str	r2, [r3, #8]
 8003c7e:	46c0      	nop			; (mov r8, r8)
 8003c80:	46bd      	mov	sp, r7
 8003c82:	bd80      	pop	{r7, pc}
 8003c84:	40021000 	.word	0x40021000
 8003c88:	f8ffb80c 	.word	0xf8ffb80c
 8003c8c:	fef6ffff 	.word	0xfef6ffff
 8003c90:	fffbffff 	.word	0xfffbffff
 8003c94:	ffc0ffff 	.word	0xffc0ffff
 8003c98:	fffffeac 	.word	0xfffffeac

08003c9c <NMI_Handler>:
 8003c9c:	b580      	push	{r7, lr}
 8003c9e:	af00      	add	r7, sp, #0
 8003ca0:	46c0      	nop			; (mov r8, r8)
 8003ca2:	46bd      	mov	sp, r7
 8003ca4:	bd80      	pop	{r7, pc}

08003ca6 <HardFault_Handler>:
 8003ca6:	b580      	push	{r7, lr}
 8003ca8:	af00      	add	r7, sp, #0
 8003caa:	e7fe      	b.n	8003caa <HardFault_Handler+0x4>

08003cac <SVC_Handler>:
 8003cac:	b580      	push	{r7, lr}
 8003cae:	af00      	add	r7, sp, #0
 8003cb0:	46c0      	nop			; (mov r8, r8)
 8003cb2:	46bd      	mov	sp, r7
 8003cb4:	bd80      	pop	{r7, pc}

08003cb6 <PendSV_Handler>:
 8003cb6:	b580      	push	{r7, lr}
 8003cb8:	af00      	add	r7, sp, #0
 8003cba:	46c0      	nop			; (mov r8, r8)
 8003cbc:	46bd      	mov	sp, r7
 8003cbe:	bd80      	pop	{r7, pc}

08003cc0 <__libc_init_array>:
 8003cc0:	b570      	push	{r4, r5, r6, lr}
 8003cc2:	4d0c      	ldr	r5, [pc, #48]	; (8003cf4 <__libc_init_array+0x34>)
 8003cc4:	4e0c      	ldr	r6, [pc, #48]	; (8003cf8 <__libc_init_array+0x38>)
 8003cc6:	1b76      	subs	r6, r6, r5
 8003cc8:	10b6      	asrs	r6, r6, #2
 8003cca:	d005      	beq.n	8003cd8 <__libc_init_array+0x18>
 8003ccc:	2400      	movs	r4, #0
 8003cce:	cd08      	ldmia	r5!, {r3}
 8003cd0:	3401      	adds	r4, #1
 8003cd2:	4798      	blx	r3
 8003cd4:	42a6      	cmp	r6, r4
 8003cd6:	d1fa      	bne.n	8003cce <__libc_init_array+0xe>
 8003cd8:	f001 fa8e 	bl	80051f8 <_init>
 8003cdc:	4d07      	ldr	r5, [pc, #28]	; (8003cfc <__libc_init_array+0x3c>)
 8003cde:	4e08      	ldr	r6, [pc, #32]	; (8003d00 <__libc_init_array+0x40>)
 8003ce0:	1b76      	subs	r6, r6, r5
 8003ce2:	10b6      	asrs	r6, r6, #2
 8003ce4:	d005      	beq.n	8003cf2 <__libc_init_array+0x32>
 8003ce6:	2400      	movs	r4, #0
 8003ce8:	cd08      	ldmia	r5!, {r3}
 8003cea:	3401      	adds	r4, #1
 8003cec:	4798      	blx	r3
 8003cee:	42a6      	cmp	r6, r4
 8003cf0:	d1fa      	bne.n	8003ce8 <__libc_init_array+0x28>
 8003cf2:	bd70      	pop	{r4, r5, r6, pc}
 8003cf4:	08005638 	.word	0x08005638
 8003cf8:	08005638 	.word	0x08005638
 8003cfc:	08005638 	.word	0x08005638
 8003d00:	08005640 	.word	0x08005640

08003d04 <register_fini>:
 8003d04:	4b03      	ldr	r3, [pc, #12]	; (8003d14 <register_fini+0x10>)
 8003d06:	b510      	push	{r4, lr}
 8003d08:	2b00      	cmp	r3, #0
 8003d0a:	d002      	beq.n	8003d12 <register_fini+0xe>
 8003d0c:	4802      	ldr	r0, [pc, #8]	; (8003d18 <register_fini+0x14>)
 8003d0e:	f000 f805 	bl	8003d1c <atexit>
 8003d12:	bd10      	pop	{r4, pc}
 8003d14:	00000000 	.word	0x00000000
 8003d18:	08003d2d 	.word	0x08003d2d

08003d1c <atexit>:
 8003d1c:	b510      	push	{r4, lr}
 8003d1e:	0001      	movs	r1, r0
 8003d20:	2300      	movs	r3, #0
 8003d22:	2200      	movs	r2, #0
 8003d24:	2000      	movs	r0, #0
 8003d26:	f000 f819 	bl	8003d5c <__register_exitproc>
 8003d2a:	bd10      	pop	{r4, pc}

08003d2c <__libc_fini_array>:
 8003d2c:	b570      	push	{r4, r5, r6, lr}
 8003d2e:	4d07      	ldr	r5, [pc, #28]	; (8003d4c <__libc_fini_array+0x20>)
 8003d30:	4c07      	ldr	r4, [pc, #28]	; (8003d50 <__libc_fini_array+0x24>)
 8003d32:	1b64      	subs	r4, r4, r5
 8003d34:	10a4      	asrs	r4, r4, #2
 8003d36:	d005      	beq.n	8003d44 <__libc_fini_array+0x18>
 8003d38:	3c01      	subs	r4, #1
 8003d3a:	00a3      	lsls	r3, r4, #2
 8003d3c:	58eb      	ldr	r3, [r5, r3]
 8003d3e:	4798      	blx	r3
 8003d40:	2c00      	cmp	r4, #0
 8003d42:	d1f9      	bne.n	8003d38 <__libc_fini_array+0xc>
 8003d44:	f001 fa5e 	bl	8005204 <_fini>
 8003d48:	bd70      	pop	{r4, r5, r6, pc}
 8003d4a:	46c0      	nop			; (mov r8, r8)
 8003d4c:	08005640 	.word	0x08005640
 8003d50:	08005644 	.word	0x08005644

08003d54 <__retarget_lock_acquire_recursive>:
 8003d54:	4770      	bx	lr
 8003d56:	46c0      	nop			; (mov r8, r8)

08003d58 <__retarget_lock_release_recursive>:
 8003d58:	4770      	bx	lr
 8003d5a:	46c0      	nop			; (mov r8, r8)

08003d5c <__register_exitproc>:
 8003d5c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003d5e:	46d6      	mov	lr, sl
 8003d60:	464f      	mov	r7, r9
 8003d62:	4646      	mov	r6, r8
 8003d64:	b5c0      	push	{r6, r7, lr}
 8003d66:	4f26      	ldr	r7, [pc, #152]	; (8003e00 <__register_exitproc+0xa4>)
 8003d68:	b082      	sub	sp, #8
 8003d6a:	0006      	movs	r6, r0
 8003d6c:	6838      	ldr	r0, [r7, #0]
 8003d6e:	4692      	mov	sl, r2
 8003d70:	4698      	mov	r8, r3
 8003d72:	4689      	mov	r9, r1
 8003d74:	f7ff ffee 	bl	8003d54 <__retarget_lock_acquire_recursive>
 8003d78:	4b22      	ldr	r3, [pc, #136]	; (8003e04 <__register_exitproc+0xa8>)
 8003d7a:	681b      	ldr	r3, [r3, #0]
 8003d7c:	9301      	str	r3, [sp, #4]
 8003d7e:	23a4      	movs	r3, #164	; 0xa4
 8003d80:	9a01      	ldr	r2, [sp, #4]
 8003d82:	005b      	lsls	r3, r3, #1
 8003d84:	58d5      	ldr	r5, [r2, r3]
 8003d86:	2d00      	cmp	r5, #0
 8003d88:	d02e      	beq.n	8003de8 <__register_exitproc+0x8c>
 8003d8a:	686c      	ldr	r4, [r5, #4]
 8003d8c:	2c1f      	cmp	r4, #31
 8003d8e:	dc30      	bgt.n	8003df2 <__register_exitproc+0x96>
 8003d90:	2e00      	cmp	r6, #0
 8003d92:	d10f      	bne.n	8003db4 <__register_exitproc+0x58>
 8003d94:	1c63      	adds	r3, r4, #1
 8003d96:	606b      	str	r3, [r5, #4]
 8003d98:	464b      	mov	r3, r9
 8003d9a:	3402      	adds	r4, #2
 8003d9c:	00a4      	lsls	r4, r4, #2
 8003d9e:	6838      	ldr	r0, [r7, #0]
 8003da0:	5163      	str	r3, [r4, r5]
 8003da2:	f7ff ffd9 	bl	8003d58 <__retarget_lock_release_recursive>
 8003da6:	2000      	movs	r0, #0
 8003da8:	b002      	add	sp, #8
 8003daa:	bce0      	pop	{r5, r6, r7}
 8003dac:	46ba      	mov	sl, r7
 8003dae:	46b1      	mov	r9, r6
 8003db0:	46a8      	mov	r8, r5
 8003db2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8003db4:	2288      	movs	r2, #136	; 0x88
 8003db6:	4651      	mov	r1, sl
 8003db8:	0028      	movs	r0, r5
 8003dba:	00a3      	lsls	r3, r4, #2
 8003dbc:	18eb      	adds	r3, r5, r3
 8003dbe:	5099      	str	r1, [r3, r2]
 8003dc0:	3a87      	subs	r2, #135	; 0x87
 8003dc2:	40a2      	lsls	r2, r4
 8003dc4:	3089      	adds	r0, #137	; 0x89
 8003dc6:	30ff      	adds	r0, #255	; 0xff
 8003dc8:	6801      	ldr	r1, [r0, #0]
 8003dca:	4311      	orrs	r1, r2
 8003dcc:	6001      	str	r1, [r0, #0]
 8003dce:	2184      	movs	r1, #132	; 0x84
 8003dd0:	4640      	mov	r0, r8
 8003dd2:	0049      	lsls	r1, r1, #1
 8003dd4:	5058      	str	r0, [r3, r1]
 8003dd6:	2e02      	cmp	r6, #2
 8003dd8:	d1dc      	bne.n	8003d94 <__register_exitproc+0x38>
 8003dda:	002b      	movs	r3, r5
 8003ddc:	338d      	adds	r3, #141	; 0x8d
 8003dde:	33ff      	adds	r3, #255	; 0xff
 8003de0:	6819      	ldr	r1, [r3, #0]
 8003de2:	430a      	orrs	r2, r1
 8003de4:	601a      	str	r2, [r3, #0]
 8003de6:	e7d5      	b.n	8003d94 <__register_exitproc+0x38>
 8003de8:	0015      	movs	r5, r2
 8003dea:	354d      	adds	r5, #77	; 0x4d
 8003dec:	35ff      	adds	r5, #255	; 0xff
 8003dee:	50d5      	str	r5, [r2, r3]
 8003df0:	e7cb      	b.n	8003d8a <__register_exitproc+0x2e>
 8003df2:	6838      	ldr	r0, [r7, #0]
 8003df4:	f7ff ffb0 	bl	8003d58 <__retarget_lock_release_recursive>
 8003df8:	2001      	movs	r0, #1
 8003dfa:	4240      	negs	r0, r0
 8003dfc:	e7d4      	b.n	8003da8 <__register_exitproc+0x4c>
 8003dfe:	46c0      	nop			; (mov r8, r8)
 8003e00:	20000430 	.word	0x20000430
 8003e04:	0800545c 	.word	0x0800545c

08003e08 <cos>:
 8003e08:	b5d0      	push	{r4, r6, r7, lr}
 8003e0a:	4a25      	ldr	r2, [pc, #148]	; (8003ea0 <cos+0x98>)
 8003e0c:	004b      	lsls	r3, r1, #1
 8003e0e:	b086      	sub	sp, #24
 8003e10:	085b      	lsrs	r3, r3, #1
 8003e12:	4293      	cmp	r3, r2
 8003e14:	dd22      	ble.n	8003e5c <cos+0x54>
 8003e16:	4a23      	ldr	r2, [pc, #140]	; (8003ea4 <cos+0x9c>)
 8003e18:	4293      	cmp	r3, r2
 8003e1a:	dd09      	ble.n	8003e30 <cos+0x28>
 8003e1c:	0002      	movs	r2, r0
 8003e1e:	000b      	movs	r3, r1
 8003e20:	f7fd f86a 	bl	8000ef8 <__aeabi_dsub>
 8003e24:	0002      	movs	r2, r0
 8003e26:	000b      	movs	r3, r1
 8003e28:	0010      	movs	r0, r2
 8003e2a:	0019      	movs	r1, r3
 8003e2c:	b006      	add	sp, #24
 8003e2e:	bdd0      	pop	{r4, r6, r7, pc}
 8003e30:	aa02      	add	r2, sp, #8
 8003e32:	f000 f88b 	bl	8003f4c <__ieee754_rem_pio2>
 8003e36:	2303      	movs	r3, #3
 8003e38:	4018      	ands	r0, r3
 8003e3a:	9a04      	ldr	r2, [sp, #16]
 8003e3c:	9b05      	ldr	r3, [sp, #20]
 8003e3e:	2801      	cmp	r0, #1
 8003e40:	d013      	beq.n	8003e6a <cos+0x62>
 8003e42:	2802      	cmp	r0, #2
 8003e44:	d022      	beq.n	8003e8c <cos+0x84>
 8003e46:	2800      	cmp	r0, #0
 8003e48:	d019      	beq.n	8003e7e <cos+0x76>
 8003e4a:	9802      	ldr	r0, [sp, #8]
 8003e4c:	9903      	ldr	r1, [sp, #12]
 8003e4e:	2401      	movs	r4, #1
 8003e50:	9400      	str	r4, [sp, #0]
 8003e52:	f000 ffff 	bl	8004e54 <__kernel_sin>
 8003e56:	0002      	movs	r2, r0
 8003e58:	000b      	movs	r3, r1
 8003e5a:	e7e5      	b.n	8003e28 <cos+0x20>
 8003e5c:	2200      	movs	r2, #0
 8003e5e:	2300      	movs	r3, #0
 8003e60:	f000 fa7c 	bl	800435c <__kernel_cos>
 8003e64:	0002      	movs	r2, r0
 8003e66:	000b      	movs	r3, r1
 8003e68:	e7de      	b.n	8003e28 <cos+0x20>
 8003e6a:	9000      	str	r0, [sp, #0]
 8003e6c:	9802      	ldr	r0, [sp, #8]
 8003e6e:	9903      	ldr	r1, [sp, #12]
 8003e70:	f000 fff0 	bl	8004e54 <__kernel_sin>
 8003e74:	2380      	movs	r3, #128	; 0x80
 8003e76:	061b      	lsls	r3, r3, #24
 8003e78:	0002      	movs	r2, r0
 8003e7a:	18cb      	adds	r3, r1, r3
 8003e7c:	e7d4      	b.n	8003e28 <cos+0x20>
 8003e7e:	9802      	ldr	r0, [sp, #8]
 8003e80:	9903      	ldr	r1, [sp, #12]
 8003e82:	f000 fa6b 	bl	800435c <__kernel_cos>
 8003e86:	0002      	movs	r2, r0
 8003e88:	000b      	movs	r3, r1
 8003e8a:	e7cd      	b.n	8003e28 <cos+0x20>
 8003e8c:	9802      	ldr	r0, [sp, #8]
 8003e8e:	9903      	ldr	r1, [sp, #12]
 8003e90:	f000 fa64 	bl	800435c <__kernel_cos>
 8003e94:	2380      	movs	r3, #128	; 0x80
 8003e96:	061b      	lsls	r3, r3, #24
 8003e98:	0002      	movs	r2, r0
 8003e9a:	18cb      	adds	r3, r1, r3
 8003e9c:	e7c4      	b.n	8003e28 <cos+0x20>
 8003e9e:	46c0      	nop			; (mov r8, r8)
 8003ea0:	3fe921fb 	.word	0x3fe921fb
 8003ea4:	7fefffff 	.word	0x7fefffff

08003ea8 <sin>:
 8003ea8:	b5d0      	push	{r4, r6, r7, lr}
 8003eaa:	4a26      	ldr	r2, [pc, #152]	; (8003f44 <sin+0x9c>)
 8003eac:	004b      	lsls	r3, r1, #1
 8003eae:	b086      	sub	sp, #24
 8003eb0:	085b      	lsrs	r3, r3, #1
 8003eb2:	4293      	cmp	r3, r2
 8003eb4:	dd22      	ble.n	8003efc <sin+0x54>
 8003eb6:	4a24      	ldr	r2, [pc, #144]	; (8003f48 <sin+0xa0>)
 8003eb8:	4293      	cmp	r3, r2
 8003eba:	dd09      	ble.n	8003ed0 <sin+0x28>
 8003ebc:	0002      	movs	r2, r0
 8003ebe:	000b      	movs	r3, r1
 8003ec0:	f7fd f81a 	bl	8000ef8 <__aeabi_dsub>
 8003ec4:	0002      	movs	r2, r0
 8003ec6:	000b      	movs	r3, r1
 8003ec8:	0010      	movs	r0, r2
 8003eca:	0019      	movs	r1, r3
 8003ecc:	b006      	add	sp, #24
 8003ece:	bdd0      	pop	{r4, r6, r7, pc}
 8003ed0:	aa02      	add	r2, sp, #8
 8003ed2:	f000 f83b 	bl	8003f4c <__ieee754_rem_pio2>
 8003ed6:	2303      	movs	r3, #3
 8003ed8:	4018      	ands	r0, r3
 8003eda:	9a04      	ldr	r2, [sp, #16]
 8003edc:	9b05      	ldr	r3, [sp, #20]
 8003ede:	2801      	cmp	r0, #1
 8003ee0:	d015      	beq.n	8003f0e <sin+0x66>
 8003ee2:	2802      	cmp	r0, #2
 8003ee4:	d023      	beq.n	8003f2e <sin+0x86>
 8003ee6:	2800      	cmp	r0, #0
 8003ee8:	d018      	beq.n	8003f1c <sin+0x74>
 8003eea:	9802      	ldr	r0, [sp, #8]
 8003eec:	9903      	ldr	r1, [sp, #12]
 8003eee:	f000 fa35 	bl	800435c <__kernel_cos>
 8003ef2:	2380      	movs	r3, #128	; 0x80
 8003ef4:	061b      	lsls	r3, r3, #24
 8003ef6:	0002      	movs	r2, r0
 8003ef8:	18cb      	adds	r3, r1, r3
 8003efa:	e7e5      	b.n	8003ec8 <sin+0x20>
 8003efc:	2300      	movs	r3, #0
 8003efe:	2200      	movs	r2, #0
 8003f00:	9300      	str	r3, [sp, #0]
 8003f02:	2300      	movs	r3, #0
 8003f04:	f000 ffa6 	bl	8004e54 <__kernel_sin>
 8003f08:	0002      	movs	r2, r0
 8003f0a:	000b      	movs	r3, r1
 8003f0c:	e7dc      	b.n	8003ec8 <sin+0x20>
 8003f0e:	9802      	ldr	r0, [sp, #8]
 8003f10:	9903      	ldr	r1, [sp, #12]
 8003f12:	f000 fa23 	bl	800435c <__kernel_cos>
 8003f16:	0002      	movs	r2, r0
 8003f18:	000b      	movs	r3, r1
 8003f1a:	e7d5      	b.n	8003ec8 <sin+0x20>
 8003f1c:	2401      	movs	r4, #1
 8003f1e:	9802      	ldr	r0, [sp, #8]
 8003f20:	9903      	ldr	r1, [sp, #12]
 8003f22:	9400      	str	r4, [sp, #0]
 8003f24:	f000 ff96 	bl	8004e54 <__kernel_sin>
 8003f28:	0002      	movs	r2, r0
 8003f2a:	000b      	movs	r3, r1
 8003f2c:	e7cc      	b.n	8003ec8 <sin+0x20>
 8003f2e:	2401      	movs	r4, #1
 8003f30:	9802      	ldr	r0, [sp, #8]
 8003f32:	9903      	ldr	r1, [sp, #12]
 8003f34:	9400      	str	r4, [sp, #0]
 8003f36:	f000 ff8d 	bl	8004e54 <__kernel_sin>
 8003f3a:	2380      	movs	r3, #128	; 0x80
 8003f3c:	061b      	lsls	r3, r3, #24
 8003f3e:	0002      	movs	r2, r0
 8003f40:	18cb      	adds	r3, r1, r3
 8003f42:	e7c1      	b.n	8003ec8 <sin+0x20>
 8003f44:	3fe921fb 	.word	0x3fe921fb
 8003f48:	7fefffff 	.word	0x7fefffff

08003f4c <__ieee754_rem_pio2>:
 8003f4c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003f4e:	464e      	mov	r6, r9
 8003f50:	4657      	mov	r7, sl
 8003f52:	46de      	mov	lr, fp
 8003f54:	4645      	mov	r5, r8
 8003f56:	b5e0      	push	{r5, r6, r7, lr}
 8003f58:	4bdf      	ldr	r3, [pc, #892]	; (80042d8 <__ieee754_rem_pio2+0x38c>)
 8003f5a:	004e      	lsls	r6, r1, #1
 8003f5c:	0017      	movs	r7, r2
 8003f5e:	4689      	mov	r9, r1
 8003f60:	b08f      	sub	sp, #60	; 0x3c
 8003f62:	0876      	lsrs	r6, r6, #1
 8003f64:	429e      	cmp	r6, r3
 8003f66:	dc00      	bgt.n	8003f6a <__ieee754_rem_pio2+0x1e>
 8003f68:	e08b      	b.n	8004082 <__ieee754_rem_pio2+0x136>
 8003f6a:	4bdc      	ldr	r3, [pc, #880]	; (80042dc <__ieee754_rem_pio2+0x390>)
 8003f6c:	429e      	cmp	r6, r3
 8003f6e:	dc28      	bgt.n	8003fc2 <__ieee754_rem_pio2+0x76>
 8003f70:	4adb      	ldr	r2, [pc, #876]	; (80042e0 <__ieee754_rem_pio2+0x394>)
 8003f72:	2900      	cmp	r1, #0
 8003f74:	dc00      	bgt.n	8003f78 <__ieee754_rem_pio2+0x2c>
 8003f76:	e190      	b.n	800429a <__ieee754_rem_pio2+0x34e>
 8003f78:	4bda      	ldr	r3, [pc, #872]	; (80042e4 <__ieee754_rem_pio2+0x398>)
 8003f7a:	f7fc ffbd 	bl	8000ef8 <__aeabi_dsub>
 8003f7e:	4bd9      	ldr	r3, [pc, #868]	; (80042e4 <__ieee754_rem_pio2+0x398>)
 8003f80:	0004      	movs	r4, r0
 8003f82:	000d      	movs	r5, r1
 8003f84:	429e      	cmp	r6, r3
 8003f86:	d100      	bne.n	8003f8a <__ieee754_rem_pio2+0x3e>
 8003f88:	e091      	b.n	80040ae <__ieee754_rem_pio2+0x162>
 8003f8a:	4ad7      	ldr	r2, [pc, #860]	; (80042e8 <__ieee754_rem_pio2+0x39c>)
 8003f8c:	4bd7      	ldr	r3, [pc, #860]	; (80042ec <__ieee754_rem_pio2+0x3a0>)
 8003f8e:	f7fc ffb3 	bl	8000ef8 <__aeabi_dsub>
 8003f92:	0002      	movs	r2, r0
 8003f94:	000b      	movs	r3, r1
 8003f96:	0020      	movs	r0, r4
 8003f98:	603a      	str	r2, [r7, #0]
 8003f9a:	607b      	str	r3, [r7, #4]
 8003f9c:	0029      	movs	r1, r5
 8003f9e:	f7fc ffab 	bl	8000ef8 <__aeabi_dsub>
 8003fa2:	4bd2      	ldr	r3, [pc, #840]	; (80042ec <__ieee754_rem_pio2+0x3a0>)
 8003fa4:	4ad0      	ldr	r2, [pc, #832]	; (80042e8 <__ieee754_rem_pio2+0x39c>)
 8003fa6:	f7fc ffa7 	bl	8000ef8 <__aeabi_dsub>
 8003faa:	2301      	movs	r3, #1
 8003fac:	4698      	mov	r8, r3
 8003fae:	60b8      	str	r0, [r7, #8]
 8003fb0:	60f9      	str	r1, [r7, #12]
 8003fb2:	4640      	mov	r0, r8
 8003fb4:	b00f      	add	sp, #60	; 0x3c
 8003fb6:	bcf0      	pop	{r4, r5, r6, r7}
 8003fb8:	46bb      	mov	fp, r7
 8003fba:	46b2      	mov	sl, r6
 8003fbc:	46a9      	mov	r9, r5
 8003fbe:	46a0      	mov	r8, r4
 8003fc0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8003fc2:	4bcb      	ldr	r3, [pc, #812]	; (80042f0 <__ieee754_rem_pio2+0x3a4>)
 8003fc4:	429e      	cmp	r6, r3
 8003fc6:	dc00      	bgt.n	8003fca <__ieee754_rem_pio2+0x7e>
 8003fc8:	e08d      	b.n	80040e6 <__ieee754_rem_pio2+0x19a>
 8003fca:	4bca      	ldr	r3, [pc, #808]	; (80042f4 <__ieee754_rem_pio2+0x3a8>)
 8003fcc:	429e      	cmp	r6, r3
 8003fce:	dc63      	bgt.n	8004098 <__ieee754_rem_pio2+0x14c>
 8003fd0:	49c9      	ldr	r1, [pc, #804]	; (80042f8 <__ieee754_rem_pio2+0x3ac>)
 8003fd2:	1532      	asrs	r2, r6, #20
 8003fd4:	4688      	mov	r8, r1
 8003fd6:	4490      	add	r8, r2
 8003fd8:	4643      	mov	r3, r8
 8003fda:	051b      	lsls	r3, r3, #20
 8003fdc:	1af5      	subs	r5, r6, r3
 8003fde:	0029      	movs	r1, r5
 8003fe0:	0004      	movs	r4, r0
 8003fe2:	f7fd fb1b 	bl	800161c <__aeabi_d2iz>
 8003fe6:	f7fd fb4f 	bl	8001688 <__aeabi_i2d>
 8003fea:	0002      	movs	r2, r0
 8003fec:	000b      	movs	r3, r1
 8003fee:	0020      	movs	r0, r4
 8003ff0:	0029      	movs	r1, r5
 8003ff2:	9208      	str	r2, [sp, #32]
 8003ff4:	9309      	str	r3, [sp, #36]	; 0x24
 8003ff6:	f7fc ff7f 	bl	8000ef8 <__aeabi_dsub>
 8003ffa:	2200      	movs	r2, #0
 8003ffc:	4bbf      	ldr	r3, [pc, #764]	; (80042fc <__ieee754_rem_pio2+0x3b0>)
 8003ffe:	f7fc fd0d 	bl	8000a1c <__aeabi_dmul>
 8004002:	000d      	movs	r5, r1
 8004004:	0004      	movs	r4, r0
 8004006:	f7fd fb09 	bl	800161c <__aeabi_d2iz>
 800400a:	0006      	movs	r6, r0
 800400c:	f7fd fb3c 	bl	8001688 <__aeabi_i2d>
 8004010:	0002      	movs	r2, r0
 8004012:	000b      	movs	r3, r1
 8004014:	0020      	movs	r0, r4
 8004016:	0029      	movs	r1, r5
 8004018:	920a      	str	r2, [sp, #40]	; 0x28
 800401a:	930b      	str	r3, [sp, #44]	; 0x2c
 800401c:	f7fc ff6c 	bl	8000ef8 <__aeabi_dsub>
 8004020:	2200      	movs	r2, #0
 8004022:	4bb6      	ldr	r3, [pc, #728]	; (80042fc <__ieee754_rem_pio2+0x3b0>)
 8004024:	f7fc fcfa 	bl	8000a1c <__aeabi_dmul>
 8004028:	2200      	movs	r2, #0
 800402a:	2300      	movs	r3, #0
 800402c:	900c      	str	r0, [sp, #48]	; 0x30
 800402e:	910d      	str	r1, [sp, #52]	; 0x34
 8004030:	f7fd fb90 	bl	8001754 <__aeabi_dcmpeq>
 8004034:	2800      	cmp	r0, #0
 8004036:	d100      	bne.n	800403a <__ieee754_rem_pio2+0xee>
 8004038:	e103      	b.n	8004242 <__ieee754_rem_pio2+0x2f6>
 800403a:	0033      	movs	r3, r6
 800403c:	1e5a      	subs	r2, r3, #1
 800403e:	4193      	sbcs	r3, r2
 8004040:	3301      	adds	r3, #1
 8004042:	4aaf      	ldr	r2, [pc, #700]	; (8004300 <__ieee754_rem_pio2+0x3b4>)
 8004044:	0039      	movs	r1, r7
 8004046:	9201      	str	r2, [sp, #4]
 8004048:	2202      	movs	r2, #2
 800404a:	a808      	add	r0, sp, #32
 800404c:	9200      	str	r2, [sp, #0]
 800404e:	4642      	mov	r2, r8
 8004050:	f000 fa9c 	bl	800458c <__kernel_rem_pio2>
 8004054:	464b      	mov	r3, r9
 8004056:	4680      	mov	r8, r0
 8004058:	2b00      	cmp	r3, #0
 800405a:	daaa      	bge.n	8003fb2 <__ieee754_rem_pio2+0x66>
 800405c:	2080      	movs	r0, #128	; 0x80
 800405e:	0600      	lsls	r0, r0, #24
 8004060:	4684      	mov	ip, r0
 8004062:	6879      	ldr	r1, [r7, #4]
 8004064:	683a      	ldr	r2, [r7, #0]
 8004066:	4461      	add	r1, ip
 8004068:	000b      	movs	r3, r1
 800406a:	68f9      	ldr	r1, [r7, #12]
 800406c:	603a      	str	r2, [r7, #0]
 800406e:	607b      	str	r3, [r7, #4]
 8004070:	4461      	add	r1, ip
 8004072:	000b      	movs	r3, r1
 8004074:	68ba      	ldr	r2, [r7, #8]
 8004076:	60ba      	str	r2, [r7, #8]
 8004078:	60fb      	str	r3, [r7, #12]
 800407a:	4643      	mov	r3, r8
 800407c:	425b      	negs	r3, r3
 800407e:	4698      	mov	r8, r3
 8004080:	e797      	b.n	8003fb2 <__ieee754_rem_pio2+0x66>
 8004082:	0002      	movs	r2, r0
 8004084:	000b      	movs	r3, r1
 8004086:	603a      	str	r2, [r7, #0]
 8004088:	607b      	str	r3, [r7, #4]
 800408a:	2300      	movs	r3, #0
 800408c:	2200      	movs	r2, #0
 800408e:	60ba      	str	r2, [r7, #8]
 8004090:	60fb      	str	r3, [r7, #12]
 8004092:	2300      	movs	r3, #0
 8004094:	4698      	mov	r8, r3
 8004096:	e78c      	b.n	8003fb2 <__ieee754_rem_pio2+0x66>
 8004098:	000b      	movs	r3, r1
 800409a:	0002      	movs	r2, r0
 800409c:	f7fc ff2c 	bl	8000ef8 <__aeabi_dsub>
 80040a0:	2300      	movs	r3, #0
 80040a2:	60b8      	str	r0, [r7, #8]
 80040a4:	60f9      	str	r1, [r7, #12]
 80040a6:	4698      	mov	r8, r3
 80040a8:	6038      	str	r0, [r7, #0]
 80040aa:	6079      	str	r1, [r7, #4]
 80040ac:	e781      	b.n	8003fb2 <__ieee754_rem_pio2+0x66>
 80040ae:	22d3      	movs	r2, #211	; 0xd3
 80040b0:	4b8e      	ldr	r3, [pc, #568]	; (80042ec <__ieee754_rem_pio2+0x3a0>)
 80040b2:	0552      	lsls	r2, r2, #21
 80040b4:	f7fc ff20 	bl	8000ef8 <__aeabi_dsub>
 80040b8:	4a92      	ldr	r2, [pc, #584]	; (8004304 <__ieee754_rem_pio2+0x3b8>)
 80040ba:	4b93      	ldr	r3, [pc, #588]	; (8004308 <__ieee754_rem_pio2+0x3bc>)
 80040bc:	0004      	movs	r4, r0
 80040be:	000d      	movs	r5, r1
 80040c0:	f7fc ff1a 	bl	8000ef8 <__aeabi_dsub>
 80040c4:	0002      	movs	r2, r0
 80040c6:	000b      	movs	r3, r1
 80040c8:	0020      	movs	r0, r4
 80040ca:	603a      	str	r2, [r7, #0]
 80040cc:	607b      	str	r3, [r7, #4]
 80040ce:	0029      	movs	r1, r5
 80040d0:	f7fc ff12 	bl	8000ef8 <__aeabi_dsub>
 80040d4:	4b8c      	ldr	r3, [pc, #560]	; (8004308 <__ieee754_rem_pio2+0x3bc>)
 80040d6:	4a8b      	ldr	r2, [pc, #556]	; (8004304 <__ieee754_rem_pio2+0x3b8>)
 80040d8:	f7fc ff0e 	bl	8000ef8 <__aeabi_dsub>
 80040dc:	2301      	movs	r3, #1
 80040de:	60b8      	str	r0, [r7, #8]
 80040e0:	60f9      	str	r1, [r7, #12]
 80040e2:	4698      	mov	r8, r3
 80040e4:	e765      	b.n	8003fb2 <__ieee754_rem_pio2+0x66>
 80040e6:	f000 ff6b 	bl	8004fc0 <fabs>
 80040ea:	4a88      	ldr	r2, [pc, #544]	; (800430c <__ieee754_rem_pio2+0x3c0>)
 80040ec:	4b88      	ldr	r3, [pc, #544]	; (8004310 <__ieee754_rem_pio2+0x3c4>)
 80040ee:	0004      	movs	r4, r0
 80040f0:	000d      	movs	r5, r1
 80040f2:	f7fc fc93 	bl	8000a1c <__aeabi_dmul>
 80040f6:	2200      	movs	r2, #0
 80040f8:	4b86      	ldr	r3, [pc, #536]	; (8004314 <__ieee754_rem_pio2+0x3c8>)
 80040fa:	f7fd fc83 	bl	8001a04 <__aeabi_dadd>
 80040fe:	f7fd fa8d 	bl	800161c <__aeabi_d2iz>
 8004102:	4680      	mov	r8, r0
 8004104:	f7fd fac0 	bl	8001688 <__aeabi_i2d>
 8004108:	4a75      	ldr	r2, [pc, #468]	; (80042e0 <__ieee754_rem_pio2+0x394>)
 800410a:	4b76      	ldr	r3, [pc, #472]	; (80042e4 <__ieee754_rem_pio2+0x398>)
 800410c:	9004      	str	r0, [sp, #16]
 800410e:	9105      	str	r1, [sp, #20]
 8004110:	f7fc fc84 	bl	8000a1c <__aeabi_dmul>
 8004114:	0002      	movs	r2, r0
 8004116:	000b      	movs	r3, r1
 8004118:	0020      	movs	r0, r4
 800411a:	0029      	movs	r1, r5
 800411c:	f7fc feec 	bl	8000ef8 <__aeabi_dsub>
 8004120:	4b72      	ldr	r3, [pc, #456]	; (80042ec <__ieee754_rem_pio2+0x3a0>)
 8004122:	9002      	str	r0, [sp, #8]
 8004124:	9103      	str	r1, [sp, #12]
 8004126:	9804      	ldr	r0, [sp, #16]
 8004128:	9905      	ldr	r1, [sp, #20]
 800412a:	4a6f      	ldr	r2, [pc, #444]	; (80042e8 <__ieee754_rem_pio2+0x39c>)
 800412c:	f7fc fc76 	bl	8000a1c <__aeabi_dmul>
 8004130:	4643      	mov	r3, r8
 8004132:	0004      	movs	r4, r0
 8004134:	000d      	movs	r5, r1
 8004136:	2b1f      	cmp	r3, #31
 8004138:	dc36      	bgt.n	80041a8 <__ieee754_rem_pio2+0x25c>
 800413a:	4a77      	ldr	r2, [pc, #476]	; (8004318 <__ieee754_rem_pio2+0x3cc>)
 800413c:	3b01      	subs	r3, #1
 800413e:	009b      	lsls	r3, r3, #2
 8004140:	589b      	ldr	r3, [r3, r2]
 8004142:	42b3      	cmp	r3, r6
 8004144:	d030      	beq.n	80041a8 <__ieee754_rem_pio2+0x25c>
 8004146:	9802      	ldr	r0, [sp, #8]
 8004148:	9903      	ldr	r1, [sp, #12]
 800414a:	0022      	movs	r2, r4
 800414c:	002b      	movs	r3, r5
 800414e:	f7fc fed3 	bl	8000ef8 <__aeabi_dsub>
 8004152:	4682      	mov	sl, r0
 8004154:	468b      	mov	fp, r1
 8004156:	4652      	mov	r2, sl
 8004158:	465b      	mov	r3, fp
 800415a:	603a      	str	r2, [r7, #0]
 800415c:	607b      	str	r3, [r7, #4]
 800415e:	9802      	ldr	r0, [sp, #8]
 8004160:	9903      	ldr	r1, [sp, #12]
 8004162:	4652      	mov	r2, sl
 8004164:	465b      	mov	r3, fp
 8004166:	f7fc fec7 	bl	8000ef8 <__aeabi_dsub>
 800416a:	0022      	movs	r2, r4
 800416c:	002b      	movs	r3, r5
 800416e:	f7fc fec3 	bl	8000ef8 <__aeabi_dsub>
 8004172:	0003      	movs	r3, r0
 8004174:	0008      	movs	r0, r1
 8004176:	001a      	movs	r2, r3
 8004178:	0019      	movs	r1, r3
 800417a:	0003      	movs	r3, r0
 800417c:	60ba      	str	r2, [r7, #8]
 800417e:	60fb      	str	r3, [r7, #12]
 8004180:	464b      	mov	r3, r9
 8004182:	2b00      	cmp	r3, #0
 8004184:	db00      	blt.n	8004188 <__ieee754_rem_pio2+0x23c>
 8004186:	e714      	b.n	8003fb2 <__ieee754_rem_pio2+0x66>
 8004188:	2380      	movs	r3, #128	; 0x80
 800418a:	2480      	movs	r4, #128	; 0x80
 800418c:	061b      	lsls	r3, r3, #24
 800418e:	469c      	mov	ip, r3
 8004190:	4643      	mov	r3, r8
 8004192:	4655      	mov	r5, sl
 8004194:	0624      	lsls	r4, r4, #24
 8004196:	445c      	add	r4, fp
 8004198:	4460      	add	r0, ip
 800419a:	425b      	negs	r3, r3
 800419c:	4698      	mov	r8, r3
 800419e:	603d      	str	r5, [r7, #0]
 80041a0:	607c      	str	r4, [r7, #4]
 80041a2:	60b9      	str	r1, [r7, #8]
 80041a4:	60f8      	str	r0, [r7, #12]
 80041a6:	e704      	b.n	8003fb2 <__ieee754_rem_pio2+0x66>
 80041a8:	002b      	movs	r3, r5
 80041aa:	9802      	ldr	r0, [sp, #8]
 80041ac:	9903      	ldr	r1, [sp, #12]
 80041ae:	0022      	movs	r2, r4
 80041b0:	f7fc fea2 	bl	8000ef8 <__aeabi_dsub>
 80041b4:	004b      	lsls	r3, r1, #1
 80041b6:	1536      	asrs	r6, r6, #20
 80041b8:	0d5b      	lsrs	r3, r3, #21
 80041ba:	4682      	mov	sl, r0
 80041bc:	468b      	mov	fp, r1
 80041be:	1af3      	subs	r3, r6, r3
 80041c0:	2b10      	cmp	r3, #16
 80041c2:	ddc8      	ble.n	8004156 <__ieee754_rem_pio2+0x20a>
 80041c4:	9804      	ldr	r0, [sp, #16]
 80041c6:	9905      	ldr	r1, [sp, #20]
 80041c8:	22d3      	movs	r2, #211	; 0xd3
 80041ca:	4b48      	ldr	r3, [pc, #288]	; (80042ec <__ieee754_rem_pio2+0x3a0>)
 80041cc:	0552      	lsls	r2, r2, #21
 80041ce:	f7fc fc25 	bl	8000a1c <__aeabi_dmul>
 80041d2:	0004      	movs	r4, r0
 80041d4:	000d      	movs	r5, r1
 80041d6:	0002      	movs	r2, r0
 80041d8:	000b      	movs	r3, r1
 80041da:	9802      	ldr	r0, [sp, #8]
 80041dc:	9903      	ldr	r1, [sp, #12]
 80041de:	f7fc fe8b 	bl	8000ef8 <__aeabi_dsub>
 80041e2:	0002      	movs	r2, r0
 80041e4:	000b      	movs	r3, r1
 80041e6:	9802      	ldr	r0, [sp, #8]
 80041e8:	9903      	ldr	r1, [sp, #12]
 80041ea:	9206      	str	r2, [sp, #24]
 80041ec:	9307      	str	r3, [sp, #28]
 80041ee:	f7fc fe83 	bl	8000ef8 <__aeabi_dsub>
 80041f2:	0022      	movs	r2, r4
 80041f4:	002b      	movs	r3, r5
 80041f6:	f7fc fe7f 	bl	8000ef8 <__aeabi_dsub>
 80041fa:	0004      	movs	r4, r0
 80041fc:	000d      	movs	r5, r1
 80041fe:	9804      	ldr	r0, [sp, #16]
 8004200:	9905      	ldr	r1, [sp, #20]
 8004202:	4a40      	ldr	r2, [pc, #256]	; (8004304 <__ieee754_rem_pio2+0x3b8>)
 8004204:	4b40      	ldr	r3, [pc, #256]	; (8004308 <__ieee754_rem_pio2+0x3bc>)
 8004206:	f7fc fc09 	bl	8000a1c <__aeabi_dmul>
 800420a:	0022      	movs	r2, r4
 800420c:	002b      	movs	r3, r5
 800420e:	f7fc fe73 	bl	8000ef8 <__aeabi_dsub>
 8004212:	000b      	movs	r3, r1
 8004214:	0002      	movs	r2, r0
 8004216:	0004      	movs	r4, r0
 8004218:	000d      	movs	r5, r1
 800421a:	9806      	ldr	r0, [sp, #24]
 800421c:	9907      	ldr	r1, [sp, #28]
 800421e:	f7fc fe6b 	bl	8000ef8 <__aeabi_dsub>
 8004222:	004b      	lsls	r3, r1, #1
 8004224:	0d5b      	lsrs	r3, r3, #21
 8004226:	4682      	mov	sl, r0
 8004228:	468b      	mov	fp, r1
 800422a:	1af6      	subs	r6, r6, r3
 800422c:	2e31      	cmp	r6, #49	; 0x31
 800422e:	dc0a      	bgt.n	8004246 <__ieee754_rem_pio2+0x2fa>
 8004230:	0002      	movs	r2, r0
 8004232:	000b      	movs	r3, r1
 8004234:	603a      	str	r2, [r7, #0]
 8004236:	607b      	str	r3, [r7, #4]
 8004238:	9a06      	ldr	r2, [sp, #24]
 800423a:	9b07      	ldr	r3, [sp, #28]
 800423c:	9202      	str	r2, [sp, #8]
 800423e:	9303      	str	r3, [sp, #12]
 8004240:	e78d      	b.n	800415e <__ieee754_rem_pio2+0x212>
 8004242:	2303      	movs	r3, #3
 8004244:	e6fd      	b.n	8004042 <__ieee754_rem_pio2+0xf6>
 8004246:	22b8      	movs	r2, #184	; 0xb8
 8004248:	9804      	ldr	r0, [sp, #16]
 800424a:	9905      	ldr	r1, [sp, #20]
 800424c:	4b2e      	ldr	r3, [pc, #184]	; (8004308 <__ieee754_rem_pio2+0x3bc>)
 800424e:	0592      	lsls	r2, r2, #22
 8004250:	f7fc fbe4 	bl	8000a1c <__aeabi_dmul>
 8004254:	0004      	movs	r4, r0
 8004256:	000d      	movs	r5, r1
 8004258:	0002      	movs	r2, r0
 800425a:	000b      	movs	r3, r1
 800425c:	9806      	ldr	r0, [sp, #24]
 800425e:	9907      	ldr	r1, [sp, #28]
 8004260:	f7fc fe4a 	bl	8000ef8 <__aeabi_dsub>
 8004264:	0002      	movs	r2, r0
 8004266:	000b      	movs	r3, r1
 8004268:	9806      	ldr	r0, [sp, #24]
 800426a:	9907      	ldr	r1, [sp, #28]
 800426c:	9202      	str	r2, [sp, #8]
 800426e:	9303      	str	r3, [sp, #12]
 8004270:	f7fc fe42 	bl	8000ef8 <__aeabi_dsub>
 8004274:	0022      	movs	r2, r4
 8004276:	002b      	movs	r3, r5
 8004278:	f7fc fe3e 	bl	8000ef8 <__aeabi_dsub>
 800427c:	0004      	movs	r4, r0
 800427e:	000d      	movs	r5, r1
 8004280:	9804      	ldr	r0, [sp, #16]
 8004282:	9905      	ldr	r1, [sp, #20]
 8004284:	4a25      	ldr	r2, [pc, #148]	; (800431c <__ieee754_rem_pio2+0x3d0>)
 8004286:	4b26      	ldr	r3, [pc, #152]	; (8004320 <__ieee754_rem_pio2+0x3d4>)
 8004288:	f7fc fbc8 	bl	8000a1c <__aeabi_dmul>
 800428c:	0022      	movs	r2, r4
 800428e:	002b      	movs	r3, r5
 8004290:	f7fc fe32 	bl	8000ef8 <__aeabi_dsub>
 8004294:	0004      	movs	r4, r0
 8004296:	000d      	movs	r5, r1
 8004298:	e755      	b.n	8004146 <__ieee754_rem_pio2+0x1fa>
 800429a:	4b12      	ldr	r3, [pc, #72]	; (80042e4 <__ieee754_rem_pio2+0x398>)
 800429c:	f7fd fbb2 	bl	8001a04 <__aeabi_dadd>
 80042a0:	4b10      	ldr	r3, [pc, #64]	; (80042e4 <__ieee754_rem_pio2+0x398>)
 80042a2:	0004      	movs	r4, r0
 80042a4:	000d      	movs	r5, r1
 80042a6:	429e      	cmp	r6, r3
 80042a8:	d03c      	beq.n	8004324 <__ieee754_rem_pio2+0x3d8>
 80042aa:	4a0f      	ldr	r2, [pc, #60]	; (80042e8 <__ieee754_rem_pio2+0x39c>)
 80042ac:	4b0f      	ldr	r3, [pc, #60]	; (80042ec <__ieee754_rem_pio2+0x3a0>)
 80042ae:	f7fd fba9 	bl	8001a04 <__aeabi_dadd>
 80042b2:	0002      	movs	r2, r0
 80042b4:	000b      	movs	r3, r1
 80042b6:	0020      	movs	r0, r4
 80042b8:	603a      	str	r2, [r7, #0]
 80042ba:	607b      	str	r3, [r7, #4]
 80042bc:	0029      	movs	r1, r5
 80042be:	f7fc fe1b 	bl	8000ef8 <__aeabi_dsub>
 80042c2:	4a09      	ldr	r2, [pc, #36]	; (80042e8 <__ieee754_rem_pio2+0x39c>)
 80042c4:	4b09      	ldr	r3, [pc, #36]	; (80042ec <__ieee754_rem_pio2+0x3a0>)
 80042c6:	f7fd fb9d 	bl	8001a04 <__aeabi_dadd>
 80042ca:	2301      	movs	r3, #1
 80042cc:	425b      	negs	r3, r3
 80042ce:	4698      	mov	r8, r3
 80042d0:	60b8      	str	r0, [r7, #8]
 80042d2:	60f9      	str	r1, [r7, #12]
 80042d4:	e66d      	b.n	8003fb2 <__ieee754_rem_pio2+0x66>
 80042d6:	46c0      	nop			; (mov r8, r8)
 80042d8:	3fe921fb 	.word	0x3fe921fb
 80042dc:	4002d97b 	.word	0x4002d97b
 80042e0:	54400000 	.word	0x54400000
 80042e4:	3ff921fb 	.word	0x3ff921fb
 80042e8:	1a626331 	.word	0x1a626331
 80042ec:	3dd0b461 	.word	0x3dd0b461
 80042f0:	413921fb 	.word	0x413921fb
 80042f4:	7fefffff 	.word	0x7fefffff
 80042f8:	fffffbea 	.word	0xfffffbea
 80042fc:	41700000 	.word	0x41700000
 8004300:	080054e0 	.word	0x080054e0
 8004304:	2e037073 	.word	0x2e037073
 8004308:	3ba3198a 	.word	0x3ba3198a
 800430c:	6dc9c883 	.word	0x6dc9c883
 8004310:	3fe45f30 	.word	0x3fe45f30
 8004314:	3fe00000 	.word	0x3fe00000
 8004318:	08005460 	.word	0x08005460
 800431c:	252049c1 	.word	0x252049c1
 8004320:	397b839a 	.word	0x397b839a
 8004324:	22d3      	movs	r2, #211	; 0xd3
 8004326:	4b0a      	ldr	r3, [pc, #40]	; (8004350 <__ieee754_rem_pio2+0x404>)
 8004328:	0552      	lsls	r2, r2, #21
 800432a:	f7fd fb6b 	bl	8001a04 <__aeabi_dadd>
 800432e:	4a09      	ldr	r2, [pc, #36]	; (8004354 <__ieee754_rem_pio2+0x408>)
 8004330:	4b09      	ldr	r3, [pc, #36]	; (8004358 <__ieee754_rem_pio2+0x40c>)
 8004332:	0004      	movs	r4, r0
 8004334:	000d      	movs	r5, r1
 8004336:	f7fd fb65 	bl	8001a04 <__aeabi_dadd>
 800433a:	0002      	movs	r2, r0
 800433c:	000b      	movs	r3, r1
 800433e:	0020      	movs	r0, r4
 8004340:	603a      	str	r2, [r7, #0]
 8004342:	607b      	str	r3, [r7, #4]
 8004344:	0029      	movs	r1, r5
 8004346:	f7fc fdd7 	bl	8000ef8 <__aeabi_dsub>
 800434a:	4a02      	ldr	r2, [pc, #8]	; (8004354 <__ieee754_rem_pio2+0x408>)
 800434c:	4b02      	ldr	r3, [pc, #8]	; (8004358 <__ieee754_rem_pio2+0x40c>)
 800434e:	e7ba      	b.n	80042c6 <__ieee754_rem_pio2+0x37a>
 8004350:	3dd0b461 	.word	0x3dd0b461
 8004354:	2e037073 	.word	0x2e037073
 8004358:	3ba3198a 	.word	0x3ba3198a

0800435c <__kernel_cos>:
 800435c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800435e:	4647      	mov	r7, r8
 8004360:	46ce      	mov	lr, r9
 8004362:	b580      	push	{r7, lr}
 8004364:	b087      	sub	sp, #28
 8004366:	9200      	str	r2, [sp, #0]
 8004368:	9301      	str	r3, [sp, #4]
 800436a:	23f9      	movs	r3, #249	; 0xf9
 800436c:	004f      	lsls	r7, r1, #1
 800436e:	4681      	mov	r9, r0
 8004370:	4688      	mov	r8, r1
 8004372:	087f      	lsrs	r7, r7, #1
 8004374:	059b      	lsls	r3, r3, #22
 8004376:	429f      	cmp	r7, r3
 8004378:	da63      	bge.n	8004442 <__kernel_cos+0xe6>
 800437a:	f7fd f94f 	bl	800161c <__aeabi_d2iz>
 800437e:	2800      	cmp	r0, #0
 8004380:	d100      	bne.n	8004384 <__kernel_cos+0x28>
 8004382:	e0da      	b.n	800453a <__kernel_cos+0x1de>
 8004384:	464a      	mov	r2, r9
 8004386:	4643      	mov	r3, r8
 8004388:	4648      	mov	r0, r9
 800438a:	4641      	mov	r1, r8
 800438c:	f7fc fb46 	bl	8000a1c <__aeabi_dmul>
 8004390:	0004      	movs	r4, r0
 8004392:	000d      	movs	r5, r1
 8004394:	4a6a      	ldr	r2, [pc, #424]	; (8004540 <__kernel_cos+0x1e4>)
 8004396:	4b6b      	ldr	r3, [pc, #428]	; (8004544 <__kernel_cos+0x1e8>)
 8004398:	f7fc fb40 	bl	8000a1c <__aeabi_dmul>
 800439c:	4a6a      	ldr	r2, [pc, #424]	; (8004548 <__kernel_cos+0x1ec>)
 800439e:	4b6b      	ldr	r3, [pc, #428]	; (800454c <__kernel_cos+0x1f0>)
 80043a0:	f7fd fb30 	bl	8001a04 <__aeabi_dadd>
 80043a4:	0022      	movs	r2, r4
 80043a6:	002b      	movs	r3, r5
 80043a8:	f7fc fb38 	bl	8000a1c <__aeabi_dmul>
 80043ac:	4a68      	ldr	r2, [pc, #416]	; (8004550 <__kernel_cos+0x1f4>)
 80043ae:	4b69      	ldr	r3, [pc, #420]	; (8004554 <__kernel_cos+0x1f8>)
 80043b0:	f7fc fda2 	bl	8000ef8 <__aeabi_dsub>
 80043b4:	0022      	movs	r2, r4
 80043b6:	002b      	movs	r3, r5
 80043b8:	f7fc fb30 	bl	8000a1c <__aeabi_dmul>
 80043bc:	4a66      	ldr	r2, [pc, #408]	; (8004558 <__kernel_cos+0x1fc>)
 80043be:	4b67      	ldr	r3, [pc, #412]	; (800455c <__kernel_cos+0x200>)
 80043c0:	f7fd fb20 	bl	8001a04 <__aeabi_dadd>
 80043c4:	0022      	movs	r2, r4
 80043c6:	002b      	movs	r3, r5
 80043c8:	f7fc fb28 	bl	8000a1c <__aeabi_dmul>
 80043cc:	4a64      	ldr	r2, [pc, #400]	; (8004560 <__kernel_cos+0x204>)
 80043ce:	4b65      	ldr	r3, [pc, #404]	; (8004564 <__kernel_cos+0x208>)
 80043d0:	f7fc fd92 	bl	8000ef8 <__aeabi_dsub>
 80043d4:	0022      	movs	r2, r4
 80043d6:	002b      	movs	r3, r5
 80043d8:	f7fc fb20 	bl	8000a1c <__aeabi_dmul>
 80043dc:	4a62      	ldr	r2, [pc, #392]	; (8004568 <__kernel_cos+0x20c>)
 80043de:	4b63      	ldr	r3, [pc, #396]	; (800456c <__kernel_cos+0x210>)
 80043e0:	f7fd fb10 	bl	8001a04 <__aeabi_dadd>
 80043e4:	0022      	movs	r2, r4
 80043e6:	002b      	movs	r3, r5
 80043e8:	f7fc fb18 	bl	8000a1c <__aeabi_dmul>
 80043ec:	9002      	str	r0, [sp, #8]
 80043ee:	9103      	str	r1, [sp, #12]
 80043f0:	2200      	movs	r2, #0
 80043f2:	0020      	movs	r0, r4
 80043f4:	0029      	movs	r1, r5
 80043f6:	4b5e      	ldr	r3, [pc, #376]	; (8004570 <__kernel_cos+0x214>)
 80043f8:	f7fc fb10 	bl	8000a1c <__aeabi_dmul>
 80043fc:	9a02      	ldr	r2, [sp, #8]
 80043fe:	9b03      	ldr	r3, [sp, #12]
 8004400:	0006      	movs	r6, r0
 8004402:	000f      	movs	r7, r1
 8004404:	0020      	movs	r0, r4
 8004406:	0029      	movs	r1, r5
 8004408:	f7fc fb08 	bl	8000a1c <__aeabi_dmul>
 800440c:	9a00      	ldr	r2, [sp, #0]
 800440e:	9b01      	ldr	r3, [sp, #4]
 8004410:	0004      	movs	r4, r0
 8004412:	000d      	movs	r5, r1
 8004414:	4648      	mov	r0, r9
 8004416:	4641      	mov	r1, r8
 8004418:	f7fc fb00 	bl	8000a1c <__aeabi_dmul>
 800441c:	0002      	movs	r2, r0
 800441e:	000b      	movs	r3, r1
 8004420:	0020      	movs	r0, r4
 8004422:	0029      	movs	r1, r5
 8004424:	f7fc fd68 	bl	8000ef8 <__aeabi_dsub>
 8004428:	0002      	movs	r2, r0
 800442a:	000b      	movs	r3, r1
 800442c:	0030      	movs	r0, r6
 800442e:	0039      	movs	r1, r7
 8004430:	f7fc fd62 	bl	8000ef8 <__aeabi_dsub>
 8004434:	0002      	movs	r2, r0
 8004436:	000b      	movs	r3, r1
 8004438:	2000      	movs	r0, #0
 800443a:	494e      	ldr	r1, [pc, #312]	; (8004574 <__kernel_cos+0x218>)
 800443c:	f7fc fd5c 	bl	8000ef8 <__aeabi_dsub>
 8004440:	e070      	b.n	8004524 <__kernel_cos+0x1c8>
 8004442:	0002      	movs	r2, r0
 8004444:	000b      	movs	r3, r1
 8004446:	f7fc fae9 	bl	8000a1c <__aeabi_dmul>
 800444a:	0004      	movs	r4, r0
 800444c:	000d      	movs	r5, r1
 800444e:	4a3c      	ldr	r2, [pc, #240]	; (8004540 <__kernel_cos+0x1e4>)
 8004450:	4b3c      	ldr	r3, [pc, #240]	; (8004544 <__kernel_cos+0x1e8>)
 8004452:	f7fc fae3 	bl	8000a1c <__aeabi_dmul>
 8004456:	4a3c      	ldr	r2, [pc, #240]	; (8004548 <__kernel_cos+0x1ec>)
 8004458:	4b3c      	ldr	r3, [pc, #240]	; (800454c <__kernel_cos+0x1f0>)
 800445a:	f7fd fad3 	bl	8001a04 <__aeabi_dadd>
 800445e:	0022      	movs	r2, r4
 8004460:	002b      	movs	r3, r5
 8004462:	f7fc fadb 	bl	8000a1c <__aeabi_dmul>
 8004466:	4a3a      	ldr	r2, [pc, #232]	; (8004550 <__kernel_cos+0x1f4>)
 8004468:	4b3a      	ldr	r3, [pc, #232]	; (8004554 <__kernel_cos+0x1f8>)
 800446a:	f7fc fd45 	bl	8000ef8 <__aeabi_dsub>
 800446e:	0022      	movs	r2, r4
 8004470:	002b      	movs	r3, r5
 8004472:	f7fc fad3 	bl	8000a1c <__aeabi_dmul>
 8004476:	4a38      	ldr	r2, [pc, #224]	; (8004558 <__kernel_cos+0x1fc>)
 8004478:	4b38      	ldr	r3, [pc, #224]	; (800455c <__kernel_cos+0x200>)
 800447a:	f7fd fac3 	bl	8001a04 <__aeabi_dadd>
 800447e:	0022      	movs	r2, r4
 8004480:	002b      	movs	r3, r5
 8004482:	f7fc facb 	bl	8000a1c <__aeabi_dmul>
 8004486:	4a36      	ldr	r2, [pc, #216]	; (8004560 <__kernel_cos+0x204>)
 8004488:	4b36      	ldr	r3, [pc, #216]	; (8004564 <__kernel_cos+0x208>)
 800448a:	f7fc fd35 	bl	8000ef8 <__aeabi_dsub>
 800448e:	0022      	movs	r2, r4
 8004490:	002b      	movs	r3, r5
 8004492:	f7fc fac3 	bl	8000a1c <__aeabi_dmul>
 8004496:	4a34      	ldr	r2, [pc, #208]	; (8004568 <__kernel_cos+0x20c>)
 8004498:	4b34      	ldr	r3, [pc, #208]	; (800456c <__kernel_cos+0x210>)
 800449a:	f7fd fab3 	bl	8001a04 <__aeabi_dadd>
 800449e:	002b      	movs	r3, r5
 80044a0:	0022      	movs	r2, r4
 80044a2:	f7fc fabb 	bl	8000a1c <__aeabi_dmul>
 80044a6:	4b34      	ldr	r3, [pc, #208]	; (8004578 <__kernel_cos+0x21c>)
 80044a8:	9002      	str	r0, [sp, #8]
 80044aa:	9103      	str	r1, [sp, #12]
 80044ac:	429f      	cmp	r7, r3
 80044ae:	dd9f      	ble.n	80043f0 <__kernel_cos+0x94>
 80044b0:	4b32      	ldr	r3, [pc, #200]	; (800457c <__kernel_cos+0x220>)
 80044b2:	2200      	movs	r2, #0
 80044b4:	429f      	cmp	r7, r3
 80044b6:	dc3a      	bgt.n	800452e <__kernel_cos+0x1d2>
 80044b8:	4931      	ldr	r1, [pc, #196]	; (8004580 <__kernel_cos+0x224>)
 80044ba:	2000      	movs	r0, #0
 80044bc:	187b      	adds	r3, r7, r1
 80044be:	492d      	ldr	r1, [pc, #180]	; (8004574 <__kernel_cos+0x218>)
 80044c0:	0016      	movs	r6, r2
 80044c2:	001f      	movs	r7, r3
 80044c4:	f7fc fd18 	bl	8000ef8 <__aeabi_dsub>
 80044c8:	9004      	str	r0, [sp, #16]
 80044ca:	9105      	str	r1, [sp, #20]
 80044cc:	2200      	movs	r2, #0
 80044ce:	0020      	movs	r0, r4
 80044d0:	0029      	movs	r1, r5
 80044d2:	4b27      	ldr	r3, [pc, #156]	; (8004570 <__kernel_cos+0x214>)
 80044d4:	f7fc faa2 	bl	8000a1c <__aeabi_dmul>
 80044d8:	0032      	movs	r2, r6
 80044da:	003b      	movs	r3, r7
 80044dc:	f7fc fd0c 	bl	8000ef8 <__aeabi_dsub>
 80044e0:	9a02      	ldr	r2, [sp, #8]
 80044e2:	9b03      	ldr	r3, [sp, #12]
 80044e4:	0006      	movs	r6, r0
 80044e6:	000f      	movs	r7, r1
 80044e8:	0020      	movs	r0, r4
 80044ea:	0029      	movs	r1, r5
 80044ec:	f7fc fa96 	bl	8000a1c <__aeabi_dmul>
 80044f0:	9a00      	ldr	r2, [sp, #0]
 80044f2:	9b01      	ldr	r3, [sp, #4]
 80044f4:	0004      	movs	r4, r0
 80044f6:	000d      	movs	r5, r1
 80044f8:	4648      	mov	r0, r9
 80044fa:	4641      	mov	r1, r8
 80044fc:	f7fc fa8e 	bl	8000a1c <__aeabi_dmul>
 8004500:	0002      	movs	r2, r0
 8004502:	000b      	movs	r3, r1
 8004504:	0020      	movs	r0, r4
 8004506:	0029      	movs	r1, r5
 8004508:	f7fc fcf6 	bl	8000ef8 <__aeabi_dsub>
 800450c:	0002      	movs	r2, r0
 800450e:	000b      	movs	r3, r1
 8004510:	0030      	movs	r0, r6
 8004512:	0039      	movs	r1, r7
 8004514:	f7fc fcf0 	bl	8000ef8 <__aeabi_dsub>
 8004518:	0002      	movs	r2, r0
 800451a:	000b      	movs	r3, r1
 800451c:	9804      	ldr	r0, [sp, #16]
 800451e:	9905      	ldr	r1, [sp, #20]
 8004520:	f7fc fcea 	bl	8000ef8 <__aeabi_dsub>
 8004524:	b007      	add	sp, #28
 8004526:	bcc0      	pop	{r6, r7}
 8004528:	46b9      	mov	r9, r7
 800452a:	46b0      	mov	r8, r6
 800452c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800452e:	4b15      	ldr	r3, [pc, #84]	; (8004584 <__kernel_cos+0x228>)
 8004530:	2600      	movs	r6, #0
 8004532:	9204      	str	r2, [sp, #16]
 8004534:	9305      	str	r3, [sp, #20]
 8004536:	4f14      	ldr	r7, [pc, #80]	; (8004588 <__kernel_cos+0x22c>)
 8004538:	e7c8      	b.n	80044cc <__kernel_cos+0x170>
 800453a:	2000      	movs	r0, #0
 800453c:	490d      	ldr	r1, [pc, #52]	; (8004574 <__kernel_cos+0x218>)
 800453e:	e7f1      	b.n	8004524 <__kernel_cos+0x1c8>
 8004540:	be8838d4 	.word	0xbe8838d4
 8004544:	bda8fae9 	.word	0xbda8fae9
 8004548:	bdb4b1c4 	.word	0xbdb4b1c4
 800454c:	3e21ee9e 	.word	0x3e21ee9e
 8004550:	809c52ad 	.word	0x809c52ad
 8004554:	3e927e4f 	.word	0x3e927e4f
 8004558:	19cb1590 	.word	0x19cb1590
 800455c:	3efa01a0 	.word	0x3efa01a0
 8004560:	16c15177 	.word	0x16c15177
 8004564:	3f56c16c 	.word	0x3f56c16c
 8004568:	5555554c 	.word	0x5555554c
 800456c:	3fa55555 	.word	0x3fa55555
 8004570:	3fe00000 	.word	0x3fe00000
 8004574:	3ff00000 	.word	0x3ff00000
 8004578:	3fd33332 	.word	0x3fd33332
 800457c:	3fe90000 	.word	0x3fe90000
 8004580:	ffe00000 	.word	0xffe00000
 8004584:	3fe70000 	.word	0x3fe70000
 8004588:	3fd20000 	.word	0x3fd20000

0800458c <__kernel_rem_pio2>:
 800458c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800458e:	46de      	mov	lr, fp
 8004590:	4657      	mov	r7, sl
 8004592:	464e      	mov	r6, r9
 8004594:	4645      	mov	r5, r8
 8004596:	b5e0      	push	{r5, r6, r7, lr}
 8004598:	4cdd      	ldr	r4, [pc, #884]	; (8004910 <__kernel_rem_pio2+0x384>)
 800459a:	44a5      	add	sp, r4
 800459c:	910d      	str	r1, [sp, #52]	; 0x34
 800459e:	0019      	movs	r1, r3
 80045a0:	0014      	movs	r4, r2
 80045a2:	9aa4      	ldr	r2, [sp, #656]	; 0x290
 80045a4:	930a      	str	r3, [sp, #40]	; 0x28
 80045a6:	4bdb      	ldr	r3, [pc, #876]	; (8004914 <__kernel_rem_pio2+0x388>)
 80045a8:	0092      	lsls	r2, r2, #2
 80045aa:	58d2      	ldr	r2, [r2, r3]
 80045ac:	000b      	movs	r3, r1
 80045ae:	3b01      	subs	r3, #1
 80045b0:	9304      	str	r3, [sp, #16]
 80045b2:	0023      	movs	r3, r4
 80045b4:	9006      	str	r0, [sp, #24]
 80045b6:	9208      	str	r2, [sp, #32]
 80045b8:	3314      	adds	r3, #20
 80045ba:	da00      	bge.n	80045be <__kernel_rem_pio2+0x32>
 80045bc:	e3a1      	b.n	8004d02 <__kernel_rem_pio2+0x776>
 80045be:	2118      	movs	r1, #24
 80045c0:	1ee0      	subs	r0, r4, #3
 80045c2:	f7fb fe2b 	bl	800021c <__divsi3>
 80045c6:	0003      	movs	r3, r0
 80045c8:	3301      	adds	r3, #1
 80045ca:	009a      	lsls	r2, r3, #2
 80045cc:	1a9b      	subs	r3, r3, r2
 80045ce:	9005      	str	r0, [sp, #20]
 80045d0:	00db      	lsls	r3, r3, #3
 80045d2:	18e3      	adds	r3, r4, r3
 80045d4:	9a05      	ldr	r2, [sp, #20]
 80045d6:	9307      	str	r3, [sp, #28]
 80045d8:	9b04      	ldr	r3, [sp, #16]
 80045da:	1ad4      	subs	r4, r2, r3
 80045dc:	9a08      	ldr	r2, [sp, #32]
 80045de:	18d6      	adds	r6, r2, r3
 80045e0:	d414      	bmi.n	800460c <__kernel_rem_pio2+0x80>
 80045e2:	3601      	adds	r6, #1
 80045e4:	9fa5      	ldr	r7, [sp, #660]	; 0x294
 80045e6:	ad22      	add	r5, sp, #136	; 0x88
 80045e8:	1936      	adds	r6, r6, r4
 80045ea:	e007      	b.n	80045fc <__kernel_rem_pio2+0x70>
 80045ec:	00a3      	lsls	r3, r4, #2
 80045ee:	58f8      	ldr	r0, [r7, r3]
 80045f0:	f7fd f84a 	bl	8001688 <__aeabi_i2d>
 80045f4:	3401      	adds	r4, #1
 80045f6:	c503      	stmia	r5!, {r0, r1}
 80045f8:	42b4      	cmp	r4, r6
 80045fa:	d007      	beq.n	800460c <__kernel_rem_pio2+0x80>
 80045fc:	2c00      	cmp	r4, #0
 80045fe:	daf5      	bge.n	80045ec <__kernel_rem_pio2+0x60>
 8004600:	2000      	movs	r0, #0
 8004602:	2100      	movs	r1, #0
 8004604:	3401      	adds	r4, #1
 8004606:	c503      	stmia	r5!, {r0, r1}
 8004608:	42b4      	cmp	r4, r6
 800460a:	d1f7      	bne.n	80045fc <__kernel_rem_pio2+0x70>
 800460c:	9b08      	ldr	r3, [sp, #32]
 800460e:	2b00      	cmp	r3, #0
 8004610:	da01      	bge.n	8004616 <__kernel_rem_pio2+0x8a>
 8004612:	f000 fbfe 	bl	8004e12 <__kernel_rem_pio2+0x886>
 8004616:	990a      	ldr	r1, [sp, #40]	; 0x28
 8004618:	aa22      	add	r2, sp, #136	; 0x88
 800461a:	468c      	mov	ip, r1
 800461c:	4693      	mov	fp, r2
 800461e:	9a08      	ldr	r2, [sp, #32]
 8004620:	ab72      	add	r3, sp, #456	; 0x1c8
 8004622:	4462      	add	r2, ip
 8004624:	9203      	str	r2, [sp, #12]
 8004626:	9a06      	ldr	r2, [sp, #24]
 8004628:	4699      	mov	r9, r3
 800462a:	4690      	mov	r8, r2
 800462c:	9300      	str	r3, [sp, #0]
 800462e:	9b04      	ldr	r3, [sp, #16]
 8004630:	469a      	mov	sl, r3
 8004632:	00db      	lsls	r3, r3, #3
 8004634:	449b      	add	fp, r3
 8004636:	3308      	adds	r3, #8
 8004638:	4498      	add	r8, r3
 800463a:	9b04      	ldr	r3, [sp, #16]
 800463c:	2400      	movs	r4, #0
 800463e:	2500      	movs	r5, #0
 8004640:	2b00      	cmp	r3, #0
 8004642:	db13      	blt.n	800466c <__kernel_rem_pio2+0xe0>
 8004644:	465f      	mov	r7, fp
 8004646:	2400      	movs	r4, #0
 8004648:	2500      	movs	r5, #0
 800464a:	9e06      	ldr	r6, [sp, #24]
 800464c:	683a      	ldr	r2, [r7, #0]
 800464e:	687b      	ldr	r3, [r7, #4]
 8004650:	ce03      	ldmia	r6!, {r0, r1}
 8004652:	f7fc f9e3 	bl	8000a1c <__aeabi_dmul>
 8004656:	0002      	movs	r2, r0
 8004658:	000b      	movs	r3, r1
 800465a:	0020      	movs	r0, r4
 800465c:	0029      	movs	r1, r5
 800465e:	f7fd f9d1 	bl	8001a04 <__aeabi_dadd>
 8004662:	3f08      	subs	r7, #8
 8004664:	0004      	movs	r4, r0
 8004666:	000d      	movs	r5, r1
 8004668:	4546      	cmp	r6, r8
 800466a:	d1ef      	bne.n	800464c <__kernel_rem_pio2+0xc0>
 800466c:	464b      	mov	r3, r9
 800466e:	c330      	stmia	r3!, {r4, r5}
 8004670:	4699      	mov	r9, r3
 8004672:	2308      	movs	r3, #8
 8004674:	469c      	mov	ip, r3
 8004676:	3b07      	subs	r3, #7
 8004678:	44e3      	add	fp, ip
 800467a:	469c      	mov	ip, r3
 800467c:	9b03      	ldr	r3, [sp, #12]
 800467e:	44e2      	add	sl, ip
 8004680:	459a      	cmp	sl, r3
 8004682:	d1da      	bne.n	800463a <__kernel_rem_pio2+0xae>
 8004684:	a80e      	add	r0, sp, #56	; 0x38
 8004686:	2204      	movs	r2, #4
 8004688:	4684      	mov	ip, r0
 800468a:	4252      	negs	r2, r2
 800468c:	4462      	add	r2, ip
 800468e:	4694      	mov	ip, r2
 8004690:	9908      	ldr	r1, [sp, #32]
 8004692:	008b      	lsls	r3, r1, #2
 8004694:	449c      	add	ip, r3
 8004696:	4662      	mov	r2, ip
 8004698:	4684      	mov	ip, r0
 800469a:	3b08      	subs	r3, #8
 800469c:	4463      	add	r3, ip
 800469e:	930b      	str	r3, [sp, #44]	; 0x2c
 80046a0:	9b05      	ldr	r3, [sp, #20]
 80046a2:	920c      	str	r2, [sp, #48]	; 0x30
 80046a4:	9aa5      	ldr	r2, [sp, #660]	; 0x294
 80046a6:	0098      	lsls	r0, r3, #2
 80046a8:	4694      	mov	ip, r2
 80046aa:	0003      	movs	r3, r0
 80046ac:	4463      	add	r3, ip
 80046ae:	9305      	str	r3, [sp, #20]
 80046b0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80046b2:	4688      	mov	r8, r1
 80046b4:	00da      	lsls	r2, r3, #3
 80046b6:	9b06      	ldr	r3, [sp, #24]
 80046b8:	3b08      	subs	r3, #8
 80046ba:	469b      	mov	fp, r3
 80046bc:	4493      	add	fp, r2
 80046be:	46da      	mov	sl, fp
 80046c0:	4643      	mov	r3, r8
 80046c2:	9900      	ldr	r1, [sp, #0]
 80046c4:	00da      	lsls	r2, r3, #3
 80046c6:	4694      	mov	ip, r2
 80046c8:	000b      	movs	r3, r1
 80046ca:	4463      	add	r3, ip
 80046cc:	681e      	ldr	r6, [r3, #0]
 80046ce:	685f      	ldr	r7, [r3, #4]
 80046d0:	4643      	mov	r3, r8
 80046d2:	9209      	str	r2, [sp, #36]	; 0x24
 80046d4:	2b00      	cmp	r3, #0
 80046d6:	dd32      	ble.n	800473e <__kernel_rem_pio2+0x1b2>
 80046d8:	4689      	mov	r9, r1
 80046da:	4b8f      	ldr	r3, [pc, #572]	; (8004918 <__kernel_rem_pio2+0x38c>)
 80046dc:	4443      	add	r3, r8
 80046de:	00db      	lsls	r3, r3, #3
 80046e0:	4499      	add	r9, r3
 80046e2:	ab0e      	add	r3, sp, #56	; 0x38
 80046e4:	469b      	mov	fp, r3
 80046e6:	2200      	movs	r2, #0
 80046e8:	4b8c      	ldr	r3, [pc, #560]	; (800491c <__kernel_rem_pio2+0x390>)
 80046ea:	0030      	movs	r0, r6
 80046ec:	0039      	movs	r1, r7
 80046ee:	f7fc f995 	bl	8000a1c <__aeabi_dmul>
 80046f2:	f7fc ff93 	bl	800161c <__aeabi_d2iz>
 80046f6:	f7fc ffc7 	bl	8001688 <__aeabi_i2d>
 80046fa:	2200      	movs	r2, #0
 80046fc:	4b88      	ldr	r3, [pc, #544]	; (8004920 <__kernel_rem_pio2+0x394>)
 80046fe:	0004      	movs	r4, r0
 8004700:	000d      	movs	r5, r1
 8004702:	f7fc f98b 	bl	8000a1c <__aeabi_dmul>
 8004706:	0002      	movs	r2, r0
 8004708:	000b      	movs	r3, r1
 800470a:	0030      	movs	r0, r6
 800470c:	0039      	movs	r1, r7
 800470e:	f7fc fbf3 	bl	8000ef8 <__aeabi_dsub>
 8004712:	f7fc ff83 	bl	800161c <__aeabi_d2iz>
 8004716:	465b      	mov	r3, fp
 8004718:	c301      	stmia	r3!, {r0}
 800471a:	469b      	mov	fp, r3
 800471c:	464b      	mov	r3, r9
 800471e:	0020      	movs	r0, r4
 8004720:	681a      	ldr	r2, [r3, #0]
 8004722:	685b      	ldr	r3, [r3, #4]
 8004724:	0029      	movs	r1, r5
 8004726:	f7fd f96d 	bl	8001a04 <__aeabi_dadd>
 800472a:	2208      	movs	r2, #8
 800472c:	4252      	negs	r2, r2
 800472e:	4694      	mov	ip, r2
 8004730:	464b      	mov	r3, r9
 8004732:	9a00      	ldr	r2, [sp, #0]
 8004734:	0006      	movs	r6, r0
 8004736:	000f      	movs	r7, r1
 8004738:	44e1      	add	r9, ip
 800473a:	429a      	cmp	r2, r3
 800473c:	d1d3      	bne.n	80046e6 <__kernel_rem_pio2+0x15a>
 800473e:	9b07      	ldr	r3, [sp, #28]
 8004740:	0030      	movs	r0, r6
 8004742:	001a      	movs	r2, r3
 8004744:	0039      	movs	r1, r7
 8004746:	469b      	mov	fp, r3
 8004748:	f000 fcda 	bl	8005100 <scalbn>
 800474c:	23ff      	movs	r3, #255	; 0xff
 800474e:	2200      	movs	r2, #0
 8004750:	059b      	lsls	r3, r3, #22
 8004752:	0004      	movs	r4, r0
 8004754:	000d      	movs	r5, r1
 8004756:	f7fc f961 	bl	8000a1c <__aeabi_dmul>
 800475a:	f000 fc35 	bl	8004fc8 <floor>
 800475e:	2200      	movs	r2, #0
 8004760:	4b70      	ldr	r3, [pc, #448]	; (8004924 <__kernel_rem_pio2+0x398>)
 8004762:	f7fc f95b 	bl	8000a1c <__aeabi_dmul>
 8004766:	0002      	movs	r2, r0
 8004768:	000b      	movs	r3, r1
 800476a:	0020      	movs	r0, r4
 800476c:	0029      	movs	r1, r5
 800476e:	f7fc fbc3 	bl	8000ef8 <__aeabi_dsub>
 8004772:	0004      	movs	r4, r0
 8004774:	000d      	movs	r5, r1
 8004776:	f7fc ff51 	bl	800161c <__aeabi_d2iz>
 800477a:	4681      	mov	r9, r0
 800477c:	f7fc ff84 	bl	8001688 <__aeabi_i2d>
 8004780:	0002      	movs	r2, r0
 8004782:	000b      	movs	r3, r1
 8004784:	0020      	movs	r0, r4
 8004786:	0029      	movs	r1, r5
 8004788:	f7fc fbb6 	bl	8000ef8 <__aeabi_dsub>
 800478c:	465c      	mov	r4, fp
 800478e:	0006      	movs	r6, r0
 8004790:	000f      	movs	r7, r1
 8004792:	2c00      	cmp	r4, #0
 8004794:	dc00      	bgt.n	8004798 <__kernel_rem_pio2+0x20c>
 8004796:	e085      	b.n	80048a4 <__kernel_rem_pio2+0x318>
 8004798:	4643      	mov	r3, r8
 800479a:	1e59      	subs	r1, r3, #1
 800479c:	0089      	lsls	r1, r1, #2
 800479e:	ab0e      	add	r3, sp, #56	; 0x38
 80047a0:	585b      	ldr	r3, [r3, r1]
 80047a2:	2018      	movs	r0, #24
 80047a4:	001a      	movs	r2, r3
 80047a6:	1b00      	subs	r0, r0, r4
 80047a8:	4102      	asrs	r2, r0
 80047aa:	4491      	add	r9, r2
 80047ac:	4082      	lsls	r2, r0
 80047ae:	1a9d      	subs	r5, r3, r2
 80047b0:	ab0e      	add	r3, sp, #56	; 0x38
 80047b2:	505d      	str	r5, [r3, r1]
 80047b4:	2317      	movs	r3, #23
 80047b6:	1b1b      	subs	r3, r3, r4
 80047b8:	411d      	asrs	r5, r3
 80047ba:	2d00      	cmp	r5, #0
 80047bc:	dd00      	ble.n	80047c0 <__kernel_rem_pio2+0x234>
 80047be:	e07e      	b.n	80048be <__kernel_rem_pio2+0x332>
 80047c0:	2200      	movs	r2, #0
 80047c2:	2300      	movs	r3, #0
 80047c4:	0030      	movs	r0, r6
 80047c6:	0039      	movs	r1, r7
 80047c8:	f7fc ffc4 	bl	8001754 <__aeabi_dcmpeq>
 80047cc:	2800      	cmp	r0, #0
 80047ce:	d100      	bne.n	80047d2 <__kernel_rem_pio2+0x246>
 80047d0:	e0ea      	b.n	80049a8 <__kernel_rem_pio2+0x41c>
 80047d2:	4643      	mov	r3, r8
 80047d4:	1e59      	subs	r1, r3, #1
 80047d6:	9b08      	ldr	r3, [sp, #32]
 80047d8:	428b      	cmp	r3, r1
 80047da:	dc0f      	bgt.n	80047fc <__kernel_rem_pio2+0x270>
 80047dc:	aa0e      	add	r2, sp, #56	; 0x38
 80047de:	4694      	mov	ip, r2
 80047e0:	2200      	movs	r2, #0
 80047e2:	4b51      	ldr	r3, [pc, #324]	; (8004928 <__kernel_rem_pio2+0x39c>)
 80047e4:	980c      	ldr	r0, [sp, #48]	; 0x30
 80047e6:	4443      	add	r3, r8
 80047e8:	009b      	lsls	r3, r3, #2
 80047ea:	4463      	add	r3, ip
 80047ec:	681c      	ldr	r4, [r3, #0]
 80047ee:	3b04      	subs	r3, #4
 80047f0:	4322      	orrs	r2, r4
 80047f2:	4283      	cmp	r3, r0
 80047f4:	d1fa      	bne.n	80047ec <__kernel_rem_pio2+0x260>
 80047f6:	2a00      	cmp	r2, #0
 80047f8:	d000      	beq.n	80047fc <__kernel_rem_pio2+0x270>
 80047fa:	e124      	b.n	8004a46 <__kernel_rem_pio2+0x4ba>
 80047fc:	9b08      	ldr	r3, [sp, #32]
 80047fe:	aa0e      	add	r2, sp, #56	; 0x38
 8004800:	3b01      	subs	r3, #1
 8004802:	009b      	lsls	r3, r3, #2
 8004804:	58d3      	ldr	r3, [r2, r3]
 8004806:	2b00      	cmp	r3, #0
 8004808:	d000      	beq.n	800480c <__kernel_rem_pio2+0x280>
 800480a:	e117      	b.n	8004a3c <__kernel_rem_pio2+0x4b0>
 800480c:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800480e:	3301      	adds	r3, #1
 8004810:	6811      	ldr	r1, [r2, #0]
 8004812:	3a04      	subs	r2, #4
 8004814:	3301      	adds	r3, #1
 8004816:	2900      	cmp	r1, #0
 8004818:	d0fa      	beq.n	8004810 <__kernel_rem_pio2+0x284>
 800481a:	2201      	movs	r2, #1
 800481c:	4442      	add	r2, r8
 800481e:	4693      	mov	fp, r2
 8004820:	4443      	add	r3, r8
 8004822:	9303      	str	r3, [sp, #12]
 8004824:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004826:	aa22      	add	r2, sp, #136	; 0x88
 8004828:	4443      	add	r3, r8
 800482a:	4690      	mov	r8, r2
 800482c:	9a00      	ldr	r2, [sp, #0]
 800482e:	00db      	lsls	r3, r3, #3
 8004830:	4694      	mov	ip, r2
 8004832:	4498      	add	r8, r3
 8004834:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004836:	4463      	add	r3, ip
 8004838:	4699      	mov	r9, r3
 800483a:	465b      	mov	r3, fp
 800483c:	9a05      	ldr	r2, [sp, #20]
 800483e:	009b      	lsls	r3, r3, #2
 8004840:	58d0      	ldr	r0, [r2, r3]
 8004842:	f7fc ff21 	bl	8001688 <__aeabi_i2d>
 8004846:	4643      	mov	r3, r8
 8004848:	6018      	str	r0, [r3, #0]
 800484a:	6059      	str	r1, [r3, #4]
 800484c:	9b04      	ldr	r3, [sp, #16]
 800484e:	2b00      	cmp	r3, #0
 8004850:	db25      	blt.n	800489e <__kernel_rem_pio2+0x312>
 8004852:	4647      	mov	r7, r8
 8004854:	2400      	movs	r4, #0
 8004856:	2500      	movs	r5, #0
 8004858:	9e06      	ldr	r6, [sp, #24]
 800485a:	e002      	b.n	8004862 <__kernel_rem_pio2+0x2d6>
 800485c:	3608      	adds	r6, #8
 800485e:	6838      	ldr	r0, [r7, #0]
 8004860:	6879      	ldr	r1, [r7, #4]
 8004862:	6832      	ldr	r2, [r6, #0]
 8004864:	6873      	ldr	r3, [r6, #4]
 8004866:	f7fc f8d9 	bl	8000a1c <__aeabi_dmul>
 800486a:	0002      	movs	r2, r0
 800486c:	000b      	movs	r3, r1
 800486e:	0020      	movs	r0, r4
 8004870:	0029      	movs	r1, r5
 8004872:	f7fd f8c7 	bl	8001a04 <__aeabi_dadd>
 8004876:	3f08      	subs	r7, #8
 8004878:	0004      	movs	r4, r0
 800487a:	000d      	movs	r5, r1
 800487c:	4556      	cmp	r6, sl
 800487e:	d1ed      	bne.n	800485c <__kernel_rem_pio2+0x2d0>
 8004880:	464b      	mov	r3, r9
 8004882:	609c      	str	r4, [r3, #8]
 8004884:	60dd      	str	r5, [r3, #12]
 8004886:	2301      	movs	r3, #1
 8004888:	469c      	mov	ip, r3
 800488a:	3307      	adds	r3, #7
 800488c:	44e3      	add	fp, ip
 800488e:	469c      	mov	ip, r3
 8004890:	9b03      	ldr	r3, [sp, #12]
 8004892:	44e0      	add	r8, ip
 8004894:	44e1      	add	r9, ip
 8004896:	459b      	cmp	fp, r3
 8004898:	ddcf      	ble.n	800483a <__kernel_rem_pio2+0x2ae>
 800489a:	4698      	mov	r8, r3
 800489c:	e710      	b.n	80046c0 <__kernel_rem_pio2+0x134>
 800489e:	2400      	movs	r4, #0
 80048a0:	2500      	movs	r5, #0
 80048a2:	e7ed      	b.n	8004880 <__kernel_rem_pio2+0x2f4>
 80048a4:	9b07      	ldr	r3, [sp, #28]
 80048a6:	2b00      	cmp	r3, #0
 80048a8:	d000      	beq.n	80048ac <__kernel_rem_pio2+0x320>
 80048aa:	e0be      	b.n	8004a2a <__kernel_rem_pio2+0x49e>
 80048ac:	4643      	mov	r3, r8
 80048ae:	3b01      	subs	r3, #1
 80048b0:	009b      	lsls	r3, r3, #2
 80048b2:	aa0e      	add	r2, sp, #56	; 0x38
 80048b4:	58d5      	ldr	r5, [r2, r3]
 80048b6:	15ed      	asrs	r5, r5, #23
 80048b8:	2d00      	cmp	r5, #0
 80048ba:	dc00      	bgt.n	80048be <__kernel_rem_pio2+0x332>
 80048bc:	e780      	b.n	80047c0 <__kernel_rem_pio2+0x234>
 80048be:	2301      	movs	r3, #1
 80048c0:	469c      	mov	ip, r3
 80048c2:	4643      	mov	r3, r8
 80048c4:	44e1      	add	r9, ip
 80048c6:	2b00      	cmp	r3, #0
 80048c8:	dc00      	bgt.n	80048cc <__kernel_rem_pio2+0x340>
 80048ca:	e230      	b.n	8004d2e <__kernel_rem_pio2+0x7a2>
 80048cc:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 80048ce:	2c00      	cmp	r4, #0
 80048d0:	d000      	beq.n	80048d4 <__kernel_rem_pio2+0x348>
 80048d2:	e0a0      	b.n	8004a16 <__kernel_rem_pio2+0x48a>
 80048d4:	4643      	mov	r3, r8
 80048d6:	2b01      	cmp	r3, #1
 80048d8:	d030      	beq.n	800493c <__kernel_rem_pio2+0x3b0>
 80048da:	2201      	movs	r2, #1
 80048dc:	4641      	mov	r1, r8
 80048de:	ab0f      	add	r3, sp, #60	; 0x3c
 80048e0:	681c      	ldr	r4, [r3, #0]
 80048e2:	2c00      	cmp	r4, #0
 80048e4:	d100      	bne.n	80048e8 <__kernel_rem_pio2+0x35c>
 80048e6:	e099      	b.n	8004a1c <__kernel_rem_pio2+0x490>
 80048e8:	4688      	mov	r8, r1
 80048ea:	1c53      	adds	r3, r2, #1
 80048ec:	2180      	movs	r1, #128	; 0x80
 80048ee:	0449      	lsls	r1, r1, #17
 80048f0:	0092      	lsls	r2, r2, #2
 80048f2:	1b09      	subs	r1, r1, r4
 80048f4:	a80e      	add	r0, sp, #56	; 0x38
 80048f6:	5081      	str	r1, [r0, r2]
 80048f8:	4598      	cmp	r8, r3
 80048fa:	dd1e      	ble.n	800493a <__kernel_rem_pio2+0x3ae>
 80048fc:	4641      	mov	r1, r8
 80048fe:	4684      	mov	ip, r0
 8004900:	009b      	lsls	r3, r3, #2
 8004902:	0089      	lsls	r1, r1, #2
 8004904:	58c2      	ldr	r2, [r0, r3]
 8004906:	4461      	add	r1, ip
 8004908:	4808      	ldr	r0, [pc, #32]	; (800492c <__kernel_rem_pio2+0x3a0>)
 800490a:	4463      	add	r3, ip
 800490c:	e011      	b.n	8004932 <__kernel_rem_pio2+0x3a6>
 800490e:	46c0      	nop			; (mov r8, r8)
 8004910:	fffffd94 	.word	0xfffffd94
 8004914:	08005628 	.word	0x08005628
 8004918:	1fffffff 	.word	0x1fffffff
 800491c:	3e700000 	.word	0x3e700000
 8004920:	41700000 	.word	0x41700000
 8004924:	40200000 	.word	0x40200000
 8004928:	3fffffff 	.word	0x3fffffff
 800492c:	00ffffff 	.word	0x00ffffff
 8004930:	681a      	ldr	r2, [r3, #0]
 8004932:	1a82      	subs	r2, r0, r2
 8004934:	c304      	stmia	r3!, {r2}
 8004936:	428b      	cmp	r3, r1
 8004938:	d1fa      	bne.n	8004930 <__kernel_rem_pio2+0x3a4>
 800493a:	2401      	movs	r4, #1
 800493c:	9b07      	ldr	r3, [sp, #28]
 800493e:	2b00      	cmp	r3, #0
 8004940:	dd0e      	ble.n	8004960 <__kernel_rem_pio2+0x3d4>
 8004942:	2b01      	cmp	r3, #1
 8004944:	d100      	bne.n	8004948 <__kernel_rem_pio2+0x3bc>
 8004946:	e1d1      	b.n	8004cec <__kernel_rem_pio2+0x760>
 8004948:	2b02      	cmp	r3, #2
 800494a:	d109      	bne.n	8004960 <__kernel_rem_pio2+0x3d4>
 800494c:	4643      	mov	r3, r8
 800494e:	1e5a      	subs	r2, r3, #1
 8004950:	0092      	lsls	r2, r2, #2
 8004952:	ab0e      	add	r3, sp, #56	; 0x38
 8004954:	589b      	ldr	r3, [r3, r2]
 8004956:	a90e      	add	r1, sp, #56	; 0x38
 8004958:	9303      	str	r3, [sp, #12]
 800495a:	029b      	lsls	r3, r3, #10
 800495c:	0a9b      	lsrs	r3, r3, #10
 800495e:	508b      	str	r3, [r1, r2]
 8004960:	2d02      	cmp	r5, #2
 8004962:	d000      	beq.n	8004966 <__kernel_rem_pio2+0x3da>
 8004964:	e72c      	b.n	80047c0 <__kernel_rem_pio2+0x234>
 8004966:	0032      	movs	r2, r6
 8004968:	003b      	movs	r3, r7
 800496a:	2000      	movs	r0, #0
 800496c:	4993      	ldr	r1, [pc, #588]	; (8004bbc <__kernel_rem_pio2+0x630>)
 800496e:	f7fc fac3 	bl	8000ef8 <__aeabi_dsub>
 8004972:	0006      	movs	r6, r0
 8004974:	000f      	movs	r7, r1
 8004976:	2c00      	cmp	r4, #0
 8004978:	d100      	bne.n	800497c <__kernel_rem_pio2+0x3f0>
 800497a:	e721      	b.n	80047c0 <__kernel_rem_pio2+0x234>
 800497c:	9a07      	ldr	r2, [sp, #28]
 800497e:	2000      	movs	r0, #0
 8004980:	498e      	ldr	r1, [pc, #568]	; (8004bbc <__kernel_rem_pio2+0x630>)
 8004982:	f000 fbbd 	bl	8005100 <scalbn>
 8004986:	0002      	movs	r2, r0
 8004988:	000b      	movs	r3, r1
 800498a:	0030      	movs	r0, r6
 800498c:	0039      	movs	r1, r7
 800498e:	f7fc fab3 	bl	8000ef8 <__aeabi_dsub>
 8004992:	0006      	movs	r6, r0
 8004994:	000f      	movs	r7, r1
 8004996:	2200      	movs	r2, #0
 8004998:	2300      	movs	r3, #0
 800499a:	0030      	movs	r0, r6
 800499c:	0039      	movs	r1, r7
 800499e:	f7fc fed9 	bl	8001754 <__aeabi_dcmpeq>
 80049a2:	2800      	cmp	r0, #0
 80049a4:	d000      	beq.n	80049a8 <__kernel_rem_pio2+0x41c>
 80049a6:	e714      	b.n	80047d2 <__kernel_rem_pio2+0x246>
 80049a8:	464b      	mov	r3, r9
 80049aa:	9306      	str	r3, [sp, #24]
 80049ac:	9b07      	ldr	r3, [sp, #28]
 80049ae:	0030      	movs	r0, r6
 80049b0:	425a      	negs	r2, r3
 80049b2:	0039      	movs	r1, r7
 80049b4:	9504      	str	r5, [sp, #16]
 80049b6:	f000 fba3 	bl	8005100 <scalbn>
 80049ba:	2200      	movs	r2, #0
 80049bc:	4b80      	ldr	r3, [pc, #512]	; (8004bc0 <__kernel_rem_pio2+0x634>)
 80049be:	0004      	movs	r4, r0
 80049c0:	000d      	movs	r5, r1
 80049c2:	f7fc feeb 	bl	800179c <__aeabi_dcmpge>
 80049c6:	2800      	cmp	r0, #0
 80049c8:	d100      	bne.n	80049cc <__kernel_rem_pio2+0x440>
 80049ca:	e1ef      	b.n	8004dac <__kernel_rem_pio2+0x820>
 80049cc:	4b7d      	ldr	r3, [pc, #500]	; (8004bc4 <__kernel_rem_pio2+0x638>)
 80049ce:	2200      	movs	r2, #0
 80049d0:	0020      	movs	r0, r4
 80049d2:	0029      	movs	r1, r5
 80049d4:	f7fc f822 	bl	8000a1c <__aeabi_dmul>
 80049d8:	f7fc fe20 	bl	800161c <__aeabi_d2iz>
 80049dc:	4642      	mov	r2, r8
 80049de:	0006      	movs	r6, r0
 80049e0:	0097      	lsls	r7, r2, #2
 80049e2:	f7fc fe51 	bl	8001688 <__aeabi_i2d>
 80049e6:	2200      	movs	r2, #0
 80049e8:	4b75      	ldr	r3, [pc, #468]	; (8004bc0 <__kernel_rem_pio2+0x634>)
 80049ea:	f7fc f817 	bl	8000a1c <__aeabi_dmul>
 80049ee:	0002      	movs	r2, r0
 80049f0:	000b      	movs	r3, r1
 80049f2:	0020      	movs	r0, r4
 80049f4:	0029      	movs	r1, r5
 80049f6:	f7fc fa7f 	bl	8000ef8 <__aeabi_dsub>
 80049fa:	f7fc fe0f 	bl	800161c <__aeabi_d2iz>
 80049fe:	aa0e      	add	r2, sp, #56	; 0x38
 8004a00:	51d0      	str	r0, [r2, r7]
 8004a02:	4642      	mov	r2, r8
 8004a04:	9b07      	ldr	r3, [sp, #28]
 8004a06:	3201      	adds	r2, #1
 8004a08:	3318      	adds	r3, #24
 8004a0a:	9203      	str	r2, [sp, #12]
 8004a0c:	9307      	str	r3, [sp, #28]
 8004a0e:	0093      	lsls	r3, r2, #2
 8004a10:	aa0e      	add	r2, sp, #56	; 0x38
 8004a12:	50d6      	str	r6, [r2, r3]
 8004a14:	e032      	b.n	8004a7c <__kernel_rem_pio2+0x4f0>
 8004a16:	2301      	movs	r3, #1
 8004a18:	2200      	movs	r2, #0
 8004a1a:	e767      	b.n	80048ec <__kernel_rem_pio2+0x360>
 8004a1c:	3201      	adds	r2, #1
 8004a1e:	3304      	adds	r3, #4
 8004a20:	428a      	cmp	r2, r1
 8004a22:	d000      	beq.n	8004a26 <__kernel_rem_pio2+0x49a>
 8004a24:	e75c      	b.n	80048e0 <__kernel_rem_pio2+0x354>
 8004a26:	4688      	mov	r8, r1
 8004a28:	e788      	b.n	800493c <__kernel_rem_pio2+0x3b0>
 8004a2a:	2200      	movs	r2, #0
 8004a2c:	4b66      	ldr	r3, [pc, #408]	; (8004bc8 <__kernel_rem_pio2+0x63c>)
 8004a2e:	f7fc feb5 	bl	800179c <__aeabi_dcmpge>
 8004a32:	2800      	cmp	r0, #0
 8004a34:	d000      	beq.n	8004a38 <__kernel_rem_pio2+0x4ac>
 8004a36:	e169      	b.n	8004d0c <__kernel_rem_pio2+0x780>
 8004a38:	2500      	movs	r5, #0
 8004a3a:	e6c1      	b.n	80047c0 <__kernel_rem_pio2+0x234>
 8004a3c:	2301      	movs	r3, #1
 8004a3e:	4443      	add	r3, r8
 8004a40:	469b      	mov	fp, r3
 8004a42:	9303      	str	r3, [sp, #12]
 8004a44:	e6ee      	b.n	8004824 <__kernel_rem_pio2+0x298>
 8004a46:	464b      	mov	r3, r9
 8004a48:	000a      	movs	r2, r1
 8004a4a:	9306      	str	r3, [sp, #24]
 8004a4c:	9b07      	ldr	r3, [sp, #28]
 8004a4e:	9103      	str	r1, [sp, #12]
 8004a50:	3b18      	subs	r3, #24
 8004a52:	0019      	movs	r1, r3
 8004a54:	9307      	str	r3, [sp, #28]
 8004a56:	a80e      	add	r0, sp, #56	; 0x38
 8004a58:	0093      	lsls	r3, r2, #2
 8004a5a:	58c3      	ldr	r3, [r0, r3]
 8004a5c:	9504      	str	r5, [sp, #16]
 8004a5e:	2b00      	cmp	r3, #0
 8004a60:	d10c      	bne.n	8004a7c <__kernel_rem_pio2+0x4f0>
 8004a62:	4684      	mov	ip, r0
 8004a64:	4b59      	ldr	r3, [pc, #356]	; (8004bcc <__kernel_rem_pio2+0x640>)
 8004a66:	4443      	add	r3, r8
 8004a68:	009b      	lsls	r3, r3, #2
 8004a6a:	4463      	add	r3, ip
 8004a6c:	6818      	ldr	r0, [r3, #0]
 8004a6e:	3b04      	subs	r3, #4
 8004a70:	3a01      	subs	r2, #1
 8004a72:	3918      	subs	r1, #24
 8004a74:	2800      	cmp	r0, #0
 8004a76:	d0f9      	beq.n	8004a6c <__kernel_rem_pio2+0x4e0>
 8004a78:	9203      	str	r2, [sp, #12]
 8004a7a:	9107      	str	r1, [sp, #28]
 8004a7c:	2000      	movs	r0, #0
 8004a7e:	9a07      	ldr	r2, [sp, #28]
 8004a80:	494e      	ldr	r1, [pc, #312]	; (8004bbc <__kernel_rem_pio2+0x630>)
 8004a82:	f000 fb3d 	bl	8005100 <scalbn>
 8004a86:	9b03      	ldr	r3, [sp, #12]
 8004a88:	0004      	movs	r4, r0
 8004a8a:	000d      	movs	r5, r1
 8004a8c:	2b00      	cmp	r3, #0
 8004a8e:	da00      	bge.n	8004a92 <__kernel_rem_pio2+0x506>
 8004a90:	e1c2      	b.n	8004e18 <__kernel_rem_pio2+0x88c>
 8004a92:	aa0e      	add	r2, sp, #56	; 0x38
 8004a94:	4694      	mov	ip, r2
 8004a96:	9a00      	ldr	r2, [sp, #0]
 8004a98:	009e      	lsls	r6, r3, #2
 8004a9a:	00db      	lsls	r3, r3, #3
 8004a9c:	0011      	movs	r1, r2
 8004a9e:	4466      	add	r6, ip
 8004aa0:	469c      	mov	ip, r3
 8004aa2:	4461      	add	r1, ip
 8004aa4:	000f      	movs	r7, r1
 8004aa6:	468b      	mov	fp, r1
 8004aa8:	4690      	mov	r8, r2
 8004aaa:	9305      	str	r3, [sp, #20]
 8004aac:	6830      	ldr	r0, [r6, #0]
 8004aae:	f7fc fdeb 	bl	8001688 <__aeabi_i2d>
 8004ab2:	0022      	movs	r2, r4
 8004ab4:	002b      	movs	r3, r5
 8004ab6:	f7fb ffb1 	bl	8000a1c <__aeabi_dmul>
 8004aba:	4b42      	ldr	r3, [pc, #264]	; (8004bc4 <__kernel_rem_pio2+0x638>)
 8004abc:	6038      	str	r0, [r7, #0]
 8004abe:	6079      	str	r1, [r7, #4]
 8004ac0:	2200      	movs	r2, #0
 8004ac2:	0020      	movs	r0, r4
 8004ac4:	0029      	movs	r1, r5
 8004ac6:	f7fb ffa9 	bl	8000a1c <__aeabi_dmul>
 8004aca:	3e04      	subs	r6, #4
 8004acc:	003b      	movs	r3, r7
 8004ace:	0004      	movs	r4, r0
 8004ad0:	000d      	movs	r5, r1
 8004ad2:	3f08      	subs	r7, #8
 8004ad4:	4598      	cmp	r8, r3
 8004ad6:	d1e9      	bne.n	8004aac <__kernel_rem_pio2+0x520>
 8004ad8:	2300      	movs	r3, #0
 8004ada:	4699      	mov	r9, r3
 8004adc:	ab4a      	add	r3, sp, #296	; 0x128
 8004ade:	9300      	str	r3, [sp, #0]
 8004ae0:	9b08      	ldr	r3, [sp, #32]
 8004ae2:	469a      	mov	sl, r3
 8004ae4:	4653      	mov	r3, sl
 8004ae6:	2400      	movs	r4, #0
 8004ae8:	2500      	movs	r5, #0
 8004aea:	2b00      	cmp	r3, #0
 8004aec:	db21      	blt.n	8004b32 <__kernel_rem_pio2+0x5a6>
 8004aee:	2080      	movs	r0, #128	; 0x80
 8004af0:	4b37      	ldr	r3, [pc, #220]	; (8004bd0 <__kernel_rem_pio2+0x644>)
 8004af2:	465f      	mov	r7, fp
 8004af4:	4698      	mov	r8, r3
 8004af6:	2400      	movs	r4, #0
 8004af8:	2500      	movs	r5, #0
 8004afa:	2600      	movs	r6, #0
 8004afc:	4935      	ldr	r1, [pc, #212]	; (8004bd4 <__kernel_rem_pio2+0x648>)
 8004afe:	05c0      	lsls	r0, r0, #23
 8004b00:	e008      	b.n	8004b14 <__kernel_rem_pio2+0x588>
 8004b02:	2308      	movs	r3, #8
 8004b04:	469c      	mov	ip, r3
 8004b06:	3708      	adds	r7, #8
 8004b08:	44e0      	add	r8, ip
 8004b0a:	45b1      	cmp	r9, r6
 8004b0c:	db11      	blt.n	8004b32 <__kernel_rem_pio2+0x5a6>
 8004b0e:	4643      	mov	r3, r8
 8004b10:	6818      	ldr	r0, [r3, #0]
 8004b12:	6859      	ldr	r1, [r3, #4]
 8004b14:	683a      	ldr	r2, [r7, #0]
 8004b16:	687b      	ldr	r3, [r7, #4]
 8004b18:	f7fb ff80 	bl	8000a1c <__aeabi_dmul>
 8004b1c:	0002      	movs	r2, r0
 8004b1e:	000b      	movs	r3, r1
 8004b20:	0020      	movs	r0, r4
 8004b22:	0029      	movs	r1, r5
 8004b24:	f7fc ff6e 	bl	8001a04 <__aeabi_dadd>
 8004b28:	3601      	adds	r6, #1
 8004b2a:	0004      	movs	r4, r0
 8004b2c:	000d      	movs	r5, r1
 8004b2e:	45b2      	cmp	sl, r6
 8004b30:	dae7      	bge.n	8004b02 <__kernel_rem_pio2+0x576>
 8004b32:	9a00      	ldr	r2, [sp, #0]
 8004b34:	464b      	mov	r3, r9
 8004b36:	4694      	mov	ip, r2
 8004b38:	2208      	movs	r2, #8
 8004b3a:	00db      	lsls	r3, r3, #3
 8004b3c:	4463      	add	r3, ip
 8004b3e:	4252      	negs	r2, r2
 8004b40:	4694      	mov	ip, r2
 8004b42:	601c      	str	r4, [r3, #0]
 8004b44:	605d      	str	r5, [r3, #4]
 8004b46:	464b      	mov	r3, r9
 8004b48:	9a03      	ldr	r2, [sp, #12]
 8004b4a:	3301      	adds	r3, #1
 8004b4c:	44e3      	add	fp, ip
 8004b4e:	4591      	cmp	r9, r2
 8004b50:	d001      	beq.n	8004b56 <__kernel_rem_pio2+0x5ca>
 8004b52:	4699      	mov	r9, r3
 8004b54:	e7c6      	b.n	8004ae4 <__kernel_rem_pio2+0x558>
 8004b56:	9b00      	ldr	r3, [sp, #0]
 8004b58:	469a      	mov	sl, r3
 8004b5a:	9ba4      	ldr	r3, [sp, #656]	; 0x290
 8004b5c:	2b02      	cmp	r3, #2
 8004b5e:	dc3b      	bgt.n	8004bd8 <__kernel_rem_pio2+0x64c>
 8004b60:	2b00      	cmp	r3, #0
 8004b62:	dd00      	ble.n	8004b66 <__kernel_rem_pio2+0x5da>
 8004b64:	e0e5      	b.n	8004d32 <__kernel_rem_pio2+0x7a6>
 8004b66:	d11d      	bne.n	8004ba4 <__kernel_rem_pio2+0x618>
 8004b68:	9b05      	ldr	r3, [sp, #20]
 8004b6a:	2500      	movs	r5, #0
 8004b6c:	4453      	add	r3, sl
 8004b6e:	001e      	movs	r6, r3
 8004b70:	2400      	movs	r4, #0
 8004b72:	4657      	mov	r7, sl
 8004b74:	6832      	ldr	r2, [r6, #0]
 8004b76:	6873      	ldr	r3, [r6, #4]
 8004b78:	0028      	movs	r0, r5
 8004b7a:	0021      	movs	r1, r4
 8004b7c:	f7fc ff42 	bl	8001a04 <__aeabi_dadd>
 8004b80:	0033      	movs	r3, r6
 8004b82:	0005      	movs	r5, r0
 8004b84:	000c      	movs	r4, r1
 8004b86:	3e08      	subs	r6, #8
 8004b88:	429f      	cmp	r7, r3
 8004b8a:	d1f3      	bne.n	8004b74 <__kernel_rem_pio2+0x5e8>
 8004b8c:	9b04      	ldr	r3, [sp, #16]
 8004b8e:	2b00      	cmp	r3, #0
 8004b90:	d003      	beq.n	8004b9a <__kernel_rem_pio2+0x60e>
 8004b92:	2380      	movs	r3, #128	; 0x80
 8004b94:	061b      	lsls	r3, r3, #24
 8004b96:	469c      	mov	ip, r3
 8004b98:	4464      	add	r4, ip
 8004b9a:	002a      	movs	r2, r5
 8004b9c:	0023      	movs	r3, r4
 8004b9e:	990d      	ldr	r1, [sp, #52]	; 0x34
 8004ba0:	600a      	str	r2, [r1, #0]
 8004ba2:	604b      	str	r3, [r1, #4]
 8004ba4:	2007      	movs	r0, #7
 8004ba6:	9b06      	ldr	r3, [sp, #24]
 8004ba8:	4018      	ands	r0, r3
 8004baa:	239b      	movs	r3, #155	; 0x9b
 8004bac:	009b      	lsls	r3, r3, #2
 8004bae:	449d      	add	sp, r3
 8004bb0:	bcf0      	pop	{r4, r5, r6, r7}
 8004bb2:	46bb      	mov	fp, r7
 8004bb4:	46b2      	mov	sl, r6
 8004bb6:	46a9      	mov	r9, r5
 8004bb8:	46a0      	mov	r8, r4
 8004bba:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8004bbc:	3ff00000 	.word	0x3ff00000
 8004bc0:	41700000 	.word	0x41700000
 8004bc4:	3e700000 	.word	0x3e700000
 8004bc8:	3fe00000 	.word	0x3fe00000
 8004bcc:	3ffffffe 	.word	0x3ffffffe
 8004bd0:	080055e8 	.word	0x080055e8
 8004bd4:	3ff921fb 	.word	0x3ff921fb
 8004bd8:	9ba4      	ldr	r3, [sp, #656]	; 0x290
 8004bda:	2b03      	cmp	r3, #3
 8004bdc:	d1e2      	bne.n	8004ba4 <__kernel_rem_pio2+0x618>
 8004bde:	9b03      	ldr	r3, [sp, #12]
 8004be0:	2b00      	cmp	r3, #0
 8004be2:	d100      	bne.n	8004be6 <__kernel_rem_pio2+0x65a>
 8004be4:	e12e      	b.n	8004e44 <__kernel_rem_pio2+0x8b8>
 8004be6:	4a99      	ldr	r2, [pc, #612]	; (8004e4c <__kernel_rem_pio2+0x8c0>)
 8004be8:	9b05      	ldr	r3, [sp, #20]
 8004bea:	4694      	mov	ip, r2
 8004bec:	4453      	add	r3, sl
 8004bee:	681c      	ldr	r4, [r3, #0]
 8004bf0:	685d      	ldr	r5, [r3, #4]
 8004bf2:	9b03      	ldr	r3, [sp, #12]
 8004bf4:	4463      	add	r3, ip
 8004bf6:	469b      	mov	fp, r3
 8004bf8:	00db      	lsls	r3, r3, #3
 8004bfa:	4453      	add	r3, sl
 8004bfc:	4698      	mov	r8, r3
 8004bfe:	4643      	mov	r3, r8
 8004c00:	0020      	movs	r0, r4
 8004c02:	681e      	ldr	r6, [r3, #0]
 8004c04:	685f      	ldr	r7, [r3, #4]
 8004c06:	0029      	movs	r1, r5
 8004c08:	0032      	movs	r2, r6
 8004c0a:	003b      	movs	r3, r7
 8004c0c:	9400      	str	r4, [sp, #0]
 8004c0e:	9501      	str	r5, [sp, #4]
 8004c10:	f7fc fef8 	bl	8001a04 <__aeabi_dadd>
 8004c14:	0002      	movs	r2, r0
 8004c16:	000b      	movs	r3, r1
 8004c18:	0004      	movs	r4, r0
 8004c1a:	000d      	movs	r5, r1
 8004c1c:	0030      	movs	r0, r6
 8004c1e:	0039      	movs	r1, r7
 8004c20:	f7fc f96a 	bl	8000ef8 <__aeabi_dsub>
 8004c24:	9a00      	ldr	r2, [sp, #0]
 8004c26:	9b01      	ldr	r3, [sp, #4]
 8004c28:	f7fc feec 	bl	8001a04 <__aeabi_dadd>
 8004c2c:	4643      	mov	r3, r8
 8004c2e:	6098      	str	r0, [r3, #8]
 8004c30:	60d9      	str	r1, [r3, #12]
 8004c32:	601c      	str	r4, [r3, #0]
 8004c34:	605d      	str	r5, [r3, #4]
 8004c36:	2308      	movs	r3, #8
 8004c38:	425b      	negs	r3, r3
 8004c3a:	46c1      	mov	r9, r8
 8004c3c:	469c      	mov	ip, r3
 8004c3e:	44e0      	add	r8, ip
 8004c40:	45ca      	cmp	sl, r9
 8004c42:	d1dc      	bne.n	8004bfe <__kernel_rem_pio2+0x672>
 8004c44:	9b03      	ldr	r3, [sp, #12]
 8004c46:	2b01      	cmp	r3, #1
 8004c48:	dc00      	bgt.n	8004c4c <__kernel_rem_pio2+0x6c0>
 8004c4a:	e0fb      	b.n	8004e44 <__kernel_rem_pio2+0x8b8>
 8004c4c:	9b05      	ldr	r3, [sp, #20]
 8004c4e:	46d0      	mov	r8, sl
 8004c50:	4453      	add	r3, sl
 8004c52:	681c      	ldr	r4, [r3, #0]
 8004c54:	685d      	ldr	r5, [r3, #4]
 8004c56:	465b      	mov	r3, fp
 8004c58:	00db      	lsls	r3, r3, #3
 8004c5a:	4699      	mov	r9, r3
 8004c5c:	44c8      	add	r8, r9
 8004c5e:	4643      	mov	r3, r8
 8004c60:	0020      	movs	r0, r4
 8004c62:	681e      	ldr	r6, [r3, #0]
 8004c64:	685f      	ldr	r7, [r3, #4]
 8004c66:	0029      	movs	r1, r5
 8004c68:	0032      	movs	r2, r6
 8004c6a:	003b      	movs	r3, r7
 8004c6c:	9400      	str	r4, [sp, #0]
 8004c6e:	9501      	str	r5, [sp, #4]
 8004c70:	f7fc fec8 	bl	8001a04 <__aeabi_dadd>
 8004c74:	0002      	movs	r2, r0
 8004c76:	000b      	movs	r3, r1
 8004c78:	0004      	movs	r4, r0
 8004c7a:	000d      	movs	r5, r1
 8004c7c:	0030      	movs	r0, r6
 8004c7e:	0039      	movs	r1, r7
 8004c80:	f7fc f93a 	bl	8000ef8 <__aeabi_dsub>
 8004c84:	9a00      	ldr	r2, [sp, #0]
 8004c86:	9b01      	ldr	r3, [sp, #4]
 8004c88:	f7fc febc 	bl	8001a04 <__aeabi_dadd>
 8004c8c:	4643      	mov	r3, r8
 8004c8e:	6098      	str	r0, [r3, #8]
 8004c90:	60d9      	str	r1, [r3, #12]
 8004c92:	601c      	str	r4, [r3, #0]
 8004c94:	605d      	str	r5, [r3, #4]
 8004c96:	2308      	movs	r3, #8
 8004c98:	425b      	negs	r3, r3
 8004c9a:	4646      	mov	r6, r8
 8004c9c:	4698      	mov	r8, r3
 8004c9e:	44b0      	add	r8, r6
 8004ca0:	45c2      	cmp	sl, r8
 8004ca2:	d1dc      	bne.n	8004c5e <__kernel_rem_pio2+0x6d2>
 8004ca4:	464c      	mov	r4, r9
 8004ca6:	2700      	movs	r7, #0
 8004ca8:	2500      	movs	r5, #0
 8004caa:	3408      	adds	r4, #8
 8004cac:	4454      	add	r4, sl
 8004cae:	0038      	movs	r0, r7
 8004cb0:	6822      	ldr	r2, [r4, #0]
 8004cb2:	6863      	ldr	r3, [r4, #4]
 8004cb4:	0029      	movs	r1, r5
 8004cb6:	f7fc fea5 	bl	8001a04 <__aeabi_dadd>
 8004cba:	3c08      	subs	r4, #8
 8004cbc:	0007      	movs	r7, r0
 8004cbe:	000d      	movs	r5, r1
 8004cc0:	42a6      	cmp	r6, r4
 8004cc2:	d1f4      	bne.n	8004cae <__kernel_rem_pio2+0x722>
 8004cc4:	9b04      	ldr	r3, [sp, #16]
 8004cc6:	2b00      	cmp	r3, #0
 8004cc8:	d17b      	bne.n	8004dc2 <__kernel_rem_pio2+0x836>
 8004cca:	9b4a      	ldr	r3, [sp, #296]	; 0x128
 8004ccc:	9c4b      	ldr	r4, [sp, #300]	; 0x12c
 8004cce:	990d      	ldr	r1, [sp, #52]	; 0x34
 8004cd0:	003a      	movs	r2, r7
 8004cd2:	600b      	str	r3, [r1, #0]
 8004cd4:	604c      	str	r4, [r1, #4]
 8004cd6:	4653      	mov	r3, sl
 8004cd8:	68dc      	ldr	r4, [r3, #12]
 8004cda:	689b      	ldr	r3, [r3, #8]
 8004cdc:	9300      	str	r3, [sp, #0]
 8004cde:	9401      	str	r4, [sp, #4]
 8004ce0:	608b      	str	r3, [r1, #8]
 8004ce2:	60cc      	str	r4, [r1, #12]
 8004ce4:	002b      	movs	r3, r5
 8004ce6:	610a      	str	r2, [r1, #16]
 8004ce8:	614b      	str	r3, [r1, #20]
 8004cea:	e75b      	b.n	8004ba4 <__kernel_rem_pio2+0x618>
 8004cec:	4643      	mov	r3, r8
 8004cee:	1e5a      	subs	r2, r3, #1
 8004cf0:	0092      	lsls	r2, r2, #2
 8004cf2:	ab0e      	add	r3, sp, #56	; 0x38
 8004cf4:	589b      	ldr	r3, [r3, r2]
 8004cf6:	a90e      	add	r1, sp, #56	; 0x38
 8004cf8:	9303      	str	r3, [sp, #12]
 8004cfa:	025b      	lsls	r3, r3, #9
 8004cfc:	0a5b      	lsrs	r3, r3, #9
 8004cfe:	508b      	str	r3, [r1, r2]
 8004d00:	e62e      	b.n	8004960 <__kernel_rem_pio2+0x3d4>
 8004d02:	2318      	movs	r3, #24
 8004d04:	2200      	movs	r2, #0
 8004d06:	425b      	negs	r3, r3
 8004d08:	9205      	str	r2, [sp, #20]
 8004d0a:	e462      	b.n	80045d2 <__kernel_rem_pio2+0x46>
 8004d0c:	2301      	movs	r3, #1
 8004d0e:	469c      	mov	ip, r3
 8004d10:	4643      	mov	r3, r8
 8004d12:	2502      	movs	r5, #2
 8004d14:	44e1      	add	r9, ip
 8004d16:	2b00      	cmp	r3, #0
 8004d18:	dd00      	ble.n	8004d1c <__kernel_rem_pio2+0x790>
 8004d1a:	e5d7      	b.n	80048cc <__kernel_rem_pio2+0x340>
 8004d1c:	0032      	movs	r2, r6
 8004d1e:	003b      	movs	r3, r7
 8004d20:	2000      	movs	r0, #0
 8004d22:	494b      	ldr	r1, [pc, #300]	; (8004e50 <__kernel_rem_pio2+0x8c4>)
 8004d24:	f7fc f8e8 	bl	8000ef8 <__aeabi_dsub>
 8004d28:	0006      	movs	r6, r0
 8004d2a:	000f      	movs	r7, r1
 8004d2c:	e548      	b.n	80047c0 <__kernel_rem_pio2+0x234>
 8004d2e:	2400      	movs	r4, #0
 8004d30:	e604      	b.n	800493c <__kernel_rem_pio2+0x3b0>
 8004d32:	9b05      	ldr	r3, [sp, #20]
 8004d34:	2500      	movs	r5, #0
 8004d36:	4453      	add	r3, sl
 8004d38:	001e      	movs	r6, r3
 8004d3a:	2400      	movs	r4, #0
 8004d3c:	4657      	mov	r7, sl
 8004d3e:	6832      	ldr	r2, [r6, #0]
 8004d40:	6873      	ldr	r3, [r6, #4]
 8004d42:	0028      	movs	r0, r5
 8004d44:	0021      	movs	r1, r4
 8004d46:	f7fc fe5d 	bl	8001a04 <__aeabi_dadd>
 8004d4a:	0033      	movs	r3, r6
 8004d4c:	0005      	movs	r5, r0
 8004d4e:	000c      	movs	r4, r1
 8004d50:	3e08      	subs	r6, #8
 8004d52:	429f      	cmp	r7, r3
 8004d54:	d1f3      	bne.n	8004d3e <__kernel_rem_pio2+0x7b2>
 8004d56:	9b04      	ldr	r3, [sp, #16]
 8004d58:	2b00      	cmp	r3, #0
 8004d5a:	d148      	bne.n	8004dee <__kernel_rem_pio2+0x862>
 8004d5c:	0023      	movs	r3, r4
 8004d5e:	002a      	movs	r2, r5
 8004d60:	990d      	ldr	r1, [sp, #52]	; 0x34
 8004d62:	600a      	str	r2, [r1, #0]
 8004d64:	604b      	str	r3, [r1, #4]
 8004d66:	984a      	ldr	r0, [sp, #296]	; 0x128
 8004d68:	994b      	ldr	r1, [sp, #300]	; 0x12c
 8004d6a:	f7fc f8c5 	bl	8000ef8 <__aeabi_dsub>
 8004d6e:	9b03      	ldr	r3, [sp, #12]
 8004d70:	0007      	movs	r7, r0
 8004d72:	000e      	movs	r6, r1
 8004d74:	2b00      	cmp	r3, #0
 8004d76:	dd13      	ble.n	8004da0 <__kernel_rem_pio2+0x814>
 8004d78:	2401      	movs	r4, #1
 8004d7a:	ad4c      	add	r5, sp, #304	; 0x130
 8004d7c:	0038      	movs	r0, r7
 8004d7e:	cd0c      	ldmia	r5!, {r2, r3}
 8004d80:	0031      	movs	r1, r6
 8004d82:	f7fc fe3f 	bl	8001a04 <__aeabi_dadd>
 8004d86:	9b03      	ldr	r3, [sp, #12]
 8004d88:	3401      	adds	r4, #1
 8004d8a:	0007      	movs	r7, r0
 8004d8c:	000e      	movs	r6, r1
 8004d8e:	42a3      	cmp	r3, r4
 8004d90:	daf4      	bge.n	8004d7c <__kernel_rem_pio2+0x7f0>
 8004d92:	9b04      	ldr	r3, [sp, #16]
 8004d94:	2b00      	cmp	r3, #0
 8004d96:	d003      	beq.n	8004da0 <__kernel_rem_pio2+0x814>
 8004d98:	2380      	movs	r3, #128	; 0x80
 8004d9a:	061b      	lsls	r3, r3, #24
 8004d9c:	469c      	mov	ip, r3
 8004d9e:	4466      	add	r6, ip
 8004da0:	003a      	movs	r2, r7
 8004da2:	0033      	movs	r3, r6
 8004da4:	990d      	ldr	r1, [sp, #52]	; 0x34
 8004da6:	608a      	str	r2, [r1, #8]
 8004da8:	60cb      	str	r3, [r1, #12]
 8004daa:	e6fb      	b.n	8004ba4 <__kernel_rem_pio2+0x618>
 8004dac:	4643      	mov	r3, r8
 8004dae:	0020      	movs	r0, r4
 8004db0:	0029      	movs	r1, r5
 8004db2:	009e      	lsls	r6, r3, #2
 8004db4:	f7fc fc32 	bl	800161c <__aeabi_d2iz>
 8004db8:	ab0e      	add	r3, sp, #56	; 0x38
 8004dba:	5198      	str	r0, [r3, r6]
 8004dbc:	4643      	mov	r3, r8
 8004dbe:	9303      	str	r3, [sp, #12]
 8004dc0:	e65c      	b.n	8004a7c <__kernel_rem_pio2+0x4f0>
 8004dc2:	2080      	movs	r0, #128	; 0x80
 8004dc4:	4651      	mov	r1, sl
 8004dc6:	0600      	lsls	r0, r0, #24
 8004dc8:	4684      	mov	ip, r0
 8004dca:	6849      	ldr	r1, [r1, #4]
 8004dcc:	980d      	ldr	r0, [sp, #52]	; 0x34
 8004dce:	4461      	add	r1, ip
 8004dd0:	000b      	movs	r3, r1
 8004dd2:	9a4a      	ldr	r2, [sp, #296]	; 0x128
 8004dd4:	4664      	mov	r4, ip
 8004dd6:	6002      	str	r2, [r0, #0]
 8004dd8:	6043      	str	r3, [r0, #4]
 8004dda:	4653      	mov	r3, sl
 8004ddc:	68d9      	ldr	r1, [r3, #12]
 8004dde:	689a      	ldr	r2, [r3, #8]
 8004de0:	4465      	add	r5, ip
 8004de2:	190b      	adds	r3, r1, r4
 8004de4:	6082      	str	r2, [r0, #8]
 8004de6:	60c3      	str	r3, [r0, #12]
 8004de8:	6107      	str	r7, [r0, #16]
 8004dea:	6145      	str	r5, [r0, #20]
 8004dec:	e6da      	b.n	8004ba4 <__kernel_rem_pio2+0x618>
 8004dee:	2380      	movs	r3, #128	; 0x80
 8004df0:	984a      	ldr	r0, [sp, #296]	; 0x128
 8004df2:	994b      	ldr	r1, [sp, #300]	; 0x12c
 8004df4:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 8004df6:	061b      	lsls	r3, r3, #24
 8004df8:	18e3      	adds	r3, r4, r3
 8004dfa:	6053      	str	r3, [r2, #4]
 8004dfc:	6015      	str	r5, [r2, #0]
 8004dfe:	0023      	movs	r3, r4
 8004e00:	002a      	movs	r2, r5
 8004e02:	f7fc f879 	bl	8000ef8 <__aeabi_dsub>
 8004e06:	9b03      	ldr	r3, [sp, #12]
 8004e08:	0007      	movs	r7, r0
 8004e0a:	000e      	movs	r6, r1
 8004e0c:	2b00      	cmp	r3, #0
 8004e0e:	dcb3      	bgt.n	8004d78 <__kernel_rem_pio2+0x7ec>
 8004e10:	e7c2      	b.n	8004d98 <__kernel_rem_pio2+0x80c>
 8004e12:	ab72      	add	r3, sp, #456	; 0x1c8
 8004e14:	9300      	str	r3, [sp, #0]
 8004e16:	e435      	b.n	8004684 <__kernel_rem_pio2+0xf8>
 8004e18:	9ba4      	ldr	r3, [sp, #656]	; 0x290
 8004e1a:	2b02      	cmp	r3, #2
 8004e1c:	dc06      	bgt.n	8004e2c <__kernel_rem_pio2+0x8a0>
 8004e1e:	2b00      	cmp	r3, #0
 8004e20:	dc0d      	bgt.n	8004e3e <__kernel_rem_pio2+0x8b2>
 8004e22:	d000      	beq.n	8004e26 <__kernel_rem_pio2+0x89a>
 8004e24:	e6be      	b.n	8004ba4 <__kernel_rem_pio2+0x618>
 8004e26:	2500      	movs	r5, #0
 8004e28:	2400      	movs	r4, #0
 8004e2a:	e6af      	b.n	8004b8c <__kernel_rem_pio2+0x600>
 8004e2c:	9ba4      	ldr	r3, [sp, #656]	; 0x290
 8004e2e:	2b03      	cmp	r3, #3
 8004e30:	d000      	beq.n	8004e34 <__kernel_rem_pio2+0x8a8>
 8004e32:	e6b7      	b.n	8004ba4 <__kernel_rem_pio2+0x618>
 8004e34:	ab4a      	add	r3, sp, #296	; 0x128
 8004e36:	2700      	movs	r7, #0
 8004e38:	2500      	movs	r5, #0
 8004e3a:	469a      	mov	sl, r3
 8004e3c:	e742      	b.n	8004cc4 <__kernel_rem_pio2+0x738>
 8004e3e:	2500      	movs	r5, #0
 8004e40:	2400      	movs	r4, #0
 8004e42:	e788      	b.n	8004d56 <__kernel_rem_pio2+0x7ca>
 8004e44:	2700      	movs	r7, #0
 8004e46:	003d      	movs	r5, r7
 8004e48:	e73c      	b.n	8004cc4 <__kernel_rem_pio2+0x738>
 8004e4a:	46c0      	nop			; (mov r8, r8)
 8004e4c:	1fffffff 	.word	0x1fffffff
 8004e50:	3ff00000 	.word	0x3ff00000

08004e54 <__kernel_sin>:
 8004e54:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004e56:	46ce      	mov	lr, r9
 8004e58:	4647      	mov	r7, r8
 8004e5a:	b580      	push	{r7, lr}
 8004e5c:	b087      	sub	sp, #28
 8004e5e:	9200      	str	r2, [sp, #0]
 8004e60:	9301      	str	r3, [sp, #4]
 8004e62:	22f9      	movs	r2, #249	; 0xf9
 8004e64:	004b      	lsls	r3, r1, #1
 8004e66:	4681      	mov	r9, r0
 8004e68:	4688      	mov	r8, r1
 8004e6a:	085b      	lsrs	r3, r3, #1
 8004e6c:	0592      	lsls	r2, r2, #22
 8004e6e:	4293      	cmp	r3, r2
 8004e70:	da07      	bge.n	8004e82 <__kernel_sin+0x2e>
 8004e72:	4648      	mov	r0, r9
 8004e74:	4641      	mov	r1, r8
 8004e76:	f7fc fbd1 	bl	800161c <__aeabi_d2iz>
 8004e7a:	464a      	mov	r2, r9
 8004e7c:	4643      	mov	r3, r8
 8004e7e:	2800      	cmp	r0, #0
 8004e80:	d04a      	beq.n	8004f18 <__kernel_sin+0xc4>
 8004e82:	464a      	mov	r2, r9
 8004e84:	4643      	mov	r3, r8
 8004e86:	4648      	mov	r0, r9
 8004e88:	4641      	mov	r1, r8
 8004e8a:	f7fb fdc7 	bl	8000a1c <__aeabi_dmul>
 8004e8e:	0004      	movs	r4, r0
 8004e90:	000d      	movs	r5, r1
 8004e92:	0002      	movs	r2, r0
 8004e94:	000b      	movs	r3, r1
 8004e96:	4648      	mov	r0, r9
 8004e98:	4641      	mov	r1, r8
 8004e9a:	f7fb fdbf 	bl	8000a1c <__aeabi_dmul>
 8004e9e:	4a3b      	ldr	r2, [pc, #236]	; (8004f8c <__kernel_sin+0x138>)
 8004ea0:	4b3b      	ldr	r3, [pc, #236]	; (8004f90 <__kernel_sin+0x13c>)
 8004ea2:	0006      	movs	r6, r0
 8004ea4:	000f      	movs	r7, r1
 8004ea6:	0020      	movs	r0, r4
 8004ea8:	0029      	movs	r1, r5
 8004eaa:	f7fb fdb7 	bl	8000a1c <__aeabi_dmul>
 8004eae:	4a39      	ldr	r2, [pc, #228]	; (8004f94 <__kernel_sin+0x140>)
 8004eb0:	4b39      	ldr	r3, [pc, #228]	; (8004f98 <__kernel_sin+0x144>)
 8004eb2:	f7fc f821 	bl	8000ef8 <__aeabi_dsub>
 8004eb6:	0022      	movs	r2, r4
 8004eb8:	002b      	movs	r3, r5
 8004eba:	f7fb fdaf 	bl	8000a1c <__aeabi_dmul>
 8004ebe:	4a37      	ldr	r2, [pc, #220]	; (8004f9c <__kernel_sin+0x148>)
 8004ec0:	4b37      	ldr	r3, [pc, #220]	; (8004fa0 <__kernel_sin+0x14c>)
 8004ec2:	f7fc fd9f 	bl	8001a04 <__aeabi_dadd>
 8004ec6:	0022      	movs	r2, r4
 8004ec8:	002b      	movs	r3, r5
 8004eca:	f7fb fda7 	bl	8000a1c <__aeabi_dmul>
 8004ece:	4a35      	ldr	r2, [pc, #212]	; (8004fa4 <__kernel_sin+0x150>)
 8004ed0:	4b35      	ldr	r3, [pc, #212]	; (8004fa8 <__kernel_sin+0x154>)
 8004ed2:	f7fc f811 	bl	8000ef8 <__aeabi_dsub>
 8004ed6:	0022      	movs	r2, r4
 8004ed8:	002b      	movs	r3, r5
 8004eda:	f7fb fd9f 	bl	8000a1c <__aeabi_dmul>
 8004ede:	4b33      	ldr	r3, [pc, #204]	; (8004fac <__kernel_sin+0x158>)
 8004ee0:	4a33      	ldr	r2, [pc, #204]	; (8004fb0 <__kernel_sin+0x15c>)
 8004ee2:	f7fc fd8f 	bl	8001a04 <__aeabi_dadd>
 8004ee6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004ee8:	9002      	str	r0, [sp, #8]
 8004eea:	9103      	str	r1, [sp, #12]
 8004eec:	2b00      	cmp	r3, #0
 8004eee:	d11a      	bne.n	8004f26 <__kernel_sin+0xd2>
 8004ef0:	0002      	movs	r2, r0
 8004ef2:	000b      	movs	r3, r1
 8004ef4:	0020      	movs	r0, r4
 8004ef6:	0029      	movs	r1, r5
 8004ef8:	f7fb fd90 	bl	8000a1c <__aeabi_dmul>
 8004efc:	4a2d      	ldr	r2, [pc, #180]	; (8004fb4 <__kernel_sin+0x160>)
 8004efe:	4b2e      	ldr	r3, [pc, #184]	; (8004fb8 <__kernel_sin+0x164>)
 8004f00:	f7fb fffa 	bl	8000ef8 <__aeabi_dsub>
 8004f04:	0032      	movs	r2, r6
 8004f06:	003b      	movs	r3, r7
 8004f08:	f7fb fd88 	bl	8000a1c <__aeabi_dmul>
 8004f0c:	464a      	mov	r2, r9
 8004f0e:	4643      	mov	r3, r8
 8004f10:	f7fc fd78 	bl	8001a04 <__aeabi_dadd>
 8004f14:	0002      	movs	r2, r0
 8004f16:	000b      	movs	r3, r1
 8004f18:	0010      	movs	r0, r2
 8004f1a:	0019      	movs	r1, r3
 8004f1c:	b007      	add	sp, #28
 8004f1e:	bcc0      	pop	{r6, r7}
 8004f20:	46b9      	mov	r9, r7
 8004f22:	46b0      	mov	r8, r6
 8004f24:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8004f26:	2200      	movs	r2, #0
 8004f28:	9800      	ldr	r0, [sp, #0]
 8004f2a:	9901      	ldr	r1, [sp, #4]
 8004f2c:	4b23      	ldr	r3, [pc, #140]	; (8004fbc <__kernel_sin+0x168>)
 8004f2e:	f7fb fd75 	bl	8000a1c <__aeabi_dmul>
 8004f32:	9a02      	ldr	r2, [sp, #8]
 8004f34:	9b03      	ldr	r3, [sp, #12]
 8004f36:	9004      	str	r0, [sp, #16]
 8004f38:	9105      	str	r1, [sp, #20]
 8004f3a:	0030      	movs	r0, r6
 8004f3c:	0039      	movs	r1, r7
 8004f3e:	f7fb fd6d 	bl	8000a1c <__aeabi_dmul>
 8004f42:	0002      	movs	r2, r0
 8004f44:	000b      	movs	r3, r1
 8004f46:	9804      	ldr	r0, [sp, #16]
 8004f48:	9905      	ldr	r1, [sp, #20]
 8004f4a:	f7fb ffd5 	bl	8000ef8 <__aeabi_dsub>
 8004f4e:	0022      	movs	r2, r4
 8004f50:	002b      	movs	r3, r5
 8004f52:	f7fb fd63 	bl	8000a1c <__aeabi_dmul>
 8004f56:	9a00      	ldr	r2, [sp, #0]
 8004f58:	9b01      	ldr	r3, [sp, #4]
 8004f5a:	f7fb ffcd 	bl	8000ef8 <__aeabi_dsub>
 8004f5e:	4a15      	ldr	r2, [pc, #84]	; (8004fb4 <__kernel_sin+0x160>)
 8004f60:	0004      	movs	r4, r0
 8004f62:	000d      	movs	r5, r1
 8004f64:	4b14      	ldr	r3, [pc, #80]	; (8004fb8 <__kernel_sin+0x164>)
 8004f66:	0030      	movs	r0, r6
 8004f68:	0039      	movs	r1, r7
 8004f6a:	f7fb fd57 	bl	8000a1c <__aeabi_dmul>
 8004f6e:	0002      	movs	r2, r0
 8004f70:	000b      	movs	r3, r1
 8004f72:	0020      	movs	r0, r4
 8004f74:	0029      	movs	r1, r5
 8004f76:	f7fc fd45 	bl	8001a04 <__aeabi_dadd>
 8004f7a:	0002      	movs	r2, r0
 8004f7c:	000b      	movs	r3, r1
 8004f7e:	4648      	mov	r0, r9
 8004f80:	4641      	mov	r1, r8
 8004f82:	f7fb ffb9 	bl	8000ef8 <__aeabi_dsub>
 8004f86:	0002      	movs	r2, r0
 8004f88:	000b      	movs	r3, r1
 8004f8a:	e7c5      	b.n	8004f18 <__kernel_sin+0xc4>
 8004f8c:	5acfd57c 	.word	0x5acfd57c
 8004f90:	3de5d93a 	.word	0x3de5d93a
 8004f94:	8a2b9ceb 	.word	0x8a2b9ceb
 8004f98:	3e5ae5e6 	.word	0x3e5ae5e6
 8004f9c:	57b1fe7d 	.word	0x57b1fe7d
 8004fa0:	3ec71de3 	.word	0x3ec71de3
 8004fa4:	19c161d5 	.word	0x19c161d5
 8004fa8:	3f2a01a0 	.word	0x3f2a01a0
 8004fac:	3f811111 	.word	0x3f811111
 8004fb0:	1110f8a6 	.word	0x1110f8a6
 8004fb4:	55555549 	.word	0x55555549
 8004fb8:	3fc55555 	.word	0x3fc55555
 8004fbc:	3fe00000 	.word	0x3fe00000

08004fc0 <fabs>:
 8004fc0:	004b      	lsls	r3, r1, #1
 8004fc2:	0859      	lsrs	r1, r3, #1
 8004fc4:	4770      	bx	lr
 8004fc6:	46c0      	nop			; (mov r8, r8)

08004fc8 <floor>:
 8004fc8:	4a47      	ldr	r2, [pc, #284]	; (80050e8 <floor+0x120>)
 8004fca:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004fcc:	4646      	mov	r6, r8
 8004fce:	4690      	mov	r8, r2
 8004fd0:	004b      	lsls	r3, r1, #1
 8004fd2:	0d5b      	lsrs	r3, r3, #21
 8004fd4:	4498      	add	r8, r3
 8004fd6:	464f      	mov	r7, r9
 8004fd8:	46d6      	mov	lr, sl
 8004fda:	4642      	mov	r2, r8
 8004fdc:	b5c0      	push	{r6, r7, lr}
 8004fde:	0005      	movs	r5, r0
 8004fe0:	000c      	movs	r4, r1
 8004fe2:	000e      	movs	r6, r1
 8004fe4:	0007      	movs	r7, r0
 8004fe6:	2a13      	cmp	r2, #19
 8004fe8:	dc39      	bgt.n	800505e <floor+0x96>
 8004fea:	2a00      	cmp	r2, #0
 8004fec:	db26      	blt.n	800503c <floor+0x74>
 8004fee:	4b3f      	ldr	r3, [pc, #252]	; (80050ec <floor+0x124>)
 8004ff0:	4684      	mov	ip, r0
 8004ff2:	4113      	asrs	r3, r2
 8004ff4:	4699      	mov	r9, r3
 8004ff6:	400b      	ands	r3, r1
 8004ff8:	468a      	mov	sl, r1
 8004ffa:	4303      	orrs	r3, r0
 8004ffc:	d017      	beq.n	800502e <floor+0x66>
 8004ffe:	4a3c      	ldr	r2, [pc, #240]	; (80050f0 <floor+0x128>)
 8005000:	4b3c      	ldr	r3, [pc, #240]	; (80050f4 <floor+0x12c>)
 8005002:	0028      	movs	r0, r5
 8005004:	0021      	movs	r1, r4
 8005006:	f7fc fcfd 	bl	8001a04 <__aeabi_dadd>
 800500a:	2200      	movs	r2, #0
 800500c:	2300      	movs	r3, #0
 800500e:	f7fc fbbb 	bl	8001788 <__aeabi_dcmpgt>
 8005012:	2800      	cmp	r0, #0
 8005014:	d009      	beq.n	800502a <floor+0x62>
 8005016:	2c00      	cmp	r4, #0
 8005018:	da04      	bge.n	8005024 <floor+0x5c>
 800501a:	2680      	movs	r6, #128	; 0x80
 800501c:	4643      	mov	r3, r8
 800501e:	0376      	lsls	r6, r6, #13
 8005020:	411e      	asrs	r6, r3
 8005022:	1936      	adds	r6, r6, r4
 8005024:	464b      	mov	r3, r9
 8005026:	2700      	movs	r7, #0
 8005028:	439e      	bics	r6, r3
 800502a:	46bc      	mov	ip, r7
 800502c:	46b2      	mov	sl, r6
 800502e:	4651      	mov	r1, sl
 8005030:	4660      	mov	r0, ip
 8005032:	bce0      	pop	{r5, r6, r7}
 8005034:	46ba      	mov	sl, r7
 8005036:	46b1      	mov	r9, r6
 8005038:	46a8      	mov	r8, r5
 800503a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800503c:	4a2c      	ldr	r2, [pc, #176]	; (80050f0 <floor+0x128>)
 800503e:	4b2d      	ldr	r3, [pc, #180]	; (80050f4 <floor+0x12c>)
 8005040:	0028      	movs	r0, r5
 8005042:	0021      	movs	r1, r4
 8005044:	f7fc fcde 	bl	8001a04 <__aeabi_dadd>
 8005048:	2200      	movs	r2, #0
 800504a:	2300      	movs	r3, #0
 800504c:	f7fc fb9c 	bl	8001788 <__aeabi_dcmpgt>
 8005050:	2800      	cmp	r0, #0
 8005052:	d0ea      	beq.n	800502a <floor+0x62>
 8005054:	2c00      	cmp	r4, #0
 8005056:	db2f      	blt.n	80050b8 <floor+0xf0>
 8005058:	2700      	movs	r7, #0
 800505a:	2600      	movs	r6, #0
 800505c:	e7e5      	b.n	800502a <floor+0x62>
 800505e:	2a33      	cmp	r2, #51	; 0x33
 8005060:	dd0e      	ble.n	8005080 <floor+0xb8>
 8005062:	2380      	movs	r3, #128	; 0x80
 8005064:	4684      	mov	ip, r0
 8005066:	468a      	mov	sl, r1
 8005068:	00db      	lsls	r3, r3, #3
 800506a:	4598      	cmp	r8, r3
 800506c:	d1df      	bne.n	800502e <floor+0x66>
 800506e:	0002      	movs	r2, r0
 8005070:	000b      	movs	r3, r1
 8005072:	0028      	movs	r0, r5
 8005074:	0021      	movs	r1, r4
 8005076:	f7fc fcc5 	bl	8001a04 <__aeabi_dadd>
 800507a:	4684      	mov	ip, r0
 800507c:	468a      	mov	sl, r1
 800507e:	e7d6      	b.n	800502e <floor+0x66>
 8005080:	4a1d      	ldr	r2, [pc, #116]	; (80050f8 <floor+0x130>)
 8005082:	468a      	mov	sl, r1
 8005084:	4694      	mov	ip, r2
 8005086:	2201      	movs	r2, #1
 8005088:	4463      	add	r3, ip
 800508a:	4252      	negs	r2, r2
 800508c:	40da      	lsrs	r2, r3
 800508e:	4684      	mov	ip, r0
 8005090:	4691      	mov	r9, r2
 8005092:	4202      	tst	r2, r0
 8005094:	d0cb      	beq.n	800502e <floor+0x66>
 8005096:	4a16      	ldr	r2, [pc, #88]	; (80050f0 <floor+0x128>)
 8005098:	4b16      	ldr	r3, [pc, #88]	; (80050f4 <floor+0x12c>)
 800509a:	0028      	movs	r0, r5
 800509c:	0021      	movs	r1, r4
 800509e:	f7fc fcb1 	bl	8001a04 <__aeabi_dadd>
 80050a2:	2200      	movs	r2, #0
 80050a4:	2300      	movs	r3, #0
 80050a6:	f7fc fb6f 	bl	8001788 <__aeabi_dcmpgt>
 80050aa:	2800      	cmp	r0, #0
 80050ac:	d0bd      	beq.n	800502a <floor+0x62>
 80050ae:	2c00      	cmp	r4, #0
 80050b0:	db09      	blt.n	80050c6 <floor+0xfe>
 80050b2:	464b      	mov	r3, r9
 80050b4:	439f      	bics	r7, r3
 80050b6:	e7b8      	b.n	800502a <floor+0x62>
 80050b8:	0064      	lsls	r4, r4, #1
 80050ba:	0864      	lsrs	r4, r4, #1
 80050bc:	2700      	movs	r7, #0
 80050be:	4325      	orrs	r5, r4
 80050c0:	d0b3      	beq.n	800502a <floor+0x62>
 80050c2:	4e0e      	ldr	r6, [pc, #56]	; (80050fc <floor+0x134>)
 80050c4:	e7b1      	b.n	800502a <floor+0x62>
 80050c6:	4643      	mov	r3, r8
 80050c8:	2b14      	cmp	r3, #20
 80050ca:	d009      	beq.n	80050e0 <floor+0x118>
 80050cc:	2234      	movs	r2, #52	; 0x34
 80050ce:	1ad2      	subs	r2, r2, r3
 80050d0:	2301      	movs	r3, #1
 80050d2:	4093      	lsls	r3, r2
 80050d4:	195d      	adds	r5, r3, r5
 80050d6:	42bd      	cmp	r5, r7
 80050d8:	d204      	bcs.n	80050e4 <floor+0x11c>
 80050da:	002f      	movs	r7, r5
 80050dc:	1c66      	adds	r6, r4, #1
 80050de:	e7e8      	b.n	80050b2 <floor+0xea>
 80050e0:	1c66      	adds	r6, r4, #1
 80050e2:	e7e6      	b.n	80050b2 <floor+0xea>
 80050e4:	002f      	movs	r7, r5
 80050e6:	e7e4      	b.n	80050b2 <floor+0xea>
 80050e8:	fffffc01 	.word	0xfffffc01
 80050ec:	000fffff 	.word	0x000fffff
 80050f0:	8800759c 	.word	0x8800759c
 80050f4:	7e37e43c 	.word	0x7e37e43c
 80050f8:	fffffbed 	.word	0xfffffbed
 80050fc:	bff00000 	.word	0xbff00000

08005100 <scalbn>:
 8005100:	004b      	lsls	r3, r1, #1
 8005102:	b570      	push	{r4, r5, r6, lr}
 8005104:	0d5b      	lsrs	r3, r3, #21
 8005106:	0014      	movs	r4, r2
 8005108:	000a      	movs	r2, r1
 800510a:	2b00      	cmp	r3, #0
 800510c:	d125      	bne.n	800515a <scalbn+0x5a>
 800510e:	004b      	lsls	r3, r1, #1
 8005110:	085b      	lsrs	r3, r3, #1
 8005112:	4303      	orrs	r3, r0
 8005114:	d020      	beq.n	8005158 <scalbn+0x58>
 8005116:	4b2b      	ldr	r3, [pc, #172]	; (80051c4 <scalbn+0xc4>)
 8005118:	2200      	movs	r2, #0
 800511a:	f7fb fc7f 	bl	8000a1c <__aeabi_dmul>
 800511e:	4b2a      	ldr	r3, [pc, #168]	; (80051c8 <scalbn+0xc8>)
 8005120:	429c      	cmp	r4, r3
 8005122:	db47      	blt.n	80051b4 <scalbn+0xb4>
 8005124:	000a      	movs	r2, r1
 8005126:	004b      	lsls	r3, r1, #1
 8005128:	0d5b      	lsrs	r3, r3, #21
 800512a:	3b36      	subs	r3, #54	; 0x36
 800512c:	4d27      	ldr	r5, [pc, #156]	; (80051cc <scalbn+0xcc>)
 800512e:	18e3      	adds	r3, r4, r3
 8005130:	42ab      	cmp	r3, r5
 8005132:	dc1a      	bgt.n	800516a <scalbn+0x6a>
 8005134:	2b00      	cmp	r3, #0
 8005136:	dc37      	bgt.n	80051a8 <scalbn+0xa8>
 8005138:	001d      	movs	r5, r3
 800513a:	3535      	adds	r5, #53	; 0x35
 800513c:	da29      	bge.n	8005192 <scalbn+0x92>
 800513e:	4b24      	ldr	r3, [pc, #144]	; (80051d0 <scalbn+0xd0>)
 8005140:	429c      	cmp	r4, r3
 8005142:	dc12      	bgt.n	800516a <scalbn+0x6a>
 8005144:	4c23      	ldr	r4, [pc, #140]	; (80051d4 <scalbn+0xd4>)
 8005146:	4d24      	ldr	r5, [pc, #144]	; (80051d8 <scalbn+0xd8>)
 8005148:	2900      	cmp	r1, #0
 800514a:	db38      	blt.n	80051be <scalbn+0xbe>
 800514c:	0020      	movs	r0, r4
 800514e:	0029      	movs	r1, r5
 8005150:	4a20      	ldr	r2, [pc, #128]	; (80051d4 <scalbn+0xd4>)
 8005152:	4b21      	ldr	r3, [pc, #132]	; (80051d8 <scalbn+0xd8>)
 8005154:	f7fb fc62 	bl	8000a1c <__aeabi_dmul>
 8005158:	bd70      	pop	{r4, r5, r6, pc}
 800515a:	4d20      	ldr	r5, [pc, #128]	; (80051dc <scalbn+0xdc>)
 800515c:	42ab      	cmp	r3, r5
 800515e:	d1e5      	bne.n	800512c <scalbn+0x2c>
 8005160:	0002      	movs	r2, r0
 8005162:	000b      	movs	r3, r1
 8005164:	f7fc fc4e 	bl	8001a04 <__aeabi_dadd>
 8005168:	e7f6      	b.n	8005158 <scalbn+0x58>
 800516a:	4c1d      	ldr	r4, [pc, #116]	; (80051e0 <scalbn+0xe0>)
 800516c:	4d1d      	ldr	r5, [pc, #116]	; (80051e4 <scalbn+0xe4>)
 800516e:	2900      	cmp	r1, #0
 8005170:	db06      	blt.n	8005180 <scalbn+0x80>
 8005172:	0020      	movs	r0, r4
 8005174:	0029      	movs	r1, r5
 8005176:	4a1a      	ldr	r2, [pc, #104]	; (80051e0 <scalbn+0xe0>)
 8005178:	4b1a      	ldr	r3, [pc, #104]	; (80051e4 <scalbn+0xe4>)
 800517a:	f7fb fc4f 	bl	8000a1c <__aeabi_dmul>
 800517e:	e7eb      	b.n	8005158 <scalbn+0x58>
 8005180:	4c17      	ldr	r4, [pc, #92]	; (80051e0 <scalbn+0xe0>)
 8005182:	4d19      	ldr	r5, [pc, #100]	; (80051e8 <scalbn+0xe8>)
 8005184:	0020      	movs	r0, r4
 8005186:	0029      	movs	r1, r5
 8005188:	4a15      	ldr	r2, [pc, #84]	; (80051e0 <scalbn+0xe0>)
 800518a:	4b16      	ldr	r3, [pc, #88]	; (80051e4 <scalbn+0xe4>)
 800518c:	f7fb fc46 	bl	8000a1c <__aeabi_dmul>
 8005190:	e7e2      	b.n	8005158 <scalbn+0x58>
 8005192:	4c16      	ldr	r4, [pc, #88]	; (80051ec <scalbn+0xec>)
 8005194:	3336      	adds	r3, #54	; 0x36
 8005196:	4022      	ands	r2, r4
 8005198:	051b      	lsls	r3, r3, #20
 800519a:	4313      	orrs	r3, r2
 800519c:	0019      	movs	r1, r3
 800519e:	2200      	movs	r2, #0
 80051a0:	4b13      	ldr	r3, [pc, #76]	; (80051f0 <scalbn+0xf0>)
 80051a2:	f7fb fc3b 	bl	8000a1c <__aeabi_dmul>
 80051a6:	e7d7      	b.n	8005158 <scalbn+0x58>
 80051a8:	4c10      	ldr	r4, [pc, #64]	; (80051ec <scalbn+0xec>)
 80051aa:	051b      	lsls	r3, r3, #20
 80051ac:	4022      	ands	r2, r4
 80051ae:	431a      	orrs	r2, r3
 80051b0:	0011      	movs	r1, r2
 80051b2:	e7d1      	b.n	8005158 <scalbn+0x58>
 80051b4:	4a07      	ldr	r2, [pc, #28]	; (80051d4 <scalbn+0xd4>)
 80051b6:	4b08      	ldr	r3, [pc, #32]	; (80051d8 <scalbn+0xd8>)
 80051b8:	f7fb fc30 	bl	8000a1c <__aeabi_dmul>
 80051bc:	e7cc      	b.n	8005158 <scalbn+0x58>
 80051be:	4c05      	ldr	r4, [pc, #20]	; (80051d4 <scalbn+0xd4>)
 80051c0:	4d0c      	ldr	r5, [pc, #48]	; (80051f4 <scalbn+0xf4>)
 80051c2:	e7c3      	b.n	800514c <scalbn+0x4c>
 80051c4:	43500000 	.word	0x43500000
 80051c8:	ffff3cb0 	.word	0xffff3cb0
 80051cc:	000007fe 	.word	0x000007fe
 80051d0:	0000c350 	.word	0x0000c350
 80051d4:	c2f8f359 	.word	0xc2f8f359
 80051d8:	01a56e1f 	.word	0x01a56e1f
 80051dc:	000007ff 	.word	0x000007ff
 80051e0:	8800759c 	.word	0x8800759c
 80051e4:	7e37e43c 	.word	0x7e37e43c
 80051e8:	fe37e43c 	.word	0xfe37e43c
 80051ec:	800fffff 	.word	0x800fffff
 80051f0:	3c900000 	.word	0x3c900000
 80051f4:	81a56e1f 	.word	0x81a56e1f

080051f8 <_init>:
 80051f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80051fa:	46c0      	nop			; (mov r8, r8)
 80051fc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80051fe:	bc08      	pop	{r3}
 8005200:	469e      	mov	lr, r3
 8005202:	4770      	bx	lr

08005204 <_fini>:
 8005204:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005206:	46c0      	nop			; (mov r8, r8)
 8005208:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800520a:	bc08      	pop	{r3}
 800520c:	469e      	mov	lr, r3
 800520e:	4770      	bx	lr
