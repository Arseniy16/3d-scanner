
build/timers_pwm.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00004df8  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000290  08004eb8  08004eb8  00014eb8  2**3  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08005148  08005148  00015148  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08005150  08005150  00015150  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08005154  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              0000003c  20000438  08005588  00020438  2**3  ALLOC
  7 ._user_heap_stack 00000604  20000474  08005588  00020474  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00001e48  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     00000459  00000000  00000000  000222a4  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        00001086  00000000  00000000  000226fd  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    000002c8  00000000  00000000  00023783  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     00000298  00000000  00000000  00023a4b  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       00001193  00000000  00000000  00023ce3  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        00000df1  00000000  00000000  00024e76  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          0000004d  00000000  00000000  00025c67  2**0  CONTENTS, READONLY
 17 .debug_frame      00000df4  00000000  00000000  00025cb4  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000e4:	08004ea0 	.word	0x08004ea0

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
 8000104:	08004ea0 	.word	0x08004ea0

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
 80007b0:	08004ecc 	.word	0x08004ecc
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
 8000db4:	08004f0c 	.word	0x08004f0c
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
 80020a6:	f001 fc09 	bl	80038bc <SystemInit>
 80020aa:	f001 fc5d 	bl	8003968 <__libc_init_array>
 80020ae:	f001 fb47 	bl	8003740 <main>

080020b2 <LoopForever>:
 80020b2:	e7fe      	b.n	80020b2 <LoopForever>
 80020b4:	20002000 	.word	0x20002000
 80020b8:	20000000 	.word	0x20000000
 80020bc:	20000434 	.word	0x20000434
 80020c0:	08005154 	.word	0x08005154
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
 80026c8:	08004f4c 	.word	0x08004f4c
 80026cc:	08004f54 	.word	0x08004f54

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
 8002754:	08004f64 	.word	0x08004f64

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
 8002818:	08004f4c 	.word	0x08004f4c
 800281c:	08004f5c 	.word	0x08004f5c

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
 80028b0:	08004f4c 	.word	0x08004f4c
 80028b4:	08004f5c 	.word	0x08004f5c

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
 800293c:	08004f64 	.word	0x08004f64

08002940 <LL_TIM_ClearFlag_CC1>:
 8002940:	b580      	push	{r7, lr}
 8002942:	b082      	sub	sp, #8
 8002944:	af00      	add	r7, sp, #0
 8002946:	6078      	str	r0, [r7, #4]
 8002948:	687b      	ldr	r3, [r7, #4]
 800294a:	2203      	movs	r2, #3
 800294c:	4252      	negs	r2, r2
 800294e:	611a      	str	r2, [r3, #16]
 8002950:	46c0      	nop			; (mov r8, r8)
 8002952:	46bd      	mov	sp, r7
 8002954:	b002      	add	sp, #8
 8002956:	bd80      	pop	{r7, pc}

08002958 <LL_TIM_ClearFlag_CC2>:
 8002958:	b580      	push	{r7, lr}
 800295a:	b082      	sub	sp, #8
 800295c:	af00      	add	r7, sp, #0
 800295e:	6078      	str	r0, [r7, #4]
 8002960:	687b      	ldr	r3, [r7, #4]
 8002962:	2205      	movs	r2, #5
 8002964:	4252      	negs	r2, r2
 8002966:	611a      	str	r2, [r3, #16]
 8002968:	46c0      	nop			; (mov r8, r8)
 800296a:	46bd      	mov	sp, r7
 800296c:	b002      	add	sp, #8
 800296e:	bd80      	pop	{r7, pc}

08002970 <LL_TIM_EnableIT_CC1>:
 8002970:	b580      	push	{r7, lr}
 8002972:	b082      	sub	sp, #8
 8002974:	af00      	add	r7, sp, #0
 8002976:	6078      	str	r0, [r7, #4]
 8002978:	687b      	ldr	r3, [r7, #4]
 800297a:	68db      	ldr	r3, [r3, #12]
 800297c:	2202      	movs	r2, #2
 800297e:	431a      	orrs	r2, r3
 8002980:	687b      	ldr	r3, [r7, #4]
 8002982:	60da      	str	r2, [r3, #12]
 8002984:	46c0      	nop			; (mov r8, r8)
 8002986:	46bd      	mov	sp, r7
 8002988:	b002      	add	sp, #8
 800298a:	bd80      	pop	{r7, pc}

0800298c <LL_TIM_EnableIT_CC2>:
 800298c:	b580      	push	{r7, lr}
 800298e:	b082      	sub	sp, #8
 8002990:	af00      	add	r7, sp, #0
 8002992:	6078      	str	r0, [r7, #4]
 8002994:	687b      	ldr	r3, [r7, #4]
 8002996:	68db      	ldr	r3, [r3, #12]
 8002998:	2204      	movs	r2, #4
 800299a:	431a      	orrs	r2, r3
 800299c:	687b      	ldr	r3, [r7, #4]
 800299e:	60da      	str	r2, [r3, #12]
 80029a0:	46c0      	nop			; (mov r8, r8)
 80029a2:	46bd      	mov	sp, r7
 80029a4:	b002      	add	sp, #8
 80029a6:	bd80      	pop	{r7, pc}

080029a8 <LL_USART_Enable>:
 80029a8:	b580      	push	{r7, lr}
 80029aa:	b082      	sub	sp, #8
 80029ac:	af00      	add	r7, sp, #0
 80029ae:	6078      	str	r0, [r7, #4]
 80029b0:	687b      	ldr	r3, [r7, #4]
 80029b2:	681b      	ldr	r3, [r3, #0]
 80029b4:	2201      	movs	r2, #1
 80029b6:	431a      	orrs	r2, r3
 80029b8:	687b      	ldr	r3, [r7, #4]
 80029ba:	601a      	str	r2, [r3, #0]
 80029bc:	46c0      	nop			; (mov r8, r8)
 80029be:	46bd      	mov	sp, r7
 80029c0:	b002      	add	sp, #8
 80029c2:	bd80      	pop	{r7, pc}

080029c4 <LL_USART_SetTransferDirection>:
 80029c4:	b580      	push	{r7, lr}
 80029c6:	b082      	sub	sp, #8
 80029c8:	af00      	add	r7, sp, #0
 80029ca:	6078      	str	r0, [r7, #4]
 80029cc:	6039      	str	r1, [r7, #0]
 80029ce:	687b      	ldr	r3, [r7, #4]
 80029d0:	681b      	ldr	r3, [r3, #0]
 80029d2:	220c      	movs	r2, #12
 80029d4:	4393      	bics	r3, r2
 80029d6:	001a      	movs	r2, r3
 80029d8:	683b      	ldr	r3, [r7, #0]
 80029da:	431a      	orrs	r2, r3
 80029dc:	687b      	ldr	r3, [r7, #4]
 80029de:	601a      	str	r2, [r3, #0]
 80029e0:	46c0      	nop			; (mov r8, r8)
 80029e2:	46bd      	mov	sp, r7
 80029e4:	b002      	add	sp, #8
 80029e6:	bd80      	pop	{r7, pc}

080029e8 <LL_USART_SetParity>:
 80029e8:	b580      	push	{r7, lr}
 80029ea:	b082      	sub	sp, #8
 80029ec:	af00      	add	r7, sp, #0
 80029ee:	6078      	str	r0, [r7, #4]
 80029f0:	6039      	str	r1, [r7, #0]
 80029f2:	687b      	ldr	r3, [r7, #4]
 80029f4:	681b      	ldr	r3, [r3, #0]
 80029f6:	4a05      	ldr	r2, [pc, #20]	; (8002a0c <LL_USART_SetParity+0x24>)
 80029f8:	401a      	ands	r2, r3
 80029fa:	683b      	ldr	r3, [r7, #0]
 80029fc:	431a      	orrs	r2, r3
 80029fe:	687b      	ldr	r3, [r7, #4]
 8002a00:	601a      	str	r2, [r3, #0]
 8002a02:	46c0      	nop			; (mov r8, r8)
 8002a04:	46bd      	mov	sp, r7
 8002a06:	b002      	add	sp, #8
 8002a08:	bd80      	pop	{r7, pc}
 8002a0a:	46c0      	nop			; (mov r8, r8)
 8002a0c:	fffff9ff 	.word	0xfffff9ff

08002a10 <LL_USART_SetDataWidth>:
 8002a10:	b580      	push	{r7, lr}
 8002a12:	b082      	sub	sp, #8
 8002a14:	af00      	add	r7, sp, #0
 8002a16:	6078      	str	r0, [r7, #4]
 8002a18:	6039      	str	r1, [r7, #0]
 8002a1a:	687b      	ldr	r3, [r7, #4]
 8002a1c:	681b      	ldr	r3, [r3, #0]
 8002a1e:	4a05      	ldr	r2, [pc, #20]	; (8002a34 <LL_USART_SetDataWidth+0x24>)
 8002a20:	401a      	ands	r2, r3
 8002a22:	683b      	ldr	r3, [r7, #0]
 8002a24:	431a      	orrs	r2, r3
 8002a26:	687b      	ldr	r3, [r7, #4]
 8002a28:	601a      	str	r2, [r3, #0]
 8002a2a:	46c0      	nop			; (mov r8, r8)
 8002a2c:	46bd      	mov	sp, r7
 8002a2e:	b002      	add	sp, #8
 8002a30:	bd80      	pop	{r7, pc}
 8002a32:	46c0      	nop			; (mov r8, r8)
 8002a34:	ffffefff 	.word	0xffffefff

08002a38 <LL_USART_SetStopBitsLength>:
 8002a38:	b580      	push	{r7, lr}
 8002a3a:	b082      	sub	sp, #8
 8002a3c:	af00      	add	r7, sp, #0
 8002a3e:	6078      	str	r0, [r7, #4]
 8002a40:	6039      	str	r1, [r7, #0]
 8002a42:	687b      	ldr	r3, [r7, #4]
 8002a44:	685b      	ldr	r3, [r3, #4]
 8002a46:	4a05      	ldr	r2, [pc, #20]	; (8002a5c <LL_USART_SetStopBitsLength+0x24>)
 8002a48:	401a      	ands	r2, r3
 8002a4a:	683b      	ldr	r3, [r7, #0]
 8002a4c:	431a      	orrs	r2, r3
 8002a4e:	687b      	ldr	r3, [r7, #4]
 8002a50:	605a      	str	r2, [r3, #4]
 8002a52:	46c0      	nop			; (mov r8, r8)
 8002a54:	46bd      	mov	sp, r7
 8002a56:	b002      	add	sp, #8
 8002a58:	bd80      	pop	{r7, pc}
 8002a5a:	46c0      	nop			; (mov r8, r8)
 8002a5c:	ffffcfff 	.word	0xffffcfff

08002a60 <LL_USART_SetTransferBitOrder>:
 8002a60:	b580      	push	{r7, lr}
 8002a62:	b082      	sub	sp, #8
 8002a64:	af00      	add	r7, sp, #0
 8002a66:	6078      	str	r0, [r7, #4]
 8002a68:	6039      	str	r1, [r7, #0]
 8002a6a:	687b      	ldr	r3, [r7, #4]
 8002a6c:	685b      	ldr	r3, [r3, #4]
 8002a6e:	4a05      	ldr	r2, [pc, #20]	; (8002a84 <LL_USART_SetTransferBitOrder+0x24>)
 8002a70:	401a      	ands	r2, r3
 8002a72:	683b      	ldr	r3, [r7, #0]
 8002a74:	431a      	orrs	r2, r3
 8002a76:	687b      	ldr	r3, [r7, #4]
 8002a78:	605a      	str	r2, [r3, #4]
 8002a7a:	46c0      	nop			; (mov r8, r8)
 8002a7c:	46bd      	mov	sp, r7
 8002a7e:	b002      	add	sp, #8
 8002a80:	bd80      	pop	{r7, pc}
 8002a82:	46c0      	nop			; (mov r8, r8)
 8002a84:	fff7ffff 	.word	0xfff7ffff

08002a88 <LL_USART_SetBaudRate>:
 8002a88:	b5b0      	push	{r4, r5, r7, lr}
 8002a8a:	b084      	sub	sp, #16
 8002a8c:	af00      	add	r7, sp, #0
 8002a8e:	60f8      	str	r0, [r7, #12]
 8002a90:	60b9      	str	r1, [r7, #8]
 8002a92:	607a      	str	r2, [r7, #4]
 8002a94:	603b      	str	r3, [r7, #0]
 8002a96:	687a      	ldr	r2, [r7, #4]
 8002a98:	2380      	movs	r3, #128	; 0x80
 8002a9a:	021b      	lsls	r3, r3, #8
 8002a9c:	429a      	cmp	r2, r3
 8002a9e:	d117      	bne.n	8002ad0 <LL_USART_SetBaudRate+0x48>
 8002aa0:	68bb      	ldr	r3, [r7, #8]
 8002aa2:	005a      	lsls	r2, r3, #1
 8002aa4:	683b      	ldr	r3, [r7, #0]
 8002aa6:	085b      	lsrs	r3, r3, #1
 8002aa8:	18d3      	adds	r3, r2, r3
 8002aaa:	6839      	ldr	r1, [r7, #0]
 8002aac:	0018      	movs	r0, r3
 8002aae:	f7fd fb2b 	bl	8000108 <__udivsi3>
 8002ab2:	0003      	movs	r3, r0
 8002ab4:	b29b      	uxth	r3, r3
 8002ab6:	001d      	movs	r5, r3
 8002ab8:	4b0e      	ldr	r3, [pc, #56]	; (8002af4 <LL_USART_SetBaudRate+0x6c>)
 8002aba:	402b      	ands	r3, r5
 8002abc:	001c      	movs	r4, r3
 8002abe:	086b      	lsrs	r3, r5, #1
 8002ac0:	b29b      	uxth	r3, r3
 8002ac2:	001a      	movs	r2, r3
 8002ac4:	2307      	movs	r3, #7
 8002ac6:	4013      	ands	r3, r2
 8002ac8:	431c      	orrs	r4, r3
 8002aca:	68fb      	ldr	r3, [r7, #12]
 8002acc:	60dc      	str	r4, [r3, #12]
 8002ace:	e00c      	b.n	8002aea <LL_USART_SetBaudRate+0x62>
 8002ad0:	683b      	ldr	r3, [r7, #0]
 8002ad2:	085a      	lsrs	r2, r3, #1
 8002ad4:	68bb      	ldr	r3, [r7, #8]
 8002ad6:	18d3      	adds	r3, r2, r3
 8002ad8:	6839      	ldr	r1, [r7, #0]
 8002ada:	0018      	movs	r0, r3
 8002adc:	f7fd fb14 	bl	8000108 <__udivsi3>
 8002ae0:	0003      	movs	r3, r0
 8002ae2:	b29b      	uxth	r3, r3
 8002ae4:	001a      	movs	r2, r3
 8002ae6:	68fb      	ldr	r3, [r7, #12]
 8002ae8:	60da      	str	r2, [r3, #12]
 8002aea:	46c0      	nop			; (mov r8, r8)
 8002aec:	46bd      	mov	sp, r7
 8002aee:	b004      	add	sp, #16
 8002af0:	bdb0      	pop	{r4, r5, r7, pc}
 8002af2:	46c0      	nop			; (mov r8, r8)
 8002af4:	0000fff0 	.word	0x0000fff0

08002af8 <LL_USART_IsActiveFlag_TC>:
 8002af8:	b580      	push	{r7, lr}
 8002afa:	b082      	sub	sp, #8
 8002afc:	af00      	add	r7, sp, #0
 8002afe:	6078      	str	r0, [r7, #4]
 8002b00:	687b      	ldr	r3, [r7, #4]
 8002b02:	69db      	ldr	r3, [r3, #28]
 8002b04:	2240      	movs	r2, #64	; 0x40
 8002b06:	4013      	ands	r3, r2
 8002b08:	3b40      	subs	r3, #64	; 0x40
 8002b0a:	425a      	negs	r2, r3
 8002b0c:	4153      	adcs	r3, r2
 8002b0e:	b2db      	uxtb	r3, r3
 8002b10:	0018      	movs	r0, r3
 8002b12:	46bd      	mov	sp, r7
 8002b14:	b002      	add	sp, #8
 8002b16:	bd80      	pop	{r7, pc}

08002b18 <LL_USART_IsActiveFlag_TXE>:
 8002b18:	b580      	push	{r7, lr}
 8002b1a:	b082      	sub	sp, #8
 8002b1c:	af00      	add	r7, sp, #0
 8002b1e:	6078      	str	r0, [r7, #4]
 8002b20:	687b      	ldr	r3, [r7, #4]
 8002b22:	69db      	ldr	r3, [r3, #28]
 8002b24:	2280      	movs	r2, #128	; 0x80
 8002b26:	4013      	ands	r3, r2
 8002b28:	3b80      	subs	r3, #128	; 0x80
 8002b2a:	425a      	negs	r2, r3
 8002b2c:	4153      	adcs	r3, r2
 8002b2e:	b2db      	uxtb	r3, r3
 8002b30:	0018      	movs	r0, r3
 8002b32:	46bd      	mov	sp, r7
 8002b34:	b002      	add	sp, #8
 8002b36:	bd80      	pop	{r7, pc}

08002b38 <LL_USART_IsActiveFlag_TEACK>:
 8002b38:	b580      	push	{r7, lr}
 8002b3a:	b082      	sub	sp, #8
 8002b3c:	af00      	add	r7, sp, #0
 8002b3e:	6078      	str	r0, [r7, #4]
 8002b40:	687b      	ldr	r3, [r7, #4]
 8002b42:	69da      	ldr	r2, [r3, #28]
 8002b44:	2380      	movs	r3, #128	; 0x80
 8002b46:	039b      	lsls	r3, r3, #14
 8002b48:	4013      	ands	r3, r2
 8002b4a:	4a05      	ldr	r2, [pc, #20]	; (8002b60 <LL_USART_IsActiveFlag_TEACK+0x28>)
 8002b4c:	4694      	mov	ip, r2
 8002b4e:	4463      	add	r3, ip
 8002b50:	425a      	negs	r2, r3
 8002b52:	4153      	adcs	r3, r2
 8002b54:	b2db      	uxtb	r3, r3
 8002b56:	0018      	movs	r0, r3
 8002b58:	46bd      	mov	sp, r7
 8002b5a:	b002      	add	sp, #8
 8002b5c:	bd80      	pop	{r7, pc}
 8002b5e:	46c0      	nop			; (mov r8, r8)
 8002b60:	ffe00000 	.word	0xffe00000

08002b64 <LL_USART_IsActiveFlag_REACK>:
 8002b64:	b580      	push	{r7, lr}
 8002b66:	b082      	sub	sp, #8
 8002b68:	af00      	add	r7, sp, #0
 8002b6a:	6078      	str	r0, [r7, #4]
 8002b6c:	687b      	ldr	r3, [r7, #4]
 8002b6e:	69da      	ldr	r2, [r3, #28]
 8002b70:	2380      	movs	r3, #128	; 0x80
 8002b72:	03db      	lsls	r3, r3, #15
 8002b74:	4013      	ands	r3, r2
 8002b76:	4a05      	ldr	r2, [pc, #20]	; (8002b8c <LL_USART_IsActiveFlag_REACK+0x28>)
 8002b78:	4694      	mov	ip, r2
 8002b7a:	4463      	add	r3, ip
 8002b7c:	425a      	negs	r2, r3
 8002b7e:	4153      	adcs	r3, r2
 8002b80:	b2db      	uxtb	r3, r3
 8002b82:	0018      	movs	r0, r3
 8002b84:	46bd      	mov	sp, r7
 8002b86:	b002      	add	sp, #8
 8002b88:	bd80      	pop	{r7, pc}
 8002b8a:	46c0      	nop			; (mov r8, r8)
 8002b8c:	ffc00000 	.word	0xffc00000

08002b90 <LL_USART_ClearFlag_TC>:
 8002b90:	b580      	push	{r7, lr}
 8002b92:	b082      	sub	sp, #8
 8002b94:	af00      	add	r7, sp, #0
 8002b96:	6078      	str	r0, [r7, #4]
 8002b98:	687b      	ldr	r3, [r7, #4]
 8002b9a:	2240      	movs	r2, #64	; 0x40
 8002b9c:	621a      	str	r2, [r3, #32]
 8002b9e:	46c0      	nop			; (mov r8, r8)
 8002ba0:	46bd      	mov	sp, r7
 8002ba2:	b002      	add	sp, #8
 8002ba4:	bd80      	pop	{r7, pc}

08002ba6 <LL_USART_EnableIT_IDLE>:
 8002ba6:	b580      	push	{r7, lr}
 8002ba8:	b082      	sub	sp, #8
 8002baa:	af00      	add	r7, sp, #0
 8002bac:	6078      	str	r0, [r7, #4]
 8002bae:	687b      	ldr	r3, [r7, #4]
 8002bb0:	681b      	ldr	r3, [r3, #0]
 8002bb2:	2210      	movs	r2, #16
 8002bb4:	431a      	orrs	r2, r3
 8002bb6:	687b      	ldr	r3, [r7, #4]
 8002bb8:	601a      	str	r2, [r3, #0]
 8002bba:	46c0      	nop			; (mov r8, r8)
 8002bbc:	46bd      	mov	sp, r7
 8002bbe:	b002      	add	sp, #8
 8002bc0:	bd80      	pop	{r7, pc}

08002bc2 <LL_USART_EnableIT_RXNE>:
 8002bc2:	b580      	push	{r7, lr}
 8002bc4:	b082      	sub	sp, #8
 8002bc6:	af00      	add	r7, sp, #0
 8002bc8:	6078      	str	r0, [r7, #4]
 8002bca:	687b      	ldr	r3, [r7, #4]
 8002bcc:	681b      	ldr	r3, [r3, #0]
 8002bce:	2220      	movs	r2, #32
 8002bd0:	431a      	orrs	r2, r3
 8002bd2:	687b      	ldr	r3, [r7, #4]
 8002bd4:	601a      	str	r2, [r3, #0]
 8002bd6:	46c0      	nop			; (mov r8, r8)
 8002bd8:	46bd      	mov	sp, r7
 8002bda:	b002      	add	sp, #8
 8002bdc:	bd80      	pop	{r7, pc}

08002bde <LL_USART_TransmitData8>:
 8002bde:	b580      	push	{r7, lr}
 8002be0:	b082      	sub	sp, #8
 8002be2:	af00      	add	r7, sp, #0
 8002be4:	6078      	str	r0, [r7, #4]
 8002be6:	000a      	movs	r2, r1
 8002be8:	1cfb      	adds	r3, r7, #3
 8002bea:	701a      	strb	r2, [r3, #0]
 8002bec:	1cfb      	adds	r3, r7, #3
 8002bee:	781b      	ldrb	r3, [r3, #0]
 8002bf0:	b29a      	uxth	r2, r3
 8002bf2:	687b      	ldr	r3, [r7, #4]
 8002bf4:	851a      	strh	r2, [r3, #40]	; 0x28
 8002bf6:	46c0      	nop			; (mov r8, r8)
 8002bf8:	46bd      	mov	sp, r7
 8002bfa:	b002      	add	sp, #8
 8002bfc:	bd80      	pop	{r7, pc}
	...

08002c00 <LL_InitTick>:
 8002c00:	b580      	push	{r7, lr}
 8002c02:	b082      	sub	sp, #8
 8002c04:	af00      	add	r7, sp, #0
 8002c06:	6078      	str	r0, [r7, #4]
 8002c08:	6039      	str	r1, [r7, #0]
 8002c0a:	6839      	ldr	r1, [r7, #0]
 8002c0c:	6878      	ldr	r0, [r7, #4]
 8002c0e:	f7fd fa7b 	bl	8000108 <__udivsi3>
 8002c12:	0003      	movs	r3, r0
 8002c14:	001a      	movs	r2, r3
 8002c16:	4b06      	ldr	r3, [pc, #24]	; (8002c30 <LL_InitTick+0x30>)
 8002c18:	3a01      	subs	r2, #1
 8002c1a:	605a      	str	r2, [r3, #4]
 8002c1c:	4b04      	ldr	r3, [pc, #16]	; (8002c30 <LL_InitTick+0x30>)
 8002c1e:	2200      	movs	r2, #0
 8002c20:	609a      	str	r2, [r3, #8]
 8002c22:	4b03      	ldr	r3, [pc, #12]	; (8002c30 <LL_InitTick+0x30>)
 8002c24:	2205      	movs	r2, #5
 8002c26:	601a      	str	r2, [r3, #0]
 8002c28:	46c0      	nop			; (mov r8, r8)
 8002c2a:	46bd      	mov	sp, r7
 8002c2c:	b002      	add	sp, #8
 8002c2e:	bd80      	pop	{r7, pc}
 8002c30:	e000e010 	.word	0xe000e010

08002c34 <LL_SYSTICK_EnableIT>:
 8002c34:	b580      	push	{r7, lr}
 8002c36:	af00      	add	r7, sp, #0
 8002c38:	4b04      	ldr	r3, [pc, #16]	; (8002c4c <LL_SYSTICK_EnableIT+0x18>)
 8002c3a:	681a      	ldr	r2, [r3, #0]
 8002c3c:	4b03      	ldr	r3, [pc, #12]	; (8002c4c <LL_SYSTICK_EnableIT+0x18>)
 8002c3e:	2102      	movs	r1, #2
 8002c40:	430a      	orrs	r2, r1
 8002c42:	601a      	str	r2, [r3, #0]
 8002c44:	46c0      	nop			; (mov r8, r8)
 8002c46:	46bd      	mov	sp, r7
 8002c48:	bd80      	pop	{r7, pc}
 8002c4a:	46c0      	nop			; (mov r8, r8)
 8002c4c:	e000e010 	.word	0xe000e010

08002c50 <mask_indicator>:
 8002c50:	b580      	push	{r7, lr}
 8002c52:	b082      	sub	sp, #8
 8002c54:	af00      	add	r7, sp, #0
 8002c56:	6078      	str	r0, [r7, #4]
 8002c58:	687b      	ldr	r3, [r7, #4]
 8002c5a:	09db      	lsrs	r3, r3, #7
 8002c5c:	2201      	movs	r2, #1
 8002c5e:	4013      	ands	r3, r2
 8002c60:	01da      	lsls	r2, r3, #7
 8002c62:	687b      	ldr	r3, [r7, #4]
 8002c64:	099b      	lsrs	r3, r3, #6
 8002c66:	2101      	movs	r1, #1
 8002c68:	400b      	ands	r3, r1
 8002c6a:	019b      	lsls	r3, r3, #6
 8002c6c:	431a      	orrs	r2, r3
 8002c6e:	687b      	ldr	r3, [r7, #4]
 8002c70:	095b      	lsrs	r3, r3, #5
 8002c72:	2101      	movs	r1, #1
 8002c74:	400b      	ands	r3, r1
 8002c76:	015b      	lsls	r3, r3, #5
 8002c78:	431a      	orrs	r2, r3
 8002c7a:	687b      	ldr	r3, [r7, #4]
 8002c7c:	091b      	lsrs	r3, r3, #4
 8002c7e:	2101      	movs	r1, #1
 8002c80:	400b      	ands	r3, r1
 8002c82:	011b      	lsls	r3, r3, #4
 8002c84:	431a      	orrs	r2, r3
 8002c86:	687b      	ldr	r3, [r7, #4]
 8002c88:	08db      	lsrs	r3, r3, #3
 8002c8a:	2101      	movs	r1, #1
 8002c8c:	400b      	ands	r3, r1
 8002c8e:	00db      	lsls	r3, r3, #3
 8002c90:	431a      	orrs	r2, r3
 8002c92:	687b      	ldr	r3, [r7, #4]
 8002c94:	089b      	lsrs	r3, r3, #2
 8002c96:	2101      	movs	r1, #1
 8002c98:	400b      	ands	r3, r1
 8002c9a:	009b      	lsls	r3, r3, #2
 8002c9c:	431a      	orrs	r2, r3
 8002c9e:	687b      	ldr	r3, [r7, #4]
 8002ca0:	085b      	lsrs	r3, r3, #1
 8002ca2:	2101      	movs	r1, #1
 8002ca4:	400b      	ands	r3, r1
 8002ca6:	005b      	lsls	r3, r3, #1
 8002ca8:	431a      	orrs	r2, r3
 8002caa:	687b      	ldr	r3, [r7, #4]
 8002cac:	2101      	movs	r1, #1
 8002cae:	400b      	ands	r3, r1
 8002cb0:	4313      	orrs	r3, r2
 8002cb2:	0018      	movs	r0, r3
 8002cb4:	46bd      	mov	sp, r7
 8002cb6:	b002      	add	sp, #8
 8002cb8:	bd80      	pop	{r7, pc}
	...

08002cbc <rcc_config>:
 8002cbc:	b580      	push	{r7, lr}
 8002cbe:	af00      	add	r7, sp, #0
 8002cc0:	2001      	movs	r0, #1
 8002cc2:	f7ff fb53 	bl	800236c <LL_FLASH_SetLatency>
 8002cc6:	f7ff fa87 	bl	80021d8 <LL_RCC_HSI_Enable>
 8002cca:	46c0      	nop			; (mov r8, r8)
 8002ccc:	f7ff fa92 	bl	80021f4 <LL_RCC_HSI_IsReady>
 8002cd0:	0003      	movs	r3, r0
 8002cd2:	2b01      	cmp	r3, #1
 8002cd4:	d1fa      	bne.n	8002ccc <rcc_config+0x10>
 8002cd6:	23a0      	movs	r3, #160	; 0xa0
 8002cd8:	039b      	lsls	r3, r3, #14
 8002cda:	0019      	movs	r1, r3
 8002cdc:	2000      	movs	r0, #0
 8002cde:	f7ff fb1f 	bl	8002320 <LL_RCC_PLL_ConfigDomain_SYS>
 8002ce2:	f7ff fafb 	bl	80022dc <LL_RCC_PLL_Enable>
 8002ce6:	46c0      	nop			; (mov r8, r8)
 8002ce8:	f7ff fb06 	bl	80022f8 <LL_RCC_PLL_IsReady>
 8002cec:	0003      	movs	r3, r0
 8002cee:	2b01      	cmp	r3, #1
 8002cf0:	d1fa      	bne.n	8002ce8 <rcc_config+0x2c>
 8002cf2:	2000      	movs	r0, #0
 8002cf4:	f7ff faae 	bl	8002254 <LL_RCC_SetAHBPrescaler>
 8002cf8:	2002      	movs	r0, #2
 8002cfa:	f7ff fa8b 	bl	8002214 <LL_RCC_SetSysClkSource>
 8002cfe:	46c0      	nop			; (mov r8, r8)
 8002d00:	f7ff fa9c 	bl	800223c <LL_RCC_GetSysClkSource>
 8002d04:	0003      	movs	r3, r0
 8002d06:	2b08      	cmp	r3, #8
 8002d08:	d1fa      	bne.n	8002d00 <rcc_config+0x44>
 8002d0a:	2000      	movs	r0, #0
 8002d0c:	f7ff fab6 	bl	800227c <LL_RCC_SetAPB1Prescaler>
 8002d10:	4b02      	ldr	r3, [pc, #8]	; (8002d1c <rcc_config+0x60>)
 8002d12:	4a03      	ldr	r2, [pc, #12]	; (8002d20 <rcc_config+0x64>)
 8002d14:	601a      	str	r2, [r3, #0]
 8002d16:	46c0      	nop			; (mov r8, r8)
 8002d18:	46bd      	mov	sp, r7
 8002d1a:	bd80      	pop	{r7, pc}
 8002d1c:	20000004 	.word	0x20000004
 8002d20:	02dc6c00 	.word	0x02dc6c00

08002d24 <gpio_config>:
 8002d24:	b580      	push	{r7, lr}
 8002d26:	af00      	add	r7, sp, #0
 8002d28:	2380      	movs	r3, #128	; 0x80
 8002d2a:	031b      	lsls	r3, r3, #12
 8002d2c:	0018      	movs	r0, r3
 8002d2e:	f7ff fb31 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 8002d32:	2380      	movs	r3, #128	; 0x80
 8002d34:	005b      	lsls	r3, r3, #1
 8002d36:	482e      	ldr	r0, [pc, #184]	; (8002df0 <gpio_config+0xcc>)
 8002d38:	2201      	movs	r2, #1
 8002d3a:	0019      	movs	r1, r3
 8002d3c:	f7ff fb6c 	bl	8002418 <LL_GPIO_SetPinMode>
 8002d40:	2380      	movs	r3, #128	; 0x80
 8002d42:	009b      	lsls	r3, r3, #2
 8002d44:	482a      	ldr	r0, [pc, #168]	; (8002df0 <gpio_config+0xcc>)
 8002d46:	2201      	movs	r2, #1
 8002d48:	0019      	movs	r1, r3
 8002d4a:	f7ff fb65 	bl	8002418 <LL_GPIO_SetPinMode>
 8002d4e:	4b28      	ldr	r3, [pc, #160]	; (8002df0 <gpio_config+0xcc>)
 8002d50:	2201      	movs	r2, #1
 8002d52:	2101      	movs	r1, #1
 8002d54:	0018      	movs	r0, r3
 8002d56:	f7ff fb5f 	bl	8002418 <LL_GPIO_SetPinMode>
 8002d5a:	4b25      	ldr	r3, [pc, #148]	; (8002df0 <gpio_config+0xcc>)
 8002d5c:	2201      	movs	r2, #1
 8002d5e:	2102      	movs	r1, #2
 8002d60:	0018      	movs	r0, r3
 8002d62:	f7ff fb59 	bl	8002418 <LL_GPIO_SetPinMode>
 8002d66:	4b22      	ldr	r3, [pc, #136]	; (8002df0 <gpio_config+0xcc>)
 8002d68:	2201      	movs	r2, #1
 8002d6a:	2104      	movs	r1, #4
 8002d6c:	0018      	movs	r0, r3
 8002d6e:	f7ff fb53 	bl	8002418 <LL_GPIO_SetPinMode>
 8002d72:	4b1f      	ldr	r3, [pc, #124]	; (8002df0 <gpio_config+0xcc>)
 8002d74:	2201      	movs	r2, #1
 8002d76:	2108      	movs	r1, #8
 8002d78:	0018      	movs	r0, r3
 8002d7a:	f7ff fb4d 	bl	8002418 <LL_GPIO_SetPinMode>
 8002d7e:	2380      	movs	r3, #128	; 0x80
 8002d80:	02db      	lsls	r3, r3, #11
 8002d82:	0018      	movs	r0, r3
 8002d84:	f7ff fb06 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 8002d88:	4b1a      	ldr	r3, [pc, #104]	; (8002df4 <gpio_config+0xd0>)
 8002d8a:	2201      	movs	r2, #1
 8002d8c:	2101      	movs	r1, #1
 8002d8e:	0018      	movs	r0, r3
 8002d90:	f7ff fb42 	bl	8002418 <LL_GPIO_SetPinMode>
 8002d94:	4b17      	ldr	r3, [pc, #92]	; (8002df4 <gpio_config+0xd0>)
 8002d96:	2201      	movs	r2, #1
 8002d98:	2102      	movs	r1, #2
 8002d9a:	0018      	movs	r0, r3
 8002d9c:	f7ff fb3c 	bl	8002418 <LL_GPIO_SetPinMode>
 8002da0:	4b14      	ldr	r3, [pc, #80]	; (8002df4 <gpio_config+0xd0>)
 8002da2:	2201      	movs	r2, #1
 8002da4:	2104      	movs	r1, #4
 8002da6:	0018      	movs	r0, r3
 8002da8:	f7ff fb36 	bl	8002418 <LL_GPIO_SetPinMode>
 8002dac:	4b11      	ldr	r3, [pc, #68]	; (8002df4 <gpio_config+0xd0>)
 8002dae:	2201      	movs	r2, #1
 8002db0:	2108      	movs	r1, #8
 8002db2:	0018      	movs	r0, r3
 8002db4:	f7ff fb30 	bl	8002418 <LL_GPIO_SetPinMode>
 8002db8:	4b0e      	ldr	r3, [pc, #56]	; (8002df4 <gpio_config+0xd0>)
 8002dba:	2201      	movs	r2, #1
 8002dbc:	2110      	movs	r1, #16
 8002dbe:	0018      	movs	r0, r3
 8002dc0:	f7ff fb2a 	bl	8002418 <LL_GPIO_SetPinMode>
 8002dc4:	4b0b      	ldr	r3, [pc, #44]	; (8002df4 <gpio_config+0xd0>)
 8002dc6:	2201      	movs	r2, #1
 8002dc8:	2120      	movs	r1, #32
 8002dca:	0018      	movs	r0, r3
 8002dcc:	f7ff fb24 	bl	8002418 <LL_GPIO_SetPinMode>
 8002dd0:	4b08      	ldr	r3, [pc, #32]	; (8002df4 <gpio_config+0xd0>)
 8002dd2:	2201      	movs	r2, #1
 8002dd4:	2140      	movs	r1, #64	; 0x40
 8002dd6:	0018      	movs	r0, r3
 8002dd8:	f7ff fb1e 	bl	8002418 <LL_GPIO_SetPinMode>
 8002ddc:	4b05      	ldr	r3, [pc, #20]	; (8002df4 <gpio_config+0xd0>)
 8002dde:	2201      	movs	r2, #1
 8002de0:	2180      	movs	r1, #128	; 0x80
 8002de2:	0018      	movs	r0, r3
 8002de4:	f7ff fb18 	bl	8002418 <LL_GPIO_SetPinMode>
 8002de8:	46c0      	nop			; (mov r8, r8)
 8002dea:	46bd      	mov	sp, r7
 8002dec:	bd80      	pop	{r7, pc}
 8002dee:	46c0      	nop			; (mov r8, r8)
 8002df0:	48000800 	.word	0x48000800
 8002df4:	48000400 	.word	0x48000400

08002df8 <dec_display>:
 8002df8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002dfa:	b089      	sub	sp, #36	; 0x24
 8002dfc:	af00      	add	r7, sp, #0
 8002dfe:	6078      	str	r0, [r7, #4]
 8002e00:	241e      	movs	r4, #30
 8002e02:	193b      	adds	r3, r7, r4
 8002e04:	2200      	movs	r2, #0
 8002e06:	801a      	strh	r2, [r3, #0]
 8002e08:	2508      	movs	r5, #8
 8002e0a:	197b      	adds	r3, r7, r5
 8002e0c:	4a44      	ldr	r2, [pc, #272]	; (8002f20 <dec_display+0x128>)
 8002e0e:	ca43      	ldmia	r2!, {r0, r1, r6}
 8002e10:	c343      	stmia	r3!, {r0, r1, r6}
 8002e12:	ca03      	ldmia	r2!, {r0, r1}
 8002e14:	c303      	stmia	r3!, {r0, r1}
 8002e16:	200f      	movs	r0, #15
 8002e18:	f7ff ff1a 	bl	8002c50 <mask_indicator>
 8002e1c:	0003      	movs	r3, r0
 8002e1e:	4a41      	ldr	r2, [pc, #260]	; (8002f24 <dec_display+0x12c>)
 8002e20:	0019      	movs	r1, r3
 8002e22:	0010      	movs	r0, r2
 8002e24:	f7ff fb92 	bl	800254c <LL_GPIO_WriteOutputPort>
 8002e28:	4b3f      	ldr	r3, [pc, #252]	; (8002f28 <dec_display+0x130>)
 8002e2a:	681b      	ldr	r3, [r3, #0]
 8002e2c:	2201      	movs	r2, #1
 8002e2e:	409a      	lsls	r2, r3
 8002e30:	0013      	movs	r3, r2
 8002e32:	0018      	movs	r0, r3
 8002e34:	f7ff ff0c 	bl	8002c50 <mask_indicator>
 8002e38:	0003      	movs	r3, r0
 8002e3a:	4a3a      	ldr	r2, [pc, #232]	; (8002f24 <dec_display+0x12c>)
 8002e3c:	0019      	movs	r1, r3
 8002e3e:	0010      	movs	r0, r2
 8002e40:	f7ff fb90 	bl	8002564 <LL_GPIO_ResetOutputPin>
 8002e44:	4b38      	ldr	r3, [pc, #224]	; (8002f28 <dec_display+0x130>)
 8002e46:	681b      	ldr	r3, [r3, #0]
 8002e48:	2b00      	cmp	r3, #0
 8002e4a:	d10b      	bne.n	8002e64 <dec_display+0x6c>
 8002e4c:	687b      	ldr	r3, [r7, #4]
 8002e4e:	210a      	movs	r1, #10
 8002e50:	0018      	movs	r0, r3
 8002e52:	f7fd f9df 	bl	8000214 <__aeabi_uidivmod>
 8002e56:	000b      	movs	r3, r1
 8002e58:	0019      	movs	r1, r3
 8002e5a:	193b      	adds	r3, r7, r4
 8002e5c:	197a      	adds	r2, r7, r5
 8002e5e:	0049      	lsls	r1, r1, #1
 8002e60:	5a8a      	ldrh	r2, [r1, r2]
 8002e62:	801a      	strh	r2, [r3, #0]
 8002e64:	4b30      	ldr	r3, [pc, #192]	; (8002f28 <dec_display+0x130>)
 8002e66:	681b      	ldr	r3, [r3, #0]
 8002e68:	2b01      	cmp	r3, #1
 8002e6a:	d112      	bne.n	8002e92 <dec_display+0x9a>
 8002e6c:	687b      	ldr	r3, [r7, #4]
 8002e6e:	210a      	movs	r1, #10
 8002e70:	0018      	movs	r0, r3
 8002e72:	f7fd f949 	bl	8000108 <__udivsi3>
 8002e76:	0003      	movs	r3, r0
 8002e78:	210a      	movs	r1, #10
 8002e7a:	0018      	movs	r0, r3
 8002e7c:	f7fd f9ca 	bl	8000214 <__aeabi_uidivmod>
 8002e80:	000b      	movs	r3, r1
 8002e82:	0019      	movs	r1, r3
 8002e84:	231e      	movs	r3, #30
 8002e86:	18fb      	adds	r3, r7, r3
 8002e88:	2208      	movs	r2, #8
 8002e8a:	18ba      	adds	r2, r7, r2
 8002e8c:	0049      	lsls	r1, r1, #1
 8002e8e:	5a8a      	ldrh	r2, [r1, r2]
 8002e90:	801a      	strh	r2, [r3, #0]
 8002e92:	4b25      	ldr	r3, [pc, #148]	; (8002f28 <dec_display+0x130>)
 8002e94:	681b      	ldr	r3, [r3, #0]
 8002e96:	2b02      	cmp	r3, #2
 8002e98:	d112      	bne.n	8002ec0 <dec_display+0xc8>
 8002e9a:	687b      	ldr	r3, [r7, #4]
 8002e9c:	2164      	movs	r1, #100	; 0x64
 8002e9e:	0018      	movs	r0, r3
 8002ea0:	f7fd f932 	bl	8000108 <__udivsi3>
 8002ea4:	0003      	movs	r3, r0
 8002ea6:	210a      	movs	r1, #10
 8002ea8:	0018      	movs	r0, r3
 8002eaa:	f7fd f9b3 	bl	8000214 <__aeabi_uidivmod>
 8002eae:	000b      	movs	r3, r1
 8002eb0:	0019      	movs	r1, r3
 8002eb2:	231e      	movs	r3, #30
 8002eb4:	18fb      	adds	r3, r7, r3
 8002eb6:	2208      	movs	r2, #8
 8002eb8:	18ba      	adds	r2, r7, r2
 8002eba:	0049      	lsls	r1, r1, #1
 8002ebc:	5a8a      	ldrh	r2, [r1, r2]
 8002ebe:	801a      	strh	r2, [r3, #0]
 8002ec0:	4b19      	ldr	r3, [pc, #100]	; (8002f28 <dec_display+0x130>)
 8002ec2:	681b      	ldr	r3, [r3, #0]
 8002ec4:	2b03      	cmp	r3, #3
 8002ec6:	d113      	bne.n	8002ef0 <dec_display+0xf8>
 8002ec8:	687b      	ldr	r3, [r7, #4]
 8002eca:	22fa      	movs	r2, #250	; 0xfa
 8002ecc:	0091      	lsls	r1, r2, #2
 8002ece:	0018      	movs	r0, r3
 8002ed0:	f7fd f91a 	bl	8000108 <__udivsi3>
 8002ed4:	0003      	movs	r3, r0
 8002ed6:	210a      	movs	r1, #10
 8002ed8:	0018      	movs	r0, r3
 8002eda:	f7fd f99b 	bl	8000214 <__aeabi_uidivmod>
 8002ede:	000b      	movs	r3, r1
 8002ee0:	0019      	movs	r1, r3
 8002ee2:	231e      	movs	r3, #30
 8002ee4:	18fb      	adds	r3, r7, r3
 8002ee6:	2208      	movs	r2, #8
 8002ee8:	18ba      	adds	r2, r7, r2
 8002eea:	0049      	lsls	r1, r1, #1
 8002eec:	5a8a      	ldrh	r2, [r1, r2]
 8002eee:	801a      	strh	r2, [r3, #0]
 8002ef0:	231e      	movs	r3, #30
 8002ef2:	18fb      	adds	r3, r7, r3
 8002ef4:	881b      	ldrh	r3, [r3, #0]
 8002ef6:	0018      	movs	r0, r3
 8002ef8:	f7ff feaa 	bl	8002c50 <mask_indicator>
 8002efc:	0003      	movs	r3, r0
 8002efe:	4a0b      	ldr	r2, [pc, #44]	; (8002f2c <dec_display+0x134>)
 8002f00:	0019      	movs	r1, r3
 8002f02:	0010      	movs	r0, r2
 8002f04:	f7ff fb22 	bl	800254c <LL_GPIO_WriteOutputPort>
 8002f08:	4b07      	ldr	r3, [pc, #28]	; (8002f28 <dec_display+0x130>)
 8002f0a:	681b      	ldr	r3, [r3, #0]
 8002f0c:	3301      	adds	r3, #1
 8002f0e:	2203      	movs	r2, #3
 8002f10:	401a      	ands	r2, r3
 8002f12:	4b05      	ldr	r3, [pc, #20]	; (8002f28 <dec_display+0x130>)
 8002f14:	601a      	str	r2, [r3, #0]
 8002f16:	46c0      	nop			; (mov r8, r8)
 8002f18:	46bd      	mov	sp, r7
 8002f1a:	b009      	add	sp, #36	; 0x24
 8002f1c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002f1e:	46c0      	nop			; (mov r8, r8)
 8002f20:	08004eb8 	.word	0x08004eb8
 8002f24:	48000800 	.word	0x48000800
 8002f28:	2000046c 	.word	0x2000046c
 8002f2c:	48000400 	.word	0x48000400

08002f30 <sonar_trig>:
 8002f30:	b580      	push	{r7, lr}
 8002f32:	af00      	add	r7, sp, #0
 8002f34:	2380      	movs	r3, #128	; 0x80
 8002f36:	029b      	lsls	r3, r3, #10
 8002f38:	0018      	movs	r0, r3
 8002f3a:	f7ff fa2b 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 8002f3e:	2390      	movs	r3, #144	; 0x90
 8002f40:	05db      	lsls	r3, r3, #23
 8002f42:	2202      	movs	r2, #2
 8002f44:	2110      	movs	r1, #16
 8002f46:	0018      	movs	r0, r3
 8002f48:	f7ff fa66 	bl	8002418 <LL_GPIO_SetPinMode>
 8002f4c:	2390      	movs	r3, #144	; 0x90
 8002f4e:	05db      	lsls	r3, r3, #23
 8002f50:	2204      	movs	r2, #4
 8002f52:	2110      	movs	r1, #16
 8002f54:	0018      	movs	r0, r3
 8002f56:	f7ff fa97 	bl	8002488 <LL_GPIO_SetAFPin_0_7>
 8002f5a:	2380      	movs	r3, #128	; 0x80
 8002f5c:	005b      	lsls	r3, r3, #1
 8002f5e:	0018      	movs	r0, r3
 8002f60:	f7ff fa2e 	bl	80023c0 <LL_APB1_GRP1_EnableClock>
 8002f64:	4b18      	ldr	r3, [pc, #96]	; (8002fc8 <sonar_trig+0x98>)
 8002f66:	212f      	movs	r1, #47	; 0x2f
 8002f68:	0018      	movs	r0, r3
 8002f6a:	f7ff fb3d 	bl	80025e8 <LL_TIM_SetPrescaler>
 8002f6e:	4a17      	ldr	r2, [pc, #92]	; (8002fcc <sonar_trig+0x9c>)
 8002f70:	4b15      	ldr	r3, [pc, #84]	; (8002fc8 <sonar_trig+0x98>)
 8002f72:	0011      	movs	r1, r2
 8002f74:	0018      	movs	r0, r3
 8002f76:	f7ff fb43 	bl	8002600 <LL_TIM_SetAutoReload>
 8002f7a:	4a15      	ldr	r2, [pc, #84]	; (8002fd0 <sonar_trig+0xa0>)
 8002f7c:	4b12      	ldr	r3, [pc, #72]	; (8002fc8 <sonar_trig+0x98>)
 8002f7e:	0011      	movs	r1, r2
 8002f80:	0018      	movs	r0, r3
 8002f82:	f7ff fbe9 	bl	8002758 <LL_TIM_OC_SetCompareCH1>
 8002f86:	4b10      	ldr	r3, [pc, #64]	; (8002fc8 <sonar_trig+0x98>)
 8002f88:	2101      	movs	r1, #1
 8002f8a:	0018      	movs	r0, r3
 8002f8c:	f7ff fb44 	bl	8002618 <LL_TIM_CC_EnableChannel>
 8002f90:	4b0d      	ldr	r3, [pc, #52]	; (8002fc8 <sonar_trig+0x98>)
 8002f92:	2200      	movs	r2, #0
 8002f94:	2101      	movs	r1, #1
 8002f96:	0018      	movs	r0, r3
 8002f98:	f7ff fb9a 	bl	80026d0 <LL_TIM_OC_SetPolarity>
 8002f9c:	4b0a      	ldr	r3, [pc, #40]	; (8002fc8 <sonar_trig+0x98>)
 8002f9e:	2260      	movs	r2, #96	; 0x60
 8002fa0:	2101      	movs	r1, #1
 8002fa2:	0018      	movs	r0, r3
 8002fa4:	f7ff fb48 	bl	8002638 <LL_TIM_OC_SetMode>
 8002fa8:	4b07      	ldr	r3, [pc, #28]	; (8002fc8 <sonar_trig+0x98>)
 8002faa:	2100      	movs	r1, #0
 8002fac:	0018      	movs	r0, r3
 8002fae:	f7ff faf3 	bl	8002598 <LL_TIM_SetCounterMode>
 8002fb2:	4b05      	ldr	r3, [pc, #20]	; (8002fc8 <sonar_trig+0x98>)
 8002fb4:	0018      	movs	r0, r3
 8002fb6:	f7ff fcdb 	bl	8002970 <LL_TIM_EnableIT_CC1>
 8002fba:	4b03      	ldr	r3, [pc, #12]	; (8002fc8 <sonar_trig+0x98>)
 8002fbc:	0018      	movs	r0, r3
 8002fbe:	f7ff fadd 	bl	800257c <LL_TIM_EnableCounter>
 8002fc2:	46c0      	nop			; (mov r8, r8)
 8002fc4:	46bd      	mov	sp, r7
 8002fc6:	bd80      	pop	{r7, pc}
 8002fc8:	40002000 	.word	0x40002000
 8002fcc:	0000ea5f 	.word	0x0000ea5f
 8002fd0:	0000ea55 	.word	0x0000ea55

08002fd4 <sonar_echo>:
 8002fd4:	b580      	push	{r7, lr}
 8002fd6:	af00      	add	r7, sp, #0
 8002fd8:	2380      	movs	r3, #128	; 0x80
 8002fda:	029b      	lsls	r3, r3, #10
 8002fdc:	0018      	movs	r0, r3
 8002fde:	f7ff f9d9 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 8002fe2:	2390      	movs	r3, #144	; 0x90
 8002fe4:	05db      	lsls	r3, r3, #23
 8002fe6:	2202      	movs	r2, #2
 8002fe8:	2180      	movs	r1, #128	; 0x80
 8002fea:	0018      	movs	r0, r3
 8002fec:	f7ff fa14 	bl	8002418 <LL_GPIO_SetPinMode>
 8002ff0:	2390      	movs	r3, #144	; 0x90
 8002ff2:	05db      	lsls	r3, r3, #23
 8002ff4:	2201      	movs	r2, #1
 8002ff6:	2180      	movs	r1, #128	; 0x80
 8002ff8:	0018      	movs	r0, r3
 8002ffa:	f7ff fa45 	bl	8002488 <LL_GPIO_SetAFPin_0_7>
 8002ffe:	2002      	movs	r0, #2
 8003000:	f7ff f9de 	bl	80023c0 <LL_APB1_GRP1_EnableClock>
 8003004:	4b19      	ldr	r3, [pc, #100]	; (800306c <sonar_echo+0x98>)
 8003006:	212f      	movs	r1, #47	; 0x2f
 8003008:	0018      	movs	r0, r3
 800300a:	f7ff faed 	bl	80025e8 <LL_TIM_SetPrescaler>
 800300e:	2380      	movs	r3, #128	; 0x80
 8003010:	025b      	lsls	r3, r3, #9
 8003012:	4816      	ldr	r0, [pc, #88]	; (800306c <sonar_echo+0x98>)
 8003014:	001a      	movs	r2, r3
 8003016:	2110      	movs	r1, #16
 8003018:	f7ff fbb6 	bl	8002788 <LL_TIM_IC_SetActiveInput>
 800301c:	4b13      	ldr	r3, [pc, #76]	; (800306c <sonar_echo+0x98>)
 800301e:	2200      	movs	r2, #0
 8003020:	2110      	movs	r1, #16
 8003022:	0018      	movs	r0, r3
 8003024:	f7ff fbfc 	bl	8002820 <LL_TIM_IC_SetPrescaler>
 8003028:	4b10      	ldr	r3, [pc, #64]	; (800306c <sonar_echo+0x98>)
 800302a:	2200      	movs	r2, #0
 800302c:	2110      	movs	r1, #16
 800302e:	0018      	movs	r0, r3
 8003030:	f7ff fc42 	bl	80028b8 <LL_TIM_IC_SetPolarity>
 8003034:	4b0d      	ldr	r3, [pc, #52]	; (800306c <sonar_echo+0x98>)
 8003036:	2100      	movs	r1, #0
 8003038:	0018      	movs	r0, r3
 800303a:	f7ff faad 	bl	8002598 <LL_TIM_SetCounterMode>
 800303e:	4b0b      	ldr	r3, [pc, #44]	; (800306c <sonar_echo+0x98>)
 8003040:	2110      	movs	r1, #16
 8003042:	0018      	movs	r0, r3
 8003044:	f7ff fae8 	bl	8002618 <LL_TIM_CC_EnableChannel>
 8003048:	4b08      	ldr	r3, [pc, #32]	; (800306c <sonar_echo+0x98>)
 800304a:	0018      	movs	r0, r3
 800304c:	f7ff fc9e 	bl	800298c <LL_TIM_EnableIT_CC2>
 8003050:	4b06      	ldr	r3, [pc, #24]	; (800306c <sonar_echo+0x98>)
 8003052:	0018      	movs	r0, r3
 8003054:	f7ff fa92 	bl	800257c <LL_TIM_EnableCounter>
 8003058:	2010      	movs	r0, #16
 800305a:	f7ff f839 	bl	80020d0 <NVIC_EnableIRQ>
 800305e:	2101      	movs	r1, #1
 8003060:	2010      	movs	r0, #16
 8003062:	f7ff f84b 	bl	80020fc <NVIC_SetPriority>
 8003066:	46c0      	nop			; (mov r8, r8)
 8003068:	46bd      	mov	sp, r7
 800306a:	bd80      	pop	{r7, pc}
 800306c:	40000400 	.word	0x40000400

08003070 <servo_1>:
 8003070:	b580      	push	{r7, lr}
 8003072:	af00      	add	r7, sp, #0
 8003074:	2380      	movs	r3, #128	; 0x80
 8003076:	029b      	lsls	r3, r3, #10
 8003078:	0018      	movs	r0, r3
 800307a:	f7ff f98b 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 800307e:	2390      	movs	r3, #144	; 0x90
 8003080:	05db      	lsls	r3, r3, #23
 8003082:	2202      	movs	r2, #2
 8003084:	2101      	movs	r1, #1
 8003086:	0018      	movs	r0, r3
 8003088:	f7ff f9c6 	bl	8002418 <LL_GPIO_SetPinMode>
 800308c:	2390      	movs	r3, #144	; 0x90
 800308e:	05db      	lsls	r3, r3, #23
 8003090:	2202      	movs	r2, #2
 8003092:	2101      	movs	r1, #1
 8003094:	0018      	movs	r0, r3
 8003096:	f7ff f9f7 	bl	8002488 <LL_GPIO_SetAFPin_0_7>
 800309a:	2001      	movs	r0, #1
 800309c:	f7ff f990 	bl	80023c0 <LL_APB1_GRP1_EnableClock>
 80030a0:	2380      	movs	r3, #128	; 0x80
 80030a2:	05db      	lsls	r3, r3, #23
 80030a4:	210e      	movs	r1, #14
 80030a6:	0018      	movs	r0, r3
 80030a8:	f7ff fa9e 	bl	80025e8 <LL_TIM_SetPrescaler>
 80030ac:	23fa      	movs	r3, #250	; 0xfa
 80030ae:	021a      	lsls	r2, r3, #8
 80030b0:	2380      	movs	r3, #128	; 0x80
 80030b2:	05db      	lsls	r3, r3, #23
 80030b4:	0011      	movs	r1, r2
 80030b6:	0018      	movs	r0, r3
 80030b8:	f7ff faa2 	bl	8002600 <LL_TIM_SetAutoReload>
 80030bc:	2382      	movs	r3, #130	; 0x82
 80030be:	011a      	lsls	r2, r3, #4
 80030c0:	2380      	movs	r3, #128	; 0x80
 80030c2:	05db      	lsls	r3, r3, #23
 80030c4:	0011      	movs	r1, r2
 80030c6:	0018      	movs	r0, r3
 80030c8:	f7ff fb46 	bl	8002758 <LL_TIM_OC_SetCompareCH1>
 80030cc:	2380      	movs	r3, #128	; 0x80
 80030ce:	05db      	lsls	r3, r3, #23
 80030d0:	2101      	movs	r1, #1
 80030d2:	0018      	movs	r0, r3
 80030d4:	f7ff faa0 	bl	8002618 <LL_TIM_CC_EnableChannel>
 80030d8:	2380      	movs	r3, #128	; 0x80
 80030da:	05db      	lsls	r3, r3, #23
 80030dc:	2200      	movs	r2, #0
 80030de:	2101      	movs	r1, #1
 80030e0:	0018      	movs	r0, r3
 80030e2:	f7ff faf5 	bl	80026d0 <LL_TIM_OC_SetPolarity>
 80030e6:	2380      	movs	r3, #128	; 0x80
 80030e8:	05db      	lsls	r3, r3, #23
 80030ea:	2260      	movs	r2, #96	; 0x60
 80030ec:	2101      	movs	r1, #1
 80030ee:	0018      	movs	r0, r3
 80030f0:	f7ff faa2 	bl	8002638 <LL_TIM_OC_SetMode>
 80030f4:	2380      	movs	r3, #128	; 0x80
 80030f6:	05db      	lsls	r3, r3, #23
 80030f8:	2100      	movs	r1, #0
 80030fa:	0018      	movs	r0, r3
 80030fc:	f7ff fa4c 	bl	8002598 <LL_TIM_SetCounterMode>
 8003100:	2380      	movs	r3, #128	; 0x80
 8003102:	05db      	lsls	r3, r3, #23
 8003104:	0018      	movs	r0, r3
 8003106:	f7ff fc41 	bl	800298c <LL_TIM_EnableIT_CC2>
 800310a:	2380      	movs	r3, #128	; 0x80
 800310c:	05db      	lsls	r3, r3, #23
 800310e:	0018      	movs	r0, r3
 8003110:	f7ff fa34 	bl	800257c <LL_TIM_EnableCounter>
 8003114:	200f      	movs	r0, #15
 8003116:	f7fe ffdb 	bl	80020d0 <NVIC_EnableIRQ>
 800311a:	2102      	movs	r1, #2
 800311c:	200f      	movs	r0, #15
 800311e:	f7fe ffed 	bl	80020fc <NVIC_SetPriority>
 8003122:	46c0      	nop			; (mov r8, r8)
 8003124:	46bd      	mov	sp, r7
 8003126:	bd80      	pop	{r7, pc}

08003128 <servo_2>:
 8003128:	b580      	push	{r7, lr}
 800312a:	af00      	add	r7, sp, #0
 800312c:	2380      	movs	r3, #128	; 0x80
 800312e:	029b      	lsls	r3, r3, #10
 8003130:	0018      	movs	r0, r3
 8003132:	f7ff f92f 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 8003136:	2390      	movs	r3, #144	; 0x90
 8003138:	05db      	lsls	r3, r3, #23
 800313a:	2202      	movs	r2, #2
 800313c:	2102      	movs	r1, #2
 800313e:	0018      	movs	r0, r3
 8003140:	f7ff f96a 	bl	8002418 <LL_GPIO_SetPinMode>
 8003144:	2390      	movs	r3, #144	; 0x90
 8003146:	05db      	lsls	r3, r3, #23
 8003148:	2202      	movs	r2, #2
 800314a:	2102      	movs	r1, #2
 800314c:	0018      	movs	r0, r3
 800314e:	f7ff f99b 	bl	8002488 <LL_GPIO_SetAFPin_0_7>
 8003152:	2001      	movs	r0, #1
 8003154:	f7ff f934 	bl	80023c0 <LL_APB1_GRP1_EnableClock>
 8003158:	2380      	movs	r3, #128	; 0x80
 800315a:	05db      	lsls	r3, r3, #23
 800315c:	210e      	movs	r1, #14
 800315e:	0018      	movs	r0, r3
 8003160:	f7ff fa42 	bl	80025e8 <LL_TIM_SetPrescaler>
 8003164:	23fa      	movs	r3, #250	; 0xfa
 8003166:	021a      	lsls	r2, r3, #8
 8003168:	2380      	movs	r3, #128	; 0x80
 800316a:	05db      	lsls	r3, r3, #23
 800316c:	0011      	movs	r1, r2
 800316e:	0018      	movs	r0, r3
 8003170:	f7ff fa46 	bl	8002600 <LL_TIM_SetAutoReload>
 8003174:	4a1a      	ldr	r2, [pc, #104]	; (80031e0 <servo_2+0xb8>)
 8003176:	2380      	movs	r3, #128	; 0x80
 8003178:	05db      	lsls	r3, r3, #23
 800317a:	0011      	movs	r1, r2
 800317c:	0018      	movs	r0, r3
 800317e:	f7ff faf7 	bl	8002770 <LL_TIM_OC_SetCompareCH2>
 8003182:	2380      	movs	r3, #128	; 0x80
 8003184:	05db      	lsls	r3, r3, #23
 8003186:	2110      	movs	r1, #16
 8003188:	0018      	movs	r0, r3
 800318a:	f7ff fa45 	bl	8002618 <LL_TIM_CC_EnableChannel>
 800318e:	2380      	movs	r3, #128	; 0x80
 8003190:	05db      	lsls	r3, r3, #23
 8003192:	2200      	movs	r2, #0
 8003194:	2110      	movs	r1, #16
 8003196:	0018      	movs	r0, r3
 8003198:	f7ff fa9a 	bl	80026d0 <LL_TIM_OC_SetPolarity>
 800319c:	2380      	movs	r3, #128	; 0x80
 800319e:	05db      	lsls	r3, r3, #23
 80031a0:	2260      	movs	r2, #96	; 0x60
 80031a2:	2110      	movs	r1, #16
 80031a4:	0018      	movs	r0, r3
 80031a6:	f7ff fa47 	bl	8002638 <LL_TIM_OC_SetMode>
 80031aa:	2380      	movs	r3, #128	; 0x80
 80031ac:	05db      	lsls	r3, r3, #23
 80031ae:	2100      	movs	r1, #0
 80031b0:	0018      	movs	r0, r3
 80031b2:	f7ff f9f1 	bl	8002598 <LL_TIM_SetCounterMode>
 80031b6:	2380      	movs	r3, #128	; 0x80
 80031b8:	05db      	lsls	r3, r3, #23
 80031ba:	0018      	movs	r0, r3
 80031bc:	f7ff fbe6 	bl	800298c <LL_TIM_EnableIT_CC2>
 80031c0:	2380      	movs	r3, #128	; 0x80
 80031c2:	05db      	lsls	r3, r3, #23
 80031c4:	0018      	movs	r0, r3
 80031c6:	f7ff f9d9 	bl	800257c <LL_TIM_EnableCounter>
 80031ca:	200f      	movs	r0, #15
 80031cc:	f7fe ff80 	bl	80020d0 <NVIC_EnableIRQ>
 80031d0:	2103      	movs	r1, #3
 80031d2:	200f      	movs	r0, #15
 80031d4:	f7fe ff92 	bl	80020fc <NVIC_SetPriority>
 80031d8:	46c0      	nop			; (mov r8, r8)
 80031da:	46bd      	mov	sp, r7
 80031dc:	bd80      	pop	{r7, pc}
 80031de:	46c0      	nop			; (mov r8, r8)
 80031e0:	00000e2b 	.word	0x00000e2b

080031e4 <TIM3_IRQHandler>:
 80031e4:	b580      	push	{r7, lr}
 80031e6:	af00      	add	r7, sp, #0
 80031e8:	46c0      	nop			; (mov r8, r8)
 80031ea:	2390      	movs	r3, #144	; 0x90
 80031ec:	05db      	lsls	r3, r3, #23
 80031ee:	2180      	movs	r1, #128	; 0x80
 80031f0:	0018      	movs	r0, r3
 80031f2:	f7ff f999 	bl	8002528 <LL_GPIO_IsInputPinSet>
 80031f6:	1e03      	subs	r3, r0, #0
 80031f8:	d0f7      	beq.n	80031ea <TIM3_IRQHandler+0x6>
 80031fa:	4b15      	ldr	r3, [pc, #84]	; (8003250 <TIM3_IRQHandler+0x6c>)
 80031fc:	2100      	movs	r1, #0
 80031fe:	0018      	movs	r0, r3
 8003200:	f7ff f9dc 	bl	80025bc <LL_TIM_SetCounter>
 8003204:	46c0      	nop			; (mov r8, r8)
 8003206:	2390      	movs	r3, #144	; 0x90
 8003208:	05db      	lsls	r3, r3, #23
 800320a:	2180      	movs	r1, #128	; 0x80
 800320c:	0018      	movs	r0, r3
 800320e:	f7ff f98b 	bl	8002528 <LL_GPIO_IsInputPinSet>
 8003212:	1e03      	subs	r3, r0, #0
 8003214:	d1f7      	bne.n	8003206 <TIM3_IRQHandler+0x22>
 8003216:	4b0e      	ldr	r3, [pc, #56]	; (8003250 <TIM3_IRQHandler+0x6c>)
 8003218:	0018      	movs	r0, r3
 800321a:	f7ff f9db 	bl	80025d4 <LL_TIM_GetCounter>
 800321e:	0002      	movs	r2, r0
 8003220:	4b0c      	ldr	r3, [pc, #48]	; (8003254 <TIM3_IRQHandler+0x70>)
 8003222:	601a      	str	r2, [r3, #0]
 8003224:	4b0b      	ldr	r3, [pc, #44]	; (8003254 <TIM3_IRQHandler+0x70>)
 8003226:	681b      	ldr	r3, [r3, #0]
 8003228:	0018      	movs	r0, r3
 800322a:	f7fe fa5d 	bl	80016e8 <__aeabi_ui2d>
 800322e:	4a0a      	ldr	r2, [pc, #40]	; (8003258 <TIM3_IRQHandler+0x74>)
 8003230:	4b0a      	ldr	r3, [pc, #40]	; (800325c <TIM3_IRQHandler+0x78>)
 8003232:	f7fd f8fd 	bl	8000430 <__aeabi_ddiv>
 8003236:	0002      	movs	r2, r0
 8003238:	000b      	movs	r3, r1
 800323a:	4909      	ldr	r1, [pc, #36]	; (8003260 <TIM3_IRQHandler+0x7c>)
 800323c:	600a      	str	r2, [r1, #0]
 800323e:	604b      	str	r3, [r1, #4]
 8003240:	4b03      	ldr	r3, [pc, #12]	; (8003250 <TIM3_IRQHandler+0x6c>)
 8003242:	0018      	movs	r0, r3
 8003244:	f7ff fb88 	bl	8002958 <LL_TIM_ClearFlag_CC2>
 8003248:	46c0      	nop			; (mov r8, r8)
 800324a:	46bd      	mov	sp, r7
 800324c:	bd80      	pop	{r7, pc}
 800324e:	46c0      	nop			; (mov r8, r8)
 8003250:	40000400 	.word	0x40000400
 8003254:	20000454 	.word	0x20000454
 8003258:	66666666 	.word	0x66666666
 800325c:	404d6666 	.word	0x404d6666
 8003260:	20000458 	.word	0x20000458

08003264 <systick_config>:
 8003264:	b580      	push	{r7, lr}
 8003266:	af00      	add	r7, sp, #0
 8003268:	23fa      	movs	r3, #250	; 0xfa
 800326a:	009b      	lsls	r3, r3, #2
 800326c:	4a07      	ldr	r2, [pc, #28]	; (800328c <systick_config+0x28>)
 800326e:	0019      	movs	r1, r3
 8003270:	0010      	movs	r0, r2
 8003272:	f7ff fcc5 	bl	8002c00 <LL_InitTick>
 8003276:	f7ff fcdd 	bl	8002c34 <LL_SYSTICK_EnableIT>
 800327a:	2301      	movs	r3, #1
 800327c:	425b      	negs	r3, r3
 800327e:	2100      	movs	r1, #0
 8003280:	0018      	movs	r0, r3
 8003282:	f7fe ff3b 	bl	80020fc <NVIC_SetPriority>
 8003286:	46c0      	nop			; (mov r8, r8)
 8003288:	46bd      	mov	sp, r7
 800328a:	bd80      	pop	{r7, pc}
 800328c:	02dc6c00 	.word	0x02dc6c00

08003290 <usart_config>:
 8003290:	b580      	push	{r7, lr}
 8003292:	af00      	add	r7, sp, #0
 8003294:	2380      	movs	r3, #128	; 0x80
 8003296:	029b      	lsls	r3, r3, #10
 8003298:	0018      	movs	r0, r3
 800329a:	f7ff f87b 	bl	8002394 <LL_AHB1_GRP1_EnableClock>
 800329e:	2380      	movs	r3, #128	; 0x80
 80032a0:	0099      	lsls	r1, r3, #2
 80032a2:	2390      	movs	r3, #144	; 0x90
 80032a4:	05db      	lsls	r3, r3, #23
 80032a6:	2202      	movs	r2, #2
 80032a8:	0018      	movs	r0, r3
 80032aa:	f7ff f8b5 	bl	8002418 <LL_GPIO_SetPinMode>
 80032ae:	2380      	movs	r3, #128	; 0x80
 80032b0:	0099      	lsls	r1, r3, #2
 80032b2:	2390      	movs	r3, #144	; 0x90
 80032b4:	05db      	lsls	r3, r3, #23
 80032b6:	2201      	movs	r2, #1
 80032b8:	0018      	movs	r0, r3
 80032ba:	f7ff f908 	bl	80024ce <LL_GPIO_SetAFPin_8_15>
 80032be:	2380      	movs	r3, #128	; 0x80
 80032c0:	0099      	lsls	r1, r3, #2
 80032c2:	2390      	movs	r3, #144	; 0x90
 80032c4:	05db      	lsls	r3, r3, #23
 80032c6:	2203      	movs	r2, #3
 80032c8:	0018      	movs	r0, r3
 80032ca:	f7ff f8c1 	bl	8002450 <LL_GPIO_SetPinSpeed>
 80032ce:	2380      	movs	r3, #128	; 0x80
 80032d0:	00d9      	lsls	r1, r3, #3
 80032d2:	2390      	movs	r3, #144	; 0x90
 80032d4:	05db      	lsls	r3, r3, #23
 80032d6:	2202      	movs	r2, #2
 80032d8:	0018      	movs	r0, r3
 80032da:	f7ff f89d 	bl	8002418 <LL_GPIO_SetPinMode>
 80032de:	2380      	movs	r3, #128	; 0x80
 80032e0:	00d9      	lsls	r1, r3, #3
 80032e2:	2390      	movs	r3, #144	; 0x90
 80032e4:	05db      	lsls	r3, r3, #23
 80032e6:	2201      	movs	r2, #1
 80032e8:	0018      	movs	r0, r3
 80032ea:	f7ff f8f0 	bl	80024ce <LL_GPIO_SetAFPin_8_15>
 80032ee:	2380      	movs	r3, #128	; 0x80
 80032f0:	00d9      	lsls	r1, r3, #3
 80032f2:	2390      	movs	r3, #144	; 0x90
 80032f4:	05db      	lsls	r3, r3, #23
 80032f6:	2203      	movs	r2, #3
 80032f8:	0018      	movs	r0, r3
 80032fa:	f7ff f8a9 	bl	8002450 <LL_GPIO_SetPinSpeed>
 80032fe:	2380      	movs	r3, #128	; 0x80
 8003300:	01db      	lsls	r3, r3, #7
 8003302:	0018      	movs	r0, r3
 8003304:	f7ff f872 	bl	80023ec <LL_APB1_GRP2_EnableClock>
 8003308:	2000      	movs	r0, #0
 800330a:	f7fe ffcd 	bl	80022a8 <LL_RCC_SetUSARTClockSource>
 800330e:	4b1e      	ldr	r3, [pc, #120]	; (8003388 <usart_config+0xf8>)
 8003310:	210c      	movs	r1, #12
 8003312:	0018      	movs	r0, r3
 8003314:	f7ff fb56 	bl	80029c4 <LL_USART_SetTransferDirection>
 8003318:	4b1b      	ldr	r3, [pc, #108]	; (8003388 <usart_config+0xf8>)
 800331a:	2100      	movs	r1, #0
 800331c:	0018      	movs	r0, r3
 800331e:	f7ff fb63 	bl	80029e8 <LL_USART_SetParity>
 8003322:	4b19      	ldr	r3, [pc, #100]	; (8003388 <usart_config+0xf8>)
 8003324:	2100      	movs	r1, #0
 8003326:	0018      	movs	r0, r3
 8003328:	f7ff fb72 	bl	8002a10 <LL_USART_SetDataWidth>
 800332c:	4b16      	ldr	r3, [pc, #88]	; (8003388 <usart_config+0xf8>)
 800332e:	2100      	movs	r1, #0
 8003330:	0018      	movs	r0, r3
 8003332:	f7ff fb81 	bl	8002a38 <LL_USART_SetStopBitsLength>
 8003336:	4b14      	ldr	r3, [pc, #80]	; (8003388 <usart_config+0xf8>)
 8003338:	2100      	movs	r1, #0
 800333a:	0018      	movs	r0, r3
 800333c:	f7ff fb90 	bl	8002a60 <LL_USART_SetTransferBitOrder>
 8003340:	4b12      	ldr	r3, [pc, #72]	; (800338c <usart_config+0xfc>)
 8003342:	6819      	ldr	r1, [r3, #0]
 8003344:	23e1      	movs	r3, #225	; 0xe1
 8003346:	025b      	lsls	r3, r3, #9
 8003348:	480f      	ldr	r0, [pc, #60]	; (8003388 <usart_config+0xf8>)
 800334a:	2200      	movs	r2, #0
 800334c:	f7ff fb9c 	bl	8002a88 <LL_USART_SetBaudRate>
 8003350:	4b0d      	ldr	r3, [pc, #52]	; (8003388 <usart_config+0xf8>)
 8003352:	0018      	movs	r0, r3
 8003354:	f7ff fc27 	bl	8002ba6 <LL_USART_EnableIT_IDLE>
 8003358:	4b0b      	ldr	r3, [pc, #44]	; (8003388 <usart_config+0xf8>)
 800335a:	0018      	movs	r0, r3
 800335c:	f7ff fc31 	bl	8002bc2 <LL_USART_EnableIT_RXNE>
 8003360:	4b09      	ldr	r3, [pc, #36]	; (8003388 <usart_config+0xf8>)
 8003362:	0018      	movs	r0, r3
 8003364:	f7ff fb20 	bl	80029a8 <LL_USART_Enable>
 8003368:	46c0      	nop			; (mov r8, r8)
 800336a:	4b07      	ldr	r3, [pc, #28]	; (8003388 <usart_config+0xf8>)
 800336c:	0018      	movs	r0, r3
 800336e:	f7ff fbe3 	bl	8002b38 <LL_USART_IsActiveFlag_TEACK>
 8003372:	1e03      	subs	r3, r0, #0
 8003374:	d0f9      	beq.n	800336a <usart_config+0xda>
 8003376:	4b04      	ldr	r3, [pc, #16]	; (8003388 <usart_config+0xf8>)
 8003378:	0018      	movs	r0, r3
 800337a:	f7ff fbf3 	bl	8002b64 <LL_USART_IsActiveFlag_REACK>
 800337e:	1e03      	subs	r3, r0, #0
 8003380:	d0f3      	beq.n	800336a <usart_config+0xda>
 8003382:	46c0      	nop			; (mov r8, r8)
 8003384:	46bd      	mov	sp, r7
 8003386:	bd80      	pop	{r7, pc}
 8003388:	40013800 	.word	0x40013800
 800338c:	20000004 	.word	0x20000004

08003390 <manage_response>:
 8003390:	b590      	push	{r4, r7, lr}
 8003392:	b085      	sub	sp, #20
 8003394:	af00      	add	r7, sp, #0
 8003396:	0002      	movs	r2, r0
 8003398:	1dbb      	adds	r3, r7, #6
 800339a:	801a      	strh	r2, [r3, #0]
 800339c:	230f      	movs	r3, #15
 800339e:	18fb      	adds	r3, r7, r3
 80033a0:	2200      	movs	r2, #0
 80033a2:	701a      	strb	r2, [r3, #0]
 80033a4:	4b4e      	ldr	r3, [pc, #312]	; (80034e0 <manage_response+0x150>)
 80033a6:	0018      	movs	r0, r3
 80033a8:	f7ff fbf2 	bl	8002b90 <LL_USART_ClearFlag_TC>
 80033ac:	1dbb      	adds	r3, r7, #6
 80033ae:	2200      	movs	r2, #0
 80033b0:	5e9b      	ldrsh	r3, [r3, r2]
 80033b2:	2b2a      	cmp	r3, #42	; 0x2a
 80033b4:	d009      	beq.n	80033ca <manage_response+0x3a>
 80033b6:	1dbb      	adds	r3, r7, #6
 80033b8:	2200      	movs	r2, #0
 80033ba:	5e9b      	ldrsh	r3, [r3, r2]
 80033bc:	2b2c      	cmp	r3, #44	; 0x2c
 80033be:	d004      	beq.n	80033ca <manage_response+0x3a>
 80033c0:	1dbb      	adds	r3, r7, #6
 80033c2:	2200      	movs	r2, #0
 80033c4:	5e9b      	ldrsh	r3, [r3, r2]
 80033c6:	2b0a      	cmp	r3, #10
 80033c8:	d10f      	bne.n	80033ea <manage_response+0x5a>
 80033ca:	1dbb      	adds	r3, r7, #6
 80033cc:	881b      	ldrh	r3, [r3, #0]
 80033ce:	b2db      	uxtb	r3, r3
 80033d0:	4a43      	ldr	r2, [pc, #268]	; (80034e0 <manage_response+0x150>)
 80033d2:	0019      	movs	r1, r3
 80033d4:	0010      	movs	r0, r2
 80033d6:	f7ff fc02 	bl	8002bde <LL_USART_TransmitData8>
 80033da:	46c0      	nop			; (mov r8, r8)
 80033dc:	4b40      	ldr	r3, [pc, #256]	; (80034e0 <manage_response+0x150>)
 80033de:	0018      	movs	r0, r3
 80033e0:	f7ff fb8a 	bl	8002af8 <LL_USART_IsActiveFlag_TC>
 80033e4:	1e03      	subs	r3, r0, #0
 80033e6:	d0f9      	beq.n	80033dc <manage_response+0x4c>
 80033e8:	e076      	b.n	80034d8 <manage_response+0x148>
 80033ea:	1dbb      	adds	r3, r7, #6
 80033ec:	2200      	movs	r2, #0
 80033ee:	5e9b      	ldrsh	r3, [r3, r2]
 80033f0:	2b00      	cmp	r3, #0
 80033f2:	da36      	bge.n	8003462 <manage_response+0xd2>
 80033f4:	4b3a      	ldr	r3, [pc, #232]	; (80034e0 <manage_response+0x150>)
 80033f6:	212d      	movs	r1, #45	; 0x2d
 80033f8:	0018      	movs	r0, r3
 80033fa:	f7ff fbf0 	bl	8002bde <LL_USART_TransmitData8>
 80033fe:	46c0      	nop			; (mov r8, r8)
 8003400:	4b37      	ldr	r3, [pc, #220]	; (80034e0 <manage_response+0x150>)
 8003402:	0018      	movs	r0, r3
 8003404:	f7ff fb78 	bl	8002af8 <LL_USART_IsActiveFlag_TC>
 8003408:	1e03      	subs	r3, r0, #0
 800340a:	d0f9      	beq.n	8003400 <manage_response+0x70>
 800340c:	1dbb      	adds	r3, r7, #6
 800340e:	2200      	movs	r2, #0
 8003410:	5e9b      	ldrsh	r3, [r3, r2]
 8003412:	17da      	asrs	r2, r3, #31
 8003414:	189b      	adds	r3, r3, r2
 8003416:	4053      	eors	r3, r2
 8003418:	b29a      	uxth	r2, r3
 800341a:	1dbb      	adds	r3, r7, #6
 800341c:	801a      	strh	r2, [r3, #0]
 800341e:	e020      	b.n	8003462 <manage_response+0xd2>
 8003420:	1dbb      	adds	r3, r7, #6
 8003422:	2200      	movs	r2, #0
 8003424:	5e9b      	ldrsh	r3, [r3, r2]
 8003426:	210a      	movs	r1, #10
 8003428:	0018      	movs	r0, r3
 800342a:	f7fc ffdd 	bl	80003e8 <__aeabi_idivmod>
 800342e:	000b      	movs	r3, r1
 8003430:	b218      	sxth	r0, r3
 8003432:	240f      	movs	r4, #15
 8003434:	193b      	adds	r3, r7, r4
 8003436:	2200      	movs	r2, #0
 8003438:	569a      	ldrsb	r2, [r3, r2]
 800343a:	b2d3      	uxtb	r3, r2
 800343c:	3301      	adds	r3, #1
 800343e:	b2d9      	uxtb	r1, r3
 8003440:	193b      	adds	r3, r7, r4
 8003442:	7019      	strb	r1, [r3, #0]
 8003444:	0011      	movs	r1, r2
 8003446:	b2c2      	uxtb	r2, r0
 8003448:	4b26      	ldr	r3, [pc, #152]	; (80034e4 <manage_response+0x154>)
 800344a:	185b      	adds	r3, r3, r1
 800344c:	705a      	strb	r2, [r3, #1]
 800344e:	1dbc      	adds	r4, r7, #6
 8003450:	1dbb      	adds	r3, r7, #6
 8003452:	2200      	movs	r2, #0
 8003454:	5e9b      	ldrsh	r3, [r3, r2]
 8003456:	210a      	movs	r1, #10
 8003458:	0018      	movs	r0, r3
 800345a:	f7fc fedf 	bl	800021c <__divsi3>
 800345e:	0003      	movs	r3, r0
 8003460:	8023      	strh	r3, [r4, #0]
 8003462:	1dbb      	adds	r3, r7, #6
 8003464:	2200      	movs	r2, #0
 8003466:	5e9b      	ldrsh	r3, [r3, r2]
 8003468:	2b00      	cmp	r3, #0
 800346a:	d1d9      	bne.n	8003420 <manage_response+0x90>
 800346c:	210f      	movs	r1, #15
 800346e:	187b      	adds	r3, r7, r1
 8003470:	781b      	ldrb	r3, [r3, #0]
 8003472:	b25b      	sxtb	r3, r3
 8003474:	2b00      	cmp	r3, #0
 8003476:	dd22      	ble.n	80034be <manage_response+0x12e>
 8003478:	187b      	adds	r3, r7, r1
 800347a:	781b      	ldrb	r3, [r3, #0]
 800347c:	b25b      	sxtb	r3, r3
 800347e:	b2db      	uxtb	r3, r3
 8003480:	3b01      	subs	r3, #1
 8003482:	b2da      	uxtb	r2, r3
 8003484:	187b      	adds	r3, r7, r1
 8003486:	701a      	strb	r2, [r3, #0]
 8003488:	e019      	b.n	80034be <manage_response+0x12e>
 800348a:	46c0      	nop			; (mov r8, r8)
 800348c:	4b14      	ldr	r3, [pc, #80]	; (80034e0 <manage_response+0x150>)
 800348e:	0018      	movs	r0, r3
 8003490:	f7ff fb42 	bl	8002b18 <LL_USART_IsActiveFlag_TXE>
 8003494:	1e03      	subs	r3, r0, #0
 8003496:	d0f9      	beq.n	800348c <manage_response+0xfc>
 8003498:	200f      	movs	r0, #15
 800349a:	183b      	adds	r3, r7, r0
 800349c:	2200      	movs	r2, #0
 800349e:	569a      	ldrsb	r2, [r3, r2]
 80034a0:	b2d3      	uxtb	r3, r2
 80034a2:	3b01      	subs	r3, #1
 80034a4:	b2d9      	uxtb	r1, r3
 80034a6:	183b      	adds	r3, r7, r0
 80034a8:	7019      	strb	r1, [r3, #0]
 80034aa:	4b0e      	ldr	r3, [pc, #56]	; (80034e4 <manage_response+0x154>)
 80034ac:	189b      	adds	r3, r3, r2
 80034ae:	785b      	ldrb	r3, [r3, #1]
 80034b0:	3330      	adds	r3, #48	; 0x30
 80034b2:	b2db      	uxtb	r3, r3
 80034b4:	4a0a      	ldr	r2, [pc, #40]	; (80034e0 <manage_response+0x150>)
 80034b6:	0019      	movs	r1, r3
 80034b8:	0010      	movs	r0, r2
 80034ba:	f7ff fb90 	bl	8002bde <LL_USART_TransmitData8>
 80034be:	230f      	movs	r3, #15
 80034c0:	18fb      	adds	r3, r7, r3
 80034c2:	781b      	ldrb	r3, [r3, #0]
 80034c4:	2b7f      	cmp	r3, #127	; 0x7f
 80034c6:	d9e0      	bls.n	800348a <manage_response+0xfa>
 80034c8:	46c0      	nop			; (mov r8, r8)
 80034ca:	4b05      	ldr	r3, [pc, #20]	; (80034e0 <manage_response+0x150>)
 80034cc:	0018      	movs	r0, r3
 80034ce:	f7ff fb13 	bl	8002af8 <LL_USART_IsActiveFlag_TC>
 80034d2:	1e03      	subs	r3, r0, #0
 80034d4:	d0f9      	beq.n	80034ca <manage_response+0x13a>
 80034d6:	46c0      	nop			; (mov r8, r8)
 80034d8:	46bd      	mov	sp, r7
 80034da:	b005      	add	sp, #20
 80034dc:	bd90      	pop	{r4, r7, pc}
 80034de:	46c0      	nop			; (mov r8, r8)
 80034e0:	40013800 	.word	0x40013800
 80034e4:	20000460 	.word	0x20000460

080034e8 <manage_string>:
 80034e8:	b580      	push	{r7, lr}
 80034ea:	b084      	sub	sp, #16
 80034ec:	af00      	add	r7, sp, #0
 80034ee:	60f8      	str	r0, [r7, #12]
 80034f0:	60b9      	str	r1, [r7, #8]
 80034f2:	607a      	str	r2, [r7, #4]
 80034f4:	68fb      	ldr	r3, [r7, #12]
 80034f6:	b21b      	sxth	r3, r3
 80034f8:	0018      	movs	r0, r3
 80034fa:	f7ff ff49 	bl	8003390 <manage_response>
 80034fe:	202c      	movs	r0, #44	; 0x2c
 8003500:	f7ff ff46 	bl	8003390 <manage_response>
 8003504:	68bb      	ldr	r3, [r7, #8]
 8003506:	b21b      	sxth	r3, r3
 8003508:	0018      	movs	r0, r3
 800350a:	f7ff ff41 	bl	8003390 <manage_response>
 800350e:	202c      	movs	r0, #44	; 0x2c
 8003510:	f7ff ff3e 	bl	8003390 <manage_response>
 8003514:	687b      	ldr	r3, [r7, #4]
 8003516:	b21b      	sxth	r3, r3
 8003518:	0018      	movs	r0, r3
 800351a:	f7ff ff39 	bl	8003390 <manage_response>
 800351e:	200a      	movs	r0, #10
 8003520:	f7ff ff36 	bl	8003390 <manage_response>
 8003524:	46c0      	nop			; (mov r8, r8)
 8003526:	46bd      	mov	sp, r7
 8003528:	b004      	add	sp, #16
 800352a:	bd80      	pop	{r7, pc}

0800352c <SysTick_Handler>:
 800352c:	b580      	push	{r7, lr}
 800352e:	af00      	add	r7, sp, #0
 8003530:	4b06      	ldr	r3, [pc, #24]	; (800354c <SysTick_Handler+0x20>)
 8003532:	681a      	ldr	r2, [r3, #0]
 8003534:	685b      	ldr	r3, [r3, #4]
 8003536:	0010      	movs	r0, r2
 8003538:	0019      	movs	r1, r3
 800353a:	f7fc ff5b 	bl	80003f4 <__aeabi_d2uiz>
 800353e:	0003      	movs	r3, r0
 8003540:	0018      	movs	r0, r3
 8003542:	f7ff fc59 	bl	8002df8 <dec_display>
 8003546:	46c0      	nop			; (mov r8, r8)
 8003548:	46bd      	mov	sp, r7
 800354a:	bd80      	pop	{r7, pc}
 800354c:	20000458 	.word	0x20000458

08003550 <Conversation>:
 8003550:	b5b0      	push	{r4, r5, r7, lr}
 8003552:	b090      	sub	sp, #64	; 0x40
 8003554:	af00      	add	r7, sp, #0
 8003556:	60f8      	str	r0, [r7, #12]
 8003558:	60b9      	str	r1, [r7, #8]
 800355a:	2382      	movs	r3, #130	; 0x82
 800355c:	011b      	lsls	r3, r3, #4
 800355e:	68fa      	ldr	r2, [r7, #12]
 8003560:	1ad3      	subs	r3, r2, r3
 8003562:	0018      	movs	r0, r3
 8003564:	f7fe f8c0 	bl	80016e8 <__aeabi_ui2d>
 8003568:	2200      	movs	r2, #0
 800356a:	4b71      	ldr	r3, [pc, #452]	; (8003730 <Conversation+0x1e0>)
 800356c:	f7fd fa56 	bl	8000a1c <__aeabi_dmul>
 8003570:	0002      	movs	r2, r0
 8003572:	000b      	movs	r3, r1
 8003574:	0014      	movs	r4, r2
 8003576:	001d      	movs	r5, r3
 8003578:	23f0      	movs	r3, #240	; 0xf0
 800357a:	015a      	lsls	r2, r3, #5
 800357c:	2382      	movs	r3, #130	; 0x82
 800357e:	011b      	lsls	r3, r3, #4
 8003580:	1ad3      	subs	r3, r2, r3
 8003582:	0018      	movs	r0, r3
 8003584:	f7fe f8b0 	bl	80016e8 <__aeabi_ui2d>
 8003588:	0002      	movs	r2, r0
 800358a:	000b      	movs	r3, r1
 800358c:	0020      	movs	r0, r4
 800358e:	0029      	movs	r1, r5
 8003590:	f7fc ff4e 	bl	8000430 <__aeabi_ddiv>
 8003594:	0002      	movs	r2, r0
 8003596:	000b      	movs	r3, r1
 8003598:	63ba      	str	r2, [r7, #56]	; 0x38
 800359a:	63fb      	str	r3, [r7, #60]	; 0x3c
 800359c:	23c8      	movs	r3, #200	; 0xc8
 800359e:	00db      	lsls	r3, r3, #3
 80035a0:	68ba      	ldr	r2, [r7, #8]
 80035a2:	1ad3      	subs	r3, r2, r3
 80035a4:	0018      	movs	r0, r3
 80035a6:	f7fe f89f 	bl	80016e8 <__aeabi_ui2d>
 80035aa:	2200      	movs	r2, #0
 80035ac:	4b60      	ldr	r3, [pc, #384]	; (8003730 <Conversation+0x1e0>)
 80035ae:	f7fd fa35 	bl	8000a1c <__aeabi_dmul>
 80035b2:	0002      	movs	r2, r0
 80035b4:	000b      	movs	r3, r1
 80035b6:	0014      	movs	r4, r2
 80035b8:	001d      	movs	r5, r3
 80035ba:	23f0      	movs	r3, #240	; 0xf0
 80035bc:	015a      	lsls	r2, r3, #5
 80035be:	23c8      	movs	r3, #200	; 0xc8
 80035c0:	00db      	lsls	r3, r3, #3
 80035c2:	1ad3      	subs	r3, r2, r3
 80035c4:	0018      	movs	r0, r3
 80035c6:	f7fe f88f 	bl	80016e8 <__aeabi_ui2d>
 80035ca:	0002      	movs	r2, r0
 80035cc:	000b      	movs	r3, r1
 80035ce:	0020      	movs	r0, r4
 80035d0:	0029      	movs	r1, r5
 80035d2:	f7fc ff2d 	bl	8000430 <__aeabi_ddiv>
 80035d6:	0002      	movs	r2, r0
 80035d8:	000b      	movs	r3, r1
 80035da:	633a      	str	r2, [r7, #48]	; 0x30
 80035dc:	637b      	str	r3, [r7, #52]	; 0x34
 80035de:	4a55      	ldr	r2, [pc, #340]	; (8003734 <Conversation+0x1e4>)
 80035e0:	4b55      	ldr	r3, [pc, #340]	; (8003738 <Conversation+0x1e8>)
 80035e2:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 80035e4:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 80035e6:	f7fd fa19 	bl	8000a1c <__aeabi_dmul>
 80035ea:	0002      	movs	r2, r0
 80035ec:	000b      	movs	r3, r1
 80035ee:	62ba      	str	r2, [r7, #40]	; 0x28
 80035f0:	62fb      	str	r3, [r7, #44]	; 0x2c
 80035f2:	4a50      	ldr	r2, [pc, #320]	; (8003734 <Conversation+0x1e4>)
 80035f4:	4b50      	ldr	r3, [pc, #320]	; (8003738 <Conversation+0x1e8>)
 80035f6:	6b38      	ldr	r0, [r7, #48]	; 0x30
 80035f8:	6b79      	ldr	r1, [r7, #52]	; 0x34
 80035fa:	f7fd fa0f 	bl	8000a1c <__aeabi_dmul>
 80035fe:	0002      	movs	r2, r0
 8003600:	000b      	movs	r3, r1
 8003602:	623a      	str	r2, [r7, #32]
 8003604:	627b      	str	r3, [r7, #36]	; 0x24
 8003606:	4b4d      	ldr	r3, [pc, #308]	; (800373c <Conversation+0x1ec>)
 8003608:	681a      	ldr	r2, [r3, #0]
 800360a:	685b      	ldr	r3, [r3, #4]
 800360c:	0010      	movs	r0, r2
 800360e:	0019      	movs	r1, r3
 8003610:	f7fe f804 	bl	800161c <__aeabi_d2iz>
 8003614:	0003      	movs	r3, r0
 8003616:	0018      	movs	r0, r3
 8003618:	f7fe f836 	bl	8001688 <__aeabi_i2d>
 800361c:	0004      	movs	r4, r0
 800361e:	000d      	movs	r5, r1
 8003620:	6a3a      	ldr	r2, [r7, #32]
 8003622:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8003624:	0010      	movs	r0, r2
 8003626:	0019      	movs	r1, r3
 8003628:	f000 fa92 	bl	8003b50 <sin>
 800362c:	0002      	movs	r2, r0
 800362e:	000b      	movs	r3, r1
 8003630:	0020      	movs	r0, r4
 8003632:	0029      	movs	r1, r5
 8003634:	f7fd f9f2 	bl	8000a1c <__aeabi_dmul>
 8003638:	0002      	movs	r2, r0
 800363a:	000b      	movs	r3, r1
 800363c:	0014      	movs	r4, r2
 800363e:	001d      	movs	r5, r3
 8003640:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8003642:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8003644:	0010      	movs	r0, r2
 8003646:	0019      	movs	r1, r3
 8003648:	f000 fa32 	bl	8003ab0 <cos>
 800364c:	0002      	movs	r2, r0
 800364e:	000b      	movs	r3, r1
 8003650:	0020      	movs	r0, r4
 8003652:	0029      	movs	r1, r5
 8003654:	f7fd f9e2 	bl	8000a1c <__aeabi_dmul>
 8003658:	0002      	movs	r2, r0
 800365a:	000b      	movs	r3, r1
 800365c:	0010      	movs	r0, r2
 800365e:	0019      	movs	r1, r3
 8003660:	f7fd ffdc 	bl	800161c <__aeabi_d2iz>
 8003664:	0003      	movs	r3, r0
 8003666:	61fb      	str	r3, [r7, #28]
 8003668:	4b34      	ldr	r3, [pc, #208]	; (800373c <Conversation+0x1ec>)
 800366a:	681a      	ldr	r2, [r3, #0]
 800366c:	685b      	ldr	r3, [r3, #4]
 800366e:	0010      	movs	r0, r2
 8003670:	0019      	movs	r1, r3
 8003672:	f7fd ffd3 	bl	800161c <__aeabi_d2iz>
 8003676:	0003      	movs	r3, r0
 8003678:	0018      	movs	r0, r3
 800367a:	f7fe f805 	bl	8001688 <__aeabi_i2d>
 800367e:	0004      	movs	r4, r0
 8003680:	000d      	movs	r5, r1
 8003682:	6a3a      	ldr	r2, [r7, #32]
 8003684:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8003686:	0010      	movs	r0, r2
 8003688:	0019      	movs	r1, r3
 800368a:	f000 fa61 	bl	8003b50 <sin>
 800368e:	0002      	movs	r2, r0
 8003690:	000b      	movs	r3, r1
 8003692:	0020      	movs	r0, r4
 8003694:	0029      	movs	r1, r5
 8003696:	f7fd f9c1 	bl	8000a1c <__aeabi_dmul>
 800369a:	0002      	movs	r2, r0
 800369c:	000b      	movs	r3, r1
 800369e:	0014      	movs	r4, r2
 80036a0:	001d      	movs	r5, r3
 80036a2:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80036a4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80036a6:	0010      	movs	r0, r2
 80036a8:	0019      	movs	r1, r3
 80036aa:	f000 fa51 	bl	8003b50 <sin>
 80036ae:	0002      	movs	r2, r0
 80036b0:	000b      	movs	r3, r1
 80036b2:	0020      	movs	r0, r4
 80036b4:	0029      	movs	r1, r5
 80036b6:	f7fd f9b1 	bl	8000a1c <__aeabi_dmul>
 80036ba:	0002      	movs	r2, r0
 80036bc:	000b      	movs	r3, r1
 80036be:	0010      	movs	r0, r2
 80036c0:	0019      	movs	r1, r3
 80036c2:	f7fd ffab 	bl	800161c <__aeabi_d2iz>
 80036c6:	0003      	movs	r3, r0
 80036c8:	61bb      	str	r3, [r7, #24]
 80036ca:	4b1c      	ldr	r3, [pc, #112]	; (800373c <Conversation+0x1ec>)
 80036cc:	681a      	ldr	r2, [r3, #0]
 80036ce:	685b      	ldr	r3, [r3, #4]
 80036d0:	0010      	movs	r0, r2
 80036d2:	0019      	movs	r1, r3
 80036d4:	f7fd ffa2 	bl	800161c <__aeabi_d2iz>
 80036d8:	0003      	movs	r3, r0
 80036da:	0018      	movs	r0, r3
 80036dc:	f7fd ffd4 	bl	8001688 <__aeabi_i2d>
 80036e0:	0004      	movs	r4, r0
 80036e2:	000d      	movs	r5, r1
 80036e4:	6a3a      	ldr	r2, [r7, #32]
 80036e6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80036e8:	0010      	movs	r0, r2
 80036ea:	0019      	movs	r1, r3
 80036ec:	f000 f9e0 	bl	8003ab0 <cos>
 80036f0:	0002      	movs	r2, r0
 80036f2:	000b      	movs	r3, r1
 80036f4:	0011      	movs	r1, r2
 80036f6:	6039      	str	r1, [r7, #0]
 80036f8:	2180      	movs	r1, #128	; 0x80
 80036fa:	0609      	lsls	r1, r1, #24
 80036fc:	4059      	eors	r1, r3
 80036fe:	6079      	str	r1, [r7, #4]
 8003700:	683a      	ldr	r2, [r7, #0]
 8003702:	687b      	ldr	r3, [r7, #4]
 8003704:	0020      	movs	r0, r4
 8003706:	0029      	movs	r1, r5
 8003708:	f7fd f988 	bl	8000a1c <__aeabi_dmul>
 800370c:	0002      	movs	r2, r0
 800370e:	000b      	movs	r3, r1
 8003710:	0010      	movs	r0, r2
 8003712:	0019      	movs	r1, r3
 8003714:	f7fd ff82 	bl	800161c <__aeabi_d2iz>
 8003718:	0003      	movs	r3, r0
 800371a:	617b      	str	r3, [r7, #20]
 800371c:	697a      	ldr	r2, [r7, #20]
 800371e:	69b9      	ldr	r1, [r7, #24]
 8003720:	69fb      	ldr	r3, [r7, #28]
 8003722:	0018      	movs	r0, r3
 8003724:	f7ff fee0 	bl	80034e8 <manage_string>
 8003728:	46c0      	nop			; (mov r8, r8)
 800372a:	46bd      	mov	sp, r7
 800372c:	b010      	add	sp, #64	; 0x40
 800372e:	bdb0      	pop	{r4, r5, r7, pc}
 8003730:	40668000 	.word	0x40668000
 8003734:	a2529d39 	.word	0xa2529d39
 8003738:	3f91df46 	.word	0x3f91df46
 800373c:	20000458 	.word	0x20000458

08003740 <main>:
 8003740:	b580      	push	{r7, lr}
 8003742:	b084      	sub	sp, #16
 8003744:	af00      	add	r7, sp, #0
 8003746:	f7ff fab9 	bl	8002cbc <rcc_config>
 800374a:	f7ff faeb 	bl	8002d24 <gpio_config>
 800374e:	f7ff fbef 	bl	8002f30 <sonar_trig>
 8003752:	f7ff fc3f 	bl	8002fd4 <sonar_echo>
 8003756:	f7ff fc8b 	bl	8003070 <servo_1>
 800375a:	f7ff fce5 	bl	8003128 <servo_2>
 800375e:	f7ff fd81 	bl	8003264 <systick_config>
 8003762:	f7ff fd95 	bl	8003290 <usart_config>
 8003766:	230f      	movs	r3, #15
 8003768:	18fb      	adds	r3, r7, r3
 800376a:	2201      	movs	r2, #1
 800376c:	701a      	strb	r2, [r3, #0]
 800376e:	e08f      	b.n	8003890 <main+0x150>
 8003770:	230e      	movs	r3, #14
 8003772:	18fb      	adds	r3, r7, r3
 8003774:	2200      	movs	r2, #0
 8003776:	701a      	strb	r2, [r3, #0]
 8003778:	e064      	b.n	8003844 <main+0x104>
 800377a:	2382      	movs	r3, #130	; 0x82
 800377c:	011b      	lsls	r3, r3, #4
 800377e:	60bb      	str	r3, [r7, #8]
 8003780:	4b49      	ldr	r3, [pc, #292]	; (80038a8 <main+0x168>)
 8003782:	607b      	str	r3, [r7, #4]
 8003784:	e054      	b.n	8003830 <main+0xf0>
 8003786:	687a      	ldr	r2, [r7, #4]
 8003788:	2380      	movs	r3, #128	; 0x80
 800378a:	05db      	lsls	r3, r3, #23
 800378c:	0011      	movs	r1, r2
 800378e:	0018      	movs	r0, r3
 8003790:	f7fe ffee 	bl	8002770 <LL_TIM_OC_SetCompareCH2>
 8003794:	4b45      	ldr	r3, [pc, #276]	; (80038ac <main+0x16c>)
 8003796:	781b      	ldrb	r3, [r3, #0]
 8003798:	2b00      	cmp	r3, #0
 800379a:	d03d      	beq.n	8003818 <main+0xd8>
 800379c:	e019      	b.n	80037d2 <main+0x92>
 800379e:	4b44      	ldr	r3, [pc, #272]	; (80038b0 <main+0x170>)
 80037a0:	0018      	movs	r0, r3
 80037a2:	f7fe ff17 	bl	80025d4 <LL_TIM_GetCounter>
 80037a6:	0003      	movs	r3, r0
 80037a8:	4a42      	ldr	r2, [pc, #264]	; (80038b4 <main+0x174>)
 80037aa:	4293      	cmp	r3, r2
 80037ac:	d800      	bhi.n	80037b0 <main+0x70>
 80037ae:	e010      	b.n	80037d2 <main+0x92>
 80037b0:	687a      	ldr	r2, [r7, #4]
 80037b2:	68bb      	ldr	r3, [r7, #8]
 80037b4:	0011      	movs	r1, r2
 80037b6:	0018      	movs	r0, r3
 80037b8:	f7ff feca 	bl	8003550 <Conversation>
 80037bc:	68ba      	ldr	r2, [r7, #8]
 80037be:	2380      	movs	r3, #128	; 0x80
 80037c0:	05db      	lsls	r3, r3, #23
 80037c2:	0011      	movs	r1, r2
 80037c4:	0018      	movs	r0, r3
 80037c6:	f7fe ffc7 	bl	8002758 <LL_TIM_OC_SetCompareCH1>
 80037ca:	223c      	movs	r2, #60	; 0x3c
 80037cc:	68bb      	ldr	r3, [r7, #8]
 80037ce:	189b      	adds	r3, r3, r2
 80037d0:	60bb      	str	r3, [r7, #8]
 80037d2:	23f0      	movs	r3, #240	; 0xf0
 80037d4:	015b      	lsls	r3, r3, #5
 80037d6:	68ba      	ldr	r2, [r7, #8]
 80037d8:	429a      	cmp	r2, r3
 80037da:	d9e0      	bls.n	800379e <main+0x5e>
 80037dc:	4b33      	ldr	r3, [pc, #204]	; (80038ac <main+0x16c>)
 80037de:	2200      	movs	r2, #0
 80037e0:	701a      	strb	r2, [r3, #0]
 80037e2:	e021      	b.n	8003828 <main+0xe8>
 80037e4:	4b32      	ldr	r3, [pc, #200]	; (80038b0 <main+0x170>)
 80037e6:	0018      	movs	r0, r3
 80037e8:	f7fe fef4 	bl	80025d4 <LL_TIM_GetCounter>
 80037ec:	0003      	movs	r3, r0
 80037ee:	4a31      	ldr	r2, [pc, #196]	; (80038b4 <main+0x174>)
 80037f0:	4293      	cmp	r3, r2
 80037f2:	d800      	bhi.n	80037f6 <main+0xb6>
 80037f4:	e010      	b.n	8003818 <main+0xd8>
 80037f6:	687a      	ldr	r2, [r7, #4]
 80037f8:	68bb      	ldr	r3, [r7, #8]
 80037fa:	0011      	movs	r1, r2
 80037fc:	0018      	movs	r0, r3
 80037fe:	f7ff fea7 	bl	8003550 <Conversation>
 8003802:	68ba      	ldr	r2, [r7, #8]
 8003804:	2380      	movs	r3, #128	; 0x80
 8003806:	05db      	lsls	r3, r3, #23
 8003808:	0011      	movs	r1, r2
 800380a:	0018      	movs	r0, r3
 800380c:	f7fe ffa4 	bl	8002758 <LL_TIM_OC_SetCompareCH1>
 8003810:	223c      	movs	r2, #60	; 0x3c
 8003812:	68bb      	ldr	r3, [r7, #8]
 8003814:	1a9b      	subs	r3, r3, r2
 8003816:	60bb      	str	r3, [r7, #8]
 8003818:	2382      	movs	r3, #130	; 0x82
 800381a:	011b      	lsls	r3, r3, #4
 800381c:	68ba      	ldr	r2, [r7, #8]
 800381e:	429a      	cmp	r2, r3
 8003820:	d2e0      	bcs.n	80037e4 <main+0xa4>
 8003822:	4b22      	ldr	r3, [pc, #136]	; (80038ac <main+0x16c>)
 8003824:	2201      	movs	r2, #1
 8003826:	701a      	strb	r2, [r3, #0]
 8003828:	225a      	movs	r2, #90	; 0x5a
 800382a:	687b      	ldr	r3, [r7, #4]
 800382c:	189b      	adds	r3, r3, r2
 800382e:	607b      	str	r3, [r7, #4]
 8003830:	4a21      	ldr	r2, [pc, #132]	; (80038b8 <main+0x178>)
 8003832:	687b      	ldr	r3, [r7, #4]
 8003834:	4293      	cmp	r3, r2
 8003836:	d9a6      	bls.n	8003786 <main+0x46>
 8003838:	210e      	movs	r1, #14
 800383a:	187b      	adds	r3, r7, r1
 800383c:	781a      	ldrb	r2, [r3, #0]
 800383e:	187b      	adds	r3, r7, r1
 8003840:	3201      	adds	r2, #1
 8003842:	701a      	strb	r2, [r3, #0]
 8003844:	2201      	movs	r2, #1
 8003846:	230e      	movs	r3, #14
 8003848:	18fb      	adds	r3, r7, r3
 800384a:	781b      	ldrb	r3, [r3, #0]
 800384c:	4293      	cmp	r3, r2
 800384e:	d394      	bcc.n	800377a <main+0x3a>
 8003850:	2380      	movs	r3, #128	; 0x80
 8003852:	05db      	lsls	r3, r3, #23
 8003854:	0018      	movs	r0, r3
 8003856:	f7ff f873 	bl	8002940 <LL_TIM_ClearFlag_CC1>
 800385a:	2380      	movs	r3, #128	; 0x80
 800385c:	05db      	lsls	r3, r3, #23
 800385e:	0018      	movs	r0, r3
 8003860:	f7ff f87a 	bl	8002958 <LL_TIM_ClearFlag_CC2>
 8003864:	2382      	movs	r3, #130	; 0x82
 8003866:	011a      	lsls	r2, r3, #4
 8003868:	2380      	movs	r3, #128	; 0x80
 800386a:	05db      	lsls	r3, r3, #23
 800386c:	0011      	movs	r1, r2
 800386e:	0018      	movs	r0, r3
 8003870:	f7fe ff72 	bl	8002758 <LL_TIM_OC_SetCompareCH1>
 8003874:	4a0c      	ldr	r2, [pc, #48]	; (80038a8 <main+0x168>)
 8003876:	2380      	movs	r3, #128	; 0x80
 8003878:	05db      	lsls	r3, r3, #23
 800387a:	0011      	movs	r1, r2
 800387c:	0018      	movs	r0, r3
 800387e:	f7fe ff77 	bl	8002770 <LL_TIM_OC_SetCompareCH2>
 8003882:	202a      	movs	r0, #42	; 0x2a
 8003884:	f7ff fd84 	bl	8003390 <manage_response>
 8003888:	230f      	movs	r3, #15
 800388a:	18fb      	adds	r3, r7, r3
 800388c:	2200      	movs	r2, #0
 800388e:	701a      	strb	r2, [r3, #0]
 8003890:	230f      	movs	r3, #15
 8003892:	18fb      	adds	r3, r7, r3
 8003894:	781b      	ldrb	r3, [r3, #0]
 8003896:	2b00      	cmp	r3, #0
 8003898:	d000      	beq.n	800389c <main+0x15c>
 800389a:	e769      	b.n	8003770 <main+0x30>
 800389c:	2300      	movs	r3, #0
 800389e:	0018      	movs	r0, r3
 80038a0:	46bd      	mov	sp, r7
 80038a2:	b004      	add	sp, #16
 80038a4:	bd80      	pop	{r7, pc}
 80038a6:	46c0      	nop			; (mov r8, r8)
 80038a8:	00000e2b 	.word	0x00000e2b
 80038ac:	20000000 	.word	0x20000000
 80038b0:	40002000 	.word	0x40002000
 80038b4:	0000e9fb 	.word	0x0000e9fb
 80038b8:	00001a0b 	.word	0x00001a0b

080038bc <SystemInit>:
 80038bc:	b580      	push	{r7, lr}
 80038be:	af00      	add	r7, sp, #0
 80038c0:	4b1a      	ldr	r3, [pc, #104]	; (800392c <SystemInit+0x70>)
 80038c2:	681a      	ldr	r2, [r3, #0]
 80038c4:	4b19      	ldr	r3, [pc, #100]	; (800392c <SystemInit+0x70>)
 80038c6:	2101      	movs	r1, #1
 80038c8:	430a      	orrs	r2, r1
 80038ca:	601a      	str	r2, [r3, #0]
 80038cc:	4b17      	ldr	r3, [pc, #92]	; (800392c <SystemInit+0x70>)
 80038ce:	685a      	ldr	r2, [r3, #4]
 80038d0:	4b16      	ldr	r3, [pc, #88]	; (800392c <SystemInit+0x70>)
 80038d2:	4917      	ldr	r1, [pc, #92]	; (8003930 <SystemInit+0x74>)
 80038d4:	400a      	ands	r2, r1
 80038d6:	605a      	str	r2, [r3, #4]
 80038d8:	4b14      	ldr	r3, [pc, #80]	; (800392c <SystemInit+0x70>)
 80038da:	681a      	ldr	r2, [r3, #0]
 80038dc:	4b13      	ldr	r3, [pc, #76]	; (800392c <SystemInit+0x70>)
 80038de:	4915      	ldr	r1, [pc, #84]	; (8003934 <SystemInit+0x78>)
 80038e0:	400a      	ands	r2, r1
 80038e2:	601a      	str	r2, [r3, #0]
 80038e4:	4b11      	ldr	r3, [pc, #68]	; (800392c <SystemInit+0x70>)
 80038e6:	681a      	ldr	r2, [r3, #0]
 80038e8:	4b10      	ldr	r3, [pc, #64]	; (800392c <SystemInit+0x70>)
 80038ea:	4913      	ldr	r1, [pc, #76]	; (8003938 <SystemInit+0x7c>)
 80038ec:	400a      	ands	r2, r1
 80038ee:	601a      	str	r2, [r3, #0]
 80038f0:	4b0e      	ldr	r3, [pc, #56]	; (800392c <SystemInit+0x70>)
 80038f2:	685a      	ldr	r2, [r3, #4]
 80038f4:	4b0d      	ldr	r3, [pc, #52]	; (800392c <SystemInit+0x70>)
 80038f6:	4911      	ldr	r1, [pc, #68]	; (800393c <SystemInit+0x80>)
 80038f8:	400a      	ands	r2, r1
 80038fa:	605a      	str	r2, [r3, #4]
 80038fc:	4b0b      	ldr	r3, [pc, #44]	; (800392c <SystemInit+0x70>)
 80038fe:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8003900:	4b0a      	ldr	r3, [pc, #40]	; (800392c <SystemInit+0x70>)
 8003902:	210f      	movs	r1, #15
 8003904:	438a      	bics	r2, r1
 8003906:	62da      	str	r2, [r3, #44]	; 0x2c
 8003908:	4b08      	ldr	r3, [pc, #32]	; (800392c <SystemInit+0x70>)
 800390a:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 800390c:	4b07      	ldr	r3, [pc, #28]	; (800392c <SystemInit+0x70>)
 800390e:	490c      	ldr	r1, [pc, #48]	; (8003940 <SystemInit+0x84>)
 8003910:	400a      	ands	r2, r1
 8003912:	631a      	str	r2, [r3, #48]	; 0x30
 8003914:	4b05      	ldr	r3, [pc, #20]	; (800392c <SystemInit+0x70>)
 8003916:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8003918:	4b04      	ldr	r3, [pc, #16]	; (800392c <SystemInit+0x70>)
 800391a:	2101      	movs	r1, #1
 800391c:	438a      	bics	r2, r1
 800391e:	635a      	str	r2, [r3, #52]	; 0x34
 8003920:	4b02      	ldr	r3, [pc, #8]	; (800392c <SystemInit+0x70>)
 8003922:	2200      	movs	r2, #0
 8003924:	609a      	str	r2, [r3, #8]
 8003926:	46c0      	nop			; (mov r8, r8)
 8003928:	46bd      	mov	sp, r7
 800392a:	bd80      	pop	{r7, pc}
 800392c:	40021000 	.word	0x40021000
 8003930:	f8ffb80c 	.word	0xf8ffb80c
 8003934:	fef6ffff 	.word	0xfef6ffff
 8003938:	fffbffff 	.word	0xfffbffff
 800393c:	ffc0ffff 	.word	0xffc0ffff
 8003940:	fffffeac 	.word	0xfffffeac

08003944 <NMI_Handler>:
 8003944:	b580      	push	{r7, lr}
 8003946:	af00      	add	r7, sp, #0
 8003948:	46c0      	nop			; (mov r8, r8)
 800394a:	46bd      	mov	sp, r7
 800394c:	bd80      	pop	{r7, pc}

0800394e <HardFault_Handler>:
 800394e:	b580      	push	{r7, lr}
 8003950:	af00      	add	r7, sp, #0
 8003952:	e7fe      	b.n	8003952 <HardFault_Handler+0x4>

08003954 <SVC_Handler>:
 8003954:	b580      	push	{r7, lr}
 8003956:	af00      	add	r7, sp, #0
 8003958:	46c0      	nop			; (mov r8, r8)
 800395a:	46bd      	mov	sp, r7
 800395c:	bd80      	pop	{r7, pc}

0800395e <PendSV_Handler>:
 800395e:	b580      	push	{r7, lr}
 8003960:	af00      	add	r7, sp, #0
 8003962:	46c0      	nop			; (mov r8, r8)
 8003964:	46bd      	mov	sp, r7
 8003966:	bd80      	pop	{r7, pc}

08003968 <__libc_init_array>:
 8003968:	b570      	push	{r4, r5, r6, lr}
 800396a:	4d0c      	ldr	r5, [pc, #48]	; (800399c <__libc_init_array+0x34>)
 800396c:	4e0c      	ldr	r6, [pc, #48]	; (80039a0 <__libc_init_array+0x38>)
 800396e:	1b76      	subs	r6, r6, r5
 8003970:	10b6      	asrs	r6, r6, #2
 8003972:	d005      	beq.n	8003980 <__libc_init_array+0x18>
 8003974:	2400      	movs	r4, #0
 8003976:	cd08      	ldmia	r5!, {r3}
 8003978:	3401      	adds	r4, #1
 800397a:	4798      	blx	r3
 800397c:	42a6      	cmp	r6, r4
 800397e:	d1fa      	bne.n	8003976 <__libc_init_array+0xe>
 8003980:	f001 fa8e 	bl	8004ea0 <_init>
 8003984:	4d07      	ldr	r5, [pc, #28]	; (80039a4 <__libc_init_array+0x3c>)
 8003986:	4e08      	ldr	r6, [pc, #32]	; (80039a8 <__libc_init_array+0x40>)
 8003988:	1b76      	subs	r6, r6, r5
 800398a:	10b6      	asrs	r6, r6, #2
 800398c:	d005      	beq.n	800399a <__libc_init_array+0x32>
 800398e:	2400      	movs	r4, #0
 8003990:	cd08      	ldmia	r5!, {r3}
 8003992:	3401      	adds	r4, #1
 8003994:	4798      	blx	r3
 8003996:	42a6      	cmp	r6, r4
 8003998:	d1fa      	bne.n	8003990 <__libc_init_array+0x28>
 800399a:	bd70      	pop	{r4, r5, r6, pc}
 800399c:	08005148 	.word	0x08005148
 80039a0:	08005148 	.word	0x08005148
 80039a4:	08005148 	.word	0x08005148
 80039a8:	08005150 	.word	0x08005150

080039ac <register_fini>:
 80039ac:	4b03      	ldr	r3, [pc, #12]	; (80039bc <register_fini+0x10>)
 80039ae:	b510      	push	{r4, lr}
 80039b0:	2b00      	cmp	r3, #0
 80039b2:	d002      	beq.n	80039ba <register_fini+0xe>
 80039b4:	4802      	ldr	r0, [pc, #8]	; (80039c0 <register_fini+0x14>)
 80039b6:	f000 f805 	bl	80039c4 <atexit>
 80039ba:	bd10      	pop	{r4, pc}
 80039bc:	00000000 	.word	0x00000000
 80039c0:	080039d5 	.word	0x080039d5

080039c4 <atexit>:
 80039c4:	b510      	push	{r4, lr}
 80039c6:	0001      	movs	r1, r0
 80039c8:	2300      	movs	r3, #0
 80039ca:	2200      	movs	r2, #0
 80039cc:	2000      	movs	r0, #0
 80039ce:	f000 f819 	bl	8003a04 <__register_exitproc>
 80039d2:	bd10      	pop	{r4, pc}

080039d4 <__libc_fini_array>:
 80039d4:	b570      	push	{r4, r5, r6, lr}
 80039d6:	4d07      	ldr	r5, [pc, #28]	; (80039f4 <__libc_fini_array+0x20>)
 80039d8:	4c07      	ldr	r4, [pc, #28]	; (80039f8 <__libc_fini_array+0x24>)
 80039da:	1b64      	subs	r4, r4, r5
 80039dc:	10a4      	asrs	r4, r4, #2
 80039de:	d005      	beq.n	80039ec <__libc_fini_array+0x18>
 80039e0:	3c01      	subs	r4, #1
 80039e2:	00a3      	lsls	r3, r4, #2
 80039e4:	58eb      	ldr	r3, [r5, r3]
 80039e6:	4798      	blx	r3
 80039e8:	2c00      	cmp	r4, #0
 80039ea:	d1f9      	bne.n	80039e0 <__libc_fini_array+0xc>
 80039ec:	f001 fa5e 	bl	8004eac <_fini>
 80039f0:	bd70      	pop	{r4, r5, r6, pc}
 80039f2:	46c0      	nop			; (mov r8, r8)
 80039f4:	08005150 	.word	0x08005150
 80039f8:	08005154 	.word	0x08005154

080039fc <__retarget_lock_acquire_recursive>:
 80039fc:	4770      	bx	lr
 80039fe:	46c0      	nop			; (mov r8, r8)

08003a00 <__retarget_lock_release_recursive>:
 8003a00:	4770      	bx	lr
 8003a02:	46c0      	nop			; (mov r8, r8)

08003a04 <__register_exitproc>:
 8003a04:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003a06:	46d6      	mov	lr, sl
 8003a08:	464f      	mov	r7, r9
 8003a0a:	4646      	mov	r6, r8
 8003a0c:	b5c0      	push	{r6, r7, lr}
 8003a0e:	4f26      	ldr	r7, [pc, #152]	; (8003aa8 <__register_exitproc+0xa4>)
 8003a10:	b082      	sub	sp, #8
 8003a12:	0006      	movs	r6, r0
 8003a14:	6838      	ldr	r0, [r7, #0]
 8003a16:	4692      	mov	sl, r2
 8003a18:	4698      	mov	r8, r3
 8003a1a:	4689      	mov	r9, r1
 8003a1c:	f7ff ffee 	bl	80039fc <__retarget_lock_acquire_recursive>
 8003a20:	4b22      	ldr	r3, [pc, #136]	; (8003aac <__register_exitproc+0xa8>)
 8003a22:	681b      	ldr	r3, [r3, #0]
 8003a24:	9301      	str	r3, [sp, #4]
 8003a26:	23a4      	movs	r3, #164	; 0xa4
 8003a28:	9a01      	ldr	r2, [sp, #4]
 8003a2a:	005b      	lsls	r3, r3, #1
 8003a2c:	58d5      	ldr	r5, [r2, r3]
 8003a2e:	2d00      	cmp	r5, #0
 8003a30:	d02e      	beq.n	8003a90 <__register_exitproc+0x8c>
 8003a32:	686c      	ldr	r4, [r5, #4]
 8003a34:	2c1f      	cmp	r4, #31
 8003a36:	dc30      	bgt.n	8003a9a <__register_exitproc+0x96>
 8003a38:	2e00      	cmp	r6, #0
 8003a3a:	d10f      	bne.n	8003a5c <__register_exitproc+0x58>
 8003a3c:	1c63      	adds	r3, r4, #1
 8003a3e:	606b      	str	r3, [r5, #4]
 8003a40:	464b      	mov	r3, r9
 8003a42:	3402      	adds	r4, #2
 8003a44:	00a4      	lsls	r4, r4, #2
 8003a46:	6838      	ldr	r0, [r7, #0]
 8003a48:	5163      	str	r3, [r4, r5]
 8003a4a:	f7ff ffd9 	bl	8003a00 <__retarget_lock_release_recursive>
 8003a4e:	2000      	movs	r0, #0
 8003a50:	b002      	add	sp, #8
 8003a52:	bce0      	pop	{r5, r6, r7}
 8003a54:	46ba      	mov	sl, r7
 8003a56:	46b1      	mov	r9, r6
 8003a58:	46a8      	mov	r8, r5
 8003a5a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8003a5c:	2288      	movs	r2, #136	; 0x88
 8003a5e:	4651      	mov	r1, sl
 8003a60:	0028      	movs	r0, r5
 8003a62:	00a3      	lsls	r3, r4, #2
 8003a64:	18eb      	adds	r3, r5, r3
 8003a66:	5099      	str	r1, [r3, r2]
 8003a68:	3a87      	subs	r2, #135	; 0x87
 8003a6a:	40a2      	lsls	r2, r4
 8003a6c:	3089      	adds	r0, #137	; 0x89
 8003a6e:	30ff      	adds	r0, #255	; 0xff
 8003a70:	6801      	ldr	r1, [r0, #0]
 8003a72:	4311      	orrs	r1, r2
 8003a74:	6001      	str	r1, [r0, #0]
 8003a76:	2184      	movs	r1, #132	; 0x84
 8003a78:	4640      	mov	r0, r8
 8003a7a:	0049      	lsls	r1, r1, #1
 8003a7c:	5058      	str	r0, [r3, r1]
 8003a7e:	2e02      	cmp	r6, #2
 8003a80:	d1dc      	bne.n	8003a3c <__register_exitproc+0x38>
 8003a82:	002b      	movs	r3, r5
 8003a84:	338d      	adds	r3, #141	; 0x8d
 8003a86:	33ff      	adds	r3, #255	; 0xff
 8003a88:	6819      	ldr	r1, [r3, #0]
 8003a8a:	430a      	orrs	r2, r1
 8003a8c:	601a      	str	r2, [r3, #0]
 8003a8e:	e7d5      	b.n	8003a3c <__register_exitproc+0x38>
 8003a90:	0015      	movs	r5, r2
 8003a92:	354d      	adds	r5, #77	; 0x4d
 8003a94:	35ff      	adds	r5, #255	; 0xff
 8003a96:	50d5      	str	r5, [r2, r3]
 8003a98:	e7cb      	b.n	8003a32 <__register_exitproc+0x2e>
 8003a9a:	6838      	ldr	r0, [r7, #0]
 8003a9c:	f7ff ffb0 	bl	8003a00 <__retarget_lock_release_recursive>
 8003aa0:	2001      	movs	r0, #1
 8003aa2:	4240      	negs	r0, r0
 8003aa4:	e7d4      	b.n	8003a50 <__register_exitproc+0x4c>
 8003aa6:	46c0      	nop			; (mov r8, r8)
 8003aa8:	20000430 	.word	0x20000430
 8003aac:	08004f6c 	.word	0x08004f6c

08003ab0 <cos>:
 8003ab0:	b5d0      	push	{r4, r6, r7, lr}
 8003ab2:	4a25      	ldr	r2, [pc, #148]	; (8003b48 <cos+0x98>)
 8003ab4:	004b      	lsls	r3, r1, #1
 8003ab6:	b086      	sub	sp, #24
 8003ab8:	085b      	lsrs	r3, r3, #1
 8003aba:	4293      	cmp	r3, r2
 8003abc:	dd22      	ble.n	8003b04 <cos+0x54>
 8003abe:	4a23      	ldr	r2, [pc, #140]	; (8003b4c <cos+0x9c>)
 8003ac0:	4293      	cmp	r3, r2
 8003ac2:	dd09      	ble.n	8003ad8 <cos+0x28>
 8003ac4:	0002      	movs	r2, r0
 8003ac6:	000b      	movs	r3, r1
 8003ac8:	f7fd fa16 	bl	8000ef8 <__aeabi_dsub>
 8003acc:	0002      	movs	r2, r0
 8003ace:	000b      	movs	r3, r1
 8003ad0:	0010      	movs	r0, r2
 8003ad2:	0019      	movs	r1, r3
 8003ad4:	b006      	add	sp, #24
 8003ad6:	bdd0      	pop	{r4, r6, r7, pc}
 8003ad8:	aa02      	add	r2, sp, #8
 8003ada:	f000 f88b 	bl	8003bf4 <__ieee754_rem_pio2>
 8003ade:	2303      	movs	r3, #3
 8003ae0:	4018      	ands	r0, r3
 8003ae2:	9a04      	ldr	r2, [sp, #16]
 8003ae4:	9b05      	ldr	r3, [sp, #20]
 8003ae6:	2801      	cmp	r0, #1
 8003ae8:	d013      	beq.n	8003b12 <cos+0x62>
 8003aea:	2802      	cmp	r0, #2
 8003aec:	d022      	beq.n	8003b34 <cos+0x84>
 8003aee:	2800      	cmp	r0, #0
 8003af0:	d019      	beq.n	8003b26 <cos+0x76>
 8003af2:	9802      	ldr	r0, [sp, #8]
 8003af4:	9903      	ldr	r1, [sp, #12]
 8003af6:	2401      	movs	r4, #1
 8003af8:	9400      	str	r4, [sp, #0]
 8003afa:	f000 ffff 	bl	8004afc <__kernel_sin>
 8003afe:	0002      	movs	r2, r0
 8003b00:	000b      	movs	r3, r1
 8003b02:	e7e5      	b.n	8003ad0 <cos+0x20>
 8003b04:	2200      	movs	r2, #0
 8003b06:	2300      	movs	r3, #0
 8003b08:	f000 fa7c 	bl	8004004 <__kernel_cos>
 8003b0c:	0002      	movs	r2, r0
 8003b0e:	000b      	movs	r3, r1
 8003b10:	e7de      	b.n	8003ad0 <cos+0x20>
 8003b12:	9000      	str	r0, [sp, #0]
 8003b14:	9802      	ldr	r0, [sp, #8]
 8003b16:	9903      	ldr	r1, [sp, #12]
 8003b18:	f000 fff0 	bl	8004afc <__kernel_sin>
 8003b1c:	2380      	movs	r3, #128	; 0x80
 8003b1e:	061b      	lsls	r3, r3, #24
 8003b20:	0002      	movs	r2, r0
 8003b22:	18cb      	adds	r3, r1, r3
 8003b24:	e7d4      	b.n	8003ad0 <cos+0x20>
 8003b26:	9802      	ldr	r0, [sp, #8]
 8003b28:	9903      	ldr	r1, [sp, #12]
 8003b2a:	f000 fa6b 	bl	8004004 <__kernel_cos>
 8003b2e:	0002      	movs	r2, r0
 8003b30:	000b      	movs	r3, r1
 8003b32:	e7cd      	b.n	8003ad0 <cos+0x20>
 8003b34:	9802      	ldr	r0, [sp, #8]
 8003b36:	9903      	ldr	r1, [sp, #12]
 8003b38:	f000 fa64 	bl	8004004 <__kernel_cos>
 8003b3c:	2380      	movs	r3, #128	; 0x80
 8003b3e:	061b      	lsls	r3, r3, #24
 8003b40:	0002      	movs	r2, r0
 8003b42:	18cb      	adds	r3, r1, r3
 8003b44:	e7c4      	b.n	8003ad0 <cos+0x20>
 8003b46:	46c0      	nop			; (mov r8, r8)
 8003b48:	3fe921fb 	.word	0x3fe921fb
 8003b4c:	7fefffff 	.word	0x7fefffff

08003b50 <sin>:
 8003b50:	b5d0      	push	{r4, r6, r7, lr}
 8003b52:	4a26      	ldr	r2, [pc, #152]	; (8003bec <sin+0x9c>)
 8003b54:	004b      	lsls	r3, r1, #1
 8003b56:	b086      	sub	sp, #24
 8003b58:	085b      	lsrs	r3, r3, #1
 8003b5a:	4293      	cmp	r3, r2
 8003b5c:	dd22      	ble.n	8003ba4 <sin+0x54>
 8003b5e:	4a24      	ldr	r2, [pc, #144]	; (8003bf0 <sin+0xa0>)
 8003b60:	4293      	cmp	r3, r2
 8003b62:	dd09      	ble.n	8003b78 <sin+0x28>
 8003b64:	0002      	movs	r2, r0
 8003b66:	000b      	movs	r3, r1
 8003b68:	f7fd f9c6 	bl	8000ef8 <__aeabi_dsub>
 8003b6c:	0002      	movs	r2, r0
 8003b6e:	000b      	movs	r3, r1
 8003b70:	0010      	movs	r0, r2
 8003b72:	0019      	movs	r1, r3
 8003b74:	b006      	add	sp, #24
 8003b76:	bdd0      	pop	{r4, r6, r7, pc}
 8003b78:	aa02      	add	r2, sp, #8
 8003b7a:	f000 f83b 	bl	8003bf4 <__ieee754_rem_pio2>
 8003b7e:	2303      	movs	r3, #3
 8003b80:	4018      	ands	r0, r3
 8003b82:	9a04      	ldr	r2, [sp, #16]
 8003b84:	9b05      	ldr	r3, [sp, #20]
 8003b86:	2801      	cmp	r0, #1
 8003b88:	d015      	beq.n	8003bb6 <sin+0x66>
 8003b8a:	2802      	cmp	r0, #2
 8003b8c:	d023      	beq.n	8003bd6 <sin+0x86>
 8003b8e:	2800      	cmp	r0, #0
 8003b90:	d018      	beq.n	8003bc4 <sin+0x74>
 8003b92:	9802      	ldr	r0, [sp, #8]
 8003b94:	9903      	ldr	r1, [sp, #12]
 8003b96:	f000 fa35 	bl	8004004 <__kernel_cos>
 8003b9a:	2380      	movs	r3, #128	; 0x80
 8003b9c:	061b      	lsls	r3, r3, #24
 8003b9e:	0002      	movs	r2, r0
 8003ba0:	18cb      	adds	r3, r1, r3
 8003ba2:	e7e5      	b.n	8003b70 <sin+0x20>
 8003ba4:	2300      	movs	r3, #0
 8003ba6:	2200      	movs	r2, #0
 8003ba8:	9300      	str	r3, [sp, #0]
 8003baa:	2300      	movs	r3, #0
 8003bac:	f000 ffa6 	bl	8004afc <__kernel_sin>
 8003bb0:	0002      	movs	r2, r0
 8003bb2:	000b      	movs	r3, r1
 8003bb4:	e7dc      	b.n	8003b70 <sin+0x20>
 8003bb6:	9802      	ldr	r0, [sp, #8]
 8003bb8:	9903      	ldr	r1, [sp, #12]
 8003bba:	f000 fa23 	bl	8004004 <__kernel_cos>
 8003bbe:	0002      	movs	r2, r0
 8003bc0:	000b      	movs	r3, r1
 8003bc2:	e7d5      	b.n	8003b70 <sin+0x20>
 8003bc4:	2401      	movs	r4, #1
 8003bc6:	9802      	ldr	r0, [sp, #8]
 8003bc8:	9903      	ldr	r1, [sp, #12]
 8003bca:	9400      	str	r4, [sp, #0]
 8003bcc:	f000 ff96 	bl	8004afc <__kernel_sin>
 8003bd0:	0002      	movs	r2, r0
 8003bd2:	000b      	movs	r3, r1
 8003bd4:	e7cc      	b.n	8003b70 <sin+0x20>
 8003bd6:	2401      	movs	r4, #1
 8003bd8:	9802      	ldr	r0, [sp, #8]
 8003bda:	9903      	ldr	r1, [sp, #12]
 8003bdc:	9400      	str	r4, [sp, #0]
 8003bde:	f000 ff8d 	bl	8004afc <__kernel_sin>
 8003be2:	2380      	movs	r3, #128	; 0x80
 8003be4:	061b      	lsls	r3, r3, #24
 8003be6:	0002      	movs	r2, r0
 8003be8:	18cb      	adds	r3, r1, r3
 8003bea:	e7c1      	b.n	8003b70 <sin+0x20>
 8003bec:	3fe921fb 	.word	0x3fe921fb
 8003bf0:	7fefffff 	.word	0x7fefffff

08003bf4 <__ieee754_rem_pio2>:
 8003bf4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003bf6:	464e      	mov	r6, r9
 8003bf8:	4657      	mov	r7, sl
 8003bfa:	46de      	mov	lr, fp
 8003bfc:	4645      	mov	r5, r8
 8003bfe:	b5e0      	push	{r5, r6, r7, lr}
 8003c00:	4bdf      	ldr	r3, [pc, #892]	; (8003f80 <__ieee754_rem_pio2+0x38c>)
 8003c02:	004e      	lsls	r6, r1, #1
 8003c04:	0017      	movs	r7, r2
 8003c06:	4689      	mov	r9, r1
 8003c08:	b08f      	sub	sp, #60	; 0x3c
 8003c0a:	0876      	lsrs	r6, r6, #1
 8003c0c:	429e      	cmp	r6, r3
 8003c0e:	dc00      	bgt.n	8003c12 <__ieee754_rem_pio2+0x1e>
 8003c10:	e08b      	b.n	8003d2a <__ieee754_rem_pio2+0x136>
 8003c12:	4bdc      	ldr	r3, [pc, #880]	; (8003f84 <__ieee754_rem_pio2+0x390>)
 8003c14:	429e      	cmp	r6, r3
 8003c16:	dc28      	bgt.n	8003c6a <__ieee754_rem_pio2+0x76>
 8003c18:	4adb      	ldr	r2, [pc, #876]	; (8003f88 <__ieee754_rem_pio2+0x394>)
 8003c1a:	2900      	cmp	r1, #0
 8003c1c:	dc00      	bgt.n	8003c20 <__ieee754_rem_pio2+0x2c>
 8003c1e:	e190      	b.n	8003f42 <__ieee754_rem_pio2+0x34e>
 8003c20:	4bda      	ldr	r3, [pc, #872]	; (8003f8c <__ieee754_rem_pio2+0x398>)
 8003c22:	f7fd f969 	bl	8000ef8 <__aeabi_dsub>
 8003c26:	4bd9      	ldr	r3, [pc, #868]	; (8003f8c <__ieee754_rem_pio2+0x398>)
 8003c28:	0004      	movs	r4, r0
 8003c2a:	000d      	movs	r5, r1
 8003c2c:	429e      	cmp	r6, r3
 8003c2e:	d100      	bne.n	8003c32 <__ieee754_rem_pio2+0x3e>
 8003c30:	e091      	b.n	8003d56 <__ieee754_rem_pio2+0x162>
 8003c32:	4ad7      	ldr	r2, [pc, #860]	; (8003f90 <__ieee754_rem_pio2+0x39c>)
 8003c34:	4bd7      	ldr	r3, [pc, #860]	; (8003f94 <__ieee754_rem_pio2+0x3a0>)
 8003c36:	f7fd f95f 	bl	8000ef8 <__aeabi_dsub>
 8003c3a:	0002      	movs	r2, r0
 8003c3c:	000b      	movs	r3, r1
 8003c3e:	0020      	movs	r0, r4
 8003c40:	603a      	str	r2, [r7, #0]
 8003c42:	607b      	str	r3, [r7, #4]
 8003c44:	0029      	movs	r1, r5
 8003c46:	f7fd f957 	bl	8000ef8 <__aeabi_dsub>
 8003c4a:	4bd2      	ldr	r3, [pc, #840]	; (8003f94 <__ieee754_rem_pio2+0x3a0>)
 8003c4c:	4ad0      	ldr	r2, [pc, #832]	; (8003f90 <__ieee754_rem_pio2+0x39c>)
 8003c4e:	f7fd f953 	bl	8000ef8 <__aeabi_dsub>
 8003c52:	2301      	movs	r3, #1
 8003c54:	4698      	mov	r8, r3
 8003c56:	60b8      	str	r0, [r7, #8]
 8003c58:	60f9      	str	r1, [r7, #12]
 8003c5a:	4640      	mov	r0, r8
 8003c5c:	b00f      	add	sp, #60	; 0x3c
 8003c5e:	bcf0      	pop	{r4, r5, r6, r7}
 8003c60:	46bb      	mov	fp, r7
 8003c62:	46b2      	mov	sl, r6
 8003c64:	46a9      	mov	r9, r5
 8003c66:	46a0      	mov	r8, r4
 8003c68:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8003c6a:	4bcb      	ldr	r3, [pc, #812]	; (8003f98 <__ieee754_rem_pio2+0x3a4>)
 8003c6c:	429e      	cmp	r6, r3
 8003c6e:	dc00      	bgt.n	8003c72 <__ieee754_rem_pio2+0x7e>
 8003c70:	e08d      	b.n	8003d8e <__ieee754_rem_pio2+0x19a>
 8003c72:	4bca      	ldr	r3, [pc, #808]	; (8003f9c <__ieee754_rem_pio2+0x3a8>)
 8003c74:	429e      	cmp	r6, r3
 8003c76:	dc63      	bgt.n	8003d40 <__ieee754_rem_pio2+0x14c>
 8003c78:	49c9      	ldr	r1, [pc, #804]	; (8003fa0 <__ieee754_rem_pio2+0x3ac>)
 8003c7a:	1532      	asrs	r2, r6, #20
 8003c7c:	4688      	mov	r8, r1
 8003c7e:	4490      	add	r8, r2
 8003c80:	4643      	mov	r3, r8
 8003c82:	051b      	lsls	r3, r3, #20
 8003c84:	1af5      	subs	r5, r6, r3
 8003c86:	0029      	movs	r1, r5
 8003c88:	0004      	movs	r4, r0
 8003c8a:	f7fd fcc7 	bl	800161c <__aeabi_d2iz>
 8003c8e:	f7fd fcfb 	bl	8001688 <__aeabi_i2d>
 8003c92:	0002      	movs	r2, r0
 8003c94:	000b      	movs	r3, r1
 8003c96:	0020      	movs	r0, r4
 8003c98:	0029      	movs	r1, r5
 8003c9a:	9208      	str	r2, [sp, #32]
 8003c9c:	9309      	str	r3, [sp, #36]	; 0x24
 8003c9e:	f7fd f92b 	bl	8000ef8 <__aeabi_dsub>
 8003ca2:	2200      	movs	r2, #0
 8003ca4:	4bbf      	ldr	r3, [pc, #764]	; (8003fa4 <__ieee754_rem_pio2+0x3b0>)
 8003ca6:	f7fc feb9 	bl	8000a1c <__aeabi_dmul>
 8003caa:	000d      	movs	r5, r1
 8003cac:	0004      	movs	r4, r0
 8003cae:	f7fd fcb5 	bl	800161c <__aeabi_d2iz>
 8003cb2:	0006      	movs	r6, r0
 8003cb4:	f7fd fce8 	bl	8001688 <__aeabi_i2d>
 8003cb8:	0002      	movs	r2, r0
 8003cba:	000b      	movs	r3, r1
 8003cbc:	0020      	movs	r0, r4
 8003cbe:	0029      	movs	r1, r5
 8003cc0:	920a      	str	r2, [sp, #40]	; 0x28
 8003cc2:	930b      	str	r3, [sp, #44]	; 0x2c
 8003cc4:	f7fd f918 	bl	8000ef8 <__aeabi_dsub>
 8003cc8:	2200      	movs	r2, #0
 8003cca:	4bb6      	ldr	r3, [pc, #728]	; (8003fa4 <__ieee754_rem_pio2+0x3b0>)
 8003ccc:	f7fc fea6 	bl	8000a1c <__aeabi_dmul>
 8003cd0:	2200      	movs	r2, #0
 8003cd2:	2300      	movs	r3, #0
 8003cd4:	900c      	str	r0, [sp, #48]	; 0x30
 8003cd6:	910d      	str	r1, [sp, #52]	; 0x34
 8003cd8:	f7fd fd3c 	bl	8001754 <__aeabi_dcmpeq>
 8003cdc:	2800      	cmp	r0, #0
 8003cde:	d100      	bne.n	8003ce2 <__ieee754_rem_pio2+0xee>
 8003ce0:	e103      	b.n	8003eea <__ieee754_rem_pio2+0x2f6>
 8003ce2:	0033      	movs	r3, r6
 8003ce4:	1e5a      	subs	r2, r3, #1
 8003ce6:	4193      	sbcs	r3, r2
 8003ce8:	3301      	adds	r3, #1
 8003cea:	4aaf      	ldr	r2, [pc, #700]	; (8003fa8 <__ieee754_rem_pio2+0x3b4>)
 8003cec:	0039      	movs	r1, r7
 8003cee:	9201      	str	r2, [sp, #4]
 8003cf0:	2202      	movs	r2, #2
 8003cf2:	a808      	add	r0, sp, #32
 8003cf4:	9200      	str	r2, [sp, #0]
 8003cf6:	4642      	mov	r2, r8
 8003cf8:	f000 fa9c 	bl	8004234 <__kernel_rem_pio2>
 8003cfc:	464b      	mov	r3, r9
 8003cfe:	4680      	mov	r8, r0
 8003d00:	2b00      	cmp	r3, #0
 8003d02:	daaa      	bge.n	8003c5a <__ieee754_rem_pio2+0x66>
 8003d04:	2080      	movs	r0, #128	; 0x80
 8003d06:	0600      	lsls	r0, r0, #24
 8003d08:	4684      	mov	ip, r0
 8003d0a:	6879      	ldr	r1, [r7, #4]
 8003d0c:	683a      	ldr	r2, [r7, #0]
 8003d0e:	4461      	add	r1, ip
 8003d10:	000b      	movs	r3, r1
 8003d12:	68f9      	ldr	r1, [r7, #12]
 8003d14:	603a      	str	r2, [r7, #0]
 8003d16:	607b      	str	r3, [r7, #4]
 8003d18:	4461      	add	r1, ip
 8003d1a:	000b      	movs	r3, r1
 8003d1c:	68ba      	ldr	r2, [r7, #8]
 8003d1e:	60ba      	str	r2, [r7, #8]
 8003d20:	60fb      	str	r3, [r7, #12]
 8003d22:	4643      	mov	r3, r8
 8003d24:	425b      	negs	r3, r3
 8003d26:	4698      	mov	r8, r3
 8003d28:	e797      	b.n	8003c5a <__ieee754_rem_pio2+0x66>
 8003d2a:	0002      	movs	r2, r0
 8003d2c:	000b      	movs	r3, r1
 8003d2e:	603a      	str	r2, [r7, #0]
 8003d30:	607b      	str	r3, [r7, #4]
 8003d32:	2300      	movs	r3, #0
 8003d34:	2200      	movs	r2, #0
 8003d36:	60ba      	str	r2, [r7, #8]
 8003d38:	60fb      	str	r3, [r7, #12]
 8003d3a:	2300      	movs	r3, #0
 8003d3c:	4698      	mov	r8, r3
 8003d3e:	e78c      	b.n	8003c5a <__ieee754_rem_pio2+0x66>
 8003d40:	000b      	movs	r3, r1
 8003d42:	0002      	movs	r2, r0
 8003d44:	f7fd f8d8 	bl	8000ef8 <__aeabi_dsub>
 8003d48:	2300      	movs	r3, #0
 8003d4a:	60b8      	str	r0, [r7, #8]
 8003d4c:	60f9      	str	r1, [r7, #12]
 8003d4e:	4698      	mov	r8, r3
 8003d50:	6038      	str	r0, [r7, #0]
 8003d52:	6079      	str	r1, [r7, #4]
 8003d54:	e781      	b.n	8003c5a <__ieee754_rem_pio2+0x66>
 8003d56:	22d3      	movs	r2, #211	; 0xd3
 8003d58:	4b8e      	ldr	r3, [pc, #568]	; (8003f94 <__ieee754_rem_pio2+0x3a0>)
 8003d5a:	0552      	lsls	r2, r2, #21
 8003d5c:	f7fd f8cc 	bl	8000ef8 <__aeabi_dsub>
 8003d60:	4a92      	ldr	r2, [pc, #584]	; (8003fac <__ieee754_rem_pio2+0x3b8>)
 8003d62:	4b93      	ldr	r3, [pc, #588]	; (8003fb0 <__ieee754_rem_pio2+0x3bc>)
 8003d64:	0004      	movs	r4, r0
 8003d66:	000d      	movs	r5, r1
 8003d68:	f7fd f8c6 	bl	8000ef8 <__aeabi_dsub>
 8003d6c:	0002      	movs	r2, r0
 8003d6e:	000b      	movs	r3, r1
 8003d70:	0020      	movs	r0, r4
 8003d72:	603a      	str	r2, [r7, #0]
 8003d74:	607b      	str	r3, [r7, #4]
 8003d76:	0029      	movs	r1, r5
 8003d78:	f7fd f8be 	bl	8000ef8 <__aeabi_dsub>
 8003d7c:	4b8c      	ldr	r3, [pc, #560]	; (8003fb0 <__ieee754_rem_pio2+0x3bc>)
 8003d7e:	4a8b      	ldr	r2, [pc, #556]	; (8003fac <__ieee754_rem_pio2+0x3b8>)
 8003d80:	f7fd f8ba 	bl	8000ef8 <__aeabi_dsub>
 8003d84:	2301      	movs	r3, #1
 8003d86:	60b8      	str	r0, [r7, #8]
 8003d88:	60f9      	str	r1, [r7, #12]
 8003d8a:	4698      	mov	r8, r3
 8003d8c:	e765      	b.n	8003c5a <__ieee754_rem_pio2+0x66>
 8003d8e:	f000 ff6b 	bl	8004c68 <fabs>
 8003d92:	4a88      	ldr	r2, [pc, #544]	; (8003fb4 <__ieee754_rem_pio2+0x3c0>)
 8003d94:	4b88      	ldr	r3, [pc, #544]	; (8003fb8 <__ieee754_rem_pio2+0x3c4>)
 8003d96:	0004      	movs	r4, r0
 8003d98:	000d      	movs	r5, r1
 8003d9a:	f7fc fe3f 	bl	8000a1c <__aeabi_dmul>
 8003d9e:	2200      	movs	r2, #0
 8003da0:	4b86      	ldr	r3, [pc, #536]	; (8003fbc <__ieee754_rem_pio2+0x3c8>)
 8003da2:	f7fd fe2f 	bl	8001a04 <__aeabi_dadd>
 8003da6:	f7fd fc39 	bl	800161c <__aeabi_d2iz>
 8003daa:	4680      	mov	r8, r0
 8003dac:	f7fd fc6c 	bl	8001688 <__aeabi_i2d>
 8003db0:	4a75      	ldr	r2, [pc, #468]	; (8003f88 <__ieee754_rem_pio2+0x394>)
 8003db2:	4b76      	ldr	r3, [pc, #472]	; (8003f8c <__ieee754_rem_pio2+0x398>)
 8003db4:	9004      	str	r0, [sp, #16]
 8003db6:	9105      	str	r1, [sp, #20]
 8003db8:	f7fc fe30 	bl	8000a1c <__aeabi_dmul>
 8003dbc:	0002      	movs	r2, r0
 8003dbe:	000b      	movs	r3, r1
 8003dc0:	0020      	movs	r0, r4
 8003dc2:	0029      	movs	r1, r5
 8003dc4:	f7fd f898 	bl	8000ef8 <__aeabi_dsub>
 8003dc8:	4b72      	ldr	r3, [pc, #456]	; (8003f94 <__ieee754_rem_pio2+0x3a0>)
 8003dca:	9002      	str	r0, [sp, #8]
 8003dcc:	9103      	str	r1, [sp, #12]
 8003dce:	9804      	ldr	r0, [sp, #16]
 8003dd0:	9905      	ldr	r1, [sp, #20]
 8003dd2:	4a6f      	ldr	r2, [pc, #444]	; (8003f90 <__ieee754_rem_pio2+0x39c>)
 8003dd4:	f7fc fe22 	bl	8000a1c <__aeabi_dmul>
 8003dd8:	4643      	mov	r3, r8
 8003dda:	0004      	movs	r4, r0
 8003ddc:	000d      	movs	r5, r1
 8003dde:	2b1f      	cmp	r3, #31
 8003de0:	dc36      	bgt.n	8003e50 <__ieee754_rem_pio2+0x25c>
 8003de2:	4a77      	ldr	r2, [pc, #476]	; (8003fc0 <__ieee754_rem_pio2+0x3cc>)
 8003de4:	3b01      	subs	r3, #1
 8003de6:	009b      	lsls	r3, r3, #2
 8003de8:	589b      	ldr	r3, [r3, r2]
 8003dea:	42b3      	cmp	r3, r6
 8003dec:	d030      	beq.n	8003e50 <__ieee754_rem_pio2+0x25c>
 8003dee:	9802      	ldr	r0, [sp, #8]
 8003df0:	9903      	ldr	r1, [sp, #12]
 8003df2:	0022      	movs	r2, r4
 8003df4:	002b      	movs	r3, r5
 8003df6:	f7fd f87f 	bl	8000ef8 <__aeabi_dsub>
 8003dfa:	4682      	mov	sl, r0
 8003dfc:	468b      	mov	fp, r1
 8003dfe:	4652      	mov	r2, sl
 8003e00:	465b      	mov	r3, fp
 8003e02:	603a      	str	r2, [r7, #0]
 8003e04:	607b      	str	r3, [r7, #4]
 8003e06:	9802      	ldr	r0, [sp, #8]
 8003e08:	9903      	ldr	r1, [sp, #12]
 8003e0a:	4652      	mov	r2, sl
 8003e0c:	465b      	mov	r3, fp
 8003e0e:	f7fd f873 	bl	8000ef8 <__aeabi_dsub>
 8003e12:	0022      	movs	r2, r4
 8003e14:	002b      	movs	r3, r5
 8003e16:	f7fd f86f 	bl	8000ef8 <__aeabi_dsub>
 8003e1a:	0003      	movs	r3, r0
 8003e1c:	0008      	movs	r0, r1
 8003e1e:	001a      	movs	r2, r3
 8003e20:	0019      	movs	r1, r3
 8003e22:	0003      	movs	r3, r0
 8003e24:	60ba      	str	r2, [r7, #8]
 8003e26:	60fb      	str	r3, [r7, #12]
 8003e28:	464b      	mov	r3, r9
 8003e2a:	2b00      	cmp	r3, #0
 8003e2c:	db00      	blt.n	8003e30 <__ieee754_rem_pio2+0x23c>
 8003e2e:	e714      	b.n	8003c5a <__ieee754_rem_pio2+0x66>
 8003e30:	2380      	movs	r3, #128	; 0x80
 8003e32:	2480      	movs	r4, #128	; 0x80
 8003e34:	061b      	lsls	r3, r3, #24
 8003e36:	469c      	mov	ip, r3
 8003e38:	4643      	mov	r3, r8
 8003e3a:	4655      	mov	r5, sl
 8003e3c:	0624      	lsls	r4, r4, #24
 8003e3e:	445c      	add	r4, fp
 8003e40:	4460      	add	r0, ip
 8003e42:	425b      	negs	r3, r3
 8003e44:	4698      	mov	r8, r3
 8003e46:	603d      	str	r5, [r7, #0]
 8003e48:	607c      	str	r4, [r7, #4]
 8003e4a:	60b9      	str	r1, [r7, #8]
 8003e4c:	60f8      	str	r0, [r7, #12]
 8003e4e:	e704      	b.n	8003c5a <__ieee754_rem_pio2+0x66>
 8003e50:	002b      	movs	r3, r5
 8003e52:	9802      	ldr	r0, [sp, #8]
 8003e54:	9903      	ldr	r1, [sp, #12]
 8003e56:	0022      	movs	r2, r4
 8003e58:	f7fd f84e 	bl	8000ef8 <__aeabi_dsub>
 8003e5c:	004b      	lsls	r3, r1, #1
 8003e5e:	1536      	asrs	r6, r6, #20
 8003e60:	0d5b      	lsrs	r3, r3, #21
 8003e62:	4682      	mov	sl, r0
 8003e64:	468b      	mov	fp, r1
 8003e66:	1af3      	subs	r3, r6, r3
 8003e68:	2b10      	cmp	r3, #16
 8003e6a:	ddc8      	ble.n	8003dfe <__ieee754_rem_pio2+0x20a>
 8003e6c:	9804      	ldr	r0, [sp, #16]
 8003e6e:	9905      	ldr	r1, [sp, #20]
 8003e70:	22d3      	movs	r2, #211	; 0xd3
 8003e72:	4b48      	ldr	r3, [pc, #288]	; (8003f94 <__ieee754_rem_pio2+0x3a0>)
 8003e74:	0552      	lsls	r2, r2, #21
 8003e76:	f7fc fdd1 	bl	8000a1c <__aeabi_dmul>
 8003e7a:	0004      	movs	r4, r0
 8003e7c:	000d      	movs	r5, r1
 8003e7e:	0002      	movs	r2, r0
 8003e80:	000b      	movs	r3, r1
 8003e82:	9802      	ldr	r0, [sp, #8]
 8003e84:	9903      	ldr	r1, [sp, #12]
 8003e86:	f7fd f837 	bl	8000ef8 <__aeabi_dsub>
 8003e8a:	0002      	movs	r2, r0
 8003e8c:	000b      	movs	r3, r1
 8003e8e:	9802      	ldr	r0, [sp, #8]
 8003e90:	9903      	ldr	r1, [sp, #12]
 8003e92:	9206      	str	r2, [sp, #24]
 8003e94:	9307      	str	r3, [sp, #28]
 8003e96:	f7fd f82f 	bl	8000ef8 <__aeabi_dsub>
 8003e9a:	0022      	movs	r2, r4
 8003e9c:	002b      	movs	r3, r5
 8003e9e:	f7fd f82b 	bl	8000ef8 <__aeabi_dsub>
 8003ea2:	0004      	movs	r4, r0
 8003ea4:	000d      	movs	r5, r1
 8003ea6:	9804      	ldr	r0, [sp, #16]
 8003ea8:	9905      	ldr	r1, [sp, #20]
 8003eaa:	4a40      	ldr	r2, [pc, #256]	; (8003fac <__ieee754_rem_pio2+0x3b8>)
 8003eac:	4b40      	ldr	r3, [pc, #256]	; (8003fb0 <__ieee754_rem_pio2+0x3bc>)
 8003eae:	f7fc fdb5 	bl	8000a1c <__aeabi_dmul>
 8003eb2:	0022      	movs	r2, r4
 8003eb4:	002b      	movs	r3, r5
 8003eb6:	f7fd f81f 	bl	8000ef8 <__aeabi_dsub>
 8003eba:	000b      	movs	r3, r1
 8003ebc:	0002      	movs	r2, r0
 8003ebe:	0004      	movs	r4, r0
 8003ec0:	000d      	movs	r5, r1
 8003ec2:	9806      	ldr	r0, [sp, #24]
 8003ec4:	9907      	ldr	r1, [sp, #28]
 8003ec6:	f7fd f817 	bl	8000ef8 <__aeabi_dsub>
 8003eca:	004b      	lsls	r3, r1, #1
 8003ecc:	0d5b      	lsrs	r3, r3, #21
 8003ece:	4682      	mov	sl, r0
 8003ed0:	468b      	mov	fp, r1
 8003ed2:	1af6      	subs	r6, r6, r3
 8003ed4:	2e31      	cmp	r6, #49	; 0x31
 8003ed6:	dc0a      	bgt.n	8003eee <__ieee754_rem_pio2+0x2fa>
 8003ed8:	0002      	movs	r2, r0
 8003eda:	000b      	movs	r3, r1
 8003edc:	603a      	str	r2, [r7, #0]
 8003ede:	607b      	str	r3, [r7, #4]
 8003ee0:	9a06      	ldr	r2, [sp, #24]
 8003ee2:	9b07      	ldr	r3, [sp, #28]
 8003ee4:	9202      	str	r2, [sp, #8]
 8003ee6:	9303      	str	r3, [sp, #12]
 8003ee8:	e78d      	b.n	8003e06 <__ieee754_rem_pio2+0x212>
 8003eea:	2303      	movs	r3, #3
 8003eec:	e6fd      	b.n	8003cea <__ieee754_rem_pio2+0xf6>
 8003eee:	22b8      	movs	r2, #184	; 0xb8
 8003ef0:	9804      	ldr	r0, [sp, #16]
 8003ef2:	9905      	ldr	r1, [sp, #20]
 8003ef4:	4b2e      	ldr	r3, [pc, #184]	; (8003fb0 <__ieee754_rem_pio2+0x3bc>)
 8003ef6:	0592      	lsls	r2, r2, #22
 8003ef8:	f7fc fd90 	bl	8000a1c <__aeabi_dmul>
 8003efc:	0004      	movs	r4, r0
 8003efe:	000d      	movs	r5, r1
 8003f00:	0002      	movs	r2, r0
 8003f02:	000b      	movs	r3, r1
 8003f04:	9806      	ldr	r0, [sp, #24]
 8003f06:	9907      	ldr	r1, [sp, #28]
 8003f08:	f7fc fff6 	bl	8000ef8 <__aeabi_dsub>
 8003f0c:	0002      	movs	r2, r0
 8003f0e:	000b      	movs	r3, r1
 8003f10:	9806      	ldr	r0, [sp, #24]
 8003f12:	9907      	ldr	r1, [sp, #28]
 8003f14:	9202      	str	r2, [sp, #8]
 8003f16:	9303      	str	r3, [sp, #12]
 8003f18:	f7fc ffee 	bl	8000ef8 <__aeabi_dsub>
 8003f1c:	0022      	movs	r2, r4
 8003f1e:	002b      	movs	r3, r5
 8003f20:	f7fc ffea 	bl	8000ef8 <__aeabi_dsub>
 8003f24:	0004      	movs	r4, r0
 8003f26:	000d      	movs	r5, r1
 8003f28:	9804      	ldr	r0, [sp, #16]
 8003f2a:	9905      	ldr	r1, [sp, #20]
 8003f2c:	4a25      	ldr	r2, [pc, #148]	; (8003fc4 <__ieee754_rem_pio2+0x3d0>)
 8003f2e:	4b26      	ldr	r3, [pc, #152]	; (8003fc8 <__ieee754_rem_pio2+0x3d4>)
 8003f30:	f7fc fd74 	bl	8000a1c <__aeabi_dmul>
 8003f34:	0022      	movs	r2, r4
 8003f36:	002b      	movs	r3, r5
 8003f38:	f7fc ffde 	bl	8000ef8 <__aeabi_dsub>
 8003f3c:	0004      	movs	r4, r0
 8003f3e:	000d      	movs	r5, r1
 8003f40:	e755      	b.n	8003dee <__ieee754_rem_pio2+0x1fa>
 8003f42:	4b12      	ldr	r3, [pc, #72]	; (8003f8c <__ieee754_rem_pio2+0x398>)
 8003f44:	f7fd fd5e 	bl	8001a04 <__aeabi_dadd>
 8003f48:	4b10      	ldr	r3, [pc, #64]	; (8003f8c <__ieee754_rem_pio2+0x398>)
 8003f4a:	0004      	movs	r4, r0
 8003f4c:	000d      	movs	r5, r1
 8003f4e:	429e      	cmp	r6, r3
 8003f50:	d03c      	beq.n	8003fcc <__ieee754_rem_pio2+0x3d8>
 8003f52:	4a0f      	ldr	r2, [pc, #60]	; (8003f90 <__ieee754_rem_pio2+0x39c>)
 8003f54:	4b0f      	ldr	r3, [pc, #60]	; (8003f94 <__ieee754_rem_pio2+0x3a0>)
 8003f56:	f7fd fd55 	bl	8001a04 <__aeabi_dadd>
 8003f5a:	0002      	movs	r2, r0
 8003f5c:	000b      	movs	r3, r1
 8003f5e:	0020      	movs	r0, r4
 8003f60:	603a      	str	r2, [r7, #0]
 8003f62:	607b      	str	r3, [r7, #4]
 8003f64:	0029      	movs	r1, r5
 8003f66:	f7fc ffc7 	bl	8000ef8 <__aeabi_dsub>
 8003f6a:	4a09      	ldr	r2, [pc, #36]	; (8003f90 <__ieee754_rem_pio2+0x39c>)
 8003f6c:	4b09      	ldr	r3, [pc, #36]	; (8003f94 <__ieee754_rem_pio2+0x3a0>)
 8003f6e:	f7fd fd49 	bl	8001a04 <__aeabi_dadd>
 8003f72:	2301      	movs	r3, #1
 8003f74:	425b      	negs	r3, r3
 8003f76:	4698      	mov	r8, r3
 8003f78:	60b8      	str	r0, [r7, #8]
 8003f7a:	60f9      	str	r1, [r7, #12]
 8003f7c:	e66d      	b.n	8003c5a <__ieee754_rem_pio2+0x66>
 8003f7e:	46c0      	nop			; (mov r8, r8)
 8003f80:	3fe921fb 	.word	0x3fe921fb
 8003f84:	4002d97b 	.word	0x4002d97b
 8003f88:	54400000 	.word	0x54400000
 8003f8c:	3ff921fb 	.word	0x3ff921fb
 8003f90:	1a626331 	.word	0x1a626331
 8003f94:	3dd0b461 	.word	0x3dd0b461
 8003f98:	413921fb 	.word	0x413921fb
 8003f9c:	7fefffff 	.word	0x7fefffff
 8003fa0:	fffffbea 	.word	0xfffffbea
 8003fa4:	41700000 	.word	0x41700000
 8003fa8:	08004ff0 	.word	0x08004ff0
 8003fac:	2e037073 	.word	0x2e037073
 8003fb0:	3ba3198a 	.word	0x3ba3198a
 8003fb4:	6dc9c883 	.word	0x6dc9c883
 8003fb8:	3fe45f30 	.word	0x3fe45f30
 8003fbc:	3fe00000 	.word	0x3fe00000
 8003fc0:	08004f70 	.word	0x08004f70
 8003fc4:	252049c1 	.word	0x252049c1
 8003fc8:	397b839a 	.word	0x397b839a
 8003fcc:	22d3      	movs	r2, #211	; 0xd3
 8003fce:	4b0a      	ldr	r3, [pc, #40]	; (8003ff8 <__ieee754_rem_pio2+0x404>)
 8003fd0:	0552      	lsls	r2, r2, #21
 8003fd2:	f7fd fd17 	bl	8001a04 <__aeabi_dadd>
 8003fd6:	4a09      	ldr	r2, [pc, #36]	; (8003ffc <__ieee754_rem_pio2+0x408>)
 8003fd8:	4b09      	ldr	r3, [pc, #36]	; (8004000 <__ieee754_rem_pio2+0x40c>)
 8003fda:	0004      	movs	r4, r0
 8003fdc:	000d      	movs	r5, r1
 8003fde:	f7fd fd11 	bl	8001a04 <__aeabi_dadd>
 8003fe2:	0002      	movs	r2, r0
 8003fe4:	000b      	movs	r3, r1
 8003fe6:	0020      	movs	r0, r4
 8003fe8:	603a      	str	r2, [r7, #0]
 8003fea:	607b      	str	r3, [r7, #4]
 8003fec:	0029      	movs	r1, r5
 8003fee:	f7fc ff83 	bl	8000ef8 <__aeabi_dsub>
 8003ff2:	4a02      	ldr	r2, [pc, #8]	; (8003ffc <__ieee754_rem_pio2+0x408>)
 8003ff4:	4b02      	ldr	r3, [pc, #8]	; (8004000 <__ieee754_rem_pio2+0x40c>)
 8003ff6:	e7ba      	b.n	8003f6e <__ieee754_rem_pio2+0x37a>
 8003ff8:	3dd0b461 	.word	0x3dd0b461
 8003ffc:	2e037073 	.word	0x2e037073
 8004000:	3ba3198a 	.word	0x3ba3198a

08004004 <__kernel_cos>:
 8004004:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004006:	4647      	mov	r7, r8
 8004008:	46ce      	mov	lr, r9
 800400a:	b580      	push	{r7, lr}
 800400c:	b087      	sub	sp, #28
 800400e:	9200      	str	r2, [sp, #0]
 8004010:	9301      	str	r3, [sp, #4]
 8004012:	23f9      	movs	r3, #249	; 0xf9
 8004014:	004f      	lsls	r7, r1, #1
 8004016:	4681      	mov	r9, r0
 8004018:	4688      	mov	r8, r1
 800401a:	087f      	lsrs	r7, r7, #1
 800401c:	059b      	lsls	r3, r3, #22
 800401e:	429f      	cmp	r7, r3
 8004020:	da63      	bge.n	80040ea <__kernel_cos+0xe6>
 8004022:	f7fd fafb 	bl	800161c <__aeabi_d2iz>
 8004026:	2800      	cmp	r0, #0
 8004028:	d100      	bne.n	800402c <__kernel_cos+0x28>
 800402a:	e0da      	b.n	80041e2 <__kernel_cos+0x1de>
 800402c:	464a      	mov	r2, r9
 800402e:	4643      	mov	r3, r8
 8004030:	4648      	mov	r0, r9
 8004032:	4641      	mov	r1, r8
 8004034:	f7fc fcf2 	bl	8000a1c <__aeabi_dmul>
 8004038:	0004      	movs	r4, r0
 800403a:	000d      	movs	r5, r1
 800403c:	4a6a      	ldr	r2, [pc, #424]	; (80041e8 <__kernel_cos+0x1e4>)
 800403e:	4b6b      	ldr	r3, [pc, #428]	; (80041ec <__kernel_cos+0x1e8>)
 8004040:	f7fc fcec 	bl	8000a1c <__aeabi_dmul>
 8004044:	4a6a      	ldr	r2, [pc, #424]	; (80041f0 <__kernel_cos+0x1ec>)
 8004046:	4b6b      	ldr	r3, [pc, #428]	; (80041f4 <__kernel_cos+0x1f0>)
 8004048:	f7fd fcdc 	bl	8001a04 <__aeabi_dadd>
 800404c:	0022      	movs	r2, r4
 800404e:	002b      	movs	r3, r5
 8004050:	f7fc fce4 	bl	8000a1c <__aeabi_dmul>
 8004054:	4a68      	ldr	r2, [pc, #416]	; (80041f8 <__kernel_cos+0x1f4>)
 8004056:	4b69      	ldr	r3, [pc, #420]	; (80041fc <__kernel_cos+0x1f8>)
 8004058:	f7fc ff4e 	bl	8000ef8 <__aeabi_dsub>
 800405c:	0022      	movs	r2, r4
 800405e:	002b      	movs	r3, r5
 8004060:	f7fc fcdc 	bl	8000a1c <__aeabi_dmul>
 8004064:	4a66      	ldr	r2, [pc, #408]	; (8004200 <__kernel_cos+0x1fc>)
 8004066:	4b67      	ldr	r3, [pc, #412]	; (8004204 <__kernel_cos+0x200>)
 8004068:	f7fd fccc 	bl	8001a04 <__aeabi_dadd>
 800406c:	0022      	movs	r2, r4
 800406e:	002b      	movs	r3, r5
 8004070:	f7fc fcd4 	bl	8000a1c <__aeabi_dmul>
 8004074:	4a64      	ldr	r2, [pc, #400]	; (8004208 <__kernel_cos+0x204>)
 8004076:	4b65      	ldr	r3, [pc, #404]	; (800420c <__kernel_cos+0x208>)
 8004078:	f7fc ff3e 	bl	8000ef8 <__aeabi_dsub>
 800407c:	0022      	movs	r2, r4
 800407e:	002b      	movs	r3, r5
 8004080:	f7fc fccc 	bl	8000a1c <__aeabi_dmul>
 8004084:	4a62      	ldr	r2, [pc, #392]	; (8004210 <__kernel_cos+0x20c>)
 8004086:	4b63      	ldr	r3, [pc, #396]	; (8004214 <__kernel_cos+0x210>)
 8004088:	f7fd fcbc 	bl	8001a04 <__aeabi_dadd>
 800408c:	0022      	movs	r2, r4
 800408e:	002b      	movs	r3, r5
 8004090:	f7fc fcc4 	bl	8000a1c <__aeabi_dmul>
 8004094:	9002      	str	r0, [sp, #8]
 8004096:	9103      	str	r1, [sp, #12]
 8004098:	2200      	movs	r2, #0
 800409a:	0020      	movs	r0, r4
 800409c:	0029      	movs	r1, r5
 800409e:	4b5e      	ldr	r3, [pc, #376]	; (8004218 <__kernel_cos+0x214>)
 80040a0:	f7fc fcbc 	bl	8000a1c <__aeabi_dmul>
 80040a4:	9a02      	ldr	r2, [sp, #8]
 80040a6:	9b03      	ldr	r3, [sp, #12]
 80040a8:	0006      	movs	r6, r0
 80040aa:	000f      	movs	r7, r1
 80040ac:	0020      	movs	r0, r4
 80040ae:	0029      	movs	r1, r5
 80040b0:	f7fc fcb4 	bl	8000a1c <__aeabi_dmul>
 80040b4:	9a00      	ldr	r2, [sp, #0]
 80040b6:	9b01      	ldr	r3, [sp, #4]
 80040b8:	0004      	movs	r4, r0
 80040ba:	000d      	movs	r5, r1
 80040bc:	4648      	mov	r0, r9
 80040be:	4641      	mov	r1, r8
 80040c0:	f7fc fcac 	bl	8000a1c <__aeabi_dmul>
 80040c4:	0002      	movs	r2, r0
 80040c6:	000b      	movs	r3, r1
 80040c8:	0020      	movs	r0, r4
 80040ca:	0029      	movs	r1, r5
 80040cc:	f7fc ff14 	bl	8000ef8 <__aeabi_dsub>
 80040d0:	0002      	movs	r2, r0
 80040d2:	000b      	movs	r3, r1
 80040d4:	0030      	movs	r0, r6
 80040d6:	0039      	movs	r1, r7
 80040d8:	f7fc ff0e 	bl	8000ef8 <__aeabi_dsub>
 80040dc:	0002      	movs	r2, r0
 80040de:	000b      	movs	r3, r1
 80040e0:	2000      	movs	r0, #0
 80040e2:	494e      	ldr	r1, [pc, #312]	; (800421c <__kernel_cos+0x218>)
 80040e4:	f7fc ff08 	bl	8000ef8 <__aeabi_dsub>
 80040e8:	e070      	b.n	80041cc <__kernel_cos+0x1c8>
 80040ea:	0002      	movs	r2, r0
 80040ec:	000b      	movs	r3, r1
 80040ee:	f7fc fc95 	bl	8000a1c <__aeabi_dmul>
 80040f2:	0004      	movs	r4, r0
 80040f4:	000d      	movs	r5, r1
 80040f6:	4a3c      	ldr	r2, [pc, #240]	; (80041e8 <__kernel_cos+0x1e4>)
 80040f8:	4b3c      	ldr	r3, [pc, #240]	; (80041ec <__kernel_cos+0x1e8>)
 80040fa:	f7fc fc8f 	bl	8000a1c <__aeabi_dmul>
 80040fe:	4a3c      	ldr	r2, [pc, #240]	; (80041f0 <__kernel_cos+0x1ec>)
 8004100:	4b3c      	ldr	r3, [pc, #240]	; (80041f4 <__kernel_cos+0x1f0>)
 8004102:	f7fd fc7f 	bl	8001a04 <__aeabi_dadd>
 8004106:	0022      	movs	r2, r4
 8004108:	002b      	movs	r3, r5
 800410a:	f7fc fc87 	bl	8000a1c <__aeabi_dmul>
 800410e:	4a3a      	ldr	r2, [pc, #232]	; (80041f8 <__kernel_cos+0x1f4>)
 8004110:	4b3a      	ldr	r3, [pc, #232]	; (80041fc <__kernel_cos+0x1f8>)
 8004112:	f7fc fef1 	bl	8000ef8 <__aeabi_dsub>
 8004116:	0022      	movs	r2, r4
 8004118:	002b      	movs	r3, r5
 800411a:	f7fc fc7f 	bl	8000a1c <__aeabi_dmul>
 800411e:	4a38      	ldr	r2, [pc, #224]	; (8004200 <__kernel_cos+0x1fc>)
 8004120:	4b38      	ldr	r3, [pc, #224]	; (8004204 <__kernel_cos+0x200>)
 8004122:	f7fd fc6f 	bl	8001a04 <__aeabi_dadd>
 8004126:	0022      	movs	r2, r4
 8004128:	002b      	movs	r3, r5
 800412a:	f7fc fc77 	bl	8000a1c <__aeabi_dmul>
 800412e:	4a36      	ldr	r2, [pc, #216]	; (8004208 <__kernel_cos+0x204>)
 8004130:	4b36      	ldr	r3, [pc, #216]	; (800420c <__kernel_cos+0x208>)
 8004132:	f7fc fee1 	bl	8000ef8 <__aeabi_dsub>
 8004136:	0022      	movs	r2, r4
 8004138:	002b      	movs	r3, r5
 800413a:	f7fc fc6f 	bl	8000a1c <__aeabi_dmul>
 800413e:	4a34      	ldr	r2, [pc, #208]	; (8004210 <__kernel_cos+0x20c>)
 8004140:	4b34      	ldr	r3, [pc, #208]	; (8004214 <__kernel_cos+0x210>)
 8004142:	f7fd fc5f 	bl	8001a04 <__aeabi_dadd>
 8004146:	002b      	movs	r3, r5
 8004148:	0022      	movs	r2, r4
 800414a:	f7fc fc67 	bl	8000a1c <__aeabi_dmul>
 800414e:	4b34      	ldr	r3, [pc, #208]	; (8004220 <__kernel_cos+0x21c>)
 8004150:	9002      	str	r0, [sp, #8]
 8004152:	9103      	str	r1, [sp, #12]
 8004154:	429f      	cmp	r7, r3
 8004156:	dd9f      	ble.n	8004098 <__kernel_cos+0x94>
 8004158:	4b32      	ldr	r3, [pc, #200]	; (8004224 <__kernel_cos+0x220>)
 800415a:	2200      	movs	r2, #0
 800415c:	429f      	cmp	r7, r3
 800415e:	dc3a      	bgt.n	80041d6 <__kernel_cos+0x1d2>
 8004160:	4931      	ldr	r1, [pc, #196]	; (8004228 <__kernel_cos+0x224>)
 8004162:	2000      	movs	r0, #0
 8004164:	187b      	adds	r3, r7, r1
 8004166:	492d      	ldr	r1, [pc, #180]	; (800421c <__kernel_cos+0x218>)
 8004168:	0016      	movs	r6, r2
 800416a:	001f      	movs	r7, r3
 800416c:	f7fc fec4 	bl	8000ef8 <__aeabi_dsub>
 8004170:	9004      	str	r0, [sp, #16]
 8004172:	9105      	str	r1, [sp, #20]
 8004174:	2200      	movs	r2, #0
 8004176:	0020      	movs	r0, r4
 8004178:	0029      	movs	r1, r5
 800417a:	4b27      	ldr	r3, [pc, #156]	; (8004218 <__kernel_cos+0x214>)
 800417c:	f7fc fc4e 	bl	8000a1c <__aeabi_dmul>
 8004180:	0032      	movs	r2, r6
 8004182:	003b      	movs	r3, r7
 8004184:	f7fc feb8 	bl	8000ef8 <__aeabi_dsub>
 8004188:	9a02      	ldr	r2, [sp, #8]
 800418a:	9b03      	ldr	r3, [sp, #12]
 800418c:	0006      	movs	r6, r0
 800418e:	000f      	movs	r7, r1
 8004190:	0020      	movs	r0, r4
 8004192:	0029      	movs	r1, r5
 8004194:	f7fc fc42 	bl	8000a1c <__aeabi_dmul>
 8004198:	9a00      	ldr	r2, [sp, #0]
 800419a:	9b01      	ldr	r3, [sp, #4]
 800419c:	0004      	movs	r4, r0
 800419e:	000d      	movs	r5, r1
 80041a0:	4648      	mov	r0, r9
 80041a2:	4641      	mov	r1, r8
 80041a4:	f7fc fc3a 	bl	8000a1c <__aeabi_dmul>
 80041a8:	0002      	movs	r2, r0
 80041aa:	000b      	movs	r3, r1
 80041ac:	0020      	movs	r0, r4
 80041ae:	0029      	movs	r1, r5
 80041b0:	f7fc fea2 	bl	8000ef8 <__aeabi_dsub>
 80041b4:	0002      	movs	r2, r0
 80041b6:	000b      	movs	r3, r1
 80041b8:	0030      	movs	r0, r6
 80041ba:	0039      	movs	r1, r7
 80041bc:	f7fc fe9c 	bl	8000ef8 <__aeabi_dsub>
 80041c0:	0002      	movs	r2, r0
 80041c2:	000b      	movs	r3, r1
 80041c4:	9804      	ldr	r0, [sp, #16]
 80041c6:	9905      	ldr	r1, [sp, #20]
 80041c8:	f7fc fe96 	bl	8000ef8 <__aeabi_dsub>
 80041cc:	b007      	add	sp, #28
 80041ce:	bcc0      	pop	{r6, r7}
 80041d0:	46b9      	mov	r9, r7
 80041d2:	46b0      	mov	r8, r6
 80041d4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80041d6:	4b15      	ldr	r3, [pc, #84]	; (800422c <__kernel_cos+0x228>)
 80041d8:	2600      	movs	r6, #0
 80041da:	9204      	str	r2, [sp, #16]
 80041dc:	9305      	str	r3, [sp, #20]
 80041de:	4f14      	ldr	r7, [pc, #80]	; (8004230 <__kernel_cos+0x22c>)
 80041e0:	e7c8      	b.n	8004174 <__kernel_cos+0x170>
 80041e2:	2000      	movs	r0, #0
 80041e4:	490d      	ldr	r1, [pc, #52]	; (800421c <__kernel_cos+0x218>)
 80041e6:	e7f1      	b.n	80041cc <__kernel_cos+0x1c8>
 80041e8:	be8838d4 	.word	0xbe8838d4
 80041ec:	bda8fae9 	.word	0xbda8fae9
 80041f0:	bdb4b1c4 	.word	0xbdb4b1c4
 80041f4:	3e21ee9e 	.word	0x3e21ee9e
 80041f8:	809c52ad 	.word	0x809c52ad
 80041fc:	3e927e4f 	.word	0x3e927e4f
 8004200:	19cb1590 	.word	0x19cb1590
 8004204:	3efa01a0 	.word	0x3efa01a0
 8004208:	16c15177 	.word	0x16c15177
 800420c:	3f56c16c 	.word	0x3f56c16c
 8004210:	5555554c 	.word	0x5555554c
 8004214:	3fa55555 	.word	0x3fa55555
 8004218:	3fe00000 	.word	0x3fe00000
 800421c:	3ff00000 	.word	0x3ff00000
 8004220:	3fd33332 	.word	0x3fd33332
 8004224:	3fe90000 	.word	0x3fe90000
 8004228:	ffe00000 	.word	0xffe00000
 800422c:	3fe70000 	.word	0x3fe70000
 8004230:	3fd20000 	.word	0x3fd20000

08004234 <__kernel_rem_pio2>:
 8004234:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004236:	46de      	mov	lr, fp
 8004238:	4657      	mov	r7, sl
 800423a:	464e      	mov	r6, r9
 800423c:	4645      	mov	r5, r8
 800423e:	b5e0      	push	{r5, r6, r7, lr}
 8004240:	4cdd      	ldr	r4, [pc, #884]	; (80045b8 <__kernel_rem_pio2+0x384>)
 8004242:	44a5      	add	sp, r4
 8004244:	910d      	str	r1, [sp, #52]	; 0x34
 8004246:	0019      	movs	r1, r3
 8004248:	0014      	movs	r4, r2
 800424a:	9aa4      	ldr	r2, [sp, #656]	; 0x290
 800424c:	930a      	str	r3, [sp, #40]	; 0x28
 800424e:	4bdb      	ldr	r3, [pc, #876]	; (80045bc <__kernel_rem_pio2+0x388>)
 8004250:	0092      	lsls	r2, r2, #2
 8004252:	58d2      	ldr	r2, [r2, r3]
 8004254:	000b      	movs	r3, r1
 8004256:	3b01      	subs	r3, #1
 8004258:	9304      	str	r3, [sp, #16]
 800425a:	0023      	movs	r3, r4
 800425c:	9006      	str	r0, [sp, #24]
 800425e:	9208      	str	r2, [sp, #32]
 8004260:	3314      	adds	r3, #20
 8004262:	da00      	bge.n	8004266 <__kernel_rem_pio2+0x32>
 8004264:	e3a1      	b.n	80049aa <__kernel_rem_pio2+0x776>
 8004266:	2118      	movs	r1, #24
 8004268:	1ee0      	subs	r0, r4, #3
 800426a:	f7fb ffd7 	bl	800021c <__divsi3>
 800426e:	0003      	movs	r3, r0
 8004270:	3301      	adds	r3, #1
 8004272:	009a      	lsls	r2, r3, #2
 8004274:	1a9b      	subs	r3, r3, r2
 8004276:	9005      	str	r0, [sp, #20]
 8004278:	00db      	lsls	r3, r3, #3
 800427a:	18e3      	adds	r3, r4, r3
 800427c:	9a05      	ldr	r2, [sp, #20]
 800427e:	9307      	str	r3, [sp, #28]
 8004280:	9b04      	ldr	r3, [sp, #16]
 8004282:	1ad4      	subs	r4, r2, r3
 8004284:	9a08      	ldr	r2, [sp, #32]
 8004286:	18d6      	adds	r6, r2, r3
 8004288:	d414      	bmi.n	80042b4 <__kernel_rem_pio2+0x80>
 800428a:	3601      	adds	r6, #1
 800428c:	9fa5      	ldr	r7, [sp, #660]	; 0x294
 800428e:	ad22      	add	r5, sp, #136	; 0x88
 8004290:	1936      	adds	r6, r6, r4
 8004292:	e007      	b.n	80042a4 <__kernel_rem_pio2+0x70>
 8004294:	00a3      	lsls	r3, r4, #2
 8004296:	58f8      	ldr	r0, [r7, r3]
 8004298:	f7fd f9f6 	bl	8001688 <__aeabi_i2d>
 800429c:	3401      	adds	r4, #1
 800429e:	c503      	stmia	r5!, {r0, r1}
 80042a0:	42b4      	cmp	r4, r6
 80042a2:	d007      	beq.n	80042b4 <__kernel_rem_pio2+0x80>
 80042a4:	2c00      	cmp	r4, #0
 80042a6:	daf5      	bge.n	8004294 <__kernel_rem_pio2+0x60>
 80042a8:	2000      	movs	r0, #0
 80042aa:	2100      	movs	r1, #0
 80042ac:	3401      	adds	r4, #1
 80042ae:	c503      	stmia	r5!, {r0, r1}
 80042b0:	42b4      	cmp	r4, r6
 80042b2:	d1f7      	bne.n	80042a4 <__kernel_rem_pio2+0x70>
 80042b4:	9b08      	ldr	r3, [sp, #32]
 80042b6:	2b00      	cmp	r3, #0
 80042b8:	da01      	bge.n	80042be <__kernel_rem_pio2+0x8a>
 80042ba:	f000 fbfe 	bl	8004aba <__kernel_rem_pio2+0x886>
 80042be:	990a      	ldr	r1, [sp, #40]	; 0x28
 80042c0:	aa22      	add	r2, sp, #136	; 0x88
 80042c2:	468c      	mov	ip, r1
 80042c4:	4693      	mov	fp, r2
 80042c6:	9a08      	ldr	r2, [sp, #32]
 80042c8:	ab72      	add	r3, sp, #456	; 0x1c8
 80042ca:	4462      	add	r2, ip
 80042cc:	9203      	str	r2, [sp, #12]
 80042ce:	9a06      	ldr	r2, [sp, #24]
 80042d0:	4699      	mov	r9, r3
 80042d2:	4690      	mov	r8, r2
 80042d4:	9300      	str	r3, [sp, #0]
 80042d6:	9b04      	ldr	r3, [sp, #16]
 80042d8:	469a      	mov	sl, r3
 80042da:	00db      	lsls	r3, r3, #3
 80042dc:	449b      	add	fp, r3
 80042de:	3308      	adds	r3, #8
 80042e0:	4498      	add	r8, r3
 80042e2:	9b04      	ldr	r3, [sp, #16]
 80042e4:	2400      	movs	r4, #0
 80042e6:	2500      	movs	r5, #0
 80042e8:	2b00      	cmp	r3, #0
 80042ea:	db13      	blt.n	8004314 <__kernel_rem_pio2+0xe0>
 80042ec:	465f      	mov	r7, fp
 80042ee:	2400      	movs	r4, #0
 80042f0:	2500      	movs	r5, #0
 80042f2:	9e06      	ldr	r6, [sp, #24]
 80042f4:	683a      	ldr	r2, [r7, #0]
 80042f6:	687b      	ldr	r3, [r7, #4]
 80042f8:	ce03      	ldmia	r6!, {r0, r1}
 80042fa:	f7fc fb8f 	bl	8000a1c <__aeabi_dmul>
 80042fe:	0002      	movs	r2, r0
 8004300:	000b      	movs	r3, r1
 8004302:	0020      	movs	r0, r4
 8004304:	0029      	movs	r1, r5
 8004306:	f7fd fb7d 	bl	8001a04 <__aeabi_dadd>
 800430a:	3f08      	subs	r7, #8
 800430c:	0004      	movs	r4, r0
 800430e:	000d      	movs	r5, r1
 8004310:	4546      	cmp	r6, r8
 8004312:	d1ef      	bne.n	80042f4 <__kernel_rem_pio2+0xc0>
 8004314:	464b      	mov	r3, r9
 8004316:	c330      	stmia	r3!, {r4, r5}
 8004318:	4699      	mov	r9, r3
 800431a:	2308      	movs	r3, #8
 800431c:	469c      	mov	ip, r3
 800431e:	3b07      	subs	r3, #7
 8004320:	44e3      	add	fp, ip
 8004322:	469c      	mov	ip, r3
 8004324:	9b03      	ldr	r3, [sp, #12]
 8004326:	44e2      	add	sl, ip
 8004328:	459a      	cmp	sl, r3
 800432a:	d1da      	bne.n	80042e2 <__kernel_rem_pio2+0xae>
 800432c:	a80e      	add	r0, sp, #56	; 0x38
 800432e:	2204      	movs	r2, #4
 8004330:	4684      	mov	ip, r0
 8004332:	4252      	negs	r2, r2
 8004334:	4462      	add	r2, ip
 8004336:	4694      	mov	ip, r2
 8004338:	9908      	ldr	r1, [sp, #32]
 800433a:	008b      	lsls	r3, r1, #2
 800433c:	449c      	add	ip, r3
 800433e:	4662      	mov	r2, ip
 8004340:	4684      	mov	ip, r0
 8004342:	3b08      	subs	r3, #8
 8004344:	4463      	add	r3, ip
 8004346:	930b      	str	r3, [sp, #44]	; 0x2c
 8004348:	9b05      	ldr	r3, [sp, #20]
 800434a:	920c      	str	r2, [sp, #48]	; 0x30
 800434c:	9aa5      	ldr	r2, [sp, #660]	; 0x294
 800434e:	0098      	lsls	r0, r3, #2
 8004350:	4694      	mov	ip, r2
 8004352:	0003      	movs	r3, r0
 8004354:	4463      	add	r3, ip
 8004356:	9305      	str	r3, [sp, #20]
 8004358:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800435a:	4688      	mov	r8, r1
 800435c:	00da      	lsls	r2, r3, #3
 800435e:	9b06      	ldr	r3, [sp, #24]
 8004360:	3b08      	subs	r3, #8
 8004362:	469b      	mov	fp, r3
 8004364:	4493      	add	fp, r2
 8004366:	46da      	mov	sl, fp
 8004368:	4643      	mov	r3, r8
 800436a:	9900      	ldr	r1, [sp, #0]
 800436c:	00da      	lsls	r2, r3, #3
 800436e:	4694      	mov	ip, r2
 8004370:	000b      	movs	r3, r1
 8004372:	4463      	add	r3, ip
 8004374:	681e      	ldr	r6, [r3, #0]
 8004376:	685f      	ldr	r7, [r3, #4]
 8004378:	4643      	mov	r3, r8
 800437a:	9209      	str	r2, [sp, #36]	; 0x24
 800437c:	2b00      	cmp	r3, #0
 800437e:	dd32      	ble.n	80043e6 <__kernel_rem_pio2+0x1b2>
 8004380:	4689      	mov	r9, r1
 8004382:	4b8f      	ldr	r3, [pc, #572]	; (80045c0 <__kernel_rem_pio2+0x38c>)
 8004384:	4443      	add	r3, r8
 8004386:	00db      	lsls	r3, r3, #3
 8004388:	4499      	add	r9, r3
 800438a:	ab0e      	add	r3, sp, #56	; 0x38
 800438c:	469b      	mov	fp, r3
 800438e:	2200      	movs	r2, #0
 8004390:	4b8c      	ldr	r3, [pc, #560]	; (80045c4 <__kernel_rem_pio2+0x390>)
 8004392:	0030      	movs	r0, r6
 8004394:	0039      	movs	r1, r7
 8004396:	f7fc fb41 	bl	8000a1c <__aeabi_dmul>
 800439a:	f7fd f93f 	bl	800161c <__aeabi_d2iz>
 800439e:	f7fd f973 	bl	8001688 <__aeabi_i2d>
 80043a2:	2200      	movs	r2, #0
 80043a4:	4b88      	ldr	r3, [pc, #544]	; (80045c8 <__kernel_rem_pio2+0x394>)
 80043a6:	0004      	movs	r4, r0
 80043a8:	000d      	movs	r5, r1
 80043aa:	f7fc fb37 	bl	8000a1c <__aeabi_dmul>
 80043ae:	0002      	movs	r2, r0
 80043b0:	000b      	movs	r3, r1
 80043b2:	0030      	movs	r0, r6
 80043b4:	0039      	movs	r1, r7
 80043b6:	f7fc fd9f 	bl	8000ef8 <__aeabi_dsub>
 80043ba:	f7fd f92f 	bl	800161c <__aeabi_d2iz>
 80043be:	465b      	mov	r3, fp
 80043c0:	c301      	stmia	r3!, {r0}
 80043c2:	469b      	mov	fp, r3
 80043c4:	464b      	mov	r3, r9
 80043c6:	0020      	movs	r0, r4
 80043c8:	681a      	ldr	r2, [r3, #0]
 80043ca:	685b      	ldr	r3, [r3, #4]
 80043cc:	0029      	movs	r1, r5
 80043ce:	f7fd fb19 	bl	8001a04 <__aeabi_dadd>
 80043d2:	2208      	movs	r2, #8
 80043d4:	4252      	negs	r2, r2
 80043d6:	4694      	mov	ip, r2
 80043d8:	464b      	mov	r3, r9
 80043da:	9a00      	ldr	r2, [sp, #0]
 80043dc:	0006      	movs	r6, r0
 80043de:	000f      	movs	r7, r1
 80043e0:	44e1      	add	r9, ip
 80043e2:	429a      	cmp	r2, r3
 80043e4:	d1d3      	bne.n	800438e <__kernel_rem_pio2+0x15a>
 80043e6:	9b07      	ldr	r3, [sp, #28]
 80043e8:	0030      	movs	r0, r6
 80043ea:	001a      	movs	r2, r3
 80043ec:	0039      	movs	r1, r7
 80043ee:	469b      	mov	fp, r3
 80043f0:	f000 fcda 	bl	8004da8 <scalbn>
 80043f4:	23ff      	movs	r3, #255	; 0xff
 80043f6:	2200      	movs	r2, #0
 80043f8:	059b      	lsls	r3, r3, #22
 80043fa:	0004      	movs	r4, r0
 80043fc:	000d      	movs	r5, r1
 80043fe:	f7fc fb0d 	bl	8000a1c <__aeabi_dmul>
 8004402:	f000 fc35 	bl	8004c70 <floor>
 8004406:	2200      	movs	r2, #0
 8004408:	4b70      	ldr	r3, [pc, #448]	; (80045cc <__kernel_rem_pio2+0x398>)
 800440a:	f7fc fb07 	bl	8000a1c <__aeabi_dmul>
 800440e:	0002      	movs	r2, r0
 8004410:	000b      	movs	r3, r1
 8004412:	0020      	movs	r0, r4
 8004414:	0029      	movs	r1, r5
 8004416:	f7fc fd6f 	bl	8000ef8 <__aeabi_dsub>
 800441a:	0004      	movs	r4, r0
 800441c:	000d      	movs	r5, r1
 800441e:	f7fd f8fd 	bl	800161c <__aeabi_d2iz>
 8004422:	4681      	mov	r9, r0
 8004424:	f7fd f930 	bl	8001688 <__aeabi_i2d>
 8004428:	0002      	movs	r2, r0
 800442a:	000b      	movs	r3, r1
 800442c:	0020      	movs	r0, r4
 800442e:	0029      	movs	r1, r5
 8004430:	f7fc fd62 	bl	8000ef8 <__aeabi_dsub>
 8004434:	465c      	mov	r4, fp
 8004436:	0006      	movs	r6, r0
 8004438:	000f      	movs	r7, r1
 800443a:	2c00      	cmp	r4, #0
 800443c:	dc00      	bgt.n	8004440 <__kernel_rem_pio2+0x20c>
 800443e:	e085      	b.n	800454c <__kernel_rem_pio2+0x318>
 8004440:	4643      	mov	r3, r8
 8004442:	1e59      	subs	r1, r3, #1
 8004444:	0089      	lsls	r1, r1, #2
 8004446:	ab0e      	add	r3, sp, #56	; 0x38
 8004448:	585b      	ldr	r3, [r3, r1]
 800444a:	2018      	movs	r0, #24
 800444c:	001a      	movs	r2, r3
 800444e:	1b00      	subs	r0, r0, r4
 8004450:	4102      	asrs	r2, r0
 8004452:	4491      	add	r9, r2
 8004454:	4082      	lsls	r2, r0
 8004456:	1a9d      	subs	r5, r3, r2
 8004458:	ab0e      	add	r3, sp, #56	; 0x38
 800445a:	505d      	str	r5, [r3, r1]
 800445c:	2317      	movs	r3, #23
 800445e:	1b1b      	subs	r3, r3, r4
 8004460:	411d      	asrs	r5, r3
 8004462:	2d00      	cmp	r5, #0
 8004464:	dd00      	ble.n	8004468 <__kernel_rem_pio2+0x234>
 8004466:	e07e      	b.n	8004566 <__kernel_rem_pio2+0x332>
 8004468:	2200      	movs	r2, #0
 800446a:	2300      	movs	r3, #0
 800446c:	0030      	movs	r0, r6
 800446e:	0039      	movs	r1, r7
 8004470:	f7fd f970 	bl	8001754 <__aeabi_dcmpeq>
 8004474:	2800      	cmp	r0, #0
 8004476:	d100      	bne.n	800447a <__kernel_rem_pio2+0x246>
 8004478:	e0ea      	b.n	8004650 <__kernel_rem_pio2+0x41c>
 800447a:	4643      	mov	r3, r8
 800447c:	1e59      	subs	r1, r3, #1
 800447e:	9b08      	ldr	r3, [sp, #32]
 8004480:	428b      	cmp	r3, r1
 8004482:	dc0f      	bgt.n	80044a4 <__kernel_rem_pio2+0x270>
 8004484:	aa0e      	add	r2, sp, #56	; 0x38
 8004486:	4694      	mov	ip, r2
 8004488:	2200      	movs	r2, #0
 800448a:	4b51      	ldr	r3, [pc, #324]	; (80045d0 <__kernel_rem_pio2+0x39c>)
 800448c:	980c      	ldr	r0, [sp, #48]	; 0x30
 800448e:	4443      	add	r3, r8
 8004490:	009b      	lsls	r3, r3, #2
 8004492:	4463      	add	r3, ip
 8004494:	681c      	ldr	r4, [r3, #0]
 8004496:	3b04      	subs	r3, #4
 8004498:	4322      	orrs	r2, r4
 800449a:	4283      	cmp	r3, r0
 800449c:	d1fa      	bne.n	8004494 <__kernel_rem_pio2+0x260>
 800449e:	2a00      	cmp	r2, #0
 80044a0:	d000      	beq.n	80044a4 <__kernel_rem_pio2+0x270>
 80044a2:	e124      	b.n	80046ee <__kernel_rem_pio2+0x4ba>
 80044a4:	9b08      	ldr	r3, [sp, #32]
 80044a6:	aa0e      	add	r2, sp, #56	; 0x38
 80044a8:	3b01      	subs	r3, #1
 80044aa:	009b      	lsls	r3, r3, #2
 80044ac:	58d3      	ldr	r3, [r2, r3]
 80044ae:	2b00      	cmp	r3, #0
 80044b0:	d000      	beq.n	80044b4 <__kernel_rem_pio2+0x280>
 80044b2:	e117      	b.n	80046e4 <__kernel_rem_pio2+0x4b0>
 80044b4:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80044b6:	3301      	adds	r3, #1
 80044b8:	6811      	ldr	r1, [r2, #0]
 80044ba:	3a04      	subs	r2, #4
 80044bc:	3301      	adds	r3, #1
 80044be:	2900      	cmp	r1, #0
 80044c0:	d0fa      	beq.n	80044b8 <__kernel_rem_pio2+0x284>
 80044c2:	2201      	movs	r2, #1
 80044c4:	4442      	add	r2, r8
 80044c6:	4693      	mov	fp, r2
 80044c8:	4443      	add	r3, r8
 80044ca:	9303      	str	r3, [sp, #12]
 80044cc:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80044ce:	aa22      	add	r2, sp, #136	; 0x88
 80044d0:	4443      	add	r3, r8
 80044d2:	4690      	mov	r8, r2
 80044d4:	9a00      	ldr	r2, [sp, #0]
 80044d6:	00db      	lsls	r3, r3, #3
 80044d8:	4694      	mov	ip, r2
 80044da:	4498      	add	r8, r3
 80044dc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80044de:	4463      	add	r3, ip
 80044e0:	4699      	mov	r9, r3
 80044e2:	465b      	mov	r3, fp
 80044e4:	9a05      	ldr	r2, [sp, #20]
 80044e6:	009b      	lsls	r3, r3, #2
 80044e8:	58d0      	ldr	r0, [r2, r3]
 80044ea:	f7fd f8cd 	bl	8001688 <__aeabi_i2d>
 80044ee:	4643      	mov	r3, r8
 80044f0:	6018      	str	r0, [r3, #0]
 80044f2:	6059      	str	r1, [r3, #4]
 80044f4:	9b04      	ldr	r3, [sp, #16]
 80044f6:	2b00      	cmp	r3, #0
 80044f8:	db25      	blt.n	8004546 <__kernel_rem_pio2+0x312>
 80044fa:	4647      	mov	r7, r8
 80044fc:	2400      	movs	r4, #0
 80044fe:	2500      	movs	r5, #0
 8004500:	9e06      	ldr	r6, [sp, #24]
 8004502:	e002      	b.n	800450a <__kernel_rem_pio2+0x2d6>
 8004504:	3608      	adds	r6, #8
 8004506:	6838      	ldr	r0, [r7, #0]
 8004508:	6879      	ldr	r1, [r7, #4]
 800450a:	6832      	ldr	r2, [r6, #0]
 800450c:	6873      	ldr	r3, [r6, #4]
 800450e:	f7fc fa85 	bl	8000a1c <__aeabi_dmul>
 8004512:	0002      	movs	r2, r0
 8004514:	000b      	movs	r3, r1
 8004516:	0020      	movs	r0, r4
 8004518:	0029      	movs	r1, r5
 800451a:	f7fd fa73 	bl	8001a04 <__aeabi_dadd>
 800451e:	3f08      	subs	r7, #8
 8004520:	0004      	movs	r4, r0
 8004522:	000d      	movs	r5, r1
 8004524:	4556      	cmp	r6, sl
 8004526:	d1ed      	bne.n	8004504 <__kernel_rem_pio2+0x2d0>
 8004528:	464b      	mov	r3, r9
 800452a:	609c      	str	r4, [r3, #8]
 800452c:	60dd      	str	r5, [r3, #12]
 800452e:	2301      	movs	r3, #1
 8004530:	469c      	mov	ip, r3
 8004532:	3307      	adds	r3, #7
 8004534:	44e3      	add	fp, ip
 8004536:	469c      	mov	ip, r3
 8004538:	9b03      	ldr	r3, [sp, #12]
 800453a:	44e0      	add	r8, ip
 800453c:	44e1      	add	r9, ip
 800453e:	459b      	cmp	fp, r3
 8004540:	ddcf      	ble.n	80044e2 <__kernel_rem_pio2+0x2ae>
 8004542:	4698      	mov	r8, r3
 8004544:	e710      	b.n	8004368 <__kernel_rem_pio2+0x134>
 8004546:	2400      	movs	r4, #0
 8004548:	2500      	movs	r5, #0
 800454a:	e7ed      	b.n	8004528 <__kernel_rem_pio2+0x2f4>
 800454c:	9b07      	ldr	r3, [sp, #28]
 800454e:	2b00      	cmp	r3, #0
 8004550:	d000      	beq.n	8004554 <__kernel_rem_pio2+0x320>
 8004552:	e0be      	b.n	80046d2 <__kernel_rem_pio2+0x49e>
 8004554:	4643      	mov	r3, r8
 8004556:	3b01      	subs	r3, #1
 8004558:	009b      	lsls	r3, r3, #2
 800455a:	aa0e      	add	r2, sp, #56	; 0x38
 800455c:	58d5      	ldr	r5, [r2, r3]
 800455e:	15ed      	asrs	r5, r5, #23
 8004560:	2d00      	cmp	r5, #0
 8004562:	dc00      	bgt.n	8004566 <__kernel_rem_pio2+0x332>
 8004564:	e780      	b.n	8004468 <__kernel_rem_pio2+0x234>
 8004566:	2301      	movs	r3, #1
 8004568:	469c      	mov	ip, r3
 800456a:	4643      	mov	r3, r8
 800456c:	44e1      	add	r9, ip
 800456e:	2b00      	cmp	r3, #0
 8004570:	dc00      	bgt.n	8004574 <__kernel_rem_pio2+0x340>
 8004572:	e230      	b.n	80049d6 <__kernel_rem_pio2+0x7a2>
 8004574:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004576:	2c00      	cmp	r4, #0
 8004578:	d000      	beq.n	800457c <__kernel_rem_pio2+0x348>
 800457a:	e0a0      	b.n	80046be <__kernel_rem_pio2+0x48a>
 800457c:	4643      	mov	r3, r8
 800457e:	2b01      	cmp	r3, #1
 8004580:	d030      	beq.n	80045e4 <__kernel_rem_pio2+0x3b0>
 8004582:	2201      	movs	r2, #1
 8004584:	4641      	mov	r1, r8
 8004586:	ab0f      	add	r3, sp, #60	; 0x3c
 8004588:	681c      	ldr	r4, [r3, #0]
 800458a:	2c00      	cmp	r4, #0
 800458c:	d100      	bne.n	8004590 <__kernel_rem_pio2+0x35c>
 800458e:	e099      	b.n	80046c4 <__kernel_rem_pio2+0x490>
 8004590:	4688      	mov	r8, r1
 8004592:	1c53      	adds	r3, r2, #1
 8004594:	2180      	movs	r1, #128	; 0x80
 8004596:	0449      	lsls	r1, r1, #17
 8004598:	0092      	lsls	r2, r2, #2
 800459a:	1b09      	subs	r1, r1, r4
 800459c:	a80e      	add	r0, sp, #56	; 0x38
 800459e:	5081      	str	r1, [r0, r2]
 80045a0:	4598      	cmp	r8, r3
 80045a2:	dd1e      	ble.n	80045e2 <__kernel_rem_pio2+0x3ae>
 80045a4:	4641      	mov	r1, r8
 80045a6:	4684      	mov	ip, r0
 80045a8:	009b      	lsls	r3, r3, #2
 80045aa:	0089      	lsls	r1, r1, #2
 80045ac:	58c2      	ldr	r2, [r0, r3]
 80045ae:	4461      	add	r1, ip
 80045b0:	4808      	ldr	r0, [pc, #32]	; (80045d4 <__kernel_rem_pio2+0x3a0>)
 80045b2:	4463      	add	r3, ip
 80045b4:	e011      	b.n	80045da <__kernel_rem_pio2+0x3a6>
 80045b6:	46c0      	nop			; (mov r8, r8)
 80045b8:	fffffd94 	.word	0xfffffd94
 80045bc:	08005138 	.word	0x08005138
 80045c0:	1fffffff 	.word	0x1fffffff
 80045c4:	3e700000 	.word	0x3e700000
 80045c8:	41700000 	.word	0x41700000
 80045cc:	40200000 	.word	0x40200000
 80045d0:	3fffffff 	.word	0x3fffffff
 80045d4:	00ffffff 	.word	0x00ffffff
 80045d8:	681a      	ldr	r2, [r3, #0]
 80045da:	1a82      	subs	r2, r0, r2
 80045dc:	c304      	stmia	r3!, {r2}
 80045de:	428b      	cmp	r3, r1
 80045e0:	d1fa      	bne.n	80045d8 <__kernel_rem_pio2+0x3a4>
 80045e2:	2401      	movs	r4, #1
 80045e4:	9b07      	ldr	r3, [sp, #28]
 80045e6:	2b00      	cmp	r3, #0
 80045e8:	dd0e      	ble.n	8004608 <__kernel_rem_pio2+0x3d4>
 80045ea:	2b01      	cmp	r3, #1
 80045ec:	d100      	bne.n	80045f0 <__kernel_rem_pio2+0x3bc>
 80045ee:	e1d1      	b.n	8004994 <__kernel_rem_pio2+0x760>
 80045f0:	2b02      	cmp	r3, #2
 80045f2:	d109      	bne.n	8004608 <__kernel_rem_pio2+0x3d4>
 80045f4:	4643      	mov	r3, r8
 80045f6:	1e5a      	subs	r2, r3, #1
 80045f8:	0092      	lsls	r2, r2, #2
 80045fa:	ab0e      	add	r3, sp, #56	; 0x38
 80045fc:	589b      	ldr	r3, [r3, r2]
 80045fe:	a90e      	add	r1, sp, #56	; 0x38
 8004600:	9303      	str	r3, [sp, #12]
 8004602:	029b      	lsls	r3, r3, #10
 8004604:	0a9b      	lsrs	r3, r3, #10
 8004606:	508b      	str	r3, [r1, r2]
 8004608:	2d02      	cmp	r5, #2
 800460a:	d000      	beq.n	800460e <__kernel_rem_pio2+0x3da>
 800460c:	e72c      	b.n	8004468 <__kernel_rem_pio2+0x234>
 800460e:	0032      	movs	r2, r6
 8004610:	003b      	movs	r3, r7
 8004612:	2000      	movs	r0, #0
 8004614:	4993      	ldr	r1, [pc, #588]	; (8004864 <__kernel_rem_pio2+0x630>)
 8004616:	f7fc fc6f 	bl	8000ef8 <__aeabi_dsub>
 800461a:	0006      	movs	r6, r0
 800461c:	000f      	movs	r7, r1
 800461e:	2c00      	cmp	r4, #0
 8004620:	d100      	bne.n	8004624 <__kernel_rem_pio2+0x3f0>
 8004622:	e721      	b.n	8004468 <__kernel_rem_pio2+0x234>
 8004624:	9a07      	ldr	r2, [sp, #28]
 8004626:	2000      	movs	r0, #0
 8004628:	498e      	ldr	r1, [pc, #568]	; (8004864 <__kernel_rem_pio2+0x630>)
 800462a:	f000 fbbd 	bl	8004da8 <scalbn>
 800462e:	0002      	movs	r2, r0
 8004630:	000b      	movs	r3, r1
 8004632:	0030      	movs	r0, r6
 8004634:	0039      	movs	r1, r7
 8004636:	f7fc fc5f 	bl	8000ef8 <__aeabi_dsub>
 800463a:	0006      	movs	r6, r0
 800463c:	000f      	movs	r7, r1
 800463e:	2200      	movs	r2, #0
 8004640:	2300      	movs	r3, #0
 8004642:	0030      	movs	r0, r6
 8004644:	0039      	movs	r1, r7
 8004646:	f7fd f885 	bl	8001754 <__aeabi_dcmpeq>
 800464a:	2800      	cmp	r0, #0
 800464c:	d000      	beq.n	8004650 <__kernel_rem_pio2+0x41c>
 800464e:	e714      	b.n	800447a <__kernel_rem_pio2+0x246>
 8004650:	464b      	mov	r3, r9
 8004652:	9306      	str	r3, [sp, #24]
 8004654:	9b07      	ldr	r3, [sp, #28]
 8004656:	0030      	movs	r0, r6
 8004658:	425a      	negs	r2, r3
 800465a:	0039      	movs	r1, r7
 800465c:	9504      	str	r5, [sp, #16]
 800465e:	f000 fba3 	bl	8004da8 <scalbn>
 8004662:	2200      	movs	r2, #0
 8004664:	4b80      	ldr	r3, [pc, #512]	; (8004868 <__kernel_rem_pio2+0x634>)
 8004666:	0004      	movs	r4, r0
 8004668:	000d      	movs	r5, r1
 800466a:	f7fd f897 	bl	800179c <__aeabi_dcmpge>
 800466e:	2800      	cmp	r0, #0
 8004670:	d100      	bne.n	8004674 <__kernel_rem_pio2+0x440>
 8004672:	e1ef      	b.n	8004a54 <__kernel_rem_pio2+0x820>
 8004674:	4b7d      	ldr	r3, [pc, #500]	; (800486c <__kernel_rem_pio2+0x638>)
 8004676:	2200      	movs	r2, #0
 8004678:	0020      	movs	r0, r4
 800467a:	0029      	movs	r1, r5
 800467c:	f7fc f9ce 	bl	8000a1c <__aeabi_dmul>
 8004680:	f7fc ffcc 	bl	800161c <__aeabi_d2iz>
 8004684:	4642      	mov	r2, r8
 8004686:	0006      	movs	r6, r0
 8004688:	0097      	lsls	r7, r2, #2
 800468a:	f7fc fffd 	bl	8001688 <__aeabi_i2d>
 800468e:	2200      	movs	r2, #0
 8004690:	4b75      	ldr	r3, [pc, #468]	; (8004868 <__kernel_rem_pio2+0x634>)
 8004692:	f7fc f9c3 	bl	8000a1c <__aeabi_dmul>
 8004696:	0002      	movs	r2, r0
 8004698:	000b      	movs	r3, r1
 800469a:	0020      	movs	r0, r4
 800469c:	0029      	movs	r1, r5
 800469e:	f7fc fc2b 	bl	8000ef8 <__aeabi_dsub>
 80046a2:	f7fc ffbb 	bl	800161c <__aeabi_d2iz>
 80046a6:	aa0e      	add	r2, sp, #56	; 0x38
 80046a8:	51d0      	str	r0, [r2, r7]
 80046aa:	4642      	mov	r2, r8
 80046ac:	9b07      	ldr	r3, [sp, #28]
 80046ae:	3201      	adds	r2, #1
 80046b0:	3318      	adds	r3, #24
 80046b2:	9203      	str	r2, [sp, #12]
 80046b4:	9307      	str	r3, [sp, #28]
 80046b6:	0093      	lsls	r3, r2, #2
 80046b8:	aa0e      	add	r2, sp, #56	; 0x38
 80046ba:	50d6      	str	r6, [r2, r3]
 80046bc:	e032      	b.n	8004724 <__kernel_rem_pio2+0x4f0>
 80046be:	2301      	movs	r3, #1
 80046c0:	2200      	movs	r2, #0
 80046c2:	e767      	b.n	8004594 <__kernel_rem_pio2+0x360>
 80046c4:	3201      	adds	r2, #1
 80046c6:	3304      	adds	r3, #4
 80046c8:	428a      	cmp	r2, r1
 80046ca:	d000      	beq.n	80046ce <__kernel_rem_pio2+0x49a>
 80046cc:	e75c      	b.n	8004588 <__kernel_rem_pio2+0x354>
 80046ce:	4688      	mov	r8, r1
 80046d0:	e788      	b.n	80045e4 <__kernel_rem_pio2+0x3b0>
 80046d2:	2200      	movs	r2, #0
 80046d4:	4b66      	ldr	r3, [pc, #408]	; (8004870 <__kernel_rem_pio2+0x63c>)
 80046d6:	f7fd f861 	bl	800179c <__aeabi_dcmpge>
 80046da:	2800      	cmp	r0, #0
 80046dc:	d000      	beq.n	80046e0 <__kernel_rem_pio2+0x4ac>
 80046de:	e169      	b.n	80049b4 <__kernel_rem_pio2+0x780>
 80046e0:	2500      	movs	r5, #0
 80046e2:	e6c1      	b.n	8004468 <__kernel_rem_pio2+0x234>
 80046e4:	2301      	movs	r3, #1
 80046e6:	4443      	add	r3, r8
 80046e8:	469b      	mov	fp, r3
 80046ea:	9303      	str	r3, [sp, #12]
 80046ec:	e6ee      	b.n	80044cc <__kernel_rem_pio2+0x298>
 80046ee:	464b      	mov	r3, r9
 80046f0:	000a      	movs	r2, r1
 80046f2:	9306      	str	r3, [sp, #24]
 80046f4:	9b07      	ldr	r3, [sp, #28]
 80046f6:	9103      	str	r1, [sp, #12]
 80046f8:	3b18      	subs	r3, #24
 80046fa:	0019      	movs	r1, r3
 80046fc:	9307      	str	r3, [sp, #28]
 80046fe:	a80e      	add	r0, sp, #56	; 0x38
 8004700:	0093      	lsls	r3, r2, #2
 8004702:	58c3      	ldr	r3, [r0, r3]
 8004704:	9504      	str	r5, [sp, #16]
 8004706:	2b00      	cmp	r3, #0
 8004708:	d10c      	bne.n	8004724 <__kernel_rem_pio2+0x4f0>
 800470a:	4684      	mov	ip, r0
 800470c:	4b59      	ldr	r3, [pc, #356]	; (8004874 <__kernel_rem_pio2+0x640>)
 800470e:	4443      	add	r3, r8
 8004710:	009b      	lsls	r3, r3, #2
 8004712:	4463      	add	r3, ip
 8004714:	6818      	ldr	r0, [r3, #0]
 8004716:	3b04      	subs	r3, #4
 8004718:	3a01      	subs	r2, #1
 800471a:	3918      	subs	r1, #24
 800471c:	2800      	cmp	r0, #0
 800471e:	d0f9      	beq.n	8004714 <__kernel_rem_pio2+0x4e0>
 8004720:	9203      	str	r2, [sp, #12]
 8004722:	9107      	str	r1, [sp, #28]
 8004724:	2000      	movs	r0, #0
 8004726:	9a07      	ldr	r2, [sp, #28]
 8004728:	494e      	ldr	r1, [pc, #312]	; (8004864 <__kernel_rem_pio2+0x630>)
 800472a:	f000 fb3d 	bl	8004da8 <scalbn>
 800472e:	9b03      	ldr	r3, [sp, #12]
 8004730:	0004      	movs	r4, r0
 8004732:	000d      	movs	r5, r1
 8004734:	2b00      	cmp	r3, #0
 8004736:	da00      	bge.n	800473a <__kernel_rem_pio2+0x506>
 8004738:	e1c2      	b.n	8004ac0 <__kernel_rem_pio2+0x88c>
 800473a:	aa0e      	add	r2, sp, #56	; 0x38
 800473c:	4694      	mov	ip, r2
 800473e:	9a00      	ldr	r2, [sp, #0]
 8004740:	009e      	lsls	r6, r3, #2
 8004742:	00db      	lsls	r3, r3, #3
 8004744:	0011      	movs	r1, r2
 8004746:	4466      	add	r6, ip
 8004748:	469c      	mov	ip, r3
 800474a:	4461      	add	r1, ip
 800474c:	000f      	movs	r7, r1
 800474e:	468b      	mov	fp, r1
 8004750:	4690      	mov	r8, r2
 8004752:	9305      	str	r3, [sp, #20]
 8004754:	6830      	ldr	r0, [r6, #0]
 8004756:	f7fc ff97 	bl	8001688 <__aeabi_i2d>
 800475a:	0022      	movs	r2, r4
 800475c:	002b      	movs	r3, r5
 800475e:	f7fc f95d 	bl	8000a1c <__aeabi_dmul>
 8004762:	4b42      	ldr	r3, [pc, #264]	; (800486c <__kernel_rem_pio2+0x638>)
 8004764:	6038      	str	r0, [r7, #0]
 8004766:	6079      	str	r1, [r7, #4]
 8004768:	2200      	movs	r2, #0
 800476a:	0020      	movs	r0, r4
 800476c:	0029      	movs	r1, r5
 800476e:	f7fc f955 	bl	8000a1c <__aeabi_dmul>
 8004772:	3e04      	subs	r6, #4
 8004774:	003b      	movs	r3, r7
 8004776:	0004      	movs	r4, r0
 8004778:	000d      	movs	r5, r1
 800477a:	3f08      	subs	r7, #8
 800477c:	4598      	cmp	r8, r3
 800477e:	d1e9      	bne.n	8004754 <__kernel_rem_pio2+0x520>
 8004780:	2300      	movs	r3, #0
 8004782:	4699      	mov	r9, r3
 8004784:	ab4a      	add	r3, sp, #296	; 0x128
 8004786:	9300      	str	r3, [sp, #0]
 8004788:	9b08      	ldr	r3, [sp, #32]
 800478a:	469a      	mov	sl, r3
 800478c:	4653      	mov	r3, sl
 800478e:	2400      	movs	r4, #0
 8004790:	2500      	movs	r5, #0
 8004792:	2b00      	cmp	r3, #0
 8004794:	db21      	blt.n	80047da <__kernel_rem_pio2+0x5a6>
 8004796:	2080      	movs	r0, #128	; 0x80
 8004798:	4b37      	ldr	r3, [pc, #220]	; (8004878 <__kernel_rem_pio2+0x644>)
 800479a:	465f      	mov	r7, fp
 800479c:	4698      	mov	r8, r3
 800479e:	2400      	movs	r4, #0
 80047a0:	2500      	movs	r5, #0
 80047a2:	2600      	movs	r6, #0
 80047a4:	4935      	ldr	r1, [pc, #212]	; (800487c <__kernel_rem_pio2+0x648>)
 80047a6:	05c0      	lsls	r0, r0, #23
 80047a8:	e008      	b.n	80047bc <__kernel_rem_pio2+0x588>
 80047aa:	2308      	movs	r3, #8
 80047ac:	469c      	mov	ip, r3
 80047ae:	3708      	adds	r7, #8
 80047b0:	44e0      	add	r8, ip
 80047b2:	45b1      	cmp	r9, r6
 80047b4:	db11      	blt.n	80047da <__kernel_rem_pio2+0x5a6>
 80047b6:	4643      	mov	r3, r8
 80047b8:	6818      	ldr	r0, [r3, #0]
 80047ba:	6859      	ldr	r1, [r3, #4]
 80047bc:	683a      	ldr	r2, [r7, #0]
 80047be:	687b      	ldr	r3, [r7, #4]
 80047c0:	f7fc f92c 	bl	8000a1c <__aeabi_dmul>
 80047c4:	0002      	movs	r2, r0
 80047c6:	000b      	movs	r3, r1
 80047c8:	0020      	movs	r0, r4
 80047ca:	0029      	movs	r1, r5
 80047cc:	f7fd f91a 	bl	8001a04 <__aeabi_dadd>
 80047d0:	3601      	adds	r6, #1
 80047d2:	0004      	movs	r4, r0
 80047d4:	000d      	movs	r5, r1
 80047d6:	45b2      	cmp	sl, r6
 80047d8:	dae7      	bge.n	80047aa <__kernel_rem_pio2+0x576>
 80047da:	9a00      	ldr	r2, [sp, #0]
 80047dc:	464b      	mov	r3, r9
 80047de:	4694      	mov	ip, r2
 80047e0:	2208      	movs	r2, #8
 80047e2:	00db      	lsls	r3, r3, #3
 80047e4:	4463      	add	r3, ip
 80047e6:	4252      	negs	r2, r2
 80047e8:	4694      	mov	ip, r2
 80047ea:	601c      	str	r4, [r3, #0]
 80047ec:	605d      	str	r5, [r3, #4]
 80047ee:	464b      	mov	r3, r9
 80047f0:	9a03      	ldr	r2, [sp, #12]
 80047f2:	3301      	adds	r3, #1
 80047f4:	44e3      	add	fp, ip
 80047f6:	4591      	cmp	r9, r2
 80047f8:	d001      	beq.n	80047fe <__kernel_rem_pio2+0x5ca>
 80047fa:	4699      	mov	r9, r3
 80047fc:	e7c6      	b.n	800478c <__kernel_rem_pio2+0x558>
 80047fe:	9b00      	ldr	r3, [sp, #0]
 8004800:	469a      	mov	sl, r3
 8004802:	9ba4      	ldr	r3, [sp, #656]	; 0x290
 8004804:	2b02      	cmp	r3, #2
 8004806:	dc3b      	bgt.n	8004880 <__kernel_rem_pio2+0x64c>
 8004808:	2b00      	cmp	r3, #0
 800480a:	dd00      	ble.n	800480e <__kernel_rem_pio2+0x5da>
 800480c:	e0e5      	b.n	80049da <__kernel_rem_pio2+0x7a6>
 800480e:	d11d      	bne.n	800484c <__kernel_rem_pio2+0x618>
 8004810:	9b05      	ldr	r3, [sp, #20]
 8004812:	2500      	movs	r5, #0
 8004814:	4453      	add	r3, sl
 8004816:	001e      	movs	r6, r3
 8004818:	2400      	movs	r4, #0
 800481a:	4657      	mov	r7, sl
 800481c:	6832      	ldr	r2, [r6, #0]
 800481e:	6873      	ldr	r3, [r6, #4]
 8004820:	0028      	movs	r0, r5
 8004822:	0021      	movs	r1, r4
 8004824:	f7fd f8ee 	bl	8001a04 <__aeabi_dadd>
 8004828:	0033      	movs	r3, r6
 800482a:	0005      	movs	r5, r0
 800482c:	000c      	movs	r4, r1
 800482e:	3e08      	subs	r6, #8
 8004830:	429f      	cmp	r7, r3
 8004832:	d1f3      	bne.n	800481c <__kernel_rem_pio2+0x5e8>
 8004834:	9b04      	ldr	r3, [sp, #16]
 8004836:	2b00      	cmp	r3, #0
 8004838:	d003      	beq.n	8004842 <__kernel_rem_pio2+0x60e>
 800483a:	2380      	movs	r3, #128	; 0x80
 800483c:	061b      	lsls	r3, r3, #24
 800483e:	469c      	mov	ip, r3
 8004840:	4464      	add	r4, ip
 8004842:	002a      	movs	r2, r5
 8004844:	0023      	movs	r3, r4
 8004846:	990d      	ldr	r1, [sp, #52]	; 0x34
 8004848:	600a      	str	r2, [r1, #0]
 800484a:	604b      	str	r3, [r1, #4]
 800484c:	2007      	movs	r0, #7
 800484e:	9b06      	ldr	r3, [sp, #24]
 8004850:	4018      	ands	r0, r3
 8004852:	239b      	movs	r3, #155	; 0x9b
 8004854:	009b      	lsls	r3, r3, #2
 8004856:	449d      	add	sp, r3
 8004858:	bcf0      	pop	{r4, r5, r6, r7}
 800485a:	46bb      	mov	fp, r7
 800485c:	46b2      	mov	sl, r6
 800485e:	46a9      	mov	r9, r5
 8004860:	46a0      	mov	r8, r4
 8004862:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8004864:	3ff00000 	.word	0x3ff00000
 8004868:	41700000 	.word	0x41700000
 800486c:	3e700000 	.word	0x3e700000
 8004870:	3fe00000 	.word	0x3fe00000
 8004874:	3ffffffe 	.word	0x3ffffffe
 8004878:	080050f8 	.word	0x080050f8
 800487c:	3ff921fb 	.word	0x3ff921fb
 8004880:	9ba4      	ldr	r3, [sp, #656]	; 0x290
 8004882:	2b03      	cmp	r3, #3
 8004884:	d1e2      	bne.n	800484c <__kernel_rem_pio2+0x618>
 8004886:	9b03      	ldr	r3, [sp, #12]
 8004888:	2b00      	cmp	r3, #0
 800488a:	d100      	bne.n	800488e <__kernel_rem_pio2+0x65a>
 800488c:	e12e      	b.n	8004aec <__kernel_rem_pio2+0x8b8>
 800488e:	4a99      	ldr	r2, [pc, #612]	; (8004af4 <__kernel_rem_pio2+0x8c0>)
 8004890:	9b05      	ldr	r3, [sp, #20]
 8004892:	4694      	mov	ip, r2
 8004894:	4453      	add	r3, sl
 8004896:	681c      	ldr	r4, [r3, #0]
 8004898:	685d      	ldr	r5, [r3, #4]
 800489a:	9b03      	ldr	r3, [sp, #12]
 800489c:	4463      	add	r3, ip
 800489e:	469b      	mov	fp, r3
 80048a0:	00db      	lsls	r3, r3, #3
 80048a2:	4453      	add	r3, sl
 80048a4:	4698      	mov	r8, r3
 80048a6:	4643      	mov	r3, r8
 80048a8:	0020      	movs	r0, r4
 80048aa:	681e      	ldr	r6, [r3, #0]
 80048ac:	685f      	ldr	r7, [r3, #4]
 80048ae:	0029      	movs	r1, r5
 80048b0:	0032      	movs	r2, r6
 80048b2:	003b      	movs	r3, r7
 80048b4:	9400      	str	r4, [sp, #0]
 80048b6:	9501      	str	r5, [sp, #4]
 80048b8:	f7fd f8a4 	bl	8001a04 <__aeabi_dadd>
 80048bc:	0002      	movs	r2, r0
 80048be:	000b      	movs	r3, r1
 80048c0:	0004      	movs	r4, r0
 80048c2:	000d      	movs	r5, r1
 80048c4:	0030      	movs	r0, r6
 80048c6:	0039      	movs	r1, r7
 80048c8:	f7fc fb16 	bl	8000ef8 <__aeabi_dsub>
 80048cc:	9a00      	ldr	r2, [sp, #0]
 80048ce:	9b01      	ldr	r3, [sp, #4]
 80048d0:	f7fd f898 	bl	8001a04 <__aeabi_dadd>
 80048d4:	4643      	mov	r3, r8
 80048d6:	6098      	str	r0, [r3, #8]
 80048d8:	60d9      	str	r1, [r3, #12]
 80048da:	601c      	str	r4, [r3, #0]
 80048dc:	605d      	str	r5, [r3, #4]
 80048de:	2308      	movs	r3, #8
 80048e0:	425b      	negs	r3, r3
 80048e2:	46c1      	mov	r9, r8
 80048e4:	469c      	mov	ip, r3
 80048e6:	44e0      	add	r8, ip
 80048e8:	45ca      	cmp	sl, r9
 80048ea:	d1dc      	bne.n	80048a6 <__kernel_rem_pio2+0x672>
 80048ec:	9b03      	ldr	r3, [sp, #12]
 80048ee:	2b01      	cmp	r3, #1
 80048f0:	dc00      	bgt.n	80048f4 <__kernel_rem_pio2+0x6c0>
 80048f2:	e0fb      	b.n	8004aec <__kernel_rem_pio2+0x8b8>
 80048f4:	9b05      	ldr	r3, [sp, #20]
 80048f6:	46d0      	mov	r8, sl
 80048f8:	4453      	add	r3, sl
 80048fa:	681c      	ldr	r4, [r3, #0]
 80048fc:	685d      	ldr	r5, [r3, #4]
 80048fe:	465b      	mov	r3, fp
 8004900:	00db      	lsls	r3, r3, #3
 8004902:	4699      	mov	r9, r3
 8004904:	44c8      	add	r8, r9
 8004906:	4643      	mov	r3, r8
 8004908:	0020      	movs	r0, r4
 800490a:	681e      	ldr	r6, [r3, #0]
 800490c:	685f      	ldr	r7, [r3, #4]
 800490e:	0029      	movs	r1, r5
 8004910:	0032      	movs	r2, r6
 8004912:	003b      	movs	r3, r7
 8004914:	9400      	str	r4, [sp, #0]
 8004916:	9501      	str	r5, [sp, #4]
 8004918:	f7fd f874 	bl	8001a04 <__aeabi_dadd>
 800491c:	0002      	movs	r2, r0
 800491e:	000b      	movs	r3, r1
 8004920:	0004      	movs	r4, r0
 8004922:	000d      	movs	r5, r1
 8004924:	0030      	movs	r0, r6
 8004926:	0039      	movs	r1, r7
 8004928:	f7fc fae6 	bl	8000ef8 <__aeabi_dsub>
 800492c:	9a00      	ldr	r2, [sp, #0]
 800492e:	9b01      	ldr	r3, [sp, #4]
 8004930:	f7fd f868 	bl	8001a04 <__aeabi_dadd>
 8004934:	4643      	mov	r3, r8
 8004936:	6098      	str	r0, [r3, #8]
 8004938:	60d9      	str	r1, [r3, #12]
 800493a:	601c      	str	r4, [r3, #0]
 800493c:	605d      	str	r5, [r3, #4]
 800493e:	2308      	movs	r3, #8
 8004940:	425b      	negs	r3, r3
 8004942:	4646      	mov	r6, r8
 8004944:	4698      	mov	r8, r3
 8004946:	44b0      	add	r8, r6
 8004948:	45c2      	cmp	sl, r8
 800494a:	d1dc      	bne.n	8004906 <__kernel_rem_pio2+0x6d2>
 800494c:	464c      	mov	r4, r9
 800494e:	2700      	movs	r7, #0
 8004950:	2500      	movs	r5, #0
 8004952:	3408      	adds	r4, #8
 8004954:	4454      	add	r4, sl
 8004956:	0038      	movs	r0, r7
 8004958:	6822      	ldr	r2, [r4, #0]
 800495a:	6863      	ldr	r3, [r4, #4]
 800495c:	0029      	movs	r1, r5
 800495e:	f7fd f851 	bl	8001a04 <__aeabi_dadd>
 8004962:	3c08      	subs	r4, #8
 8004964:	0007      	movs	r7, r0
 8004966:	000d      	movs	r5, r1
 8004968:	42a6      	cmp	r6, r4
 800496a:	d1f4      	bne.n	8004956 <__kernel_rem_pio2+0x722>
 800496c:	9b04      	ldr	r3, [sp, #16]
 800496e:	2b00      	cmp	r3, #0
 8004970:	d17b      	bne.n	8004a6a <__kernel_rem_pio2+0x836>
 8004972:	9b4a      	ldr	r3, [sp, #296]	; 0x128
 8004974:	9c4b      	ldr	r4, [sp, #300]	; 0x12c
 8004976:	990d      	ldr	r1, [sp, #52]	; 0x34
 8004978:	003a      	movs	r2, r7
 800497a:	600b      	str	r3, [r1, #0]
 800497c:	604c      	str	r4, [r1, #4]
 800497e:	4653      	mov	r3, sl
 8004980:	68dc      	ldr	r4, [r3, #12]
 8004982:	689b      	ldr	r3, [r3, #8]
 8004984:	9300      	str	r3, [sp, #0]
 8004986:	9401      	str	r4, [sp, #4]
 8004988:	608b      	str	r3, [r1, #8]
 800498a:	60cc      	str	r4, [r1, #12]
 800498c:	002b      	movs	r3, r5
 800498e:	610a      	str	r2, [r1, #16]
 8004990:	614b      	str	r3, [r1, #20]
 8004992:	e75b      	b.n	800484c <__kernel_rem_pio2+0x618>
 8004994:	4643      	mov	r3, r8
 8004996:	1e5a      	subs	r2, r3, #1
 8004998:	0092      	lsls	r2, r2, #2
 800499a:	ab0e      	add	r3, sp, #56	; 0x38
 800499c:	589b      	ldr	r3, [r3, r2]
 800499e:	a90e      	add	r1, sp, #56	; 0x38
 80049a0:	9303      	str	r3, [sp, #12]
 80049a2:	025b      	lsls	r3, r3, #9
 80049a4:	0a5b      	lsrs	r3, r3, #9
 80049a6:	508b      	str	r3, [r1, r2]
 80049a8:	e62e      	b.n	8004608 <__kernel_rem_pio2+0x3d4>
 80049aa:	2318      	movs	r3, #24
 80049ac:	2200      	movs	r2, #0
 80049ae:	425b      	negs	r3, r3
 80049b0:	9205      	str	r2, [sp, #20]
 80049b2:	e462      	b.n	800427a <__kernel_rem_pio2+0x46>
 80049b4:	2301      	movs	r3, #1
 80049b6:	469c      	mov	ip, r3
 80049b8:	4643      	mov	r3, r8
 80049ba:	2502      	movs	r5, #2
 80049bc:	44e1      	add	r9, ip
 80049be:	2b00      	cmp	r3, #0
 80049c0:	dd00      	ble.n	80049c4 <__kernel_rem_pio2+0x790>
 80049c2:	e5d7      	b.n	8004574 <__kernel_rem_pio2+0x340>
 80049c4:	0032      	movs	r2, r6
 80049c6:	003b      	movs	r3, r7
 80049c8:	2000      	movs	r0, #0
 80049ca:	494b      	ldr	r1, [pc, #300]	; (8004af8 <__kernel_rem_pio2+0x8c4>)
 80049cc:	f7fc fa94 	bl	8000ef8 <__aeabi_dsub>
 80049d0:	0006      	movs	r6, r0
 80049d2:	000f      	movs	r7, r1
 80049d4:	e548      	b.n	8004468 <__kernel_rem_pio2+0x234>
 80049d6:	2400      	movs	r4, #0
 80049d8:	e604      	b.n	80045e4 <__kernel_rem_pio2+0x3b0>
 80049da:	9b05      	ldr	r3, [sp, #20]
 80049dc:	2500      	movs	r5, #0
 80049de:	4453      	add	r3, sl
 80049e0:	001e      	movs	r6, r3
 80049e2:	2400      	movs	r4, #0
 80049e4:	4657      	mov	r7, sl
 80049e6:	6832      	ldr	r2, [r6, #0]
 80049e8:	6873      	ldr	r3, [r6, #4]
 80049ea:	0028      	movs	r0, r5
 80049ec:	0021      	movs	r1, r4
 80049ee:	f7fd f809 	bl	8001a04 <__aeabi_dadd>
 80049f2:	0033      	movs	r3, r6
 80049f4:	0005      	movs	r5, r0
 80049f6:	000c      	movs	r4, r1
 80049f8:	3e08      	subs	r6, #8
 80049fa:	429f      	cmp	r7, r3
 80049fc:	d1f3      	bne.n	80049e6 <__kernel_rem_pio2+0x7b2>
 80049fe:	9b04      	ldr	r3, [sp, #16]
 8004a00:	2b00      	cmp	r3, #0
 8004a02:	d148      	bne.n	8004a96 <__kernel_rem_pio2+0x862>
 8004a04:	0023      	movs	r3, r4
 8004a06:	002a      	movs	r2, r5
 8004a08:	990d      	ldr	r1, [sp, #52]	; 0x34
 8004a0a:	600a      	str	r2, [r1, #0]
 8004a0c:	604b      	str	r3, [r1, #4]
 8004a0e:	984a      	ldr	r0, [sp, #296]	; 0x128
 8004a10:	994b      	ldr	r1, [sp, #300]	; 0x12c
 8004a12:	f7fc fa71 	bl	8000ef8 <__aeabi_dsub>
 8004a16:	9b03      	ldr	r3, [sp, #12]
 8004a18:	0007      	movs	r7, r0
 8004a1a:	000e      	movs	r6, r1
 8004a1c:	2b00      	cmp	r3, #0
 8004a1e:	dd13      	ble.n	8004a48 <__kernel_rem_pio2+0x814>
 8004a20:	2401      	movs	r4, #1
 8004a22:	ad4c      	add	r5, sp, #304	; 0x130
 8004a24:	0038      	movs	r0, r7
 8004a26:	cd0c      	ldmia	r5!, {r2, r3}
 8004a28:	0031      	movs	r1, r6
 8004a2a:	f7fc ffeb 	bl	8001a04 <__aeabi_dadd>
 8004a2e:	9b03      	ldr	r3, [sp, #12]
 8004a30:	3401      	adds	r4, #1
 8004a32:	0007      	movs	r7, r0
 8004a34:	000e      	movs	r6, r1
 8004a36:	42a3      	cmp	r3, r4
 8004a38:	daf4      	bge.n	8004a24 <__kernel_rem_pio2+0x7f0>
 8004a3a:	9b04      	ldr	r3, [sp, #16]
 8004a3c:	2b00      	cmp	r3, #0
 8004a3e:	d003      	beq.n	8004a48 <__kernel_rem_pio2+0x814>
 8004a40:	2380      	movs	r3, #128	; 0x80
 8004a42:	061b      	lsls	r3, r3, #24
 8004a44:	469c      	mov	ip, r3
 8004a46:	4466      	add	r6, ip
 8004a48:	003a      	movs	r2, r7
 8004a4a:	0033      	movs	r3, r6
 8004a4c:	990d      	ldr	r1, [sp, #52]	; 0x34
 8004a4e:	608a      	str	r2, [r1, #8]
 8004a50:	60cb      	str	r3, [r1, #12]
 8004a52:	e6fb      	b.n	800484c <__kernel_rem_pio2+0x618>
 8004a54:	4643      	mov	r3, r8
 8004a56:	0020      	movs	r0, r4
 8004a58:	0029      	movs	r1, r5
 8004a5a:	009e      	lsls	r6, r3, #2
 8004a5c:	f7fc fdde 	bl	800161c <__aeabi_d2iz>
 8004a60:	ab0e      	add	r3, sp, #56	; 0x38
 8004a62:	5198      	str	r0, [r3, r6]
 8004a64:	4643      	mov	r3, r8
 8004a66:	9303      	str	r3, [sp, #12]
 8004a68:	e65c      	b.n	8004724 <__kernel_rem_pio2+0x4f0>
 8004a6a:	2080      	movs	r0, #128	; 0x80
 8004a6c:	4651      	mov	r1, sl
 8004a6e:	0600      	lsls	r0, r0, #24
 8004a70:	4684      	mov	ip, r0
 8004a72:	6849      	ldr	r1, [r1, #4]
 8004a74:	980d      	ldr	r0, [sp, #52]	; 0x34
 8004a76:	4461      	add	r1, ip
 8004a78:	000b      	movs	r3, r1
 8004a7a:	9a4a      	ldr	r2, [sp, #296]	; 0x128
 8004a7c:	4664      	mov	r4, ip
 8004a7e:	6002      	str	r2, [r0, #0]
 8004a80:	6043      	str	r3, [r0, #4]
 8004a82:	4653      	mov	r3, sl
 8004a84:	68d9      	ldr	r1, [r3, #12]
 8004a86:	689a      	ldr	r2, [r3, #8]
 8004a88:	4465      	add	r5, ip
 8004a8a:	190b      	adds	r3, r1, r4
 8004a8c:	6082      	str	r2, [r0, #8]
 8004a8e:	60c3      	str	r3, [r0, #12]
 8004a90:	6107      	str	r7, [r0, #16]
 8004a92:	6145      	str	r5, [r0, #20]
 8004a94:	e6da      	b.n	800484c <__kernel_rem_pio2+0x618>
 8004a96:	2380      	movs	r3, #128	; 0x80
 8004a98:	984a      	ldr	r0, [sp, #296]	; 0x128
 8004a9a:	994b      	ldr	r1, [sp, #300]	; 0x12c
 8004a9c:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 8004a9e:	061b      	lsls	r3, r3, #24
 8004aa0:	18e3      	adds	r3, r4, r3
 8004aa2:	6053      	str	r3, [r2, #4]
 8004aa4:	6015      	str	r5, [r2, #0]
 8004aa6:	0023      	movs	r3, r4
 8004aa8:	002a      	movs	r2, r5
 8004aaa:	f7fc fa25 	bl	8000ef8 <__aeabi_dsub>
 8004aae:	9b03      	ldr	r3, [sp, #12]
 8004ab0:	0007      	movs	r7, r0
 8004ab2:	000e      	movs	r6, r1
 8004ab4:	2b00      	cmp	r3, #0
 8004ab6:	dcb3      	bgt.n	8004a20 <__kernel_rem_pio2+0x7ec>
 8004ab8:	e7c2      	b.n	8004a40 <__kernel_rem_pio2+0x80c>
 8004aba:	ab72      	add	r3, sp, #456	; 0x1c8
 8004abc:	9300      	str	r3, [sp, #0]
 8004abe:	e435      	b.n	800432c <__kernel_rem_pio2+0xf8>
 8004ac0:	9ba4      	ldr	r3, [sp, #656]	; 0x290
 8004ac2:	2b02      	cmp	r3, #2
 8004ac4:	dc06      	bgt.n	8004ad4 <__kernel_rem_pio2+0x8a0>
 8004ac6:	2b00      	cmp	r3, #0
 8004ac8:	dc0d      	bgt.n	8004ae6 <__kernel_rem_pio2+0x8b2>
 8004aca:	d000      	beq.n	8004ace <__kernel_rem_pio2+0x89a>
 8004acc:	e6be      	b.n	800484c <__kernel_rem_pio2+0x618>
 8004ace:	2500      	movs	r5, #0
 8004ad0:	2400      	movs	r4, #0
 8004ad2:	e6af      	b.n	8004834 <__kernel_rem_pio2+0x600>
 8004ad4:	9ba4      	ldr	r3, [sp, #656]	; 0x290
 8004ad6:	2b03      	cmp	r3, #3
 8004ad8:	d000      	beq.n	8004adc <__kernel_rem_pio2+0x8a8>
 8004ada:	e6b7      	b.n	800484c <__kernel_rem_pio2+0x618>
 8004adc:	ab4a      	add	r3, sp, #296	; 0x128
 8004ade:	2700      	movs	r7, #0
 8004ae0:	2500      	movs	r5, #0
 8004ae2:	469a      	mov	sl, r3
 8004ae4:	e742      	b.n	800496c <__kernel_rem_pio2+0x738>
 8004ae6:	2500      	movs	r5, #0
 8004ae8:	2400      	movs	r4, #0
 8004aea:	e788      	b.n	80049fe <__kernel_rem_pio2+0x7ca>
 8004aec:	2700      	movs	r7, #0
 8004aee:	003d      	movs	r5, r7
 8004af0:	e73c      	b.n	800496c <__kernel_rem_pio2+0x738>
 8004af2:	46c0      	nop			; (mov r8, r8)
 8004af4:	1fffffff 	.word	0x1fffffff
 8004af8:	3ff00000 	.word	0x3ff00000

08004afc <__kernel_sin>:
 8004afc:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004afe:	46ce      	mov	lr, r9
 8004b00:	4647      	mov	r7, r8
 8004b02:	b580      	push	{r7, lr}
 8004b04:	b087      	sub	sp, #28
 8004b06:	9200      	str	r2, [sp, #0]
 8004b08:	9301      	str	r3, [sp, #4]
 8004b0a:	22f9      	movs	r2, #249	; 0xf9
 8004b0c:	004b      	lsls	r3, r1, #1
 8004b0e:	4681      	mov	r9, r0
 8004b10:	4688      	mov	r8, r1
 8004b12:	085b      	lsrs	r3, r3, #1
 8004b14:	0592      	lsls	r2, r2, #22
 8004b16:	4293      	cmp	r3, r2
 8004b18:	da07      	bge.n	8004b2a <__kernel_sin+0x2e>
 8004b1a:	4648      	mov	r0, r9
 8004b1c:	4641      	mov	r1, r8
 8004b1e:	f7fc fd7d 	bl	800161c <__aeabi_d2iz>
 8004b22:	464a      	mov	r2, r9
 8004b24:	4643      	mov	r3, r8
 8004b26:	2800      	cmp	r0, #0
 8004b28:	d04a      	beq.n	8004bc0 <__kernel_sin+0xc4>
 8004b2a:	464a      	mov	r2, r9
 8004b2c:	4643      	mov	r3, r8
 8004b2e:	4648      	mov	r0, r9
 8004b30:	4641      	mov	r1, r8
 8004b32:	f7fb ff73 	bl	8000a1c <__aeabi_dmul>
 8004b36:	0004      	movs	r4, r0
 8004b38:	000d      	movs	r5, r1
 8004b3a:	0002      	movs	r2, r0
 8004b3c:	000b      	movs	r3, r1
 8004b3e:	4648      	mov	r0, r9
 8004b40:	4641      	mov	r1, r8
 8004b42:	f7fb ff6b 	bl	8000a1c <__aeabi_dmul>
 8004b46:	4a3b      	ldr	r2, [pc, #236]	; (8004c34 <__kernel_sin+0x138>)
 8004b48:	4b3b      	ldr	r3, [pc, #236]	; (8004c38 <__kernel_sin+0x13c>)
 8004b4a:	0006      	movs	r6, r0
 8004b4c:	000f      	movs	r7, r1
 8004b4e:	0020      	movs	r0, r4
 8004b50:	0029      	movs	r1, r5
 8004b52:	f7fb ff63 	bl	8000a1c <__aeabi_dmul>
 8004b56:	4a39      	ldr	r2, [pc, #228]	; (8004c3c <__kernel_sin+0x140>)
 8004b58:	4b39      	ldr	r3, [pc, #228]	; (8004c40 <__kernel_sin+0x144>)
 8004b5a:	f7fc f9cd 	bl	8000ef8 <__aeabi_dsub>
 8004b5e:	0022      	movs	r2, r4
 8004b60:	002b      	movs	r3, r5
 8004b62:	f7fb ff5b 	bl	8000a1c <__aeabi_dmul>
 8004b66:	4a37      	ldr	r2, [pc, #220]	; (8004c44 <__kernel_sin+0x148>)
 8004b68:	4b37      	ldr	r3, [pc, #220]	; (8004c48 <__kernel_sin+0x14c>)
 8004b6a:	f7fc ff4b 	bl	8001a04 <__aeabi_dadd>
 8004b6e:	0022      	movs	r2, r4
 8004b70:	002b      	movs	r3, r5
 8004b72:	f7fb ff53 	bl	8000a1c <__aeabi_dmul>
 8004b76:	4a35      	ldr	r2, [pc, #212]	; (8004c4c <__kernel_sin+0x150>)
 8004b78:	4b35      	ldr	r3, [pc, #212]	; (8004c50 <__kernel_sin+0x154>)
 8004b7a:	f7fc f9bd 	bl	8000ef8 <__aeabi_dsub>
 8004b7e:	0022      	movs	r2, r4
 8004b80:	002b      	movs	r3, r5
 8004b82:	f7fb ff4b 	bl	8000a1c <__aeabi_dmul>
 8004b86:	4b33      	ldr	r3, [pc, #204]	; (8004c54 <__kernel_sin+0x158>)
 8004b88:	4a33      	ldr	r2, [pc, #204]	; (8004c58 <__kernel_sin+0x15c>)
 8004b8a:	f7fc ff3b 	bl	8001a04 <__aeabi_dadd>
 8004b8e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004b90:	9002      	str	r0, [sp, #8]
 8004b92:	9103      	str	r1, [sp, #12]
 8004b94:	2b00      	cmp	r3, #0
 8004b96:	d11a      	bne.n	8004bce <__kernel_sin+0xd2>
 8004b98:	0002      	movs	r2, r0
 8004b9a:	000b      	movs	r3, r1
 8004b9c:	0020      	movs	r0, r4
 8004b9e:	0029      	movs	r1, r5
 8004ba0:	f7fb ff3c 	bl	8000a1c <__aeabi_dmul>
 8004ba4:	4a2d      	ldr	r2, [pc, #180]	; (8004c5c <__kernel_sin+0x160>)
 8004ba6:	4b2e      	ldr	r3, [pc, #184]	; (8004c60 <__kernel_sin+0x164>)
 8004ba8:	f7fc f9a6 	bl	8000ef8 <__aeabi_dsub>
 8004bac:	0032      	movs	r2, r6
 8004bae:	003b      	movs	r3, r7
 8004bb0:	f7fb ff34 	bl	8000a1c <__aeabi_dmul>
 8004bb4:	464a      	mov	r2, r9
 8004bb6:	4643      	mov	r3, r8
 8004bb8:	f7fc ff24 	bl	8001a04 <__aeabi_dadd>
 8004bbc:	0002      	movs	r2, r0
 8004bbe:	000b      	movs	r3, r1
 8004bc0:	0010      	movs	r0, r2
 8004bc2:	0019      	movs	r1, r3
 8004bc4:	b007      	add	sp, #28
 8004bc6:	bcc0      	pop	{r6, r7}
 8004bc8:	46b9      	mov	r9, r7
 8004bca:	46b0      	mov	r8, r6
 8004bcc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8004bce:	2200      	movs	r2, #0
 8004bd0:	9800      	ldr	r0, [sp, #0]
 8004bd2:	9901      	ldr	r1, [sp, #4]
 8004bd4:	4b23      	ldr	r3, [pc, #140]	; (8004c64 <__kernel_sin+0x168>)
 8004bd6:	f7fb ff21 	bl	8000a1c <__aeabi_dmul>
 8004bda:	9a02      	ldr	r2, [sp, #8]
 8004bdc:	9b03      	ldr	r3, [sp, #12]
 8004bde:	9004      	str	r0, [sp, #16]
 8004be0:	9105      	str	r1, [sp, #20]
 8004be2:	0030      	movs	r0, r6
 8004be4:	0039      	movs	r1, r7
 8004be6:	f7fb ff19 	bl	8000a1c <__aeabi_dmul>
 8004bea:	0002      	movs	r2, r0
 8004bec:	000b      	movs	r3, r1
 8004bee:	9804      	ldr	r0, [sp, #16]
 8004bf0:	9905      	ldr	r1, [sp, #20]
 8004bf2:	f7fc f981 	bl	8000ef8 <__aeabi_dsub>
 8004bf6:	0022      	movs	r2, r4
 8004bf8:	002b      	movs	r3, r5
 8004bfa:	f7fb ff0f 	bl	8000a1c <__aeabi_dmul>
 8004bfe:	9a00      	ldr	r2, [sp, #0]
 8004c00:	9b01      	ldr	r3, [sp, #4]
 8004c02:	f7fc f979 	bl	8000ef8 <__aeabi_dsub>
 8004c06:	4a15      	ldr	r2, [pc, #84]	; (8004c5c <__kernel_sin+0x160>)
 8004c08:	0004      	movs	r4, r0
 8004c0a:	000d      	movs	r5, r1
 8004c0c:	4b14      	ldr	r3, [pc, #80]	; (8004c60 <__kernel_sin+0x164>)
 8004c0e:	0030      	movs	r0, r6
 8004c10:	0039      	movs	r1, r7
 8004c12:	f7fb ff03 	bl	8000a1c <__aeabi_dmul>
 8004c16:	0002      	movs	r2, r0
 8004c18:	000b      	movs	r3, r1
 8004c1a:	0020      	movs	r0, r4
 8004c1c:	0029      	movs	r1, r5
 8004c1e:	f7fc fef1 	bl	8001a04 <__aeabi_dadd>
 8004c22:	0002      	movs	r2, r0
 8004c24:	000b      	movs	r3, r1
 8004c26:	4648      	mov	r0, r9
 8004c28:	4641      	mov	r1, r8
 8004c2a:	f7fc f965 	bl	8000ef8 <__aeabi_dsub>
 8004c2e:	0002      	movs	r2, r0
 8004c30:	000b      	movs	r3, r1
 8004c32:	e7c5      	b.n	8004bc0 <__kernel_sin+0xc4>
 8004c34:	5acfd57c 	.word	0x5acfd57c
 8004c38:	3de5d93a 	.word	0x3de5d93a
 8004c3c:	8a2b9ceb 	.word	0x8a2b9ceb
 8004c40:	3e5ae5e6 	.word	0x3e5ae5e6
 8004c44:	57b1fe7d 	.word	0x57b1fe7d
 8004c48:	3ec71de3 	.word	0x3ec71de3
 8004c4c:	19c161d5 	.word	0x19c161d5
 8004c50:	3f2a01a0 	.word	0x3f2a01a0
 8004c54:	3f811111 	.word	0x3f811111
 8004c58:	1110f8a6 	.word	0x1110f8a6
 8004c5c:	55555549 	.word	0x55555549
 8004c60:	3fc55555 	.word	0x3fc55555
 8004c64:	3fe00000 	.word	0x3fe00000

08004c68 <fabs>:
 8004c68:	004b      	lsls	r3, r1, #1
 8004c6a:	0859      	lsrs	r1, r3, #1
 8004c6c:	4770      	bx	lr
 8004c6e:	46c0      	nop			; (mov r8, r8)

08004c70 <floor>:
 8004c70:	4a47      	ldr	r2, [pc, #284]	; (8004d90 <floor+0x120>)
 8004c72:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004c74:	4646      	mov	r6, r8
 8004c76:	4690      	mov	r8, r2
 8004c78:	004b      	lsls	r3, r1, #1
 8004c7a:	0d5b      	lsrs	r3, r3, #21
 8004c7c:	4498      	add	r8, r3
 8004c7e:	464f      	mov	r7, r9
 8004c80:	46d6      	mov	lr, sl
 8004c82:	4642      	mov	r2, r8
 8004c84:	b5c0      	push	{r6, r7, lr}
 8004c86:	0005      	movs	r5, r0
 8004c88:	000c      	movs	r4, r1
 8004c8a:	000e      	movs	r6, r1
 8004c8c:	0007      	movs	r7, r0
 8004c8e:	2a13      	cmp	r2, #19
 8004c90:	dc39      	bgt.n	8004d06 <floor+0x96>
 8004c92:	2a00      	cmp	r2, #0
 8004c94:	db26      	blt.n	8004ce4 <floor+0x74>
 8004c96:	4b3f      	ldr	r3, [pc, #252]	; (8004d94 <floor+0x124>)
 8004c98:	4684      	mov	ip, r0
 8004c9a:	4113      	asrs	r3, r2
 8004c9c:	4699      	mov	r9, r3
 8004c9e:	400b      	ands	r3, r1
 8004ca0:	468a      	mov	sl, r1
 8004ca2:	4303      	orrs	r3, r0
 8004ca4:	d017      	beq.n	8004cd6 <floor+0x66>
 8004ca6:	4a3c      	ldr	r2, [pc, #240]	; (8004d98 <floor+0x128>)
 8004ca8:	4b3c      	ldr	r3, [pc, #240]	; (8004d9c <floor+0x12c>)
 8004caa:	0028      	movs	r0, r5
 8004cac:	0021      	movs	r1, r4
 8004cae:	f7fc fea9 	bl	8001a04 <__aeabi_dadd>
 8004cb2:	2200      	movs	r2, #0
 8004cb4:	2300      	movs	r3, #0
 8004cb6:	f7fc fd67 	bl	8001788 <__aeabi_dcmpgt>
 8004cba:	2800      	cmp	r0, #0
 8004cbc:	d009      	beq.n	8004cd2 <floor+0x62>
 8004cbe:	2c00      	cmp	r4, #0
 8004cc0:	da04      	bge.n	8004ccc <floor+0x5c>
 8004cc2:	2680      	movs	r6, #128	; 0x80
 8004cc4:	4643      	mov	r3, r8
 8004cc6:	0376      	lsls	r6, r6, #13
 8004cc8:	411e      	asrs	r6, r3
 8004cca:	1936      	adds	r6, r6, r4
 8004ccc:	464b      	mov	r3, r9
 8004cce:	2700      	movs	r7, #0
 8004cd0:	439e      	bics	r6, r3
 8004cd2:	46bc      	mov	ip, r7
 8004cd4:	46b2      	mov	sl, r6
 8004cd6:	4651      	mov	r1, sl
 8004cd8:	4660      	mov	r0, ip
 8004cda:	bce0      	pop	{r5, r6, r7}
 8004cdc:	46ba      	mov	sl, r7
 8004cde:	46b1      	mov	r9, r6
 8004ce0:	46a8      	mov	r8, r5
 8004ce2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8004ce4:	4a2c      	ldr	r2, [pc, #176]	; (8004d98 <floor+0x128>)
 8004ce6:	4b2d      	ldr	r3, [pc, #180]	; (8004d9c <floor+0x12c>)
 8004ce8:	0028      	movs	r0, r5
 8004cea:	0021      	movs	r1, r4
 8004cec:	f7fc fe8a 	bl	8001a04 <__aeabi_dadd>
 8004cf0:	2200      	movs	r2, #0
 8004cf2:	2300      	movs	r3, #0
 8004cf4:	f7fc fd48 	bl	8001788 <__aeabi_dcmpgt>
 8004cf8:	2800      	cmp	r0, #0
 8004cfa:	d0ea      	beq.n	8004cd2 <floor+0x62>
 8004cfc:	2c00      	cmp	r4, #0
 8004cfe:	db2f      	blt.n	8004d60 <floor+0xf0>
 8004d00:	2700      	movs	r7, #0
 8004d02:	2600      	movs	r6, #0
 8004d04:	e7e5      	b.n	8004cd2 <floor+0x62>
 8004d06:	2a33      	cmp	r2, #51	; 0x33
 8004d08:	dd0e      	ble.n	8004d28 <floor+0xb8>
 8004d0a:	2380      	movs	r3, #128	; 0x80
 8004d0c:	4684      	mov	ip, r0
 8004d0e:	468a      	mov	sl, r1
 8004d10:	00db      	lsls	r3, r3, #3
 8004d12:	4598      	cmp	r8, r3
 8004d14:	d1df      	bne.n	8004cd6 <floor+0x66>
 8004d16:	0002      	movs	r2, r0
 8004d18:	000b      	movs	r3, r1
 8004d1a:	0028      	movs	r0, r5
 8004d1c:	0021      	movs	r1, r4
 8004d1e:	f7fc fe71 	bl	8001a04 <__aeabi_dadd>
 8004d22:	4684      	mov	ip, r0
 8004d24:	468a      	mov	sl, r1
 8004d26:	e7d6      	b.n	8004cd6 <floor+0x66>
 8004d28:	4a1d      	ldr	r2, [pc, #116]	; (8004da0 <floor+0x130>)
 8004d2a:	468a      	mov	sl, r1
 8004d2c:	4694      	mov	ip, r2
 8004d2e:	2201      	movs	r2, #1
 8004d30:	4463      	add	r3, ip
 8004d32:	4252      	negs	r2, r2
 8004d34:	40da      	lsrs	r2, r3
 8004d36:	4684      	mov	ip, r0
 8004d38:	4691      	mov	r9, r2
 8004d3a:	4202      	tst	r2, r0
 8004d3c:	d0cb      	beq.n	8004cd6 <floor+0x66>
 8004d3e:	4a16      	ldr	r2, [pc, #88]	; (8004d98 <floor+0x128>)
 8004d40:	4b16      	ldr	r3, [pc, #88]	; (8004d9c <floor+0x12c>)
 8004d42:	0028      	movs	r0, r5
 8004d44:	0021      	movs	r1, r4
 8004d46:	f7fc fe5d 	bl	8001a04 <__aeabi_dadd>
 8004d4a:	2200      	movs	r2, #0
 8004d4c:	2300      	movs	r3, #0
 8004d4e:	f7fc fd1b 	bl	8001788 <__aeabi_dcmpgt>
 8004d52:	2800      	cmp	r0, #0
 8004d54:	d0bd      	beq.n	8004cd2 <floor+0x62>
 8004d56:	2c00      	cmp	r4, #0
 8004d58:	db09      	blt.n	8004d6e <floor+0xfe>
 8004d5a:	464b      	mov	r3, r9
 8004d5c:	439f      	bics	r7, r3
 8004d5e:	e7b8      	b.n	8004cd2 <floor+0x62>
 8004d60:	0064      	lsls	r4, r4, #1
 8004d62:	0864      	lsrs	r4, r4, #1
 8004d64:	2700      	movs	r7, #0
 8004d66:	4325      	orrs	r5, r4
 8004d68:	d0b3      	beq.n	8004cd2 <floor+0x62>
 8004d6a:	4e0e      	ldr	r6, [pc, #56]	; (8004da4 <floor+0x134>)
 8004d6c:	e7b1      	b.n	8004cd2 <floor+0x62>
 8004d6e:	4643      	mov	r3, r8
 8004d70:	2b14      	cmp	r3, #20
 8004d72:	d009      	beq.n	8004d88 <floor+0x118>
 8004d74:	2234      	movs	r2, #52	; 0x34
 8004d76:	1ad2      	subs	r2, r2, r3
 8004d78:	2301      	movs	r3, #1
 8004d7a:	4093      	lsls	r3, r2
 8004d7c:	195d      	adds	r5, r3, r5
 8004d7e:	42bd      	cmp	r5, r7
 8004d80:	d204      	bcs.n	8004d8c <floor+0x11c>
 8004d82:	002f      	movs	r7, r5
 8004d84:	1c66      	adds	r6, r4, #1
 8004d86:	e7e8      	b.n	8004d5a <floor+0xea>
 8004d88:	1c66      	adds	r6, r4, #1
 8004d8a:	e7e6      	b.n	8004d5a <floor+0xea>
 8004d8c:	002f      	movs	r7, r5
 8004d8e:	e7e4      	b.n	8004d5a <floor+0xea>
 8004d90:	fffffc01 	.word	0xfffffc01
 8004d94:	000fffff 	.word	0x000fffff
 8004d98:	8800759c 	.word	0x8800759c
 8004d9c:	7e37e43c 	.word	0x7e37e43c
 8004da0:	fffffbed 	.word	0xfffffbed
 8004da4:	bff00000 	.word	0xbff00000

08004da8 <scalbn>:
 8004da8:	004b      	lsls	r3, r1, #1
 8004daa:	b570      	push	{r4, r5, r6, lr}
 8004dac:	0d5b      	lsrs	r3, r3, #21
 8004dae:	0014      	movs	r4, r2
 8004db0:	000a      	movs	r2, r1
 8004db2:	2b00      	cmp	r3, #0
 8004db4:	d125      	bne.n	8004e02 <scalbn+0x5a>
 8004db6:	004b      	lsls	r3, r1, #1
 8004db8:	085b      	lsrs	r3, r3, #1
 8004dba:	4303      	orrs	r3, r0
 8004dbc:	d020      	beq.n	8004e00 <scalbn+0x58>
 8004dbe:	4b2b      	ldr	r3, [pc, #172]	; (8004e6c <scalbn+0xc4>)
 8004dc0:	2200      	movs	r2, #0
 8004dc2:	f7fb fe2b 	bl	8000a1c <__aeabi_dmul>
 8004dc6:	4b2a      	ldr	r3, [pc, #168]	; (8004e70 <scalbn+0xc8>)
 8004dc8:	429c      	cmp	r4, r3
 8004dca:	db47      	blt.n	8004e5c <scalbn+0xb4>
 8004dcc:	000a      	movs	r2, r1
 8004dce:	004b      	lsls	r3, r1, #1
 8004dd0:	0d5b      	lsrs	r3, r3, #21
 8004dd2:	3b36      	subs	r3, #54	; 0x36
 8004dd4:	4d27      	ldr	r5, [pc, #156]	; (8004e74 <scalbn+0xcc>)
 8004dd6:	18e3      	adds	r3, r4, r3
 8004dd8:	42ab      	cmp	r3, r5
 8004dda:	dc1a      	bgt.n	8004e12 <scalbn+0x6a>
 8004ddc:	2b00      	cmp	r3, #0
 8004dde:	dc37      	bgt.n	8004e50 <scalbn+0xa8>
 8004de0:	001d      	movs	r5, r3
 8004de2:	3535      	adds	r5, #53	; 0x35
 8004de4:	da29      	bge.n	8004e3a <scalbn+0x92>
 8004de6:	4b24      	ldr	r3, [pc, #144]	; (8004e78 <scalbn+0xd0>)
 8004de8:	429c      	cmp	r4, r3
 8004dea:	dc12      	bgt.n	8004e12 <scalbn+0x6a>
 8004dec:	4c23      	ldr	r4, [pc, #140]	; (8004e7c <scalbn+0xd4>)
 8004dee:	4d24      	ldr	r5, [pc, #144]	; (8004e80 <scalbn+0xd8>)
 8004df0:	2900      	cmp	r1, #0
 8004df2:	db38      	blt.n	8004e66 <scalbn+0xbe>
 8004df4:	0020      	movs	r0, r4
 8004df6:	0029      	movs	r1, r5
 8004df8:	4a20      	ldr	r2, [pc, #128]	; (8004e7c <scalbn+0xd4>)
 8004dfa:	4b21      	ldr	r3, [pc, #132]	; (8004e80 <scalbn+0xd8>)
 8004dfc:	f7fb fe0e 	bl	8000a1c <__aeabi_dmul>
 8004e00:	bd70      	pop	{r4, r5, r6, pc}
 8004e02:	4d20      	ldr	r5, [pc, #128]	; (8004e84 <scalbn+0xdc>)
 8004e04:	42ab      	cmp	r3, r5
 8004e06:	d1e5      	bne.n	8004dd4 <scalbn+0x2c>
 8004e08:	0002      	movs	r2, r0
 8004e0a:	000b      	movs	r3, r1
 8004e0c:	f7fc fdfa 	bl	8001a04 <__aeabi_dadd>
 8004e10:	e7f6      	b.n	8004e00 <scalbn+0x58>
 8004e12:	4c1d      	ldr	r4, [pc, #116]	; (8004e88 <scalbn+0xe0>)
 8004e14:	4d1d      	ldr	r5, [pc, #116]	; (8004e8c <scalbn+0xe4>)
 8004e16:	2900      	cmp	r1, #0
 8004e18:	db06      	blt.n	8004e28 <scalbn+0x80>
 8004e1a:	0020      	movs	r0, r4
 8004e1c:	0029      	movs	r1, r5
 8004e1e:	4a1a      	ldr	r2, [pc, #104]	; (8004e88 <scalbn+0xe0>)
 8004e20:	4b1a      	ldr	r3, [pc, #104]	; (8004e8c <scalbn+0xe4>)
 8004e22:	f7fb fdfb 	bl	8000a1c <__aeabi_dmul>
 8004e26:	e7eb      	b.n	8004e00 <scalbn+0x58>
 8004e28:	4c17      	ldr	r4, [pc, #92]	; (8004e88 <scalbn+0xe0>)
 8004e2a:	4d19      	ldr	r5, [pc, #100]	; (8004e90 <scalbn+0xe8>)
 8004e2c:	0020      	movs	r0, r4
 8004e2e:	0029      	movs	r1, r5
 8004e30:	4a15      	ldr	r2, [pc, #84]	; (8004e88 <scalbn+0xe0>)
 8004e32:	4b16      	ldr	r3, [pc, #88]	; (8004e8c <scalbn+0xe4>)
 8004e34:	f7fb fdf2 	bl	8000a1c <__aeabi_dmul>
 8004e38:	e7e2      	b.n	8004e00 <scalbn+0x58>
 8004e3a:	4c16      	ldr	r4, [pc, #88]	; (8004e94 <scalbn+0xec>)
 8004e3c:	3336      	adds	r3, #54	; 0x36
 8004e3e:	4022      	ands	r2, r4
 8004e40:	051b      	lsls	r3, r3, #20
 8004e42:	4313      	orrs	r3, r2
 8004e44:	0019      	movs	r1, r3
 8004e46:	2200      	movs	r2, #0
 8004e48:	4b13      	ldr	r3, [pc, #76]	; (8004e98 <scalbn+0xf0>)
 8004e4a:	f7fb fde7 	bl	8000a1c <__aeabi_dmul>
 8004e4e:	e7d7      	b.n	8004e00 <scalbn+0x58>
 8004e50:	4c10      	ldr	r4, [pc, #64]	; (8004e94 <scalbn+0xec>)
 8004e52:	051b      	lsls	r3, r3, #20
 8004e54:	4022      	ands	r2, r4
 8004e56:	431a      	orrs	r2, r3
 8004e58:	0011      	movs	r1, r2
 8004e5a:	e7d1      	b.n	8004e00 <scalbn+0x58>
 8004e5c:	4a07      	ldr	r2, [pc, #28]	; (8004e7c <scalbn+0xd4>)
 8004e5e:	4b08      	ldr	r3, [pc, #32]	; (8004e80 <scalbn+0xd8>)
 8004e60:	f7fb fddc 	bl	8000a1c <__aeabi_dmul>
 8004e64:	e7cc      	b.n	8004e00 <scalbn+0x58>
 8004e66:	4c05      	ldr	r4, [pc, #20]	; (8004e7c <scalbn+0xd4>)
 8004e68:	4d0c      	ldr	r5, [pc, #48]	; (8004e9c <scalbn+0xf4>)
 8004e6a:	e7c3      	b.n	8004df4 <scalbn+0x4c>
 8004e6c:	43500000 	.word	0x43500000
 8004e70:	ffff3cb0 	.word	0xffff3cb0
 8004e74:	000007fe 	.word	0x000007fe
 8004e78:	0000c350 	.word	0x0000c350
 8004e7c:	c2f8f359 	.word	0xc2f8f359
 8004e80:	01a56e1f 	.word	0x01a56e1f
 8004e84:	000007ff 	.word	0x000007ff
 8004e88:	8800759c 	.word	0x8800759c
 8004e8c:	7e37e43c 	.word	0x7e37e43c
 8004e90:	fe37e43c 	.word	0xfe37e43c
 8004e94:	800fffff 	.word	0x800fffff
 8004e98:	3c900000 	.word	0x3c900000
 8004e9c:	81a56e1f 	.word	0x81a56e1f

08004ea0 <_init>:
 8004ea0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8004ea2:	46c0      	nop			; (mov r8, r8)
 8004ea4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8004ea6:	bc08      	pop	{r3}
 8004ea8:	469e      	mov	lr, r3
 8004eaa:	4770      	bx	lr

08004eac <_fini>:
 8004eac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8004eae:	46c0      	nop			; (mov r8, r8)
 8004eb0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8004eb2:	bc08      	pop	{r3}
 8004eb4:	469e      	mov	lr, r3
 8004eb6:	4770      	bx	lr
