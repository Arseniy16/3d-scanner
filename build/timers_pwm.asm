
build/timers_pwm.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00004d84  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000290  08004e48  08004e48  00014e48  2**3  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  080050d8  080050d8  000150d8  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  080050e0  080050e0  000150e0  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  080050e4  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              0000003c  20000438  08005518  00020438  2**3  ALLOC
  7 ._user_heap_stack 00000604  20000474  08005518  00020474  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00001e1d  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     00000475  00000000  00000000  00022279  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        0000104e  00000000  00000000  000226ee  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    000002c0  00000000  00000000  0002373c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     00000290  00000000  00000000  000239fc  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       00001166  00000000  00000000  00023c8c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        00000ddc  00000000  00000000  00024df2  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          0000004d  00000000  00000000  00025bce  2**0  CONTENTS, READONLY
 17 .debug_frame      00000dd4  00000000  00000000  00025c1c  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000e4:	08004e2c 	.word	0x08004e2c

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
 8000104:	08004e2c 	.word	0x08004e2c

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
 80007b0:	08004e5c 	.word	0x08004e5c
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
 8000db4:	08004e9c 	.word	0x08004e9c
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
 80020a6:	f001 fbcf 	bl	8003848 <SystemInit>
 80020aa:	f001 fc23 	bl	80038f4 <__libc_init_array>
 80020ae:	f001 fb1b 	bl	80036e8 <main>

080020b2 <LoopForever>:
 80020b2:	e7fe      	b.n	80020b2 <LoopForever>
 80020b4:	20002000 	.word	0x20002000
 80020b8:	20000000 	.word	0x20000000
 80020bc:	20000434 	.word	0x20000434
 80020c0:	080050e4 	.word	0x080050e4
 80020c4:	20000438 	.word	0x20000438
 80020c8:	20000474 	.word	0x20000474

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
 80026c8:	08004edc 	.word	0x08004edc
 80026cc:	08004ee4 	.word	0x08004ee4

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
 8002754:	08004ef4 	.word	0x08004ef4

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

08002770 <LL_TIM_OC_SetCompareCH2>:
 8002770:	b580      	push	{r7, lr}
 8002772:	b082      	sub	sp, #8
 8002774:	af00      	add	r7, sp, #0
 8002776:	6078      	str	r0, [r7, #4]
 8002778:	6039      	str	r1, [r7, #0]
 800277a:	687b      	ldr	r3, [r7, #4]
 800277c:	683a      	ldr	r2, [r7, #0]
 800277e:	639a      	str	r2, [r3, #56]	; 0x38
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
 8002818:	08004edc 	.word	0x08004edc
 800281c:	08004eec 	.word	0x08004eec

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
 80028b0:	08004edc 	.word	0x08004edc
 80028b4:	08004eec 	.word	0x08004eec

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
 800293c:	08004ef4 	.word	0x08004ef4

08002940 <LL_TIM_ClearFlag_CC2>:
 8002940:	b580      	push	{r7, lr}
 8002942:	b082      	sub	sp, #8
 8002944:	af00      	add	r7, sp, #0
 8002946:	6078      	str	r0, [r7, #4]
 8002948:	687b      	ldr	r3, [r7, #4]
 800294a:	2205      	movs	r2, #5
 800294c:	4252      	negs	r2, r2
 800294e:	611a      	str	r2, [r3, #16]
 8002950:	46c0      	nop			; (mov r8, r8)
 8002952:	46bd      	mov	sp, r7
 8002954:	b002      	add	sp, #8
 8002956:	bd80      	pop	{r7, pc}

08002958 <LL_TIM_EnableIT_CC1>:
 8002958:	b580      	push	{r7, lr}
 800295a:	b082      	sub	sp, #8
 800295c:	af00      	add	r7, sp, #0
 800295e:	6078      	str	r0, [r7, #4]
 8002960:	687b      	ldr	r3, [r7, #4]
 8002962:	68db      	ldr	r3, [r3, #12]
 8002964:	2202      	movs	r2, #2
 8002966:	431a      	orrs	r2, r3
 8002968:	687b      	ldr	r3, [r7, #4]
 800296a:	60da      	str	r2, [r3, #12]
 800296c:	46c0      	nop			; (mov r8, r8)
 800296e:	46bd      	mov	sp, r7
 8002970:	b002      	add	sp, #8
 8002972:	bd80      	pop	{r7, pc}

08002974 <LL_TIM_EnableIT_CC2>:
 8002974:	b580      	push	{r7, lr}
 8002976:	b082      	sub	sp, #8
 8002978:	af00      	add	r7, sp, #0
 800297a:	6078      	str	r0, [r7, #4]
 800297c:	687b      	ldr	r3, [r7, #4]
 800297e:	68db      	ldr	r3, [r3, #12]
 8002980:	2204      	movs	r2, #4
 8002982:	431a      	orrs	r2, r3
 8002984:	687b      	ldr	r3, [r7, #4]
 8002986:	60da      	str	r2, [r3, #12]
 8002988:	46c0      	nop			; (mov r8, r8)
 800298a:	46bd      	mov	sp, r7
 800298c:	b002      	add	sp, #8
 800298e:	bd80      	pop	{r7, pc}

08002990 <LL_USART_Enable>:
 8002990:	b580      	push	{r7, lr}
 8002992:	b082      	sub	sp, #8
 8002994:	af00      	add	r7, sp, #0
 8002996:	6078      	str	r0, [r7, #4]
 8002998:	687b      	ldr	r3, [r7, #4]
 800299a:	681b      	ldr	r3, [r3, #0]
 800299c:	2201      	movs	r2, #1
 800299e:	431a      	orrs	r2, r3
 80029a0:	687b      	ldr	r3, [r7, #4]
 80029a2:	601a      	str	r2, [r3, #0]
 80029a4:	46c0      	nop			; (mov r8, r8)
 80029a6:	46bd      	mov	sp, r7
 80029a8:	b002      	add	sp, #8
 80029aa:	bd80      	pop	{r7, pc}

080029ac <LL_USART_SetTransferDirection>:
 80029ac:	b580      	push	{r7, lr}
 80029ae:	b082      	sub	sp, #8
 80029b0:	af00      	add	r7, sp, #0
 80029b2:	6078      	str	r0, [r7, #4]
 80029b4:	6039      	str	r1, [r7, #0]
 80029b6:	687b      	ldr	r3, [r7, #4]
 80029b8:	681b      	ldr	r3, [r3, #0]
 80029ba:	220c      	movs	r2, #12
 80029bc:	4393      	bics	r3, r2
 80029be:	001a      	movs	r2, r3
 80029c0:	683b      	ldr	r3, [r7, #0]
 80029c2:	431a      	orrs	r2, r3
 80029c4:	687b      	ldr	r3, [r7, #4]
 80029c6:	601a      	str	r2, [r3, #0]
 80029c8:	46c0      	nop			; (mov r8, r8)
 80029ca:	46bd      	mov	sp, r7
 80029cc:	b002      	add	sp, #8
 80029ce:	bd80      	pop	{r7, pc}

080029d0 <LL_USART_SetParity>:
 80029d0:	b580      	push	{r7, lr}
 80029d2:	b082      	sub	sp, #8
 80029d4:	af00      	add	r7, sp, #0
 80029d6:	6078      	str	r0, [r7, #4]
 80029d8:	6039      	str	r1, [r7, #0]
 80029da:	687b      	ldr	r3, [r7, #4]
 80029dc:	681b      	ldr	r3, [r3, #0]
 80029de:	4a05      	ldr	r2, [pc, #20]	; (80029f4 <LL_USART_SetParity+0x24>)
 80029e0:	401a      	ands	r2, r3
 80029e2:	683b      	ldr	r3, [r7, #0]
 80029e4:	431a      	orrs	r2, r3
 80029e6:	687b      	ldr	r3, [r7, #4]
 80029e8:	601a      	str	r2, [r3, #0]
 80029ea:	46c0      	nop			; (mov r8, r8)
 80029ec:	46bd      	mov	sp, r7
 80029ee:	b002      	add	sp, #8
 80029f0:	bd80      	pop	{r7, pc}
 80029f2:	46c0      	nop			; (mov r8, r8)
 80029f4:	fffff9ff 	.word	0xfffff9ff

080029f8 <LL_USART_SetDataWidth>:
 80029f8:	b580      	push	{r7, lr}
 80029fa:	b082      	sub	sp, #8
 80029fc:	af00      	add	r7, sp, #0
 80029fe:	6078      	str	r0, [r7, #4]
 8002a00:	6039      	str	r1, [r7, #0]
 8002a02:	687b      	ldr	r3, [r7, #4]
 8002a04:	681b      	ldr	r3, [r3, #0]
 8002a06:	4a05      	ldr	r2, [pc, #20]	; (8002a1c <LL_USART_SetDataWidth+0x24>)
 8002a08:	401a      	ands	r2, r3
 8002a0a:	683b      	ldr	r3, [r7, #0]
 8002a0c:	431a      	orrs	r2, r3
 8002a0e:	687b      	ldr	r3, [r7, #4]
 8002a10:	601a      	str	r2, [r3, #0]
 8002a12:	46c0      	nop			; (mov r8, r8)
 8002a14:	46bd      	mov	sp, r7
 8002a16:	b002      	add	sp, #8
 8002a18:	bd80      	pop	{r7, pc}
 8002a1a:	46c0      	nop			; (mov r8, r8)
 8002a1c:	ffffefff 	.word	0xffffefff

08002a20 <LL_USART_SetStopBitsLength>:
 8002a20:	b580      	push	{r7, lr}
 8002a22:	b082      	sub	sp, #8
 8002a24:	af00      	add	r7, sp, #0
 8002a26:	6078      	str	r0, [r7, #4]
 8002a28:	6039      	str	r1, [r7, #0]
 8002a2a:	687b      	ldr	r3, [r7, #4]
 8002a2c:	685b      	ldr	r3, [r3, #4]
 8002a2e:	4a05      	ldr	r2, [pc, #20]	; (8002a44 <LL_USART_SetStopBitsLength+0x24>)
 8002a30:	401a      	ands	r2, r3
 8002a32:	683b      	ldr	r3, [r7, #0]
 8002a34:	431a      	orrs	r2, r3
 8002a36:	687b      	ldr	r3, [r7, #4]
 8002a38:	605a      	str	r2, [r3, #4]
 8002a3a:	46c0      	nop			; (mov r8, r8)
 8002a3c:	46bd      	mov	sp, r7
 8002a3e:	b002      	add	sp, #8
 8002a40:	bd80      	pop	{r7, pc}
 8002a42:	46c0      	nop			; (mov r8, r8)
 8002a44:	ffffcfff 	.word	0xffffcfff

08002a48 <LL_USART_SetTransferBitOrder>:
 8002a48:	b580      	push	{r7, lr}
 8002a4a:	b082      	sub	sp, #8
 8002a4c:	af00      	add	r7, sp, #0
 8002a4e:	6078      	str	r0, [r7, #4]
 8002a50:	6039      	str	r1, [r7, #0]
 8002a52:	687b      	ldr	r3, [r7, #4]
 8002a54:	685b      	ldr	r3, [r3, #4]
 8002a56:	4a05      	ldr	r2, [pc, #20]	; (8002a6c <LL_USART_SetTransferBitOrder+0x24>)
 8002a58:	401a      	ands	r2, r3
 8002a5a:	683b      	ldr	r3, [r7, #0]
 8002a5c:	431a      	orrs	r2, r3
 8002a5e:	687b      	ldr	r3, [r7, #4]
 8002a60:	605a      	str	r2, [r3, #4]
 8002a62:	46c0      	nop			; (mov r8, r8)
 8002a64:	46bd      	mov	sp, r7
 8002a66:	b002      	add	sp, #8
 8002a68:	bd80      	pop	{r7, pc}
 8002a6a:	46c0      	nop			; (mov r8, r8)
 8002a6c:	fff7ffff 	.word	0xfff7ffff

08002a70 <LL_USART_SetBaudRate>:
 8002a70:	b5b0      	push	{r4, r5, r7, lr}
 8002a72:	b084      	sub	sp, #16
 8002a74:	af00      	add	r7, sp, #0
 8002a76:	60f8      	str	r0, [r7, #12]
 8002a78:	60b9      	str	r1, [r7, #8]
 8002a7a:	607a      	str	r2, [r7, #4]
 8002a7c:	603b      	str	r3, [r7, #0]
 8002a7e:	687a      	ldr	r2, [r7, #4]
 8002a80:	2380      	movs	r3, #128	; 0x80
 8002a82:	021b      	lsls	r3, r3, #8
 8002a84:	429a      	cmp	r2, r3
 8002a86:	d117      	bne.n	8002ab8 <LL_USART_SetBaudRate+0x48>
 8002a88:	68bb      	ldr	r3, [r7, #8]
 8002a8a:	005a      	lsls	r2, r3, #1
 8002a8c:	683b      	ldr	r3, [r7, #0]
 8002a8e:	085b      	lsrs	r3, r3, #1
 8002a90:	18d3      	adds	r3, r2, r3
 8002a92:	6839      	ldr	r1, [r7, #0]
 8002a94:	0018      	movs	r0, r3
 8002a96:	f7fd fb37 	bl	8000108 <__udivsi3>
 8002a9a:	0003      	movs	r3, r0
 8002a9c:	b29b      	uxth	r3, r3
 8002a9e:	001d      	movs	r5, r3
 8002aa0:	4b0e      	ldr	r3, [pc, #56]	; (8002adc <LL_USART_SetBaudRate+0x6c>)
 8002aa2:	402b      	ands	r3, r5
 8002aa4:	001c      	movs	r4, r3
 8002aa6:	086b      	lsrs	r3, r5, #1
 8002aa8:	b29b      	uxth	r3, r3
 8002aaa:	001a      	movs	r2, r3
 8002aac:	2307      	movs	r3, #7
 8002aae:	4013      	ands	r3, r2
 8002ab0:	431c      	orrs	r4, r3
 8002ab2:	68fb      	ldr	r3, [r7, #12]
 8002ab4:	60dc      	str	r4, [r3, #12]
 8002ab6:	e00c      	b.n	8002ad2 <LL_USART_SetBaudRate+0x62>
 8002ab8:	683b      	ldr	r3, [r7, #0]
 8002aba:	085a      	lsrs	r2, r3, #1
 8002abc:	68bb      	ldr	r3, [r7, #8]
 8002abe:	18d3      	adds	r3, r2, r3
 8002ac0:	6839      	ldr	r1, [r7, #0]
 8002ac2:	0018      	movs	r0, r3
 8002ac4:	f7fd fb20 	bl	8000108 <__udivsi3>
 8002ac8:	0003      	movs	r3, r0
 8002aca:	b29b      	uxth	r3, r3
 8002acc:	001a      	movs	r2, r3
 8002ace:	68fb      	ldr	r3, [r7, #12]
 8002ad0:	60da      	str	r2, [r3, #12]
 8002ad2:	46c0      	nop			; (mov r8, r8)
 8002ad4:	46bd      	mov	sp, r7
 8002ad6:	b004      	add	sp, #16
 8002ad8:	bdb0      	pop	{r4, r5, r7, pc}
 8002ada:	46c0      	nop			; (mov r8, r8)
 8002adc:	0000fff0 	.word	0x0000fff0

08002ae0 <LL_USART_IsActiveFlag_TC>:
 8002ae0:	b580      	push	{r7, lr}
 8002ae2:	b082      	sub	sp, #8
 8002ae4:	af00      	add	r7, sp, #0
 8002ae6:	6078      	str	r0, [r7, #4]
 8002ae8:	687b      	ldr	r3, [r7, #4]
 8002aea:	69db      	ldr	r3, [r3, #28]
 8002aec:	2240      	movs	r2, #64	; 0x40
 8002aee:	4013      	ands	r3, r2
 8002af0:	3b40      	subs	r3, #64	; 0x40
 8002af2:	425a      	negs	r2, r3
 8002af4:	4153      	adcs	r3, r2
 8002af6:	b2db      	uxtb	r3, r3
 8002af8:	0018      	movs	r0, r3
 8002afa:	46bd      	mov	sp, r7
 8002afc:	b002      	add	sp, #8
 8002afe:	bd80      	pop	{r7, pc}

08002b00 <LL_USART_IsActiveFlag_TXE>:
 8002b00:	b580      	push	{r7, lr}
 8002b02:	b082      	sub	sp, #8
 8002b04:	af00      	add	r7, sp, #0
 8002b06:	6078      	str	r0, [r7, #4]
 8002b08:	687b      	ldr	r3, [r7, #4]
 8002b0a:	69db      	ldr	r3, [r3, #28]
 8002b0c:	2280      	movs	r2, #128	; 0x80
 8002b0e:	4013      	ands	r3, r2
 8002b10:	3b80      	subs	r3, #128	; 0x80
 8002b12:	425a      	negs	r2, r3
 8002b14:	4153      	adcs	r3, r2
 8002b16:	b2db      	uxtb	r3, r3
 8002b18:	0018      	movs	r0, r3
 8002b1a:	46bd      	mov	sp, r7
 8002b1c:	b002      	add	sp, #8
 8002b1e:	bd80      	pop	{r7, pc}

08002b20 <LL_USART_IsActiveFlag_TEACK>:
 8002b20:	b580      	push	{r7, lr}
 8002b22:	b082      	sub	sp, #8
 8002b24:	af00      	add	r7, sp, #0
 8002b26:	6078      	str	r0, [r7, #4]
 8002b28:	687b      	ldr	r3, [r7, #4]
 8002b2a:	69da      	ldr	r2, [r3, #28]
 8002b2c:	2380      	movs	r3, #128	; 0x80
 8002b2e:	039b      	lsls	r3, r3, #14
 8002b30:	4013      	ands	r3, r2
 8002b32:	4a05      	ldr	r2, [pc, #20]	; (8002b48 <LL_USART_IsActiveFlag_TEACK+0x28>)
 8002b34:	4694      	mov	ip, r2
 8002b36:	4463      	add	r3, ip
 8002b38:	425a      	negs	r2, r3
 8002b3a:	4153      	adcs	r3, r2
 8002b3c:	b2db      	uxtb	r3, r3
 8002b3e:	0018      	movs	r0, r3
 8002b40:	46bd      	mov	sp, r7
 8002b42:	b002      	add	sp, #8
 8002b44:	bd80      	pop	{r7, pc}
 8002b46:	46c0      	nop			; (mov r8, r8)
 8002b48:	ffe00000 	.word	0xffe00000

08002b4c <LL_USART_IsActiveFlag_REACK>:
 8002b4c:	b580      	push	{r7, lr}
 8002b4e:	b082      	sub	sp, #8
 8002b50:	af00      	add	r7, sp, #0
 8002b52:	6078      	str	r0, [r7, #4]
 8002b54:	687b      	ldr	r3, [r7, #4]
 8002b56:	69da      	ldr	r2, [r3, #28]
 8002b58:	2380      	movs	r3, #128	; 0x80
 8002b5a:	03db      	lsls	r3, r3, #15
 8002b5c:	4013      	ands	r3, r2
 8002b5e:	4a05      	ldr	r2, [pc, #20]	; (8002b74 <LL_USART_IsActiveFlag_REACK+0x28>)
 8002b60:	4694      	mov	ip, r2
 8002b62:	4463      	add	r3, ip
 8002b64:	425a      	negs	r2, r3
 8002b66:	4153      	adcs	r3, r2
 8002b68:	b2db      	uxtb	r3, r3
 8002b6a:	0018      	movs	r0, r3
 8002b6c:	46bd      	mov	sp, r7
 8002b6e:	b002      	add	sp, #8
 8002b70:	bd80      	pop	{r7, pc}
 8002b72:	46c0      	nop			; (mov r8, r8)
 8002b74:	ffc00000 	.word	0xffc00000

08002b78 <LL_USART_ClearFlag_TC>:
 8002b78:	b580      	push	{r7, lr}
 8002b7a:	b082      	sub	sp, #8
 8002b7c:	af00      	add	r7, sp, #0
 8002b7e:	6078      	str	r0, [r7, #4]
 8002b80:	687b      	ldr	r3, [r7, #4]
 8002b82:	2240      	movs	r2, #64	; 0x40
 8002b84:	621a      	str	r2, [r3, #32]
 8002b86:	46c0      	nop			; (mov r8, r8)
 8002b88:	46bd      	mov	sp, r7
 8002b8a:	b002      	add	sp, #8
 8002b8c:	bd80      	pop	{r7, pc}

08002b8e <LL_USART_EnableIT_IDLE>:
 8002b8e:	b580      	push	{r7, lr}
 8002b90:	b082      	sub	sp, #8
 8002b92:	af00      	add	r7, sp, #0
 8002b94:	6078      	str	r0, [r7, #4]
 8002b96:	687b      	ldr	r3, [r7, #4]
 8002b98:	681b      	ldr	r3, [r3, #0]
 8002b9a:	2210      	movs	r2, #16
 8002b9c:	431a      	orrs	r2, r3
 8002b9e:	687b      	ldr	r3, [r7, #4]
 8002ba0:	601a      	str	r2, [r3, #0]
 8002ba2:	46c0      	nop			; (mov r8, r8)
 8002ba4:	46bd      	mov	sp, r7
 8002ba6:	b002      	add	sp, #8
 8002ba8:	bd80      	pop	{r7, pc}

08002baa <LL_USART_EnableIT_RXNE>:
 8002baa:	b580      	push	{r7, lr}
 8002bac:	b082      	sub	sp, #8
 8002bae:	af00      	add	r7, sp, #0
 8002bb0:	6078      	str	r0, [r7, #4]
 8002bb2:	687b      	ldr	r3, [r7, #4]
 8002bb4:	681b      	ldr	r3, [r3, #0]
 8002bb6:	2220      	movs	r2, #32
 8002bb8:	431a      	orrs	r2, r3
 8002bba:	687b      	ldr	r3, [r7, #4]
 8002bbc:	601a      	str	r2, [r3, #0]
 8002bbe:	46c0      	nop			; (mov r8, r8)
 8002bc0:	46bd      	mov	sp, r7
 8002bc2:	b002      	add	sp, #8
 8002bc4:	bd80      	pop	{r7, pc}

08002bc6 <LL_USART_TransmitData8>:
 8002bc6:	b580      	push	{r7, lr}
 8002bc8:	b082      	sub	sp, #8
 8002bca:	af00      	add	r7, sp, #0
 8002bcc:	6078      	str	r0, [r7, #4]
 8002bce:	000a      	movs	r2, r1
 8002bd0:	1cfb      	adds	r3, r7, #3
 8002bd2:	701a      	strb	r2, [r3, #0]
 8002bd4:	1cfb      	adds	r3, r7, #3
 8002bd6:	781b      	ldrb	r3, [r3, #0]
 8002bd8:	b29a      	uxth	r2, r3
 8002bda:	687b      	ldr	r3, [r7, #4]
 8002bdc:	851a      	strh	r2, [r3, #40]	; 0x28
 8002bde:	46c0      	nop			; (mov r8, r8)
 8002be0:	46bd      	mov	sp, r7
 8002be2:	b002      	add	sp, #8
 8002be4:	bd80      	pop	{r7, pc}
	...

08002be8 <LL_InitTick>:
 8002be8:	b580      	push	{r7, lr}
 8002bea:	b082      	sub	sp, #8
 8002bec:	af00      	add	r7, sp, #0
 8002bee:	6078      	str	r0, [r7, #4]
 8002bf0:	6039      	str	r1, [r7, #0]
 8002bf2:	6839      	ldr	r1, [r7, #0]
 8002bf4:	6878      	ldr	r0, [r7, #4]
 8002bf6:	f7fd fa87 	bl	8000108 <__udivsi3>
 8002bfa:	0003      	movs	r3, r0
 8002bfc:	001a      	movs	r2, r3
 8002bfe:	4b06      	ldr	r3, [pc, #24]	; (8002c18 <LL_InitTick+0x30>)
 8002c00:	3a01      	subs	r2, #1
 8002c02:	605a      	str	r2, [r3, #4]
 8002c04:	4b04      	ldr	r3, [pc, #16]	; (8002c18 <LL_InitTick+0x30>)
 8002c06:	2200      	movs	r2, #0
 8002c08:	609a      	str	r2, [r3, #8]
 8002c0a:	4b03      	ldr	r3, [pc, #12]	; (8002c18 <LL_InitTick+0x30>)
 8002c0c:	2205      	movs	r2, #5
 8002c0e:	601a      	str	r2, [r3, #0]
 8002c10:	46c0      	nop			; (mov r8, r8)
 8002c12:	46bd      	mov	sp, r7
 8002c14:	b002      	add	sp, #8
 8002c16:	bd80      	pop	{r7, pc}
 8002c18:	e000e010 	.word	0xe000e010

08002c1c <LL_SYSTICK_EnableIT>:
 8002c1c:	b580      	push	{r7, lr}
 8002c1e:	af00      	add	r7, sp, #0
 8002c20:	4b04      	ldr	r3, [pc, #16]	; (8002c34 <LL_SYSTICK_EnableIT+0x18>)
 8002c22:	681a      	ldr	r2, [r3, #0]
 8002c24:	4b03      	ldr	r3, [pc, #12]	; (8002c34 <LL_SYSTICK_EnableIT+0x18>)
 8002c26:	2102      	movs	r1, #2
 8002c28:	430a      	orrs	r2, r1
 8002c2a:	601a      	str	r2, [r3, #0]
 8002c2c:	46c0      	nop			; (mov r8, r8)
 8002c2e:	46bd      	mov	sp, r7
 8002c30:	bd80      	pop	{r7, pc}
 8002c32:	46c0      	nop			; (mov r8, r8)
 8002c34:	e000e010 	.word	0xe000e010

08002c38 <mask_indicator>:
 8002c38:	b580      	push	{r7, lr}
 8002c3a:	b082      	sub	sp, #8
 8002c3c:	af00      	add	r7, sp, #0
 8002c3e:	6078      	str	r0, [r7, #4]
 8002c40:	687b      	ldr	r3, [r7, #4]
 8002c42:	09db      	lsrs	r3, r3, #7
 8002c44:	2201      	movs	r2, #1
 8002c46:	4013      	ands	r3, r2
 8002c48:	01da      	lsls	r2, r3, #7
 8002c4a:	687b      	ldr	r3, [r7, #4]
 8002c4c:	099b      	lsrs	r3, r3, #6
 8002c4e:	2101      	movs	r1, #1
 8002c50:	400b      	ands	r3, r1
 8002c52:	019b      	lsls	r3, r3, #6
 8002c54:	431a      	orrs	r2, r3
 8002c56:	687b      	ldr	r3, [r7, #4]
 8002c58:	095b      	lsrs	r3, r3, #5
 8002c5a:	2101      	movs	r1, #1
 8002c5c:	400b      	ands	r3, r1
 8002c5e:	015b      	lsls	r3, r3, #5
 8002c60:	431a      	orrs	r2, r3
 8002c62:	687b      	ldr	r3, [r7, #4]
 8002c64:	091b      	lsrs	r3, r3, #4
 8002c66:	2101      	movs	r1, #1
 8002c68:	400b      	ands	r3, r1
 8002c6a:	011b      	lsls	r3, r3, #4
 8002c6c:	431a      	orrs	r2, r3
 8002c6e:	687b      	ldr	r3, [r7, #4]
 8002c70:	08db      	lsrs	r3, r3, #3
 8002c72:	2101      	movs	r1, #1
 8002c74:	400b      	ands	r3, r1
 8002c76:	00db      	lsls	r3, r3, #3
 8002c78:	431a      	orrs	r2, r3
 8002c7a:	687b      	ldr	r3, [r7, #4]
 8002c7c:	089b      	lsrs	r3, r3, #2
 8002c7e:	2101      	movs	r1, #1
 8002c80:	400b      	ands	r3, r1
 8002c82:	009b      	lsls	r3, r3, #2
 8002c84:	431a      	orrs	r2, r3
 8002c86:	687b      	ldr	r3, [r7, #4]
 8002c88:	085b      	lsrs	r3, r3, #1
 8002c8a:	2101      	movs	r1, #1
 8002c8c:	400b      	ands	r3, r1
 8002c8e:	005b      	lsls	r3, r3, #1
 8002c90:	431a      	orrs	r2, r3
 8002c92:	687b      	ldr	r3, [r7, #4]
 8002c94:	2101      	movs	r1, #1
 8002c96:	400b      	ands	r3, r1
 8002c98:	4313      	orrs	r3, r2
 8002c9a:	0018      	movs	r0, r3
 8002c9c:	46bd      	mov	sp, r7
 8002c9e:	b002      	add	sp, #8
 8002ca0:	bd80      	pop	{r7, pc}
	...

08002ca4 <rcc_config>:
 8002ca4:	b580      	push	{r7, lr}
 8002ca6:	af00      	add	r7, sp, #0
 8002ca8:	2001      	movs	r0, #1
 8002caa:	f7ff fb5f 	bl	800236c <LL_FLASH_SetLatency>
 8002cae:	f7ff fa93 	bl	80021d8 <LL_RCC_HSI_Enable>
 8002cb2:	46c0      	nop			; (mov r8, r8)
 8002cb4:	f7ff fa9e 	bl	80021f4 <LL_RCC_HSI_IsReady>
 8002cb8:	0003      	movs	r3, r0
 8002cba:	2b01      	cmp	r3, #1
 8002cbc:	d1fa      	bne.n	8002cb4 <rcc_config+0x10>
 8002cbe:	23a0      	movs	r3, #160	; 0xa0
 8002cc0:	039b      	lsls	r3, r3, #14
 8002cc2:	0019      	movs	r1, r3
 8002cc4:	2000      	movs	r0, #0
 8002cc6:	f7ff fb2b 	bl	8002320 <LL_RCC_PLL_ConfigDomain_SYS>
 8002cca:	f7ff fb07 	bl	80022dc <LL_RCC_PLL_Enable>
 8002cce:	46c0      	nop			; (mov r8, r8)
 8002cd0:	f7ff fb12 	bl	80022f8 <LL_RCC_PLL_IsReady>
 8002cd4:	0003      	movs	r3, r0
 8002cd6:	2b01      	cmp	r3, #1
 8002cd8:	d1fa      	bne.n	8002cd0 <rcc_config+0x2c>
 8002cda:	2000      	movs	r0, #0
 8002cdc:	f7ff faba 	bl	8002254 <LL_RCC_SetAHBPrescaler>
 8002ce0:	2002      	movs	r0, #2
 8002ce2:	f7ff fa97 	bl	8002214 <LL_RCC_SetSysClkSource>
 8002ce6:	46c0      	nop			; (mov r8, r8)
 8002ce8:	f7ff faa8 	bl	800223c <LL_RCC_GetSysClkSource>
 8002cec:	0003      	movs	r3, r0
 8002cee:	2b08      	cmp	r3, #8
 8002cf0:	d1fa      	bne.n	8002ce8 <rcc_config+0x44>
 8002cf2:	2000      	movs	r0, #0
 8002cf4:	f7ff fac2 	bl	800227c <LL_RCC_SetAPB1Prescaler>
 8002cf8:	4b02      	ldr	r3, [pc, #8]	; (8002d04 <rcc_config+0x60>)
 8002cfa:	4a03      	ldr	r2, [pc, #12]	; (8002d08 <rcc_config+0x64>)
 8002cfc:	601a      	str	r2, [r3, #0]
 8002cfe:	46c0      	nop			; (mov r8, r8)
 8002d00:	46bd      	mov	sp, r7
 8002d02:	bd80      	pop	{r7, pc}
 8002d04:	20000004 	.word	0x20000004
 8002d08:	02dc6c00 	.word	0x02dc6c00

08002d0c <gpio_config>:
 8002d0c:	b580      	push	{r7, lr}
 8002d0e:	af00      	add	r7, sp, #0
 8002d10:	2380      	movs	r3, #128	; 0x80
 8002d12:	031b      	lsls	r3, r3, #12
 8002d14:	0018      	movs	r0, r3
 8002d16:	f7ff fb3d 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 8002d1a:	2380      	movs	r3, #128	; 0x80
 8002d1c:	005b      	lsls	r3, r3, #1
 8002d1e:	482e      	ldr	r0, [pc, #184]	; (8002dd8 <gpio_config+0xcc>)
 8002d20:	2201      	movs	r2, #1
 8002d22:	0019      	movs	r1, r3
 8002d24:	f7ff fb78 	bl	8002418 <LL_GPIO_SetPinMode>
 8002d28:	2380      	movs	r3, #128	; 0x80
 8002d2a:	009b      	lsls	r3, r3, #2
 8002d2c:	482a      	ldr	r0, [pc, #168]	; (8002dd8 <gpio_config+0xcc>)
 8002d2e:	2201      	movs	r2, #1
 8002d30:	0019      	movs	r1, r3
 8002d32:	f7ff fb71 	bl	8002418 <LL_GPIO_SetPinMode>
 8002d36:	4b28      	ldr	r3, [pc, #160]	; (8002dd8 <gpio_config+0xcc>)
 8002d38:	2201      	movs	r2, #1
 8002d3a:	2101      	movs	r1, #1
 8002d3c:	0018      	movs	r0, r3
 8002d3e:	f7ff fb6b 	bl	8002418 <LL_GPIO_SetPinMode>
 8002d42:	4b25      	ldr	r3, [pc, #148]	; (8002dd8 <gpio_config+0xcc>)
 8002d44:	2201      	movs	r2, #1
 8002d46:	2102      	movs	r1, #2
 8002d48:	0018      	movs	r0, r3
 8002d4a:	f7ff fb65 	bl	8002418 <LL_GPIO_SetPinMode>
 8002d4e:	4b22      	ldr	r3, [pc, #136]	; (8002dd8 <gpio_config+0xcc>)
 8002d50:	2201      	movs	r2, #1
 8002d52:	2104      	movs	r1, #4
 8002d54:	0018      	movs	r0, r3
 8002d56:	f7ff fb5f 	bl	8002418 <LL_GPIO_SetPinMode>
 8002d5a:	4b1f      	ldr	r3, [pc, #124]	; (8002dd8 <gpio_config+0xcc>)
 8002d5c:	2201      	movs	r2, #1
 8002d5e:	2108      	movs	r1, #8
 8002d60:	0018      	movs	r0, r3
 8002d62:	f7ff fb59 	bl	8002418 <LL_GPIO_SetPinMode>
 8002d66:	2380      	movs	r3, #128	; 0x80
 8002d68:	02db      	lsls	r3, r3, #11
 8002d6a:	0018      	movs	r0, r3
 8002d6c:	f7ff fb12 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 8002d70:	4b1a      	ldr	r3, [pc, #104]	; (8002ddc <gpio_config+0xd0>)
 8002d72:	2201      	movs	r2, #1
 8002d74:	2101      	movs	r1, #1
 8002d76:	0018      	movs	r0, r3
 8002d78:	f7ff fb4e 	bl	8002418 <LL_GPIO_SetPinMode>
 8002d7c:	4b17      	ldr	r3, [pc, #92]	; (8002ddc <gpio_config+0xd0>)
 8002d7e:	2201      	movs	r2, #1
 8002d80:	2102      	movs	r1, #2
 8002d82:	0018      	movs	r0, r3
 8002d84:	f7ff fb48 	bl	8002418 <LL_GPIO_SetPinMode>
 8002d88:	4b14      	ldr	r3, [pc, #80]	; (8002ddc <gpio_config+0xd0>)
 8002d8a:	2201      	movs	r2, #1
 8002d8c:	2104      	movs	r1, #4
 8002d8e:	0018      	movs	r0, r3
 8002d90:	f7ff fb42 	bl	8002418 <LL_GPIO_SetPinMode>
 8002d94:	4b11      	ldr	r3, [pc, #68]	; (8002ddc <gpio_config+0xd0>)
 8002d96:	2201      	movs	r2, #1
 8002d98:	2108      	movs	r1, #8
 8002d9a:	0018      	movs	r0, r3
 8002d9c:	f7ff fb3c 	bl	8002418 <LL_GPIO_SetPinMode>
 8002da0:	4b0e      	ldr	r3, [pc, #56]	; (8002ddc <gpio_config+0xd0>)
 8002da2:	2201      	movs	r2, #1
 8002da4:	2110      	movs	r1, #16
 8002da6:	0018      	movs	r0, r3
 8002da8:	f7ff fb36 	bl	8002418 <LL_GPIO_SetPinMode>
 8002dac:	4b0b      	ldr	r3, [pc, #44]	; (8002ddc <gpio_config+0xd0>)
 8002dae:	2201      	movs	r2, #1
 8002db0:	2120      	movs	r1, #32
 8002db2:	0018      	movs	r0, r3
 8002db4:	f7ff fb30 	bl	8002418 <LL_GPIO_SetPinMode>
 8002db8:	4b08      	ldr	r3, [pc, #32]	; (8002ddc <gpio_config+0xd0>)
 8002dba:	2201      	movs	r2, #1
 8002dbc:	2140      	movs	r1, #64	; 0x40
 8002dbe:	0018      	movs	r0, r3
 8002dc0:	f7ff fb2a 	bl	8002418 <LL_GPIO_SetPinMode>
 8002dc4:	4b05      	ldr	r3, [pc, #20]	; (8002ddc <gpio_config+0xd0>)
 8002dc6:	2201      	movs	r2, #1
 8002dc8:	2180      	movs	r1, #128	; 0x80
 8002dca:	0018      	movs	r0, r3
 8002dcc:	f7ff fb24 	bl	8002418 <LL_GPIO_SetPinMode>
 8002dd0:	46c0      	nop			; (mov r8, r8)
 8002dd2:	46bd      	mov	sp, r7
 8002dd4:	bd80      	pop	{r7, pc}
 8002dd6:	46c0      	nop			; (mov r8, r8)
 8002dd8:	48000800 	.word	0x48000800
 8002ddc:	48000400 	.word	0x48000400

08002de0 <dec_display>:
 8002de0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002de2:	b089      	sub	sp, #36	; 0x24
 8002de4:	af00      	add	r7, sp, #0
 8002de6:	6078      	str	r0, [r7, #4]
 8002de8:	241e      	movs	r4, #30
 8002dea:	193b      	adds	r3, r7, r4
 8002dec:	2200      	movs	r2, #0
 8002dee:	801a      	strh	r2, [r3, #0]
 8002df0:	2508      	movs	r5, #8
 8002df2:	197b      	adds	r3, r7, r5
 8002df4:	4a44      	ldr	r2, [pc, #272]	; (8002f08 <dec_display+0x128>)
 8002df6:	ca43      	ldmia	r2!, {r0, r1, r6}
 8002df8:	c343      	stmia	r3!, {r0, r1, r6}
 8002dfa:	ca03      	ldmia	r2!, {r0, r1}
 8002dfc:	c303      	stmia	r3!, {r0, r1}
 8002dfe:	200f      	movs	r0, #15
 8002e00:	f7ff ff1a 	bl	8002c38 <mask_indicator>
 8002e04:	0003      	movs	r3, r0
 8002e06:	4a41      	ldr	r2, [pc, #260]	; (8002f0c <dec_display+0x12c>)
 8002e08:	0019      	movs	r1, r3
 8002e0a:	0010      	movs	r0, r2
 8002e0c:	f7ff fb9e 	bl	800254c <LL_GPIO_WriteOutputPort>
 8002e10:	4b3f      	ldr	r3, [pc, #252]	; (8002f10 <dec_display+0x130>)
 8002e12:	681b      	ldr	r3, [r3, #0]
 8002e14:	2201      	movs	r2, #1
 8002e16:	409a      	lsls	r2, r3
 8002e18:	0013      	movs	r3, r2
 8002e1a:	0018      	movs	r0, r3
 8002e1c:	f7ff ff0c 	bl	8002c38 <mask_indicator>
 8002e20:	0003      	movs	r3, r0
 8002e22:	4a3a      	ldr	r2, [pc, #232]	; (8002f0c <dec_display+0x12c>)
 8002e24:	0019      	movs	r1, r3
 8002e26:	0010      	movs	r0, r2
 8002e28:	f7ff fb9c 	bl	8002564 <LL_GPIO_ResetOutputPin>
 8002e2c:	4b38      	ldr	r3, [pc, #224]	; (8002f10 <dec_display+0x130>)
 8002e2e:	681b      	ldr	r3, [r3, #0]
 8002e30:	2b00      	cmp	r3, #0
 8002e32:	d10b      	bne.n	8002e4c <dec_display+0x6c>
 8002e34:	687b      	ldr	r3, [r7, #4]
 8002e36:	210a      	movs	r1, #10
 8002e38:	0018      	movs	r0, r3
 8002e3a:	f7fd f9eb 	bl	8000214 <__aeabi_uidivmod>
 8002e3e:	000b      	movs	r3, r1
 8002e40:	0019      	movs	r1, r3
 8002e42:	193b      	adds	r3, r7, r4
 8002e44:	197a      	adds	r2, r7, r5
 8002e46:	0049      	lsls	r1, r1, #1
 8002e48:	5a8a      	ldrh	r2, [r1, r2]
 8002e4a:	801a      	strh	r2, [r3, #0]
 8002e4c:	4b30      	ldr	r3, [pc, #192]	; (8002f10 <dec_display+0x130>)
 8002e4e:	681b      	ldr	r3, [r3, #0]
 8002e50:	2b01      	cmp	r3, #1
 8002e52:	d112      	bne.n	8002e7a <dec_display+0x9a>
 8002e54:	687b      	ldr	r3, [r7, #4]
 8002e56:	210a      	movs	r1, #10
 8002e58:	0018      	movs	r0, r3
 8002e5a:	f7fd f955 	bl	8000108 <__udivsi3>
 8002e5e:	0003      	movs	r3, r0
 8002e60:	210a      	movs	r1, #10
 8002e62:	0018      	movs	r0, r3
 8002e64:	f7fd f9d6 	bl	8000214 <__aeabi_uidivmod>
 8002e68:	000b      	movs	r3, r1
 8002e6a:	0019      	movs	r1, r3
 8002e6c:	231e      	movs	r3, #30
 8002e6e:	18fb      	adds	r3, r7, r3
 8002e70:	2208      	movs	r2, #8
 8002e72:	18ba      	adds	r2, r7, r2
 8002e74:	0049      	lsls	r1, r1, #1
 8002e76:	5a8a      	ldrh	r2, [r1, r2]
 8002e78:	801a      	strh	r2, [r3, #0]
 8002e7a:	4b25      	ldr	r3, [pc, #148]	; (8002f10 <dec_display+0x130>)
 8002e7c:	681b      	ldr	r3, [r3, #0]
 8002e7e:	2b02      	cmp	r3, #2
 8002e80:	d112      	bne.n	8002ea8 <dec_display+0xc8>
 8002e82:	687b      	ldr	r3, [r7, #4]
 8002e84:	2164      	movs	r1, #100	; 0x64
 8002e86:	0018      	movs	r0, r3
 8002e88:	f7fd f93e 	bl	8000108 <__udivsi3>
 8002e8c:	0003      	movs	r3, r0
 8002e8e:	210a      	movs	r1, #10
 8002e90:	0018      	movs	r0, r3
 8002e92:	f7fd f9bf 	bl	8000214 <__aeabi_uidivmod>
 8002e96:	000b      	movs	r3, r1
 8002e98:	0019      	movs	r1, r3
 8002e9a:	231e      	movs	r3, #30
 8002e9c:	18fb      	adds	r3, r7, r3
 8002e9e:	2208      	movs	r2, #8
 8002ea0:	18ba      	adds	r2, r7, r2
 8002ea2:	0049      	lsls	r1, r1, #1
 8002ea4:	5a8a      	ldrh	r2, [r1, r2]
 8002ea6:	801a      	strh	r2, [r3, #0]
 8002ea8:	4b19      	ldr	r3, [pc, #100]	; (8002f10 <dec_display+0x130>)
 8002eaa:	681b      	ldr	r3, [r3, #0]
 8002eac:	2b03      	cmp	r3, #3
 8002eae:	d113      	bne.n	8002ed8 <dec_display+0xf8>
 8002eb0:	687b      	ldr	r3, [r7, #4]
 8002eb2:	22fa      	movs	r2, #250	; 0xfa
 8002eb4:	0091      	lsls	r1, r2, #2
 8002eb6:	0018      	movs	r0, r3
 8002eb8:	f7fd f926 	bl	8000108 <__udivsi3>
 8002ebc:	0003      	movs	r3, r0
 8002ebe:	210a      	movs	r1, #10
 8002ec0:	0018      	movs	r0, r3
 8002ec2:	f7fd f9a7 	bl	8000214 <__aeabi_uidivmod>
 8002ec6:	000b      	movs	r3, r1
 8002ec8:	0019      	movs	r1, r3
 8002eca:	231e      	movs	r3, #30
 8002ecc:	18fb      	adds	r3, r7, r3
 8002ece:	2208      	movs	r2, #8
 8002ed0:	18ba      	adds	r2, r7, r2
 8002ed2:	0049      	lsls	r1, r1, #1
 8002ed4:	5a8a      	ldrh	r2, [r1, r2]
 8002ed6:	801a      	strh	r2, [r3, #0]
 8002ed8:	231e      	movs	r3, #30
 8002eda:	18fb      	adds	r3, r7, r3
 8002edc:	881b      	ldrh	r3, [r3, #0]
 8002ede:	0018      	movs	r0, r3
 8002ee0:	f7ff feaa 	bl	8002c38 <mask_indicator>
 8002ee4:	0003      	movs	r3, r0
 8002ee6:	4a0b      	ldr	r2, [pc, #44]	; (8002f14 <dec_display+0x134>)
 8002ee8:	0019      	movs	r1, r3
 8002eea:	0010      	movs	r0, r2
 8002eec:	f7ff fb2e 	bl	800254c <LL_GPIO_WriteOutputPort>
 8002ef0:	4b07      	ldr	r3, [pc, #28]	; (8002f10 <dec_display+0x130>)
 8002ef2:	681b      	ldr	r3, [r3, #0]
 8002ef4:	3301      	adds	r3, #1
 8002ef6:	2203      	movs	r2, #3
 8002ef8:	401a      	ands	r2, r3
 8002efa:	4b05      	ldr	r3, [pc, #20]	; (8002f10 <dec_display+0x130>)
 8002efc:	601a      	str	r2, [r3, #0]
 8002efe:	46c0      	nop			; (mov r8, r8)
 8002f00:	46bd      	mov	sp, r7
 8002f02:	b009      	add	sp, #36	; 0x24
 8002f04:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002f06:	46c0      	nop			; (mov r8, r8)
 8002f08:	08004e48 	.word	0x08004e48
 8002f0c:	48000800 	.word	0x48000800
 8002f10:	2000046c 	.word	0x2000046c
 8002f14:	48000400 	.word	0x48000400

08002f18 <sonar_trig>:
 8002f18:	b580      	push	{r7, lr}
 8002f1a:	af00      	add	r7, sp, #0
 8002f1c:	2380      	movs	r3, #128	; 0x80
 8002f1e:	029b      	lsls	r3, r3, #10
 8002f20:	0018      	movs	r0, r3
 8002f22:	f7ff fa37 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 8002f26:	2390      	movs	r3, #144	; 0x90
 8002f28:	05db      	lsls	r3, r3, #23
 8002f2a:	2202      	movs	r2, #2
 8002f2c:	2110      	movs	r1, #16
 8002f2e:	0018      	movs	r0, r3
 8002f30:	f7ff fa72 	bl	8002418 <LL_GPIO_SetPinMode>
 8002f34:	2390      	movs	r3, #144	; 0x90
 8002f36:	05db      	lsls	r3, r3, #23
 8002f38:	2204      	movs	r2, #4
 8002f3a:	2110      	movs	r1, #16
 8002f3c:	0018      	movs	r0, r3
 8002f3e:	f7ff faa3 	bl	8002488 <LL_GPIO_SetAFPin_0_7>
 8002f42:	2380      	movs	r3, #128	; 0x80
 8002f44:	005b      	lsls	r3, r3, #1
 8002f46:	0018      	movs	r0, r3
 8002f48:	f7ff fa3a 	bl	80023c0 <LL_APB1_GRP1_EnableClock>
 8002f4c:	4b18      	ldr	r3, [pc, #96]	; (8002fb0 <sonar_trig+0x98>)
 8002f4e:	212f      	movs	r1, #47	; 0x2f
 8002f50:	0018      	movs	r0, r3
 8002f52:	f7ff fb49 	bl	80025e8 <LL_TIM_SetPrescaler>
 8002f56:	4a17      	ldr	r2, [pc, #92]	; (8002fb4 <sonar_trig+0x9c>)
 8002f58:	4b15      	ldr	r3, [pc, #84]	; (8002fb0 <sonar_trig+0x98>)
 8002f5a:	0011      	movs	r1, r2
 8002f5c:	0018      	movs	r0, r3
 8002f5e:	f7ff fb4f 	bl	8002600 <LL_TIM_SetAutoReload>
 8002f62:	4a15      	ldr	r2, [pc, #84]	; (8002fb8 <sonar_trig+0xa0>)
 8002f64:	4b12      	ldr	r3, [pc, #72]	; (8002fb0 <sonar_trig+0x98>)
 8002f66:	0011      	movs	r1, r2
 8002f68:	0018      	movs	r0, r3
 8002f6a:	f7ff fbf5 	bl	8002758 <LL_TIM_OC_SetCompareCH1>
 8002f6e:	4b10      	ldr	r3, [pc, #64]	; (8002fb0 <sonar_trig+0x98>)
 8002f70:	2101      	movs	r1, #1
 8002f72:	0018      	movs	r0, r3
 8002f74:	f7ff fb50 	bl	8002618 <LL_TIM_CC_EnableChannel>
 8002f78:	4b0d      	ldr	r3, [pc, #52]	; (8002fb0 <sonar_trig+0x98>)
 8002f7a:	2200      	movs	r2, #0
 8002f7c:	2101      	movs	r1, #1
 8002f7e:	0018      	movs	r0, r3
 8002f80:	f7ff fba6 	bl	80026d0 <LL_TIM_OC_SetPolarity>
 8002f84:	4b0a      	ldr	r3, [pc, #40]	; (8002fb0 <sonar_trig+0x98>)
 8002f86:	2260      	movs	r2, #96	; 0x60
 8002f88:	2101      	movs	r1, #1
 8002f8a:	0018      	movs	r0, r3
 8002f8c:	f7ff fb54 	bl	8002638 <LL_TIM_OC_SetMode>
 8002f90:	4b07      	ldr	r3, [pc, #28]	; (8002fb0 <sonar_trig+0x98>)
 8002f92:	2100      	movs	r1, #0
 8002f94:	0018      	movs	r0, r3
 8002f96:	f7ff faff 	bl	8002598 <LL_TIM_SetCounterMode>
 8002f9a:	4b05      	ldr	r3, [pc, #20]	; (8002fb0 <sonar_trig+0x98>)
 8002f9c:	0018      	movs	r0, r3
 8002f9e:	f7ff fcdb 	bl	8002958 <LL_TIM_EnableIT_CC1>
 8002fa2:	4b03      	ldr	r3, [pc, #12]	; (8002fb0 <sonar_trig+0x98>)
 8002fa4:	0018      	movs	r0, r3
 8002fa6:	f7ff fae9 	bl	800257c <LL_TIM_EnableCounter>
 8002faa:	46c0      	nop			; (mov r8, r8)
 8002fac:	46bd      	mov	sp, r7
 8002fae:	bd80      	pop	{r7, pc}
 8002fb0:	40002000 	.word	0x40002000
 8002fb4:	0000ea5f 	.word	0x0000ea5f
 8002fb8:	0000ea55 	.word	0x0000ea55

08002fbc <sonar_echo>:
 8002fbc:	b580      	push	{r7, lr}
 8002fbe:	af00      	add	r7, sp, #0
 8002fc0:	2380      	movs	r3, #128	; 0x80
 8002fc2:	029b      	lsls	r3, r3, #10
 8002fc4:	0018      	movs	r0, r3
 8002fc6:	f7ff f9e5 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 8002fca:	2390      	movs	r3, #144	; 0x90
 8002fcc:	05db      	lsls	r3, r3, #23
 8002fce:	2202      	movs	r2, #2
 8002fd0:	2180      	movs	r1, #128	; 0x80
 8002fd2:	0018      	movs	r0, r3
 8002fd4:	f7ff fa20 	bl	8002418 <LL_GPIO_SetPinMode>
 8002fd8:	2390      	movs	r3, #144	; 0x90
 8002fda:	05db      	lsls	r3, r3, #23
 8002fdc:	2201      	movs	r2, #1
 8002fde:	2180      	movs	r1, #128	; 0x80
 8002fe0:	0018      	movs	r0, r3
 8002fe2:	f7ff fa51 	bl	8002488 <LL_GPIO_SetAFPin_0_7>
 8002fe6:	2002      	movs	r0, #2
 8002fe8:	f7ff f9ea 	bl	80023c0 <LL_APB1_GRP1_EnableClock>
 8002fec:	4b19      	ldr	r3, [pc, #100]	; (8003054 <sonar_echo+0x98>)
 8002fee:	212f      	movs	r1, #47	; 0x2f
 8002ff0:	0018      	movs	r0, r3
 8002ff2:	f7ff faf9 	bl	80025e8 <LL_TIM_SetPrescaler>
 8002ff6:	2380      	movs	r3, #128	; 0x80
 8002ff8:	025b      	lsls	r3, r3, #9
 8002ffa:	4816      	ldr	r0, [pc, #88]	; (8003054 <sonar_echo+0x98>)
 8002ffc:	001a      	movs	r2, r3
 8002ffe:	2110      	movs	r1, #16
 8003000:	f7ff fbc2 	bl	8002788 <LL_TIM_IC_SetActiveInput>
 8003004:	4b13      	ldr	r3, [pc, #76]	; (8003054 <sonar_echo+0x98>)
 8003006:	2200      	movs	r2, #0
 8003008:	2110      	movs	r1, #16
 800300a:	0018      	movs	r0, r3
 800300c:	f7ff fc08 	bl	8002820 <LL_TIM_IC_SetPrescaler>
 8003010:	4b10      	ldr	r3, [pc, #64]	; (8003054 <sonar_echo+0x98>)
 8003012:	2200      	movs	r2, #0
 8003014:	2110      	movs	r1, #16
 8003016:	0018      	movs	r0, r3
 8003018:	f7ff fc4e 	bl	80028b8 <LL_TIM_IC_SetPolarity>
 800301c:	4b0d      	ldr	r3, [pc, #52]	; (8003054 <sonar_echo+0x98>)
 800301e:	2100      	movs	r1, #0
 8003020:	0018      	movs	r0, r3
 8003022:	f7ff fab9 	bl	8002598 <LL_TIM_SetCounterMode>
 8003026:	4b0b      	ldr	r3, [pc, #44]	; (8003054 <sonar_echo+0x98>)
 8003028:	2110      	movs	r1, #16
 800302a:	0018      	movs	r0, r3
 800302c:	f7ff faf4 	bl	8002618 <LL_TIM_CC_EnableChannel>
 8003030:	4b08      	ldr	r3, [pc, #32]	; (8003054 <sonar_echo+0x98>)
 8003032:	0018      	movs	r0, r3
 8003034:	f7ff fc9e 	bl	8002974 <LL_TIM_EnableIT_CC2>
 8003038:	4b06      	ldr	r3, [pc, #24]	; (8003054 <sonar_echo+0x98>)
 800303a:	0018      	movs	r0, r3
 800303c:	f7ff fa9e 	bl	800257c <LL_TIM_EnableCounter>
 8003040:	2010      	movs	r0, #16
 8003042:	f7ff f845 	bl	80020d0 <NVIC_EnableIRQ>
 8003046:	2102      	movs	r1, #2
 8003048:	2010      	movs	r0, #16
 800304a:	f7ff f857 	bl	80020fc <NVIC_SetPriority>
 800304e:	46c0      	nop			; (mov r8, r8)
 8003050:	46bd      	mov	sp, r7
 8003052:	bd80      	pop	{r7, pc}
 8003054:	40000400 	.word	0x40000400

08003058 <servo_1>:
 8003058:	b580      	push	{r7, lr}
 800305a:	af00      	add	r7, sp, #0
 800305c:	2380      	movs	r3, #128	; 0x80
 800305e:	029b      	lsls	r3, r3, #10
 8003060:	0018      	movs	r0, r3
 8003062:	f7ff f997 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 8003066:	2390      	movs	r3, #144	; 0x90
 8003068:	05db      	lsls	r3, r3, #23
 800306a:	2202      	movs	r2, #2
 800306c:	2101      	movs	r1, #1
 800306e:	0018      	movs	r0, r3
 8003070:	f7ff f9d2 	bl	8002418 <LL_GPIO_SetPinMode>
 8003074:	2390      	movs	r3, #144	; 0x90
 8003076:	05db      	lsls	r3, r3, #23
 8003078:	2202      	movs	r2, #2
 800307a:	2101      	movs	r1, #1
 800307c:	0018      	movs	r0, r3
 800307e:	f7ff fa03 	bl	8002488 <LL_GPIO_SetAFPin_0_7>
 8003082:	2001      	movs	r0, #1
 8003084:	f7ff f99c 	bl	80023c0 <LL_APB1_GRP1_EnableClock>
 8003088:	2380      	movs	r3, #128	; 0x80
 800308a:	05db      	lsls	r3, r3, #23
 800308c:	210e      	movs	r1, #14
 800308e:	0018      	movs	r0, r3
 8003090:	f7ff faaa 	bl	80025e8 <LL_TIM_SetPrescaler>
 8003094:	23fa      	movs	r3, #250	; 0xfa
 8003096:	021a      	lsls	r2, r3, #8
 8003098:	2380      	movs	r3, #128	; 0x80
 800309a:	05db      	lsls	r3, r3, #23
 800309c:	0011      	movs	r1, r2
 800309e:	0018      	movs	r0, r3
 80030a0:	f7ff faae 	bl	8002600 <LL_TIM_SetAutoReload>
 80030a4:	2380      	movs	r3, #128	; 0x80
 80030a6:	05db      	lsls	r3, r3, #23
 80030a8:	2101      	movs	r1, #1
 80030aa:	0018      	movs	r0, r3
 80030ac:	f7ff fab4 	bl	8002618 <LL_TIM_CC_EnableChannel>
 80030b0:	2380      	movs	r3, #128	; 0x80
 80030b2:	05db      	lsls	r3, r3, #23
 80030b4:	2200      	movs	r2, #0
 80030b6:	2101      	movs	r1, #1
 80030b8:	0018      	movs	r0, r3
 80030ba:	f7ff fb09 	bl	80026d0 <LL_TIM_OC_SetPolarity>
 80030be:	2380      	movs	r3, #128	; 0x80
 80030c0:	05db      	lsls	r3, r3, #23
 80030c2:	2260      	movs	r2, #96	; 0x60
 80030c4:	2101      	movs	r1, #1
 80030c6:	0018      	movs	r0, r3
 80030c8:	f7ff fab6 	bl	8002638 <LL_TIM_OC_SetMode>
 80030cc:	2380      	movs	r3, #128	; 0x80
 80030ce:	05db      	lsls	r3, r3, #23
 80030d0:	2100      	movs	r1, #0
 80030d2:	0018      	movs	r0, r3
 80030d4:	f7ff fa60 	bl	8002598 <LL_TIM_SetCounterMode>
 80030d8:	2380      	movs	r3, #128	; 0x80
 80030da:	05db      	lsls	r3, r3, #23
 80030dc:	0018      	movs	r0, r3
 80030de:	f7ff fc3b 	bl	8002958 <LL_TIM_EnableIT_CC1>
 80030e2:	2380      	movs	r3, #128	; 0x80
 80030e4:	05db      	lsls	r3, r3, #23
 80030e6:	0018      	movs	r0, r3
 80030e8:	f7ff fa48 	bl	800257c <LL_TIM_EnableCounter>
 80030ec:	46c0      	nop			; (mov r8, r8)
 80030ee:	46bd      	mov	sp, r7
 80030f0:	bd80      	pop	{r7, pc}

080030f2 <servo_2>:
 80030f2:	b580      	push	{r7, lr}
 80030f4:	af00      	add	r7, sp, #0
 80030f6:	2380      	movs	r3, #128	; 0x80
 80030f8:	029b      	lsls	r3, r3, #10
 80030fa:	0018      	movs	r0, r3
 80030fc:	f7ff f94a 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 8003100:	2390      	movs	r3, #144	; 0x90
 8003102:	05db      	lsls	r3, r3, #23
 8003104:	2202      	movs	r2, #2
 8003106:	2102      	movs	r1, #2
 8003108:	0018      	movs	r0, r3
 800310a:	f7ff f985 	bl	8002418 <LL_GPIO_SetPinMode>
 800310e:	2390      	movs	r3, #144	; 0x90
 8003110:	05db      	lsls	r3, r3, #23
 8003112:	2202      	movs	r2, #2
 8003114:	2102      	movs	r1, #2
 8003116:	0018      	movs	r0, r3
 8003118:	f7ff f9b6 	bl	8002488 <LL_GPIO_SetAFPin_0_7>
 800311c:	2001      	movs	r0, #1
 800311e:	f7ff f94f 	bl	80023c0 <LL_APB1_GRP1_EnableClock>
 8003122:	2380      	movs	r3, #128	; 0x80
 8003124:	05db      	lsls	r3, r3, #23
 8003126:	210e      	movs	r1, #14
 8003128:	0018      	movs	r0, r3
 800312a:	f7ff fa5d 	bl	80025e8 <LL_TIM_SetPrescaler>
 800312e:	23fa      	movs	r3, #250	; 0xfa
 8003130:	021a      	lsls	r2, r3, #8
 8003132:	2380      	movs	r3, #128	; 0x80
 8003134:	05db      	lsls	r3, r3, #23
 8003136:	0011      	movs	r1, r2
 8003138:	0018      	movs	r0, r3
 800313a:	f7ff fa61 	bl	8002600 <LL_TIM_SetAutoReload>
 800313e:	2380      	movs	r3, #128	; 0x80
 8003140:	05db      	lsls	r3, r3, #23
 8003142:	2110      	movs	r1, #16
 8003144:	0018      	movs	r0, r3
 8003146:	f7ff fa67 	bl	8002618 <LL_TIM_CC_EnableChannel>
 800314a:	2380      	movs	r3, #128	; 0x80
 800314c:	05db      	lsls	r3, r3, #23
 800314e:	2200      	movs	r2, #0
 8003150:	2110      	movs	r1, #16
 8003152:	0018      	movs	r0, r3
 8003154:	f7ff fabc 	bl	80026d0 <LL_TIM_OC_SetPolarity>
 8003158:	2380      	movs	r3, #128	; 0x80
 800315a:	05db      	lsls	r3, r3, #23
 800315c:	2260      	movs	r2, #96	; 0x60
 800315e:	2110      	movs	r1, #16
 8003160:	0018      	movs	r0, r3
 8003162:	f7ff fa69 	bl	8002638 <LL_TIM_OC_SetMode>
 8003166:	2380      	movs	r3, #128	; 0x80
 8003168:	05db      	lsls	r3, r3, #23
 800316a:	2100      	movs	r1, #0
 800316c:	0018      	movs	r0, r3
 800316e:	f7ff fa13 	bl	8002598 <LL_TIM_SetCounterMode>
 8003172:	2380      	movs	r3, #128	; 0x80
 8003174:	05db      	lsls	r3, r3, #23
 8003176:	0018      	movs	r0, r3
 8003178:	f7ff fbee 	bl	8002958 <LL_TIM_EnableIT_CC1>
 800317c:	2380      	movs	r3, #128	; 0x80
 800317e:	05db      	lsls	r3, r3, #23
 8003180:	0018      	movs	r0, r3
 8003182:	f7ff f9fb 	bl	800257c <LL_TIM_EnableCounter>
 8003186:	46c0      	nop			; (mov r8, r8)
 8003188:	46bd      	mov	sp, r7
 800318a:	bd80      	pop	{r7, pc}

0800318c <TIM3_IRQHandler>:
 800318c:	b580      	push	{r7, lr}
 800318e:	af00      	add	r7, sp, #0
 8003190:	46c0      	nop			; (mov r8, r8)
 8003192:	2390      	movs	r3, #144	; 0x90
 8003194:	05db      	lsls	r3, r3, #23
 8003196:	2180      	movs	r1, #128	; 0x80
 8003198:	0018      	movs	r0, r3
 800319a:	f7ff f9c5 	bl	8002528 <LL_GPIO_IsInputPinSet>
 800319e:	1e03      	subs	r3, r0, #0
 80031a0:	d0f7      	beq.n	8003192 <TIM3_IRQHandler+0x6>
 80031a2:	4b15      	ldr	r3, [pc, #84]	; (80031f8 <TIM3_IRQHandler+0x6c>)
 80031a4:	2100      	movs	r1, #0
 80031a6:	0018      	movs	r0, r3
 80031a8:	f7ff fa08 	bl	80025bc <LL_TIM_SetCounter>
 80031ac:	46c0      	nop			; (mov r8, r8)
 80031ae:	2390      	movs	r3, #144	; 0x90
 80031b0:	05db      	lsls	r3, r3, #23
 80031b2:	2180      	movs	r1, #128	; 0x80
 80031b4:	0018      	movs	r0, r3
 80031b6:	f7ff f9b7 	bl	8002528 <LL_GPIO_IsInputPinSet>
 80031ba:	1e03      	subs	r3, r0, #0
 80031bc:	d1f7      	bne.n	80031ae <TIM3_IRQHandler+0x22>
 80031be:	4b0e      	ldr	r3, [pc, #56]	; (80031f8 <TIM3_IRQHandler+0x6c>)
 80031c0:	0018      	movs	r0, r3
 80031c2:	f7ff fa07 	bl	80025d4 <LL_TIM_GetCounter>
 80031c6:	0002      	movs	r2, r0
 80031c8:	4b0c      	ldr	r3, [pc, #48]	; (80031fc <TIM3_IRQHandler+0x70>)
 80031ca:	601a      	str	r2, [r3, #0]
 80031cc:	4b0b      	ldr	r3, [pc, #44]	; (80031fc <TIM3_IRQHandler+0x70>)
 80031ce:	681b      	ldr	r3, [r3, #0]
 80031d0:	0018      	movs	r0, r3
 80031d2:	f7fe fa89 	bl	80016e8 <__aeabi_ui2d>
 80031d6:	4a0a      	ldr	r2, [pc, #40]	; (8003200 <TIM3_IRQHandler+0x74>)
 80031d8:	4b0a      	ldr	r3, [pc, #40]	; (8003204 <TIM3_IRQHandler+0x78>)
 80031da:	f7fd f929 	bl	8000430 <__aeabi_ddiv>
 80031de:	0002      	movs	r2, r0
 80031e0:	000b      	movs	r3, r1
 80031e2:	4909      	ldr	r1, [pc, #36]	; (8003208 <TIM3_IRQHandler+0x7c>)
 80031e4:	600a      	str	r2, [r1, #0]
 80031e6:	604b      	str	r3, [r1, #4]
 80031e8:	4b03      	ldr	r3, [pc, #12]	; (80031f8 <TIM3_IRQHandler+0x6c>)
 80031ea:	0018      	movs	r0, r3
 80031ec:	f7ff fba8 	bl	8002940 <LL_TIM_ClearFlag_CC2>
 80031f0:	46c0      	nop			; (mov r8, r8)
 80031f2:	46bd      	mov	sp, r7
 80031f4:	bd80      	pop	{r7, pc}
 80031f6:	46c0      	nop			; (mov r8, r8)
 80031f8:	40000400 	.word	0x40000400
 80031fc:	20000454 	.word	0x20000454
 8003200:	66666666 	.word	0x66666666
 8003204:	404d6666 	.word	0x404d6666
 8003208:	20000458 	.word	0x20000458

0800320c <systick_config>:
 800320c:	b580      	push	{r7, lr}
 800320e:	af00      	add	r7, sp, #0
 8003210:	23fa      	movs	r3, #250	; 0xfa
 8003212:	009b      	lsls	r3, r3, #2
 8003214:	4a07      	ldr	r2, [pc, #28]	; (8003234 <systick_config+0x28>)
 8003216:	0019      	movs	r1, r3
 8003218:	0010      	movs	r0, r2
 800321a:	f7ff fce5 	bl	8002be8 <LL_InitTick>
 800321e:	f7ff fcfd 	bl	8002c1c <LL_SYSTICK_EnableIT>
 8003222:	2301      	movs	r3, #1
 8003224:	425b      	negs	r3, r3
 8003226:	2100      	movs	r1, #0
 8003228:	0018      	movs	r0, r3
 800322a:	f7fe ff67 	bl	80020fc <NVIC_SetPriority>
 800322e:	46c0      	nop			; (mov r8, r8)
 8003230:	46bd      	mov	sp, r7
 8003232:	bd80      	pop	{r7, pc}
 8003234:	02dc6c00 	.word	0x02dc6c00

08003238 <usart_config>:
 8003238:	b580      	push	{r7, lr}
 800323a:	af00      	add	r7, sp, #0
 800323c:	2380      	movs	r3, #128	; 0x80
 800323e:	029b      	lsls	r3, r3, #10
 8003240:	0018      	movs	r0, r3
 8003242:	f7ff f8a7 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 8003246:	2380      	movs	r3, #128	; 0x80
 8003248:	0099      	lsls	r1, r3, #2
 800324a:	2390      	movs	r3, #144	; 0x90
 800324c:	05db      	lsls	r3, r3, #23
 800324e:	2202      	movs	r2, #2
 8003250:	0018      	movs	r0, r3
 8003252:	f7ff f8e1 	bl	8002418 <LL_GPIO_SetPinMode>
 8003256:	2380      	movs	r3, #128	; 0x80
 8003258:	0099      	lsls	r1, r3, #2
 800325a:	2390      	movs	r3, #144	; 0x90
 800325c:	05db      	lsls	r3, r3, #23
 800325e:	2201      	movs	r2, #1
 8003260:	0018      	movs	r0, r3
 8003262:	f7ff f934 	bl	80024ce <LL_GPIO_SetAFPin_8_15>
 8003266:	2380      	movs	r3, #128	; 0x80
 8003268:	0099      	lsls	r1, r3, #2
 800326a:	2390      	movs	r3, #144	; 0x90
 800326c:	05db      	lsls	r3, r3, #23
 800326e:	2203      	movs	r2, #3
 8003270:	0018      	movs	r0, r3
 8003272:	f7ff f8ed 	bl	8002450 <LL_GPIO_SetPinSpeed>
 8003276:	2380      	movs	r3, #128	; 0x80
 8003278:	00d9      	lsls	r1, r3, #3
 800327a:	2390      	movs	r3, #144	; 0x90
 800327c:	05db      	lsls	r3, r3, #23
 800327e:	2202      	movs	r2, #2
 8003280:	0018      	movs	r0, r3
 8003282:	f7ff f8c9 	bl	8002418 <LL_GPIO_SetPinMode>
 8003286:	2380      	movs	r3, #128	; 0x80
 8003288:	00d9      	lsls	r1, r3, #3
 800328a:	2390      	movs	r3, #144	; 0x90
 800328c:	05db      	lsls	r3, r3, #23
 800328e:	2201      	movs	r2, #1
 8003290:	0018      	movs	r0, r3
 8003292:	f7ff f91c 	bl	80024ce <LL_GPIO_SetAFPin_8_15>
 8003296:	2380      	movs	r3, #128	; 0x80
 8003298:	00d9      	lsls	r1, r3, #3
 800329a:	2390      	movs	r3, #144	; 0x90
 800329c:	05db      	lsls	r3, r3, #23
 800329e:	2203      	movs	r2, #3
 80032a0:	0018      	movs	r0, r3
 80032a2:	f7ff f8d5 	bl	8002450 <LL_GPIO_SetPinSpeed>
 80032a6:	2380      	movs	r3, #128	; 0x80
 80032a8:	01db      	lsls	r3, r3, #7
 80032aa:	0018      	movs	r0, r3
 80032ac:	f7ff f89e 	bl	80023ec <LL_APB1_GRP2_EnableClock>
 80032b0:	2000      	movs	r0, #0
 80032b2:	f7fe fff9 	bl	80022a8 <LL_RCC_SetUSARTClockSource>
 80032b6:	4b1e      	ldr	r3, [pc, #120]	; (8003330 <usart_config+0xf8>)
 80032b8:	210c      	movs	r1, #12
 80032ba:	0018      	movs	r0, r3
 80032bc:	f7ff fb76 	bl	80029ac <LL_USART_SetTransferDirection>
 80032c0:	4b1b      	ldr	r3, [pc, #108]	; (8003330 <usart_config+0xf8>)
 80032c2:	2100      	movs	r1, #0
 80032c4:	0018      	movs	r0, r3
 80032c6:	f7ff fb83 	bl	80029d0 <LL_USART_SetParity>
 80032ca:	4b19      	ldr	r3, [pc, #100]	; (8003330 <usart_config+0xf8>)
 80032cc:	2100      	movs	r1, #0
 80032ce:	0018      	movs	r0, r3
 80032d0:	f7ff fb92 	bl	80029f8 <LL_USART_SetDataWidth>
 80032d4:	4b16      	ldr	r3, [pc, #88]	; (8003330 <usart_config+0xf8>)
 80032d6:	2100      	movs	r1, #0
 80032d8:	0018      	movs	r0, r3
 80032da:	f7ff fba1 	bl	8002a20 <LL_USART_SetStopBitsLength>
 80032de:	4b14      	ldr	r3, [pc, #80]	; (8003330 <usart_config+0xf8>)
 80032e0:	2100      	movs	r1, #0
 80032e2:	0018      	movs	r0, r3
 80032e4:	f7ff fbb0 	bl	8002a48 <LL_USART_SetTransferBitOrder>
 80032e8:	4b12      	ldr	r3, [pc, #72]	; (8003334 <usart_config+0xfc>)
 80032ea:	6819      	ldr	r1, [r3, #0]
 80032ec:	23e1      	movs	r3, #225	; 0xe1
 80032ee:	025b      	lsls	r3, r3, #9
 80032f0:	480f      	ldr	r0, [pc, #60]	; (8003330 <usart_config+0xf8>)
 80032f2:	2200      	movs	r2, #0
 80032f4:	f7ff fbbc 	bl	8002a70 <LL_USART_SetBaudRate>
 80032f8:	4b0d      	ldr	r3, [pc, #52]	; (8003330 <usart_config+0xf8>)
 80032fa:	0018      	movs	r0, r3
 80032fc:	f7ff fc47 	bl	8002b8e <LL_USART_EnableIT_IDLE>
 8003300:	4b0b      	ldr	r3, [pc, #44]	; (8003330 <usart_config+0xf8>)
 8003302:	0018      	movs	r0, r3
 8003304:	f7ff fc51 	bl	8002baa <LL_USART_EnableIT_RXNE>
 8003308:	4b09      	ldr	r3, [pc, #36]	; (8003330 <usart_config+0xf8>)
 800330a:	0018      	movs	r0, r3
 800330c:	f7ff fb40 	bl	8002990 <LL_USART_Enable>
 8003310:	46c0      	nop			; (mov r8, r8)
 8003312:	4b07      	ldr	r3, [pc, #28]	; (8003330 <usart_config+0xf8>)
 8003314:	0018      	movs	r0, r3
 8003316:	f7ff fc03 	bl	8002b20 <LL_USART_IsActiveFlag_TEACK>
 800331a:	1e03      	subs	r3, r0, #0
 800331c:	d0f9      	beq.n	8003312 <usart_config+0xda>
 800331e:	4b04      	ldr	r3, [pc, #16]	; (8003330 <usart_config+0xf8>)
 8003320:	0018      	movs	r0, r3
 8003322:	f7ff fc13 	bl	8002b4c <LL_USART_IsActiveFlag_REACK>
 8003326:	1e03      	subs	r3, r0, #0
 8003328:	d0f3      	beq.n	8003312 <usart_config+0xda>
 800332a:	46c0      	nop			; (mov r8, r8)
 800332c:	46bd      	mov	sp, r7
 800332e:	bd80      	pop	{r7, pc}
 8003330:	40013800 	.word	0x40013800
 8003334:	20000004 	.word	0x20000004

08003338 <manage_response>:
 8003338:	b590      	push	{r4, r7, lr}
 800333a:	b085      	sub	sp, #20
 800333c:	af00      	add	r7, sp, #0
 800333e:	0002      	movs	r2, r0
 8003340:	1dbb      	adds	r3, r7, #6
 8003342:	801a      	strh	r2, [r3, #0]
 8003344:	230f      	movs	r3, #15
 8003346:	18fb      	adds	r3, r7, r3
 8003348:	2200      	movs	r2, #0
 800334a:	701a      	strb	r2, [r3, #0]
 800334c:	4b4e      	ldr	r3, [pc, #312]	; (8003488 <manage_response+0x150>)
 800334e:	0018      	movs	r0, r3
 8003350:	f7ff fc12 	bl	8002b78 <LL_USART_ClearFlag_TC>
 8003354:	1dbb      	adds	r3, r7, #6
 8003356:	2200      	movs	r2, #0
 8003358:	5e9b      	ldrsh	r3, [r3, r2]
 800335a:	2b2a      	cmp	r3, #42	; 0x2a
 800335c:	d009      	beq.n	8003372 <manage_response+0x3a>
 800335e:	1dbb      	adds	r3, r7, #6
 8003360:	2200      	movs	r2, #0
 8003362:	5e9b      	ldrsh	r3, [r3, r2]
 8003364:	2b2c      	cmp	r3, #44	; 0x2c
 8003366:	d004      	beq.n	8003372 <manage_response+0x3a>
 8003368:	1dbb      	adds	r3, r7, #6
 800336a:	2200      	movs	r2, #0
 800336c:	5e9b      	ldrsh	r3, [r3, r2]
 800336e:	2b0a      	cmp	r3, #10
 8003370:	d10f      	bne.n	8003392 <manage_response+0x5a>
 8003372:	1dbb      	adds	r3, r7, #6
 8003374:	881b      	ldrh	r3, [r3, #0]
 8003376:	b2db      	uxtb	r3, r3
 8003378:	4a43      	ldr	r2, [pc, #268]	; (8003488 <manage_response+0x150>)
 800337a:	0019      	movs	r1, r3
 800337c:	0010      	movs	r0, r2
 800337e:	f7ff fc22 	bl	8002bc6 <LL_USART_TransmitData8>
 8003382:	46c0      	nop			; (mov r8, r8)
 8003384:	4b40      	ldr	r3, [pc, #256]	; (8003488 <manage_response+0x150>)
 8003386:	0018      	movs	r0, r3
 8003388:	f7ff fbaa 	bl	8002ae0 <LL_USART_IsActiveFlag_TC>
 800338c:	1e03      	subs	r3, r0, #0
 800338e:	d0f9      	beq.n	8003384 <manage_response+0x4c>
 8003390:	e076      	b.n	8003480 <manage_response+0x148>
 8003392:	1dbb      	adds	r3, r7, #6
 8003394:	2200      	movs	r2, #0
 8003396:	5e9b      	ldrsh	r3, [r3, r2]
 8003398:	2b00      	cmp	r3, #0
 800339a:	da36      	bge.n	800340a <manage_response+0xd2>
 800339c:	4b3a      	ldr	r3, [pc, #232]	; (8003488 <manage_response+0x150>)
 800339e:	212d      	movs	r1, #45	; 0x2d
 80033a0:	0018      	movs	r0, r3
 80033a2:	f7ff fc10 	bl	8002bc6 <LL_USART_TransmitData8>
 80033a6:	46c0      	nop			; (mov r8, r8)
 80033a8:	4b37      	ldr	r3, [pc, #220]	; (8003488 <manage_response+0x150>)
 80033aa:	0018      	movs	r0, r3
 80033ac:	f7ff fb98 	bl	8002ae0 <LL_USART_IsActiveFlag_TC>
 80033b0:	1e03      	subs	r3, r0, #0
 80033b2:	d0f9      	beq.n	80033a8 <manage_response+0x70>
 80033b4:	1dbb      	adds	r3, r7, #6
 80033b6:	2200      	movs	r2, #0
 80033b8:	5e9b      	ldrsh	r3, [r3, r2]
 80033ba:	17da      	asrs	r2, r3, #31
 80033bc:	189b      	adds	r3, r3, r2
 80033be:	4053      	eors	r3, r2
 80033c0:	b29a      	uxth	r2, r3
 80033c2:	1dbb      	adds	r3, r7, #6
 80033c4:	801a      	strh	r2, [r3, #0]
 80033c6:	e020      	b.n	800340a <manage_response+0xd2>
 80033c8:	1dbb      	adds	r3, r7, #6
 80033ca:	2200      	movs	r2, #0
 80033cc:	5e9b      	ldrsh	r3, [r3, r2]
 80033ce:	210a      	movs	r1, #10
 80033d0:	0018      	movs	r0, r3
 80033d2:	f7fd f809 	bl	80003e8 <__aeabi_idivmod>
 80033d6:	000b      	movs	r3, r1
 80033d8:	b218      	sxth	r0, r3
 80033da:	240f      	movs	r4, #15
 80033dc:	193b      	adds	r3, r7, r4
 80033de:	2200      	movs	r2, #0
 80033e0:	569a      	ldrsb	r2, [r3, r2]
 80033e2:	b2d3      	uxtb	r3, r2
 80033e4:	3301      	adds	r3, #1
 80033e6:	b2d9      	uxtb	r1, r3
 80033e8:	193b      	adds	r3, r7, r4
 80033ea:	7019      	strb	r1, [r3, #0]
 80033ec:	0011      	movs	r1, r2
 80033ee:	b2c2      	uxtb	r2, r0
 80033f0:	4b26      	ldr	r3, [pc, #152]	; (800348c <manage_response+0x154>)
 80033f2:	185b      	adds	r3, r3, r1
 80033f4:	705a      	strb	r2, [r3, #1]
 80033f6:	1dbc      	adds	r4, r7, #6
 80033f8:	1dbb      	adds	r3, r7, #6
 80033fa:	2200      	movs	r2, #0
 80033fc:	5e9b      	ldrsh	r3, [r3, r2]
 80033fe:	210a      	movs	r1, #10
 8003400:	0018      	movs	r0, r3
 8003402:	f7fc ff0b 	bl	800021c <__divsi3>
 8003406:	0003      	movs	r3, r0
 8003408:	8023      	strh	r3, [r4, #0]
 800340a:	1dbb      	adds	r3, r7, #6
 800340c:	2200      	movs	r2, #0
 800340e:	5e9b      	ldrsh	r3, [r3, r2]
 8003410:	2b00      	cmp	r3, #0
 8003412:	d1d9      	bne.n	80033c8 <manage_response+0x90>
 8003414:	210f      	movs	r1, #15
 8003416:	187b      	adds	r3, r7, r1
 8003418:	781b      	ldrb	r3, [r3, #0]
 800341a:	b25b      	sxtb	r3, r3
 800341c:	2b00      	cmp	r3, #0
 800341e:	dd22      	ble.n	8003466 <manage_response+0x12e>
 8003420:	187b      	adds	r3, r7, r1
 8003422:	781b      	ldrb	r3, [r3, #0]
 8003424:	b25b      	sxtb	r3, r3
 8003426:	b2db      	uxtb	r3, r3
 8003428:	3b01      	subs	r3, #1
 800342a:	b2da      	uxtb	r2, r3
 800342c:	187b      	adds	r3, r7, r1
 800342e:	701a      	strb	r2, [r3, #0]
 8003430:	e019      	b.n	8003466 <manage_response+0x12e>
 8003432:	46c0      	nop			; (mov r8, r8)
 8003434:	4b14      	ldr	r3, [pc, #80]	; (8003488 <manage_response+0x150>)
 8003436:	0018      	movs	r0, r3
 8003438:	f7ff fb62 	bl	8002b00 <LL_USART_IsActiveFlag_TXE>
 800343c:	1e03      	subs	r3, r0, #0
 800343e:	d0f9      	beq.n	8003434 <manage_response+0xfc>
 8003440:	200f      	movs	r0, #15
 8003442:	183b      	adds	r3, r7, r0
 8003444:	2200      	movs	r2, #0
 8003446:	569a      	ldrsb	r2, [r3, r2]
 8003448:	b2d3      	uxtb	r3, r2
 800344a:	3b01      	subs	r3, #1
 800344c:	b2d9      	uxtb	r1, r3
 800344e:	183b      	adds	r3, r7, r0
 8003450:	7019      	strb	r1, [r3, #0]
 8003452:	4b0e      	ldr	r3, [pc, #56]	; (800348c <manage_response+0x154>)
 8003454:	189b      	adds	r3, r3, r2
 8003456:	785b      	ldrb	r3, [r3, #1]
 8003458:	3330      	adds	r3, #48	; 0x30
 800345a:	b2db      	uxtb	r3, r3
 800345c:	4a0a      	ldr	r2, [pc, #40]	; (8003488 <manage_response+0x150>)
 800345e:	0019      	movs	r1, r3
 8003460:	0010      	movs	r0, r2
 8003462:	f7ff fbb0 	bl	8002bc6 <LL_USART_TransmitData8>
 8003466:	230f      	movs	r3, #15
 8003468:	18fb      	adds	r3, r7, r3
 800346a:	781b      	ldrb	r3, [r3, #0]
 800346c:	2b7f      	cmp	r3, #127	; 0x7f
 800346e:	d9e0      	bls.n	8003432 <manage_response+0xfa>
 8003470:	46c0      	nop			; (mov r8, r8)
 8003472:	4b05      	ldr	r3, [pc, #20]	; (8003488 <manage_response+0x150>)
 8003474:	0018      	movs	r0, r3
 8003476:	f7ff fb33 	bl	8002ae0 <LL_USART_IsActiveFlag_TC>
 800347a:	1e03      	subs	r3, r0, #0
 800347c:	d0f9      	beq.n	8003472 <manage_response+0x13a>
 800347e:	46c0      	nop			; (mov r8, r8)
 8003480:	46bd      	mov	sp, r7
 8003482:	b005      	add	sp, #20
 8003484:	bd90      	pop	{r4, r7, pc}
 8003486:	46c0      	nop			; (mov r8, r8)
 8003488:	40013800 	.word	0x40013800
 800348c:	20000460 	.word	0x20000460

08003490 <manage_string>:
 8003490:	b580      	push	{r7, lr}
 8003492:	b084      	sub	sp, #16
 8003494:	af00      	add	r7, sp, #0
 8003496:	60f8      	str	r0, [r7, #12]
 8003498:	60b9      	str	r1, [r7, #8]
 800349a:	607a      	str	r2, [r7, #4]
 800349c:	68fb      	ldr	r3, [r7, #12]
 800349e:	b21b      	sxth	r3, r3
 80034a0:	0018      	movs	r0, r3
 80034a2:	f7ff ff49 	bl	8003338 <manage_response>
 80034a6:	202c      	movs	r0, #44	; 0x2c
 80034a8:	f7ff ff46 	bl	8003338 <manage_response>
 80034ac:	68bb      	ldr	r3, [r7, #8]
 80034ae:	b21b      	sxth	r3, r3
 80034b0:	0018      	movs	r0, r3
 80034b2:	f7ff ff41 	bl	8003338 <manage_response>
 80034b6:	202c      	movs	r0, #44	; 0x2c
 80034b8:	f7ff ff3e 	bl	8003338 <manage_response>
 80034bc:	687b      	ldr	r3, [r7, #4]
 80034be:	b21b      	sxth	r3, r3
 80034c0:	0018      	movs	r0, r3
 80034c2:	f7ff ff39 	bl	8003338 <manage_response>
 80034c6:	200a      	movs	r0, #10
 80034c8:	f7ff ff36 	bl	8003338 <manage_response>
 80034cc:	46c0      	nop			; (mov r8, r8)
 80034ce:	46bd      	mov	sp, r7
 80034d0:	b004      	add	sp, #16
 80034d2:	bd80      	pop	{r7, pc}

080034d4 <SysTick_Handler>:
 80034d4:	b580      	push	{r7, lr}
 80034d6:	af00      	add	r7, sp, #0
 80034d8:	4b06      	ldr	r3, [pc, #24]	; (80034f4 <SysTick_Handler+0x20>)
 80034da:	681a      	ldr	r2, [r3, #0]
 80034dc:	685b      	ldr	r3, [r3, #4]
 80034de:	0010      	movs	r0, r2
 80034e0:	0019      	movs	r1, r3
 80034e2:	f7fc ff87 	bl	80003f4 <__aeabi_d2uiz>
 80034e6:	0003      	movs	r3, r0
 80034e8:	0018      	movs	r0, r3
 80034ea:	f7ff fc79 	bl	8002de0 <dec_display>
 80034ee:	46c0      	nop			; (mov r8, r8)
 80034f0:	46bd      	mov	sp, r7
 80034f2:	bd80      	pop	{r7, pc}
 80034f4:	20000458 	.word	0x20000458

080034f8 <Conversation>:
 80034f8:	b5b0      	push	{r4, r5, r7, lr}
 80034fa:	b090      	sub	sp, #64	; 0x40
 80034fc:	af00      	add	r7, sp, #0
 80034fe:	60f8      	str	r0, [r7, #12]
 8003500:	60b9      	str	r1, [r7, #8]
 8003502:	2382      	movs	r3, #130	; 0x82
 8003504:	011b      	lsls	r3, r3, #4
 8003506:	68fa      	ldr	r2, [r7, #12]
 8003508:	1ad3      	subs	r3, r2, r3
 800350a:	0018      	movs	r0, r3
 800350c:	f7fe f8ec 	bl	80016e8 <__aeabi_ui2d>
 8003510:	2200      	movs	r2, #0
 8003512:	4b71      	ldr	r3, [pc, #452]	; (80036d8 <Conversation+0x1e0>)
 8003514:	f7fd fa82 	bl	8000a1c <__aeabi_dmul>
 8003518:	0002      	movs	r2, r0
 800351a:	000b      	movs	r3, r1
 800351c:	0014      	movs	r4, r2
 800351e:	001d      	movs	r5, r3
 8003520:	23f0      	movs	r3, #240	; 0xf0
 8003522:	015a      	lsls	r2, r3, #5
 8003524:	2382      	movs	r3, #130	; 0x82
 8003526:	011b      	lsls	r3, r3, #4
 8003528:	1ad3      	subs	r3, r2, r3
 800352a:	0018      	movs	r0, r3
 800352c:	f7fe f8dc 	bl	80016e8 <__aeabi_ui2d>
 8003530:	0002      	movs	r2, r0
 8003532:	000b      	movs	r3, r1
 8003534:	0020      	movs	r0, r4
 8003536:	0029      	movs	r1, r5
 8003538:	f7fc ff7a 	bl	8000430 <__aeabi_ddiv>
 800353c:	0002      	movs	r2, r0
 800353e:	000b      	movs	r3, r1
 8003540:	63ba      	str	r2, [r7, #56]	; 0x38
 8003542:	63fb      	str	r3, [r7, #60]	; 0x3c
 8003544:	23c8      	movs	r3, #200	; 0xc8
 8003546:	00db      	lsls	r3, r3, #3
 8003548:	68ba      	ldr	r2, [r7, #8]
 800354a:	1ad3      	subs	r3, r2, r3
 800354c:	0018      	movs	r0, r3
 800354e:	f7fe f8cb 	bl	80016e8 <__aeabi_ui2d>
 8003552:	2200      	movs	r2, #0
 8003554:	4b60      	ldr	r3, [pc, #384]	; (80036d8 <Conversation+0x1e0>)
 8003556:	f7fd fa61 	bl	8000a1c <__aeabi_dmul>
 800355a:	0002      	movs	r2, r0
 800355c:	000b      	movs	r3, r1
 800355e:	0014      	movs	r4, r2
 8003560:	001d      	movs	r5, r3
 8003562:	23f0      	movs	r3, #240	; 0xf0
 8003564:	015a      	lsls	r2, r3, #5
 8003566:	23c8      	movs	r3, #200	; 0xc8
 8003568:	00db      	lsls	r3, r3, #3
 800356a:	1ad3      	subs	r3, r2, r3
 800356c:	0018      	movs	r0, r3
 800356e:	f7fe f8bb 	bl	80016e8 <__aeabi_ui2d>
 8003572:	0002      	movs	r2, r0
 8003574:	000b      	movs	r3, r1
 8003576:	0020      	movs	r0, r4
 8003578:	0029      	movs	r1, r5
 800357a:	f7fc ff59 	bl	8000430 <__aeabi_ddiv>
 800357e:	0002      	movs	r2, r0
 8003580:	000b      	movs	r3, r1
 8003582:	633a      	str	r2, [r7, #48]	; 0x30
 8003584:	637b      	str	r3, [r7, #52]	; 0x34
 8003586:	4a55      	ldr	r2, [pc, #340]	; (80036dc <Conversation+0x1e4>)
 8003588:	4b55      	ldr	r3, [pc, #340]	; (80036e0 <Conversation+0x1e8>)
 800358a:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 800358c:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 800358e:	f7fd fa45 	bl	8000a1c <__aeabi_dmul>
 8003592:	0002      	movs	r2, r0
 8003594:	000b      	movs	r3, r1
 8003596:	62ba      	str	r2, [r7, #40]	; 0x28
 8003598:	62fb      	str	r3, [r7, #44]	; 0x2c
 800359a:	4a50      	ldr	r2, [pc, #320]	; (80036dc <Conversation+0x1e4>)
 800359c:	4b50      	ldr	r3, [pc, #320]	; (80036e0 <Conversation+0x1e8>)
 800359e:	6b38      	ldr	r0, [r7, #48]	; 0x30
 80035a0:	6b79      	ldr	r1, [r7, #52]	; 0x34
 80035a2:	f7fd fa3b 	bl	8000a1c <__aeabi_dmul>
 80035a6:	0002      	movs	r2, r0
 80035a8:	000b      	movs	r3, r1
 80035aa:	623a      	str	r2, [r7, #32]
 80035ac:	627b      	str	r3, [r7, #36]	; 0x24
 80035ae:	4b4d      	ldr	r3, [pc, #308]	; (80036e4 <Conversation+0x1ec>)
 80035b0:	681a      	ldr	r2, [r3, #0]
 80035b2:	685b      	ldr	r3, [r3, #4]
 80035b4:	0010      	movs	r0, r2
 80035b6:	0019      	movs	r1, r3
 80035b8:	f7fe f830 	bl	800161c <__aeabi_d2iz>
 80035bc:	0003      	movs	r3, r0
 80035be:	0018      	movs	r0, r3
 80035c0:	f7fe f862 	bl	8001688 <__aeabi_i2d>
 80035c4:	0004      	movs	r4, r0
 80035c6:	000d      	movs	r5, r1
 80035c8:	6a3a      	ldr	r2, [r7, #32]
 80035ca:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80035cc:	0010      	movs	r0, r2
 80035ce:	0019      	movs	r1, r3
 80035d0:	f000 fa84 	bl	8003adc <sin>
 80035d4:	0002      	movs	r2, r0
 80035d6:	000b      	movs	r3, r1
 80035d8:	0020      	movs	r0, r4
 80035da:	0029      	movs	r1, r5
 80035dc:	f7fd fa1e 	bl	8000a1c <__aeabi_dmul>
 80035e0:	0002      	movs	r2, r0
 80035e2:	000b      	movs	r3, r1
 80035e4:	0014      	movs	r4, r2
 80035e6:	001d      	movs	r5, r3
 80035e8:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80035ea:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80035ec:	0010      	movs	r0, r2
 80035ee:	0019      	movs	r1, r3
 80035f0:	f000 fa24 	bl	8003a3c <cos>
 80035f4:	0002      	movs	r2, r0
 80035f6:	000b      	movs	r3, r1
 80035f8:	0020      	movs	r0, r4
 80035fa:	0029      	movs	r1, r5
 80035fc:	f7fd fa0e 	bl	8000a1c <__aeabi_dmul>
 8003600:	0002      	movs	r2, r0
 8003602:	000b      	movs	r3, r1
 8003604:	0010      	movs	r0, r2
 8003606:	0019      	movs	r1, r3
 8003608:	f7fe f808 	bl	800161c <__aeabi_d2iz>
 800360c:	0003      	movs	r3, r0
 800360e:	61fb      	str	r3, [r7, #28]
 8003610:	4b34      	ldr	r3, [pc, #208]	; (80036e4 <Conversation+0x1ec>)
 8003612:	681a      	ldr	r2, [r3, #0]
 8003614:	685b      	ldr	r3, [r3, #4]
 8003616:	0010      	movs	r0, r2
 8003618:	0019      	movs	r1, r3
 800361a:	f7fd ffff 	bl	800161c <__aeabi_d2iz>
 800361e:	0003      	movs	r3, r0
 8003620:	0018      	movs	r0, r3
 8003622:	f7fe f831 	bl	8001688 <__aeabi_i2d>
 8003626:	0004      	movs	r4, r0
 8003628:	000d      	movs	r5, r1
 800362a:	6a3a      	ldr	r2, [r7, #32]
 800362c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800362e:	0010      	movs	r0, r2
 8003630:	0019      	movs	r1, r3
 8003632:	f000 fa53 	bl	8003adc <sin>
 8003636:	0002      	movs	r2, r0
 8003638:	000b      	movs	r3, r1
 800363a:	0020      	movs	r0, r4
 800363c:	0029      	movs	r1, r5
 800363e:	f7fd f9ed 	bl	8000a1c <__aeabi_dmul>
 8003642:	0002      	movs	r2, r0
 8003644:	000b      	movs	r3, r1
 8003646:	0014      	movs	r4, r2
 8003648:	001d      	movs	r5, r3
 800364a:	6aba      	ldr	r2, [r7, #40]	; 0x28
 800364c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800364e:	0010      	movs	r0, r2
 8003650:	0019      	movs	r1, r3
 8003652:	f000 fa43 	bl	8003adc <sin>
 8003656:	0002      	movs	r2, r0
 8003658:	000b      	movs	r3, r1
 800365a:	0020      	movs	r0, r4
 800365c:	0029      	movs	r1, r5
 800365e:	f7fd f9dd 	bl	8000a1c <__aeabi_dmul>
 8003662:	0002      	movs	r2, r0
 8003664:	000b      	movs	r3, r1
 8003666:	0010      	movs	r0, r2
 8003668:	0019      	movs	r1, r3
 800366a:	f7fd ffd7 	bl	800161c <__aeabi_d2iz>
 800366e:	0003      	movs	r3, r0
 8003670:	61bb      	str	r3, [r7, #24]
 8003672:	4b1c      	ldr	r3, [pc, #112]	; (80036e4 <Conversation+0x1ec>)
 8003674:	681a      	ldr	r2, [r3, #0]
 8003676:	685b      	ldr	r3, [r3, #4]
 8003678:	0010      	movs	r0, r2
 800367a:	0019      	movs	r1, r3
 800367c:	f7fd ffce 	bl	800161c <__aeabi_d2iz>
 8003680:	0003      	movs	r3, r0
 8003682:	0018      	movs	r0, r3
 8003684:	f7fe f800 	bl	8001688 <__aeabi_i2d>
 8003688:	0004      	movs	r4, r0
 800368a:	000d      	movs	r5, r1
 800368c:	6a3a      	ldr	r2, [r7, #32]
 800368e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8003690:	0010      	movs	r0, r2
 8003692:	0019      	movs	r1, r3
 8003694:	f000 f9d2 	bl	8003a3c <cos>
 8003698:	0002      	movs	r2, r0
 800369a:	000b      	movs	r3, r1
 800369c:	0011      	movs	r1, r2
 800369e:	6039      	str	r1, [r7, #0]
 80036a0:	2180      	movs	r1, #128	; 0x80
 80036a2:	0609      	lsls	r1, r1, #24
 80036a4:	4059      	eors	r1, r3
 80036a6:	6079      	str	r1, [r7, #4]
 80036a8:	683a      	ldr	r2, [r7, #0]
 80036aa:	687b      	ldr	r3, [r7, #4]
 80036ac:	0020      	movs	r0, r4
 80036ae:	0029      	movs	r1, r5
 80036b0:	f7fd f9b4 	bl	8000a1c <__aeabi_dmul>
 80036b4:	0002      	movs	r2, r0
 80036b6:	000b      	movs	r3, r1
 80036b8:	0010      	movs	r0, r2
 80036ba:	0019      	movs	r1, r3
 80036bc:	f7fd ffae 	bl	800161c <__aeabi_d2iz>
 80036c0:	0003      	movs	r3, r0
 80036c2:	617b      	str	r3, [r7, #20]
 80036c4:	697a      	ldr	r2, [r7, #20]
 80036c6:	69b9      	ldr	r1, [r7, #24]
 80036c8:	69fb      	ldr	r3, [r7, #28]
 80036ca:	0018      	movs	r0, r3
 80036cc:	f7ff fee0 	bl	8003490 <manage_string>
 80036d0:	46c0      	nop			; (mov r8, r8)
 80036d2:	46bd      	mov	sp, r7
 80036d4:	b010      	add	sp, #64	; 0x40
 80036d6:	bdb0      	pop	{r4, r5, r7, pc}
 80036d8:	40668000 	.word	0x40668000
 80036dc:	a2529d39 	.word	0xa2529d39
 80036e0:	3f91df46 	.word	0x3f91df46
 80036e4:	20000458 	.word	0x20000458

080036e8 <main>:
 80036e8:	b580      	push	{r7, lr}
 80036ea:	b084      	sub	sp, #16
 80036ec:	af00      	add	r7, sp, #0
 80036ee:	f7ff fad9 	bl	8002ca4 <rcc_config>
 80036f2:	f7ff fb0b 	bl	8002d0c <gpio_config>
 80036f6:	f7ff fc0f 	bl	8002f18 <sonar_trig>
 80036fa:	f7ff fc5f 	bl	8002fbc <sonar_echo>
 80036fe:	f7ff fcab 	bl	8003058 <servo_1>
 8003702:	f7ff fcf6 	bl	80030f2 <servo_2>
 8003706:	f7ff fd81 	bl	800320c <systick_config>
 800370a:	f7ff fd95 	bl	8003238 <usart_config>
 800370e:	230f      	movs	r3, #15
 8003710:	18fb      	adds	r3, r7, r3
 8003712:	2201      	movs	r2, #1
 8003714:	701a      	strb	r2, [r3, #0]
 8003716:	230f      	movs	r3, #15
 8003718:	18fb      	adds	r3, r7, r3
 800371a:	781b      	ldrb	r3, [r3, #0]
 800371c:	2b00      	cmp	r3, #0
 800371e:	d0fa      	beq.n	8003716 <main+0x2e>
 8003720:	230e      	movs	r3, #14
 8003722:	18fb      	adds	r3, r7, r3
 8003724:	2200      	movs	r2, #0
 8003726:	701a      	strb	r2, [r3, #0]
 8003728:	e064      	b.n	80037f4 <main+0x10c>
 800372a:	2382      	movs	r3, #130	; 0x82
 800372c:	011b      	lsls	r3, r3, #4
 800372e:	60bb      	str	r3, [r7, #8]
 8003730:	4b3f      	ldr	r3, [pc, #252]	; (8003830 <main+0x148>)
 8003732:	607b      	str	r3, [r7, #4]
 8003734:	e054      	b.n	80037e0 <main+0xf8>
 8003736:	687a      	ldr	r2, [r7, #4]
 8003738:	2380      	movs	r3, #128	; 0x80
 800373a:	05db      	lsls	r3, r3, #23
 800373c:	0011      	movs	r1, r2
 800373e:	0018      	movs	r0, r3
 8003740:	f7ff f816 	bl	8002770 <LL_TIM_OC_SetCompareCH2>
 8003744:	4b3b      	ldr	r3, [pc, #236]	; (8003834 <main+0x14c>)
 8003746:	781b      	ldrb	r3, [r3, #0]
 8003748:	2b00      	cmp	r3, #0
 800374a:	d03d      	beq.n	80037c8 <main+0xe0>
 800374c:	e019      	b.n	8003782 <main+0x9a>
 800374e:	4b3a      	ldr	r3, [pc, #232]	; (8003838 <main+0x150>)
 8003750:	0018      	movs	r0, r3
 8003752:	f7fe ff3f 	bl	80025d4 <LL_TIM_GetCounter>
 8003756:	0003      	movs	r3, r0
 8003758:	4a38      	ldr	r2, [pc, #224]	; (800383c <main+0x154>)
 800375a:	4293      	cmp	r3, r2
 800375c:	d800      	bhi.n	8003760 <main+0x78>
 800375e:	e010      	b.n	8003782 <main+0x9a>
 8003760:	687a      	ldr	r2, [r7, #4]
 8003762:	68bb      	ldr	r3, [r7, #8]
 8003764:	0011      	movs	r1, r2
 8003766:	0018      	movs	r0, r3
 8003768:	f7ff fec6 	bl	80034f8 <Conversation>
 800376c:	68ba      	ldr	r2, [r7, #8]
 800376e:	2380      	movs	r3, #128	; 0x80
 8003770:	05db      	lsls	r3, r3, #23
 8003772:	0011      	movs	r1, r2
 8003774:	0018      	movs	r0, r3
 8003776:	f7fe ffef 	bl	8002758 <LL_TIM_OC_SetCompareCH1>
 800377a:	223c      	movs	r2, #60	; 0x3c
 800377c:	68bb      	ldr	r3, [r7, #8]
 800377e:	189b      	adds	r3, r3, r2
 8003780:	60bb      	str	r3, [r7, #8]
 8003782:	23f0      	movs	r3, #240	; 0xf0
 8003784:	015b      	lsls	r3, r3, #5
 8003786:	68ba      	ldr	r2, [r7, #8]
 8003788:	429a      	cmp	r2, r3
 800378a:	d9e0      	bls.n	800374e <main+0x66>
 800378c:	4b29      	ldr	r3, [pc, #164]	; (8003834 <main+0x14c>)
 800378e:	2200      	movs	r2, #0
 8003790:	701a      	strb	r2, [r3, #0]
 8003792:	e021      	b.n	80037d8 <main+0xf0>
 8003794:	4b28      	ldr	r3, [pc, #160]	; (8003838 <main+0x150>)
 8003796:	0018      	movs	r0, r3
 8003798:	f7fe ff1c 	bl	80025d4 <LL_TIM_GetCounter>
 800379c:	0003      	movs	r3, r0
 800379e:	4a27      	ldr	r2, [pc, #156]	; (800383c <main+0x154>)
 80037a0:	4293      	cmp	r3, r2
 80037a2:	d800      	bhi.n	80037a6 <main+0xbe>
 80037a4:	e010      	b.n	80037c8 <main+0xe0>
 80037a6:	687a      	ldr	r2, [r7, #4]
 80037a8:	68bb      	ldr	r3, [r7, #8]
 80037aa:	0011      	movs	r1, r2
 80037ac:	0018      	movs	r0, r3
 80037ae:	f7ff fea3 	bl	80034f8 <Conversation>
 80037b2:	68ba      	ldr	r2, [r7, #8]
 80037b4:	2380      	movs	r3, #128	; 0x80
 80037b6:	05db      	lsls	r3, r3, #23
 80037b8:	0011      	movs	r1, r2
 80037ba:	0018      	movs	r0, r3
 80037bc:	f7fe ffcc 	bl	8002758 <LL_TIM_OC_SetCompareCH1>
 80037c0:	223c      	movs	r2, #60	; 0x3c
 80037c2:	68bb      	ldr	r3, [r7, #8]
 80037c4:	1a9b      	subs	r3, r3, r2
 80037c6:	60bb      	str	r3, [r7, #8]
 80037c8:	2382      	movs	r3, #130	; 0x82
 80037ca:	011b      	lsls	r3, r3, #4
 80037cc:	68ba      	ldr	r2, [r7, #8]
 80037ce:	429a      	cmp	r2, r3
 80037d0:	d2e0      	bcs.n	8003794 <main+0xac>
 80037d2:	4b18      	ldr	r3, [pc, #96]	; (8003834 <main+0x14c>)
 80037d4:	2201      	movs	r2, #1
 80037d6:	701a      	strb	r2, [r3, #0]
 80037d8:	225a      	movs	r2, #90	; 0x5a
 80037da:	687b      	ldr	r3, [r7, #4]
 80037dc:	189b      	adds	r3, r3, r2
 80037de:	607b      	str	r3, [r7, #4]
 80037e0:	4a17      	ldr	r2, [pc, #92]	; (8003840 <main+0x158>)
 80037e2:	687b      	ldr	r3, [r7, #4]
 80037e4:	4293      	cmp	r3, r2
 80037e6:	d9a6      	bls.n	8003736 <main+0x4e>
 80037e8:	210e      	movs	r1, #14
 80037ea:	187b      	adds	r3, r7, r1
 80037ec:	781a      	ldrb	r2, [r3, #0]
 80037ee:	187b      	adds	r3, r7, r1
 80037f0:	3201      	adds	r2, #1
 80037f2:	701a      	strb	r2, [r3, #0]
 80037f4:	4b13      	ldr	r3, [pc, #76]	; (8003844 <main+0x15c>)
 80037f6:	781b      	ldrb	r3, [r3, #0]
 80037f8:	220e      	movs	r2, #14
 80037fa:	18ba      	adds	r2, r7, r2
 80037fc:	7812      	ldrb	r2, [r2, #0]
 80037fe:	429a      	cmp	r2, r3
 8003800:	d393      	bcc.n	800372a <main+0x42>
 8003802:	2382      	movs	r3, #130	; 0x82
 8003804:	011a      	lsls	r2, r3, #4
 8003806:	2380      	movs	r3, #128	; 0x80
 8003808:	05db      	lsls	r3, r3, #23
 800380a:	0011      	movs	r1, r2
 800380c:	0018      	movs	r0, r3
 800380e:	f7fe ffa3 	bl	8002758 <LL_TIM_OC_SetCompareCH1>
 8003812:	4a07      	ldr	r2, [pc, #28]	; (8003830 <main+0x148>)
 8003814:	2380      	movs	r3, #128	; 0x80
 8003816:	05db      	lsls	r3, r3, #23
 8003818:	0011      	movs	r1, r2
 800381a:	0018      	movs	r0, r3
 800381c:	f7fe ffa8 	bl	8002770 <LL_TIM_OC_SetCompareCH2>
 8003820:	202a      	movs	r0, #42	; 0x2a
 8003822:	f7ff fd89 	bl	8003338 <manage_response>
 8003826:	230f      	movs	r3, #15
 8003828:	18fb      	adds	r3, r7, r3
 800382a:	2200      	movs	r2, #0
 800382c:	701a      	strb	r2, [r3, #0]
 800382e:	e772      	b.n	8003716 <main+0x2e>
 8003830:	00000e2b 	.word	0x00000e2b
 8003834:	20000000 	.word	0x20000000
 8003838:	40002000 	.word	0x40002000
 800383c:	0000e9fb 	.word	0x0000e9fb
 8003840:	00001a0b 	.word	0x00001a0b
 8003844:	20000001 	.word	0x20000001

08003848 <SystemInit>:
 8003848:	b580      	push	{r7, lr}
 800384a:	af00      	add	r7, sp, #0
 800384c:	4b1a      	ldr	r3, [pc, #104]	; (80038b8 <SystemInit+0x70>)
 800384e:	681a      	ldr	r2, [r3, #0]
 8003850:	4b19      	ldr	r3, [pc, #100]	; (80038b8 <SystemInit+0x70>)
 8003852:	2101      	movs	r1, #1
 8003854:	430a      	orrs	r2, r1
 8003856:	601a      	str	r2, [r3, #0]
 8003858:	4b17      	ldr	r3, [pc, #92]	; (80038b8 <SystemInit+0x70>)
 800385a:	685a      	ldr	r2, [r3, #4]
 800385c:	4b16      	ldr	r3, [pc, #88]	; (80038b8 <SystemInit+0x70>)
 800385e:	4917      	ldr	r1, [pc, #92]	; (80038bc <SystemInit+0x74>)
 8003860:	400a      	ands	r2, r1
 8003862:	605a      	str	r2, [r3, #4]
 8003864:	4b14      	ldr	r3, [pc, #80]	; (80038b8 <SystemInit+0x70>)
 8003866:	681a      	ldr	r2, [r3, #0]
 8003868:	4b13      	ldr	r3, [pc, #76]	; (80038b8 <SystemInit+0x70>)
 800386a:	4915      	ldr	r1, [pc, #84]	; (80038c0 <SystemInit+0x78>)
 800386c:	400a      	ands	r2, r1
 800386e:	601a      	str	r2, [r3, #0]
 8003870:	4b11      	ldr	r3, [pc, #68]	; (80038b8 <SystemInit+0x70>)
 8003872:	681a      	ldr	r2, [r3, #0]
 8003874:	4b10      	ldr	r3, [pc, #64]	; (80038b8 <SystemInit+0x70>)
 8003876:	4913      	ldr	r1, [pc, #76]	; (80038c4 <SystemInit+0x7c>)
 8003878:	400a      	ands	r2, r1
 800387a:	601a      	str	r2, [r3, #0]
 800387c:	4b0e      	ldr	r3, [pc, #56]	; (80038b8 <SystemInit+0x70>)
 800387e:	685a      	ldr	r2, [r3, #4]
 8003880:	4b0d      	ldr	r3, [pc, #52]	; (80038b8 <SystemInit+0x70>)
 8003882:	4911      	ldr	r1, [pc, #68]	; (80038c8 <SystemInit+0x80>)
 8003884:	400a      	ands	r2, r1
 8003886:	605a      	str	r2, [r3, #4]
 8003888:	4b0b      	ldr	r3, [pc, #44]	; (80038b8 <SystemInit+0x70>)
 800388a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800388c:	4b0a      	ldr	r3, [pc, #40]	; (80038b8 <SystemInit+0x70>)
 800388e:	210f      	movs	r1, #15
 8003890:	438a      	bics	r2, r1
 8003892:	62da      	str	r2, [r3, #44]	; 0x2c
 8003894:	4b08      	ldr	r3, [pc, #32]	; (80038b8 <SystemInit+0x70>)
 8003896:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8003898:	4b07      	ldr	r3, [pc, #28]	; (80038b8 <SystemInit+0x70>)
 800389a:	490c      	ldr	r1, [pc, #48]	; (80038cc <SystemInit+0x84>)
 800389c:	400a      	ands	r2, r1
 800389e:	631a      	str	r2, [r3, #48]	; 0x30
 80038a0:	4b05      	ldr	r3, [pc, #20]	; (80038b8 <SystemInit+0x70>)
 80038a2:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 80038a4:	4b04      	ldr	r3, [pc, #16]	; (80038b8 <SystemInit+0x70>)
 80038a6:	2101      	movs	r1, #1
 80038a8:	438a      	bics	r2, r1
 80038aa:	635a      	str	r2, [r3, #52]	; 0x34
 80038ac:	4b02      	ldr	r3, [pc, #8]	; (80038b8 <SystemInit+0x70>)
 80038ae:	2200      	movs	r2, #0
 80038b0:	609a      	str	r2, [r3, #8]
 80038b2:	46c0      	nop			; (mov r8, r8)
 80038b4:	46bd      	mov	sp, r7
 80038b6:	bd80      	pop	{r7, pc}
 80038b8:	40021000 	.word	0x40021000
 80038bc:	f8ffb80c 	.word	0xf8ffb80c
 80038c0:	fef6ffff 	.word	0xfef6ffff
 80038c4:	fffbffff 	.word	0xfffbffff
 80038c8:	ffc0ffff 	.word	0xffc0ffff
 80038cc:	fffffeac 	.word	0xfffffeac

080038d0 <NMI_Handler>:
 80038d0:	b580      	push	{r7, lr}
 80038d2:	af00      	add	r7, sp, #0
 80038d4:	46c0      	nop			; (mov r8, r8)
 80038d6:	46bd      	mov	sp, r7
 80038d8:	bd80      	pop	{r7, pc}

080038da <HardFault_Handler>:
 80038da:	b580      	push	{r7, lr}
 80038dc:	af00      	add	r7, sp, #0
 80038de:	e7fe      	b.n	80038de <HardFault_Handler+0x4>

080038e0 <SVC_Handler>:
 80038e0:	b580      	push	{r7, lr}
 80038e2:	af00      	add	r7, sp, #0
 80038e4:	46c0      	nop			; (mov r8, r8)
 80038e6:	46bd      	mov	sp, r7
 80038e8:	bd80      	pop	{r7, pc}

080038ea <PendSV_Handler>:
 80038ea:	b580      	push	{r7, lr}
 80038ec:	af00      	add	r7, sp, #0
 80038ee:	46c0      	nop			; (mov r8, r8)
 80038f0:	46bd      	mov	sp, r7
 80038f2:	bd80      	pop	{r7, pc}

080038f4 <__libc_init_array>:
 80038f4:	b570      	push	{r4, r5, r6, lr}
 80038f6:	4d0c      	ldr	r5, [pc, #48]	; (8003928 <__libc_init_array+0x34>)
 80038f8:	4e0c      	ldr	r6, [pc, #48]	; (800392c <__libc_init_array+0x38>)
 80038fa:	1b76      	subs	r6, r6, r5
 80038fc:	10b6      	asrs	r6, r6, #2
 80038fe:	d005      	beq.n	800390c <__libc_init_array+0x18>
 8003900:	2400      	movs	r4, #0
 8003902:	cd08      	ldmia	r5!, {r3}
 8003904:	3401      	adds	r4, #1
 8003906:	4798      	blx	r3
 8003908:	42a6      	cmp	r6, r4
 800390a:	d1fa      	bne.n	8003902 <__libc_init_array+0xe>
 800390c:	f001 fa8e 	bl	8004e2c <_init>
 8003910:	4d07      	ldr	r5, [pc, #28]	; (8003930 <__libc_init_array+0x3c>)
 8003912:	4e08      	ldr	r6, [pc, #32]	; (8003934 <__libc_init_array+0x40>)
 8003914:	1b76      	subs	r6, r6, r5
 8003916:	10b6      	asrs	r6, r6, #2
 8003918:	d005      	beq.n	8003926 <__libc_init_array+0x32>
 800391a:	2400      	movs	r4, #0
 800391c:	cd08      	ldmia	r5!, {r3}
 800391e:	3401      	adds	r4, #1
 8003920:	4798      	blx	r3
 8003922:	42a6      	cmp	r6, r4
 8003924:	d1fa      	bne.n	800391c <__libc_init_array+0x28>
 8003926:	bd70      	pop	{r4, r5, r6, pc}
 8003928:	080050d8 	.word	0x080050d8
 800392c:	080050d8 	.word	0x080050d8
 8003930:	080050d8 	.word	0x080050d8
 8003934:	080050e0 	.word	0x080050e0

08003938 <register_fini>:
 8003938:	4b03      	ldr	r3, [pc, #12]	; (8003948 <register_fini+0x10>)
 800393a:	b510      	push	{r4, lr}
 800393c:	2b00      	cmp	r3, #0
 800393e:	d002      	beq.n	8003946 <register_fini+0xe>
 8003940:	4802      	ldr	r0, [pc, #8]	; (800394c <register_fini+0x14>)
 8003942:	f000 f805 	bl	8003950 <atexit>
 8003946:	bd10      	pop	{r4, pc}
 8003948:	00000000 	.word	0x00000000
 800394c:	08003961 	.word	0x08003961

08003950 <atexit>:
 8003950:	b510      	push	{r4, lr}
 8003952:	0001      	movs	r1, r0
 8003954:	2300      	movs	r3, #0
 8003956:	2200      	movs	r2, #0
 8003958:	2000      	movs	r0, #0
 800395a:	f000 f819 	bl	8003990 <__register_exitproc>
 800395e:	bd10      	pop	{r4, pc}

08003960 <__libc_fini_array>:
 8003960:	b570      	push	{r4, r5, r6, lr}
 8003962:	4d07      	ldr	r5, [pc, #28]	; (8003980 <__libc_fini_array+0x20>)
 8003964:	4c07      	ldr	r4, [pc, #28]	; (8003984 <__libc_fini_array+0x24>)
 8003966:	1b64      	subs	r4, r4, r5
 8003968:	10a4      	asrs	r4, r4, #2
 800396a:	d005      	beq.n	8003978 <__libc_fini_array+0x18>
 800396c:	3c01      	subs	r4, #1
 800396e:	00a3      	lsls	r3, r4, #2
 8003970:	58eb      	ldr	r3, [r5, r3]
 8003972:	4798      	blx	r3
 8003974:	2c00      	cmp	r4, #0
 8003976:	d1f9      	bne.n	800396c <__libc_fini_array+0xc>
 8003978:	f001 fa5e 	bl	8004e38 <_fini>
 800397c:	bd70      	pop	{r4, r5, r6, pc}
 800397e:	46c0      	nop			; (mov r8, r8)
 8003980:	080050e0 	.word	0x080050e0
 8003984:	080050e4 	.word	0x080050e4

08003988 <__retarget_lock_acquire_recursive>:
 8003988:	4770      	bx	lr
 800398a:	46c0      	nop			; (mov r8, r8)

0800398c <__retarget_lock_release_recursive>:
 800398c:	4770      	bx	lr
 800398e:	46c0      	nop			; (mov r8, r8)

08003990 <__register_exitproc>:
 8003990:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003992:	46d6      	mov	lr, sl
 8003994:	464f      	mov	r7, r9
 8003996:	4646      	mov	r6, r8
 8003998:	b5c0      	push	{r6, r7, lr}
 800399a:	4f26      	ldr	r7, [pc, #152]	; (8003a34 <__register_exitproc+0xa4>)
 800399c:	b082      	sub	sp, #8
 800399e:	0006      	movs	r6, r0
 80039a0:	6838      	ldr	r0, [r7, #0]
 80039a2:	4692      	mov	sl, r2
 80039a4:	4698      	mov	r8, r3
 80039a6:	4689      	mov	r9, r1
 80039a8:	f7ff ffee 	bl	8003988 <__retarget_lock_acquire_recursive>
 80039ac:	4b22      	ldr	r3, [pc, #136]	; (8003a38 <__register_exitproc+0xa8>)
 80039ae:	681b      	ldr	r3, [r3, #0]
 80039b0:	9301      	str	r3, [sp, #4]
 80039b2:	23a4      	movs	r3, #164	; 0xa4
 80039b4:	9a01      	ldr	r2, [sp, #4]
 80039b6:	005b      	lsls	r3, r3, #1
 80039b8:	58d5      	ldr	r5, [r2, r3]
 80039ba:	2d00      	cmp	r5, #0
 80039bc:	d02e      	beq.n	8003a1c <__register_exitproc+0x8c>
 80039be:	686c      	ldr	r4, [r5, #4]
 80039c0:	2c1f      	cmp	r4, #31
 80039c2:	dc30      	bgt.n	8003a26 <__register_exitproc+0x96>
 80039c4:	2e00      	cmp	r6, #0
 80039c6:	d10f      	bne.n	80039e8 <__register_exitproc+0x58>
 80039c8:	1c63      	adds	r3, r4, #1
 80039ca:	606b      	str	r3, [r5, #4]
 80039cc:	464b      	mov	r3, r9
 80039ce:	3402      	adds	r4, #2
 80039d0:	00a4      	lsls	r4, r4, #2
 80039d2:	6838      	ldr	r0, [r7, #0]
 80039d4:	5163      	str	r3, [r4, r5]
 80039d6:	f7ff ffd9 	bl	800398c <__retarget_lock_release_recursive>
 80039da:	2000      	movs	r0, #0
 80039dc:	b002      	add	sp, #8
 80039de:	bce0      	pop	{r5, r6, r7}
 80039e0:	46ba      	mov	sl, r7
 80039e2:	46b1      	mov	r9, r6
 80039e4:	46a8      	mov	r8, r5
 80039e6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80039e8:	2288      	movs	r2, #136	; 0x88
 80039ea:	4651      	mov	r1, sl
 80039ec:	0028      	movs	r0, r5
 80039ee:	00a3      	lsls	r3, r4, #2
 80039f0:	18eb      	adds	r3, r5, r3
 80039f2:	5099      	str	r1, [r3, r2]
 80039f4:	3a87      	subs	r2, #135	; 0x87
 80039f6:	40a2      	lsls	r2, r4
 80039f8:	3089      	adds	r0, #137	; 0x89
 80039fa:	30ff      	adds	r0, #255	; 0xff
 80039fc:	6801      	ldr	r1, [r0, #0]
 80039fe:	4311      	orrs	r1, r2
 8003a00:	6001      	str	r1, [r0, #0]
 8003a02:	2184      	movs	r1, #132	; 0x84
 8003a04:	4640      	mov	r0, r8
 8003a06:	0049      	lsls	r1, r1, #1
 8003a08:	5058      	str	r0, [r3, r1]
 8003a0a:	2e02      	cmp	r6, #2
 8003a0c:	d1dc      	bne.n	80039c8 <__register_exitproc+0x38>
 8003a0e:	002b      	movs	r3, r5
 8003a10:	338d      	adds	r3, #141	; 0x8d
 8003a12:	33ff      	adds	r3, #255	; 0xff
 8003a14:	6819      	ldr	r1, [r3, #0]
 8003a16:	430a      	orrs	r2, r1
 8003a18:	601a      	str	r2, [r3, #0]
 8003a1a:	e7d5      	b.n	80039c8 <__register_exitproc+0x38>
 8003a1c:	0015      	movs	r5, r2
 8003a1e:	354d      	adds	r5, #77	; 0x4d
 8003a20:	35ff      	adds	r5, #255	; 0xff
 8003a22:	50d5      	str	r5, [r2, r3]
 8003a24:	e7cb      	b.n	80039be <__register_exitproc+0x2e>
 8003a26:	6838      	ldr	r0, [r7, #0]
 8003a28:	f7ff ffb0 	bl	800398c <__retarget_lock_release_recursive>
 8003a2c:	2001      	movs	r0, #1
 8003a2e:	4240      	negs	r0, r0
 8003a30:	e7d4      	b.n	80039dc <__register_exitproc+0x4c>
 8003a32:	46c0      	nop			; (mov r8, r8)
 8003a34:	20000430 	.word	0x20000430
 8003a38:	08004efc 	.word	0x08004efc

08003a3c <cos>:
 8003a3c:	b5d0      	push	{r4, r6, r7, lr}
 8003a3e:	4a25      	ldr	r2, [pc, #148]	; (8003ad4 <cos+0x98>)
 8003a40:	004b      	lsls	r3, r1, #1
 8003a42:	b086      	sub	sp, #24
 8003a44:	085b      	lsrs	r3, r3, #1
 8003a46:	4293      	cmp	r3, r2
 8003a48:	dd22      	ble.n	8003a90 <cos+0x54>
 8003a4a:	4a23      	ldr	r2, [pc, #140]	; (8003ad8 <cos+0x9c>)
 8003a4c:	4293      	cmp	r3, r2
 8003a4e:	dd09      	ble.n	8003a64 <cos+0x28>
 8003a50:	0002      	movs	r2, r0
 8003a52:	000b      	movs	r3, r1
 8003a54:	f7fd fa50 	bl	8000ef8 <__aeabi_dsub>
 8003a58:	0002      	movs	r2, r0
 8003a5a:	000b      	movs	r3, r1
 8003a5c:	0010      	movs	r0, r2
 8003a5e:	0019      	movs	r1, r3
 8003a60:	b006      	add	sp, #24
 8003a62:	bdd0      	pop	{r4, r6, r7, pc}
 8003a64:	aa02      	add	r2, sp, #8
 8003a66:	f000 f88b 	bl	8003b80 <__ieee754_rem_pio2>
 8003a6a:	2303      	movs	r3, #3
 8003a6c:	4018      	ands	r0, r3
 8003a6e:	9a04      	ldr	r2, [sp, #16]
 8003a70:	9b05      	ldr	r3, [sp, #20]
 8003a72:	2801      	cmp	r0, #1
 8003a74:	d013      	beq.n	8003a9e <cos+0x62>
 8003a76:	2802      	cmp	r0, #2
 8003a78:	d022      	beq.n	8003ac0 <cos+0x84>
 8003a7a:	2800      	cmp	r0, #0
 8003a7c:	d019      	beq.n	8003ab2 <cos+0x76>
 8003a7e:	9802      	ldr	r0, [sp, #8]
 8003a80:	9903      	ldr	r1, [sp, #12]
 8003a82:	2401      	movs	r4, #1
 8003a84:	9400      	str	r4, [sp, #0]
 8003a86:	f000 ffff 	bl	8004a88 <__kernel_sin>
 8003a8a:	0002      	movs	r2, r0
 8003a8c:	000b      	movs	r3, r1
 8003a8e:	e7e5      	b.n	8003a5c <cos+0x20>
 8003a90:	2200      	movs	r2, #0
 8003a92:	2300      	movs	r3, #0
 8003a94:	f000 fa7c 	bl	8003f90 <__kernel_cos>
 8003a98:	0002      	movs	r2, r0
 8003a9a:	000b      	movs	r3, r1
 8003a9c:	e7de      	b.n	8003a5c <cos+0x20>
 8003a9e:	9000      	str	r0, [sp, #0]
 8003aa0:	9802      	ldr	r0, [sp, #8]
 8003aa2:	9903      	ldr	r1, [sp, #12]
 8003aa4:	f000 fff0 	bl	8004a88 <__kernel_sin>
 8003aa8:	2380      	movs	r3, #128	; 0x80
 8003aaa:	061b      	lsls	r3, r3, #24
 8003aac:	0002      	movs	r2, r0
 8003aae:	18cb      	adds	r3, r1, r3
 8003ab0:	e7d4      	b.n	8003a5c <cos+0x20>
 8003ab2:	9802      	ldr	r0, [sp, #8]
 8003ab4:	9903      	ldr	r1, [sp, #12]
 8003ab6:	f000 fa6b 	bl	8003f90 <__kernel_cos>
 8003aba:	0002      	movs	r2, r0
 8003abc:	000b      	movs	r3, r1
 8003abe:	e7cd      	b.n	8003a5c <cos+0x20>
 8003ac0:	9802      	ldr	r0, [sp, #8]
 8003ac2:	9903      	ldr	r1, [sp, #12]
 8003ac4:	f000 fa64 	bl	8003f90 <__kernel_cos>
 8003ac8:	2380      	movs	r3, #128	; 0x80
 8003aca:	061b      	lsls	r3, r3, #24
 8003acc:	0002      	movs	r2, r0
 8003ace:	18cb      	adds	r3, r1, r3
 8003ad0:	e7c4      	b.n	8003a5c <cos+0x20>
 8003ad2:	46c0      	nop			; (mov r8, r8)
 8003ad4:	3fe921fb 	.word	0x3fe921fb
 8003ad8:	7fefffff 	.word	0x7fefffff

08003adc <sin>:
 8003adc:	b5d0      	push	{r4, r6, r7, lr}
 8003ade:	4a26      	ldr	r2, [pc, #152]	; (8003b78 <sin+0x9c>)
 8003ae0:	004b      	lsls	r3, r1, #1
 8003ae2:	b086      	sub	sp, #24
 8003ae4:	085b      	lsrs	r3, r3, #1
 8003ae6:	4293      	cmp	r3, r2
 8003ae8:	dd22      	ble.n	8003b30 <sin+0x54>
 8003aea:	4a24      	ldr	r2, [pc, #144]	; (8003b7c <sin+0xa0>)
 8003aec:	4293      	cmp	r3, r2
 8003aee:	dd09      	ble.n	8003b04 <sin+0x28>
 8003af0:	0002      	movs	r2, r0
 8003af2:	000b      	movs	r3, r1
 8003af4:	f7fd fa00 	bl	8000ef8 <__aeabi_dsub>
 8003af8:	0002      	movs	r2, r0
 8003afa:	000b      	movs	r3, r1
 8003afc:	0010      	movs	r0, r2
 8003afe:	0019      	movs	r1, r3
 8003b00:	b006      	add	sp, #24
 8003b02:	bdd0      	pop	{r4, r6, r7, pc}
 8003b04:	aa02      	add	r2, sp, #8
 8003b06:	f000 f83b 	bl	8003b80 <__ieee754_rem_pio2>
 8003b0a:	2303      	movs	r3, #3
 8003b0c:	4018      	ands	r0, r3
 8003b0e:	9a04      	ldr	r2, [sp, #16]
 8003b10:	9b05      	ldr	r3, [sp, #20]
 8003b12:	2801      	cmp	r0, #1
 8003b14:	d015      	beq.n	8003b42 <sin+0x66>
 8003b16:	2802      	cmp	r0, #2
 8003b18:	d023      	beq.n	8003b62 <sin+0x86>
 8003b1a:	2800      	cmp	r0, #0
 8003b1c:	d018      	beq.n	8003b50 <sin+0x74>
 8003b1e:	9802      	ldr	r0, [sp, #8]
 8003b20:	9903      	ldr	r1, [sp, #12]
 8003b22:	f000 fa35 	bl	8003f90 <__kernel_cos>
 8003b26:	2380      	movs	r3, #128	; 0x80
 8003b28:	061b      	lsls	r3, r3, #24
 8003b2a:	0002      	movs	r2, r0
 8003b2c:	18cb      	adds	r3, r1, r3
 8003b2e:	e7e5      	b.n	8003afc <sin+0x20>
 8003b30:	2300      	movs	r3, #0
 8003b32:	2200      	movs	r2, #0
 8003b34:	9300      	str	r3, [sp, #0]
 8003b36:	2300      	movs	r3, #0
 8003b38:	f000 ffa6 	bl	8004a88 <__kernel_sin>
 8003b3c:	0002      	movs	r2, r0
 8003b3e:	000b      	movs	r3, r1
 8003b40:	e7dc      	b.n	8003afc <sin+0x20>
 8003b42:	9802      	ldr	r0, [sp, #8]
 8003b44:	9903      	ldr	r1, [sp, #12]
 8003b46:	f000 fa23 	bl	8003f90 <__kernel_cos>
 8003b4a:	0002      	movs	r2, r0
 8003b4c:	000b      	movs	r3, r1
 8003b4e:	e7d5      	b.n	8003afc <sin+0x20>
 8003b50:	2401      	movs	r4, #1
 8003b52:	9802      	ldr	r0, [sp, #8]
 8003b54:	9903      	ldr	r1, [sp, #12]
 8003b56:	9400      	str	r4, [sp, #0]
 8003b58:	f000 ff96 	bl	8004a88 <__kernel_sin>
 8003b5c:	0002      	movs	r2, r0
 8003b5e:	000b      	movs	r3, r1
 8003b60:	e7cc      	b.n	8003afc <sin+0x20>
 8003b62:	2401      	movs	r4, #1
 8003b64:	9802      	ldr	r0, [sp, #8]
 8003b66:	9903      	ldr	r1, [sp, #12]
 8003b68:	9400      	str	r4, [sp, #0]
 8003b6a:	f000 ff8d 	bl	8004a88 <__kernel_sin>
 8003b6e:	2380      	movs	r3, #128	; 0x80
 8003b70:	061b      	lsls	r3, r3, #24
 8003b72:	0002      	movs	r2, r0
 8003b74:	18cb      	adds	r3, r1, r3
 8003b76:	e7c1      	b.n	8003afc <sin+0x20>
 8003b78:	3fe921fb 	.word	0x3fe921fb
 8003b7c:	7fefffff 	.word	0x7fefffff

08003b80 <__ieee754_rem_pio2>:
 8003b80:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003b82:	464e      	mov	r6, r9
 8003b84:	4657      	mov	r7, sl
 8003b86:	46de      	mov	lr, fp
 8003b88:	4645      	mov	r5, r8
 8003b8a:	b5e0      	push	{r5, r6, r7, lr}
 8003b8c:	4bdf      	ldr	r3, [pc, #892]	; (8003f0c <__ieee754_rem_pio2+0x38c>)
 8003b8e:	004e      	lsls	r6, r1, #1
 8003b90:	0017      	movs	r7, r2
 8003b92:	4689      	mov	r9, r1
 8003b94:	b08f      	sub	sp, #60	; 0x3c
 8003b96:	0876      	lsrs	r6, r6, #1
 8003b98:	429e      	cmp	r6, r3
 8003b9a:	dc00      	bgt.n	8003b9e <__ieee754_rem_pio2+0x1e>
 8003b9c:	e08b      	b.n	8003cb6 <__ieee754_rem_pio2+0x136>
 8003b9e:	4bdc      	ldr	r3, [pc, #880]	; (8003f10 <__ieee754_rem_pio2+0x390>)
 8003ba0:	429e      	cmp	r6, r3
 8003ba2:	dc28      	bgt.n	8003bf6 <__ieee754_rem_pio2+0x76>
 8003ba4:	4adb      	ldr	r2, [pc, #876]	; (8003f14 <__ieee754_rem_pio2+0x394>)
 8003ba6:	2900      	cmp	r1, #0
 8003ba8:	dc00      	bgt.n	8003bac <__ieee754_rem_pio2+0x2c>
 8003baa:	e190      	b.n	8003ece <__ieee754_rem_pio2+0x34e>
 8003bac:	4bda      	ldr	r3, [pc, #872]	; (8003f18 <__ieee754_rem_pio2+0x398>)
 8003bae:	f7fd f9a3 	bl	8000ef8 <__aeabi_dsub>
 8003bb2:	4bd9      	ldr	r3, [pc, #868]	; (8003f18 <__ieee754_rem_pio2+0x398>)
 8003bb4:	0004      	movs	r4, r0
 8003bb6:	000d      	movs	r5, r1
 8003bb8:	429e      	cmp	r6, r3
 8003bba:	d100      	bne.n	8003bbe <__ieee754_rem_pio2+0x3e>
 8003bbc:	e091      	b.n	8003ce2 <__ieee754_rem_pio2+0x162>
 8003bbe:	4ad7      	ldr	r2, [pc, #860]	; (8003f1c <__ieee754_rem_pio2+0x39c>)
 8003bc0:	4bd7      	ldr	r3, [pc, #860]	; (8003f20 <__ieee754_rem_pio2+0x3a0>)
 8003bc2:	f7fd f999 	bl	8000ef8 <__aeabi_dsub>
 8003bc6:	0002      	movs	r2, r0
 8003bc8:	000b      	movs	r3, r1
 8003bca:	0020      	movs	r0, r4
 8003bcc:	603a      	str	r2, [r7, #0]
 8003bce:	607b      	str	r3, [r7, #4]
 8003bd0:	0029      	movs	r1, r5
 8003bd2:	f7fd f991 	bl	8000ef8 <__aeabi_dsub>
 8003bd6:	4bd2      	ldr	r3, [pc, #840]	; (8003f20 <__ieee754_rem_pio2+0x3a0>)
 8003bd8:	4ad0      	ldr	r2, [pc, #832]	; (8003f1c <__ieee754_rem_pio2+0x39c>)
 8003bda:	f7fd f98d 	bl	8000ef8 <__aeabi_dsub>
 8003bde:	2301      	movs	r3, #1
 8003be0:	4698      	mov	r8, r3
 8003be2:	60b8      	str	r0, [r7, #8]
 8003be4:	60f9      	str	r1, [r7, #12]
 8003be6:	4640      	mov	r0, r8
 8003be8:	b00f      	add	sp, #60	; 0x3c
 8003bea:	bcf0      	pop	{r4, r5, r6, r7}
 8003bec:	46bb      	mov	fp, r7
 8003bee:	46b2      	mov	sl, r6
 8003bf0:	46a9      	mov	r9, r5
 8003bf2:	46a0      	mov	r8, r4
 8003bf4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8003bf6:	4bcb      	ldr	r3, [pc, #812]	; (8003f24 <__ieee754_rem_pio2+0x3a4>)
 8003bf8:	429e      	cmp	r6, r3
 8003bfa:	dc00      	bgt.n	8003bfe <__ieee754_rem_pio2+0x7e>
 8003bfc:	e08d      	b.n	8003d1a <__ieee754_rem_pio2+0x19a>
 8003bfe:	4bca      	ldr	r3, [pc, #808]	; (8003f28 <__ieee754_rem_pio2+0x3a8>)
 8003c00:	429e      	cmp	r6, r3
 8003c02:	dc63      	bgt.n	8003ccc <__ieee754_rem_pio2+0x14c>
 8003c04:	49c9      	ldr	r1, [pc, #804]	; (8003f2c <__ieee754_rem_pio2+0x3ac>)
 8003c06:	1532      	asrs	r2, r6, #20
 8003c08:	4688      	mov	r8, r1
 8003c0a:	4490      	add	r8, r2
 8003c0c:	4643      	mov	r3, r8
 8003c0e:	051b      	lsls	r3, r3, #20
 8003c10:	1af5      	subs	r5, r6, r3
 8003c12:	0029      	movs	r1, r5
 8003c14:	0004      	movs	r4, r0
 8003c16:	f7fd fd01 	bl	800161c <__aeabi_d2iz>
 8003c1a:	f7fd fd35 	bl	8001688 <__aeabi_i2d>
 8003c1e:	0002      	movs	r2, r0
 8003c20:	000b      	movs	r3, r1
 8003c22:	0020      	movs	r0, r4
 8003c24:	0029      	movs	r1, r5
 8003c26:	9208      	str	r2, [sp, #32]
 8003c28:	9309      	str	r3, [sp, #36]	; 0x24
 8003c2a:	f7fd f965 	bl	8000ef8 <__aeabi_dsub>
 8003c2e:	2200      	movs	r2, #0
 8003c30:	4bbf      	ldr	r3, [pc, #764]	; (8003f30 <__ieee754_rem_pio2+0x3b0>)
 8003c32:	f7fc fef3 	bl	8000a1c <__aeabi_dmul>
 8003c36:	000d      	movs	r5, r1
 8003c38:	0004      	movs	r4, r0
 8003c3a:	f7fd fcef 	bl	800161c <__aeabi_d2iz>
 8003c3e:	0006      	movs	r6, r0
 8003c40:	f7fd fd22 	bl	8001688 <__aeabi_i2d>
 8003c44:	0002      	movs	r2, r0
 8003c46:	000b      	movs	r3, r1
 8003c48:	0020      	movs	r0, r4
 8003c4a:	0029      	movs	r1, r5
 8003c4c:	920a      	str	r2, [sp, #40]	; 0x28
 8003c4e:	930b      	str	r3, [sp, #44]	; 0x2c
 8003c50:	f7fd f952 	bl	8000ef8 <__aeabi_dsub>
 8003c54:	2200      	movs	r2, #0
 8003c56:	4bb6      	ldr	r3, [pc, #728]	; (8003f30 <__ieee754_rem_pio2+0x3b0>)
 8003c58:	f7fc fee0 	bl	8000a1c <__aeabi_dmul>
 8003c5c:	2200      	movs	r2, #0
 8003c5e:	2300      	movs	r3, #0
 8003c60:	900c      	str	r0, [sp, #48]	; 0x30
 8003c62:	910d      	str	r1, [sp, #52]	; 0x34
 8003c64:	f7fd fd76 	bl	8001754 <__aeabi_dcmpeq>
 8003c68:	2800      	cmp	r0, #0
 8003c6a:	d100      	bne.n	8003c6e <__ieee754_rem_pio2+0xee>
 8003c6c:	e103      	b.n	8003e76 <__ieee754_rem_pio2+0x2f6>
 8003c6e:	0033      	movs	r3, r6
 8003c70:	1e5a      	subs	r2, r3, #1
 8003c72:	4193      	sbcs	r3, r2
 8003c74:	3301      	adds	r3, #1
 8003c76:	4aaf      	ldr	r2, [pc, #700]	; (8003f34 <__ieee754_rem_pio2+0x3b4>)
 8003c78:	0039      	movs	r1, r7
 8003c7a:	9201      	str	r2, [sp, #4]
 8003c7c:	2202      	movs	r2, #2
 8003c7e:	a808      	add	r0, sp, #32
 8003c80:	9200      	str	r2, [sp, #0]
 8003c82:	4642      	mov	r2, r8
 8003c84:	f000 fa9c 	bl	80041c0 <__kernel_rem_pio2>
 8003c88:	464b      	mov	r3, r9
 8003c8a:	4680      	mov	r8, r0
 8003c8c:	2b00      	cmp	r3, #0
 8003c8e:	daaa      	bge.n	8003be6 <__ieee754_rem_pio2+0x66>
 8003c90:	2080      	movs	r0, #128	; 0x80
 8003c92:	0600      	lsls	r0, r0, #24
 8003c94:	4684      	mov	ip, r0
 8003c96:	6879      	ldr	r1, [r7, #4]
 8003c98:	683a      	ldr	r2, [r7, #0]
 8003c9a:	4461      	add	r1, ip
 8003c9c:	000b      	movs	r3, r1
 8003c9e:	68f9      	ldr	r1, [r7, #12]
 8003ca0:	603a      	str	r2, [r7, #0]
 8003ca2:	607b      	str	r3, [r7, #4]
 8003ca4:	4461      	add	r1, ip
 8003ca6:	000b      	movs	r3, r1
 8003ca8:	68ba      	ldr	r2, [r7, #8]
 8003caa:	60ba      	str	r2, [r7, #8]
 8003cac:	60fb      	str	r3, [r7, #12]
 8003cae:	4643      	mov	r3, r8
 8003cb0:	425b      	negs	r3, r3
 8003cb2:	4698      	mov	r8, r3
 8003cb4:	e797      	b.n	8003be6 <__ieee754_rem_pio2+0x66>
 8003cb6:	0002      	movs	r2, r0
 8003cb8:	000b      	movs	r3, r1
 8003cba:	603a      	str	r2, [r7, #0]
 8003cbc:	607b      	str	r3, [r7, #4]
 8003cbe:	2300      	movs	r3, #0
 8003cc0:	2200      	movs	r2, #0
 8003cc2:	60ba      	str	r2, [r7, #8]
 8003cc4:	60fb      	str	r3, [r7, #12]
 8003cc6:	2300      	movs	r3, #0
 8003cc8:	4698      	mov	r8, r3
 8003cca:	e78c      	b.n	8003be6 <__ieee754_rem_pio2+0x66>
 8003ccc:	000b      	movs	r3, r1
 8003cce:	0002      	movs	r2, r0
 8003cd0:	f7fd f912 	bl	8000ef8 <__aeabi_dsub>
 8003cd4:	2300      	movs	r3, #0
 8003cd6:	60b8      	str	r0, [r7, #8]
 8003cd8:	60f9      	str	r1, [r7, #12]
 8003cda:	4698      	mov	r8, r3
 8003cdc:	6038      	str	r0, [r7, #0]
 8003cde:	6079      	str	r1, [r7, #4]
 8003ce0:	e781      	b.n	8003be6 <__ieee754_rem_pio2+0x66>
 8003ce2:	22d3      	movs	r2, #211	; 0xd3
 8003ce4:	4b8e      	ldr	r3, [pc, #568]	; (8003f20 <__ieee754_rem_pio2+0x3a0>)
 8003ce6:	0552      	lsls	r2, r2, #21
 8003ce8:	f7fd f906 	bl	8000ef8 <__aeabi_dsub>
 8003cec:	4a92      	ldr	r2, [pc, #584]	; (8003f38 <__ieee754_rem_pio2+0x3b8>)
 8003cee:	4b93      	ldr	r3, [pc, #588]	; (8003f3c <__ieee754_rem_pio2+0x3bc>)
 8003cf0:	0004      	movs	r4, r0
 8003cf2:	000d      	movs	r5, r1
 8003cf4:	f7fd f900 	bl	8000ef8 <__aeabi_dsub>
 8003cf8:	0002      	movs	r2, r0
 8003cfa:	000b      	movs	r3, r1
 8003cfc:	0020      	movs	r0, r4
 8003cfe:	603a      	str	r2, [r7, #0]
 8003d00:	607b      	str	r3, [r7, #4]
 8003d02:	0029      	movs	r1, r5
 8003d04:	f7fd f8f8 	bl	8000ef8 <__aeabi_dsub>
 8003d08:	4b8c      	ldr	r3, [pc, #560]	; (8003f3c <__ieee754_rem_pio2+0x3bc>)
 8003d0a:	4a8b      	ldr	r2, [pc, #556]	; (8003f38 <__ieee754_rem_pio2+0x3b8>)
 8003d0c:	f7fd f8f4 	bl	8000ef8 <__aeabi_dsub>
 8003d10:	2301      	movs	r3, #1
 8003d12:	60b8      	str	r0, [r7, #8]
 8003d14:	60f9      	str	r1, [r7, #12]
 8003d16:	4698      	mov	r8, r3
 8003d18:	e765      	b.n	8003be6 <__ieee754_rem_pio2+0x66>
 8003d1a:	f000 ff6b 	bl	8004bf4 <fabs>
 8003d1e:	4a88      	ldr	r2, [pc, #544]	; (8003f40 <__ieee754_rem_pio2+0x3c0>)
 8003d20:	4b88      	ldr	r3, [pc, #544]	; (8003f44 <__ieee754_rem_pio2+0x3c4>)
 8003d22:	0004      	movs	r4, r0
 8003d24:	000d      	movs	r5, r1
 8003d26:	f7fc fe79 	bl	8000a1c <__aeabi_dmul>
 8003d2a:	2200      	movs	r2, #0
 8003d2c:	4b86      	ldr	r3, [pc, #536]	; (8003f48 <__ieee754_rem_pio2+0x3c8>)
 8003d2e:	f7fd fe69 	bl	8001a04 <__aeabi_dadd>
 8003d32:	f7fd fc73 	bl	800161c <__aeabi_d2iz>
 8003d36:	4680      	mov	r8, r0
 8003d38:	f7fd fca6 	bl	8001688 <__aeabi_i2d>
 8003d3c:	4a75      	ldr	r2, [pc, #468]	; (8003f14 <__ieee754_rem_pio2+0x394>)
 8003d3e:	4b76      	ldr	r3, [pc, #472]	; (8003f18 <__ieee754_rem_pio2+0x398>)
 8003d40:	9004      	str	r0, [sp, #16]
 8003d42:	9105      	str	r1, [sp, #20]
 8003d44:	f7fc fe6a 	bl	8000a1c <__aeabi_dmul>
 8003d48:	0002      	movs	r2, r0
 8003d4a:	000b      	movs	r3, r1
 8003d4c:	0020      	movs	r0, r4
 8003d4e:	0029      	movs	r1, r5
 8003d50:	f7fd f8d2 	bl	8000ef8 <__aeabi_dsub>
 8003d54:	4b72      	ldr	r3, [pc, #456]	; (8003f20 <__ieee754_rem_pio2+0x3a0>)
 8003d56:	9002      	str	r0, [sp, #8]
 8003d58:	9103      	str	r1, [sp, #12]
 8003d5a:	9804      	ldr	r0, [sp, #16]
 8003d5c:	9905      	ldr	r1, [sp, #20]
 8003d5e:	4a6f      	ldr	r2, [pc, #444]	; (8003f1c <__ieee754_rem_pio2+0x39c>)
 8003d60:	f7fc fe5c 	bl	8000a1c <__aeabi_dmul>
 8003d64:	4643      	mov	r3, r8
 8003d66:	0004      	movs	r4, r0
 8003d68:	000d      	movs	r5, r1
 8003d6a:	2b1f      	cmp	r3, #31
 8003d6c:	dc36      	bgt.n	8003ddc <__ieee754_rem_pio2+0x25c>
 8003d6e:	4a77      	ldr	r2, [pc, #476]	; (8003f4c <__ieee754_rem_pio2+0x3cc>)
 8003d70:	3b01      	subs	r3, #1
 8003d72:	009b      	lsls	r3, r3, #2
 8003d74:	589b      	ldr	r3, [r3, r2]
 8003d76:	42b3      	cmp	r3, r6
 8003d78:	d030      	beq.n	8003ddc <__ieee754_rem_pio2+0x25c>
 8003d7a:	9802      	ldr	r0, [sp, #8]
 8003d7c:	9903      	ldr	r1, [sp, #12]
 8003d7e:	0022      	movs	r2, r4
 8003d80:	002b      	movs	r3, r5
 8003d82:	f7fd f8b9 	bl	8000ef8 <__aeabi_dsub>
 8003d86:	4682      	mov	sl, r0
 8003d88:	468b      	mov	fp, r1
 8003d8a:	4652      	mov	r2, sl
 8003d8c:	465b      	mov	r3, fp
 8003d8e:	603a      	str	r2, [r7, #0]
 8003d90:	607b      	str	r3, [r7, #4]
 8003d92:	9802      	ldr	r0, [sp, #8]
 8003d94:	9903      	ldr	r1, [sp, #12]
 8003d96:	4652      	mov	r2, sl
 8003d98:	465b      	mov	r3, fp
 8003d9a:	f7fd f8ad 	bl	8000ef8 <__aeabi_dsub>
 8003d9e:	0022      	movs	r2, r4
 8003da0:	002b      	movs	r3, r5
 8003da2:	f7fd f8a9 	bl	8000ef8 <__aeabi_dsub>
 8003da6:	0003      	movs	r3, r0
 8003da8:	0008      	movs	r0, r1
 8003daa:	001a      	movs	r2, r3
 8003dac:	0019      	movs	r1, r3
 8003dae:	0003      	movs	r3, r0
 8003db0:	60ba      	str	r2, [r7, #8]
 8003db2:	60fb      	str	r3, [r7, #12]
 8003db4:	464b      	mov	r3, r9
 8003db6:	2b00      	cmp	r3, #0
 8003db8:	db00      	blt.n	8003dbc <__ieee754_rem_pio2+0x23c>
 8003dba:	e714      	b.n	8003be6 <__ieee754_rem_pio2+0x66>
 8003dbc:	2380      	movs	r3, #128	; 0x80
 8003dbe:	2480      	movs	r4, #128	; 0x80
 8003dc0:	061b      	lsls	r3, r3, #24
 8003dc2:	469c      	mov	ip, r3
 8003dc4:	4643      	mov	r3, r8
 8003dc6:	4655      	mov	r5, sl
 8003dc8:	0624      	lsls	r4, r4, #24
 8003dca:	445c      	add	r4, fp
 8003dcc:	4460      	add	r0, ip
 8003dce:	425b      	negs	r3, r3
 8003dd0:	4698      	mov	r8, r3
 8003dd2:	603d      	str	r5, [r7, #0]
 8003dd4:	607c      	str	r4, [r7, #4]
 8003dd6:	60b9      	str	r1, [r7, #8]
 8003dd8:	60f8      	str	r0, [r7, #12]
 8003dda:	e704      	b.n	8003be6 <__ieee754_rem_pio2+0x66>
 8003ddc:	002b      	movs	r3, r5
 8003dde:	9802      	ldr	r0, [sp, #8]
 8003de0:	9903      	ldr	r1, [sp, #12]
 8003de2:	0022      	movs	r2, r4
 8003de4:	f7fd f888 	bl	8000ef8 <__aeabi_dsub>
 8003de8:	004b      	lsls	r3, r1, #1
 8003dea:	1536      	asrs	r6, r6, #20
 8003dec:	0d5b      	lsrs	r3, r3, #21
 8003dee:	4682      	mov	sl, r0
 8003df0:	468b      	mov	fp, r1
 8003df2:	1af3      	subs	r3, r6, r3
 8003df4:	2b10      	cmp	r3, #16
 8003df6:	ddc8      	ble.n	8003d8a <__ieee754_rem_pio2+0x20a>
 8003df8:	9804      	ldr	r0, [sp, #16]
 8003dfa:	9905      	ldr	r1, [sp, #20]
 8003dfc:	22d3      	movs	r2, #211	; 0xd3
 8003dfe:	4b48      	ldr	r3, [pc, #288]	; (8003f20 <__ieee754_rem_pio2+0x3a0>)
 8003e00:	0552      	lsls	r2, r2, #21
 8003e02:	f7fc fe0b 	bl	8000a1c <__aeabi_dmul>
 8003e06:	0004      	movs	r4, r0
 8003e08:	000d      	movs	r5, r1
 8003e0a:	0002      	movs	r2, r0
 8003e0c:	000b      	movs	r3, r1
 8003e0e:	9802      	ldr	r0, [sp, #8]
 8003e10:	9903      	ldr	r1, [sp, #12]
 8003e12:	f7fd f871 	bl	8000ef8 <__aeabi_dsub>
 8003e16:	0002      	movs	r2, r0
 8003e18:	000b      	movs	r3, r1
 8003e1a:	9802      	ldr	r0, [sp, #8]
 8003e1c:	9903      	ldr	r1, [sp, #12]
 8003e1e:	9206      	str	r2, [sp, #24]
 8003e20:	9307      	str	r3, [sp, #28]
 8003e22:	f7fd f869 	bl	8000ef8 <__aeabi_dsub>
 8003e26:	0022      	movs	r2, r4
 8003e28:	002b      	movs	r3, r5
 8003e2a:	f7fd f865 	bl	8000ef8 <__aeabi_dsub>
 8003e2e:	0004      	movs	r4, r0
 8003e30:	000d      	movs	r5, r1
 8003e32:	9804      	ldr	r0, [sp, #16]
 8003e34:	9905      	ldr	r1, [sp, #20]
 8003e36:	4a40      	ldr	r2, [pc, #256]	; (8003f38 <__ieee754_rem_pio2+0x3b8>)
 8003e38:	4b40      	ldr	r3, [pc, #256]	; (8003f3c <__ieee754_rem_pio2+0x3bc>)
 8003e3a:	f7fc fdef 	bl	8000a1c <__aeabi_dmul>
 8003e3e:	0022      	movs	r2, r4
 8003e40:	002b      	movs	r3, r5
 8003e42:	f7fd f859 	bl	8000ef8 <__aeabi_dsub>
 8003e46:	000b      	movs	r3, r1
 8003e48:	0002      	movs	r2, r0
 8003e4a:	0004      	movs	r4, r0
 8003e4c:	000d      	movs	r5, r1
 8003e4e:	9806      	ldr	r0, [sp, #24]
 8003e50:	9907      	ldr	r1, [sp, #28]
 8003e52:	f7fd f851 	bl	8000ef8 <__aeabi_dsub>
 8003e56:	004b      	lsls	r3, r1, #1
 8003e58:	0d5b      	lsrs	r3, r3, #21
 8003e5a:	4682      	mov	sl, r0
 8003e5c:	468b      	mov	fp, r1
 8003e5e:	1af6      	subs	r6, r6, r3
 8003e60:	2e31      	cmp	r6, #49	; 0x31
 8003e62:	dc0a      	bgt.n	8003e7a <__ieee754_rem_pio2+0x2fa>
 8003e64:	0002      	movs	r2, r0
 8003e66:	000b      	movs	r3, r1
 8003e68:	603a      	str	r2, [r7, #0]
 8003e6a:	607b      	str	r3, [r7, #4]
 8003e6c:	9a06      	ldr	r2, [sp, #24]
 8003e6e:	9b07      	ldr	r3, [sp, #28]
 8003e70:	9202      	str	r2, [sp, #8]
 8003e72:	9303      	str	r3, [sp, #12]
 8003e74:	e78d      	b.n	8003d92 <__ieee754_rem_pio2+0x212>
 8003e76:	2303      	movs	r3, #3
 8003e78:	e6fd      	b.n	8003c76 <__ieee754_rem_pio2+0xf6>
 8003e7a:	22b8      	movs	r2, #184	; 0xb8
 8003e7c:	9804      	ldr	r0, [sp, #16]
 8003e7e:	9905      	ldr	r1, [sp, #20]
 8003e80:	4b2e      	ldr	r3, [pc, #184]	; (8003f3c <__ieee754_rem_pio2+0x3bc>)
 8003e82:	0592      	lsls	r2, r2, #22
 8003e84:	f7fc fdca 	bl	8000a1c <__aeabi_dmul>
 8003e88:	0004      	movs	r4, r0
 8003e8a:	000d      	movs	r5, r1
 8003e8c:	0002      	movs	r2, r0
 8003e8e:	000b      	movs	r3, r1
 8003e90:	9806      	ldr	r0, [sp, #24]
 8003e92:	9907      	ldr	r1, [sp, #28]
 8003e94:	f7fd f830 	bl	8000ef8 <__aeabi_dsub>
 8003e98:	0002      	movs	r2, r0
 8003e9a:	000b      	movs	r3, r1
 8003e9c:	9806      	ldr	r0, [sp, #24]
 8003e9e:	9907      	ldr	r1, [sp, #28]
 8003ea0:	9202      	str	r2, [sp, #8]
 8003ea2:	9303      	str	r3, [sp, #12]
 8003ea4:	f7fd f828 	bl	8000ef8 <__aeabi_dsub>
 8003ea8:	0022      	movs	r2, r4
 8003eaa:	002b      	movs	r3, r5
 8003eac:	f7fd f824 	bl	8000ef8 <__aeabi_dsub>
 8003eb0:	0004      	movs	r4, r0
 8003eb2:	000d      	movs	r5, r1
 8003eb4:	9804      	ldr	r0, [sp, #16]
 8003eb6:	9905      	ldr	r1, [sp, #20]
 8003eb8:	4a25      	ldr	r2, [pc, #148]	; (8003f50 <__ieee754_rem_pio2+0x3d0>)
 8003eba:	4b26      	ldr	r3, [pc, #152]	; (8003f54 <__ieee754_rem_pio2+0x3d4>)
 8003ebc:	f7fc fdae 	bl	8000a1c <__aeabi_dmul>
 8003ec0:	0022      	movs	r2, r4
 8003ec2:	002b      	movs	r3, r5
 8003ec4:	f7fd f818 	bl	8000ef8 <__aeabi_dsub>
 8003ec8:	0004      	movs	r4, r0
 8003eca:	000d      	movs	r5, r1
 8003ecc:	e755      	b.n	8003d7a <__ieee754_rem_pio2+0x1fa>
 8003ece:	4b12      	ldr	r3, [pc, #72]	; (8003f18 <__ieee754_rem_pio2+0x398>)
 8003ed0:	f7fd fd98 	bl	8001a04 <__aeabi_dadd>
 8003ed4:	4b10      	ldr	r3, [pc, #64]	; (8003f18 <__ieee754_rem_pio2+0x398>)
 8003ed6:	0004      	movs	r4, r0
 8003ed8:	000d      	movs	r5, r1
 8003eda:	429e      	cmp	r6, r3
 8003edc:	d03c      	beq.n	8003f58 <__ieee754_rem_pio2+0x3d8>
 8003ede:	4a0f      	ldr	r2, [pc, #60]	; (8003f1c <__ieee754_rem_pio2+0x39c>)
 8003ee0:	4b0f      	ldr	r3, [pc, #60]	; (8003f20 <__ieee754_rem_pio2+0x3a0>)
 8003ee2:	f7fd fd8f 	bl	8001a04 <__aeabi_dadd>
 8003ee6:	0002      	movs	r2, r0
 8003ee8:	000b      	movs	r3, r1
 8003eea:	0020      	movs	r0, r4
 8003eec:	603a      	str	r2, [r7, #0]
 8003eee:	607b      	str	r3, [r7, #4]
 8003ef0:	0029      	movs	r1, r5
 8003ef2:	f7fd f801 	bl	8000ef8 <__aeabi_dsub>
 8003ef6:	4a09      	ldr	r2, [pc, #36]	; (8003f1c <__ieee754_rem_pio2+0x39c>)
 8003ef8:	4b09      	ldr	r3, [pc, #36]	; (8003f20 <__ieee754_rem_pio2+0x3a0>)
 8003efa:	f7fd fd83 	bl	8001a04 <__aeabi_dadd>
 8003efe:	2301      	movs	r3, #1
 8003f00:	425b      	negs	r3, r3
 8003f02:	4698      	mov	r8, r3
 8003f04:	60b8      	str	r0, [r7, #8]
 8003f06:	60f9      	str	r1, [r7, #12]
 8003f08:	e66d      	b.n	8003be6 <__ieee754_rem_pio2+0x66>
 8003f0a:	46c0      	nop			; (mov r8, r8)
 8003f0c:	3fe921fb 	.word	0x3fe921fb
 8003f10:	4002d97b 	.word	0x4002d97b
 8003f14:	54400000 	.word	0x54400000
 8003f18:	3ff921fb 	.word	0x3ff921fb
 8003f1c:	1a626331 	.word	0x1a626331
 8003f20:	3dd0b461 	.word	0x3dd0b461
 8003f24:	413921fb 	.word	0x413921fb
 8003f28:	7fefffff 	.word	0x7fefffff
 8003f2c:	fffffbea 	.word	0xfffffbea
 8003f30:	41700000 	.word	0x41700000
 8003f34:	08004f80 	.word	0x08004f80
 8003f38:	2e037073 	.word	0x2e037073
 8003f3c:	3ba3198a 	.word	0x3ba3198a
 8003f40:	6dc9c883 	.word	0x6dc9c883
 8003f44:	3fe45f30 	.word	0x3fe45f30
 8003f48:	3fe00000 	.word	0x3fe00000
 8003f4c:	08004f00 	.word	0x08004f00
 8003f50:	252049c1 	.word	0x252049c1
 8003f54:	397b839a 	.word	0x397b839a
 8003f58:	22d3      	movs	r2, #211	; 0xd3
 8003f5a:	4b0a      	ldr	r3, [pc, #40]	; (8003f84 <__ieee754_rem_pio2+0x404>)
 8003f5c:	0552      	lsls	r2, r2, #21
 8003f5e:	f7fd fd51 	bl	8001a04 <__aeabi_dadd>
 8003f62:	4a09      	ldr	r2, [pc, #36]	; (8003f88 <__ieee754_rem_pio2+0x408>)
 8003f64:	4b09      	ldr	r3, [pc, #36]	; (8003f8c <__ieee754_rem_pio2+0x40c>)
 8003f66:	0004      	movs	r4, r0
 8003f68:	000d      	movs	r5, r1
 8003f6a:	f7fd fd4b 	bl	8001a04 <__aeabi_dadd>
 8003f6e:	0002      	movs	r2, r0
 8003f70:	000b      	movs	r3, r1
 8003f72:	0020      	movs	r0, r4
 8003f74:	603a      	str	r2, [r7, #0]
 8003f76:	607b      	str	r3, [r7, #4]
 8003f78:	0029      	movs	r1, r5
 8003f7a:	f7fc ffbd 	bl	8000ef8 <__aeabi_dsub>
 8003f7e:	4a02      	ldr	r2, [pc, #8]	; (8003f88 <__ieee754_rem_pio2+0x408>)
 8003f80:	4b02      	ldr	r3, [pc, #8]	; (8003f8c <__ieee754_rem_pio2+0x40c>)
 8003f82:	e7ba      	b.n	8003efa <__ieee754_rem_pio2+0x37a>
 8003f84:	3dd0b461 	.word	0x3dd0b461
 8003f88:	2e037073 	.word	0x2e037073
 8003f8c:	3ba3198a 	.word	0x3ba3198a

08003f90 <__kernel_cos>:
 8003f90:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003f92:	4647      	mov	r7, r8
 8003f94:	46ce      	mov	lr, r9
 8003f96:	b580      	push	{r7, lr}
 8003f98:	b087      	sub	sp, #28
 8003f9a:	9200      	str	r2, [sp, #0]
 8003f9c:	9301      	str	r3, [sp, #4]
 8003f9e:	23f9      	movs	r3, #249	; 0xf9
 8003fa0:	004f      	lsls	r7, r1, #1
 8003fa2:	4681      	mov	r9, r0
 8003fa4:	4688      	mov	r8, r1
 8003fa6:	087f      	lsrs	r7, r7, #1
 8003fa8:	059b      	lsls	r3, r3, #22
 8003faa:	429f      	cmp	r7, r3
 8003fac:	da63      	bge.n	8004076 <__kernel_cos+0xe6>
 8003fae:	f7fd fb35 	bl	800161c <__aeabi_d2iz>
 8003fb2:	2800      	cmp	r0, #0
 8003fb4:	d100      	bne.n	8003fb8 <__kernel_cos+0x28>
 8003fb6:	e0da      	b.n	800416e <__kernel_cos+0x1de>
 8003fb8:	464a      	mov	r2, r9
 8003fba:	4643      	mov	r3, r8
 8003fbc:	4648      	mov	r0, r9
 8003fbe:	4641      	mov	r1, r8
 8003fc0:	f7fc fd2c 	bl	8000a1c <__aeabi_dmul>
 8003fc4:	0004      	movs	r4, r0
 8003fc6:	000d      	movs	r5, r1
 8003fc8:	4a6a      	ldr	r2, [pc, #424]	; (8004174 <__kernel_cos+0x1e4>)
 8003fca:	4b6b      	ldr	r3, [pc, #428]	; (8004178 <__kernel_cos+0x1e8>)
 8003fcc:	f7fc fd26 	bl	8000a1c <__aeabi_dmul>
 8003fd0:	4a6a      	ldr	r2, [pc, #424]	; (800417c <__kernel_cos+0x1ec>)
 8003fd2:	4b6b      	ldr	r3, [pc, #428]	; (8004180 <__kernel_cos+0x1f0>)
 8003fd4:	f7fd fd16 	bl	8001a04 <__aeabi_dadd>
 8003fd8:	0022      	movs	r2, r4
 8003fda:	002b      	movs	r3, r5
 8003fdc:	f7fc fd1e 	bl	8000a1c <__aeabi_dmul>
 8003fe0:	4a68      	ldr	r2, [pc, #416]	; (8004184 <__kernel_cos+0x1f4>)
 8003fe2:	4b69      	ldr	r3, [pc, #420]	; (8004188 <__kernel_cos+0x1f8>)
 8003fe4:	f7fc ff88 	bl	8000ef8 <__aeabi_dsub>
 8003fe8:	0022      	movs	r2, r4
 8003fea:	002b      	movs	r3, r5
 8003fec:	f7fc fd16 	bl	8000a1c <__aeabi_dmul>
 8003ff0:	4a66      	ldr	r2, [pc, #408]	; (800418c <__kernel_cos+0x1fc>)
 8003ff2:	4b67      	ldr	r3, [pc, #412]	; (8004190 <__kernel_cos+0x200>)
 8003ff4:	f7fd fd06 	bl	8001a04 <__aeabi_dadd>
 8003ff8:	0022      	movs	r2, r4
 8003ffa:	002b      	movs	r3, r5
 8003ffc:	f7fc fd0e 	bl	8000a1c <__aeabi_dmul>
 8004000:	4a64      	ldr	r2, [pc, #400]	; (8004194 <__kernel_cos+0x204>)
 8004002:	4b65      	ldr	r3, [pc, #404]	; (8004198 <__kernel_cos+0x208>)
 8004004:	f7fc ff78 	bl	8000ef8 <__aeabi_dsub>
 8004008:	0022      	movs	r2, r4
 800400a:	002b      	movs	r3, r5
 800400c:	f7fc fd06 	bl	8000a1c <__aeabi_dmul>
 8004010:	4a62      	ldr	r2, [pc, #392]	; (800419c <__kernel_cos+0x20c>)
 8004012:	4b63      	ldr	r3, [pc, #396]	; (80041a0 <__kernel_cos+0x210>)
 8004014:	f7fd fcf6 	bl	8001a04 <__aeabi_dadd>
 8004018:	0022      	movs	r2, r4
 800401a:	002b      	movs	r3, r5
 800401c:	f7fc fcfe 	bl	8000a1c <__aeabi_dmul>
 8004020:	9002      	str	r0, [sp, #8]
 8004022:	9103      	str	r1, [sp, #12]
 8004024:	2200      	movs	r2, #0
 8004026:	0020      	movs	r0, r4
 8004028:	0029      	movs	r1, r5
 800402a:	4b5e      	ldr	r3, [pc, #376]	; (80041a4 <__kernel_cos+0x214>)
 800402c:	f7fc fcf6 	bl	8000a1c <__aeabi_dmul>
 8004030:	9a02      	ldr	r2, [sp, #8]
 8004032:	9b03      	ldr	r3, [sp, #12]
 8004034:	0006      	movs	r6, r0
 8004036:	000f      	movs	r7, r1
 8004038:	0020      	movs	r0, r4
 800403a:	0029      	movs	r1, r5
 800403c:	f7fc fcee 	bl	8000a1c <__aeabi_dmul>
 8004040:	9a00      	ldr	r2, [sp, #0]
 8004042:	9b01      	ldr	r3, [sp, #4]
 8004044:	0004      	movs	r4, r0
 8004046:	000d      	movs	r5, r1
 8004048:	4648      	mov	r0, r9
 800404a:	4641      	mov	r1, r8
 800404c:	f7fc fce6 	bl	8000a1c <__aeabi_dmul>
 8004050:	0002      	movs	r2, r0
 8004052:	000b      	movs	r3, r1
 8004054:	0020      	movs	r0, r4
 8004056:	0029      	movs	r1, r5
 8004058:	f7fc ff4e 	bl	8000ef8 <__aeabi_dsub>
 800405c:	0002      	movs	r2, r0
 800405e:	000b      	movs	r3, r1
 8004060:	0030      	movs	r0, r6
 8004062:	0039      	movs	r1, r7
 8004064:	f7fc ff48 	bl	8000ef8 <__aeabi_dsub>
 8004068:	0002      	movs	r2, r0
 800406a:	000b      	movs	r3, r1
 800406c:	2000      	movs	r0, #0
 800406e:	494e      	ldr	r1, [pc, #312]	; (80041a8 <__kernel_cos+0x218>)
 8004070:	f7fc ff42 	bl	8000ef8 <__aeabi_dsub>
 8004074:	e070      	b.n	8004158 <__kernel_cos+0x1c8>
 8004076:	0002      	movs	r2, r0
 8004078:	000b      	movs	r3, r1
 800407a:	f7fc fccf 	bl	8000a1c <__aeabi_dmul>
 800407e:	0004      	movs	r4, r0
 8004080:	000d      	movs	r5, r1
 8004082:	4a3c      	ldr	r2, [pc, #240]	; (8004174 <__kernel_cos+0x1e4>)
 8004084:	4b3c      	ldr	r3, [pc, #240]	; (8004178 <__kernel_cos+0x1e8>)
 8004086:	f7fc fcc9 	bl	8000a1c <__aeabi_dmul>
 800408a:	4a3c      	ldr	r2, [pc, #240]	; (800417c <__kernel_cos+0x1ec>)
 800408c:	4b3c      	ldr	r3, [pc, #240]	; (8004180 <__kernel_cos+0x1f0>)
 800408e:	f7fd fcb9 	bl	8001a04 <__aeabi_dadd>
 8004092:	0022      	movs	r2, r4
 8004094:	002b      	movs	r3, r5
 8004096:	f7fc fcc1 	bl	8000a1c <__aeabi_dmul>
 800409a:	4a3a      	ldr	r2, [pc, #232]	; (8004184 <__kernel_cos+0x1f4>)
 800409c:	4b3a      	ldr	r3, [pc, #232]	; (8004188 <__kernel_cos+0x1f8>)
 800409e:	f7fc ff2b 	bl	8000ef8 <__aeabi_dsub>
 80040a2:	0022      	movs	r2, r4
 80040a4:	002b      	movs	r3, r5
 80040a6:	f7fc fcb9 	bl	8000a1c <__aeabi_dmul>
 80040aa:	4a38      	ldr	r2, [pc, #224]	; (800418c <__kernel_cos+0x1fc>)
 80040ac:	4b38      	ldr	r3, [pc, #224]	; (8004190 <__kernel_cos+0x200>)
 80040ae:	f7fd fca9 	bl	8001a04 <__aeabi_dadd>
 80040b2:	0022      	movs	r2, r4
 80040b4:	002b      	movs	r3, r5
 80040b6:	f7fc fcb1 	bl	8000a1c <__aeabi_dmul>
 80040ba:	4a36      	ldr	r2, [pc, #216]	; (8004194 <__kernel_cos+0x204>)
 80040bc:	4b36      	ldr	r3, [pc, #216]	; (8004198 <__kernel_cos+0x208>)
 80040be:	f7fc ff1b 	bl	8000ef8 <__aeabi_dsub>
 80040c2:	0022      	movs	r2, r4
 80040c4:	002b      	movs	r3, r5
 80040c6:	f7fc fca9 	bl	8000a1c <__aeabi_dmul>
 80040ca:	4a34      	ldr	r2, [pc, #208]	; (800419c <__kernel_cos+0x20c>)
 80040cc:	4b34      	ldr	r3, [pc, #208]	; (80041a0 <__kernel_cos+0x210>)
 80040ce:	f7fd fc99 	bl	8001a04 <__aeabi_dadd>
 80040d2:	002b      	movs	r3, r5
 80040d4:	0022      	movs	r2, r4
 80040d6:	f7fc fca1 	bl	8000a1c <__aeabi_dmul>
 80040da:	4b34      	ldr	r3, [pc, #208]	; (80041ac <__kernel_cos+0x21c>)
 80040dc:	9002      	str	r0, [sp, #8]
 80040de:	9103      	str	r1, [sp, #12]
 80040e0:	429f      	cmp	r7, r3
 80040e2:	dd9f      	ble.n	8004024 <__kernel_cos+0x94>
 80040e4:	4b32      	ldr	r3, [pc, #200]	; (80041b0 <__kernel_cos+0x220>)
 80040e6:	2200      	movs	r2, #0
 80040e8:	429f      	cmp	r7, r3
 80040ea:	dc3a      	bgt.n	8004162 <__kernel_cos+0x1d2>
 80040ec:	4931      	ldr	r1, [pc, #196]	; (80041b4 <__kernel_cos+0x224>)
 80040ee:	2000      	movs	r0, #0
 80040f0:	187b      	adds	r3, r7, r1
 80040f2:	492d      	ldr	r1, [pc, #180]	; (80041a8 <__kernel_cos+0x218>)
 80040f4:	0016      	movs	r6, r2
 80040f6:	001f      	movs	r7, r3
 80040f8:	f7fc fefe 	bl	8000ef8 <__aeabi_dsub>
 80040fc:	9004      	str	r0, [sp, #16]
 80040fe:	9105      	str	r1, [sp, #20]
 8004100:	2200      	movs	r2, #0
 8004102:	0020      	movs	r0, r4
 8004104:	0029      	movs	r1, r5
 8004106:	4b27      	ldr	r3, [pc, #156]	; (80041a4 <__kernel_cos+0x214>)
 8004108:	f7fc fc88 	bl	8000a1c <__aeabi_dmul>
 800410c:	0032      	movs	r2, r6
 800410e:	003b      	movs	r3, r7
 8004110:	f7fc fef2 	bl	8000ef8 <__aeabi_dsub>
 8004114:	9a02      	ldr	r2, [sp, #8]
 8004116:	9b03      	ldr	r3, [sp, #12]
 8004118:	0006      	movs	r6, r0
 800411a:	000f      	movs	r7, r1
 800411c:	0020      	movs	r0, r4
 800411e:	0029      	movs	r1, r5
 8004120:	f7fc fc7c 	bl	8000a1c <__aeabi_dmul>
 8004124:	9a00      	ldr	r2, [sp, #0]
 8004126:	9b01      	ldr	r3, [sp, #4]
 8004128:	0004      	movs	r4, r0
 800412a:	000d      	movs	r5, r1
 800412c:	4648      	mov	r0, r9
 800412e:	4641      	mov	r1, r8
 8004130:	f7fc fc74 	bl	8000a1c <__aeabi_dmul>
 8004134:	0002      	movs	r2, r0
 8004136:	000b      	movs	r3, r1
 8004138:	0020      	movs	r0, r4
 800413a:	0029      	movs	r1, r5
 800413c:	f7fc fedc 	bl	8000ef8 <__aeabi_dsub>
 8004140:	0002      	movs	r2, r0
 8004142:	000b      	movs	r3, r1
 8004144:	0030      	movs	r0, r6
 8004146:	0039      	movs	r1, r7
 8004148:	f7fc fed6 	bl	8000ef8 <__aeabi_dsub>
 800414c:	0002      	movs	r2, r0
 800414e:	000b      	movs	r3, r1
 8004150:	9804      	ldr	r0, [sp, #16]
 8004152:	9905      	ldr	r1, [sp, #20]
 8004154:	f7fc fed0 	bl	8000ef8 <__aeabi_dsub>
 8004158:	b007      	add	sp, #28
 800415a:	bcc0      	pop	{r6, r7}
 800415c:	46b9      	mov	r9, r7
 800415e:	46b0      	mov	r8, r6
 8004160:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8004162:	4b15      	ldr	r3, [pc, #84]	; (80041b8 <__kernel_cos+0x228>)
 8004164:	2600      	movs	r6, #0
 8004166:	9204      	str	r2, [sp, #16]
 8004168:	9305      	str	r3, [sp, #20]
 800416a:	4f14      	ldr	r7, [pc, #80]	; (80041bc <__kernel_cos+0x22c>)
 800416c:	e7c8      	b.n	8004100 <__kernel_cos+0x170>
 800416e:	2000      	movs	r0, #0
 8004170:	490d      	ldr	r1, [pc, #52]	; (80041a8 <__kernel_cos+0x218>)
 8004172:	e7f1      	b.n	8004158 <__kernel_cos+0x1c8>
 8004174:	be8838d4 	.word	0xbe8838d4
 8004178:	bda8fae9 	.word	0xbda8fae9
 800417c:	bdb4b1c4 	.word	0xbdb4b1c4
 8004180:	3e21ee9e 	.word	0x3e21ee9e
 8004184:	809c52ad 	.word	0x809c52ad
 8004188:	3e927e4f 	.word	0x3e927e4f
 800418c:	19cb1590 	.word	0x19cb1590
 8004190:	3efa01a0 	.word	0x3efa01a0
 8004194:	16c15177 	.word	0x16c15177
 8004198:	3f56c16c 	.word	0x3f56c16c
 800419c:	5555554c 	.word	0x5555554c
 80041a0:	3fa55555 	.word	0x3fa55555
 80041a4:	3fe00000 	.word	0x3fe00000
 80041a8:	3ff00000 	.word	0x3ff00000
 80041ac:	3fd33332 	.word	0x3fd33332
 80041b0:	3fe90000 	.word	0x3fe90000
 80041b4:	ffe00000 	.word	0xffe00000
 80041b8:	3fe70000 	.word	0x3fe70000
 80041bc:	3fd20000 	.word	0x3fd20000

080041c0 <__kernel_rem_pio2>:
 80041c0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80041c2:	46de      	mov	lr, fp
 80041c4:	4657      	mov	r7, sl
 80041c6:	464e      	mov	r6, r9
 80041c8:	4645      	mov	r5, r8
 80041ca:	b5e0      	push	{r5, r6, r7, lr}
 80041cc:	4cdd      	ldr	r4, [pc, #884]	; (8004544 <__kernel_rem_pio2+0x384>)
 80041ce:	44a5      	add	sp, r4
 80041d0:	910d      	str	r1, [sp, #52]	; 0x34
 80041d2:	0019      	movs	r1, r3
 80041d4:	0014      	movs	r4, r2
 80041d6:	9aa4      	ldr	r2, [sp, #656]	; 0x290
 80041d8:	930a      	str	r3, [sp, #40]	; 0x28
 80041da:	4bdb      	ldr	r3, [pc, #876]	; (8004548 <__kernel_rem_pio2+0x388>)
 80041dc:	0092      	lsls	r2, r2, #2
 80041de:	58d2      	ldr	r2, [r2, r3]
 80041e0:	000b      	movs	r3, r1
 80041e2:	3b01      	subs	r3, #1
 80041e4:	9304      	str	r3, [sp, #16]
 80041e6:	0023      	movs	r3, r4
 80041e8:	9006      	str	r0, [sp, #24]
 80041ea:	9208      	str	r2, [sp, #32]
 80041ec:	3314      	adds	r3, #20
 80041ee:	da00      	bge.n	80041f2 <__kernel_rem_pio2+0x32>
 80041f0:	e3a1      	b.n	8004936 <__kernel_rem_pio2+0x776>
 80041f2:	2118      	movs	r1, #24
 80041f4:	1ee0      	subs	r0, r4, #3
 80041f6:	f7fc f811 	bl	800021c <__divsi3>
 80041fa:	0003      	movs	r3, r0
 80041fc:	3301      	adds	r3, #1
 80041fe:	009a      	lsls	r2, r3, #2
 8004200:	1a9b      	subs	r3, r3, r2
 8004202:	9005      	str	r0, [sp, #20]
 8004204:	00db      	lsls	r3, r3, #3
 8004206:	18e3      	adds	r3, r4, r3
 8004208:	9a05      	ldr	r2, [sp, #20]
 800420a:	9307      	str	r3, [sp, #28]
 800420c:	9b04      	ldr	r3, [sp, #16]
 800420e:	1ad4      	subs	r4, r2, r3
 8004210:	9a08      	ldr	r2, [sp, #32]
 8004212:	18d6      	adds	r6, r2, r3
 8004214:	d414      	bmi.n	8004240 <__kernel_rem_pio2+0x80>
 8004216:	3601      	adds	r6, #1
 8004218:	9fa5      	ldr	r7, [sp, #660]	; 0x294
 800421a:	ad22      	add	r5, sp, #136	; 0x88
 800421c:	1936      	adds	r6, r6, r4
 800421e:	e007      	b.n	8004230 <__kernel_rem_pio2+0x70>
 8004220:	00a3      	lsls	r3, r4, #2
 8004222:	58f8      	ldr	r0, [r7, r3]
 8004224:	f7fd fa30 	bl	8001688 <__aeabi_i2d>
 8004228:	3401      	adds	r4, #1
 800422a:	c503      	stmia	r5!, {r0, r1}
 800422c:	42b4      	cmp	r4, r6
 800422e:	d007      	beq.n	8004240 <__kernel_rem_pio2+0x80>
 8004230:	2c00      	cmp	r4, #0
 8004232:	daf5      	bge.n	8004220 <__kernel_rem_pio2+0x60>
 8004234:	2000      	movs	r0, #0
 8004236:	2100      	movs	r1, #0
 8004238:	3401      	adds	r4, #1
 800423a:	c503      	stmia	r5!, {r0, r1}
 800423c:	42b4      	cmp	r4, r6
 800423e:	d1f7      	bne.n	8004230 <__kernel_rem_pio2+0x70>
 8004240:	9b08      	ldr	r3, [sp, #32]
 8004242:	2b00      	cmp	r3, #0
 8004244:	da01      	bge.n	800424a <__kernel_rem_pio2+0x8a>
 8004246:	f000 fbfe 	bl	8004a46 <__kernel_rem_pio2+0x886>
 800424a:	990a      	ldr	r1, [sp, #40]	; 0x28
 800424c:	aa22      	add	r2, sp, #136	; 0x88
 800424e:	468c      	mov	ip, r1
 8004250:	4693      	mov	fp, r2
 8004252:	9a08      	ldr	r2, [sp, #32]
 8004254:	ab72      	add	r3, sp, #456	; 0x1c8
 8004256:	4462      	add	r2, ip
 8004258:	9203      	str	r2, [sp, #12]
 800425a:	9a06      	ldr	r2, [sp, #24]
 800425c:	4699      	mov	r9, r3
 800425e:	4690      	mov	r8, r2
 8004260:	9300      	str	r3, [sp, #0]
 8004262:	9b04      	ldr	r3, [sp, #16]
 8004264:	469a      	mov	sl, r3
 8004266:	00db      	lsls	r3, r3, #3
 8004268:	449b      	add	fp, r3
 800426a:	3308      	adds	r3, #8
 800426c:	4498      	add	r8, r3
 800426e:	9b04      	ldr	r3, [sp, #16]
 8004270:	2400      	movs	r4, #0
 8004272:	2500      	movs	r5, #0
 8004274:	2b00      	cmp	r3, #0
 8004276:	db13      	blt.n	80042a0 <__kernel_rem_pio2+0xe0>
 8004278:	465f      	mov	r7, fp
 800427a:	2400      	movs	r4, #0
 800427c:	2500      	movs	r5, #0
 800427e:	9e06      	ldr	r6, [sp, #24]
 8004280:	683a      	ldr	r2, [r7, #0]
 8004282:	687b      	ldr	r3, [r7, #4]
 8004284:	ce03      	ldmia	r6!, {r0, r1}
 8004286:	f7fc fbc9 	bl	8000a1c <__aeabi_dmul>
 800428a:	0002      	movs	r2, r0
 800428c:	000b      	movs	r3, r1
 800428e:	0020      	movs	r0, r4
 8004290:	0029      	movs	r1, r5
 8004292:	f7fd fbb7 	bl	8001a04 <__aeabi_dadd>
 8004296:	3f08      	subs	r7, #8
 8004298:	0004      	movs	r4, r0
 800429a:	000d      	movs	r5, r1
 800429c:	4546      	cmp	r6, r8
 800429e:	d1ef      	bne.n	8004280 <__kernel_rem_pio2+0xc0>
 80042a0:	464b      	mov	r3, r9
 80042a2:	c330      	stmia	r3!, {r4, r5}
 80042a4:	4699      	mov	r9, r3
 80042a6:	2308      	movs	r3, #8
 80042a8:	469c      	mov	ip, r3
 80042aa:	3b07      	subs	r3, #7
 80042ac:	44e3      	add	fp, ip
 80042ae:	469c      	mov	ip, r3
 80042b0:	9b03      	ldr	r3, [sp, #12]
 80042b2:	44e2      	add	sl, ip
 80042b4:	459a      	cmp	sl, r3
 80042b6:	d1da      	bne.n	800426e <__kernel_rem_pio2+0xae>
 80042b8:	a80e      	add	r0, sp, #56	; 0x38
 80042ba:	2204      	movs	r2, #4
 80042bc:	4684      	mov	ip, r0
 80042be:	4252      	negs	r2, r2
 80042c0:	4462      	add	r2, ip
 80042c2:	4694      	mov	ip, r2
 80042c4:	9908      	ldr	r1, [sp, #32]
 80042c6:	008b      	lsls	r3, r1, #2
 80042c8:	449c      	add	ip, r3
 80042ca:	4662      	mov	r2, ip
 80042cc:	4684      	mov	ip, r0
 80042ce:	3b08      	subs	r3, #8
 80042d0:	4463      	add	r3, ip
 80042d2:	930b      	str	r3, [sp, #44]	; 0x2c
 80042d4:	9b05      	ldr	r3, [sp, #20]
 80042d6:	920c      	str	r2, [sp, #48]	; 0x30
 80042d8:	9aa5      	ldr	r2, [sp, #660]	; 0x294
 80042da:	0098      	lsls	r0, r3, #2
 80042dc:	4694      	mov	ip, r2
 80042de:	0003      	movs	r3, r0
 80042e0:	4463      	add	r3, ip
 80042e2:	9305      	str	r3, [sp, #20]
 80042e4:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80042e6:	4688      	mov	r8, r1
 80042e8:	00da      	lsls	r2, r3, #3
 80042ea:	9b06      	ldr	r3, [sp, #24]
 80042ec:	3b08      	subs	r3, #8
 80042ee:	469b      	mov	fp, r3
 80042f0:	4493      	add	fp, r2
 80042f2:	46da      	mov	sl, fp
 80042f4:	4643      	mov	r3, r8
 80042f6:	9900      	ldr	r1, [sp, #0]
 80042f8:	00da      	lsls	r2, r3, #3
 80042fa:	4694      	mov	ip, r2
 80042fc:	000b      	movs	r3, r1
 80042fe:	4463      	add	r3, ip
 8004300:	681e      	ldr	r6, [r3, #0]
 8004302:	685f      	ldr	r7, [r3, #4]
 8004304:	4643      	mov	r3, r8
 8004306:	9209      	str	r2, [sp, #36]	; 0x24
 8004308:	2b00      	cmp	r3, #0
 800430a:	dd32      	ble.n	8004372 <__kernel_rem_pio2+0x1b2>
 800430c:	4689      	mov	r9, r1
 800430e:	4b8f      	ldr	r3, [pc, #572]	; (800454c <__kernel_rem_pio2+0x38c>)
 8004310:	4443      	add	r3, r8
 8004312:	00db      	lsls	r3, r3, #3
 8004314:	4499      	add	r9, r3
 8004316:	ab0e      	add	r3, sp, #56	; 0x38
 8004318:	469b      	mov	fp, r3
 800431a:	2200      	movs	r2, #0
 800431c:	4b8c      	ldr	r3, [pc, #560]	; (8004550 <__kernel_rem_pio2+0x390>)
 800431e:	0030      	movs	r0, r6
 8004320:	0039      	movs	r1, r7
 8004322:	f7fc fb7b 	bl	8000a1c <__aeabi_dmul>
 8004326:	f7fd f979 	bl	800161c <__aeabi_d2iz>
 800432a:	f7fd f9ad 	bl	8001688 <__aeabi_i2d>
 800432e:	2200      	movs	r2, #0
 8004330:	4b88      	ldr	r3, [pc, #544]	; (8004554 <__kernel_rem_pio2+0x394>)
 8004332:	0004      	movs	r4, r0
 8004334:	000d      	movs	r5, r1
 8004336:	f7fc fb71 	bl	8000a1c <__aeabi_dmul>
 800433a:	0002      	movs	r2, r0
 800433c:	000b      	movs	r3, r1
 800433e:	0030      	movs	r0, r6
 8004340:	0039      	movs	r1, r7
 8004342:	f7fc fdd9 	bl	8000ef8 <__aeabi_dsub>
 8004346:	f7fd f969 	bl	800161c <__aeabi_d2iz>
 800434a:	465b      	mov	r3, fp
 800434c:	c301      	stmia	r3!, {r0}
 800434e:	469b      	mov	fp, r3
 8004350:	464b      	mov	r3, r9
 8004352:	0020      	movs	r0, r4
 8004354:	681a      	ldr	r2, [r3, #0]
 8004356:	685b      	ldr	r3, [r3, #4]
 8004358:	0029      	movs	r1, r5
 800435a:	f7fd fb53 	bl	8001a04 <__aeabi_dadd>
 800435e:	2208      	movs	r2, #8
 8004360:	4252      	negs	r2, r2
 8004362:	4694      	mov	ip, r2
 8004364:	464b      	mov	r3, r9
 8004366:	9a00      	ldr	r2, [sp, #0]
 8004368:	0006      	movs	r6, r0
 800436a:	000f      	movs	r7, r1
 800436c:	44e1      	add	r9, ip
 800436e:	429a      	cmp	r2, r3
 8004370:	d1d3      	bne.n	800431a <__kernel_rem_pio2+0x15a>
 8004372:	9b07      	ldr	r3, [sp, #28]
 8004374:	0030      	movs	r0, r6
 8004376:	001a      	movs	r2, r3
 8004378:	0039      	movs	r1, r7
 800437a:	469b      	mov	fp, r3
 800437c:	f000 fcda 	bl	8004d34 <scalbn>
 8004380:	23ff      	movs	r3, #255	; 0xff
 8004382:	2200      	movs	r2, #0
 8004384:	059b      	lsls	r3, r3, #22
 8004386:	0004      	movs	r4, r0
 8004388:	000d      	movs	r5, r1
 800438a:	f7fc fb47 	bl	8000a1c <__aeabi_dmul>
 800438e:	f000 fc35 	bl	8004bfc <floor>
 8004392:	2200      	movs	r2, #0
 8004394:	4b70      	ldr	r3, [pc, #448]	; (8004558 <__kernel_rem_pio2+0x398>)
 8004396:	f7fc fb41 	bl	8000a1c <__aeabi_dmul>
 800439a:	0002      	movs	r2, r0
 800439c:	000b      	movs	r3, r1
 800439e:	0020      	movs	r0, r4
 80043a0:	0029      	movs	r1, r5
 80043a2:	f7fc fda9 	bl	8000ef8 <__aeabi_dsub>
 80043a6:	0004      	movs	r4, r0
 80043a8:	000d      	movs	r5, r1
 80043aa:	f7fd f937 	bl	800161c <__aeabi_d2iz>
 80043ae:	4681      	mov	r9, r0
 80043b0:	f7fd f96a 	bl	8001688 <__aeabi_i2d>
 80043b4:	0002      	movs	r2, r0
 80043b6:	000b      	movs	r3, r1
 80043b8:	0020      	movs	r0, r4
 80043ba:	0029      	movs	r1, r5
 80043bc:	f7fc fd9c 	bl	8000ef8 <__aeabi_dsub>
 80043c0:	465c      	mov	r4, fp
 80043c2:	0006      	movs	r6, r0
 80043c4:	000f      	movs	r7, r1
 80043c6:	2c00      	cmp	r4, #0
 80043c8:	dc00      	bgt.n	80043cc <__kernel_rem_pio2+0x20c>
 80043ca:	e085      	b.n	80044d8 <__kernel_rem_pio2+0x318>
 80043cc:	4643      	mov	r3, r8
 80043ce:	1e59      	subs	r1, r3, #1
 80043d0:	0089      	lsls	r1, r1, #2
 80043d2:	ab0e      	add	r3, sp, #56	; 0x38
 80043d4:	585b      	ldr	r3, [r3, r1]
 80043d6:	2018      	movs	r0, #24
 80043d8:	001a      	movs	r2, r3
 80043da:	1b00      	subs	r0, r0, r4
 80043dc:	4102      	asrs	r2, r0
 80043de:	4491      	add	r9, r2
 80043e0:	4082      	lsls	r2, r0
 80043e2:	1a9d      	subs	r5, r3, r2
 80043e4:	ab0e      	add	r3, sp, #56	; 0x38
 80043e6:	505d      	str	r5, [r3, r1]
 80043e8:	2317      	movs	r3, #23
 80043ea:	1b1b      	subs	r3, r3, r4
 80043ec:	411d      	asrs	r5, r3
 80043ee:	2d00      	cmp	r5, #0
 80043f0:	dd00      	ble.n	80043f4 <__kernel_rem_pio2+0x234>
 80043f2:	e07e      	b.n	80044f2 <__kernel_rem_pio2+0x332>
 80043f4:	2200      	movs	r2, #0
 80043f6:	2300      	movs	r3, #0
 80043f8:	0030      	movs	r0, r6
 80043fa:	0039      	movs	r1, r7
 80043fc:	f7fd f9aa 	bl	8001754 <__aeabi_dcmpeq>
 8004400:	2800      	cmp	r0, #0
 8004402:	d100      	bne.n	8004406 <__kernel_rem_pio2+0x246>
 8004404:	e0ea      	b.n	80045dc <__kernel_rem_pio2+0x41c>
 8004406:	4643      	mov	r3, r8
 8004408:	1e59      	subs	r1, r3, #1
 800440a:	9b08      	ldr	r3, [sp, #32]
 800440c:	428b      	cmp	r3, r1
 800440e:	dc0f      	bgt.n	8004430 <__kernel_rem_pio2+0x270>
 8004410:	aa0e      	add	r2, sp, #56	; 0x38
 8004412:	4694      	mov	ip, r2
 8004414:	2200      	movs	r2, #0
 8004416:	4b51      	ldr	r3, [pc, #324]	; (800455c <__kernel_rem_pio2+0x39c>)
 8004418:	980c      	ldr	r0, [sp, #48]	; 0x30
 800441a:	4443      	add	r3, r8
 800441c:	009b      	lsls	r3, r3, #2
 800441e:	4463      	add	r3, ip
 8004420:	681c      	ldr	r4, [r3, #0]
 8004422:	3b04      	subs	r3, #4
 8004424:	4322      	orrs	r2, r4
 8004426:	4283      	cmp	r3, r0
 8004428:	d1fa      	bne.n	8004420 <__kernel_rem_pio2+0x260>
 800442a:	2a00      	cmp	r2, #0
 800442c:	d000      	beq.n	8004430 <__kernel_rem_pio2+0x270>
 800442e:	e124      	b.n	800467a <__kernel_rem_pio2+0x4ba>
 8004430:	9b08      	ldr	r3, [sp, #32]
 8004432:	aa0e      	add	r2, sp, #56	; 0x38
 8004434:	3b01      	subs	r3, #1
 8004436:	009b      	lsls	r3, r3, #2
 8004438:	58d3      	ldr	r3, [r2, r3]
 800443a:	2b00      	cmp	r3, #0
 800443c:	d000      	beq.n	8004440 <__kernel_rem_pio2+0x280>
 800443e:	e117      	b.n	8004670 <__kernel_rem_pio2+0x4b0>
 8004440:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004442:	3301      	adds	r3, #1
 8004444:	6811      	ldr	r1, [r2, #0]
 8004446:	3a04      	subs	r2, #4
 8004448:	3301      	adds	r3, #1
 800444a:	2900      	cmp	r1, #0
 800444c:	d0fa      	beq.n	8004444 <__kernel_rem_pio2+0x284>
 800444e:	2201      	movs	r2, #1
 8004450:	4442      	add	r2, r8
 8004452:	4693      	mov	fp, r2
 8004454:	4443      	add	r3, r8
 8004456:	9303      	str	r3, [sp, #12]
 8004458:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800445a:	aa22      	add	r2, sp, #136	; 0x88
 800445c:	4443      	add	r3, r8
 800445e:	4690      	mov	r8, r2
 8004460:	9a00      	ldr	r2, [sp, #0]
 8004462:	00db      	lsls	r3, r3, #3
 8004464:	4694      	mov	ip, r2
 8004466:	4498      	add	r8, r3
 8004468:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800446a:	4463      	add	r3, ip
 800446c:	4699      	mov	r9, r3
 800446e:	465b      	mov	r3, fp
 8004470:	9a05      	ldr	r2, [sp, #20]
 8004472:	009b      	lsls	r3, r3, #2
 8004474:	58d0      	ldr	r0, [r2, r3]
 8004476:	f7fd f907 	bl	8001688 <__aeabi_i2d>
 800447a:	4643      	mov	r3, r8
 800447c:	6018      	str	r0, [r3, #0]
 800447e:	6059      	str	r1, [r3, #4]
 8004480:	9b04      	ldr	r3, [sp, #16]
 8004482:	2b00      	cmp	r3, #0
 8004484:	db25      	blt.n	80044d2 <__kernel_rem_pio2+0x312>
 8004486:	4647      	mov	r7, r8
 8004488:	2400      	movs	r4, #0
 800448a:	2500      	movs	r5, #0
 800448c:	9e06      	ldr	r6, [sp, #24]
 800448e:	e002      	b.n	8004496 <__kernel_rem_pio2+0x2d6>
 8004490:	3608      	adds	r6, #8
 8004492:	6838      	ldr	r0, [r7, #0]
 8004494:	6879      	ldr	r1, [r7, #4]
 8004496:	6832      	ldr	r2, [r6, #0]
 8004498:	6873      	ldr	r3, [r6, #4]
 800449a:	f7fc fabf 	bl	8000a1c <__aeabi_dmul>
 800449e:	0002      	movs	r2, r0
 80044a0:	000b      	movs	r3, r1
 80044a2:	0020      	movs	r0, r4
 80044a4:	0029      	movs	r1, r5
 80044a6:	f7fd faad 	bl	8001a04 <__aeabi_dadd>
 80044aa:	3f08      	subs	r7, #8
 80044ac:	0004      	movs	r4, r0
 80044ae:	000d      	movs	r5, r1
 80044b0:	4556      	cmp	r6, sl
 80044b2:	d1ed      	bne.n	8004490 <__kernel_rem_pio2+0x2d0>
 80044b4:	464b      	mov	r3, r9
 80044b6:	609c      	str	r4, [r3, #8]
 80044b8:	60dd      	str	r5, [r3, #12]
 80044ba:	2301      	movs	r3, #1
 80044bc:	469c      	mov	ip, r3
 80044be:	3307      	adds	r3, #7
 80044c0:	44e3      	add	fp, ip
 80044c2:	469c      	mov	ip, r3
 80044c4:	9b03      	ldr	r3, [sp, #12]
 80044c6:	44e0      	add	r8, ip
 80044c8:	44e1      	add	r9, ip
 80044ca:	459b      	cmp	fp, r3
 80044cc:	ddcf      	ble.n	800446e <__kernel_rem_pio2+0x2ae>
 80044ce:	4698      	mov	r8, r3
 80044d0:	e710      	b.n	80042f4 <__kernel_rem_pio2+0x134>
 80044d2:	2400      	movs	r4, #0
 80044d4:	2500      	movs	r5, #0
 80044d6:	e7ed      	b.n	80044b4 <__kernel_rem_pio2+0x2f4>
 80044d8:	9b07      	ldr	r3, [sp, #28]
 80044da:	2b00      	cmp	r3, #0
 80044dc:	d000      	beq.n	80044e0 <__kernel_rem_pio2+0x320>
 80044de:	e0be      	b.n	800465e <__kernel_rem_pio2+0x49e>
 80044e0:	4643      	mov	r3, r8
 80044e2:	3b01      	subs	r3, #1
 80044e4:	009b      	lsls	r3, r3, #2
 80044e6:	aa0e      	add	r2, sp, #56	; 0x38
 80044e8:	58d5      	ldr	r5, [r2, r3]
 80044ea:	15ed      	asrs	r5, r5, #23
 80044ec:	2d00      	cmp	r5, #0
 80044ee:	dc00      	bgt.n	80044f2 <__kernel_rem_pio2+0x332>
 80044f0:	e780      	b.n	80043f4 <__kernel_rem_pio2+0x234>
 80044f2:	2301      	movs	r3, #1
 80044f4:	469c      	mov	ip, r3
 80044f6:	4643      	mov	r3, r8
 80044f8:	44e1      	add	r9, ip
 80044fa:	2b00      	cmp	r3, #0
 80044fc:	dc00      	bgt.n	8004500 <__kernel_rem_pio2+0x340>
 80044fe:	e230      	b.n	8004962 <__kernel_rem_pio2+0x7a2>
 8004500:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004502:	2c00      	cmp	r4, #0
 8004504:	d000      	beq.n	8004508 <__kernel_rem_pio2+0x348>
 8004506:	e0a0      	b.n	800464a <__kernel_rem_pio2+0x48a>
 8004508:	4643      	mov	r3, r8
 800450a:	2b01      	cmp	r3, #1
 800450c:	d030      	beq.n	8004570 <__kernel_rem_pio2+0x3b0>
 800450e:	2201      	movs	r2, #1
 8004510:	4641      	mov	r1, r8
 8004512:	ab0f      	add	r3, sp, #60	; 0x3c
 8004514:	681c      	ldr	r4, [r3, #0]
 8004516:	2c00      	cmp	r4, #0
 8004518:	d100      	bne.n	800451c <__kernel_rem_pio2+0x35c>
 800451a:	e099      	b.n	8004650 <__kernel_rem_pio2+0x490>
 800451c:	4688      	mov	r8, r1
 800451e:	1c53      	adds	r3, r2, #1
 8004520:	2180      	movs	r1, #128	; 0x80
 8004522:	0449      	lsls	r1, r1, #17
 8004524:	0092      	lsls	r2, r2, #2
 8004526:	1b09      	subs	r1, r1, r4
 8004528:	a80e      	add	r0, sp, #56	; 0x38
 800452a:	5081      	str	r1, [r0, r2]
 800452c:	4598      	cmp	r8, r3
 800452e:	dd1e      	ble.n	800456e <__kernel_rem_pio2+0x3ae>
 8004530:	4641      	mov	r1, r8
 8004532:	4684      	mov	ip, r0
 8004534:	009b      	lsls	r3, r3, #2
 8004536:	0089      	lsls	r1, r1, #2
 8004538:	58c2      	ldr	r2, [r0, r3]
 800453a:	4461      	add	r1, ip
 800453c:	4808      	ldr	r0, [pc, #32]	; (8004560 <__kernel_rem_pio2+0x3a0>)
 800453e:	4463      	add	r3, ip
 8004540:	e011      	b.n	8004566 <__kernel_rem_pio2+0x3a6>
 8004542:	46c0      	nop			; (mov r8, r8)
 8004544:	fffffd94 	.word	0xfffffd94
 8004548:	080050c8 	.word	0x080050c8
 800454c:	1fffffff 	.word	0x1fffffff
 8004550:	3e700000 	.word	0x3e700000
 8004554:	41700000 	.word	0x41700000
 8004558:	40200000 	.word	0x40200000
 800455c:	3fffffff 	.word	0x3fffffff
 8004560:	00ffffff 	.word	0x00ffffff
 8004564:	681a      	ldr	r2, [r3, #0]
 8004566:	1a82      	subs	r2, r0, r2
 8004568:	c304      	stmia	r3!, {r2}
 800456a:	428b      	cmp	r3, r1
 800456c:	d1fa      	bne.n	8004564 <__kernel_rem_pio2+0x3a4>
 800456e:	2401      	movs	r4, #1
 8004570:	9b07      	ldr	r3, [sp, #28]
 8004572:	2b00      	cmp	r3, #0
 8004574:	dd0e      	ble.n	8004594 <__kernel_rem_pio2+0x3d4>
 8004576:	2b01      	cmp	r3, #1
 8004578:	d100      	bne.n	800457c <__kernel_rem_pio2+0x3bc>
 800457a:	e1d1      	b.n	8004920 <__kernel_rem_pio2+0x760>
 800457c:	2b02      	cmp	r3, #2
 800457e:	d109      	bne.n	8004594 <__kernel_rem_pio2+0x3d4>
 8004580:	4643      	mov	r3, r8
 8004582:	1e5a      	subs	r2, r3, #1
 8004584:	0092      	lsls	r2, r2, #2
 8004586:	ab0e      	add	r3, sp, #56	; 0x38
 8004588:	589b      	ldr	r3, [r3, r2]
 800458a:	a90e      	add	r1, sp, #56	; 0x38
 800458c:	9303      	str	r3, [sp, #12]
 800458e:	029b      	lsls	r3, r3, #10
 8004590:	0a9b      	lsrs	r3, r3, #10
 8004592:	508b      	str	r3, [r1, r2]
 8004594:	2d02      	cmp	r5, #2
 8004596:	d000      	beq.n	800459a <__kernel_rem_pio2+0x3da>
 8004598:	e72c      	b.n	80043f4 <__kernel_rem_pio2+0x234>
 800459a:	0032      	movs	r2, r6
 800459c:	003b      	movs	r3, r7
 800459e:	2000      	movs	r0, #0
 80045a0:	4993      	ldr	r1, [pc, #588]	; (80047f0 <__kernel_rem_pio2+0x630>)
 80045a2:	f7fc fca9 	bl	8000ef8 <__aeabi_dsub>
 80045a6:	0006      	movs	r6, r0
 80045a8:	000f      	movs	r7, r1
 80045aa:	2c00      	cmp	r4, #0
 80045ac:	d100      	bne.n	80045b0 <__kernel_rem_pio2+0x3f0>
 80045ae:	e721      	b.n	80043f4 <__kernel_rem_pio2+0x234>
 80045b0:	9a07      	ldr	r2, [sp, #28]
 80045b2:	2000      	movs	r0, #0
 80045b4:	498e      	ldr	r1, [pc, #568]	; (80047f0 <__kernel_rem_pio2+0x630>)
 80045b6:	f000 fbbd 	bl	8004d34 <scalbn>
 80045ba:	0002      	movs	r2, r0
 80045bc:	000b      	movs	r3, r1
 80045be:	0030      	movs	r0, r6
 80045c0:	0039      	movs	r1, r7
 80045c2:	f7fc fc99 	bl	8000ef8 <__aeabi_dsub>
 80045c6:	0006      	movs	r6, r0
 80045c8:	000f      	movs	r7, r1
 80045ca:	2200      	movs	r2, #0
 80045cc:	2300      	movs	r3, #0
 80045ce:	0030      	movs	r0, r6
 80045d0:	0039      	movs	r1, r7
 80045d2:	f7fd f8bf 	bl	8001754 <__aeabi_dcmpeq>
 80045d6:	2800      	cmp	r0, #0
 80045d8:	d000      	beq.n	80045dc <__kernel_rem_pio2+0x41c>
 80045da:	e714      	b.n	8004406 <__kernel_rem_pio2+0x246>
 80045dc:	464b      	mov	r3, r9
 80045de:	9306      	str	r3, [sp, #24]
 80045e0:	9b07      	ldr	r3, [sp, #28]
 80045e2:	0030      	movs	r0, r6
 80045e4:	425a      	negs	r2, r3
 80045e6:	0039      	movs	r1, r7
 80045e8:	9504      	str	r5, [sp, #16]
 80045ea:	f000 fba3 	bl	8004d34 <scalbn>
 80045ee:	2200      	movs	r2, #0
 80045f0:	4b80      	ldr	r3, [pc, #512]	; (80047f4 <__kernel_rem_pio2+0x634>)
 80045f2:	0004      	movs	r4, r0
 80045f4:	000d      	movs	r5, r1
 80045f6:	f7fd f8d1 	bl	800179c <__aeabi_dcmpge>
 80045fa:	2800      	cmp	r0, #0
 80045fc:	d100      	bne.n	8004600 <__kernel_rem_pio2+0x440>
 80045fe:	e1ef      	b.n	80049e0 <__kernel_rem_pio2+0x820>
 8004600:	4b7d      	ldr	r3, [pc, #500]	; (80047f8 <__kernel_rem_pio2+0x638>)
 8004602:	2200      	movs	r2, #0
 8004604:	0020      	movs	r0, r4
 8004606:	0029      	movs	r1, r5
 8004608:	f7fc fa08 	bl	8000a1c <__aeabi_dmul>
 800460c:	f7fd f806 	bl	800161c <__aeabi_d2iz>
 8004610:	4642      	mov	r2, r8
 8004612:	0006      	movs	r6, r0
 8004614:	0097      	lsls	r7, r2, #2
 8004616:	f7fd f837 	bl	8001688 <__aeabi_i2d>
 800461a:	2200      	movs	r2, #0
 800461c:	4b75      	ldr	r3, [pc, #468]	; (80047f4 <__kernel_rem_pio2+0x634>)
 800461e:	f7fc f9fd 	bl	8000a1c <__aeabi_dmul>
 8004622:	0002      	movs	r2, r0
 8004624:	000b      	movs	r3, r1
 8004626:	0020      	movs	r0, r4
 8004628:	0029      	movs	r1, r5
 800462a:	f7fc fc65 	bl	8000ef8 <__aeabi_dsub>
 800462e:	f7fc fff5 	bl	800161c <__aeabi_d2iz>
 8004632:	aa0e      	add	r2, sp, #56	; 0x38
 8004634:	51d0      	str	r0, [r2, r7]
 8004636:	4642      	mov	r2, r8
 8004638:	9b07      	ldr	r3, [sp, #28]
 800463a:	3201      	adds	r2, #1
 800463c:	3318      	adds	r3, #24
 800463e:	9203      	str	r2, [sp, #12]
 8004640:	9307      	str	r3, [sp, #28]
 8004642:	0093      	lsls	r3, r2, #2
 8004644:	aa0e      	add	r2, sp, #56	; 0x38
 8004646:	50d6      	str	r6, [r2, r3]
 8004648:	e032      	b.n	80046b0 <__kernel_rem_pio2+0x4f0>
 800464a:	2301      	movs	r3, #1
 800464c:	2200      	movs	r2, #0
 800464e:	e767      	b.n	8004520 <__kernel_rem_pio2+0x360>
 8004650:	3201      	adds	r2, #1
 8004652:	3304      	adds	r3, #4
 8004654:	428a      	cmp	r2, r1
 8004656:	d000      	beq.n	800465a <__kernel_rem_pio2+0x49a>
 8004658:	e75c      	b.n	8004514 <__kernel_rem_pio2+0x354>
 800465a:	4688      	mov	r8, r1
 800465c:	e788      	b.n	8004570 <__kernel_rem_pio2+0x3b0>
 800465e:	2200      	movs	r2, #0
 8004660:	4b66      	ldr	r3, [pc, #408]	; (80047fc <__kernel_rem_pio2+0x63c>)
 8004662:	f7fd f89b 	bl	800179c <__aeabi_dcmpge>
 8004666:	2800      	cmp	r0, #0
 8004668:	d000      	beq.n	800466c <__kernel_rem_pio2+0x4ac>
 800466a:	e169      	b.n	8004940 <__kernel_rem_pio2+0x780>
 800466c:	2500      	movs	r5, #0
 800466e:	e6c1      	b.n	80043f4 <__kernel_rem_pio2+0x234>
 8004670:	2301      	movs	r3, #1
 8004672:	4443      	add	r3, r8
 8004674:	469b      	mov	fp, r3
 8004676:	9303      	str	r3, [sp, #12]
 8004678:	e6ee      	b.n	8004458 <__kernel_rem_pio2+0x298>
 800467a:	464b      	mov	r3, r9
 800467c:	000a      	movs	r2, r1
 800467e:	9306      	str	r3, [sp, #24]
 8004680:	9b07      	ldr	r3, [sp, #28]
 8004682:	9103      	str	r1, [sp, #12]
 8004684:	3b18      	subs	r3, #24
 8004686:	0019      	movs	r1, r3
 8004688:	9307      	str	r3, [sp, #28]
 800468a:	a80e      	add	r0, sp, #56	; 0x38
 800468c:	0093      	lsls	r3, r2, #2
 800468e:	58c3      	ldr	r3, [r0, r3]
 8004690:	9504      	str	r5, [sp, #16]
 8004692:	2b00      	cmp	r3, #0
 8004694:	d10c      	bne.n	80046b0 <__kernel_rem_pio2+0x4f0>
 8004696:	4684      	mov	ip, r0
 8004698:	4b59      	ldr	r3, [pc, #356]	; (8004800 <__kernel_rem_pio2+0x640>)
 800469a:	4443      	add	r3, r8
 800469c:	009b      	lsls	r3, r3, #2
 800469e:	4463      	add	r3, ip
 80046a0:	6818      	ldr	r0, [r3, #0]
 80046a2:	3b04      	subs	r3, #4
 80046a4:	3a01      	subs	r2, #1
 80046a6:	3918      	subs	r1, #24
 80046a8:	2800      	cmp	r0, #0
 80046aa:	d0f9      	beq.n	80046a0 <__kernel_rem_pio2+0x4e0>
 80046ac:	9203      	str	r2, [sp, #12]
 80046ae:	9107      	str	r1, [sp, #28]
 80046b0:	2000      	movs	r0, #0
 80046b2:	9a07      	ldr	r2, [sp, #28]
 80046b4:	494e      	ldr	r1, [pc, #312]	; (80047f0 <__kernel_rem_pio2+0x630>)
 80046b6:	f000 fb3d 	bl	8004d34 <scalbn>
 80046ba:	9b03      	ldr	r3, [sp, #12]
 80046bc:	0004      	movs	r4, r0
 80046be:	000d      	movs	r5, r1
 80046c0:	2b00      	cmp	r3, #0
 80046c2:	da00      	bge.n	80046c6 <__kernel_rem_pio2+0x506>
 80046c4:	e1c2      	b.n	8004a4c <__kernel_rem_pio2+0x88c>
 80046c6:	aa0e      	add	r2, sp, #56	; 0x38
 80046c8:	4694      	mov	ip, r2
 80046ca:	9a00      	ldr	r2, [sp, #0]
 80046cc:	009e      	lsls	r6, r3, #2
 80046ce:	00db      	lsls	r3, r3, #3
 80046d0:	0011      	movs	r1, r2
 80046d2:	4466      	add	r6, ip
 80046d4:	469c      	mov	ip, r3
 80046d6:	4461      	add	r1, ip
 80046d8:	000f      	movs	r7, r1
 80046da:	468b      	mov	fp, r1
 80046dc:	4690      	mov	r8, r2
 80046de:	9305      	str	r3, [sp, #20]
 80046e0:	6830      	ldr	r0, [r6, #0]
 80046e2:	f7fc ffd1 	bl	8001688 <__aeabi_i2d>
 80046e6:	0022      	movs	r2, r4
 80046e8:	002b      	movs	r3, r5
 80046ea:	f7fc f997 	bl	8000a1c <__aeabi_dmul>
 80046ee:	4b42      	ldr	r3, [pc, #264]	; (80047f8 <__kernel_rem_pio2+0x638>)
 80046f0:	6038      	str	r0, [r7, #0]
 80046f2:	6079      	str	r1, [r7, #4]
 80046f4:	2200      	movs	r2, #0
 80046f6:	0020      	movs	r0, r4
 80046f8:	0029      	movs	r1, r5
 80046fa:	f7fc f98f 	bl	8000a1c <__aeabi_dmul>
 80046fe:	3e04      	subs	r6, #4
 8004700:	003b      	movs	r3, r7
 8004702:	0004      	movs	r4, r0
 8004704:	000d      	movs	r5, r1
 8004706:	3f08      	subs	r7, #8
 8004708:	4598      	cmp	r8, r3
 800470a:	d1e9      	bne.n	80046e0 <__kernel_rem_pio2+0x520>
 800470c:	2300      	movs	r3, #0
 800470e:	4699      	mov	r9, r3
 8004710:	ab4a      	add	r3, sp, #296	; 0x128
 8004712:	9300      	str	r3, [sp, #0]
 8004714:	9b08      	ldr	r3, [sp, #32]
 8004716:	469a      	mov	sl, r3
 8004718:	4653      	mov	r3, sl
 800471a:	2400      	movs	r4, #0
 800471c:	2500      	movs	r5, #0
 800471e:	2b00      	cmp	r3, #0
 8004720:	db21      	blt.n	8004766 <__kernel_rem_pio2+0x5a6>
 8004722:	2080      	movs	r0, #128	; 0x80
 8004724:	4b37      	ldr	r3, [pc, #220]	; (8004804 <__kernel_rem_pio2+0x644>)
 8004726:	465f      	mov	r7, fp
 8004728:	4698      	mov	r8, r3
 800472a:	2400      	movs	r4, #0
 800472c:	2500      	movs	r5, #0
 800472e:	2600      	movs	r6, #0
 8004730:	4935      	ldr	r1, [pc, #212]	; (8004808 <__kernel_rem_pio2+0x648>)
 8004732:	05c0      	lsls	r0, r0, #23
 8004734:	e008      	b.n	8004748 <__kernel_rem_pio2+0x588>
 8004736:	2308      	movs	r3, #8
 8004738:	469c      	mov	ip, r3
 800473a:	3708      	adds	r7, #8
 800473c:	44e0      	add	r8, ip
 800473e:	45b1      	cmp	r9, r6
 8004740:	db11      	blt.n	8004766 <__kernel_rem_pio2+0x5a6>
 8004742:	4643      	mov	r3, r8
 8004744:	6818      	ldr	r0, [r3, #0]
 8004746:	6859      	ldr	r1, [r3, #4]
 8004748:	683a      	ldr	r2, [r7, #0]
 800474a:	687b      	ldr	r3, [r7, #4]
 800474c:	f7fc f966 	bl	8000a1c <__aeabi_dmul>
 8004750:	0002      	movs	r2, r0
 8004752:	000b      	movs	r3, r1
 8004754:	0020      	movs	r0, r4
 8004756:	0029      	movs	r1, r5
 8004758:	f7fd f954 	bl	8001a04 <__aeabi_dadd>
 800475c:	3601      	adds	r6, #1
 800475e:	0004      	movs	r4, r0
 8004760:	000d      	movs	r5, r1
 8004762:	45b2      	cmp	sl, r6
 8004764:	dae7      	bge.n	8004736 <__kernel_rem_pio2+0x576>
 8004766:	9a00      	ldr	r2, [sp, #0]
 8004768:	464b      	mov	r3, r9
 800476a:	4694      	mov	ip, r2
 800476c:	2208      	movs	r2, #8
 800476e:	00db      	lsls	r3, r3, #3
 8004770:	4463      	add	r3, ip
 8004772:	4252      	negs	r2, r2
 8004774:	4694      	mov	ip, r2
 8004776:	601c      	str	r4, [r3, #0]
 8004778:	605d      	str	r5, [r3, #4]
 800477a:	464b      	mov	r3, r9
 800477c:	9a03      	ldr	r2, [sp, #12]
 800477e:	3301      	adds	r3, #1
 8004780:	44e3      	add	fp, ip
 8004782:	4591      	cmp	r9, r2
 8004784:	d001      	beq.n	800478a <__kernel_rem_pio2+0x5ca>
 8004786:	4699      	mov	r9, r3
 8004788:	e7c6      	b.n	8004718 <__kernel_rem_pio2+0x558>
 800478a:	9b00      	ldr	r3, [sp, #0]
 800478c:	469a      	mov	sl, r3
 800478e:	9ba4      	ldr	r3, [sp, #656]	; 0x290
 8004790:	2b02      	cmp	r3, #2
 8004792:	dc3b      	bgt.n	800480c <__kernel_rem_pio2+0x64c>
 8004794:	2b00      	cmp	r3, #0
 8004796:	dd00      	ble.n	800479a <__kernel_rem_pio2+0x5da>
 8004798:	e0e5      	b.n	8004966 <__kernel_rem_pio2+0x7a6>
 800479a:	d11d      	bne.n	80047d8 <__kernel_rem_pio2+0x618>
 800479c:	9b05      	ldr	r3, [sp, #20]
 800479e:	2500      	movs	r5, #0
 80047a0:	4453      	add	r3, sl
 80047a2:	001e      	movs	r6, r3
 80047a4:	2400      	movs	r4, #0
 80047a6:	4657      	mov	r7, sl
 80047a8:	6832      	ldr	r2, [r6, #0]
 80047aa:	6873      	ldr	r3, [r6, #4]
 80047ac:	0028      	movs	r0, r5
 80047ae:	0021      	movs	r1, r4
 80047b0:	f7fd f928 	bl	8001a04 <__aeabi_dadd>
 80047b4:	0033      	movs	r3, r6
 80047b6:	0005      	movs	r5, r0
 80047b8:	000c      	movs	r4, r1
 80047ba:	3e08      	subs	r6, #8
 80047bc:	429f      	cmp	r7, r3
 80047be:	d1f3      	bne.n	80047a8 <__kernel_rem_pio2+0x5e8>
 80047c0:	9b04      	ldr	r3, [sp, #16]
 80047c2:	2b00      	cmp	r3, #0
 80047c4:	d003      	beq.n	80047ce <__kernel_rem_pio2+0x60e>
 80047c6:	2380      	movs	r3, #128	; 0x80
 80047c8:	061b      	lsls	r3, r3, #24
 80047ca:	469c      	mov	ip, r3
 80047cc:	4464      	add	r4, ip
 80047ce:	002a      	movs	r2, r5
 80047d0:	0023      	movs	r3, r4
 80047d2:	990d      	ldr	r1, [sp, #52]	; 0x34
 80047d4:	600a      	str	r2, [r1, #0]
 80047d6:	604b      	str	r3, [r1, #4]
 80047d8:	2007      	movs	r0, #7
 80047da:	9b06      	ldr	r3, [sp, #24]
 80047dc:	4018      	ands	r0, r3
 80047de:	239b      	movs	r3, #155	; 0x9b
 80047e0:	009b      	lsls	r3, r3, #2
 80047e2:	449d      	add	sp, r3
 80047e4:	bcf0      	pop	{r4, r5, r6, r7}
 80047e6:	46bb      	mov	fp, r7
 80047e8:	46b2      	mov	sl, r6
 80047ea:	46a9      	mov	r9, r5
 80047ec:	46a0      	mov	r8, r4
 80047ee:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80047f0:	3ff00000 	.word	0x3ff00000
 80047f4:	41700000 	.word	0x41700000
 80047f8:	3e700000 	.word	0x3e700000
 80047fc:	3fe00000 	.word	0x3fe00000
 8004800:	3ffffffe 	.word	0x3ffffffe
 8004804:	08005088 	.word	0x08005088
 8004808:	3ff921fb 	.word	0x3ff921fb
 800480c:	9ba4      	ldr	r3, [sp, #656]	; 0x290
 800480e:	2b03      	cmp	r3, #3
 8004810:	d1e2      	bne.n	80047d8 <__kernel_rem_pio2+0x618>
 8004812:	9b03      	ldr	r3, [sp, #12]
 8004814:	2b00      	cmp	r3, #0
 8004816:	d100      	bne.n	800481a <__kernel_rem_pio2+0x65a>
 8004818:	e12e      	b.n	8004a78 <__kernel_rem_pio2+0x8b8>
 800481a:	4a99      	ldr	r2, [pc, #612]	; (8004a80 <__kernel_rem_pio2+0x8c0>)
 800481c:	9b05      	ldr	r3, [sp, #20]
 800481e:	4694      	mov	ip, r2
 8004820:	4453      	add	r3, sl
 8004822:	681c      	ldr	r4, [r3, #0]
 8004824:	685d      	ldr	r5, [r3, #4]
 8004826:	9b03      	ldr	r3, [sp, #12]
 8004828:	4463      	add	r3, ip
 800482a:	469b      	mov	fp, r3
 800482c:	00db      	lsls	r3, r3, #3
 800482e:	4453      	add	r3, sl
 8004830:	4698      	mov	r8, r3
 8004832:	4643      	mov	r3, r8
 8004834:	0020      	movs	r0, r4
 8004836:	681e      	ldr	r6, [r3, #0]
 8004838:	685f      	ldr	r7, [r3, #4]
 800483a:	0029      	movs	r1, r5
 800483c:	0032      	movs	r2, r6
 800483e:	003b      	movs	r3, r7
 8004840:	9400      	str	r4, [sp, #0]
 8004842:	9501      	str	r5, [sp, #4]
 8004844:	f7fd f8de 	bl	8001a04 <__aeabi_dadd>
 8004848:	0002      	movs	r2, r0
 800484a:	000b      	movs	r3, r1
 800484c:	0004      	movs	r4, r0
 800484e:	000d      	movs	r5, r1
 8004850:	0030      	movs	r0, r6
 8004852:	0039      	movs	r1, r7
 8004854:	f7fc fb50 	bl	8000ef8 <__aeabi_dsub>
 8004858:	9a00      	ldr	r2, [sp, #0]
 800485a:	9b01      	ldr	r3, [sp, #4]
 800485c:	f7fd f8d2 	bl	8001a04 <__aeabi_dadd>
 8004860:	4643      	mov	r3, r8
 8004862:	6098      	str	r0, [r3, #8]
 8004864:	60d9      	str	r1, [r3, #12]
 8004866:	601c      	str	r4, [r3, #0]
 8004868:	605d      	str	r5, [r3, #4]
 800486a:	2308      	movs	r3, #8
 800486c:	425b      	negs	r3, r3
 800486e:	46c1      	mov	r9, r8
 8004870:	469c      	mov	ip, r3
 8004872:	44e0      	add	r8, ip
 8004874:	45ca      	cmp	sl, r9
 8004876:	d1dc      	bne.n	8004832 <__kernel_rem_pio2+0x672>
 8004878:	9b03      	ldr	r3, [sp, #12]
 800487a:	2b01      	cmp	r3, #1
 800487c:	dc00      	bgt.n	8004880 <__kernel_rem_pio2+0x6c0>
 800487e:	e0fb      	b.n	8004a78 <__kernel_rem_pio2+0x8b8>
 8004880:	9b05      	ldr	r3, [sp, #20]
 8004882:	46d0      	mov	r8, sl
 8004884:	4453      	add	r3, sl
 8004886:	681c      	ldr	r4, [r3, #0]
 8004888:	685d      	ldr	r5, [r3, #4]
 800488a:	465b      	mov	r3, fp
 800488c:	00db      	lsls	r3, r3, #3
 800488e:	4699      	mov	r9, r3
 8004890:	44c8      	add	r8, r9
 8004892:	4643      	mov	r3, r8
 8004894:	0020      	movs	r0, r4
 8004896:	681e      	ldr	r6, [r3, #0]
 8004898:	685f      	ldr	r7, [r3, #4]
 800489a:	0029      	movs	r1, r5
 800489c:	0032      	movs	r2, r6
 800489e:	003b      	movs	r3, r7
 80048a0:	9400      	str	r4, [sp, #0]
 80048a2:	9501      	str	r5, [sp, #4]
 80048a4:	f7fd f8ae 	bl	8001a04 <__aeabi_dadd>
 80048a8:	0002      	movs	r2, r0
 80048aa:	000b      	movs	r3, r1
 80048ac:	0004      	movs	r4, r0
 80048ae:	000d      	movs	r5, r1
 80048b0:	0030      	movs	r0, r6
 80048b2:	0039      	movs	r1, r7
 80048b4:	f7fc fb20 	bl	8000ef8 <__aeabi_dsub>
 80048b8:	9a00      	ldr	r2, [sp, #0]
 80048ba:	9b01      	ldr	r3, [sp, #4]
 80048bc:	f7fd f8a2 	bl	8001a04 <__aeabi_dadd>
 80048c0:	4643      	mov	r3, r8
 80048c2:	6098      	str	r0, [r3, #8]
 80048c4:	60d9      	str	r1, [r3, #12]
 80048c6:	601c      	str	r4, [r3, #0]
 80048c8:	605d      	str	r5, [r3, #4]
 80048ca:	2308      	movs	r3, #8
 80048cc:	425b      	negs	r3, r3
 80048ce:	4646      	mov	r6, r8
 80048d0:	4698      	mov	r8, r3
 80048d2:	44b0      	add	r8, r6
 80048d4:	45c2      	cmp	sl, r8
 80048d6:	d1dc      	bne.n	8004892 <__kernel_rem_pio2+0x6d2>
 80048d8:	464c      	mov	r4, r9
 80048da:	2700      	movs	r7, #0
 80048dc:	2500      	movs	r5, #0
 80048de:	3408      	adds	r4, #8
 80048e0:	4454      	add	r4, sl
 80048e2:	0038      	movs	r0, r7
 80048e4:	6822      	ldr	r2, [r4, #0]
 80048e6:	6863      	ldr	r3, [r4, #4]
 80048e8:	0029      	movs	r1, r5
 80048ea:	f7fd f88b 	bl	8001a04 <__aeabi_dadd>
 80048ee:	3c08      	subs	r4, #8
 80048f0:	0007      	movs	r7, r0
 80048f2:	000d      	movs	r5, r1
 80048f4:	42a6      	cmp	r6, r4
 80048f6:	d1f4      	bne.n	80048e2 <__kernel_rem_pio2+0x722>
 80048f8:	9b04      	ldr	r3, [sp, #16]
 80048fa:	2b00      	cmp	r3, #0
 80048fc:	d17b      	bne.n	80049f6 <__kernel_rem_pio2+0x836>
 80048fe:	9b4a      	ldr	r3, [sp, #296]	; 0x128
 8004900:	9c4b      	ldr	r4, [sp, #300]	; 0x12c
 8004902:	990d      	ldr	r1, [sp, #52]	; 0x34
 8004904:	003a      	movs	r2, r7
 8004906:	600b      	str	r3, [r1, #0]
 8004908:	604c      	str	r4, [r1, #4]
 800490a:	4653      	mov	r3, sl
 800490c:	68dc      	ldr	r4, [r3, #12]
 800490e:	689b      	ldr	r3, [r3, #8]
 8004910:	9300      	str	r3, [sp, #0]
 8004912:	9401      	str	r4, [sp, #4]
 8004914:	608b      	str	r3, [r1, #8]
 8004916:	60cc      	str	r4, [r1, #12]
 8004918:	002b      	movs	r3, r5
 800491a:	610a      	str	r2, [r1, #16]
 800491c:	614b      	str	r3, [r1, #20]
 800491e:	e75b      	b.n	80047d8 <__kernel_rem_pio2+0x618>
 8004920:	4643      	mov	r3, r8
 8004922:	1e5a      	subs	r2, r3, #1
 8004924:	0092      	lsls	r2, r2, #2
 8004926:	ab0e      	add	r3, sp, #56	; 0x38
 8004928:	589b      	ldr	r3, [r3, r2]
 800492a:	a90e      	add	r1, sp, #56	; 0x38
 800492c:	9303      	str	r3, [sp, #12]
 800492e:	025b      	lsls	r3, r3, #9
 8004930:	0a5b      	lsrs	r3, r3, #9
 8004932:	508b      	str	r3, [r1, r2]
 8004934:	e62e      	b.n	8004594 <__kernel_rem_pio2+0x3d4>
 8004936:	2318      	movs	r3, #24
 8004938:	2200      	movs	r2, #0
 800493a:	425b      	negs	r3, r3
 800493c:	9205      	str	r2, [sp, #20]
 800493e:	e462      	b.n	8004206 <__kernel_rem_pio2+0x46>
 8004940:	2301      	movs	r3, #1
 8004942:	469c      	mov	ip, r3
 8004944:	4643      	mov	r3, r8
 8004946:	2502      	movs	r5, #2
 8004948:	44e1      	add	r9, ip
 800494a:	2b00      	cmp	r3, #0
 800494c:	dd00      	ble.n	8004950 <__kernel_rem_pio2+0x790>
 800494e:	e5d7      	b.n	8004500 <__kernel_rem_pio2+0x340>
 8004950:	0032      	movs	r2, r6
 8004952:	003b      	movs	r3, r7
 8004954:	2000      	movs	r0, #0
 8004956:	494b      	ldr	r1, [pc, #300]	; (8004a84 <__kernel_rem_pio2+0x8c4>)
 8004958:	f7fc face 	bl	8000ef8 <__aeabi_dsub>
 800495c:	0006      	movs	r6, r0
 800495e:	000f      	movs	r7, r1
 8004960:	e548      	b.n	80043f4 <__kernel_rem_pio2+0x234>
 8004962:	2400      	movs	r4, #0
 8004964:	e604      	b.n	8004570 <__kernel_rem_pio2+0x3b0>
 8004966:	9b05      	ldr	r3, [sp, #20]
 8004968:	2500      	movs	r5, #0
 800496a:	4453      	add	r3, sl
 800496c:	001e      	movs	r6, r3
 800496e:	2400      	movs	r4, #0
 8004970:	4657      	mov	r7, sl
 8004972:	6832      	ldr	r2, [r6, #0]
 8004974:	6873      	ldr	r3, [r6, #4]
 8004976:	0028      	movs	r0, r5
 8004978:	0021      	movs	r1, r4
 800497a:	f7fd f843 	bl	8001a04 <__aeabi_dadd>
 800497e:	0033      	movs	r3, r6
 8004980:	0005      	movs	r5, r0
 8004982:	000c      	movs	r4, r1
 8004984:	3e08      	subs	r6, #8
 8004986:	429f      	cmp	r7, r3
 8004988:	d1f3      	bne.n	8004972 <__kernel_rem_pio2+0x7b2>
 800498a:	9b04      	ldr	r3, [sp, #16]
 800498c:	2b00      	cmp	r3, #0
 800498e:	d148      	bne.n	8004a22 <__kernel_rem_pio2+0x862>
 8004990:	0023      	movs	r3, r4
 8004992:	002a      	movs	r2, r5
 8004994:	990d      	ldr	r1, [sp, #52]	; 0x34
 8004996:	600a      	str	r2, [r1, #0]
 8004998:	604b      	str	r3, [r1, #4]
 800499a:	984a      	ldr	r0, [sp, #296]	; 0x128
 800499c:	994b      	ldr	r1, [sp, #300]	; 0x12c
 800499e:	f7fc faab 	bl	8000ef8 <__aeabi_dsub>
 80049a2:	9b03      	ldr	r3, [sp, #12]
 80049a4:	0007      	movs	r7, r0
 80049a6:	000e      	movs	r6, r1
 80049a8:	2b00      	cmp	r3, #0
 80049aa:	dd13      	ble.n	80049d4 <__kernel_rem_pio2+0x814>
 80049ac:	2401      	movs	r4, #1
 80049ae:	ad4c      	add	r5, sp, #304	; 0x130
 80049b0:	0038      	movs	r0, r7
 80049b2:	cd0c      	ldmia	r5!, {r2, r3}
 80049b4:	0031      	movs	r1, r6
 80049b6:	f7fd f825 	bl	8001a04 <__aeabi_dadd>
 80049ba:	9b03      	ldr	r3, [sp, #12]
 80049bc:	3401      	adds	r4, #1
 80049be:	0007      	movs	r7, r0
 80049c0:	000e      	movs	r6, r1
 80049c2:	42a3      	cmp	r3, r4
 80049c4:	daf4      	bge.n	80049b0 <__kernel_rem_pio2+0x7f0>
 80049c6:	9b04      	ldr	r3, [sp, #16]
 80049c8:	2b00      	cmp	r3, #0
 80049ca:	d003      	beq.n	80049d4 <__kernel_rem_pio2+0x814>
 80049cc:	2380      	movs	r3, #128	; 0x80
 80049ce:	061b      	lsls	r3, r3, #24
 80049d0:	469c      	mov	ip, r3
 80049d2:	4466      	add	r6, ip
 80049d4:	003a      	movs	r2, r7
 80049d6:	0033      	movs	r3, r6
 80049d8:	990d      	ldr	r1, [sp, #52]	; 0x34
 80049da:	608a      	str	r2, [r1, #8]
 80049dc:	60cb      	str	r3, [r1, #12]
 80049de:	e6fb      	b.n	80047d8 <__kernel_rem_pio2+0x618>
 80049e0:	4643      	mov	r3, r8
 80049e2:	0020      	movs	r0, r4
 80049e4:	0029      	movs	r1, r5
 80049e6:	009e      	lsls	r6, r3, #2
 80049e8:	f7fc fe18 	bl	800161c <__aeabi_d2iz>
 80049ec:	ab0e      	add	r3, sp, #56	; 0x38
 80049ee:	5198      	str	r0, [r3, r6]
 80049f0:	4643      	mov	r3, r8
 80049f2:	9303      	str	r3, [sp, #12]
 80049f4:	e65c      	b.n	80046b0 <__kernel_rem_pio2+0x4f0>
 80049f6:	2080      	movs	r0, #128	; 0x80
 80049f8:	4651      	mov	r1, sl
 80049fa:	0600      	lsls	r0, r0, #24
 80049fc:	4684      	mov	ip, r0
 80049fe:	6849      	ldr	r1, [r1, #4]
 8004a00:	980d      	ldr	r0, [sp, #52]	; 0x34
 8004a02:	4461      	add	r1, ip
 8004a04:	000b      	movs	r3, r1
 8004a06:	9a4a      	ldr	r2, [sp, #296]	; 0x128
 8004a08:	4664      	mov	r4, ip
 8004a0a:	6002      	str	r2, [r0, #0]
 8004a0c:	6043      	str	r3, [r0, #4]
 8004a0e:	4653      	mov	r3, sl
 8004a10:	68d9      	ldr	r1, [r3, #12]
 8004a12:	689a      	ldr	r2, [r3, #8]
 8004a14:	4465      	add	r5, ip
 8004a16:	190b      	adds	r3, r1, r4
 8004a18:	6082      	str	r2, [r0, #8]
 8004a1a:	60c3      	str	r3, [r0, #12]
 8004a1c:	6107      	str	r7, [r0, #16]
 8004a1e:	6145      	str	r5, [r0, #20]
 8004a20:	e6da      	b.n	80047d8 <__kernel_rem_pio2+0x618>
 8004a22:	2380      	movs	r3, #128	; 0x80
 8004a24:	984a      	ldr	r0, [sp, #296]	; 0x128
 8004a26:	994b      	ldr	r1, [sp, #300]	; 0x12c
 8004a28:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 8004a2a:	061b      	lsls	r3, r3, #24
 8004a2c:	18e3      	adds	r3, r4, r3
 8004a2e:	6053      	str	r3, [r2, #4]
 8004a30:	6015      	str	r5, [r2, #0]
 8004a32:	0023      	movs	r3, r4
 8004a34:	002a      	movs	r2, r5
 8004a36:	f7fc fa5f 	bl	8000ef8 <__aeabi_dsub>
 8004a3a:	9b03      	ldr	r3, [sp, #12]
 8004a3c:	0007      	movs	r7, r0
 8004a3e:	000e      	movs	r6, r1
 8004a40:	2b00      	cmp	r3, #0
 8004a42:	dcb3      	bgt.n	80049ac <__kernel_rem_pio2+0x7ec>
 8004a44:	e7c2      	b.n	80049cc <__kernel_rem_pio2+0x80c>
 8004a46:	ab72      	add	r3, sp, #456	; 0x1c8
 8004a48:	9300      	str	r3, [sp, #0]
 8004a4a:	e435      	b.n	80042b8 <__kernel_rem_pio2+0xf8>
 8004a4c:	9ba4      	ldr	r3, [sp, #656]	; 0x290
 8004a4e:	2b02      	cmp	r3, #2
 8004a50:	dc06      	bgt.n	8004a60 <__kernel_rem_pio2+0x8a0>
 8004a52:	2b00      	cmp	r3, #0
 8004a54:	dc0d      	bgt.n	8004a72 <__kernel_rem_pio2+0x8b2>
 8004a56:	d000      	beq.n	8004a5a <__kernel_rem_pio2+0x89a>
 8004a58:	e6be      	b.n	80047d8 <__kernel_rem_pio2+0x618>
 8004a5a:	2500      	movs	r5, #0
 8004a5c:	2400      	movs	r4, #0
 8004a5e:	e6af      	b.n	80047c0 <__kernel_rem_pio2+0x600>
 8004a60:	9ba4      	ldr	r3, [sp, #656]	; 0x290
 8004a62:	2b03      	cmp	r3, #3
 8004a64:	d000      	beq.n	8004a68 <__kernel_rem_pio2+0x8a8>
 8004a66:	e6b7      	b.n	80047d8 <__kernel_rem_pio2+0x618>
 8004a68:	ab4a      	add	r3, sp, #296	; 0x128
 8004a6a:	2700      	movs	r7, #0
 8004a6c:	2500      	movs	r5, #0
 8004a6e:	469a      	mov	sl, r3
 8004a70:	e742      	b.n	80048f8 <__kernel_rem_pio2+0x738>
 8004a72:	2500      	movs	r5, #0
 8004a74:	2400      	movs	r4, #0
 8004a76:	e788      	b.n	800498a <__kernel_rem_pio2+0x7ca>
 8004a78:	2700      	movs	r7, #0
 8004a7a:	003d      	movs	r5, r7
 8004a7c:	e73c      	b.n	80048f8 <__kernel_rem_pio2+0x738>
 8004a7e:	46c0      	nop			; (mov r8, r8)
 8004a80:	1fffffff 	.word	0x1fffffff
 8004a84:	3ff00000 	.word	0x3ff00000

08004a88 <__kernel_sin>:
 8004a88:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004a8a:	46ce      	mov	lr, r9
 8004a8c:	4647      	mov	r7, r8
 8004a8e:	b580      	push	{r7, lr}
 8004a90:	b087      	sub	sp, #28
 8004a92:	9200      	str	r2, [sp, #0]
 8004a94:	9301      	str	r3, [sp, #4]
 8004a96:	22f9      	movs	r2, #249	; 0xf9
 8004a98:	004b      	lsls	r3, r1, #1
 8004a9a:	4681      	mov	r9, r0
 8004a9c:	4688      	mov	r8, r1
 8004a9e:	085b      	lsrs	r3, r3, #1
 8004aa0:	0592      	lsls	r2, r2, #22
 8004aa2:	4293      	cmp	r3, r2
 8004aa4:	da07      	bge.n	8004ab6 <__kernel_sin+0x2e>
 8004aa6:	4648      	mov	r0, r9
 8004aa8:	4641      	mov	r1, r8
 8004aaa:	f7fc fdb7 	bl	800161c <__aeabi_d2iz>
 8004aae:	464a      	mov	r2, r9
 8004ab0:	4643      	mov	r3, r8
 8004ab2:	2800      	cmp	r0, #0
 8004ab4:	d04a      	beq.n	8004b4c <__kernel_sin+0xc4>
 8004ab6:	464a      	mov	r2, r9
 8004ab8:	4643      	mov	r3, r8
 8004aba:	4648      	mov	r0, r9
 8004abc:	4641      	mov	r1, r8
 8004abe:	f7fb ffad 	bl	8000a1c <__aeabi_dmul>
 8004ac2:	0004      	movs	r4, r0
 8004ac4:	000d      	movs	r5, r1
 8004ac6:	0002      	movs	r2, r0
 8004ac8:	000b      	movs	r3, r1
 8004aca:	4648      	mov	r0, r9
 8004acc:	4641      	mov	r1, r8
 8004ace:	f7fb ffa5 	bl	8000a1c <__aeabi_dmul>
 8004ad2:	4a3b      	ldr	r2, [pc, #236]	; (8004bc0 <__kernel_sin+0x138>)
 8004ad4:	4b3b      	ldr	r3, [pc, #236]	; (8004bc4 <__kernel_sin+0x13c>)
 8004ad6:	0006      	movs	r6, r0
 8004ad8:	000f      	movs	r7, r1
 8004ada:	0020      	movs	r0, r4
 8004adc:	0029      	movs	r1, r5
 8004ade:	f7fb ff9d 	bl	8000a1c <__aeabi_dmul>
 8004ae2:	4a39      	ldr	r2, [pc, #228]	; (8004bc8 <__kernel_sin+0x140>)
 8004ae4:	4b39      	ldr	r3, [pc, #228]	; (8004bcc <__kernel_sin+0x144>)
 8004ae6:	f7fc fa07 	bl	8000ef8 <__aeabi_dsub>
 8004aea:	0022      	movs	r2, r4
 8004aec:	002b      	movs	r3, r5
 8004aee:	f7fb ff95 	bl	8000a1c <__aeabi_dmul>
 8004af2:	4a37      	ldr	r2, [pc, #220]	; (8004bd0 <__kernel_sin+0x148>)
 8004af4:	4b37      	ldr	r3, [pc, #220]	; (8004bd4 <__kernel_sin+0x14c>)
 8004af6:	f7fc ff85 	bl	8001a04 <__aeabi_dadd>
 8004afa:	0022      	movs	r2, r4
 8004afc:	002b      	movs	r3, r5
 8004afe:	f7fb ff8d 	bl	8000a1c <__aeabi_dmul>
 8004b02:	4a35      	ldr	r2, [pc, #212]	; (8004bd8 <__kernel_sin+0x150>)
 8004b04:	4b35      	ldr	r3, [pc, #212]	; (8004bdc <__kernel_sin+0x154>)
 8004b06:	f7fc f9f7 	bl	8000ef8 <__aeabi_dsub>
 8004b0a:	0022      	movs	r2, r4
 8004b0c:	002b      	movs	r3, r5
 8004b0e:	f7fb ff85 	bl	8000a1c <__aeabi_dmul>
 8004b12:	4b33      	ldr	r3, [pc, #204]	; (8004be0 <__kernel_sin+0x158>)
 8004b14:	4a33      	ldr	r2, [pc, #204]	; (8004be4 <__kernel_sin+0x15c>)
 8004b16:	f7fc ff75 	bl	8001a04 <__aeabi_dadd>
 8004b1a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004b1c:	9002      	str	r0, [sp, #8]
 8004b1e:	9103      	str	r1, [sp, #12]
 8004b20:	2b00      	cmp	r3, #0
 8004b22:	d11a      	bne.n	8004b5a <__kernel_sin+0xd2>
 8004b24:	0002      	movs	r2, r0
 8004b26:	000b      	movs	r3, r1
 8004b28:	0020      	movs	r0, r4
 8004b2a:	0029      	movs	r1, r5
 8004b2c:	f7fb ff76 	bl	8000a1c <__aeabi_dmul>
 8004b30:	4a2d      	ldr	r2, [pc, #180]	; (8004be8 <__kernel_sin+0x160>)
 8004b32:	4b2e      	ldr	r3, [pc, #184]	; (8004bec <__kernel_sin+0x164>)
 8004b34:	f7fc f9e0 	bl	8000ef8 <__aeabi_dsub>
 8004b38:	0032      	movs	r2, r6
 8004b3a:	003b      	movs	r3, r7
 8004b3c:	f7fb ff6e 	bl	8000a1c <__aeabi_dmul>
 8004b40:	464a      	mov	r2, r9
 8004b42:	4643      	mov	r3, r8
 8004b44:	f7fc ff5e 	bl	8001a04 <__aeabi_dadd>
 8004b48:	0002      	movs	r2, r0
 8004b4a:	000b      	movs	r3, r1
 8004b4c:	0010      	movs	r0, r2
 8004b4e:	0019      	movs	r1, r3
 8004b50:	b007      	add	sp, #28
 8004b52:	bcc0      	pop	{r6, r7}
 8004b54:	46b9      	mov	r9, r7
 8004b56:	46b0      	mov	r8, r6
 8004b58:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8004b5a:	2200      	movs	r2, #0
 8004b5c:	9800      	ldr	r0, [sp, #0]
 8004b5e:	9901      	ldr	r1, [sp, #4]
 8004b60:	4b23      	ldr	r3, [pc, #140]	; (8004bf0 <__kernel_sin+0x168>)
 8004b62:	f7fb ff5b 	bl	8000a1c <__aeabi_dmul>
 8004b66:	9a02      	ldr	r2, [sp, #8]
 8004b68:	9b03      	ldr	r3, [sp, #12]
 8004b6a:	9004      	str	r0, [sp, #16]
 8004b6c:	9105      	str	r1, [sp, #20]
 8004b6e:	0030      	movs	r0, r6
 8004b70:	0039      	movs	r1, r7
 8004b72:	f7fb ff53 	bl	8000a1c <__aeabi_dmul>
 8004b76:	0002      	movs	r2, r0
 8004b78:	000b      	movs	r3, r1
 8004b7a:	9804      	ldr	r0, [sp, #16]
 8004b7c:	9905      	ldr	r1, [sp, #20]
 8004b7e:	f7fc f9bb 	bl	8000ef8 <__aeabi_dsub>
 8004b82:	0022      	movs	r2, r4
 8004b84:	002b      	movs	r3, r5
 8004b86:	f7fb ff49 	bl	8000a1c <__aeabi_dmul>
 8004b8a:	9a00      	ldr	r2, [sp, #0]
 8004b8c:	9b01      	ldr	r3, [sp, #4]
 8004b8e:	f7fc f9b3 	bl	8000ef8 <__aeabi_dsub>
 8004b92:	4a15      	ldr	r2, [pc, #84]	; (8004be8 <__kernel_sin+0x160>)
 8004b94:	0004      	movs	r4, r0
 8004b96:	000d      	movs	r5, r1
 8004b98:	4b14      	ldr	r3, [pc, #80]	; (8004bec <__kernel_sin+0x164>)
 8004b9a:	0030      	movs	r0, r6
 8004b9c:	0039      	movs	r1, r7
 8004b9e:	f7fb ff3d 	bl	8000a1c <__aeabi_dmul>
 8004ba2:	0002      	movs	r2, r0
 8004ba4:	000b      	movs	r3, r1
 8004ba6:	0020      	movs	r0, r4
 8004ba8:	0029      	movs	r1, r5
 8004baa:	f7fc ff2b 	bl	8001a04 <__aeabi_dadd>
 8004bae:	0002      	movs	r2, r0
 8004bb0:	000b      	movs	r3, r1
 8004bb2:	4648      	mov	r0, r9
 8004bb4:	4641      	mov	r1, r8
 8004bb6:	f7fc f99f 	bl	8000ef8 <__aeabi_dsub>
 8004bba:	0002      	movs	r2, r0
 8004bbc:	000b      	movs	r3, r1
 8004bbe:	e7c5      	b.n	8004b4c <__kernel_sin+0xc4>
 8004bc0:	5acfd57c 	.word	0x5acfd57c
 8004bc4:	3de5d93a 	.word	0x3de5d93a
 8004bc8:	8a2b9ceb 	.word	0x8a2b9ceb
 8004bcc:	3e5ae5e6 	.word	0x3e5ae5e6
 8004bd0:	57b1fe7d 	.word	0x57b1fe7d
 8004bd4:	3ec71de3 	.word	0x3ec71de3
 8004bd8:	19c161d5 	.word	0x19c161d5
 8004bdc:	3f2a01a0 	.word	0x3f2a01a0
 8004be0:	3f811111 	.word	0x3f811111
 8004be4:	1110f8a6 	.word	0x1110f8a6
 8004be8:	55555549 	.word	0x55555549
 8004bec:	3fc55555 	.word	0x3fc55555
 8004bf0:	3fe00000 	.word	0x3fe00000

08004bf4 <fabs>:
 8004bf4:	004b      	lsls	r3, r1, #1
 8004bf6:	0859      	lsrs	r1, r3, #1
 8004bf8:	4770      	bx	lr
 8004bfa:	46c0      	nop			; (mov r8, r8)

08004bfc <floor>:
 8004bfc:	4a47      	ldr	r2, [pc, #284]	; (8004d1c <floor+0x120>)
 8004bfe:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004c00:	4646      	mov	r6, r8
 8004c02:	4690      	mov	r8, r2
 8004c04:	004b      	lsls	r3, r1, #1
 8004c06:	0d5b      	lsrs	r3, r3, #21
 8004c08:	4498      	add	r8, r3
 8004c0a:	464f      	mov	r7, r9
 8004c0c:	46d6      	mov	lr, sl
 8004c0e:	4642      	mov	r2, r8
 8004c10:	b5c0      	push	{r6, r7, lr}
 8004c12:	0005      	movs	r5, r0
 8004c14:	000c      	movs	r4, r1
 8004c16:	000e      	movs	r6, r1
 8004c18:	0007      	movs	r7, r0
 8004c1a:	2a13      	cmp	r2, #19
 8004c1c:	dc39      	bgt.n	8004c92 <floor+0x96>
 8004c1e:	2a00      	cmp	r2, #0
 8004c20:	db26      	blt.n	8004c70 <floor+0x74>
 8004c22:	4b3f      	ldr	r3, [pc, #252]	; (8004d20 <floor+0x124>)
 8004c24:	4684      	mov	ip, r0
 8004c26:	4113      	asrs	r3, r2
 8004c28:	4699      	mov	r9, r3
 8004c2a:	400b      	ands	r3, r1
 8004c2c:	468a      	mov	sl, r1
 8004c2e:	4303      	orrs	r3, r0
 8004c30:	d017      	beq.n	8004c62 <floor+0x66>
 8004c32:	4a3c      	ldr	r2, [pc, #240]	; (8004d24 <floor+0x128>)
 8004c34:	4b3c      	ldr	r3, [pc, #240]	; (8004d28 <floor+0x12c>)
 8004c36:	0028      	movs	r0, r5
 8004c38:	0021      	movs	r1, r4
 8004c3a:	f7fc fee3 	bl	8001a04 <__aeabi_dadd>
 8004c3e:	2200      	movs	r2, #0
 8004c40:	2300      	movs	r3, #0
 8004c42:	f7fc fda1 	bl	8001788 <__aeabi_dcmpgt>
 8004c46:	2800      	cmp	r0, #0
 8004c48:	d009      	beq.n	8004c5e <floor+0x62>
 8004c4a:	2c00      	cmp	r4, #0
 8004c4c:	da04      	bge.n	8004c58 <floor+0x5c>
 8004c4e:	2680      	movs	r6, #128	; 0x80
 8004c50:	4643      	mov	r3, r8
 8004c52:	0376      	lsls	r6, r6, #13
 8004c54:	411e      	asrs	r6, r3
 8004c56:	1936      	adds	r6, r6, r4
 8004c58:	464b      	mov	r3, r9
 8004c5a:	2700      	movs	r7, #0
 8004c5c:	439e      	bics	r6, r3
 8004c5e:	46bc      	mov	ip, r7
 8004c60:	46b2      	mov	sl, r6
 8004c62:	4651      	mov	r1, sl
 8004c64:	4660      	mov	r0, ip
 8004c66:	bce0      	pop	{r5, r6, r7}
 8004c68:	46ba      	mov	sl, r7
 8004c6a:	46b1      	mov	r9, r6
 8004c6c:	46a8      	mov	r8, r5
 8004c6e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8004c70:	4a2c      	ldr	r2, [pc, #176]	; (8004d24 <floor+0x128>)
 8004c72:	4b2d      	ldr	r3, [pc, #180]	; (8004d28 <floor+0x12c>)
 8004c74:	0028      	movs	r0, r5
 8004c76:	0021      	movs	r1, r4
 8004c78:	f7fc fec4 	bl	8001a04 <__aeabi_dadd>
 8004c7c:	2200      	movs	r2, #0
 8004c7e:	2300      	movs	r3, #0
 8004c80:	f7fc fd82 	bl	8001788 <__aeabi_dcmpgt>
 8004c84:	2800      	cmp	r0, #0
 8004c86:	d0ea      	beq.n	8004c5e <floor+0x62>
 8004c88:	2c00      	cmp	r4, #0
 8004c8a:	db2f      	blt.n	8004cec <floor+0xf0>
 8004c8c:	2700      	movs	r7, #0
 8004c8e:	2600      	movs	r6, #0
 8004c90:	e7e5      	b.n	8004c5e <floor+0x62>
 8004c92:	2a33      	cmp	r2, #51	; 0x33
 8004c94:	dd0e      	ble.n	8004cb4 <floor+0xb8>
 8004c96:	2380      	movs	r3, #128	; 0x80
 8004c98:	4684      	mov	ip, r0
 8004c9a:	468a      	mov	sl, r1
 8004c9c:	00db      	lsls	r3, r3, #3
 8004c9e:	4598      	cmp	r8, r3
 8004ca0:	d1df      	bne.n	8004c62 <floor+0x66>
 8004ca2:	0002      	movs	r2, r0
 8004ca4:	000b      	movs	r3, r1
 8004ca6:	0028      	movs	r0, r5
 8004ca8:	0021      	movs	r1, r4
 8004caa:	f7fc feab 	bl	8001a04 <__aeabi_dadd>
 8004cae:	4684      	mov	ip, r0
 8004cb0:	468a      	mov	sl, r1
 8004cb2:	e7d6      	b.n	8004c62 <floor+0x66>
 8004cb4:	4a1d      	ldr	r2, [pc, #116]	; (8004d2c <floor+0x130>)
 8004cb6:	468a      	mov	sl, r1
 8004cb8:	4694      	mov	ip, r2
 8004cba:	2201      	movs	r2, #1
 8004cbc:	4463      	add	r3, ip
 8004cbe:	4252      	negs	r2, r2
 8004cc0:	40da      	lsrs	r2, r3
 8004cc2:	4684      	mov	ip, r0
 8004cc4:	4691      	mov	r9, r2
 8004cc6:	4202      	tst	r2, r0
 8004cc8:	d0cb      	beq.n	8004c62 <floor+0x66>
 8004cca:	4a16      	ldr	r2, [pc, #88]	; (8004d24 <floor+0x128>)
 8004ccc:	4b16      	ldr	r3, [pc, #88]	; (8004d28 <floor+0x12c>)
 8004cce:	0028      	movs	r0, r5
 8004cd0:	0021      	movs	r1, r4
 8004cd2:	f7fc fe97 	bl	8001a04 <__aeabi_dadd>
 8004cd6:	2200      	movs	r2, #0
 8004cd8:	2300      	movs	r3, #0
 8004cda:	f7fc fd55 	bl	8001788 <__aeabi_dcmpgt>
 8004cde:	2800      	cmp	r0, #0
 8004ce0:	d0bd      	beq.n	8004c5e <floor+0x62>
 8004ce2:	2c00      	cmp	r4, #0
 8004ce4:	db09      	blt.n	8004cfa <floor+0xfe>
 8004ce6:	464b      	mov	r3, r9
 8004ce8:	439f      	bics	r7, r3
 8004cea:	e7b8      	b.n	8004c5e <floor+0x62>
 8004cec:	0064      	lsls	r4, r4, #1
 8004cee:	0864      	lsrs	r4, r4, #1
 8004cf0:	2700      	movs	r7, #0
 8004cf2:	4325      	orrs	r5, r4
 8004cf4:	d0b3      	beq.n	8004c5e <floor+0x62>
 8004cf6:	4e0e      	ldr	r6, [pc, #56]	; (8004d30 <floor+0x134>)
 8004cf8:	e7b1      	b.n	8004c5e <floor+0x62>
 8004cfa:	4643      	mov	r3, r8
 8004cfc:	2b14      	cmp	r3, #20
 8004cfe:	d009      	beq.n	8004d14 <floor+0x118>
 8004d00:	2234      	movs	r2, #52	; 0x34
 8004d02:	1ad2      	subs	r2, r2, r3
 8004d04:	2301      	movs	r3, #1
 8004d06:	4093      	lsls	r3, r2
 8004d08:	195d      	adds	r5, r3, r5
 8004d0a:	42bd      	cmp	r5, r7
 8004d0c:	d204      	bcs.n	8004d18 <floor+0x11c>
 8004d0e:	002f      	movs	r7, r5
 8004d10:	1c66      	adds	r6, r4, #1
 8004d12:	e7e8      	b.n	8004ce6 <floor+0xea>
 8004d14:	1c66      	adds	r6, r4, #1
 8004d16:	e7e6      	b.n	8004ce6 <floor+0xea>
 8004d18:	002f      	movs	r7, r5
 8004d1a:	e7e4      	b.n	8004ce6 <floor+0xea>
 8004d1c:	fffffc01 	.word	0xfffffc01
 8004d20:	000fffff 	.word	0x000fffff
 8004d24:	8800759c 	.word	0x8800759c
 8004d28:	7e37e43c 	.word	0x7e37e43c
 8004d2c:	fffffbed 	.word	0xfffffbed
 8004d30:	bff00000 	.word	0xbff00000

08004d34 <scalbn>:
 8004d34:	004b      	lsls	r3, r1, #1
 8004d36:	b570      	push	{r4, r5, r6, lr}
 8004d38:	0d5b      	lsrs	r3, r3, #21
 8004d3a:	0014      	movs	r4, r2
 8004d3c:	000a      	movs	r2, r1
 8004d3e:	2b00      	cmp	r3, #0
 8004d40:	d125      	bne.n	8004d8e <scalbn+0x5a>
 8004d42:	004b      	lsls	r3, r1, #1
 8004d44:	085b      	lsrs	r3, r3, #1
 8004d46:	4303      	orrs	r3, r0
 8004d48:	d020      	beq.n	8004d8c <scalbn+0x58>
 8004d4a:	4b2b      	ldr	r3, [pc, #172]	; (8004df8 <scalbn+0xc4>)
 8004d4c:	2200      	movs	r2, #0
 8004d4e:	f7fb fe65 	bl	8000a1c <__aeabi_dmul>
 8004d52:	4b2a      	ldr	r3, [pc, #168]	; (8004dfc <scalbn+0xc8>)
 8004d54:	429c      	cmp	r4, r3
 8004d56:	db47      	blt.n	8004de8 <scalbn+0xb4>
 8004d58:	000a      	movs	r2, r1
 8004d5a:	004b      	lsls	r3, r1, #1
 8004d5c:	0d5b      	lsrs	r3, r3, #21
 8004d5e:	3b36      	subs	r3, #54	; 0x36
 8004d60:	4d27      	ldr	r5, [pc, #156]	; (8004e00 <scalbn+0xcc>)
 8004d62:	18e3      	adds	r3, r4, r3
 8004d64:	42ab      	cmp	r3, r5
 8004d66:	dc1a      	bgt.n	8004d9e <scalbn+0x6a>
 8004d68:	2b00      	cmp	r3, #0
 8004d6a:	dc37      	bgt.n	8004ddc <scalbn+0xa8>
 8004d6c:	001d      	movs	r5, r3
 8004d6e:	3535      	adds	r5, #53	; 0x35
 8004d70:	da29      	bge.n	8004dc6 <scalbn+0x92>
 8004d72:	4b24      	ldr	r3, [pc, #144]	; (8004e04 <scalbn+0xd0>)
 8004d74:	429c      	cmp	r4, r3
 8004d76:	dc12      	bgt.n	8004d9e <scalbn+0x6a>
 8004d78:	4c23      	ldr	r4, [pc, #140]	; (8004e08 <scalbn+0xd4>)
 8004d7a:	4d24      	ldr	r5, [pc, #144]	; (8004e0c <scalbn+0xd8>)
 8004d7c:	2900      	cmp	r1, #0
 8004d7e:	db38      	blt.n	8004df2 <scalbn+0xbe>
 8004d80:	0020      	movs	r0, r4
 8004d82:	0029      	movs	r1, r5
 8004d84:	4a20      	ldr	r2, [pc, #128]	; (8004e08 <scalbn+0xd4>)
 8004d86:	4b21      	ldr	r3, [pc, #132]	; (8004e0c <scalbn+0xd8>)
 8004d88:	f7fb fe48 	bl	8000a1c <__aeabi_dmul>
 8004d8c:	bd70      	pop	{r4, r5, r6, pc}
 8004d8e:	4d20      	ldr	r5, [pc, #128]	; (8004e10 <scalbn+0xdc>)
 8004d90:	42ab      	cmp	r3, r5
 8004d92:	d1e5      	bne.n	8004d60 <scalbn+0x2c>
 8004d94:	0002      	movs	r2, r0
 8004d96:	000b      	movs	r3, r1
 8004d98:	f7fc fe34 	bl	8001a04 <__aeabi_dadd>
 8004d9c:	e7f6      	b.n	8004d8c <scalbn+0x58>
 8004d9e:	4c1d      	ldr	r4, [pc, #116]	; (8004e14 <scalbn+0xe0>)
 8004da0:	4d1d      	ldr	r5, [pc, #116]	; (8004e18 <scalbn+0xe4>)
 8004da2:	2900      	cmp	r1, #0
 8004da4:	db06      	blt.n	8004db4 <scalbn+0x80>
 8004da6:	0020      	movs	r0, r4
 8004da8:	0029      	movs	r1, r5
 8004daa:	4a1a      	ldr	r2, [pc, #104]	; (8004e14 <scalbn+0xe0>)
 8004dac:	4b1a      	ldr	r3, [pc, #104]	; (8004e18 <scalbn+0xe4>)
 8004dae:	f7fb fe35 	bl	8000a1c <__aeabi_dmul>
 8004db2:	e7eb      	b.n	8004d8c <scalbn+0x58>
 8004db4:	4c17      	ldr	r4, [pc, #92]	; (8004e14 <scalbn+0xe0>)
 8004db6:	4d19      	ldr	r5, [pc, #100]	; (8004e1c <scalbn+0xe8>)
 8004db8:	0020      	movs	r0, r4
 8004dba:	0029      	movs	r1, r5
 8004dbc:	4a15      	ldr	r2, [pc, #84]	; (8004e14 <scalbn+0xe0>)
 8004dbe:	4b16      	ldr	r3, [pc, #88]	; (8004e18 <scalbn+0xe4>)
 8004dc0:	f7fb fe2c 	bl	8000a1c <__aeabi_dmul>
 8004dc4:	e7e2      	b.n	8004d8c <scalbn+0x58>
 8004dc6:	4c16      	ldr	r4, [pc, #88]	; (8004e20 <scalbn+0xec>)
 8004dc8:	3336      	adds	r3, #54	; 0x36
 8004dca:	4022      	ands	r2, r4
 8004dcc:	051b      	lsls	r3, r3, #20
 8004dce:	4313      	orrs	r3, r2
 8004dd0:	0019      	movs	r1, r3
 8004dd2:	2200      	movs	r2, #0
 8004dd4:	4b13      	ldr	r3, [pc, #76]	; (8004e24 <scalbn+0xf0>)
 8004dd6:	f7fb fe21 	bl	8000a1c <__aeabi_dmul>
 8004dda:	e7d7      	b.n	8004d8c <scalbn+0x58>
 8004ddc:	4c10      	ldr	r4, [pc, #64]	; (8004e20 <scalbn+0xec>)
 8004dde:	051b      	lsls	r3, r3, #20
 8004de0:	4022      	ands	r2, r4
 8004de2:	431a      	orrs	r2, r3
 8004de4:	0011      	movs	r1, r2
 8004de6:	e7d1      	b.n	8004d8c <scalbn+0x58>
 8004de8:	4a07      	ldr	r2, [pc, #28]	; (8004e08 <scalbn+0xd4>)
 8004dea:	4b08      	ldr	r3, [pc, #32]	; (8004e0c <scalbn+0xd8>)
 8004dec:	f7fb fe16 	bl	8000a1c <__aeabi_dmul>
 8004df0:	e7cc      	b.n	8004d8c <scalbn+0x58>
 8004df2:	4c05      	ldr	r4, [pc, #20]	; (8004e08 <scalbn+0xd4>)
 8004df4:	4d0c      	ldr	r5, [pc, #48]	; (8004e28 <scalbn+0xf4>)
 8004df6:	e7c3      	b.n	8004d80 <scalbn+0x4c>
 8004df8:	43500000 	.word	0x43500000
 8004dfc:	ffff3cb0 	.word	0xffff3cb0
 8004e00:	000007fe 	.word	0x000007fe
 8004e04:	0000c350 	.word	0x0000c350
 8004e08:	c2f8f359 	.word	0xc2f8f359
 8004e0c:	01a56e1f 	.word	0x01a56e1f
 8004e10:	000007ff 	.word	0x000007ff
 8004e14:	8800759c 	.word	0x8800759c
 8004e18:	7e37e43c 	.word	0x7e37e43c
 8004e1c:	fe37e43c 	.word	0xfe37e43c
 8004e20:	800fffff 	.word	0x800fffff
 8004e24:	3c900000 	.word	0x3c900000
 8004e28:	81a56e1f 	.word	0x81a56e1f

08004e2c <_init>:
 8004e2c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8004e2e:	46c0      	nop			; (mov r8, r8)
 8004e30:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8004e32:	bc08      	pop	{r3}
 8004e34:	469e      	mov	lr, r3
 8004e36:	4770      	bx	lr

08004e38 <_fini>:
 8004e38:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8004e3a:	46c0      	nop			; (mov r8, r8)
 8004e3c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8004e3e:	bc08      	pop	{r3}
 8004e40:	469e      	mov	lr, r3
 8004e42:	4770      	bx	lr
