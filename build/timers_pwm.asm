
build/timers_pwm.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00002240  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000078  08002300  08002300  00012300  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08002378  08002378  00012378  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08002380  08002380  00012380  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08002384  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              0000002c  20000434  080027b8  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000460  080027b8  00020460  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       0000155a  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     00000441  00000000  00000000  000219b6  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        00000ae0  00000000  00000000  00021df7  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000208  00000000  00000000  000228d7  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     000001d8  00000000  00000000  00022adf  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       00000ced  00000000  00000000  00022cb7  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        00000a84  00000000  00000000  000239a4  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          0000004d  00000000  00000000  00024428  2**0  CONTENTS, READONLY
 17 .debug_frame      00000a48  00000000  00000000  00024478  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000dc:	20000434 	.word	0x20000434
 80000e0:	00000000 	.word	0x00000000
 80000e4:	080022e8 	.word	0x080022e8

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
 8000100:	20000438 	.word	0x20000438
 8000104:	080022e8 	.word	0x080022e8

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
 800020c:	f000 f806 	bl	800021c <__aeabi_idiv0>
 8000210:	bd02      	pop	{r1, pc}
 8000212:	46c0      	nop			; (mov r8, r8)

08000214 <__aeabi_uidivmod>:
 8000214:	2900      	cmp	r1, #0
 8000216:	d0f7      	beq.n	8000208 <__udivsi3+0x100>
 8000218:	e776      	b.n	8000108 <__udivsi3>
 800021a:	4770      	bx	lr

0800021c <__aeabi_idiv0>:
 800021c:	4770      	bx	lr
 800021e:	46c0      	nop			; (mov r8, r8)

08000220 <__aeabi_d2uiz>:
 8000220:	b570      	push	{r4, r5, r6, lr}
 8000222:	2200      	movs	r2, #0
 8000224:	4b0c      	ldr	r3, [pc, #48]	; (8000258 <__aeabi_d2uiz+0x38>)
 8000226:	0004      	movs	r4, r0
 8000228:	000d      	movs	r5, r1
 800022a:	f000 ff2f 	bl	800108c <__aeabi_dcmpge>
 800022e:	2800      	cmp	r0, #0
 8000230:	d104      	bne.n	800023c <__aeabi_d2uiz+0x1c>
 8000232:	0020      	movs	r0, r4
 8000234:	0029      	movs	r1, r5
 8000236:	f000 fe99 	bl	8000f6c <__aeabi_d2iz>
 800023a:	bd70      	pop	{r4, r5, r6, pc}
 800023c:	4b06      	ldr	r3, [pc, #24]	; (8000258 <__aeabi_d2uiz+0x38>)
 800023e:	2200      	movs	r2, #0
 8000240:	0020      	movs	r0, r4
 8000242:	0029      	movs	r1, r5
 8000244:	f000 fb00 	bl	8000848 <__aeabi_dsub>
 8000248:	f000 fe90 	bl	8000f6c <__aeabi_d2iz>
 800024c:	2380      	movs	r3, #128	; 0x80
 800024e:	061b      	lsls	r3, r3, #24
 8000250:	469c      	mov	ip, r3
 8000252:	4460      	add	r0, ip
 8000254:	e7f1      	b.n	800023a <__aeabi_d2uiz+0x1a>
 8000256:	46c0      	nop			; (mov r8, r8)
 8000258:	41e00000 	.word	0x41e00000

0800025c <__aeabi_ddiv>:
 800025c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800025e:	4657      	mov	r7, sl
 8000260:	464e      	mov	r6, r9
 8000262:	4645      	mov	r5, r8
 8000264:	46de      	mov	lr, fp
 8000266:	b5e0      	push	{r5, r6, r7, lr}
 8000268:	4681      	mov	r9, r0
 800026a:	0005      	movs	r5, r0
 800026c:	030c      	lsls	r4, r1, #12
 800026e:	0048      	lsls	r0, r1, #1
 8000270:	4692      	mov	sl, r2
 8000272:	001f      	movs	r7, r3
 8000274:	b085      	sub	sp, #20
 8000276:	0b24      	lsrs	r4, r4, #12
 8000278:	0d40      	lsrs	r0, r0, #21
 800027a:	0fce      	lsrs	r6, r1, #31
 800027c:	2800      	cmp	r0, #0
 800027e:	d100      	bne.n	8000282 <__aeabi_ddiv+0x26>
 8000280:	e156      	b.n	8000530 <__aeabi_ddiv+0x2d4>
 8000282:	4bd4      	ldr	r3, [pc, #848]	; (80005d4 <__aeabi_ddiv+0x378>)
 8000284:	4298      	cmp	r0, r3
 8000286:	d100      	bne.n	800028a <__aeabi_ddiv+0x2e>
 8000288:	e172      	b.n	8000570 <__aeabi_ddiv+0x314>
 800028a:	0f6b      	lsrs	r3, r5, #29
 800028c:	00e4      	lsls	r4, r4, #3
 800028e:	431c      	orrs	r4, r3
 8000290:	2380      	movs	r3, #128	; 0x80
 8000292:	041b      	lsls	r3, r3, #16
 8000294:	4323      	orrs	r3, r4
 8000296:	4698      	mov	r8, r3
 8000298:	4bcf      	ldr	r3, [pc, #828]	; (80005d8 <__aeabi_ddiv+0x37c>)
 800029a:	00ed      	lsls	r5, r5, #3
 800029c:	469b      	mov	fp, r3
 800029e:	2300      	movs	r3, #0
 80002a0:	4699      	mov	r9, r3
 80002a2:	4483      	add	fp, r0
 80002a4:	9300      	str	r3, [sp, #0]
 80002a6:	033c      	lsls	r4, r7, #12
 80002a8:	007b      	lsls	r3, r7, #1
 80002aa:	4650      	mov	r0, sl
 80002ac:	0b24      	lsrs	r4, r4, #12
 80002ae:	0d5b      	lsrs	r3, r3, #21
 80002b0:	0fff      	lsrs	r7, r7, #31
 80002b2:	2b00      	cmp	r3, #0
 80002b4:	d100      	bne.n	80002b8 <__aeabi_ddiv+0x5c>
 80002b6:	e11f      	b.n	80004f8 <__aeabi_ddiv+0x29c>
 80002b8:	4ac6      	ldr	r2, [pc, #792]	; (80005d4 <__aeabi_ddiv+0x378>)
 80002ba:	4293      	cmp	r3, r2
 80002bc:	d100      	bne.n	80002c0 <__aeabi_ddiv+0x64>
 80002be:	e162      	b.n	8000586 <__aeabi_ddiv+0x32a>
 80002c0:	49c5      	ldr	r1, [pc, #788]	; (80005d8 <__aeabi_ddiv+0x37c>)
 80002c2:	0f42      	lsrs	r2, r0, #29
 80002c4:	468c      	mov	ip, r1
 80002c6:	00e4      	lsls	r4, r4, #3
 80002c8:	4659      	mov	r1, fp
 80002ca:	4314      	orrs	r4, r2
 80002cc:	2280      	movs	r2, #128	; 0x80
 80002ce:	4463      	add	r3, ip
 80002d0:	0412      	lsls	r2, r2, #16
 80002d2:	1acb      	subs	r3, r1, r3
 80002d4:	4314      	orrs	r4, r2
 80002d6:	469b      	mov	fp, r3
 80002d8:	00c2      	lsls	r2, r0, #3
 80002da:	2000      	movs	r0, #0
 80002dc:	0033      	movs	r3, r6
 80002de:	407b      	eors	r3, r7
 80002e0:	469a      	mov	sl, r3
 80002e2:	464b      	mov	r3, r9
 80002e4:	2b0f      	cmp	r3, #15
 80002e6:	d827      	bhi.n	8000338 <__aeabi_ddiv+0xdc>
 80002e8:	49bc      	ldr	r1, [pc, #752]	; (80005dc <__aeabi_ddiv+0x380>)
 80002ea:	009b      	lsls	r3, r3, #2
 80002ec:	58cb      	ldr	r3, [r1, r3]
 80002ee:	469f      	mov	pc, r3
 80002f0:	46b2      	mov	sl, r6
 80002f2:	9b00      	ldr	r3, [sp, #0]
 80002f4:	2b02      	cmp	r3, #2
 80002f6:	d016      	beq.n	8000326 <__aeabi_ddiv+0xca>
 80002f8:	2b03      	cmp	r3, #3
 80002fa:	d100      	bne.n	80002fe <__aeabi_ddiv+0xa2>
 80002fc:	e28e      	b.n	800081c <__aeabi_ddiv+0x5c0>
 80002fe:	2b01      	cmp	r3, #1
 8000300:	d000      	beq.n	8000304 <__aeabi_ddiv+0xa8>
 8000302:	e0d9      	b.n	80004b8 <__aeabi_ddiv+0x25c>
 8000304:	2300      	movs	r3, #0
 8000306:	2400      	movs	r4, #0
 8000308:	2500      	movs	r5, #0
 800030a:	4652      	mov	r2, sl
 800030c:	051b      	lsls	r3, r3, #20
 800030e:	4323      	orrs	r3, r4
 8000310:	07d2      	lsls	r2, r2, #31
 8000312:	4313      	orrs	r3, r2
 8000314:	0028      	movs	r0, r5
 8000316:	0019      	movs	r1, r3
 8000318:	b005      	add	sp, #20
 800031a:	bcf0      	pop	{r4, r5, r6, r7}
 800031c:	46bb      	mov	fp, r7
 800031e:	46b2      	mov	sl, r6
 8000320:	46a9      	mov	r9, r5
 8000322:	46a0      	mov	r8, r4
 8000324:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000326:	2400      	movs	r4, #0
 8000328:	2500      	movs	r5, #0
 800032a:	4baa      	ldr	r3, [pc, #680]	; (80005d4 <__aeabi_ddiv+0x378>)
 800032c:	e7ed      	b.n	800030a <__aeabi_ddiv+0xae>
 800032e:	46ba      	mov	sl, r7
 8000330:	46a0      	mov	r8, r4
 8000332:	0015      	movs	r5, r2
 8000334:	9000      	str	r0, [sp, #0]
 8000336:	e7dc      	b.n	80002f2 <__aeabi_ddiv+0x96>
 8000338:	4544      	cmp	r4, r8
 800033a:	d200      	bcs.n	800033e <__aeabi_ddiv+0xe2>
 800033c:	e1c7      	b.n	80006ce <__aeabi_ddiv+0x472>
 800033e:	d100      	bne.n	8000342 <__aeabi_ddiv+0xe6>
 8000340:	e1c2      	b.n	80006c8 <__aeabi_ddiv+0x46c>
 8000342:	2301      	movs	r3, #1
 8000344:	425b      	negs	r3, r3
 8000346:	469c      	mov	ip, r3
 8000348:	002e      	movs	r6, r5
 800034a:	4640      	mov	r0, r8
 800034c:	2500      	movs	r5, #0
 800034e:	44e3      	add	fp, ip
 8000350:	0223      	lsls	r3, r4, #8
 8000352:	0e14      	lsrs	r4, r2, #24
 8000354:	431c      	orrs	r4, r3
 8000356:	0c1b      	lsrs	r3, r3, #16
 8000358:	4699      	mov	r9, r3
 800035a:	0423      	lsls	r3, r4, #16
 800035c:	0c1f      	lsrs	r7, r3, #16
 800035e:	0212      	lsls	r2, r2, #8
 8000360:	4649      	mov	r1, r9
 8000362:	9200      	str	r2, [sp, #0]
 8000364:	9701      	str	r7, [sp, #4]
 8000366:	f7ff ff55 	bl	8000214 <__aeabi_uidivmod>
 800036a:	0002      	movs	r2, r0
 800036c:	437a      	muls	r2, r7
 800036e:	040b      	lsls	r3, r1, #16
 8000370:	0c31      	lsrs	r1, r6, #16
 8000372:	4680      	mov	r8, r0
 8000374:	4319      	orrs	r1, r3
 8000376:	428a      	cmp	r2, r1
 8000378:	d907      	bls.n	800038a <__aeabi_ddiv+0x12e>
 800037a:	2301      	movs	r3, #1
 800037c:	425b      	negs	r3, r3
 800037e:	469c      	mov	ip, r3
 8000380:	1909      	adds	r1, r1, r4
 8000382:	44e0      	add	r8, ip
 8000384:	428c      	cmp	r4, r1
 8000386:	d800      	bhi.n	800038a <__aeabi_ddiv+0x12e>
 8000388:	e207      	b.n	800079a <__aeabi_ddiv+0x53e>
 800038a:	1a88      	subs	r0, r1, r2
 800038c:	4649      	mov	r1, r9
 800038e:	f7ff ff41 	bl	8000214 <__aeabi_uidivmod>
 8000392:	0409      	lsls	r1, r1, #16
 8000394:	468c      	mov	ip, r1
 8000396:	0431      	lsls	r1, r6, #16
 8000398:	4666      	mov	r6, ip
 800039a:	9a01      	ldr	r2, [sp, #4]
 800039c:	0c09      	lsrs	r1, r1, #16
 800039e:	4342      	muls	r2, r0
 80003a0:	0003      	movs	r3, r0
 80003a2:	4331      	orrs	r1, r6
 80003a4:	428a      	cmp	r2, r1
 80003a6:	d904      	bls.n	80003b2 <__aeabi_ddiv+0x156>
 80003a8:	1909      	adds	r1, r1, r4
 80003aa:	3b01      	subs	r3, #1
 80003ac:	428c      	cmp	r4, r1
 80003ae:	d800      	bhi.n	80003b2 <__aeabi_ddiv+0x156>
 80003b0:	e1ed      	b.n	800078e <__aeabi_ddiv+0x532>
 80003b2:	1a88      	subs	r0, r1, r2
 80003b4:	4642      	mov	r2, r8
 80003b6:	0412      	lsls	r2, r2, #16
 80003b8:	431a      	orrs	r2, r3
 80003ba:	4690      	mov	r8, r2
 80003bc:	4641      	mov	r1, r8
 80003be:	9b00      	ldr	r3, [sp, #0]
 80003c0:	040e      	lsls	r6, r1, #16
 80003c2:	0c1b      	lsrs	r3, r3, #16
 80003c4:	001f      	movs	r7, r3
 80003c6:	9302      	str	r3, [sp, #8]
 80003c8:	9b00      	ldr	r3, [sp, #0]
 80003ca:	0c36      	lsrs	r6, r6, #16
 80003cc:	041b      	lsls	r3, r3, #16
 80003ce:	0c19      	lsrs	r1, r3, #16
 80003d0:	000b      	movs	r3, r1
 80003d2:	4373      	muls	r3, r6
 80003d4:	0c12      	lsrs	r2, r2, #16
 80003d6:	437e      	muls	r6, r7
 80003d8:	9103      	str	r1, [sp, #12]
 80003da:	4351      	muls	r1, r2
 80003dc:	437a      	muls	r2, r7
 80003de:	0c1f      	lsrs	r7, r3, #16
 80003e0:	46bc      	mov	ip, r7
 80003e2:	1876      	adds	r6, r6, r1
 80003e4:	4466      	add	r6, ip
 80003e6:	42b1      	cmp	r1, r6
 80003e8:	d903      	bls.n	80003f2 <__aeabi_ddiv+0x196>
 80003ea:	2180      	movs	r1, #128	; 0x80
 80003ec:	0249      	lsls	r1, r1, #9
 80003ee:	468c      	mov	ip, r1
 80003f0:	4462      	add	r2, ip
 80003f2:	0c31      	lsrs	r1, r6, #16
 80003f4:	188a      	adds	r2, r1, r2
 80003f6:	0431      	lsls	r1, r6, #16
 80003f8:	041e      	lsls	r6, r3, #16
 80003fa:	0c36      	lsrs	r6, r6, #16
 80003fc:	198e      	adds	r6, r1, r6
 80003fe:	4290      	cmp	r0, r2
 8000400:	d302      	bcc.n	8000408 <__aeabi_ddiv+0x1ac>
 8000402:	d112      	bne.n	800042a <__aeabi_ddiv+0x1ce>
 8000404:	42b5      	cmp	r5, r6
 8000406:	d210      	bcs.n	800042a <__aeabi_ddiv+0x1ce>
 8000408:	4643      	mov	r3, r8
 800040a:	1e59      	subs	r1, r3, #1
 800040c:	9b00      	ldr	r3, [sp, #0]
 800040e:	469c      	mov	ip, r3
 8000410:	4465      	add	r5, ip
 8000412:	001f      	movs	r7, r3
 8000414:	429d      	cmp	r5, r3
 8000416:	419b      	sbcs	r3, r3
 8000418:	425b      	negs	r3, r3
 800041a:	191b      	adds	r3, r3, r4
 800041c:	18c0      	adds	r0, r0, r3
 800041e:	4284      	cmp	r4, r0
 8000420:	d200      	bcs.n	8000424 <__aeabi_ddiv+0x1c8>
 8000422:	e1a0      	b.n	8000766 <__aeabi_ddiv+0x50a>
 8000424:	d100      	bne.n	8000428 <__aeabi_ddiv+0x1cc>
 8000426:	e19b      	b.n	8000760 <__aeabi_ddiv+0x504>
 8000428:	4688      	mov	r8, r1
 800042a:	1bae      	subs	r6, r5, r6
 800042c:	42b5      	cmp	r5, r6
 800042e:	41ad      	sbcs	r5, r5
 8000430:	1a80      	subs	r0, r0, r2
 8000432:	426d      	negs	r5, r5
 8000434:	1b40      	subs	r0, r0, r5
 8000436:	4284      	cmp	r4, r0
 8000438:	d100      	bne.n	800043c <__aeabi_ddiv+0x1e0>
 800043a:	e1d5      	b.n	80007e8 <__aeabi_ddiv+0x58c>
 800043c:	4649      	mov	r1, r9
 800043e:	f7ff fee9 	bl	8000214 <__aeabi_uidivmod>
 8000442:	9a01      	ldr	r2, [sp, #4]
 8000444:	040b      	lsls	r3, r1, #16
 8000446:	4342      	muls	r2, r0
 8000448:	0c31      	lsrs	r1, r6, #16
 800044a:	0005      	movs	r5, r0
 800044c:	4319      	orrs	r1, r3
 800044e:	428a      	cmp	r2, r1
 8000450:	d900      	bls.n	8000454 <__aeabi_ddiv+0x1f8>
 8000452:	e16c      	b.n	800072e <__aeabi_ddiv+0x4d2>
 8000454:	1a88      	subs	r0, r1, r2
 8000456:	4649      	mov	r1, r9
 8000458:	f7ff fedc 	bl	8000214 <__aeabi_uidivmod>
 800045c:	9a01      	ldr	r2, [sp, #4]
 800045e:	0436      	lsls	r6, r6, #16
 8000460:	4342      	muls	r2, r0
 8000462:	0409      	lsls	r1, r1, #16
 8000464:	0c36      	lsrs	r6, r6, #16
 8000466:	0003      	movs	r3, r0
 8000468:	430e      	orrs	r6, r1
 800046a:	42b2      	cmp	r2, r6
 800046c:	d900      	bls.n	8000470 <__aeabi_ddiv+0x214>
 800046e:	e153      	b.n	8000718 <__aeabi_ddiv+0x4bc>
 8000470:	9803      	ldr	r0, [sp, #12]
 8000472:	1ab6      	subs	r6, r6, r2
 8000474:	0002      	movs	r2, r0
 8000476:	042d      	lsls	r5, r5, #16
 8000478:	431d      	orrs	r5, r3
 800047a:	9f02      	ldr	r7, [sp, #8]
 800047c:	042b      	lsls	r3, r5, #16
 800047e:	0c1b      	lsrs	r3, r3, #16
 8000480:	435a      	muls	r2, r3
 8000482:	437b      	muls	r3, r7
 8000484:	469c      	mov	ip, r3
 8000486:	0c29      	lsrs	r1, r5, #16
 8000488:	4348      	muls	r0, r1
 800048a:	0c13      	lsrs	r3, r2, #16
 800048c:	4484      	add	ip, r0
 800048e:	4463      	add	r3, ip
 8000490:	4379      	muls	r1, r7
 8000492:	4298      	cmp	r0, r3
 8000494:	d903      	bls.n	800049e <__aeabi_ddiv+0x242>
 8000496:	2080      	movs	r0, #128	; 0x80
 8000498:	0240      	lsls	r0, r0, #9
 800049a:	4684      	mov	ip, r0
 800049c:	4461      	add	r1, ip
 800049e:	0c18      	lsrs	r0, r3, #16
 80004a0:	0412      	lsls	r2, r2, #16
 80004a2:	041b      	lsls	r3, r3, #16
 80004a4:	0c12      	lsrs	r2, r2, #16
 80004a6:	1841      	adds	r1, r0, r1
 80004a8:	189b      	adds	r3, r3, r2
 80004aa:	428e      	cmp	r6, r1
 80004ac:	d200      	bcs.n	80004b0 <__aeabi_ddiv+0x254>
 80004ae:	e0ff      	b.n	80006b0 <__aeabi_ddiv+0x454>
 80004b0:	d100      	bne.n	80004b4 <__aeabi_ddiv+0x258>
 80004b2:	e0fa      	b.n	80006aa <__aeabi_ddiv+0x44e>
 80004b4:	2301      	movs	r3, #1
 80004b6:	431d      	orrs	r5, r3
 80004b8:	4a49      	ldr	r2, [pc, #292]	; (80005e0 <__aeabi_ddiv+0x384>)
 80004ba:	445a      	add	r2, fp
 80004bc:	2a00      	cmp	r2, #0
 80004be:	dc00      	bgt.n	80004c2 <__aeabi_ddiv+0x266>
 80004c0:	e0aa      	b.n	8000618 <__aeabi_ddiv+0x3bc>
 80004c2:	076b      	lsls	r3, r5, #29
 80004c4:	d000      	beq.n	80004c8 <__aeabi_ddiv+0x26c>
 80004c6:	e13d      	b.n	8000744 <__aeabi_ddiv+0x4e8>
 80004c8:	08ed      	lsrs	r5, r5, #3
 80004ca:	4643      	mov	r3, r8
 80004cc:	01db      	lsls	r3, r3, #7
 80004ce:	d506      	bpl.n	80004de <__aeabi_ddiv+0x282>
 80004d0:	4642      	mov	r2, r8
 80004d2:	4b44      	ldr	r3, [pc, #272]	; (80005e4 <__aeabi_ddiv+0x388>)
 80004d4:	401a      	ands	r2, r3
 80004d6:	4690      	mov	r8, r2
 80004d8:	2280      	movs	r2, #128	; 0x80
 80004da:	00d2      	lsls	r2, r2, #3
 80004dc:	445a      	add	r2, fp
 80004de:	4b42      	ldr	r3, [pc, #264]	; (80005e8 <__aeabi_ddiv+0x38c>)
 80004e0:	429a      	cmp	r2, r3
 80004e2:	dd00      	ble.n	80004e6 <__aeabi_ddiv+0x28a>
 80004e4:	e71f      	b.n	8000326 <__aeabi_ddiv+0xca>
 80004e6:	4643      	mov	r3, r8
 80004e8:	075b      	lsls	r3, r3, #29
 80004ea:	431d      	orrs	r5, r3
 80004ec:	4643      	mov	r3, r8
 80004ee:	0552      	lsls	r2, r2, #21
 80004f0:	025c      	lsls	r4, r3, #9
 80004f2:	0b24      	lsrs	r4, r4, #12
 80004f4:	0d53      	lsrs	r3, r2, #21
 80004f6:	e708      	b.n	800030a <__aeabi_ddiv+0xae>
 80004f8:	4652      	mov	r2, sl
 80004fa:	4322      	orrs	r2, r4
 80004fc:	d100      	bne.n	8000500 <__aeabi_ddiv+0x2a4>
 80004fe:	e07b      	b.n	80005f8 <__aeabi_ddiv+0x39c>
 8000500:	2c00      	cmp	r4, #0
 8000502:	d100      	bne.n	8000506 <__aeabi_ddiv+0x2aa>
 8000504:	e0fa      	b.n	80006fc <__aeabi_ddiv+0x4a0>
 8000506:	0020      	movs	r0, r4
 8000508:	f000 fdca 	bl	80010a0 <__clzsi2>
 800050c:	0002      	movs	r2, r0
 800050e:	3a0b      	subs	r2, #11
 8000510:	231d      	movs	r3, #29
 8000512:	0001      	movs	r1, r0
 8000514:	1a9b      	subs	r3, r3, r2
 8000516:	4652      	mov	r2, sl
 8000518:	3908      	subs	r1, #8
 800051a:	40da      	lsrs	r2, r3
 800051c:	408c      	lsls	r4, r1
 800051e:	4314      	orrs	r4, r2
 8000520:	4652      	mov	r2, sl
 8000522:	408a      	lsls	r2, r1
 8000524:	4b31      	ldr	r3, [pc, #196]	; (80005ec <__aeabi_ddiv+0x390>)
 8000526:	4458      	add	r0, fp
 8000528:	469b      	mov	fp, r3
 800052a:	4483      	add	fp, r0
 800052c:	2000      	movs	r0, #0
 800052e:	e6d5      	b.n	80002dc <__aeabi_ddiv+0x80>
 8000530:	464b      	mov	r3, r9
 8000532:	4323      	orrs	r3, r4
 8000534:	4698      	mov	r8, r3
 8000536:	d044      	beq.n	80005c2 <__aeabi_ddiv+0x366>
 8000538:	2c00      	cmp	r4, #0
 800053a:	d100      	bne.n	800053e <__aeabi_ddiv+0x2e2>
 800053c:	e0ce      	b.n	80006dc <__aeabi_ddiv+0x480>
 800053e:	0020      	movs	r0, r4
 8000540:	f000 fdae 	bl	80010a0 <__clzsi2>
 8000544:	0001      	movs	r1, r0
 8000546:	0002      	movs	r2, r0
 8000548:	390b      	subs	r1, #11
 800054a:	231d      	movs	r3, #29
 800054c:	1a5b      	subs	r3, r3, r1
 800054e:	4649      	mov	r1, r9
 8000550:	0010      	movs	r0, r2
 8000552:	40d9      	lsrs	r1, r3
 8000554:	3808      	subs	r0, #8
 8000556:	4084      	lsls	r4, r0
 8000558:	000b      	movs	r3, r1
 800055a:	464d      	mov	r5, r9
 800055c:	4323      	orrs	r3, r4
 800055e:	4698      	mov	r8, r3
 8000560:	4085      	lsls	r5, r0
 8000562:	4823      	ldr	r0, [pc, #140]	; (80005f0 <__aeabi_ddiv+0x394>)
 8000564:	1a83      	subs	r3, r0, r2
 8000566:	469b      	mov	fp, r3
 8000568:	2300      	movs	r3, #0
 800056a:	4699      	mov	r9, r3
 800056c:	9300      	str	r3, [sp, #0]
 800056e:	e69a      	b.n	80002a6 <__aeabi_ddiv+0x4a>
 8000570:	464b      	mov	r3, r9
 8000572:	4323      	orrs	r3, r4
 8000574:	4698      	mov	r8, r3
 8000576:	d11d      	bne.n	80005b4 <__aeabi_ddiv+0x358>
 8000578:	2308      	movs	r3, #8
 800057a:	4699      	mov	r9, r3
 800057c:	3b06      	subs	r3, #6
 800057e:	2500      	movs	r5, #0
 8000580:	4683      	mov	fp, r0
 8000582:	9300      	str	r3, [sp, #0]
 8000584:	e68f      	b.n	80002a6 <__aeabi_ddiv+0x4a>
 8000586:	4652      	mov	r2, sl
 8000588:	4322      	orrs	r2, r4
 800058a:	d109      	bne.n	80005a0 <__aeabi_ddiv+0x344>
 800058c:	2302      	movs	r3, #2
 800058e:	4649      	mov	r1, r9
 8000590:	4319      	orrs	r1, r3
 8000592:	4b18      	ldr	r3, [pc, #96]	; (80005f4 <__aeabi_ddiv+0x398>)
 8000594:	4689      	mov	r9, r1
 8000596:	469c      	mov	ip, r3
 8000598:	2400      	movs	r4, #0
 800059a:	2002      	movs	r0, #2
 800059c:	44e3      	add	fp, ip
 800059e:	e69d      	b.n	80002dc <__aeabi_ddiv+0x80>
 80005a0:	2303      	movs	r3, #3
 80005a2:	464a      	mov	r2, r9
 80005a4:	431a      	orrs	r2, r3
 80005a6:	4b13      	ldr	r3, [pc, #76]	; (80005f4 <__aeabi_ddiv+0x398>)
 80005a8:	4691      	mov	r9, r2
 80005aa:	469c      	mov	ip, r3
 80005ac:	4652      	mov	r2, sl
 80005ae:	2003      	movs	r0, #3
 80005b0:	44e3      	add	fp, ip
 80005b2:	e693      	b.n	80002dc <__aeabi_ddiv+0x80>
 80005b4:	230c      	movs	r3, #12
 80005b6:	4699      	mov	r9, r3
 80005b8:	3b09      	subs	r3, #9
 80005ba:	46a0      	mov	r8, r4
 80005bc:	4683      	mov	fp, r0
 80005be:	9300      	str	r3, [sp, #0]
 80005c0:	e671      	b.n	80002a6 <__aeabi_ddiv+0x4a>
 80005c2:	2304      	movs	r3, #4
 80005c4:	4699      	mov	r9, r3
 80005c6:	2300      	movs	r3, #0
 80005c8:	469b      	mov	fp, r3
 80005ca:	3301      	adds	r3, #1
 80005cc:	2500      	movs	r5, #0
 80005ce:	9300      	str	r3, [sp, #0]
 80005d0:	e669      	b.n	80002a6 <__aeabi_ddiv+0x4a>
 80005d2:	46c0      	nop			; (mov r8, r8)
 80005d4:	000007ff 	.word	0x000007ff
 80005d8:	fffffc01 	.word	0xfffffc01
 80005dc:	08002314 	.word	0x08002314
 80005e0:	000003ff 	.word	0x000003ff
 80005e4:	feffffff 	.word	0xfeffffff
 80005e8:	000007fe 	.word	0x000007fe
 80005ec:	000003f3 	.word	0x000003f3
 80005f0:	fffffc0d 	.word	0xfffffc0d
 80005f4:	fffff801 	.word	0xfffff801
 80005f8:	4649      	mov	r1, r9
 80005fa:	2301      	movs	r3, #1
 80005fc:	4319      	orrs	r1, r3
 80005fe:	4689      	mov	r9, r1
 8000600:	2400      	movs	r4, #0
 8000602:	2001      	movs	r0, #1
 8000604:	e66a      	b.n	80002dc <__aeabi_ddiv+0x80>
 8000606:	2300      	movs	r3, #0
 8000608:	2480      	movs	r4, #128	; 0x80
 800060a:	469a      	mov	sl, r3
 800060c:	2500      	movs	r5, #0
 800060e:	4b8a      	ldr	r3, [pc, #552]	; (8000838 <__aeabi_ddiv+0x5dc>)
 8000610:	0324      	lsls	r4, r4, #12
 8000612:	e67a      	b.n	800030a <__aeabi_ddiv+0xae>
 8000614:	2501      	movs	r5, #1
 8000616:	426d      	negs	r5, r5
 8000618:	2301      	movs	r3, #1
 800061a:	1a9b      	subs	r3, r3, r2
 800061c:	2b38      	cmp	r3, #56	; 0x38
 800061e:	dd00      	ble.n	8000622 <__aeabi_ddiv+0x3c6>
 8000620:	e670      	b.n	8000304 <__aeabi_ddiv+0xa8>
 8000622:	2b1f      	cmp	r3, #31
 8000624:	dc00      	bgt.n	8000628 <__aeabi_ddiv+0x3cc>
 8000626:	e0bf      	b.n	80007a8 <__aeabi_ddiv+0x54c>
 8000628:	211f      	movs	r1, #31
 800062a:	4249      	negs	r1, r1
 800062c:	1a8a      	subs	r2, r1, r2
 800062e:	4641      	mov	r1, r8
 8000630:	40d1      	lsrs	r1, r2
 8000632:	000a      	movs	r2, r1
 8000634:	2b20      	cmp	r3, #32
 8000636:	d004      	beq.n	8000642 <__aeabi_ddiv+0x3e6>
 8000638:	4641      	mov	r1, r8
 800063a:	4b80      	ldr	r3, [pc, #512]	; (800083c <__aeabi_ddiv+0x5e0>)
 800063c:	445b      	add	r3, fp
 800063e:	4099      	lsls	r1, r3
 8000640:	430d      	orrs	r5, r1
 8000642:	1e6b      	subs	r3, r5, #1
 8000644:	419d      	sbcs	r5, r3
 8000646:	2307      	movs	r3, #7
 8000648:	432a      	orrs	r2, r5
 800064a:	001d      	movs	r5, r3
 800064c:	2400      	movs	r4, #0
 800064e:	4015      	ands	r5, r2
 8000650:	4213      	tst	r3, r2
 8000652:	d100      	bne.n	8000656 <__aeabi_ddiv+0x3fa>
 8000654:	e0d4      	b.n	8000800 <__aeabi_ddiv+0x5a4>
 8000656:	210f      	movs	r1, #15
 8000658:	2300      	movs	r3, #0
 800065a:	4011      	ands	r1, r2
 800065c:	2904      	cmp	r1, #4
 800065e:	d100      	bne.n	8000662 <__aeabi_ddiv+0x406>
 8000660:	e0cb      	b.n	80007fa <__aeabi_ddiv+0x59e>
 8000662:	1d11      	adds	r1, r2, #4
 8000664:	4291      	cmp	r1, r2
 8000666:	4192      	sbcs	r2, r2
 8000668:	4252      	negs	r2, r2
 800066a:	189b      	adds	r3, r3, r2
 800066c:	000a      	movs	r2, r1
 800066e:	0219      	lsls	r1, r3, #8
 8000670:	d400      	bmi.n	8000674 <__aeabi_ddiv+0x418>
 8000672:	e0c2      	b.n	80007fa <__aeabi_ddiv+0x59e>
 8000674:	2301      	movs	r3, #1
 8000676:	2400      	movs	r4, #0
 8000678:	2500      	movs	r5, #0
 800067a:	e646      	b.n	800030a <__aeabi_ddiv+0xae>
 800067c:	2380      	movs	r3, #128	; 0x80
 800067e:	4641      	mov	r1, r8
 8000680:	031b      	lsls	r3, r3, #12
 8000682:	4219      	tst	r1, r3
 8000684:	d008      	beq.n	8000698 <__aeabi_ddiv+0x43c>
 8000686:	421c      	tst	r4, r3
 8000688:	d106      	bne.n	8000698 <__aeabi_ddiv+0x43c>
 800068a:	431c      	orrs	r4, r3
 800068c:	0324      	lsls	r4, r4, #12
 800068e:	46ba      	mov	sl, r7
 8000690:	0015      	movs	r5, r2
 8000692:	4b69      	ldr	r3, [pc, #420]	; (8000838 <__aeabi_ddiv+0x5dc>)
 8000694:	0b24      	lsrs	r4, r4, #12
 8000696:	e638      	b.n	800030a <__aeabi_ddiv+0xae>
 8000698:	2480      	movs	r4, #128	; 0x80
 800069a:	4643      	mov	r3, r8
 800069c:	0324      	lsls	r4, r4, #12
 800069e:	431c      	orrs	r4, r3
 80006a0:	0324      	lsls	r4, r4, #12
 80006a2:	46b2      	mov	sl, r6
 80006a4:	4b64      	ldr	r3, [pc, #400]	; (8000838 <__aeabi_ddiv+0x5dc>)
 80006a6:	0b24      	lsrs	r4, r4, #12
 80006a8:	e62f      	b.n	800030a <__aeabi_ddiv+0xae>
 80006aa:	2b00      	cmp	r3, #0
 80006ac:	d100      	bne.n	80006b0 <__aeabi_ddiv+0x454>
 80006ae:	e703      	b.n	80004b8 <__aeabi_ddiv+0x25c>
 80006b0:	19a6      	adds	r6, r4, r6
 80006b2:	1e68      	subs	r0, r5, #1
 80006b4:	42a6      	cmp	r6, r4
 80006b6:	d200      	bcs.n	80006ba <__aeabi_ddiv+0x45e>
 80006b8:	e08d      	b.n	80007d6 <__aeabi_ddiv+0x57a>
 80006ba:	428e      	cmp	r6, r1
 80006bc:	d200      	bcs.n	80006c0 <__aeabi_ddiv+0x464>
 80006be:	e0a3      	b.n	8000808 <__aeabi_ddiv+0x5ac>
 80006c0:	d100      	bne.n	80006c4 <__aeabi_ddiv+0x468>
 80006c2:	e0b3      	b.n	800082c <__aeabi_ddiv+0x5d0>
 80006c4:	0005      	movs	r5, r0
 80006c6:	e6f5      	b.n	80004b4 <__aeabi_ddiv+0x258>
 80006c8:	42aa      	cmp	r2, r5
 80006ca:	d900      	bls.n	80006ce <__aeabi_ddiv+0x472>
 80006cc:	e639      	b.n	8000342 <__aeabi_ddiv+0xe6>
 80006ce:	4643      	mov	r3, r8
 80006d0:	07de      	lsls	r6, r3, #31
 80006d2:	0858      	lsrs	r0, r3, #1
 80006d4:	086b      	lsrs	r3, r5, #1
 80006d6:	431e      	orrs	r6, r3
 80006d8:	07ed      	lsls	r5, r5, #31
 80006da:	e639      	b.n	8000350 <__aeabi_ddiv+0xf4>
 80006dc:	4648      	mov	r0, r9
 80006de:	f000 fcdf 	bl	80010a0 <__clzsi2>
 80006e2:	0001      	movs	r1, r0
 80006e4:	0002      	movs	r2, r0
 80006e6:	3115      	adds	r1, #21
 80006e8:	3220      	adds	r2, #32
 80006ea:	291c      	cmp	r1, #28
 80006ec:	dc00      	bgt.n	80006f0 <__aeabi_ddiv+0x494>
 80006ee:	e72c      	b.n	800054a <__aeabi_ddiv+0x2ee>
 80006f0:	464b      	mov	r3, r9
 80006f2:	3808      	subs	r0, #8
 80006f4:	4083      	lsls	r3, r0
 80006f6:	2500      	movs	r5, #0
 80006f8:	4698      	mov	r8, r3
 80006fa:	e732      	b.n	8000562 <__aeabi_ddiv+0x306>
 80006fc:	f000 fcd0 	bl	80010a0 <__clzsi2>
 8000700:	0003      	movs	r3, r0
 8000702:	001a      	movs	r2, r3
 8000704:	3215      	adds	r2, #21
 8000706:	3020      	adds	r0, #32
 8000708:	2a1c      	cmp	r2, #28
 800070a:	dc00      	bgt.n	800070e <__aeabi_ddiv+0x4b2>
 800070c:	e700      	b.n	8000510 <__aeabi_ddiv+0x2b4>
 800070e:	4654      	mov	r4, sl
 8000710:	3b08      	subs	r3, #8
 8000712:	2200      	movs	r2, #0
 8000714:	409c      	lsls	r4, r3
 8000716:	e705      	b.n	8000524 <__aeabi_ddiv+0x2c8>
 8000718:	1936      	adds	r6, r6, r4
 800071a:	3b01      	subs	r3, #1
 800071c:	42b4      	cmp	r4, r6
 800071e:	d900      	bls.n	8000722 <__aeabi_ddiv+0x4c6>
 8000720:	e6a6      	b.n	8000470 <__aeabi_ddiv+0x214>
 8000722:	42b2      	cmp	r2, r6
 8000724:	d800      	bhi.n	8000728 <__aeabi_ddiv+0x4cc>
 8000726:	e6a3      	b.n	8000470 <__aeabi_ddiv+0x214>
 8000728:	1e83      	subs	r3, r0, #2
 800072a:	1936      	adds	r6, r6, r4
 800072c:	e6a0      	b.n	8000470 <__aeabi_ddiv+0x214>
 800072e:	1909      	adds	r1, r1, r4
 8000730:	3d01      	subs	r5, #1
 8000732:	428c      	cmp	r4, r1
 8000734:	d900      	bls.n	8000738 <__aeabi_ddiv+0x4dc>
 8000736:	e68d      	b.n	8000454 <__aeabi_ddiv+0x1f8>
 8000738:	428a      	cmp	r2, r1
 800073a:	d800      	bhi.n	800073e <__aeabi_ddiv+0x4e2>
 800073c:	e68a      	b.n	8000454 <__aeabi_ddiv+0x1f8>
 800073e:	1e85      	subs	r5, r0, #2
 8000740:	1909      	adds	r1, r1, r4
 8000742:	e687      	b.n	8000454 <__aeabi_ddiv+0x1f8>
 8000744:	230f      	movs	r3, #15
 8000746:	402b      	ands	r3, r5
 8000748:	2b04      	cmp	r3, #4
 800074a:	d100      	bne.n	800074e <__aeabi_ddiv+0x4f2>
 800074c:	e6bc      	b.n	80004c8 <__aeabi_ddiv+0x26c>
 800074e:	2305      	movs	r3, #5
 8000750:	425b      	negs	r3, r3
 8000752:	42ab      	cmp	r3, r5
 8000754:	419b      	sbcs	r3, r3
 8000756:	3504      	adds	r5, #4
 8000758:	425b      	negs	r3, r3
 800075a:	08ed      	lsrs	r5, r5, #3
 800075c:	4498      	add	r8, r3
 800075e:	e6b4      	b.n	80004ca <__aeabi_ddiv+0x26e>
 8000760:	42af      	cmp	r7, r5
 8000762:	d900      	bls.n	8000766 <__aeabi_ddiv+0x50a>
 8000764:	e660      	b.n	8000428 <__aeabi_ddiv+0x1cc>
 8000766:	4282      	cmp	r2, r0
 8000768:	d804      	bhi.n	8000774 <__aeabi_ddiv+0x518>
 800076a:	d000      	beq.n	800076e <__aeabi_ddiv+0x512>
 800076c:	e65c      	b.n	8000428 <__aeabi_ddiv+0x1cc>
 800076e:	42ae      	cmp	r6, r5
 8000770:	d800      	bhi.n	8000774 <__aeabi_ddiv+0x518>
 8000772:	e659      	b.n	8000428 <__aeabi_ddiv+0x1cc>
 8000774:	2302      	movs	r3, #2
 8000776:	425b      	negs	r3, r3
 8000778:	469c      	mov	ip, r3
 800077a:	9b00      	ldr	r3, [sp, #0]
 800077c:	44e0      	add	r8, ip
 800077e:	469c      	mov	ip, r3
 8000780:	4465      	add	r5, ip
 8000782:	429d      	cmp	r5, r3
 8000784:	419b      	sbcs	r3, r3
 8000786:	425b      	negs	r3, r3
 8000788:	191b      	adds	r3, r3, r4
 800078a:	18c0      	adds	r0, r0, r3
 800078c:	e64d      	b.n	800042a <__aeabi_ddiv+0x1ce>
 800078e:	428a      	cmp	r2, r1
 8000790:	d800      	bhi.n	8000794 <__aeabi_ddiv+0x538>
 8000792:	e60e      	b.n	80003b2 <__aeabi_ddiv+0x156>
 8000794:	1e83      	subs	r3, r0, #2
 8000796:	1909      	adds	r1, r1, r4
 8000798:	e60b      	b.n	80003b2 <__aeabi_ddiv+0x156>
 800079a:	428a      	cmp	r2, r1
 800079c:	d800      	bhi.n	80007a0 <__aeabi_ddiv+0x544>
 800079e:	e5f4      	b.n	800038a <__aeabi_ddiv+0x12e>
 80007a0:	1e83      	subs	r3, r0, #2
 80007a2:	4698      	mov	r8, r3
 80007a4:	1909      	adds	r1, r1, r4
 80007a6:	e5f0      	b.n	800038a <__aeabi_ddiv+0x12e>
 80007a8:	4925      	ldr	r1, [pc, #148]	; (8000840 <__aeabi_ddiv+0x5e4>)
 80007aa:	0028      	movs	r0, r5
 80007ac:	4459      	add	r1, fp
 80007ae:	408d      	lsls	r5, r1
 80007b0:	4642      	mov	r2, r8
 80007b2:	408a      	lsls	r2, r1
 80007b4:	1e69      	subs	r1, r5, #1
 80007b6:	418d      	sbcs	r5, r1
 80007b8:	4641      	mov	r1, r8
 80007ba:	40d8      	lsrs	r0, r3
 80007bc:	40d9      	lsrs	r1, r3
 80007be:	4302      	orrs	r2, r0
 80007c0:	432a      	orrs	r2, r5
 80007c2:	000b      	movs	r3, r1
 80007c4:	0751      	lsls	r1, r2, #29
 80007c6:	d100      	bne.n	80007ca <__aeabi_ddiv+0x56e>
 80007c8:	e751      	b.n	800066e <__aeabi_ddiv+0x412>
 80007ca:	210f      	movs	r1, #15
 80007cc:	4011      	ands	r1, r2
 80007ce:	2904      	cmp	r1, #4
 80007d0:	d000      	beq.n	80007d4 <__aeabi_ddiv+0x578>
 80007d2:	e746      	b.n	8000662 <__aeabi_ddiv+0x406>
 80007d4:	e74b      	b.n	800066e <__aeabi_ddiv+0x412>
 80007d6:	0005      	movs	r5, r0
 80007d8:	428e      	cmp	r6, r1
 80007da:	d000      	beq.n	80007de <__aeabi_ddiv+0x582>
 80007dc:	e66a      	b.n	80004b4 <__aeabi_ddiv+0x258>
 80007de:	9a00      	ldr	r2, [sp, #0]
 80007e0:	4293      	cmp	r3, r2
 80007e2:	d000      	beq.n	80007e6 <__aeabi_ddiv+0x58a>
 80007e4:	e666      	b.n	80004b4 <__aeabi_ddiv+0x258>
 80007e6:	e667      	b.n	80004b8 <__aeabi_ddiv+0x25c>
 80007e8:	4a16      	ldr	r2, [pc, #88]	; (8000844 <__aeabi_ddiv+0x5e8>)
 80007ea:	445a      	add	r2, fp
 80007ec:	2a00      	cmp	r2, #0
 80007ee:	dc00      	bgt.n	80007f2 <__aeabi_ddiv+0x596>
 80007f0:	e710      	b.n	8000614 <__aeabi_ddiv+0x3b8>
 80007f2:	2301      	movs	r3, #1
 80007f4:	2500      	movs	r5, #0
 80007f6:	4498      	add	r8, r3
 80007f8:	e667      	b.n	80004ca <__aeabi_ddiv+0x26e>
 80007fa:	075d      	lsls	r5, r3, #29
 80007fc:	025b      	lsls	r3, r3, #9
 80007fe:	0b1c      	lsrs	r4, r3, #12
 8000800:	08d2      	lsrs	r2, r2, #3
 8000802:	2300      	movs	r3, #0
 8000804:	4315      	orrs	r5, r2
 8000806:	e580      	b.n	800030a <__aeabi_ddiv+0xae>
 8000808:	9800      	ldr	r0, [sp, #0]
 800080a:	3d02      	subs	r5, #2
 800080c:	0042      	lsls	r2, r0, #1
 800080e:	4282      	cmp	r2, r0
 8000810:	41bf      	sbcs	r7, r7
 8000812:	427f      	negs	r7, r7
 8000814:	193c      	adds	r4, r7, r4
 8000816:	1936      	adds	r6, r6, r4
 8000818:	9200      	str	r2, [sp, #0]
 800081a:	e7dd      	b.n	80007d8 <__aeabi_ddiv+0x57c>
 800081c:	2480      	movs	r4, #128	; 0x80
 800081e:	4643      	mov	r3, r8
 8000820:	0324      	lsls	r4, r4, #12
 8000822:	431c      	orrs	r4, r3
 8000824:	0324      	lsls	r4, r4, #12
 8000826:	4b04      	ldr	r3, [pc, #16]	; (8000838 <__aeabi_ddiv+0x5dc>)
 8000828:	0b24      	lsrs	r4, r4, #12
 800082a:	e56e      	b.n	800030a <__aeabi_ddiv+0xae>
 800082c:	9a00      	ldr	r2, [sp, #0]
 800082e:	429a      	cmp	r2, r3
 8000830:	d3ea      	bcc.n	8000808 <__aeabi_ddiv+0x5ac>
 8000832:	0005      	movs	r5, r0
 8000834:	e7d3      	b.n	80007de <__aeabi_ddiv+0x582>
 8000836:	46c0      	nop			; (mov r8, r8)
 8000838:	000007ff 	.word	0x000007ff
 800083c:	0000043e 	.word	0x0000043e
 8000840:	0000041e 	.word	0x0000041e
 8000844:	000003ff 	.word	0x000003ff

08000848 <__aeabi_dsub>:
 8000848:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800084a:	4657      	mov	r7, sl
 800084c:	464e      	mov	r6, r9
 800084e:	4645      	mov	r5, r8
 8000850:	46de      	mov	lr, fp
 8000852:	b5e0      	push	{r5, r6, r7, lr}
 8000854:	001e      	movs	r6, r3
 8000856:	0017      	movs	r7, r2
 8000858:	004a      	lsls	r2, r1, #1
 800085a:	030b      	lsls	r3, r1, #12
 800085c:	0d52      	lsrs	r2, r2, #21
 800085e:	0a5b      	lsrs	r3, r3, #9
 8000860:	4690      	mov	r8, r2
 8000862:	0f42      	lsrs	r2, r0, #29
 8000864:	431a      	orrs	r2, r3
 8000866:	0fcd      	lsrs	r5, r1, #31
 8000868:	4ccd      	ldr	r4, [pc, #820]	; (8000ba0 <__aeabi_dsub+0x358>)
 800086a:	0331      	lsls	r1, r6, #12
 800086c:	00c3      	lsls	r3, r0, #3
 800086e:	4694      	mov	ip, r2
 8000870:	0070      	lsls	r0, r6, #1
 8000872:	0f7a      	lsrs	r2, r7, #29
 8000874:	0a49      	lsrs	r1, r1, #9
 8000876:	00ff      	lsls	r7, r7, #3
 8000878:	469a      	mov	sl, r3
 800087a:	46b9      	mov	r9, r7
 800087c:	0d40      	lsrs	r0, r0, #21
 800087e:	0ff6      	lsrs	r6, r6, #31
 8000880:	4311      	orrs	r1, r2
 8000882:	42a0      	cmp	r0, r4
 8000884:	d100      	bne.n	8000888 <__aeabi_dsub+0x40>
 8000886:	e0b1      	b.n	80009ec <__aeabi_dsub+0x1a4>
 8000888:	2201      	movs	r2, #1
 800088a:	4056      	eors	r6, r2
 800088c:	46b3      	mov	fp, r6
 800088e:	42b5      	cmp	r5, r6
 8000890:	d100      	bne.n	8000894 <__aeabi_dsub+0x4c>
 8000892:	e088      	b.n	80009a6 <__aeabi_dsub+0x15e>
 8000894:	4642      	mov	r2, r8
 8000896:	1a12      	subs	r2, r2, r0
 8000898:	2a00      	cmp	r2, #0
 800089a:	dc00      	bgt.n	800089e <__aeabi_dsub+0x56>
 800089c:	e0ae      	b.n	80009fc <__aeabi_dsub+0x1b4>
 800089e:	2800      	cmp	r0, #0
 80008a0:	d100      	bne.n	80008a4 <__aeabi_dsub+0x5c>
 80008a2:	e0c1      	b.n	8000a28 <__aeabi_dsub+0x1e0>
 80008a4:	48be      	ldr	r0, [pc, #760]	; (8000ba0 <__aeabi_dsub+0x358>)
 80008a6:	4580      	cmp	r8, r0
 80008a8:	d100      	bne.n	80008ac <__aeabi_dsub+0x64>
 80008aa:	e151      	b.n	8000b50 <__aeabi_dsub+0x308>
 80008ac:	2080      	movs	r0, #128	; 0x80
 80008ae:	0400      	lsls	r0, r0, #16
 80008b0:	4301      	orrs	r1, r0
 80008b2:	2a38      	cmp	r2, #56	; 0x38
 80008b4:	dd00      	ble.n	80008b8 <__aeabi_dsub+0x70>
 80008b6:	e17b      	b.n	8000bb0 <__aeabi_dsub+0x368>
 80008b8:	2a1f      	cmp	r2, #31
 80008ba:	dd00      	ble.n	80008be <__aeabi_dsub+0x76>
 80008bc:	e1ee      	b.n	8000c9c <__aeabi_dsub+0x454>
 80008be:	2020      	movs	r0, #32
 80008c0:	003e      	movs	r6, r7
 80008c2:	1a80      	subs	r0, r0, r2
 80008c4:	000c      	movs	r4, r1
 80008c6:	40d6      	lsrs	r6, r2
 80008c8:	40d1      	lsrs	r1, r2
 80008ca:	4087      	lsls	r7, r0
 80008cc:	4662      	mov	r2, ip
 80008ce:	4084      	lsls	r4, r0
 80008d0:	1a52      	subs	r2, r2, r1
 80008d2:	1e78      	subs	r0, r7, #1
 80008d4:	4187      	sbcs	r7, r0
 80008d6:	4694      	mov	ip, r2
 80008d8:	4334      	orrs	r4, r6
 80008da:	4327      	orrs	r7, r4
 80008dc:	1bdc      	subs	r4, r3, r7
 80008de:	42a3      	cmp	r3, r4
 80008e0:	419b      	sbcs	r3, r3
 80008e2:	4662      	mov	r2, ip
 80008e4:	425b      	negs	r3, r3
 80008e6:	1ad3      	subs	r3, r2, r3
 80008e8:	4699      	mov	r9, r3
 80008ea:	464b      	mov	r3, r9
 80008ec:	021b      	lsls	r3, r3, #8
 80008ee:	d400      	bmi.n	80008f2 <__aeabi_dsub+0xaa>
 80008f0:	e118      	b.n	8000b24 <__aeabi_dsub+0x2dc>
 80008f2:	464b      	mov	r3, r9
 80008f4:	0258      	lsls	r0, r3, #9
 80008f6:	0a43      	lsrs	r3, r0, #9
 80008f8:	4699      	mov	r9, r3
 80008fa:	464b      	mov	r3, r9
 80008fc:	2b00      	cmp	r3, #0
 80008fe:	d100      	bne.n	8000902 <__aeabi_dsub+0xba>
 8000900:	e137      	b.n	8000b72 <__aeabi_dsub+0x32a>
 8000902:	4648      	mov	r0, r9
 8000904:	f000 fbcc 	bl	80010a0 <__clzsi2>
 8000908:	0001      	movs	r1, r0
 800090a:	3908      	subs	r1, #8
 800090c:	2320      	movs	r3, #32
 800090e:	0022      	movs	r2, r4
 8000910:	4648      	mov	r0, r9
 8000912:	1a5b      	subs	r3, r3, r1
 8000914:	40da      	lsrs	r2, r3
 8000916:	4088      	lsls	r0, r1
 8000918:	408c      	lsls	r4, r1
 800091a:	4643      	mov	r3, r8
 800091c:	4310      	orrs	r0, r2
 800091e:	4588      	cmp	r8, r1
 8000920:	dd00      	ble.n	8000924 <__aeabi_dsub+0xdc>
 8000922:	e136      	b.n	8000b92 <__aeabi_dsub+0x34a>
 8000924:	1ac9      	subs	r1, r1, r3
 8000926:	1c4b      	adds	r3, r1, #1
 8000928:	2b1f      	cmp	r3, #31
 800092a:	dd00      	ble.n	800092e <__aeabi_dsub+0xe6>
 800092c:	e0ea      	b.n	8000b04 <__aeabi_dsub+0x2bc>
 800092e:	2220      	movs	r2, #32
 8000930:	0026      	movs	r6, r4
 8000932:	1ad2      	subs	r2, r2, r3
 8000934:	0001      	movs	r1, r0
 8000936:	4094      	lsls	r4, r2
 8000938:	40de      	lsrs	r6, r3
 800093a:	40d8      	lsrs	r0, r3
 800093c:	2300      	movs	r3, #0
 800093e:	4091      	lsls	r1, r2
 8000940:	1e62      	subs	r2, r4, #1
 8000942:	4194      	sbcs	r4, r2
 8000944:	4681      	mov	r9, r0
 8000946:	4698      	mov	r8, r3
 8000948:	4331      	orrs	r1, r6
 800094a:	430c      	orrs	r4, r1
 800094c:	0763      	lsls	r3, r4, #29
 800094e:	d009      	beq.n	8000964 <__aeabi_dsub+0x11c>
 8000950:	230f      	movs	r3, #15
 8000952:	4023      	ands	r3, r4
 8000954:	2b04      	cmp	r3, #4
 8000956:	d005      	beq.n	8000964 <__aeabi_dsub+0x11c>
 8000958:	1d23      	adds	r3, r4, #4
 800095a:	42a3      	cmp	r3, r4
 800095c:	41a4      	sbcs	r4, r4
 800095e:	4264      	negs	r4, r4
 8000960:	44a1      	add	r9, r4
 8000962:	001c      	movs	r4, r3
 8000964:	464b      	mov	r3, r9
 8000966:	021b      	lsls	r3, r3, #8
 8000968:	d400      	bmi.n	800096c <__aeabi_dsub+0x124>
 800096a:	e0de      	b.n	8000b2a <__aeabi_dsub+0x2e2>
 800096c:	4641      	mov	r1, r8
 800096e:	4b8c      	ldr	r3, [pc, #560]	; (8000ba0 <__aeabi_dsub+0x358>)
 8000970:	3101      	adds	r1, #1
 8000972:	4299      	cmp	r1, r3
 8000974:	d100      	bne.n	8000978 <__aeabi_dsub+0x130>
 8000976:	e0e7      	b.n	8000b48 <__aeabi_dsub+0x300>
 8000978:	464b      	mov	r3, r9
 800097a:	488a      	ldr	r0, [pc, #552]	; (8000ba4 <__aeabi_dsub+0x35c>)
 800097c:	08e4      	lsrs	r4, r4, #3
 800097e:	4003      	ands	r3, r0
 8000980:	0018      	movs	r0, r3
 8000982:	0549      	lsls	r1, r1, #21
 8000984:	075b      	lsls	r3, r3, #29
 8000986:	0240      	lsls	r0, r0, #9
 8000988:	4323      	orrs	r3, r4
 800098a:	0d4a      	lsrs	r2, r1, #21
 800098c:	0b04      	lsrs	r4, r0, #12
 800098e:	0512      	lsls	r2, r2, #20
 8000990:	07ed      	lsls	r5, r5, #31
 8000992:	4322      	orrs	r2, r4
 8000994:	432a      	orrs	r2, r5
 8000996:	0018      	movs	r0, r3
 8000998:	0011      	movs	r1, r2
 800099a:	bcf0      	pop	{r4, r5, r6, r7}
 800099c:	46bb      	mov	fp, r7
 800099e:	46b2      	mov	sl, r6
 80009a0:	46a9      	mov	r9, r5
 80009a2:	46a0      	mov	r8, r4
 80009a4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80009a6:	4642      	mov	r2, r8
 80009a8:	1a12      	subs	r2, r2, r0
 80009aa:	2a00      	cmp	r2, #0
 80009ac:	dd52      	ble.n	8000a54 <__aeabi_dsub+0x20c>
 80009ae:	2800      	cmp	r0, #0
 80009b0:	d100      	bne.n	80009b4 <__aeabi_dsub+0x16c>
 80009b2:	e09c      	b.n	8000aee <__aeabi_dsub+0x2a6>
 80009b4:	45a0      	cmp	r8, r4
 80009b6:	d100      	bne.n	80009ba <__aeabi_dsub+0x172>
 80009b8:	e0ca      	b.n	8000b50 <__aeabi_dsub+0x308>
 80009ba:	2080      	movs	r0, #128	; 0x80
 80009bc:	0400      	lsls	r0, r0, #16
 80009be:	4301      	orrs	r1, r0
 80009c0:	2a38      	cmp	r2, #56	; 0x38
 80009c2:	dd00      	ble.n	80009c6 <__aeabi_dsub+0x17e>
 80009c4:	e149      	b.n	8000c5a <__aeabi_dsub+0x412>
 80009c6:	2a1f      	cmp	r2, #31
 80009c8:	dc00      	bgt.n	80009cc <__aeabi_dsub+0x184>
 80009ca:	e197      	b.n	8000cfc <__aeabi_dsub+0x4b4>
 80009cc:	0010      	movs	r0, r2
 80009ce:	000e      	movs	r6, r1
 80009d0:	3820      	subs	r0, #32
 80009d2:	40c6      	lsrs	r6, r0
 80009d4:	2a20      	cmp	r2, #32
 80009d6:	d004      	beq.n	80009e2 <__aeabi_dsub+0x19a>
 80009d8:	2040      	movs	r0, #64	; 0x40
 80009da:	1a82      	subs	r2, r0, r2
 80009dc:	4091      	lsls	r1, r2
 80009de:	430f      	orrs	r7, r1
 80009e0:	46b9      	mov	r9, r7
 80009e2:	464c      	mov	r4, r9
 80009e4:	1e62      	subs	r2, r4, #1
 80009e6:	4194      	sbcs	r4, r2
 80009e8:	4334      	orrs	r4, r6
 80009ea:	e13a      	b.n	8000c62 <__aeabi_dsub+0x41a>
 80009ec:	000a      	movs	r2, r1
 80009ee:	433a      	orrs	r2, r7
 80009f0:	d028      	beq.n	8000a44 <__aeabi_dsub+0x1fc>
 80009f2:	46b3      	mov	fp, r6
 80009f4:	42b5      	cmp	r5, r6
 80009f6:	d02b      	beq.n	8000a50 <__aeabi_dsub+0x208>
 80009f8:	4a6b      	ldr	r2, [pc, #428]	; (8000ba8 <__aeabi_dsub+0x360>)
 80009fa:	4442      	add	r2, r8
 80009fc:	2a00      	cmp	r2, #0
 80009fe:	d05d      	beq.n	8000abc <__aeabi_dsub+0x274>
 8000a00:	4642      	mov	r2, r8
 8000a02:	4644      	mov	r4, r8
 8000a04:	1a82      	subs	r2, r0, r2
 8000a06:	2c00      	cmp	r4, #0
 8000a08:	d000      	beq.n	8000a0c <__aeabi_dsub+0x1c4>
 8000a0a:	e0f5      	b.n	8000bf8 <__aeabi_dsub+0x3b0>
 8000a0c:	4665      	mov	r5, ip
 8000a0e:	431d      	orrs	r5, r3
 8000a10:	d100      	bne.n	8000a14 <__aeabi_dsub+0x1cc>
 8000a12:	e19c      	b.n	8000d4e <__aeabi_dsub+0x506>
 8000a14:	1e55      	subs	r5, r2, #1
 8000a16:	2a01      	cmp	r2, #1
 8000a18:	d100      	bne.n	8000a1c <__aeabi_dsub+0x1d4>
 8000a1a:	e1fb      	b.n	8000e14 <__aeabi_dsub+0x5cc>
 8000a1c:	4c60      	ldr	r4, [pc, #384]	; (8000ba0 <__aeabi_dsub+0x358>)
 8000a1e:	42a2      	cmp	r2, r4
 8000a20:	d100      	bne.n	8000a24 <__aeabi_dsub+0x1dc>
 8000a22:	e1bd      	b.n	8000da0 <__aeabi_dsub+0x558>
 8000a24:	002a      	movs	r2, r5
 8000a26:	e0f0      	b.n	8000c0a <__aeabi_dsub+0x3c2>
 8000a28:	0008      	movs	r0, r1
 8000a2a:	4338      	orrs	r0, r7
 8000a2c:	d100      	bne.n	8000a30 <__aeabi_dsub+0x1e8>
 8000a2e:	e0c3      	b.n	8000bb8 <__aeabi_dsub+0x370>
 8000a30:	1e50      	subs	r0, r2, #1
 8000a32:	2a01      	cmp	r2, #1
 8000a34:	d100      	bne.n	8000a38 <__aeabi_dsub+0x1f0>
 8000a36:	e1a8      	b.n	8000d8a <__aeabi_dsub+0x542>
 8000a38:	4c59      	ldr	r4, [pc, #356]	; (8000ba0 <__aeabi_dsub+0x358>)
 8000a3a:	42a2      	cmp	r2, r4
 8000a3c:	d100      	bne.n	8000a40 <__aeabi_dsub+0x1f8>
 8000a3e:	e087      	b.n	8000b50 <__aeabi_dsub+0x308>
 8000a40:	0002      	movs	r2, r0
 8000a42:	e736      	b.n	80008b2 <__aeabi_dsub+0x6a>
 8000a44:	2201      	movs	r2, #1
 8000a46:	4056      	eors	r6, r2
 8000a48:	46b3      	mov	fp, r6
 8000a4a:	42b5      	cmp	r5, r6
 8000a4c:	d000      	beq.n	8000a50 <__aeabi_dsub+0x208>
 8000a4e:	e721      	b.n	8000894 <__aeabi_dsub+0x4c>
 8000a50:	4a55      	ldr	r2, [pc, #340]	; (8000ba8 <__aeabi_dsub+0x360>)
 8000a52:	4442      	add	r2, r8
 8000a54:	2a00      	cmp	r2, #0
 8000a56:	d100      	bne.n	8000a5a <__aeabi_dsub+0x212>
 8000a58:	e0b5      	b.n	8000bc6 <__aeabi_dsub+0x37e>
 8000a5a:	4642      	mov	r2, r8
 8000a5c:	4644      	mov	r4, r8
 8000a5e:	1a82      	subs	r2, r0, r2
 8000a60:	2c00      	cmp	r4, #0
 8000a62:	d100      	bne.n	8000a66 <__aeabi_dsub+0x21e>
 8000a64:	e138      	b.n	8000cd8 <__aeabi_dsub+0x490>
 8000a66:	4e4e      	ldr	r6, [pc, #312]	; (8000ba0 <__aeabi_dsub+0x358>)
 8000a68:	42b0      	cmp	r0, r6
 8000a6a:	d100      	bne.n	8000a6e <__aeabi_dsub+0x226>
 8000a6c:	e1de      	b.n	8000e2c <__aeabi_dsub+0x5e4>
 8000a6e:	2680      	movs	r6, #128	; 0x80
 8000a70:	4664      	mov	r4, ip
 8000a72:	0436      	lsls	r6, r6, #16
 8000a74:	4334      	orrs	r4, r6
 8000a76:	46a4      	mov	ip, r4
 8000a78:	2a38      	cmp	r2, #56	; 0x38
 8000a7a:	dd00      	ble.n	8000a7e <__aeabi_dsub+0x236>
 8000a7c:	e196      	b.n	8000dac <__aeabi_dsub+0x564>
 8000a7e:	2a1f      	cmp	r2, #31
 8000a80:	dd00      	ble.n	8000a84 <__aeabi_dsub+0x23c>
 8000a82:	e224      	b.n	8000ece <__aeabi_dsub+0x686>
 8000a84:	2620      	movs	r6, #32
 8000a86:	1ab4      	subs	r4, r6, r2
 8000a88:	46a2      	mov	sl, r4
 8000a8a:	4664      	mov	r4, ip
 8000a8c:	4656      	mov	r6, sl
 8000a8e:	40b4      	lsls	r4, r6
 8000a90:	46a1      	mov	r9, r4
 8000a92:	001c      	movs	r4, r3
 8000a94:	464e      	mov	r6, r9
 8000a96:	40d4      	lsrs	r4, r2
 8000a98:	4326      	orrs	r6, r4
 8000a9a:	0034      	movs	r4, r6
 8000a9c:	4656      	mov	r6, sl
 8000a9e:	40b3      	lsls	r3, r6
 8000aa0:	1e5e      	subs	r6, r3, #1
 8000aa2:	41b3      	sbcs	r3, r6
 8000aa4:	431c      	orrs	r4, r3
 8000aa6:	4663      	mov	r3, ip
 8000aa8:	40d3      	lsrs	r3, r2
 8000aaa:	18c9      	adds	r1, r1, r3
 8000aac:	19e4      	adds	r4, r4, r7
 8000aae:	42bc      	cmp	r4, r7
 8000ab0:	41bf      	sbcs	r7, r7
 8000ab2:	427f      	negs	r7, r7
 8000ab4:	46b9      	mov	r9, r7
 8000ab6:	4680      	mov	r8, r0
 8000ab8:	4489      	add	r9, r1
 8000aba:	e0d8      	b.n	8000c6e <__aeabi_dsub+0x426>
 8000abc:	4640      	mov	r0, r8
 8000abe:	4c3b      	ldr	r4, [pc, #236]	; (8000bac <__aeabi_dsub+0x364>)
 8000ac0:	3001      	adds	r0, #1
 8000ac2:	4220      	tst	r0, r4
 8000ac4:	d000      	beq.n	8000ac8 <__aeabi_dsub+0x280>
 8000ac6:	e0b4      	b.n	8000c32 <__aeabi_dsub+0x3ea>
 8000ac8:	4640      	mov	r0, r8
 8000aca:	2800      	cmp	r0, #0
 8000acc:	d000      	beq.n	8000ad0 <__aeabi_dsub+0x288>
 8000ace:	e144      	b.n	8000d5a <__aeabi_dsub+0x512>
 8000ad0:	4660      	mov	r0, ip
 8000ad2:	4318      	orrs	r0, r3
 8000ad4:	d100      	bne.n	8000ad8 <__aeabi_dsub+0x290>
 8000ad6:	e190      	b.n	8000dfa <__aeabi_dsub+0x5b2>
 8000ad8:	0008      	movs	r0, r1
 8000ada:	4338      	orrs	r0, r7
 8000adc:	d000      	beq.n	8000ae0 <__aeabi_dsub+0x298>
 8000ade:	e1aa      	b.n	8000e36 <__aeabi_dsub+0x5ee>
 8000ae0:	4661      	mov	r1, ip
 8000ae2:	08db      	lsrs	r3, r3, #3
 8000ae4:	0749      	lsls	r1, r1, #29
 8000ae6:	430b      	orrs	r3, r1
 8000ae8:	4661      	mov	r1, ip
 8000aea:	08cc      	lsrs	r4, r1, #3
 8000aec:	e027      	b.n	8000b3e <__aeabi_dsub+0x2f6>
 8000aee:	0008      	movs	r0, r1
 8000af0:	4338      	orrs	r0, r7
 8000af2:	d061      	beq.n	8000bb8 <__aeabi_dsub+0x370>
 8000af4:	1e50      	subs	r0, r2, #1
 8000af6:	2a01      	cmp	r2, #1
 8000af8:	d100      	bne.n	8000afc <__aeabi_dsub+0x2b4>
 8000afa:	e139      	b.n	8000d70 <__aeabi_dsub+0x528>
 8000afc:	42a2      	cmp	r2, r4
 8000afe:	d027      	beq.n	8000b50 <__aeabi_dsub+0x308>
 8000b00:	0002      	movs	r2, r0
 8000b02:	e75d      	b.n	80009c0 <__aeabi_dsub+0x178>
 8000b04:	0002      	movs	r2, r0
 8000b06:	391f      	subs	r1, #31
 8000b08:	40ca      	lsrs	r2, r1
 8000b0a:	0011      	movs	r1, r2
 8000b0c:	2b20      	cmp	r3, #32
 8000b0e:	d003      	beq.n	8000b18 <__aeabi_dsub+0x2d0>
 8000b10:	2240      	movs	r2, #64	; 0x40
 8000b12:	1ad3      	subs	r3, r2, r3
 8000b14:	4098      	lsls	r0, r3
 8000b16:	4304      	orrs	r4, r0
 8000b18:	1e63      	subs	r3, r4, #1
 8000b1a:	419c      	sbcs	r4, r3
 8000b1c:	2300      	movs	r3, #0
 8000b1e:	4699      	mov	r9, r3
 8000b20:	4698      	mov	r8, r3
 8000b22:	430c      	orrs	r4, r1
 8000b24:	0763      	lsls	r3, r4, #29
 8000b26:	d000      	beq.n	8000b2a <__aeabi_dsub+0x2e2>
 8000b28:	e712      	b.n	8000950 <__aeabi_dsub+0x108>
 8000b2a:	464b      	mov	r3, r9
 8000b2c:	464a      	mov	r2, r9
 8000b2e:	08e4      	lsrs	r4, r4, #3
 8000b30:	075b      	lsls	r3, r3, #29
 8000b32:	4323      	orrs	r3, r4
 8000b34:	08d4      	lsrs	r4, r2, #3
 8000b36:	4642      	mov	r2, r8
 8000b38:	4919      	ldr	r1, [pc, #100]	; (8000ba0 <__aeabi_dsub+0x358>)
 8000b3a:	428a      	cmp	r2, r1
 8000b3c:	d00e      	beq.n	8000b5c <__aeabi_dsub+0x314>
 8000b3e:	0324      	lsls	r4, r4, #12
 8000b40:	0552      	lsls	r2, r2, #21
 8000b42:	0b24      	lsrs	r4, r4, #12
 8000b44:	0d52      	lsrs	r2, r2, #21
 8000b46:	e722      	b.n	800098e <__aeabi_dsub+0x146>
 8000b48:	000a      	movs	r2, r1
 8000b4a:	2400      	movs	r4, #0
 8000b4c:	2300      	movs	r3, #0
 8000b4e:	e71e      	b.n	800098e <__aeabi_dsub+0x146>
 8000b50:	08db      	lsrs	r3, r3, #3
 8000b52:	4662      	mov	r2, ip
 8000b54:	0752      	lsls	r2, r2, #29
 8000b56:	4313      	orrs	r3, r2
 8000b58:	4662      	mov	r2, ip
 8000b5a:	08d4      	lsrs	r4, r2, #3
 8000b5c:	001a      	movs	r2, r3
 8000b5e:	4322      	orrs	r2, r4
 8000b60:	d100      	bne.n	8000b64 <__aeabi_dsub+0x31c>
 8000b62:	e1fc      	b.n	8000f5e <__aeabi_dsub+0x716>
 8000b64:	2280      	movs	r2, #128	; 0x80
 8000b66:	0312      	lsls	r2, r2, #12
 8000b68:	4314      	orrs	r4, r2
 8000b6a:	0324      	lsls	r4, r4, #12
 8000b6c:	4a0c      	ldr	r2, [pc, #48]	; (8000ba0 <__aeabi_dsub+0x358>)
 8000b6e:	0b24      	lsrs	r4, r4, #12
 8000b70:	e70d      	b.n	800098e <__aeabi_dsub+0x146>
 8000b72:	0020      	movs	r0, r4
 8000b74:	f000 fa94 	bl	80010a0 <__clzsi2>
 8000b78:	0001      	movs	r1, r0
 8000b7a:	3118      	adds	r1, #24
 8000b7c:	291f      	cmp	r1, #31
 8000b7e:	dc00      	bgt.n	8000b82 <__aeabi_dsub+0x33a>
 8000b80:	e6c4      	b.n	800090c <__aeabi_dsub+0xc4>
 8000b82:	3808      	subs	r0, #8
 8000b84:	4084      	lsls	r4, r0
 8000b86:	4643      	mov	r3, r8
 8000b88:	0020      	movs	r0, r4
 8000b8a:	2400      	movs	r4, #0
 8000b8c:	4588      	cmp	r8, r1
 8000b8e:	dc00      	bgt.n	8000b92 <__aeabi_dsub+0x34a>
 8000b90:	e6c8      	b.n	8000924 <__aeabi_dsub+0xdc>
 8000b92:	4a04      	ldr	r2, [pc, #16]	; (8000ba4 <__aeabi_dsub+0x35c>)
 8000b94:	1a5b      	subs	r3, r3, r1
 8000b96:	4010      	ands	r0, r2
 8000b98:	4698      	mov	r8, r3
 8000b9a:	4681      	mov	r9, r0
 8000b9c:	e6d6      	b.n	800094c <__aeabi_dsub+0x104>
 8000b9e:	46c0      	nop			; (mov r8, r8)
 8000ba0:	000007ff 	.word	0x000007ff
 8000ba4:	ff7fffff 	.word	0xff7fffff
 8000ba8:	fffff801 	.word	0xfffff801
 8000bac:	000007fe 	.word	0x000007fe
 8000bb0:	430f      	orrs	r7, r1
 8000bb2:	1e7a      	subs	r2, r7, #1
 8000bb4:	4197      	sbcs	r7, r2
 8000bb6:	e691      	b.n	80008dc <__aeabi_dsub+0x94>
 8000bb8:	4661      	mov	r1, ip
 8000bba:	08db      	lsrs	r3, r3, #3
 8000bbc:	0749      	lsls	r1, r1, #29
 8000bbe:	430b      	orrs	r3, r1
 8000bc0:	4661      	mov	r1, ip
 8000bc2:	08cc      	lsrs	r4, r1, #3
 8000bc4:	e7b8      	b.n	8000b38 <__aeabi_dsub+0x2f0>
 8000bc6:	4640      	mov	r0, r8
 8000bc8:	4cd3      	ldr	r4, [pc, #844]	; (8000f18 <__aeabi_dsub+0x6d0>)
 8000bca:	3001      	adds	r0, #1
 8000bcc:	4220      	tst	r0, r4
 8000bce:	d000      	beq.n	8000bd2 <__aeabi_dsub+0x38a>
 8000bd0:	e0a2      	b.n	8000d18 <__aeabi_dsub+0x4d0>
 8000bd2:	4640      	mov	r0, r8
 8000bd4:	2800      	cmp	r0, #0
 8000bd6:	d000      	beq.n	8000bda <__aeabi_dsub+0x392>
 8000bd8:	e101      	b.n	8000dde <__aeabi_dsub+0x596>
 8000bda:	4660      	mov	r0, ip
 8000bdc:	4318      	orrs	r0, r3
 8000bde:	d100      	bne.n	8000be2 <__aeabi_dsub+0x39a>
 8000be0:	e15e      	b.n	8000ea0 <__aeabi_dsub+0x658>
 8000be2:	0008      	movs	r0, r1
 8000be4:	4338      	orrs	r0, r7
 8000be6:	d000      	beq.n	8000bea <__aeabi_dsub+0x3a2>
 8000be8:	e15f      	b.n	8000eaa <__aeabi_dsub+0x662>
 8000bea:	4661      	mov	r1, ip
 8000bec:	08db      	lsrs	r3, r3, #3
 8000bee:	0749      	lsls	r1, r1, #29
 8000bf0:	430b      	orrs	r3, r1
 8000bf2:	4661      	mov	r1, ip
 8000bf4:	08cc      	lsrs	r4, r1, #3
 8000bf6:	e7a2      	b.n	8000b3e <__aeabi_dsub+0x2f6>
 8000bf8:	4dc8      	ldr	r5, [pc, #800]	; (8000f1c <__aeabi_dsub+0x6d4>)
 8000bfa:	42a8      	cmp	r0, r5
 8000bfc:	d100      	bne.n	8000c00 <__aeabi_dsub+0x3b8>
 8000bfe:	e0cf      	b.n	8000da0 <__aeabi_dsub+0x558>
 8000c00:	2580      	movs	r5, #128	; 0x80
 8000c02:	4664      	mov	r4, ip
 8000c04:	042d      	lsls	r5, r5, #16
 8000c06:	432c      	orrs	r4, r5
 8000c08:	46a4      	mov	ip, r4
 8000c0a:	2a38      	cmp	r2, #56	; 0x38
 8000c0c:	dc56      	bgt.n	8000cbc <__aeabi_dsub+0x474>
 8000c0e:	2a1f      	cmp	r2, #31
 8000c10:	dd00      	ble.n	8000c14 <__aeabi_dsub+0x3cc>
 8000c12:	e0d1      	b.n	8000db8 <__aeabi_dsub+0x570>
 8000c14:	2520      	movs	r5, #32
 8000c16:	001e      	movs	r6, r3
 8000c18:	1aad      	subs	r5, r5, r2
 8000c1a:	4664      	mov	r4, ip
 8000c1c:	40ab      	lsls	r3, r5
 8000c1e:	40ac      	lsls	r4, r5
 8000c20:	40d6      	lsrs	r6, r2
 8000c22:	1e5d      	subs	r5, r3, #1
 8000c24:	41ab      	sbcs	r3, r5
 8000c26:	4334      	orrs	r4, r6
 8000c28:	4323      	orrs	r3, r4
 8000c2a:	4664      	mov	r4, ip
 8000c2c:	40d4      	lsrs	r4, r2
 8000c2e:	1b09      	subs	r1, r1, r4
 8000c30:	e049      	b.n	8000cc6 <__aeabi_dsub+0x47e>
 8000c32:	4660      	mov	r0, ip
 8000c34:	1bdc      	subs	r4, r3, r7
 8000c36:	1a46      	subs	r6, r0, r1
 8000c38:	42a3      	cmp	r3, r4
 8000c3a:	4180      	sbcs	r0, r0
 8000c3c:	4240      	negs	r0, r0
 8000c3e:	4681      	mov	r9, r0
 8000c40:	0030      	movs	r0, r6
 8000c42:	464e      	mov	r6, r9
 8000c44:	1b80      	subs	r0, r0, r6
 8000c46:	4681      	mov	r9, r0
 8000c48:	0200      	lsls	r0, r0, #8
 8000c4a:	d476      	bmi.n	8000d3a <__aeabi_dsub+0x4f2>
 8000c4c:	464b      	mov	r3, r9
 8000c4e:	4323      	orrs	r3, r4
 8000c50:	d000      	beq.n	8000c54 <__aeabi_dsub+0x40c>
 8000c52:	e652      	b.n	80008fa <__aeabi_dsub+0xb2>
 8000c54:	2400      	movs	r4, #0
 8000c56:	2500      	movs	r5, #0
 8000c58:	e771      	b.n	8000b3e <__aeabi_dsub+0x2f6>
 8000c5a:	4339      	orrs	r1, r7
 8000c5c:	000c      	movs	r4, r1
 8000c5e:	1e62      	subs	r2, r4, #1
 8000c60:	4194      	sbcs	r4, r2
 8000c62:	18e4      	adds	r4, r4, r3
 8000c64:	429c      	cmp	r4, r3
 8000c66:	419b      	sbcs	r3, r3
 8000c68:	425b      	negs	r3, r3
 8000c6a:	4463      	add	r3, ip
 8000c6c:	4699      	mov	r9, r3
 8000c6e:	464b      	mov	r3, r9
 8000c70:	021b      	lsls	r3, r3, #8
 8000c72:	d400      	bmi.n	8000c76 <__aeabi_dsub+0x42e>
 8000c74:	e756      	b.n	8000b24 <__aeabi_dsub+0x2dc>
 8000c76:	2301      	movs	r3, #1
 8000c78:	469c      	mov	ip, r3
 8000c7a:	4ba8      	ldr	r3, [pc, #672]	; (8000f1c <__aeabi_dsub+0x6d4>)
 8000c7c:	44e0      	add	r8, ip
 8000c7e:	4598      	cmp	r8, r3
 8000c80:	d038      	beq.n	8000cf4 <__aeabi_dsub+0x4ac>
 8000c82:	464b      	mov	r3, r9
 8000c84:	48a6      	ldr	r0, [pc, #664]	; (8000f20 <__aeabi_dsub+0x6d8>)
 8000c86:	2201      	movs	r2, #1
 8000c88:	4003      	ands	r3, r0
 8000c8a:	0018      	movs	r0, r3
 8000c8c:	0863      	lsrs	r3, r4, #1
 8000c8e:	4014      	ands	r4, r2
 8000c90:	431c      	orrs	r4, r3
 8000c92:	07c3      	lsls	r3, r0, #31
 8000c94:	431c      	orrs	r4, r3
 8000c96:	0843      	lsrs	r3, r0, #1
 8000c98:	4699      	mov	r9, r3
 8000c9a:	e657      	b.n	800094c <__aeabi_dsub+0x104>
 8000c9c:	0010      	movs	r0, r2
 8000c9e:	000e      	movs	r6, r1
 8000ca0:	3820      	subs	r0, #32
 8000ca2:	40c6      	lsrs	r6, r0
 8000ca4:	2a20      	cmp	r2, #32
 8000ca6:	d004      	beq.n	8000cb2 <__aeabi_dsub+0x46a>
 8000ca8:	2040      	movs	r0, #64	; 0x40
 8000caa:	1a82      	subs	r2, r0, r2
 8000cac:	4091      	lsls	r1, r2
 8000cae:	430f      	orrs	r7, r1
 8000cb0:	46b9      	mov	r9, r7
 8000cb2:	464f      	mov	r7, r9
 8000cb4:	1e7a      	subs	r2, r7, #1
 8000cb6:	4197      	sbcs	r7, r2
 8000cb8:	4337      	orrs	r7, r6
 8000cba:	e60f      	b.n	80008dc <__aeabi_dsub+0x94>
 8000cbc:	4662      	mov	r2, ip
 8000cbe:	431a      	orrs	r2, r3
 8000cc0:	0013      	movs	r3, r2
 8000cc2:	1e5a      	subs	r2, r3, #1
 8000cc4:	4193      	sbcs	r3, r2
 8000cc6:	1afc      	subs	r4, r7, r3
 8000cc8:	42a7      	cmp	r7, r4
 8000cca:	41bf      	sbcs	r7, r7
 8000ccc:	427f      	negs	r7, r7
 8000cce:	1bcb      	subs	r3, r1, r7
 8000cd0:	4699      	mov	r9, r3
 8000cd2:	465d      	mov	r5, fp
 8000cd4:	4680      	mov	r8, r0
 8000cd6:	e608      	b.n	80008ea <__aeabi_dsub+0xa2>
 8000cd8:	4666      	mov	r6, ip
 8000cda:	431e      	orrs	r6, r3
 8000cdc:	d100      	bne.n	8000ce0 <__aeabi_dsub+0x498>
 8000cde:	e0be      	b.n	8000e5e <__aeabi_dsub+0x616>
 8000ce0:	1e56      	subs	r6, r2, #1
 8000ce2:	2a01      	cmp	r2, #1
 8000ce4:	d100      	bne.n	8000ce8 <__aeabi_dsub+0x4a0>
 8000ce6:	e109      	b.n	8000efc <__aeabi_dsub+0x6b4>
 8000ce8:	4c8c      	ldr	r4, [pc, #560]	; (8000f1c <__aeabi_dsub+0x6d4>)
 8000cea:	42a2      	cmp	r2, r4
 8000cec:	d100      	bne.n	8000cf0 <__aeabi_dsub+0x4a8>
 8000cee:	e119      	b.n	8000f24 <__aeabi_dsub+0x6dc>
 8000cf0:	0032      	movs	r2, r6
 8000cf2:	e6c1      	b.n	8000a78 <__aeabi_dsub+0x230>
 8000cf4:	4642      	mov	r2, r8
 8000cf6:	2400      	movs	r4, #0
 8000cf8:	2300      	movs	r3, #0
 8000cfa:	e648      	b.n	800098e <__aeabi_dsub+0x146>
 8000cfc:	2020      	movs	r0, #32
 8000cfe:	000c      	movs	r4, r1
 8000d00:	1a80      	subs	r0, r0, r2
 8000d02:	003e      	movs	r6, r7
 8000d04:	4087      	lsls	r7, r0
 8000d06:	4084      	lsls	r4, r0
 8000d08:	40d6      	lsrs	r6, r2
 8000d0a:	1e78      	subs	r0, r7, #1
 8000d0c:	4187      	sbcs	r7, r0
 8000d0e:	40d1      	lsrs	r1, r2
 8000d10:	4334      	orrs	r4, r6
 8000d12:	433c      	orrs	r4, r7
 8000d14:	448c      	add	ip, r1
 8000d16:	e7a4      	b.n	8000c62 <__aeabi_dsub+0x41a>
 8000d18:	4a80      	ldr	r2, [pc, #512]	; (8000f1c <__aeabi_dsub+0x6d4>)
 8000d1a:	4290      	cmp	r0, r2
 8000d1c:	d100      	bne.n	8000d20 <__aeabi_dsub+0x4d8>
 8000d1e:	e0e9      	b.n	8000ef4 <__aeabi_dsub+0x6ac>
 8000d20:	19df      	adds	r7, r3, r7
 8000d22:	429f      	cmp	r7, r3
 8000d24:	419b      	sbcs	r3, r3
 8000d26:	4461      	add	r1, ip
 8000d28:	425b      	negs	r3, r3
 8000d2a:	18c9      	adds	r1, r1, r3
 8000d2c:	07cc      	lsls	r4, r1, #31
 8000d2e:	087f      	lsrs	r7, r7, #1
 8000d30:	084b      	lsrs	r3, r1, #1
 8000d32:	4699      	mov	r9, r3
 8000d34:	4680      	mov	r8, r0
 8000d36:	433c      	orrs	r4, r7
 8000d38:	e6f4      	b.n	8000b24 <__aeabi_dsub+0x2dc>
 8000d3a:	1afc      	subs	r4, r7, r3
 8000d3c:	42a7      	cmp	r7, r4
 8000d3e:	41bf      	sbcs	r7, r7
 8000d40:	4663      	mov	r3, ip
 8000d42:	427f      	negs	r7, r7
 8000d44:	1ac9      	subs	r1, r1, r3
 8000d46:	1bcb      	subs	r3, r1, r7
 8000d48:	4699      	mov	r9, r3
 8000d4a:	465d      	mov	r5, fp
 8000d4c:	e5d5      	b.n	80008fa <__aeabi_dsub+0xb2>
 8000d4e:	08ff      	lsrs	r7, r7, #3
 8000d50:	074b      	lsls	r3, r1, #29
 8000d52:	465d      	mov	r5, fp
 8000d54:	433b      	orrs	r3, r7
 8000d56:	08cc      	lsrs	r4, r1, #3
 8000d58:	e6ee      	b.n	8000b38 <__aeabi_dsub+0x2f0>
 8000d5a:	4662      	mov	r2, ip
 8000d5c:	431a      	orrs	r2, r3
 8000d5e:	d000      	beq.n	8000d62 <__aeabi_dsub+0x51a>
 8000d60:	e082      	b.n	8000e68 <__aeabi_dsub+0x620>
 8000d62:	000b      	movs	r3, r1
 8000d64:	433b      	orrs	r3, r7
 8000d66:	d11b      	bne.n	8000da0 <__aeabi_dsub+0x558>
 8000d68:	2480      	movs	r4, #128	; 0x80
 8000d6a:	2500      	movs	r5, #0
 8000d6c:	0324      	lsls	r4, r4, #12
 8000d6e:	e6f9      	b.n	8000b64 <__aeabi_dsub+0x31c>
 8000d70:	19dc      	adds	r4, r3, r7
 8000d72:	429c      	cmp	r4, r3
 8000d74:	419b      	sbcs	r3, r3
 8000d76:	4461      	add	r1, ip
 8000d78:	4689      	mov	r9, r1
 8000d7a:	425b      	negs	r3, r3
 8000d7c:	4499      	add	r9, r3
 8000d7e:	464b      	mov	r3, r9
 8000d80:	021b      	lsls	r3, r3, #8
 8000d82:	d444      	bmi.n	8000e0e <__aeabi_dsub+0x5c6>
 8000d84:	2301      	movs	r3, #1
 8000d86:	4698      	mov	r8, r3
 8000d88:	e6cc      	b.n	8000b24 <__aeabi_dsub+0x2dc>
 8000d8a:	1bdc      	subs	r4, r3, r7
 8000d8c:	4662      	mov	r2, ip
 8000d8e:	42a3      	cmp	r3, r4
 8000d90:	419b      	sbcs	r3, r3
 8000d92:	1a51      	subs	r1, r2, r1
 8000d94:	425b      	negs	r3, r3
 8000d96:	1acb      	subs	r3, r1, r3
 8000d98:	4699      	mov	r9, r3
 8000d9a:	2301      	movs	r3, #1
 8000d9c:	4698      	mov	r8, r3
 8000d9e:	e5a4      	b.n	80008ea <__aeabi_dsub+0xa2>
 8000da0:	08ff      	lsrs	r7, r7, #3
 8000da2:	074b      	lsls	r3, r1, #29
 8000da4:	465d      	mov	r5, fp
 8000da6:	433b      	orrs	r3, r7
 8000da8:	08cc      	lsrs	r4, r1, #3
 8000daa:	e6d7      	b.n	8000b5c <__aeabi_dsub+0x314>
 8000dac:	4662      	mov	r2, ip
 8000dae:	431a      	orrs	r2, r3
 8000db0:	0014      	movs	r4, r2
 8000db2:	1e63      	subs	r3, r4, #1
 8000db4:	419c      	sbcs	r4, r3
 8000db6:	e679      	b.n	8000aac <__aeabi_dsub+0x264>
 8000db8:	0015      	movs	r5, r2
 8000dba:	4664      	mov	r4, ip
 8000dbc:	3d20      	subs	r5, #32
 8000dbe:	40ec      	lsrs	r4, r5
 8000dc0:	46a0      	mov	r8, r4
 8000dc2:	2a20      	cmp	r2, #32
 8000dc4:	d005      	beq.n	8000dd2 <__aeabi_dsub+0x58a>
 8000dc6:	2540      	movs	r5, #64	; 0x40
 8000dc8:	4664      	mov	r4, ip
 8000dca:	1aaa      	subs	r2, r5, r2
 8000dcc:	4094      	lsls	r4, r2
 8000dce:	4323      	orrs	r3, r4
 8000dd0:	469a      	mov	sl, r3
 8000dd2:	4654      	mov	r4, sl
 8000dd4:	1e63      	subs	r3, r4, #1
 8000dd6:	419c      	sbcs	r4, r3
 8000dd8:	4643      	mov	r3, r8
 8000dda:	4323      	orrs	r3, r4
 8000ddc:	e773      	b.n	8000cc6 <__aeabi_dsub+0x47e>
 8000dde:	4662      	mov	r2, ip
 8000de0:	431a      	orrs	r2, r3
 8000de2:	d023      	beq.n	8000e2c <__aeabi_dsub+0x5e4>
 8000de4:	000a      	movs	r2, r1
 8000de6:	433a      	orrs	r2, r7
 8000de8:	d000      	beq.n	8000dec <__aeabi_dsub+0x5a4>
 8000dea:	e0a0      	b.n	8000f2e <__aeabi_dsub+0x6e6>
 8000dec:	4662      	mov	r2, ip
 8000dee:	08db      	lsrs	r3, r3, #3
 8000df0:	0752      	lsls	r2, r2, #29
 8000df2:	4313      	orrs	r3, r2
 8000df4:	4662      	mov	r2, ip
 8000df6:	08d4      	lsrs	r4, r2, #3
 8000df8:	e6b0      	b.n	8000b5c <__aeabi_dsub+0x314>
 8000dfa:	000b      	movs	r3, r1
 8000dfc:	433b      	orrs	r3, r7
 8000dfe:	d100      	bne.n	8000e02 <__aeabi_dsub+0x5ba>
 8000e00:	e728      	b.n	8000c54 <__aeabi_dsub+0x40c>
 8000e02:	08ff      	lsrs	r7, r7, #3
 8000e04:	074b      	lsls	r3, r1, #29
 8000e06:	465d      	mov	r5, fp
 8000e08:	433b      	orrs	r3, r7
 8000e0a:	08cc      	lsrs	r4, r1, #3
 8000e0c:	e697      	b.n	8000b3e <__aeabi_dsub+0x2f6>
 8000e0e:	2302      	movs	r3, #2
 8000e10:	4698      	mov	r8, r3
 8000e12:	e736      	b.n	8000c82 <__aeabi_dsub+0x43a>
 8000e14:	1afc      	subs	r4, r7, r3
 8000e16:	42a7      	cmp	r7, r4
 8000e18:	41bf      	sbcs	r7, r7
 8000e1a:	4663      	mov	r3, ip
 8000e1c:	427f      	negs	r7, r7
 8000e1e:	1ac9      	subs	r1, r1, r3
 8000e20:	1bcb      	subs	r3, r1, r7
 8000e22:	4699      	mov	r9, r3
 8000e24:	2301      	movs	r3, #1
 8000e26:	465d      	mov	r5, fp
 8000e28:	4698      	mov	r8, r3
 8000e2a:	e55e      	b.n	80008ea <__aeabi_dsub+0xa2>
 8000e2c:	074b      	lsls	r3, r1, #29
 8000e2e:	08ff      	lsrs	r7, r7, #3
 8000e30:	433b      	orrs	r3, r7
 8000e32:	08cc      	lsrs	r4, r1, #3
 8000e34:	e692      	b.n	8000b5c <__aeabi_dsub+0x314>
 8000e36:	1bdc      	subs	r4, r3, r7
 8000e38:	4660      	mov	r0, ip
 8000e3a:	42a3      	cmp	r3, r4
 8000e3c:	41b6      	sbcs	r6, r6
 8000e3e:	1a40      	subs	r0, r0, r1
 8000e40:	4276      	negs	r6, r6
 8000e42:	1b80      	subs	r0, r0, r6
 8000e44:	4681      	mov	r9, r0
 8000e46:	0200      	lsls	r0, r0, #8
 8000e48:	d560      	bpl.n	8000f0c <__aeabi_dsub+0x6c4>
 8000e4a:	1afc      	subs	r4, r7, r3
 8000e4c:	42a7      	cmp	r7, r4
 8000e4e:	41bf      	sbcs	r7, r7
 8000e50:	4663      	mov	r3, ip
 8000e52:	427f      	negs	r7, r7
 8000e54:	1ac9      	subs	r1, r1, r3
 8000e56:	1bcb      	subs	r3, r1, r7
 8000e58:	4699      	mov	r9, r3
 8000e5a:	465d      	mov	r5, fp
 8000e5c:	e576      	b.n	800094c <__aeabi_dsub+0x104>
 8000e5e:	08ff      	lsrs	r7, r7, #3
 8000e60:	074b      	lsls	r3, r1, #29
 8000e62:	433b      	orrs	r3, r7
 8000e64:	08cc      	lsrs	r4, r1, #3
 8000e66:	e667      	b.n	8000b38 <__aeabi_dsub+0x2f0>
 8000e68:	000a      	movs	r2, r1
 8000e6a:	08db      	lsrs	r3, r3, #3
 8000e6c:	433a      	orrs	r2, r7
 8000e6e:	d100      	bne.n	8000e72 <__aeabi_dsub+0x62a>
 8000e70:	e66f      	b.n	8000b52 <__aeabi_dsub+0x30a>
 8000e72:	4662      	mov	r2, ip
 8000e74:	0752      	lsls	r2, r2, #29
 8000e76:	4313      	orrs	r3, r2
 8000e78:	4662      	mov	r2, ip
 8000e7a:	08d4      	lsrs	r4, r2, #3
 8000e7c:	2280      	movs	r2, #128	; 0x80
 8000e7e:	0312      	lsls	r2, r2, #12
 8000e80:	4214      	tst	r4, r2
 8000e82:	d007      	beq.n	8000e94 <__aeabi_dsub+0x64c>
 8000e84:	08c8      	lsrs	r0, r1, #3
 8000e86:	4210      	tst	r0, r2
 8000e88:	d104      	bne.n	8000e94 <__aeabi_dsub+0x64c>
 8000e8a:	465d      	mov	r5, fp
 8000e8c:	0004      	movs	r4, r0
 8000e8e:	08fb      	lsrs	r3, r7, #3
 8000e90:	0749      	lsls	r1, r1, #29
 8000e92:	430b      	orrs	r3, r1
 8000e94:	0f5a      	lsrs	r2, r3, #29
 8000e96:	00db      	lsls	r3, r3, #3
 8000e98:	08db      	lsrs	r3, r3, #3
 8000e9a:	0752      	lsls	r2, r2, #29
 8000e9c:	4313      	orrs	r3, r2
 8000e9e:	e65d      	b.n	8000b5c <__aeabi_dsub+0x314>
 8000ea0:	074b      	lsls	r3, r1, #29
 8000ea2:	08ff      	lsrs	r7, r7, #3
 8000ea4:	433b      	orrs	r3, r7
 8000ea6:	08cc      	lsrs	r4, r1, #3
 8000ea8:	e649      	b.n	8000b3e <__aeabi_dsub+0x2f6>
 8000eaa:	19dc      	adds	r4, r3, r7
 8000eac:	429c      	cmp	r4, r3
 8000eae:	419b      	sbcs	r3, r3
 8000eb0:	4461      	add	r1, ip
 8000eb2:	4689      	mov	r9, r1
 8000eb4:	425b      	negs	r3, r3
 8000eb6:	4499      	add	r9, r3
 8000eb8:	464b      	mov	r3, r9
 8000eba:	021b      	lsls	r3, r3, #8
 8000ebc:	d400      	bmi.n	8000ec0 <__aeabi_dsub+0x678>
 8000ebe:	e631      	b.n	8000b24 <__aeabi_dsub+0x2dc>
 8000ec0:	464a      	mov	r2, r9
 8000ec2:	4b17      	ldr	r3, [pc, #92]	; (8000f20 <__aeabi_dsub+0x6d8>)
 8000ec4:	401a      	ands	r2, r3
 8000ec6:	2301      	movs	r3, #1
 8000ec8:	4691      	mov	r9, r2
 8000eca:	4698      	mov	r8, r3
 8000ecc:	e62a      	b.n	8000b24 <__aeabi_dsub+0x2dc>
 8000ece:	0016      	movs	r6, r2
 8000ed0:	4664      	mov	r4, ip
 8000ed2:	3e20      	subs	r6, #32
 8000ed4:	40f4      	lsrs	r4, r6
 8000ed6:	46a0      	mov	r8, r4
 8000ed8:	2a20      	cmp	r2, #32
 8000eda:	d005      	beq.n	8000ee8 <__aeabi_dsub+0x6a0>
 8000edc:	2640      	movs	r6, #64	; 0x40
 8000ede:	4664      	mov	r4, ip
 8000ee0:	1ab2      	subs	r2, r6, r2
 8000ee2:	4094      	lsls	r4, r2
 8000ee4:	4323      	orrs	r3, r4
 8000ee6:	469a      	mov	sl, r3
 8000ee8:	4654      	mov	r4, sl
 8000eea:	1e63      	subs	r3, r4, #1
 8000eec:	419c      	sbcs	r4, r3
 8000eee:	4643      	mov	r3, r8
 8000ef0:	431c      	orrs	r4, r3
 8000ef2:	e5db      	b.n	8000aac <__aeabi_dsub+0x264>
 8000ef4:	0002      	movs	r2, r0
 8000ef6:	2400      	movs	r4, #0
 8000ef8:	2300      	movs	r3, #0
 8000efa:	e548      	b.n	800098e <__aeabi_dsub+0x146>
 8000efc:	19dc      	adds	r4, r3, r7
 8000efe:	42bc      	cmp	r4, r7
 8000f00:	41bf      	sbcs	r7, r7
 8000f02:	4461      	add	r1, ip
 8000f04:	4689      	mov	r9, r1
 8000f06:	427f      	negs	r7, r7
 8000f08:	44b9      	add	r9, r7
 8000f0a:	e738      	b.n	8000d7e <__aeabi_dsub+0x536>
 8000f0c:	464b      	mov	r3, r9
 8000f0e:	4323      	orrs	r3, r4
 8000f10:	d100      	bne.n	8000f14 <__aeabi_dsub+0x6cc>
 8000f12:	e69f      	b.n	8000c54 <__aeabi_dsub+0x40c>
 8000f14:	e606      	b.n	8000b24 <__aeabi_dsub+0x2dc>
 8000f16:	46c0      	nop			; (mov r8, r8)
 8000f18:	000007fe 	.word	0x000007fe
 8000f1c:	000007ff 	.word	0x000007ff
 8000f20:	ff7fffff 	.word	0xff7fffff
 8000f24:	08ff      	lsrs	r7, r7, #3
 8000f26:	074b      	lsls	r3, r1, #29
 8000f28:	433b      	orrs	r3, r7
 8000f2a:	08cc      	lsrs	r4, r1, #3
 8000f2c:	e616      	b.n	8000b5c <__aeabi_dsub+0x314>
 8000f2e:	4662      	mov	r2, ip
 8000f30:	08db      	lsrs	r3, r3, #3
 8000f32:	0752      	lsls	r2, r2, #29
 8000f34:	4313      	orrs	r3, r2
 8000f36:	4662      	mov	r2, ip
 8000f38:	08d4      	lsrs	r4, r2, #3
 8000f3a:	2280      	movs	r2, #128	; 0x80
 8000f3c:	0312      	lsls	r2, r2, #12
 8000f3e:	4214      	tst	r4, r2
 8000f40:	d007      	beq.n	8000f52 <__aeabi_dsub+0x70a>
 8000f42:	08c8      	lsrs	r0, r1, #3
 8000f44:	4210      	tst	r0, r2
 8000f46:	d104      	bne.n	8000f52 <__aeabi_dsub+0x70a>
 8000f48:	465d      	mov	r5, fp
 8000f4a:	0004      	movs	r4, r0
 8000f4c:	08fb      	lsrs	r3, r7, #3
 8000f4e:	0749      	lsls	r1, r1, #29
 8000f50:	430b      	orrs	r3, r1
 8000f52:	0f5a      	lsrs	r2, r3, #29
 8000f54:	00db      	lsls	r3, r3, #3
 8000f56:	0752      	lsls	r2, r2, #29
 8000f58:	08db      	lsrs	r3, r3, #3
 8000f5a:	4313      	orrs	r3, r2
 8000f5c:	e5fe      	b.n	8000b5c <__aeabi_dsub+0x314>
 8000f5e:	2300      	movs	r3, #0
 8000f60:	4a01      	ldr	r2, [pc, #4]	; (8000f68 <__aeabi_dsub+0x720>)
 8000f62:	001c      	movs	r4, r3
 8000f64:	e513      	b.n	800098e <__aeabi_dsub+0x146>
 8000f66:	46c0      	nop			; (mov r8, r8)
 8000f68:	000007ff 	.word	0x000007ff

08000f6c <__aeabi_d2iz>:
 8000f6c:	000a      	movs	r2, r1
 8000f6e:	b530      	push	{r4, r5, lr}
 8000f70:	4c13      	ldr	r4, [pc, #76]	; (8000fc0 <__aeabi_d2iz+0x54>)
 8000f72:	0053      	lsls	r3, r2, #1
 8000f74:	0309      	lsls	r1, r1, #12
 8000f76:	0005      	movs	r5, r0
 8000f78:	0b09      	lsrs	r1, r1, #12
 8000f7a:	2000      	movs	r0, #0
 8000f7c:	0d5b      	lsrs	r3, r3, #21
 8000f7e:	0fd2      	lsrs	r2, r2, #31
 8000f80:	42a3      	cmp	r3, r4
 8000f82:	dd04      	ble.n	8000f8e <__aeabi_d2iz+0x22>
 8000f84:	480f      	ldr	r0, [pc, #60]	; (8000fc4 <__aeabi_d2iz+0x58>)
 8000f86:	4283      	cmp	r3, r0
 8000f88:	dd02      	ble.n	8000f90 <__aeabi_d2iz+0x24>
 8000f8a:	4b0f      	ldr	r3, [pc, #60]	; (8000fc8 <__aeabi_d2iz+0x5c>)
 8000f8c:	18d0      	adds	r0, r2, r3
 8000f8e:	bd30      	pop	{r4, r5, pc}
 8000f90:	2080      	movs	r0, #128	; 0x80
 8000f92:	0340      	lsls	r0, r0, #13
 8000f94:	4301      	orrs	r1, r0
 8000f96:	480d      	ldr	r0, [pc, #52]	; (8000fcc <__aeabi_d2iz+0x60>)
 8000f98:	1ac0      	subs	r0, r0, r3
 8000f9a:	281f      	cmp	r0, #31
 8000f9c:	dd08      	ble.n	8000fb0 <__aeabi_d2iz+0x44>
 8000f9e:	480c      	ldr	r0, [pc, #48]	; (8000fd0 <__aeabi_d2iz+0x64>)
 8000fa0:	1ac3      	subs	r3, r0, r3
 8000fa2:	40d9      	lsrs	r1, r3
 8000fa4:	000b      	movs	r3, r1
 8000fa6:	4258      	negs	r0, r3
 8000fa8:	2a00      	cmp	r2, #0
 8000faa:	d1f0      	bne.n	8000f8e <__aeabi_d2iz+0x22>
 8000fac:	0018      	movs	r0, r3
 8000fae:	e7ee      	b.n	8000f8e <__aeabi_d2iz+0x22>
 8000fb0:	4c08      	ldr	r4, [pc, #32]	; (8000fd4 <__aeabi_d2iz+0x68>)
 8000fb2:	40c5      	lsrs	r5, r0
 8000fb4:	46a4      	mov	ip, r4
 8000fb6:	4463      	add	r3, ip
 8000fb8:	4099      	lsls	r1, r3
 8000fba:	000b      	movs	r3, r1
 8000fbc:	432b      	orrs	r3, r5
 8000fbe:	e7f2      	b.n	8000fa6 <__aeabi_d2iz+0x3a>
 8000fc0:	000003fe 	.word	0x000003fe
 8000fc4:	0000041d 	.word	0x0000041d
 8000fc8:	7fffffff 	.word	0x7fffffff
 8000fcc:	00000433 	.word	0x00000433
 8000fd0:	00000413 	.word	0x00000413
 8000fd4:	fffffbed 	.word	0xfffffbed

08000fd8 <__aeabi_ui2d>:
 8000fd8:	b510      	push	{r4, lr}
 8000fda:	1e04      	subs	r4, r0, #0
 8000fdc:	d010      	beq.n	8001000 <__aeabi_ui2d+0x28>
 8000fde:	f000 f85f 	bl	80010a0 <__clzsi2>
 8000fe2:	4b0f      	ldr	r3, [pc, #60]	; (8001020 <__aeabi_ui2d+0x48>)
 8000fe4:	1a1b      	subs	r3, r3, r0
 8000fe6:	280a      	cmp	r0, #10
 8000fe8:	dc11      	bgt.n	800100e <__aeabi_ui2d+0x36>
 8000fea:	220b      	movs	r2, #11
 8000fec:	0021      	movs	r1, r4
 8000fee:	1a12      	subs	r2, r2, r0
 8000ff0:	40d1      	lsrs	r1, r2
 8000ff2:	3015      	adds	r0, #21
 8000ff4:	030a      	lsls	r2, r1, #12
 8000ff6:	055b      	lsls	r3, r3, #21
 8000ff8:	4084      	lsls	r4, r0
 8000ffa:	0b12      	lsrs	r2, r2, #12
 8000ffc:	0d5b      	lsrs	r3, r3, #21
 8000ffe:	e001      	b.n	8001004 <__aeabi_ui2d+0x2c>
 8001000:	2300      	movs	r3, #0
 8001002:	2200      	movs	r2, #0
 8001004:	051b      	lsls	r3, r3, #20
 8001006:	4313      	orrs	r3, r2
 8001008:	0020      	movs	r0, r4
 800100a:	0019      	movs	r1, r3
 800100c:	bd10      	pop	{r4, pc}
 800100e:	0022      	movs	r2, r4
 8001010:	380b      	subs	r0, #11
 8001012:	4082      	lsls	r2, r0
 8001014:	055b      	lsls	r3, r3, #21
 8001016:	0312      	lsls	r2, r2, #12
 8001018:	2400      	movs	r4, #0
 800101a:	0b12      	lsrs	r2, r2, #12
 800101c:	0d5b      	lsrs	r3, r3, #21
 800101e:	e7f1      	b.n	8001004 <__aeabi_ui2d+0x2c>
 8001020:	0000041e 	.word	0x0000041e

08001024 <__aeabi_cdrcmple>:
 8001024:	4684      	mov	ip, r0
 8001026:	0010      	movs	r0, r2
 8001028:	4662      	mov	r2, ip
 800102a:	468c      	mov	ip, r1
 800102c:	0019      	movs	r1, r3
 800102e:	4663      	mov	r3, ip
 8001030:	e000      	b.n	8001034 <__aeabi_cdcmpeq>
 8001032:	46c0      	nop			; (mov r8, r8)

08001034 <__aeabi_cdcmpeq>:
 8001034:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8001036:	f000 f8f9 	bl	800122c <__ledf2>
 800103a:	2800      	cmp	r0, #0
 800103c:	d401      	bmi.n	8001042 <__aeabi_cdcmpeq+0xe>
 800103e:	2100      	movs	r1, #0
 8001040:	42c8      	cmn	r0, r1
 8001042:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

08001044 <__aeabi_dcmpeq>:
 8001044:	b510      	push	{r4, lr}
 8001046:	f000 f849 	bl	80010dc <__eqdf2>
 800104a:	4240      	negs	r0, r0
 800104c:	3001      	adds	r0, #1
 800104e:	bd10      	pop	{r4, pc}

08001050 <__aeabi_dcmplt>:
 8001050:	b510      	push	{r4, lr}
 8001052:	f000 f8eb 	bl	800122c <__ledf2>
 8001056:	2800      	cmp	r0, #0
 8001058:	db01      	blt.n	800105e <__aeabi_dcmplt+0xe>
 800105a:	2000      	movs	r0, #0
 800105c:	bd10      	pop	{r4, pc}
 800105e:	2001      	movs	r0, #1
 8001060:	bd10      	pop	{r4, pc}
 8001062:	46c0      	nop			; (mov r8, r8)

08001064 <__aeabi_dcmple>:
 8001064:	b510      	push	{r4, lr}
 8001066:	f000 f8e1 	bl	800122c <__ledf2>
 800106a:	2800      	cmp	r0, #0
 800106c:	dd01      	ble.n	8001072 <__aeabi_dcmple+0xe>
 800106e:	2000      	movs	r0, #0
 8001070:	bd10      	pop	{r4, pc}
 8001072:	2001      	movs	r0, #1
 8001074:	bd10      	pop	{r4, pc}
 8001076:	46c0      	nop			; (mov r8, r8)

08001078 <__aeabi_dcmpgt>:
 8001078:	b510      	push	{r4, lr}
 800107a:	f000 f871 	bl	8001160 <__gedf2>
 800107e:	2800      	cmp	r0, #0
 8001080:	dc01      	bgt.n	8001086 <__aeabi_dcmpgt+0xe>
 8001082:	2000      	movs	r0, #0
 8001084:	bd10      	pop	{r4, pc}
 8001086:	2001      	movs	r0, #1
 8001088:	bd10      	pop	{r4, pc}
 800108a:	46c0      	nop			; (mov r8, r8)

0800108c <__aeabi_dcmpge>:
 800108c:	b510      	push	{r4, lr}
 800108e:	f000 f867 	bl	8001160 <__gedf2>
 8001092:	2800      	cmp	r0, #0
 8001094:	da01      	bge.n	800109a <__aeabi_dcmpge+0xe>
 8001096:	2000      	movs	r0, #0
 8001098:	bd10      	pop	{r4, pc}
 800109a:	2001      	movs	r0, #1
 800109c:	bd10      	pop	{r4, pc}
 800109e:	46c0      	nop			; (mov r8, r8)

080010a0 <__clzsi2>:
 80010a0:	211c      	movs	r1, #28
 80010a2:	2301      	movs	r3, #1
 80010a4:	041b      	lsls	r3, r3, #16
 80010a6:	4298      	cmp	r0, r3
 80010a8:	d301      	bcc.n	80010ae <__clzsi2+0xe>
 80010aa:	0c00      	lsrs	r0, r0, #16
 80010ac:	3910      	subs	r1, #16
 80010ae:	0a1b      	lsrs	r3, r3, #8
 80010b0:	4298      	cmp	r0, r3
 80010b2:	d301      	bcc.n	80010b8 <__clzsi2+0x18>
 80010b4:	0a00      	lsrs	r0, r0, #8
 80010b6:	3908      	subs	r1, #8
 80010b8:	091b      	lsrs	r3, r3, #4
 80010ba:	4298      	cmp	r0, r3
 80010bc:	d301      	bcc.n	80010c2 <__clzsi2+0x22>
 80010be:	0900      	lsrs	r0, r0, #4
 80010c0:	3904      	subs	r1, #4
 80010c2:	a202      	add	r2, pc, #8	; (adr r2, 80010cc <__clzsi2+0x2c>)
 80010c4:	5c10      	ldrb	r0, [r2, r0]
 80010c6:	1840      	adds	r0, r0, r1
 80010c8:	4770      	bx	lr
 80010ca:	46c0      	nop			; (mov r8, r8)
 80010cc:	02020304 	.word	0x02020304
 80010d0:	01010101 	.word	0x01010101
	...

080010dc <__eqdf2>:
 80010dc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80010de:	464e      	mov	r6, r9
 80010e0:	4645      	mov	r5, r8
 80010e2:	46de      	mov	lr, fp
 80010e4:	4657      	mov	r7, sl
 80010e6:	4690      	mov	r8, r2
 80010e8:	b5e0      	push	{r5, r6, r7, lr}
 80010ea:	0017      	movs	r7, r2
 80010ec:	031a      	lsls	r2, r3, #12
 80010ee:	0b12      	lsrs	r2, r2, #12
 80010f0:	0005      	movs	r5, r0
 80010f2:	4684      	mov	ip, r0
 80010f4:	4819      	ldr	r0, [pc, #100]	; (800115c <__eqdf2+0x80>)
 80010f6:	030e      	lsls	r6, r1, #12
 80010f8:	004c      	lsls	r4, r1, #1
 80010fa:	4691      	mov	r9, r2
 80010fc:	005a      	lsls	r2, r3, #1
 80010fe:	0fdb      	lsrs	r3, r3, #31
 8001100:	469b      	mov	fp, r3
 8001102:	0b36      	lsrs	r6, r6, #12
 8001104:	0d64      	lsrs	r4, r4, #21
 8001106:	0fc9      	lsrs	r1, r1, #31
 8001108:	0d52      	lsrs	r2, r2, #21
 800110a:	4284      	cmp	r4, r0
 800110c:	d019      	beq.n	8001142 <__eqdf2+0x66>
 800110e:	4282      	cmp	r2, r0
 8001110:	d010      	beq.n	8001134 <__eqdf2+0x58>
 8001112:	2001      	movs	r0, #1
 8001114:	4294      	cmp	r4, r2
 8001116:	d10e      	bne.n	8001136 <__eqdf2+0x5a>
 8001118:	454e      	cmp	r6, r9
 800111a:	d10c      	bne.n	8001136 <__eqdf2+0x5a>
 800111c:	2001      	movs	r0, #1
 800111e:	45c4      	cmp	ip, r8
 8001120:	d109      	bne.n	8001136 <__eqdf2+0x5a>
 8001122:	4559      	cmp	r1, fp
 8001124:	d017      	beq.n	8001156 <__eqdf2+0x7a>
 8001126:	2c00      	cmp	r4, #0
 8001128:	d105      	bne.n	8001136 <__eqdf2+0x5a>
 800112a:	0030      	movs	r0, r6
 800112c:	4328      	orrs	r0, r5
 800112e:	1e43      	subs	r3, r0, #1
 8001130:	4198      	sbcs	r0, r3
 8001132:	e000      	b.n	8001136 <__eqdf2+0x5a>
 8001134:	2001      	movs	r0, #1
 8001136:	bcf0      	pop	{r4, r5, r6, r7}
 8001138:	46bb      	mov	fp, r7
 800113a:	46b2      	mov	sl, r6
 800113c:	46a9      	mov	r9, r5
 800113e:	46a0      	mov	r8, r4
 8001140:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001142:	0033      	movs	r3, r6
 8001144:	2001      	movs	r0, #1
 8001146:	432b      	orrs	r3, r5
 8001148:	d1f5      	bne.n	8001136 <__eqdf2+0x5a>
 800114a:	42a2      	cmp	r2, r4
 800114c:	d1f3      	bne.n	8001136 <__eqdf2+0x5a>
 800114e:	464b      	mov	r3, r9
 8001150:	433b      	orrs	r3, r7
 8001152:	d1f0      	bne.n	8001136 <__eqdf2+0x5a>
 8001154:	e7e2      	b.n	800111c <__eqdf2+0x40>
 8001156:	2000      	movs	r0, #0
 8001158:	e7ed      	b.n	8001136 <__eqdf2+0x5a>
 800115a:	46c0      	nop			; (mov r8, r8)
 800115c:	000007ff 	.word	0x000007ff

08001160 <__gedf2>:
 8001160:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001162:	4647      	mov	r7, r8
 8001164:	46ce      	mov	lr, r9
 8001166:	0004      	movs	r4, r0
 8001168:	0018      	movs	r0, r3
 800116a:	0016      	movs	r6, r2
 800116c:	031b      	lsls	r3, r3, #12
 800116e:	0b1b      	lsrs	r3, r3, #12
 8001170:	4d2d      	ldr	r5, [pc, #180]	; (8001228 <__gedf2+0xc8>)
 8001172:	004a      	lsls	r2, r1, #1
 8001174:	4699      	mov	r9, r3
 8001176:	b580      	push	{r7, lr}
 8001178:	0043      	lsls	r3, r0, #1
 800117a:	030f      	lsls	r7, r1, #12
 800117c:	46a4      	mov	ip, r4
 800117e:	46b0      	mov	r8, r6
 8001180:	0b3f      	lsrs	r7, r7, #12
 8001182:	0d52      	lsrs	r2, r2, #21
 8001184:	0fc9      	lsrs	r1, r1, #31
 8001186:	0d5b      	lsrs	r3, r3, #21
 8001188:	0fc0      	lsrs	r0, r0, #31
 800118a:	42aa      	cmp	r2, r5
 800118c:	d021      	beq.n	80011d2 <__gedf2+0x72>
 800118e:	42ab      	cmp	r3, r5
 8001190:	d013      	beq.n	80011ba <__gedf2+0x5a>
 8001192:	2a00      	cmp	r2, #0
 8001194:	d122      	bne.n	80011dc <__gedf2+0x7c>
 8001196:	433c      	orrs	r4, r7
 8001198:	2b00      	cmp	r3, #0
 800119a:	d102      	bne.n	80011a2 <__gedf2+0x42>
 800119c:	464d      	mov	r5, r9
 800119e:	432e      	orrs	r6, r5
 80011a0:	d022      	beq.n	80011e8 <__gedf2+0x88>
 80011a2:	2c00      	cmp	r4, #0
 80011a4:	d010      	beq.n	80011c8 <__gedf2+0x68>
 80011a6:	4281      	cmp	r1, r0
 80011a8:	d022      	beq.n	80011f0 <__gedf2+0x90>
 80011aa:	2002      	movs	r0, #2
 80011ac:	3901      	subs	r1, #1
 80011ae:	4008      	ands	r0, r1
 80011b0:	3801      	subs	r0, #1
 80011b2:	bcc0      	pop	{r6, r7}
 80011b4:	46b9      	mov	r9, r7
 80011b6:	46b0      	mov	r8, r6
 80011b8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80011ba:	464d      	mov	r5, r9
 80011bc:	432e      	orrs	r6, r5
 80011be:	d129      	bne.n	8001214 <__gedf2+0xb4>
 80011c0:	2a00      	cmp	r2, #0
 80011c2:	d1f0      	bne.n	80011a6 <__gedf2+0x46>
 80011c4:	433c      	orrs	r4, r7
 80011c6:	d1ee      	bne.n	80011a6 <__gedf2+0x46>
 80011c8:	2800      	cmp	r0, #0
 80011ca:	d1f2      	bne.n	80011b2 <__gedf2+0x52>
 80011cc:	2001      	movs	r0, #1
 80011ce:	4240      	negs	r0, r0
 80011d0:	e7ef      	b.n	80011b2 <__gedf2+0x52>
 80011d2:	003d      	movs	r5, r7
 80011d4:	4325      	orrs	r5, r4
 80011d6:	d11d      	bne.n	8001214 <__gedf2+0xb4>
 80011d8:	4293      	cmp	r3, r2
 80011da:	d0ee      	beq.n	80011ba <__gedf2+0x5a>
 80011dc:	2b00      	cmp	r3, #0
 80011de:	d1e2      	bne.n	80011a6 <__gedf2+0x46>
 80011e0:	464c      	mov	r4, r9
 80011e2:	4326      	orrs	r6, r4
 80011e4:	d1df      	bne.n	80011a6 <__gedf2+0x46>
 80011e6:	e7e0      	b.n	80011aa <__gedf2+0x4a>
 80011e8:	2000      	movs	r0, #0
 80011ea:	2c00      	cmp	r4, #0
 80011ec:	d0e1      	beq.n	80011b2 <__gedf2+0x52>
 80011ee:	e7dc      	b.n	80011aa <__gedf2+0x4a>
 80011f0:	429a      	cmp	r2, r3
 80011f2:	dc0a      	bgt.n	800120a <__gedf2+0xaa>
 80011f4:	dbe8      	blt.n	80011c8 <__gedf2+0x68>
 80011f6:	454f      	cmp	r7, r9
 80011f8:	d8d7      	bhi.n	80011aa <__gedf2+0x4a>
 80011fa:	d00e      	beq.n	800121a <__gedf2+0xba>
 80011fc:	2000      	movs	r0, #0
 80011fe:	454f      	cmp	r7, r9
 8001200:	d2d7      	bcs.n	80011b2 <__gedf2+0x52>
 8001202:	2900      	cmp	r1, #0
 8001204:	d0e2      	beq.n	80011cc <__gedf2+0x6c>
 8001206:	0008      	movs	r0, r1
 8001208:	e7d3      	b.n	80011b2 <__gedf2+0x52>
 800120a:	4243      	negs	r3, r0
 800120c:	4158      	adcs	r0, r3
 800120e:	0040      	lsls	r0, r0, #1
 8001210:	3801      	subs	r0, #1
 8001212:	e7ce      	b.n	80011b2 <__gedf2+0x52>
 8001214:	2002      	movs	r0, #2
 8001216:	4240      	negs	r0, r0
 8001218:	e7cb      	b.n	80011b2 <__gedf2+0x52>
 800121a:	45c4      	cmp	ip, r8
 800121c:	d8c5      	bhi.n	80011aa <__gedf2+0x4a>
 800121e:	2000      	movs	r0, #0
 8001220:	45c4      	cmp	ip, r8
 8001222:	d2c6      	bcs.n	80011b2 <__gedf2+0x52>
 8001224:	e7ed      	b.n	8001202 <__gedf2+0xa2>
 8001226:	46c0      	nop			; (mov r8, r8)
 8001228:	000007ff 	.word	0x000007ff

0800122c <__ledf2>:
 800122c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800122e:	4647      	mov	r7, r8
 8001230:	46ce      	mov	lr, r9
 8001232:	0004      	movs	r4, r0
 8001234:	0018      	movs	r0, r3
 8001236:	0016      	movs	r6, r2
 8001238:	031b      	lsls	r3, r3, #12
 800123a:	0b1b      	lsrs	r3, r3, #12
 800123c:	4d2c      	ldr	r5, [pc, #176]	; (80012f0 <__ledf2+0xc4>)
 800123e:	004a      	lsls	r2, r1, #1
 8001240:	4699      	mov	r9, r3
 8001242:	b580      	push	{r7, lr}
 8001244:	0043      	lsls	r3, r0, #1
 8001246:	030f      	lsls	r7, r1, #12
 8001248:	46a4      	mov	ip, r4
 800124a:	46b0      	mov	r8, r6
 800124c:	0b3f      	lsrs	r7, r7, #12
 800124e:	0d52      	lsrs	r2, r2, #21
 8001250:	0fc9      	lsrs	r1, r1, #31
 8001252:	0d5b      	lsrs	r3, r3, #21
 8001254:	0fc0      	lsrs	r0, r0, #31
 8001256:	42aa      	cmp	r2, r5
 8001258:	d00d      	beq.n	8001276 <__ledf2+0x4a>
 800125a:	42ab      	cmp	r3, r5
 800125c:	d010      	beq.n	8001280 <__ledf2+0x54>
 800125e:	2a00      	cmp	r2, #0
 8001260:	d127      	bne.n	80012b2 <__ledf2+0x86>
 8001262:	433c      	orrs	r4, r7
 8001264:	2b00      	cmp	r3, #0
 8001266:	d111      	bne.n	800128c <__ledf2+0x60>
 8001268:	464d      	mov	r5, r9
 800126a:	432e      	orrs	r6, r5
 800126c:	d10e      	bne.n	800128c <__ledf2+0x60>
 800126e:	2000      	movs	r0, #0
 8001270:	2c00      	cmp	r4, #0
 8001272:	d015      	beq.n	80012a0 <__ledf2+0x74>
 8001274:	e00e      	b.n	8001294 <__ledf2+0x68>
 8001276:	003d      	movs	r5, r7
 8001278:	4325      	orrs	r5, r4
 800127a:	d110      	bne.n	800129e <__ledf2+0x72>
 800127c:	4293      	cmp	r3, r2
 800127e:	d118      	bne.n	80012b2 <__ledf2+0x86>
 8001280:	464d      	mov	r5, r9
 8001282:	432e      	orrs	r6, r5
 8001284:	d10b      	bne.n	800129e <__ledf2+0x72>
 8001286:	2a00      	cmp	r2, #0
 8001288:	d102      	bne.n	8001290 <__ledf2+0x64>
 800128a:	433c      	orrs	r4, r7
 800128c:	2c00      	cmp	r4, #0
 800128e:	d00b      	beq.n	80012a8 <__ledf2+0x7c>
 8001290:	4281      	cmp	r1, r0
 8001292:	d014      	beq.n	80012be <__ledf2+0x92>
 8001294:	2002      	movs	r0, #2
 8001296:	3901      	subs	r1, #1
 8001298:	4008      	ands	r0, r1
 800129a:	3801      	subs	r0, #1
 800129c:	e000      	b.n	80012a0 <__ledf2+0x74>
 800129e:	2002      	movs	r0, #2
 80012a0:	bcc0      	pop	{r6, r7}
 80012a2:	46b9      	mov	r9, r7
 80012a4:	46b0      	mov	r8, r6
 80012a6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80012a8:	2800      	cmp	r0, #0
 80012aa:	d1f9      	bne.n	80012a0 <__ledf2+0x74>
 80012ac:	2001      	movs	r0, #1
 80012ae:	4240      	negs	r0, r0
 80012b0:	e7f6      	b.n	80012a0 <__ledf2+0x74>
 80012b2:	2b00      	cmp	r3, #0
 80012b4:	d1ec      	bne.n	8001290 <__ledf2+0x64>
 80012b6:	464c      	mov	r4, r9
 80012b8:	4326      	orrs	r6, r4
 80012ba:	d1e9      	bne.n	8001290 <__ledf2+0x64>
 80012bc:	e7ea      	b.n	8001294 <__ledf2+0x68>
 80012be:	429a      	cmp	r2, r3
 80012c0:	dd04      	ble.n	80012cc <__ledf2+0xa0>
 80012c2:	4243      	negs	r3, r0
 80012c4:	4158      	adcs	r0, r3
 80012c6:	0040      	lsls	r0, r0, #1
 80012c8:	3801      	subs	r0, #1
 80012ca:	e7e9      	b.n	80012a0 <__ledf2+0x74>
 80012cc:	429a      	cmp	r2, r3
 80012ce:	dbeb      	blt.n	80012a8 <__ledf2+0x7c>
 80012d0:	454f      	cmp	r7, r9
 80012d2:	d8df      	bhi.n	8001294 <__ledf2+0x68>
 80012d4:	d006      	beq.n	80012e4 <__ledf2+0xb8>
 80012d6:	2000      	movs	r0, #0
 80012d8:	454f      	cmp	r7, r9
 80012da:	d2e1      	bcs.n	80012a0 <__ledf2+0x74>
 80012dc:	2900      	cmp	r1, #0
 80012de:	d0e5      	beq.n	80012ac <__ledf2+0x80>
 80012e0:	0008      	movs	r0, r1
 80012e2:	e7dd      	b.n	80012a0 <__ledf2+0x74>
 80012e4:	45c4      	cmp	ip, r8
 80012e6:	d8d5      	bhi.n	8001294 <__ledf2+0x68>
 80012e8:	2000      	movs	r0, #0
 80012ea:	45c4      	cmp	ip, r8
 80012ec:	d2d8      	bcs.n	80012a0 <__ledf2+0x74>
 80012ee:	e7f5      	b.n	80012dc <__ledf2+0xb0>
 80012f0:	000007ff 	.word	0x000007ff

080012f4 <Reset_Handler>:
 80012f4:	480d      	ldr	r0, [pc, #52]	; (800132c <LoopForever+0x2>)
 80012f6:	4685      	mov	sp, r0
 80012f8:	480d      	ldr	r0, [pc, #52]	; (8001330 <LoopForever+0x6>)
 80012fa:	490e      	ldr	r1, [pc, #56]	; (8001334 <LoopForever+0xa>)
 80012fc:	4a0e      	ldr	r2, [pc, #56]	; (8001338 <LoopForever+0xe>)
 80012fe:	2300      	movs	r3, #0
 8001300:	e002      	b.n	8001308 <LoopCopyDataInit>

08001302 <CopyDataInit>:
 8001302:	58d4      	ldr	r4, [r2, r3]
 8001304:	50c4      	str	r4, [r0, r3]
 8001306:	3304      	adds	r3, #4

08001308 <LoopCopyDataInit>:
 8001308:	18c4      	adds	r4, r0, r3
 800130a:	428c      	cmp	r4, r1
 800130c:	d3f9      	bcc.n	8001302 <CopyDataInit>
 800130e:	4a0b      	ldr	r2, [pc, #44]	; (800133c <LoopForever+0x12>)
 8001310:	4c0b      	ldr	r4, [pc, #44]	; (8001340 <LoopForever+0x16>)
 8001312:	2300      	movs	r3, #0
 8001314:	e001      	b.n	800131a <LoopFillZerobss>

08001316 <FillZerobss>:
 8001316:	6013      	str	r3, [r2, #0]
 8001318:	3204      	adds	r2, #4

0800131a <LoopFillZerobss>:
 800131a:	42a2      	cmp	r2, r4
 800131c:	d3fb      	bcc.n	8001316 <FillZerobss>
 800131e:	f000 fee9 	bl	80020f4 <SystemInit>
 8001322:	f000 ff3d 	bl	80021a0 <__libc_init_array>
 8001326:	f000 fed5 	bl	80020d4 <main>

0800132a <LoopForever>:
 800132a:	e7fe      	b.n	800132a <LoopForever>
 800132c:	20002000 	.word	0x20002000
 8001330:	20000000 	.word	0x20000000
 8001334:	20000434 	.word	0x20000434
 8001338:	08002384 	.word	0x08002384
 800133c:	20000434 	.word	0x20000434
 8001340:	20000460 	.word	0x20000460

08001344 <ADC1_COMP_IRQHandler>:
 8001344:	e7fe      	b.n	8001344 <ADC1_COMP_IRQHandler>
	...

08001348 <NVIC_EnableIRQ>:
 8001348:	b580      	push	{r7, lr}
 800134a:	b082      	sub	sp, #8
 800134c:	af00      	add	r7, sp, #0
 800134e:	0002      	movs	r2, r0
 8001350:	1dfb      	adds	r3, r7, #7
 8001352:	701a      	strb	r2, [r3, #0]
 8001354:	1dfb      	adds	r3, r7, #7
 8001356:	781b      	ldrb	r3, [r3, #0]
 8001358:	001a      	movs	r2, r3
 800135a:	231f      	movs	r3, #31
 800135c:	401a      	ands	r2, r3
 800135e:	4b04      	ldr	r3, [pc, #16]	; (8001370 <NVIC_EnableIRQ+0x28>)
 8001360:	2101      	movs	r1, #1
 8001362:	4091      	lsls	r1, r2
 8001364:	000a      	movs	r2, r1
 8001366:	601a      	str	r2, [r3, #0]
 8001368:	46c0      	nop			; (mov r8, r8)
 800136a:	46bd      	mov	sp, r7
 800136c:	b002      	add	sp, #8
 800136e:	bd80      	pop	{r7, pc}
 8001370:	e000e100 	.word	0xe000e100

08001374 <NVIC_SetPriority>:
 8001374:	b590      	push	{r4, r7, lr}
 8001376:	b083      	sub	sp, #12
 8001378:	af00      	add	r7, sp, #0
 800137a:	0002      	movs	r2, r0
 800137c:	6039      	str	r1, [r7, #0]
 800137e:	1dfb      	adds	r3, r7, #7
 8001380:	701a      	strb	r2, [r3, #0]
 8001382:	1dfb      	adds	r3, r7, #7
 8001384:	781b      	ldrb	r3, [r3, #0]
 8001386:	2b7f      	cmp	r3, #127	; 0x7f
 8001388:	d932      	bls.n	80013f0 <NVIC_SetPriority+0x7c>
 800138a:	4a2f      	ldr	r2, [pc, #188]	; (8001448 <NVIC_SetPriority+0xd4>)
 800138c:	1dfb      	adds	r3, r7, #7
 800138e:	781b      	ldrb	r3, [r3, #0]
 8001390:	0019      	movs	r1, r3
 8001392:	230f      	movs	r3, #15
 8001394:	400b      	ands	r3, r1
 8001396:	3b08      	subs	r3, #8
 8001398:	089b      	lsrs	r3, r3, #2
 800139a:	3306      	adds	r3, #6
 800139c:	009b      	lsls	r3, r3, #2
 800139e:	18d3      	adds	r3, r2, r3
 80013a0:	3304      	adds	r3, #4
 80013a2:	681b      	ldr	r3, [r3, #0]
 80013a4:	1dfa      	adds	r2, r7, #7
 80013a6:	7812      	ldrb	r2, [r2, #0]
 80013a8:	0011      	movs	r1, r2
 80013aa:	2203      	movs	r2, #3
 80013ac:	400a      	ands	r2, r1
 80013ae:	00d2      	lsls	r2, r2, #3
 80013b0:	21ff      	movs	r1, #255	; 0xff
 80013b2:	4091      	lsls	r1, r2
 80013b4:	000a      	movs	r2, r1
 80013b6:	43d2      	mvns	r2, r2
 80013b8:	401a      	ands	r2, r3
 80013ba:	0011      	movs	r1, r2
 80013bc:	683b      	ldr	r3, [r7, #0]
 80013be:	019b      	lsls	r3, r3, #6
 80013c0:	22ff      	movs	r2, #255	; 0xff
 80013c2:	401a      	ands	r2, r3
 80013c4:	1dfb      	adds	r3, r7, #7
 80013c6:	781b      	ldrb	r3, [r3, #0]
 80013c8:	0018      	movs	r0, r3
 80013ca:	2303      	movs	r3, #3
 80013cc:	4003      	ands	r3, r0
 80013ce:	00db      	lsls	r3, r3, #3
 80013d0:	409a      	lsls	r2, r3
 80013d2:	481d      	ldr	r0, [pc, #116]	; (8001448 <NVIC_SetPriority+0xd4>)
 80013d4:	1dfb      	adds	r3, r7, #7
 80013d6:	781b      	ldrb	r3, [r3, #0]
 80013d8:	001c      	movs	r4, r3
 80013da:	230f      	movs	r3, #15
 80013dc:	4023      	ands	r3, r4
 80013de:	3b08      	subs	r3, #8
 80013e0:	089b      	lsrs	r3, r3, #2
 80013e2:	430a      	orrs	r2, r1
 80013e4:	3306      	adds	r3, #6
 80013e6:	009b      	lsls	r3, r3, #2
 80013e8:	18c3      	adds	r3, r0, r3
 80013ea:	3304      	adds	r3, #4
 80013ec:	601a      	str	r2, [r3, #0]
 80013ee:	e027      	b.n	8001440 <NVIC_SetPriority+0xcc>
 80013f0:	4a16      	ldr	r2, [pc, #88]	; (800144c <NVIC_SetPriority+0xd8>)
 80013f2:	1dfb      	adds	r3, r7, #7
 80013f4:	781b      	ldrb	r3, [r3, #0]
 80013f6:	b25b      	sxtb	r3, r3
 80013f8:	089b      	lsrs	r3, r3, #2
 80013fa:	33c0      	adds	r3, #192	; 0xc0
 80013fc:	009b      	lsls	r3, r3, #2
 80013fe:	589b      	ldr	r3, [r3, r2]
 8001400:	1dfa      	adds	r2, r7, #7
 8001402:	7812      	ldrb	r2, [r2, #0]
 8001404:	0011      	movs	r1, r2
 8001406:	2203      	movs	r2, #3
 8001408:	400a      	ands	r2, r1
 800140a:	00d2      	lsls	r2, r2, #3
 800140c:	21ff      	movs	r1, #255	; 0xff
 800140e:	4091      	lsls	r1, r2
 8001410:	000a      	movs	r2, r1
 8001412:	43d2      	mvns	r2, r2
 8001414:	401a      	ands	r2, r3
 8001416:	0011      	movs	r1, r2
 8001418:	683b      	ldr	r3, [r7, #0]
 800141a:	019b      	lsls	r3, r3, #6
 800141c:	22ff      	movs	r2, #255	; 0xff
 800141e:	401a      	ands	r2, r3
 8001420:	1dfb      	adds	r3, r7, #7
 8001422:	781b      	ldrb	r3, [r3, #0]
 8001424:	0018      	movs	r0, r3
 8001426:	2303      	movs	r3, #3
 8001428:	4003      	ands	r3, r0
 800142a:	00db      	lsls	r3, r3, #3
 800142c:	409a      	lsls	r2, r3
 800142e:	4807      	ldr	r0, [pc, #28]	; (800144c <NVIC_SetPriority+0xd8>)
 8001430:	1dfb      	adds	r3, r7, #7
 8001432:	781b      	ldrb	r3, [r3, #0]
 8001434:	b25b      	sxtb	r3, r3
 8001436:	089b      	lsrs	r3, r3, #2
 8001438:	430a      	orrs	r2, r1
 800143a:	33c0      	adds	r3, #192	; 0xc0
 800143c:	009b      	lsls	r3, r3, #2
 800143e:	501a      	str	r2, [r3, r0]
 8001440:	46c0      	nop			; (mov r8, r8)
 8001442:	46bd      	mov	sp, r7
 8001444:	b003      	add	sp, #12
 8001446:	bd90      	pop	{r4, r7, pc}
 8001448:	e000ed00 	.word	0xe000ed00
 800144c:	e000e100 	.word	0xe000e100

08001450 <LL_RCC_HSI_Enable>:
 8001450:	b580      	push	{r7, lr}
 8001452:	af00      	add	r7, sp, #0
 8001454:	4b04      	ldr	r3, [pc, #16]	; (8001468 <LL_RCC_HSI_Enable+0x18>)
 8001456:	681a      	ldr	r2, [r3, #0]
 8001458:	4b03      	ldr	r3, [pc, #12]	; (8001468 <LL_RCC_HSI_Enable+0x18>)
 800145a:	2101      	movs	r1, #1
 800145c:	430a      	orrs	r2, r1
 800145e:	601a      	str	r2, [r3, #0]
 8001460:	46c0      	nop			; (mov r8, r8)
 8001462:	46bd      	mov	sp, r7
 8001464:	bd80      	pop	{r7, pc}
 8001466:	46c0      	nop			; (mov r8, r8)
 8001468:	40021000 	.word	0x40021000

0800146c <LL_RCC_HSI_IsReady>:
 800146c:	b580      	push	{r7, lr}
 800146e:	af00      	add	r7, sp, #0
 8001470:	4b05      	ldr	r3, [pc, #20]	; (8001488 <LL_RCC_HSI_IsReady+0x1c>)
 8001472:	681b      	ldr	r3, [r3, #0]
 8001474:	2202      	movs	r2, #2
 8001476:	4013      	ands	r3, r2
 8001478:	3b02      	subs	r3, #2
 800147a:	425a      	negs	r2, r3
 800147c:	4153      	adcs	r3, r2
 800147e:	b2db      	uxtb	r3, r3
 8001480:	0018      	movs	r0, r3
 8001482:	46bd      	mov	sp, r7
 8001484:	bd80      	pop	{r7, pc}
 8001486:	46c0      	nop			; (mov r8, r8)
 8001488:	40021000 	.word	0x40021000

0800148c <LL_RCC_SetSysClkSource>:
 800148c:	b580      	push	{r7, lr}
 800148e:	b082      	sub	sp, #8
 8001490:	af00      	add	r7, sp, #0
 8001492:	6078      	str	r0, [r7, #4]
 8001494:	4b06      	ldr	r3, [pc, #24]	; (80014b0 <LL_RCC_SetSysClkSource+0x24>)
 8001496:	685b      	ldr	r3, [r3, #4]
 8001498:	2203      	movs	r2, #3
 800149a:	4393      	bics	r3, r2
 800149c:	0019      	movs	r1, r3
 800149e:	4b04      	ldr	r3, [pc, #16]	; (80014b0 <LL_RCC_SetSysClkSource+0x24>)
 80014a0:	687a      	ldr	r2, [r7, #4]
 80014a2:	430a      	orrs	r2, r1
 80014a4:	605a      	str	r2, [r3, #4]
 80014a6:	46c0      	nop			; (mov r8, r8)
 80014a8:	46bd      	mov	sp, r7
 80014aa:	b002      	add	sp, #8
 80014ac:	bd80      	pop	{r7, pc}
 80014ae:	46c0      	nop			; (mov r8, r8)
 80014b0:	40021000 	.word	0x40021000

080014b4 <LL_RCC_GetSysClkSource>:
 80014b4:	b580      	push	{r7, lr}
 80014b6:	af00      	add	r7, sp, #0
 80014b8:	4b03      	ldr	r3, [pc, #12]	; (80014c8 <LL_RCC_GetSysClkSource+0x14>)
 80014ba:	685b      	ldr	r3, [r3, #4]
 80014bc:	220c      	movs	r2, #12
 80014be:	4013      	ands	r3, r2
 80014c0:	0018      	movs	r0, r3
 80014c2:	46bd      	mov	sp, r7
 80014c4:	bd80      	pop	{r7, pc}
 80014c6:	46c0      	nop			; (mov r8, r8)
 80014c8:	40021000 	.word	0x40021000

080014cc <LL_RCC_SetAHBPrescaler>:
 80014cc:	b580      	push	{r7, lr}
 80014ce:	b082      	sub	sp, #8
 80014d0:	af00      	add	r7, sp, #0
 80014d2:	6078      	str	r0, [r7, #4]
 80014d4:	4b06      	ldr	r3, [pc, #24]	; (80014f0 <LL_RCC_SetAHBPrescaler+0x24>)
 80014d6:	685b      	ldr	r3, [r3, #4]
 80014d8:	22f0      	movs	r2, #240	; 0xf0
 80014da:	4393      	bics	r3, r2
 80014dc:	0019      	movs	r1, r3
 80014de:	4b04      	ldr	r3, [pc, #16]	; (80014f0 <LL_RCC_SetAHBPrescaler+0x24>)
 80014e0:	687a      	ldr	r2, [r7, #4]
 80014e2:	430a      	orrs	r2, r1
 80014e4:	605a      	str	r2, [r3, #4]
 80014e6:	46c0      	nop			; (mov r8, r8)
 80014e8:	46bd      	mov	sp, r7
 80014ea:	b002      	add	sp, #8
 80014ec:	bd80      	pop	{r7, pc}
 80014ee:	46c0      	nop			; (mov r8, r8)
 80014f0:	40021000 	.word	0x40021000

080014f4 <LL_RCC_SetAPB1Prescaler>:
 80014f4:	b580      	push	{r7, lr}
 80014f6:	b082      	sub	sp, #8
 80014f8:	af00      	add	r7, sp, #0
 80014fa:	6078      	str	r0, [r7, #4]
 80014fc:	4b06      	ldr	r3, [pc, #24]	; (8001518 <LL_RCC_SetAPB1Prescaler+0x24>)
 80014fe:	685b      	ldr	r3, [r3, #4]
 8001500:	4a06      	ldr	r2, [pc, #24]	; (800151c <LL_RCC_SetAPB1Prescaler+0x28>)
 8001502:	4013      	ands	r3, r2
 8001504:	0019      	movs	r1, r3
 8001506:	4b04      	ldr	r3, [pc, #16]	; (8001518 <LL_RCC_SetAPB1Prescaler+0x24>)
 8001508:	687a      	ldr	r2, [r7, #4]
 800150a:	430a      	orrs	r2, r1
 800150c:	605a      	str	r2, [r3, #4]
 800150e:	46c0      	nop			; (mov r8, r8)
 8001510:	46bd      	mov	sp, r7
 8001512:	b002      	add	sp, #8
 8001514:	bd80      	pop	{r7, pc}
 8001516:	46c0      	nop			; (mov r8, r8)
 8001518:	40021000 	.word	0x40021000
 800151c:	fffff8ff 	.word	0xfffff8ff

08001520 <LL_RCC_PLL_Enable>:
 8001520:	b580      	push	{r7, lr}
 8001522:	af00      	add	r7, sp, #0
 8001524:	4b04      	ldr	r3, [pc, #16]	; (8001538 <LL_RCC_PLL_Enable+0x18>)
 8001526:	681a      	ldr	r2, [r3, #0]
 8001528:	4b03      	ldr	r3, [pc, #12]	; (8001538 <LL_RCC_PLL_Enable+0x18>)
 800152a:	2180      	movs	r1, #128	; 0x80
 800152c:	0449      	lsls	r1, r1, #17
 800152e:	430a      	orrs	r2, r1
 8001530:	601a      	str	r2, [r3, #0]
 8001532:	46c0      	nop			; (mov r8, r8)
 8001534:	46bd      	mov	sp, r7
 8001536:	bd80      	pop	{r7, pc}
 8001538:	40021000 	.word	0x40021000

0800153c <LL_RCC_PLL_IsReady>:
 800153c:	b580      	push	{r7, lr}
 800153e:	af00      	add	r7, sp, #0
 8001540:	4b07      	ldr	r3, [pc, #28]	; (8001560 <LL_RCC_PLL_IsReady+0x24>)
 8001542:	681a      	ldr	r2, [r3, #0]
 8001544:	2380      	movs	r3, #128	; 0x80
 8001546:	049b      	lsls	r3, r3, #18
 8001548:	4013      	ands	r3, r2
 800154a:	22fe      	movs	r2, #254	; 0xfe
 800154c:	0612      	lsls	r2, r2, #24
 800154e:	4694      	mov	ip, r2
 8001550:	4463      	add	r3, ip
 8001552:	425a      	negs	r2, r3
 8001554:	4153      	adcs	r3, r2
 8001556:	b2db      	uxtb	r3, r3
 8001558:	0018      	movs	r0, r3
 800155a:	46bd      	mov	sp, r7
 800155c:	bd80      	pop	{r7, pc}
 800155e:	46c0      	nop			; (mov r8, r8)
 8001560:	40021000 	.word	0x40021000

08001564 <LL_RCC_PLL_ConfigDomain_SYS>:
 8001564:	b580      	push	{r7, lr}
 8001566:	b082      	sub	sp, #8
 8001568:	af00      	add	r7, sp, #0
 800156a:	6078      	str	r0, [r7, #4]
 800156c:	6039      	str	r1, [r7, #0]
 800156e:	4b0e      	ldr	r3, [pc, #56]	; (80015a8 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8001570:	685b      	ldr	r3, [r3, #4]
 8001572:	4a0e      	ldr	r2, [pc, #56]	; (80015ac <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8001574:	4013      	ands	r3, r2
 8001576:	0019      	movs	r1, r3
 8001578:	687a      	ldr	r2, [r7, #4]
 800157a:	2380      	movs	r3, #128	; 0x80
 800157c:	025b      	lsls	r3, r3, #9
 800157e:	401a      	ands	r2, r3
 8001580:	683b      	ldr	r3, [r7, #0]
 8001582:	431a      	orrs	r2, r3
 8001584:	4b08      	ldr	r3, [pc, #32]	; (80015a8 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8001586:	430a      	orrs	r2, r1
 8001588:	605a      	str	r2, [r3, #4]
 800158a:	4b07      	ldr	r3, [pc, #28]	; (80015a8 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800158c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800158e:	220f      	movs	r2, #15
 8001590:	4393      	bics	r3, r2
 8001592:	0019      	movs	r1, r3
 8001594:	687b      	ldr	r3, [r7, #4]
 8001596:	220f      	movs	r2, #15
 8001598:	401a      	ands	r2, r3
 800159a:	4b03      	ldr	r3, [pc, #12]	; (80015a8 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800159c:	430a      	orrs	r2, r1
 800159e:	62da      	str	r2, [r3, #44]	; 0x2c
 80015a0:	46c0      	nop			; (mov r8, r8)
 80015a2:	46bd      	mov	sp, r7
 80015a4:	b002      	add	sp, #8
 80015a6:	bd80      	pop	{r7, pc}
 80015a8:	40021000 	.word	0x40021000
 80015ac:	ffc2ffff 	.word	0xffc2ffff

080015b0 <LL_FLASH_SetLatency>:
 80015b0:	b580      	push	{r7, lr}
 80015b2:	b082      	sub	sp, #8
 80015b4:	af00      	add	r7, sp, #0
 80015b6:	6078      	str	r0, [r7, #4]
 80015b8:	4b06      	ldr	r3, [pc, #24]	; (80015d4 <LL_FLASH_SetLatency+0x24>)
 80015ba:	681b      	ldr	r3, [r3, #0]
 80015bc:	2201      	movs	r2, #1
 80015be:	4393      	bics	r3, r2
 80015c0:	0019      	movs	r1, r3
 80015c2:	4b04      	ldr	r3, [pc, #16]	; (80015d4 <LL_FLASH_SetLatency+0x24>)
 80015c4:	687a      	ldr	r2, [r7, #4]
 80015c6:	430a      	orrs	r2, r1
 80015c8:	601a      	str	r2, [r3, #0]
 80015ca:	46c0      	nop			; (mov r8, r8)
 80015cc:	46bd      	mov	sp, r7
 80015ce:	b002      	add	sp, #8
 80015d0:	bd80      	pop	{r7, pc}
 80015d2:	46c0      	nop			; (mov r8, r8)
 80015d4:	40022000 	.word	0x40022000

080015d8 <LL_AHB1_GRP1_EnableClock>:
 80015d8:	b580      	push	{r7, lr}
 80015da:	b084      	sub	sp, #16
 80015dc:	af00      	add	r7, sp, #0
 80015de:	6078      	str	r0, [r7, #4]
 80015e0:	4b07      	ldr	r3, [pc, #28]	; (8001600 <LL_AHB1_GRP1_EnableClock+0x28>)
 80015e2:	6959      	ldr	r1, [r3, #20]
 80015e4:	4b06      	ldr	r3, [pc, #24]	; (8001600 <LL_AHB1_GRP1_EnableClock+0x28>)
 80015e6:	687a      	ldr	r2, [r7, #4]
 80015e8:	430a      	orrs	r2, r1
 80015ea:	615a      	str	r2, [r3, #20]
 80015ec:	4b04      	ldr	r3, [pc, #16]	; (8001600 <LL_AHB1_GRP1_EnableClock+0x28>)
 80015ee:	695b      	ldr	r3, [r3, #20]
 80015f0:	687a      	ldr	r2, [r7, #4]
 80015f2:	4013      	ands	r3, r2
 80015f4:	60fb      	str	r3, [r7, #12]
 80015f6:	68fb      	ldr	r3, [r7, #12]
 80015f8:	46c0      	nop			; (mov r8, r8)
 80015fa:	46bd      	mov	sp, r7
 80015fc:	b004      	add	sp, #16
 80015fe:	bd80      	pop	{r7, pc}
 8001600:	40021000 	.word	0x40021000

08001604 <LL_APB1_GRP1_EnableClock>:
 8001604:	b580      	push	{r7, lr}
 8001606:	b084      	sub	sp, #16
 8001608:	af00      	add	r7, sp, #0
 800160a:	6078      	str	r0, [r7, #4]
 800160c:	4b07      	ldr	r3, [pc, #28]	; (800162c <LL_APB1_GRP1_EnableClock+0x28>)
 800160e:	69d9      	ldr	r1, [r3, #28]
 8001610:	4b06      	ldr	r3, [pc, #24]	; (800162c <LL_APB1_GRP1_EnableClock+0x28>)
 8001612:	687a      	ldr	r2, [r7, #4]
 8001614:	430a      	orrs	r2, r1
 8001616:	61da      	str	r2, [r3, #28]
 8001618:	4b04      	ldr	r3, [pc, #16]	; (800162c <LL_APB1_GRP1_EnableClock+0x28>)
 800161a:	69db      	ldr	r3, [r3, #28]
 800161c:	687a      	ldr	r2, [r7, #4]
 800161e:	4013      	ands	r3, r2
 8001620:	60fb      	str	r3, [r7, #12]
 8001622:	68fb      	ldr	r3, [r7, #12]
 8001624:	46c0      	nop			; (mov r8, r8)
 8001626:	46bd      	mov	sp, r7
 8001628:	b004      	add	sp, #16
 800162a:	bd80      	pop	{r7, pc}
 800162c:	40021000 	.word	0x40021000

08001630 <LL_GPIO_SetPinMode>:
 8001630:	b580      	push	{r7, lr}
 8001632:	b084      	sub	sp, #16
 8001634:	af00      	add	r7, sp, #0
 8001636:	60f8      	str	r0, [r7, #12]
 8001638:	60b9      	str	r1, [r7, #8]
 800163a:	607a      	str	r2, [r7, #4]
 800163c:	68fb      	ldr	r3, [r7, #12]
 800163e:	6819      	ldr	r1, [r3, #0]
 8001640:	68bb      	ldr	r3, [r7, #8]
 8001642:	435b      	muls	r3, r3
 8001644:	001a      	movs	r2, r3
 8001646:	0013      	movs	r3, r2
 8001648:	005b      	lsls	r3, r3, #1
 800164a:	189b      	adds	r3, r3, r2
 800164c:	43db      	mvns	r3, r3
 800164e:	400b      	ands	r3, r1
 8001650:	001a      	movs	r2, r3
 8001652:	68bb      	ldr	r3, [r7, #8]
 8001654:	435b      	muls	r3, r3
 8001656:	6879      	ldr	r1, [r7, #4]
 8001658:	434b      	muls	r3, r1
 800165a:	431a      	orrs	r2, r3
 800165c:	68fb      	ldr	r3, [r7, #12]
 800165e:	601a      	str	r2, [r3, #0]
 8001660:	46c0      	nop			; (mov r8, r8)
 8001662:	46bd      	mov	sp, r7
 8001664:	b004      	add	sp, #16
 8001666:	bd80      	pop	{r7, pc}

08001668 <LL_GPIO_SetAFPin_0_7>:
 8001668:	b580      	push	{r7, lr}
 800166a:	b084      	sub	sp, #16
 800166c:	af00      	add	r7, sp, #0
 800166e:	60f8      	str	r0, [r7, #12]
 8001670:	60b9      	str	r1, [r7, #8]
 8001672:	607a      	str	r2, [r7, #4]
 8001674:	68fb      	ldr	r3, [r7, #12]
 8001676:	6a19      	ldr	r1, [r3, #32]
 8001678:	68bb      	ldr	r3, [r7, #8]
 800167a:	435b      	muls	r3, r3
 800167c:	68ba      	ldr	r2, [r7, #8]
 800167e:	4353      	muls	r3, r2
 8001680:	68ba      	ldr	r2, [r7, #8]
 8001682:	435a      	muls	r2, r3
 8001684:	0013      	movs	r3, r2
 8001686:	011b      	lsls	r3, r3, #4
 8001688:	1a9b      	subs	r3, r3, r2
 800168a:	43db      	mvns	r3, r3
 800168c:	400b      	ands	r3, r1
 800168e:	001a      	movs	r2, r3
 8001690:	68bb      	ldr	r3, [r7, #8]
 8001692:	435b      	muls	r3, r3
 8001694:	68b9      	ldr	r1, [r7, #8]
 8001696:	434b      	muls	r3, r1
 8001698:	68b9      	ldr	r1, [r7, #8]
 800169a:	434b      	muls	r3, r1
 800169c:	6879      	ldr	r1, [r7, #4]
 800169e:	434b      	muls	r3, r1
 80016a0:	431a      	orrs	r2, r3
 80016a2:	68fb      	ldr	r3, [r7, #12]
 80016a4:	621a      	str	r2, [r3, #32]
 80016a6:	46c0      	nop			; (mov r8, r8)
 80016a8:	46bd      	mov	sp, r7
 80016aa:	b004      	add	sp, #16
 80016ac:	bd80      	pop	{r7, pc}

080016ae <LL_GPIO_IsInputPinSet>:
 80016ae:	b580      	push	{r7, lr}
 80016b0:	b082      	sub	sp, #8
 80016b2:	af00      	add	r7, sp, #0
 80016b4:	6078      	str	r0, [r7, #4]
 80016b6:	6039      	str	r1, [r7, #0]
 80016b8:	687b      	ldr	r3, [r7, #4]
 80016ba:	691b      	ldr	r3, [r3, #16]
 80016bc:	683a      	ldr	r2, [r7, #0]
 80016be:	4013      	ands	r3, r2
 80016c0:	683a      	ldr	r2, [r7, #0]
 80016c2:	1ad3      	subs	r3, r2, r3
 80016c4:	425a      	negs	r2, r3
 80016c6:	4153      	adcs	r3, r2
 80016c8:	b2db      	uxtb	r3, r3
 80016ca:	0018      	movs	r0, r3
 80016cc:	46bd      	mov	sp, r7
 80016ce:	b002      	add	sp, #8
 80016d0:	bd80      	pop	{r7, pc}

080016d2 <LL_GPIO_WriteOutputPort>:
 80016d2:	b580      	push	{r7, lr}
 80016d4:	b082      	sub	sp, #8
 80016d6:	af00      	add	r7, sp, #0
 80016d8:	6078      	str	r0, [r7, #4]
 80016da:	6039      	str	r1, [r7, #0]
 80016dc:	687b      	ldr	r3, [r7, #4]
 80016de:	683a      	ldr	r2, [r7, #0]
 80016e0:	615a      	str	r2, [r3, #20]
 80016e2:	46c0      	nop			; (mov r8, r8)
 80016e4:	46bd      	mov	sp, r7
 80016e6:	b002      	add	sp, #8
 80016e8:	bd80      	pop	{r7, pc}

080016ea <LL_GPIO_ResetOutputPin>:
 80016ea:	b580      	push	{r7, lr}
 80016ec:	b082      	sub	sp, #8
 80016ee:	af00      	add	r7, sp, #0
 80016f0:	6078      	str	r0, [r7, #4]
 80016f2:	6039      	str	r1, [r7, #0]
 80016f4:	687b      	ldr	r3, [r7, #4]
 80016f6:	683a      	ldr	r2, [r7, #0]
 80016f8:	629a      	str	r2, [r3, #40]	; 0x28
 80016fa:	46c0      	nop			; (mov r8, r8)
 80016fc:	46bd      	mov	sp, r7
 80016fe:	b002      	add	sp, #8
 8001700:	bd80      	pop	{r7, pc}

08001702 <LL_TIM_EnableCounter>:
 8001702:	b580      	push	{r7, lr}
 8001704:	b082      	sub	sp, #8
 8001706:	af00      	add	r7, sp, #0
 8001708:	6078      	str	r0, [r7, #4]
 800170a:	687b      	ldr	r3, [r7, #4]
 800170c:	681b      	ldr	r3, [r3, #0]
 800170e:	2201      	movs	r2, #1
 8001710:	431a      	orrs	r2, r3
 8001712:	687b      	ldr	r3, [r7, #4]
 8001714:	601a      	str	r2, [r3, #0]
 8001716:	46c0      	nop			; (mov r8, r8)
 8001718:	46bd      	mov	sp, r7
 800171a:	b002      	add	sp, #8
 800171c:	bd80      	pop	{r7, pc}

0800171e <LL_TIM_SetCounterMode>:
 800171e:	b580      	push	{r7, lr}
 8001720:	b082      	sub	sp, #8
 8001722:	af00      	add	r7, sp, #0
 8001724:	6078      	str	r0, [r7, #4]
 8001726:	6039      	str	r1, [r7, #0]
 8001728:	687b      	ldr	r3, [r7, #4]
 800172a:	681b      	ldr	r3, [r3, #0]
 800172c:	2270      	movs	r2, #112	; 0x70
 800172e:	4393      	bics	r3, r2
 8001730:	001a      	movs	r2, r3
 8001732:	683b      	ldr	r3, [r7, #0]
 8001734:	431a      	orrs	r2, r3
 8001736:	687b      	ldr	r3, [r7, #4]
 8001738:	601a      	str	r2, [r3, #0]
 800173a:	46c0      	nop			; (mov r8, r8)
 800173c:	46bd      	mov	sp, r7
 800173e:	b002      	add	sp, #8
 8001740:	bd80      	pop	{r7, pc}

08001742 <LL_TIM_SetCounter>:
 8001742:	b580      	push	{r7, lr}
 8001744:	b082      	sub	sp, #8
 8001746:	af00      	add	r7, sp, #0
 8001748:	6078      	str	r0, [r7, #4]
 800174a:	6039      	str	r1, [r7, #0]
 800174c:	687b      	ldr	r3, [r7, #4]
 800174e:	683a      	ldr	r2, [r7, #0]
 8001750:	625a      	str	r2, [r3, #36]	; 0x24
 8001752:	46c0      	nop			; (mov r8, r8)
 8001754:	46bd      	mov	sp, r7
 8001756:	b002      	add	sp, #8
 8001758:	bd80      	pop	{r7, pc}

0800175a <LL_TIM_GetCounter>:
 800175a:	b580      	push	{r7, lr}
 800175c:	b082      	sub	sp, #8
 800175e:	af00      	add	r7, sp, #0
 8001760:	6078      	str	r0, [r7, #4]
 8001762:	687b      	ldr	r3, [r7, #4]
 8001764:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001766:	0018      	movs	r0, r3
 8001768:	46bd      	mov	sp, r7
 800176a:	b002      	add	sp, #8
 800176c:	bd80      	pop	{r7, pc}

0800176e <LL_TIM_SetPrescaler>:
 800176e:	b580      	push	{r7, lr}
 8001770:	b082      	sub	sp, #8
 8001772:	af00      	add	r7, sp, #0
 8001774:	6078      	str	r0, [r7, #4]
 8001776:	6039      	str	r1, [r7, #0]
 8001778:	687b      	ldr	r3, [r7, #4]
 800177a:	683a      	ldr	r2, [r7, #0]
 800177c:	629a      	str	r2, [r3, #40]	; 0x28
 800177e:	46c0      	nop			; (mov r8, r8)
 8001780:	46bd      	mov	sp, r7
 8001782:	b002      	add	sp, #8
 8001784:	bd80      	pop	{r7, pc}

08001786 <LL_TIM_SetAutoReload>:
 8001786:	b580      	push	{r7, lr}
 8001788:	b082      	sub	sp, #8
 800178a:	af00      	add	r7, sp, #0
 800178c:	6078      	str	r0, [r7, #4]
 800178e:	6039      	str	r1, [r7, #0]
 8001790:	687b      	ldr	r3, [r7, #4]
 8001792:	683a      	ldr	r2, [r7, #0]
 8001794:	62da      	str	r2, [r3, #44]	; 0x2c
 8001796:	46c0      	nop			; (mov r8, r8)
 8001798:	46bd      	mov	sp, r7
 800179a:	b002      	add	sp, #8
 800179c:	bd80      	pop	{r7, pc}

0800179e <LL_TIM_CC_EnableChannel>:
 800179e:	b580      	push	{r7, lr}
 80017a0:	b082      	sub	sp, #8
 80017a2:	af00      	add	r7, sp, #0
 80017a4:	6078      	str	r0, [r7, #4]
 80017a6:	6039      	str	r1, [r7, #0]
 80017a8:	687b      	ldr	r3, [r7, #4]
 80017aa:	6a1a      	ldr	r2, [r3, #32]
 80017ac:	683b      	ldr	r3, [r7, #0]
 80017ae:	431a      	orrs	r2, r3
 80017b0:	687b      	ldr	r3, [r7, #4]
 80017b2:	621a      	str	r2, [r3, #32]
 80017b4:	46c0      	nop			; (mov r8, r8)
 80017b6:	46bd      	mov	sp, r7
 80017b8:	b002      	add	sp, #8
 80017ba:	bd80      	pop	{r7, pc}

080017bc <LL_TIM_OC_SetMode>:
 80017bc:	b5b0      	push	{r4, r5, r7, lr}
 80017be:	b084      	sub	sp, #16
 80017c0:	af00      	add	r7, sp, #0
 80017c2:	60f8      	str	r0, [r7, #12]
 80017c4:	60b9      	str	r1, [r7, #8]
 80017c6:	607a      	str	r2, [r7, #4]
 80017c8:	68bb      	ldr	r3, [r7, #8]
 80017ca:	2b01      	cmp	r3, #1
 80017cc:	d01e      	beq.n	800180c <LL_TIM_OC_SetMode+0x50>
 80017ce:	68bb      	ldr	r3, [r7, #8]
 80017d0:	2b04      	cmp	r3, #4
 80017d2:	d019      	beq.n	8001808 <LL_TIM_OC_SetMode+0x4c>
 80017d4:	68bb      	ldr	r3, [r7, #8]
 80017d6:	2b10      	cmp	r3, #16
 80017d8:	d014      	beq.n	8001804 <LL_TIM_OC_SetMode+0x48>
 80017da:	68bb      	ldr	r3, [r7, #8]
 80017dc:	2b40      	cmp	r3, #64	; 0x40
 80017de:	d00f      	beq.n	8001800 <LL_TIM_OC_SetMode+0x44>
 80017e0:	68ba      	ldr	r2, [r7, #8]
 80017e2:	2380      	movs	r3, #128	; 0x80
 80017e4:	005b      	lsls	r3, r3, #1
 80017e6:	429a      	cmp	r2, r3
 80017e8:	d008      	beq.n	80017fc <LL_TIM_OC_SetMode+0x40>
 80017ea:	68ba      	ldr	r2, [r7, #8]
 80017ec:	2380      	movs	r3, #128	; 0x80
 80017ee:	00db      	lsls	r3, r3, #3
 80017f0:	429a      	cmp	r2, r3
 80017f2:	d101      	bne.n	80017f8 <LL_TIM_OC_SetMode+0x3c>
 80017f4:	2305      	movs	r3, #5
 80017f6:	e00a      	b.n	800180e <LL_TIM_OC_SetMode+0x52>
 80017f8:	2306      	movs	r3, #6
 80017fa:	e008      	b.n	800180e <LL_TIM_OC_SetMode+0x52>
 80017fc:	2304      	movs	r3, #4
 80017fe:	e006      	b.n	800180e <LL_TIM_OC_SetMode+0x52>
 8001800:	2303      	movs	r3, #3
 8001802:	e004      	b.n	800180e <LL_TIM_OC_SetMode+0x52>
 8001804:	2302      	movs	r3, #2
 8001806:	e002      	b.n	800180e <LL_TIM_OC_SetMode+0x52>
 8001808:	2301      	movs	r3, #1
 800180a:	e000      	b.n	800180e <LL_TIM_OC_SetMode+0x52>
 800180c:	2300      	movs	r3, #0
 800180e:	001d      	movs	r5, r3
 8001810:	68fb      	ldr	r3, [r7, #12]
 8001812:	3318      	adds	r3, #24
 8001814:	001a      	movs	r2, r3
 8001816:	0029      	movs	r1, r5
 8001818:	4b0c      	ldr	r3, [pc, #48]	; (800184c <LL_TIM_OC_SetMode+0x90>)
 800181a:	5c5b      	ldrb	r3, [r3, r1]
 800181c:	18d3      	adds	r3, r2, r3
 800181e:	001c      	movs	r4, r3
 8001820:	6823      	ldr	r3, [r4, #0]
 8001822:	0029      	movs	r1, r5
 8001824:	4a0a      	ldr	r2, [pc, #40]	; (8001850 <LL_TIM_OC_SetMode+0x94>)
 8001826:	5c52      	ldrb	r2, [r2, r1]
 8001828:	0011      	movs	r1, r2
 800182a:	2273      	movs	r2, #115	; 0x73
 800182c:	408a      	lsls	r2, r1
 800182e:	43d2      	mvns	r2, r2
 8001830:	401a      	ands	r2, r3
 8001832:	0029      	movs	r1, r5
 8001834:	4b06      	ldr	r3, [pc, #24]	; (8001850 <LL_TIM_OC_SetMode+0x94>)
 8001836:	5c5b      	ldrb	r3, [r3, r1]
 8001838:	0019      	movs	r1, r3
 800183a:	687b      	ldr	r3, [r7, #4]
 800183c:	408b      	lsls	r3, r1
 800183e:	4313      	orrs	r3, r2
 8001840:	6023      	str	r3, [r4, #0]
 8001842:	46c0      	nop			; (mov r8, r8)
 8001844:	46bd      	mov	sp, r7
 8001846:	b004      	add	sp, #16
 8001848:	bdb0      	pop	{r4, r5, r7, pc}
 800184a:	46c0      	nop			; (mov r8, r8)
 800184c:	08002354 	.word	0x08002354
 8001850:	0800235c 	.word	0x0800235c

08001854 <LL_TIM_OC_SetPolarity>:
 8001854:	b590      	push	{r4, r7, lr}
 8001856:	b085      	sub	sp, #20
 8001858:	af00      	add	r7, sp, #0
 800185a:	60f8      	str	r0, [r7, #12]
 800185c:	60b9      	str	r1, [r7, #8]
 800185e:	607a      	str	r2, [r7, #4]
 8001860:	68bb      	ldr	r3, [r7, #8]
 8001862:	2b01      	cmp	r3, #1
 8001864:	d01e      	beq.n	80018a4 <LL_TIM_OC_SetPolarity+0x50>
 8001866:	68bb      	ldr	r3, [r7, #8]
 8001868:	2b04      	cmp	r3, #4
 800186a:	d019      	beq.n	80018a0 <LL_TIM_OC_SetPolarity+0x4c>
 800186c:	68bb      	ldr	r3, [r7, #8]
 800186e:	2b10      	cmp	r3, #16
 8001870:	d014      	beq.n	800189c <LL_TIM_OC_SetPolarity+0x48>
 8001872:	68bb      	ldr	r3, [r7, #8]
 8001874:	2b40      	cmp	r3, #64	; 0x40
 8001876:	d00f      	beq.n	8001898 <LL_TIM_OC_SetPolarity+0x44>
 8001878:	68ba      	ldr	r2, [r7, #8]
 800187a:	2380      	movs	r3, #128	; 0x80
 800187c:	005b      	lsls	r3, r3, #1
 800187e:	429a      	cmp	r2, r3
 8001880:	d008      	beq.n	8001894 <LL_TIM_OC_SetPolarity+0x40>
 8001882:	68ba      	ldr	r2, [r7, #8]
 8001884:	2380      	movs	r3, #128	; 0x80
 8001886:	00db      	lsls	r3, r3, #3
 8001888:	429a      	cmp	r2, r3
 800188a:	d101      	bne.n	8001890 <LL_TIM_OC_SetPolarity+0x3c>
 800188c:	2305      	movs	r3, #5
 800188e:	e00a      	b.n	80018a6 <LL_TIM_OC_SetPolarity+0x52>
 8001890:	2306      	movs	r3, #6
 8001892:	e008      	b.n	80018a6 <LL_TIM_OC_SetPolarity+0x52>
 8001894:	2304      	movs	r3, #4
 8001896:	e006      	b.n	80018a6 <LL_TIM_OC_SetPolarity+0x52>
 8001898:	2303      	movs	r3, #3
 800189a:	e004      	b.n	80018a6 <LL_TIM_OC_SetPolarity+0x52>
 800189c:	2302      	movs	r3, #2
 800189e:	e002      	b.n	80018a6 <LL_TIM_OC_SetPolarity+0x52>
 80018a0:	2301      	movs	r3, #1
 80018a2:	e000      	b.n	80018a6 <LL_TIM_OC_SetPolarity+0x52>
 80018a4:	2300      	movs	r3, #0
 80018a6:	001c      	movs	r4, r3
 80018a8:	68fb      	ldr	r3, [r7, #12]
 80018aa:	6a1b      	ldr	r3, [r3, #32]
 80018ac:	0021      	movs	r1, r4
 80018ae:	4a0a      	ldr	r2, [pc, #40]	; (80018d8 <LL_TIM_OC_SetPolarity+0x84>)
 80018b0:	5c52      	ldrb	r2, [r2, r1]
 80018b2:	0011      	movs	r1, r2
 80018b4:	2202      	movs	r2, #2
 80018b6:	408a      	lsls	r2, r1
 80018b8:	43d2      	mvns	r2, r2
 80018ba:	401a      	ands	r2, r3
 80018bc:	0021      	movs	r1, r4
 80018be:	4b06      	ldr	r3, [pc, #24]	; (80018d8 <LL_TIM_OC_SetPolarity+0x84>)
 80018c0:	5c5b      	ldrb	r3, [r3, r1]
 80018c2:	0019      	movs	r1, r3
 80018c4:	687b      	ldr	r3, [r7, #4]
 80018c6:	408b      	lsls	r3, r1
 80018c8:	431a      	orrs	r2, r3
 80018ca:	68fb      	ldr	r3, [r7, #12]
 80018cc:	621a      	str	r2, [r3, #32]
 80018ce:	46c0      	nop			; (mov r8, r8)
 80018d0:	46bd      	mov	sp, r7
 80018d2:	b005      	add	sp, #20
 80018d4:	bd90      	pop	{r4, r7, pc}
 80018d6:	46c0      	nop			; (mov r8, r8)
 80018d8:	0800236c 	.word	0x0800236c

080018dc <LL_TIM_OC_SetCompareCH1>:
 80018dc:	b580      	push	{r7, lr}
 80018de:	b082      	sub	sp, #8
 80018e0:	af00      	add	r7, sp, #0
 80018e2:	6078      	str	r0, [r7, #4]
 80018e4:	6039      	str	r1, [r7, #0]
 80018e6:	687b      	ldr	r3, [r7, #4]
 80018e8:	683a      	ldr	r2, [r7, #0]
 80018ea:	635a      	str	r2, [r3, #52]	; 0x34
 80018ec:	46c0      	nop			; (mov r8, r8)
 80018ee:	46bd      	mov	sp, r7
 80018f0:	b002      	add	sp, #8
 80018f2:	bd80      	pop	{r7, pc}

080018f4 <LL_TIM_IC_SetActiveInput>:
 80018f4:	b5b0      	push	{r4, r5, r7, lr}
 80018f6:	b084      	sub	sp, #16
 80018f8:	af00      	add	r7, sp, #0
 80018fa:	60f8      	str	r0, [r7, #12]
 80018fc:	60b9      	str	r1, [r7, #8]
 80018fe:	607a      	str	r2, [r7, #4]
 8001900:	68bb      	ldr	r3, [r7, #8]
 8001902:	2b01      	cmp	r3, #1
 8001904:	d01e      	beq.n	8001944 <LL_TIM_IC_SetActiveInput+0x50>
 8001906:	68bb      	ldr	r3, [r7, #8]
 8001908:	2b04      	cmp	r3, #4
 800190a:	d019      	beq.n	8001940 <LL_TIM_IC_SetActiveInput+0x4c>
 800190c:	68bb      	ldr	r3, [r7, #8]
 800190e:	2b10      	cmp	r3, #16
 8001910:	d014      	beq.n	800193c <LL_TIM_IC_SetActiveInput+0x48>
 8001912:	68bb      	ldr	r3, [r7, #8]
 8001914:	2b40      	cmp	r3, #64	; 0x40
 8001916:	d00f      	beq.n	8001938 <LL_TIM_IC_SetActiveInput+0x44>
 8001918:	68ba      	ldr	r2, [r7, #8]
 800191a:	2380      	movs	r3, #128	; 0x80
 800191c:	005b      	lsls	r3, r3, #1
 800191e:	429a      	cmp	r2, r3
 8001920:	d008      	beq.n	8001934 <LL_TIM_IC_SetActiveInput+0x40>
 8001922:	68ba      	ldr	r2, [r7, #8]
 8001924:	2380      	movs	r3, #128	; 0x80
 8001926:	00db      	lsls	r3, r3, #3
 8001928:	429a      	cmp	r2, r3
 800192a:	d101      	bne.n	8001930 <LL_TIM_IC_SetActiveInput+0x3c>
 800192c:	2305      	movs	r3, #5
 800192e:	e00a      	b.n	8001946 <LL_TIM_IC_SetActiveInput+0x52>
 8001930:	2306      	movs	r3, #6
 8001932:	e008      	b.n	8001946 <LL_TIM_IC_SetActiveInput+0x52>
 8001934:	2304      	movs	r3, #4
 8001936:	e006      	b.n	8001946 <LL_TIM_IC_SetActiveInput+0x52>
 8001938:	2303      	movs	r3, #3
 800193a:	e004      	b.n	8001946 <LL_TIM_IC_SetActiveInput+0x52>
 800193c:	2302      	movs	r3, #2
 800193e:	e002      	b.n	8001946 <LL_TIM_IC_SetActiveInput+0x52>
 8001940:	2301      	movs	r3, #1
 8001942:	e000      	b.n	8001946 <LL_TIM_IC_SetActiveInput+0x52>
 8001944:	2300      	movs	r3, #0
 8001946:	001d      	movs	r5, r3
 8001948:	68fb      	ldr	r3, [r7, #12]
 800194a:	3318      	adds	r3, #24
 800194c:	001a      	movs	r2, r3
 800194e:	0029      	movs	r1, r5
 8001950:	4b0c      	ldr	r3, [pc, #48]	; (8001984 <LL_TIM_IC_SetActiveInput+0x90>)
 8001952:	5c5b      	ldrb	r3, [r3, r1]
 8001954:	18d3      	adds	r3, r2, r3
 8001956:	001c      	movs	r4, r3
 8001958:	6823      	ldr	r3, [r4, #0]
 800195a:	0029      	movs	r1, r5
 800195c:	4a0a      	ldr	r2, [pc, #40]	; (8001988 <LL_TIM_IC_SetActiveInput+0x94>)
 800195e:	5c52      	ldrb	r2, [r2, r1]
 8001960:	0011      	movs	r1, r2
 8001962:	2203      	movs	r2, #3
 8001964:	408a      	lsls	r2, r1
 8001966:	43d2      	mvns	r2, r2
 8001968:	401a      	ands	r2, r3
 800196a:	687b      	ldr	r3, [r7, #4]
 800196c:	0c1b      	lsrs	r3, r3, #16
 800196e:	0028      	movs	r0, r5
 8001970:	4905      	ldr	r1, [pc, #20]	; (8001988 <LL_TIM_IC_SetActiveInput+0x94>)
 8001972:	5c09      	ldrb	r1, [r1, r0]
 8001974:	408b      	lsls	r3, r1
 8001976:	4313      	orrs	r3, r2
 8001978:	6023      	str	r3, [r4, #0]
 800197a:	46c0      	nop			; (mov r8, r8)
 800197c:	46bd      	mov	sp, r7
 800197e:	b004      	add	sp, #16
 8001980:	bdb0      	pop	{r4, r5, r7, pc}
 8001982:	46c0      	nop			; (mov r8, r8)
 8001984:	08002354 	.word	0x08002354
 8001988:	08002364 	.word	0x08002364

0800198c <LL_TIM_IC_SetPrescaler>:
 800198c:	b5b0      	push	{r4, r5, r7, lr}
 800198e:	b084      	sub	sp, #16
 8001990:	af00      	add	r7, sp, #0
 8001992:	60f8      	str	r0, [r7, #12]
 8001994:	60b9      	str	r1, [r7, #8]
 8001996:	607a      	str	r2, [r7, #4]
 8001998:	68bb      	ldr	r3, [r7, #8]
 800199a:	2b01      	cmp	r3, #1
 800199c:	d01e      	beq.n	80019dc <LL_TIM_IC_SetPrescaler+0x50>
 800199e:	68bb      	ldr	r3, [r7, #8]
 80019a0:	2b04      	cmp	r3, #4
 80019a2:	d019      	beq.n	80019d8 <LL_TIM_IC_SetPrescaler+0x4c>
 80019a4:	68bb      	ldr	r3, [r7, #8]
 80019a6:	2b10      	cmp	r3, #16
 80019a8:	d014      	beq.n	80019d4 <LL_TIM_IC_SetPrescaler+0x48>
 80019aa:	68bb      	ldr	r3, [r7, #8]
 80019ac:	2b40      	cmp	r3, #64	; 0x40
 80019ae:	d00f      	beq.n	80019d0 <LL_TIM_IC_SetPrescaler+0x44>
 80019b0:	68ba      	ldr	r2, [r7, #8]
 80019b2:	2380      	movs	r3, #128	; 0x80
 80019b4:	005b      	lsls	r3, r3, #1
 80019b6:	429a      	cmp	r2, r3
 80019b8:	d008      	beq.n	80019cc <LL_TIM_IC_SetPrescaler+0x40>
 80019ba:	68ba      	ldr	r2, [r7, #8]
 80019bc:	2380      	movs	r3, #128	; 0x80
 80019be:	00db      	lsls	r3, r3, #3
 80019c0:	429a      	cmp	r2, r3
 80019c2:	d101      	bne.n	80019c8 <LL_TIM_IC_SetPrescaler+0x3c>
 80019c4:	2305      	movs	r3, #5
 80019c6:	e00a      	b.n	80019de <LL_TIM_IC_SetPrescaler+0x52>
 80019c8:	2306      	movs	r3, #6
 80019ca:	e008      	b.n	80019de <LL_TIM_IC_SetPrescaler+0x52>
 80019cc:	2304      	movs	r3, #4
 80019ce:	e006      	b.n	80019de <LL_TIM_IC_SetPrescaler+0x52>
 80019d0:	2303      	movs	r3, #3
 80019d2:	e004      	b.n	80019de <LL_TIM_IC_SetPrescaler+0x52>
 80019d4:	2302      	movs	r3, #2
 80019d6:	e002      	b.n	80019de <LL_TIM_IC_SetPrescaler+0x52>
 80019d8:	2301      	movs	r3, #1
 80019da:	e000      	b.n	80019de <LL_TIM_IC_SetPrescaler+0x52>
 80019dc:	2300      	movs	r3, #0
 80019de:	001d      	movs	r5, r3
 80019e0:	68fb      	ldr	r3, [r7, #12]
 80019e2:	3318      	adds	r3, #24
 80019e4:	001a      	movs	r2, r3
 80019e6:	0029      	movs	r1, r5
 80019e8:	4b0c      	ldr	r3, [pc, #48]	; (8001a1c <LL_TIM_IC_SetPrescaler+0x90>)
 80019ea:	5c5b      	ldrb	r3, [r3, r1]
 80019ec:	18d3      	adds	r3, r2, r3
 80019ee:	001c      	movs	r4, r3
 80019f0:	6823      	ldr	r3, [r4, #0]
 80019f2:	0029      	movs	r1, r5
 80019f4:	4a0a      	ldr	r2, [pc, #40]	; (8001a20 <LL_TIM_IC_SetPrescaler+0x94>)
 80019f6:	5c52      	ldrb	r2, [r2, r1]
 80019f8:	0011      	movs	r1, r2
 80019fa:	220c      	movs	r2, #12
 80019fc:	408a      	lsls	r2, r1
 80019fe:	43d2      	mvns	r2, r2
 8001a00:	401a      	ands	r2, r3
 8001a02:	687b      	ldr	r3, [r7, #4]
 8001a04:	0c1b      	lsrs	r3, r3, #16
 8001a06:	0028      	movs	r0, r5
 8001a08:	4905      	ldr	r1, [pc, #20]	; (8001a20 <LL_TIM_IC_SetPrescaler+0x94>)
 8001a0a:	5c09      	ldrb	r1, [r1, r0]
 8001a0c:	408b      	lsls	r3, r1
 8001a0e:	4313      	orrs	r3, r2
 8001a10:	6023      	str	r3, [r4, #0]
 8001a12:	46c0      	nop			; (mov r8, r8)
 8001a14:	46bd      	mov	sp, r7
 8001a16:	b004      	add	sp, #16
 8001a18:	bdb0      	pop	{r4, r5, r7, pc}
 8001a1a:	46c0      	nop			; (mov r8, r8)
 8001a1c:	08002354 	.word	0x08002354
 8001a20:	08002364 	.word	0x08002364

08001a24 <LL_TIM_IC_SetPolarity>:
 8001a24:	b590      	push	{r4, r7, lr}
 8001a26:	b085      	sub	sp, #20
 8001a28:	af00      	add	r7, sp, #0
 8001a2a:	60f8      	str	r0, [r7, #12]
 8001a2c:	60b9      	str	r1, [r7, #8]
 8001a2e:	607a      	str	r2, [r7, #4]
 8001a30:	68bb      	ldr	r3, [r7, #8]
 8001a32:	2b01      	cmp	r3, #1
 8001a34:	d01e      	beq.n	8001a74 <LL_TIM_IC_SetPolarity+0x50>
 8001a36:	68bb      	ldr	r3, [r7, #8]
 8001a38:	2b04      	cmp	r3, #4
 8001a3a:	d019      	beq.n	8001a70 <LL_TIM_IC_SetPolarity+0x4c>
 8001a3c:	68bb      	ldr	r3, [r7, #8]
 8001a3e:	2b10      	cmp	r3, #16
 8001a40:	d014      	beq.n	8001a6c <LL_TIM_IC_SetPolarity+0x48>
 8001a42:	68bb      	ldr	r3, [r7, #8]
 8001a44:	2b40      	cmp	r3, #64	; 0x40
 8001a46:	d00f      	beq.n	8001a68 <LL_TIM_IC_SetPolarity+0x44>
 8001a48:	68ba      	ldr	r2, [r7, #8]
 8001a4a:	2380      	movs	r3, #128	; 0x80
 8001a4c:	005b      	lsls	r3, r3, #1
 8001a4e:	429a      	cmp	r2, r3
 8001a50:	d008      	beq.n	8001a64 <LL_TIM_IC_SetPolarity+0x40>
 8001a52:	68ba      	ldr	r2, [r7, #8]
 8001a54:	2380      	movs	r3, #128	; 0x80
 8001a56:	00db      	lsls	r3, r3, #3
 8001a58:	429a      	cmp	r2, r3
 8001a5a:	d101      	bne.n	8001a60 <LL_TIM_IC_SetPolarity+0x3c>
 8001a5c:	2305      	movs	r3, #5
 8001a5e:	e00a      	b.n	8001a76 <LL_TIM_IC_SetPolarity+0x52>
 8001a60:	2306      	movs	r3, #6
 8001a62:	e008      	b.n	8001a76 <LL_TIM_IC_SetPolarity+0x52>
 8001a64:	2304      	movs	r3, #4
 8001a66:	e006      	b.n	8001a76 <LL_TIM_IC_SetPolarity+0x52>
 8001a68:	2303      	movs	r3, #3
 8001a6a:	e004      	b.n	8001a76 <LL_TIM_IC_SetPolarity+0x52>
 8001a6c:	2302      	movs	r3, #2
 8001a6e:	e002      	b.n	8001a76 <LL_TIM_IC_SetPolarity+0x52>
 8001a70:	2301      	movs	r3, #1
 8001a72:	e000      	b.n	8001a76 <LL_TIM_IC_SetPolarity+0x52>
 8001a74:	2300      	movs	r3, #0
 8001a76:	001c      	movs	r4, r3
 8001a78:	68fb      	ldr	r3, [r7, #12]
 8001a7a:	6a1b      	ldr	r3, [r3, #32]
 8001a7c:	0021      	movs	r1, r4
 8001a7e:	4a0a      	ldr	r2, [pc, #40]	; (8001aa8 <LL_TIM_IC_SetPolarity+0x84>)
 8001a80:	5c52      	ldrb	r2, [r2, r1]
 8001a82:	0011      	movs	r1, r2
 8001a84:	220a      	movs	r2, #10
 8001a86:	408a      	lsls	r2, r1
 8001a88:	43d2      	mvns	r2, r2
 8001a8a:	401a      	ands	r2, r3
 8001a8c:	0021      	movs	r1, r4
 8001a8e:	4b06      	ldr	r3, [pc, #24]	; (8001aa8 <LL_TIM_IC_SetPolarity+0x84>)
 8001a90:	5c5b      	ldrb	r3, [r3, r1]
 8001a92:	0019      	movs	r1, r3
 8001a94:	687b      	ldr	r3, [r7, #4]
 8001a96:	408b      	lsls	r3, r1
 8001a98:	431a      	orrs	r2, r3
 8001a9a:	68fb      	ldr	r3, [r7, #12]
 8001a9c:	621a      	str	r2, [r3, #32]
 8001a9e:	46c0      	nop			; (mov r8, r8)
 8001aa0:	46bd      	mov	sp, r7
 8001aa2:	b005      	add	sp, #20
 8001aa4:	bd90      	pop	{r4, r7, pc}
 8001aa6:	46c0      	nop			; (mov r8, r8)
 8001aa8:	0800236c 	.word	0x0800236c

08001aac <LL_TIM_ClearFlag_CC2>:
 8001aac:	b580      	push	{r7, lr}
 8001aae:	b082      	sub	sp, #8
 8001ab0:	af00      	add	r7, sp, #0
 8001ab2:	6078      	str	r0, [r7, #4]
 8001ab4:	687b      	ldr	r3, [r7, #4]
 8001ab6:	2205      	movs	r2, #5
 8001ab8:	4252      	negs	r2, r2
 8001aba:	611a      	str	r2, [r3, #16]
 8001abc:	46c0      	nop			; (mov r8, r8)
 8001abe:	46bd      	mov	sp, r7
 8001ac0:	b002      	add	sp, #8
 8001ac2:	bd80      	pop	{r7, pc}

08001ac4 <LL_TIM_EnableIT_CC1>:
 8001ac4:	b580      	push	{r7, lr}
 8001ac6:	b082      	sub	sp, #8
 8001ac8:	af00      	add	r7, sp, #0
 8001aca:	6078      	str	r0, [r7, #4]
 8001acc:	687b      	ldr	r3, [r7, #4]
 8001ace:	68db      	ldr	r3, [r3, #12]
 8001ad0:	2202      	movs	r2, #2
 8001ad2:	431a      	orrs	r2, r3
 8001ad4:	687b      	ldr	r3, [r7, #4]
 8001ad6:	60da      	str	r2, [r3, #12]
 8001ad8:	46c0      	nop			; (mov r8, r8)
 8001ada:	46bd      	mov	sp, r7
 8001adc:	b002      	add	sp, #8
 8001ade:	bd80      	pop	{r7, pc}

08001ae0 <LL_TIM_EnableIT_CC2>:
 8001ae0:	b580      	push	{r7, lr}
 8001ae2:	b082      	sub	sp, #8
 8001ae4:	af00      	add	r7, sp, #0
 8001ae6:	6078      	str	r0, [r7, #4]
 8001ae8:	687b      	ldr	r3, [r7, #4]
 8001aea:	68db      	ldr	r3, [r3, #12]
 8001aec:	2204      	movs	r2, #4
 8001aee:	431a      	orrs	r2, r3
 8001af0:	687b      	ldr	r3, [r7, #4]
 8001af2:	60da      	str	r2, [r3, #12]
 8001af4:	46c0      	nop			; (mov r8, r8)
 8001af6:	46bd      	mov	sp, r7
 8001af8:	b002      	add	sp, #8
 8001afa:	bd80      	pop	{r7, pc}

08001afc <LL_InitTick>:
 8001afc:	b580      	push	{r7, lr}
 8001afe:	b082      	sub	sp, #8
 8001b00:	af00      	add	r7, sp, #0
 8001b02:	6078      	str	r0, [r7, #4]
 8001b04:	6039      	str	r1, [r7, #0]
 8001b06:	6839      	ldr	r1, [r7, #0]
 8001b08:	6878      	ldr	r0, [r7, #4]
 8001b0a:	f7fe fafd 	bl	8000108 <__udivsi3>
 8001b0e:	0003      	movs	r3, r0
 8001b10:	001a      	movs	r2, r3
 8001b12:	4b06      	ldr	r3, [pc, #24]	; (8001b2c <LL_InitTick+0x30>)
 8001b14:	3a01      	subs	r2, #1
 8001b16:	605a      	str	r2, [r3, #4]
 8001b18:	4b04      	ldr	r3, [pc, #16]	; (8001b2c <LL_InitTick+0x30>)
 8001b1a:	2200      	movs	r2, #0
 8001b1c:	609a      	str	r2, [r3, #8]
 8001b1e:	4b03      	ldr	r3, [pc, #12]	; (8001b2c <LL_InitTick+0x30>)
 8001b20:	2205      	movs	r2, #5
 8001b22:	601a      	str	r2, [r3, #0]
 8001b24:	46c0      	nop			; (mov r8, r8)
 8001b26:	46bd      	mov	sp, r7
 8001b28:	b002      	add	sp, #8
 8001b2a:	bd80      	pop	{r7, pc}
 8001b2c:	e000e010 	.word	0xe000e010

08001b30 <LL_SYSTICK_EnableIT>:
 8001b30:	b580      	push	{r7, lr}
 8001b32:	af00      	add	r7, sp, #0
 8001b34:	4b04      	ldr	r3, [pc, #16]	; (8001b48 <LL_SYSTICK_EnableIT+0x18>)
 8001b36:	681a      	ldr	r2, [r3, #0]
 8001b38:	4b03      	ldr	r3, [pc, #12]	; (8001b48 <LL_SYSTICK_EnableIT+0x18>)
 8001b3a:	2102      	movs	r1, #2
 8001b3c:	430a      	orrs	r2, r1
 8001b3e:	601a      	str	r2, [r3, #0]
 8001b40:	46c0      	nop			; (mov r8, r8)
 8001b42:	46bd      	mov	sp, r7
 8001b44:	bd80      	pop	{r7, pc}
 8001b46:	46c0      	nop			; (mov r8, r8)
 8001b48:	e000e010 	.word	0xe000e010

08001b4c <mask_indicator>:
 8001b4c:	b580      	push	{r7, lr}
 8001b4e:	b082      	sub	sp, #8
 8001b50:	af00      	add	r7, sp, #0
 8001b52:	6078      	str	r0, [r7, #4]
 8001b54:	687b      	ldr	r3, [r7, #4]
 8001b56:	09db      	lsrs	r3, r3, #7
 8001b58:	2201      	movs	r2, #1
 8001b5a:	4013      	ands	r3, r2
 8001b5c:	01da      	lsls	r2, r3, #7
 8001b5e:	687b      	ldr	r3, [r7, #4]
 8001b60:	099b      	lsrs	r3, r3, #6
 8001b62:	2101      	movs	r1, #1
 8001b64:	400b      	ands	r3, r1
 8001b66:	019b      	lsls	r3, r3, #6
 8001b68:	431a      	orrs	r2, r3
 8001b6a:	687b      	ldr	r3, [r7, #4]
 8001b6c:	095b      	lsrs	r3, r3, #5
 8001b6e:	2101      	movs	r1, #1
 8001b70:	400b      	ands	r3, r1
 8001b72:	015b      	lsls	r3, r3, #5
 8001b74:	431a      	orrs	r2, r3
 8001b76:	687b      	ldr	r3, [r7, #4]
 8001b78:	091b      	lsrs	r3, r3, #4
 8001b7a:	2101      	movs	r1, #1
 8001b7c:	400b      	ands	r3, r1
 8001b7e:	011b      	lsls	r3, r3, #4
 8001b80:	431a      	orrs	r2, r3
 8001b82:	687b      	ldr	r3, [r7, #4]
 8001b84:	08db      	lsrs	r3, r3, #3
 8001b86:	2101      	movs	r1, #1
 8001b88:	400b      	ands	r3, r1
 8001b8a:	00db      	lsls	r3, r3, #3
 8001b8c:	431a      	orrs	r2, r3
 8001b8e:	687b      	ldr	r3, [r7, #4]
 8001b90:	089b      	lsrs	r3, r3, #2
 8001b92:	2101      	movs	r1, #1
 8001b94:	400b      	ands	r3, r1
 8001b96:	009b      	lsls	r3, r3, #2
 8001b98:	431a      	orrs	r2, r3
 8001b9a:	687b      	ldr	r3, [r7, #4]
 8001b9c:	085b      	lsrs	r3, r3, #1
 8001b9e:	2101      	movs	r1, #1
 8001ba0:	400b      	ands	r3, r1
 8001ba2:	005b      	lsls	r3, r3, #1
 8001ba4:	431a      	orrs	r2, r3
 8001ba6:	687b      	ldr	r3, [r7, #4]
 8001ba8:	2101      	movs	r1, #1
 8001baa:	400b      	ands	r3, r1
 8001bac:	4313      	orrs	r3, r2
 8001bae:	0018      	movs	r0, r3
 8001bb0:	46bd      	mov	sp, r7
 8001bb2:	b002      	add	sp, #8
 8001bb4:	bd80      	pop	{r7, pc}
	...

08001bb8 <rcc_config>:
 8001bb8:	b580      	push	{r7, lr}
 8001bba:	af00      	add	r7, sp, #0
 8001bbc:	2001      	movs	r0, #1
 8001bbe:	f7ff fcf7 	bl	80015b0 <LL_FLASH_SetLatency>
 8001bc2:	f7ff fc45 	bl	8001450 <LL_RCC_HSI_Enable>
 8001bc6:	46c0      	nop			; (mov r8, r8)
 8001bc8:	f7ff fc50 	bl	800146c <LL_RCC_HSI_IsReady>
 8001bcc:	0003      	movs	r3, r0
 8001bce:	2b01      	cmp	r3, #1
 8001bd0:	d1fa      	bne.n	8001bc8 <rcc_config+0x10>
 8001bd2:	23a0      	movs	r3, #160	; 0xa0
 8001bd4:	039b      	lsls	r3, r3, #14
 8001bd6:	0019      	movs	r1, r3
 8001bd8:	2000      	movs	r0, #0
 8001bda:	f7ff fcc3 	bl	8001564 <LL_RCC_PLL_ConfigDomain_SYS>
 8001bde:	f7ff fc9f 	bl	8001520 <LL_RCC_PLL_Enable>
 8001be2:	46c0      	nop			; (mov r8, r8)
 8001be4:	f7ff fcaa 	bl	800153c <LL_RCC_PLL_IsReady>
 8001be8:	0003      	movs	r3, r0
 8001bea:	2b01      	cmp	r3, #1
 8001bec:	d1fa      	bne.n	8001be4 <rcc_config+0x2c>
 8001bee:	2000      	movs	r0, #0
 8001bf0:	f7ff fc6c 	bl	80014cc <LL_RCC_SetAHBPrescaler>
 8001bf4:	2002      	movs	r0, #2
 8001bf6:	f7ff fc49 	bl	800148c <LL_RCC_SetSysClkSource>
 8001bfa:	46c0      	nop			; (mov r8, r8)
 8001bfc:	f7ff fc5a 	bl	80014b4 <LL_RCC_GetSysClkSource>
 8001c00:	0003      	movs	r3, r0
 8001c02:	2b08      	cmp	r3, #8
 8001c04:	d1fa      	bne.n	8001bfc <rcc_config+0x44>
 8001c06:	2000      	movs	r0, #0
 8001c08:	f7ff fc74 	bl	80014f4 <LL_RCC_SetAPB1Prescaler>
 8001c0c:	4b02      	ldr	r3, [pc, #8]	; (8001c18 <rcc_config+0x60>)
 8001c0e:	4a03      	ldr	r2, [pc, #12]	; (8001c1c <rcc_config+0x64>)
 8001c10:	601a      	str	r2, [r3, #0]
 8001c12:	46c0      	nop			; (mov r8, r8)
 8001c14:	46bd      	mov	sp, r7
 8001c16:	bd80      	pop	{r7, pc}
 8001c18:	20000000 	.word	0x20000000
 8001c1c:	02dc6c00 	.word	0x02dc6c00

08001c20 <gpio_config>:
 8001c20:	b580      	push	{r7, lr}
 8001c22:	af00      	add	r7, sp, #0
 8001c24:	2380      	movs	r3, #128	; 0x80
 8001c26:	031b      	lsls	r3, r3, #12
 8001c28:	0018      	movs	r0, r3
 8001c2a:	f7ff fcd5 	bl	80015d8 <LL_AHB1_GRP1_EnableClock>
 8001c2e:	2380      	movs	r3, #128	; 0x80
 8001c30:	005b      	lsls	r3, r3, #1
 8001c32:	482e      	ldr	r0, [pc, #184]	; (8001cec <gpio_config+0xcc>)
 8001c34:	2201      	movs	r2, #1
 8001c36:	0019      	movs	r1, r3
 8001c38:	f7ff fcfa 	bl	8001630 <LL_GPIO_SetPinMode>
 8001c3c:	2380      	movs	r3, #128	; 0x80
 8001c3e:	009b      	lsls	r3, r3, #2
 8001c40:	482a      	ldr	r0, [pc, #168]	; (8001cec <gpio_config+0xcc>)
 8001c42:	2201      	movs	r2, #1
 8001c44:	0019      	movs	r1, r3
 8001c46:	f7ff fcf3 	bl	8001630 <LL_GPIO_SetPinMode>
 8001c4a:	4b28      	ldr	r3, [pc, #160]	; (8001cec <gpio_config+0xcc>)
 8001c4c:	2201      	movs	r2, #1
 8001c4e:	2101      	movs	r1, #1
 8001c50:	0018      	movs	r0, r3
 8001c52:	f7ff fced 	bl	8001630 <LL_GPIO_SetPinMode>
 8001c56:	4b25      	ldr	r3, [pc, #148]	; (8001cec <gpio_config+0xcc>)
 8001c58:	2201      	movs	r2, #1
 8001c5a:	2102      	movs	r1, #2
 8001c5c:	0018      	movs	r0, r3
 8001c5e:	f7ff fce7 	bl	8001630 <LL_GPIO_SetPinMode>
 8001c62:	4b22      	ldr	r3, [pc, #136]	; (8001cec <gpio_config+0xcc>)
 8001c64:	2201      	movs	r2, #1
 8001c66:	2104      	movs	r1, #4
 8001c68:	0018      	movs	r0, r3
 8001c6a:	f7ff fce1 	bl	8001630 <LL_GPIO_SetPinMode>
 8001c6e:	4b1f      	ldr	r3, [pc, #124]	; (8001cec <gpio_config+0xcc>)
 8001c70:	2201      	movs	r2, #1
 8001c72:	2108      	movs	r1, #8
 8001c74:	0018      	movs	r0, r3
 8001c76:	f7ff fcdb 	bl	8001630 <LL_GPIO_SetPinMode>
 8001c7a:	2380      	movs	r3, #128	; 0x80
 8001c7c:	02db      	lsls	r3, r3, #11
 8001c7e:	0018      	movs	r0, r3
 8001c80:	f7ff fcaa 	bl	80015d8 <LL_AHB1_GRP1_EnableClock>
 8001c84:	4b1a      	ldr	r3, [pc, #104]	; (8001cf0 <gpio_config+0xd0>)
 8001c86:	2201      	movs	r2, #1
 8001c88:	2101      	movs	r1, #1
 8001c8a:	0018      	movs	r0, r3
 8001c8c:	f7ff fcd0 	bl	8001630 <LL_GPIO_SetPinMode>
 8001c90:	4b17      	ldr	r3, [pc, #92]	; (8001cf0 <gpio_config+0xd0>)
 8001c92:	2201      	movs	r2, #1
 8001c94:	2102      	movs	r1, #2
 8001c96:	0018      	movs	r0, r3
 8001c98:	f7ff fcca 	bl	8001630 <LL_GPIO_SetPinMode>
 8001c9c:	4b14      	ldr	r3, [pc, #80]	; (8001cf0 <gpio_config+0xd0>)
 8001c9e:	2201      	movs	r2, #1
 8001ca0:	2104      	movs	r1, #4
 8001ca2:	0018      	movs	r0, r3
 8001ca4:	f7ff fcc4 	bl	8001630 <LL_GPIO_SetPinMode>
 8001ca8:	4b11      	ldr	r3, [pc, #68]	; (8001cf0 <gpio_config+0xd0>)
 8001caa:	2201      	movs	r2, #1
 8001cac:	2108      	movs	r1, #8
 8001cae:	0018      	movs	r0, r3
 8001cb0:	f7ff fcbe 	bl	8001630 <LL_GPIO_SetPinMode>
 8001cb4:	4b0e      	ldr	r3, [pc, #56]	; (8001cf0 <gpio_config+0xd0>)
 8001cb6:	2201      	movs	r2, #1
 8001cb8:	2110      	movs	r1, #16
 8001cba:	0018      	movs	r0, r3
 8001cbc:	f7ff fcb8 	bl	8001630 <LL_GPIO_SetPinMode>
 8001cc0:	4b0b      	ldr	r3, [pc, #44]	; (8001cf0 <gpio_config+0xd0>)
 8001cc2:	2201      	movs	r2, #1
 8001cc4:	2120      	movs	r1, #32
 8001cc6:	0018      	movs	r0, r3
 8001cc8:	f7ff fcb2 	bl	8001630 <LL_GPIO_SetPinMode>
 8001ccc:	4b08      	ldr	r3, [pc, #32]	; (8001cf0 <gpio_config+0xd0>)
 8001cce:	2201      	movs	r2, #1
 8001cd0:	2140      	movs	r1, #64	; 0x40
 8001cd2:	0018      	movs	r0, r3
 8001cd4:	f7ff fcac 	bl	8001630 <LL_GPIO_SetPinMode>
 8001cd8:	4b05      	ldr	r3, [pc, #20]	; (8001cf0 <gpio_config+0xd0>)
 8001cda:	2201      	movs	r2, #1
 8001cdc:	2180      	movs	r1, #128	; 0x80
 8001cde:	0018      	movs	r0, r3
 8001ce0:	f7ff fca6 	bl	8001630 <LL_GPIO_SetPinMode>
 8001ce4:	46c0      	nop			; (mov r8, r8)
 8001ce6:	46bd      	mov	sp, r7
 8001ce8:	bd80      	pop	{r7, pc}
 8001cea:	46c0      	nop			; (mov r8, r8)
 8001cec:	48000800 	.word	0x48000800
 8001cf0:	48000400 	.word	0x48000400

08001cf4 <dec_display>:
 8001cf4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001cf6:	b089      	sub	sp, #36	; 0x24
 8001cf8:	af00      	add	r7, sp, #0
 8001cfa:	6078      	str	r0, [r7, #4]
 8001cfc:	241e      	movs	r4, #30
 8001cfe:	193b      	adds	r3, r7, r4
 8001d00:	2200      	movs	r2, #0
 8001d02:	801a      	strh	r2, [r3, #0]
 8001d04:	2508      	movs	r5, #8
 8001d06:	197b      	adds	r3, r7, r5
 8001d08:	4a44      	ldr	r2, [pc, #272]	; (8001e1c <dec_display+0x128>)
 8001d0a:	ca43      	ldmia	r2!, {r0, r1, r6}
 8001d0c:	c343      	stmia	r3!, {r0, r1, r6}
 8001d0e:	ca03      	ldmia	r2!, {r0, r1}
 8001d10:	c303      	stmia	r3!, {r0, r1}
 8001d12:	200f      	movs	r0, #15
 8001d14:	f7ff ff1a 	bl	8001b4c <mask_indicator>
 8001d18:	0003      	movs	r3, r0
 8001d1a:	4a41      	ldr	r2, [pc, #260]	; (8001e20 <dec_display+0x12c>)
 8001d1c:	0019      	movs	r1, r3
 8001d1e:	0010      	movs	r0, r2
 8001d20:	f7ff fcd7 	bl	80016d2 <LL_GPIO_WriteOutputPort>
 8001d24:	4b3f      	ldr	r3, [pc, #252]	; (8001e24 <dec_display+0x130>)
 8001d26:	681b      	ldr	r3, [r3, #0]
 8001d28:	2201      	movs	r2, #1
 8001d2a:	409a      	lsls	r2, r3
 8001d2c:	0013      	movs	r3, r2
 8001d2e:	0018      	movs	r0, r3
 8001d30:	f7ff ff0c 	bl	8001b4c <mask_indicator>
 8001d34:	0003      	movs	r3, r0
 8001d36:	4a3a      	ldr	r2, [pc, #232]	; (8001e20 <dec_display+0x12c>)
 8001d38:	0019      	movs	r1, r3
 8001d3a:	0010      	movs	r0, r2
 8001d3c:	f7ff fcd5 	bl	80016ea <LL_GPIO_ResetOutputPin>
 8001d40:	4b38      	ldr	r3, [pc, #224]	; (8001e24 <dec_display+0x130>)
 8001d42:	681b      	ldr	r3, [r3, #0]
 8001d44:	2b00      	cmp	r3, #0
 8001d46:	d10b      	bne.n	8001d60 <dec_display+0x6c>
 8001d48:	687b      	ldr	r3, [r7, #4]
 8001d4a:	210a      	movs	r1, #10
 8001d4c:	0018      	movs	r0, r3
 8001d4e:	f7fe fa61 	bl	8000214 <__aeabi_uidivmod>
 8001d52:	000b      	movs	r3, r1
 8001d54:	0019      	movs	r1, r3
 8001d56:	193b      	adds	r3, r7, r4
 8001d58:	197a      	adds	r2, r7, r5
 8001d5a:	0049      	lsls	r1, r1, #1
 8001d5c:	5a8a      	ldrh	r2, [r1, r2]
 8001d5e:	801a      	strh	r2, [r3, #0]
 8001d60:	4b30      	ldr	r3, [pc, #192]	; (8001e24 <dec_display+0x130>)
 8001d62:	681b      	ldr	r3, [r3, #0]
 8001d64:	2b01      	cmp	r3, #1
 8001d66:	d112      	bne.n	8001d8e <dec_display+0x9a>
 8001d68:	687b      	ldr	r3, [r7, #4]
 8001d6a:	210a      	movs	r1, #10
 8001d6c:	0018      	movs	r0, r3
 8001d6e:	f7fe f9cb 	bl	8000108 <__udivsi3>
 8001d72:	0003      	movs	r3, r0
 8001d74:	210a      	movs	r1, #10
 8001d76:	0018      	movs	r0, r3
 8001d78:	f7fe fa4c 	bl	8000214 <__aeabi_uidivmod>
 8001d7c:	000b      	movs	r3, r1
 8001d7e:	0019      	movs	r1, r3
 8001d80:	231e      	movs	r3, #30
 8001d82:	18fb      	adds	r3, r7, r3
 8001d84:	2208      	movs	r2, #8
 8001d86:	18ba      	adds	r2, r7, r2
 8001d88:	0049      	lsls	r1, r1, #1
 8001d8a:	5a8a      	ldrh	r2, [r1, r2]
 8001d8c:	801a      	strh	r2, [r3, #0]
 8001d8e:	4b25      	ldr	r3, [pc, #148]	; (8001e24 <dec_display+0x130>)
 8001d90:	681b      	ldr	r3, [r3, #0]
 8001d92:	2b02      	cmp	r3, #2
 8001d94:	d112      	bne.n	8001dbc <dec_display+0xc8>
 8001d96:	687b      	ldr	r3, [r7, #4]
 8001d98:	2164      	movs	r1, #100	; 0x64
 8001d9a:	0018      	movs	r0, r3
 8001d9c:	f7fe f9b4 	bl	8000108 <__udivsi3>
 8001da0:	0003      	movs	r3, r0
 8001da2:	210a      	movs	r1, #10
 8001da4:	0018      	movs	r0, r3
 8001da6:	f7fe fa35 	bl	8000214 <__aeabi_uidivmod>
 8001daa:	000b      	movs	r3, r1
 8001dac:	0019      	movs	r1, r3
 8001dae:	231e      	movs	r3, #30
 8001db0:	18fb      	adds	r3, r7, r3
 8001db2:	2208      	movs	r2, #8
 8001db4:	18ba      	adds	r2, r7, r2
 8001db6:	0049      	lsls	r1, r1, #1
 8001db8:	5a8a      	ldrh	r2, [r1, r2]
 8001dba:	801a      	strh	r2, [r3, #0]
 8001dbc:	4b19      	ldr	r3, [pc, #100]	; (8001e24 <dec_display+0x130>)
 8001dbe:	681b      	ldr	r3, [r3, #0]
 8001dc0:	2b03      	cmp	r3, #3
 8001dc2:	d113      	bne.n	8001dec <dec_display+0xf8>
 8001dc4:	687b      	ldr	r3, [r7, #4]
 8001dc6:	22fa      	movs	r2, #250	; 0xfa
 8001dc8:	0091      	lsls	r1, r2, #2
 8001dca:	0018      	movs	r0, r3
 8001dcc:	f7fe f99c 	bl	8000108 <__udivsi3>
 8001dd0:	0003      	movs	r3, r0
 8001dd2:	210a      	movs	r1, #10
 8001dd4:	0018      	movs	r0, r3
 8001dd6:	f7fe fa1d 	bl	8000214 <__aeabi_uidivmod>
 8001dda:	000b      	movs	r3, r1
 8001ddc:	0019      	movs	r1, r3
 8001dde:	231e      	movs	r3, #30
 8001de0:	18fb      	adds	r3, r7, r3
 8001de2:	2208      	movs	r2, #8
 8001de4:	18ba      	adds	r2, r7, r2
 8001de6:	0049      	lsls	r1, r1, #1
 8001de8:	5a8a      	ldrh	r2, [r1, r2]
 8001dea:	801a      	strh	r2, [r3, #0]
 8001dec:	231e      	movs	r3, #30
 8001dee:	18fb      	adds	r3, r7, r3
 8001df0:	881b      	ldrh	r3, [r3, #0]
 8001df2:	0018      	movs	r0, r3
 8001df4:	f7ff feaa 	bl	8001b4c <mask_indicator>
 8001df8:	0003      	movs	r3, r0
 8001dfa:	4a0b      	ldr	r2, [pc, #44]	; (8001e28 <dec_display+0x134>)
 8001dfc:	0019      	movs	r1, r3
 8001dfe:	0010      	movs	r0, r2
 8001e00:	f7ff fc67 	bl	80016d2 <LL_GPIO_WriteOutputPort>
 8001e04:	4b07      	ldr	r3, [pc, #28]	; (8001e24 <dec_display+0x130>)
 8001e06:	681b      	ldr	r3, [r3, #0]
 8001e08:	3301      	adds	r3, #1
 8001e0a:	2203      	movs	r2, #3
 8001e0c:	401a      	ands	r2, r3
 8001e0e:	4b05      	ldr	r3, [pc, #20]	; (8001e24 <dec_display+0x130>)
 8001e10:	601a      	str	r2, [r3, #0]
 8001e12:	46c0      	nop			; (mov r8, r8)
 8001e14:	46bd      	mov	sp, r7
 8001e16:	b009      	add	sp, #36	; 0x24
 8001e18:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001e1a:	46c0      	nop			; (mov r8, r8)
 8001e1c:	08002300 	.word	0x08002300
 8001e20:	48000800 	.word	0x48000800
 8001e24:	20000458 	.word	0x20000458
 8001e28:	48000400 	.word	0x48000400

08001e2c <sonar_trig>:
 8001e2c:	b580      	push	{r7, lr}
 8001e2e:	af00      	add	r7, sp, #0
 8001e30:	2380      	movs	r3, #128	; 0x80
 8001e32:	029b      	lsls	r3, r3, #10
 8001e34:	0018      	movs	r0, r3
 8001e36:	f7ff fbcf 	bl	80015d8 <LL_AHB1_GRP1_EnableClock>
 8001e3a:	2390      	movs	r3, #144	; 0x90
 8001e3c:	05db      	lsls	r3, r3, #23
 8001e3e:	2202      	movs	r2, #2
 8001e40:	2101      	movs	r1, #1
 8001e42:	0018      	movs	r0, r3
 8001e44:	f7ff fbf4 	bl	8001630 <LL_GPIO_SetPinMode>
 8001e48:	2390      	movs	r3, #144	; 0x90
 8001e4a:	05db      	lsls	r3, r3, #23
 8001e4c:	2202      	movs	r2, #2
 8001e4e:	2101      	movs	r1, #1
 8001e50:	0018      	movs	r0, r3
 8001e52:	f7ff fc09 	bl	8001668 <LL_GPIO_SetAFPin_0_7>
 8001e56:	2001      	movs	r0, #1
 8001e58:	f7ff fbd4 	bl	8001604 <LL_APB1_GRP1_EnableClock>
 8001e5c:	2380      	movs	r3, #128	; 0x80
 8001e5e:	05db      	lsls	r3, r3, #23
 8001e60:	212f      	movs	r1, #47	; 0x2f
 8001e62:	0018      	movs	r0, r3
 8001e64:	f7ff fc83 	bl	800176e <LL_TIM_SetPrescaler>
 8001e68:	4a1d      	ldr	r2, [pc, #116]	; (8001ee0 <sonar_trig+0xb4>)
 8001e6a:	2380      	movs	r3, #128	; 0x80
 8001e6c:	05db      	lsls	r3, r3, #23
 8001e6e:	0011      	movs	r1, r2
 8001e70:	0018      	movs	r0, r3
 8001e72:	f7ff fc88 	bl	8001786 <LL_TIM_SetAutoReload>
 8001e76:	4a1b      	ldr	r2, [pc, #108]	; (8001ee4 <sonar_trig+0xb8>)
 8001e78:	2380      	movs	r3, #128	; 0x80
 8001e7a:	05db      	lsls	r3, r3, #23
 8001e7c:	0011      	movs	r1, r2
 8001e7e:	0018      	movs	r0, r3
 8001e80:	f7ff fd2c 	bl	80018dc <LL_TIM_OC_SetCompareCH1>
 8001e84:	2380      	movs	r3, #128	; 0x80
 8001e86:	05db      	lsls	r3, r3, #23
 8001e88:	2101      	movs	r1, #1
 8001e8a:	0018      	movs	r0, r3
 8001e8c:	f7ff fc87 	bl	800179e <LL_TIM_CC_EnableChannel>
 8001e90:	2380      	movs	r3, #128	; 0x80
 8001e92:	05db      	lsls	r3, r3, #23
 8001e94:	2200      	movs	r2, #0
 8001e96:	2101      	movs	r1, #1
 8001e98:	0018      	movs	r0, r3
 8001e9a:	f7ff fcdb 	bl	8001854 <LL_TIM_OC_SetPolarity>
 8001e9e:	2380      	movs	r3, #128	; 0x80
 8001ea0:	05db      	lsls	r3, r3, #23
 8001ea2:	2260      	movs	r2, #96	; 0x60
 8001ea4:	2101      	movs	r1, #1
 8001ea6:	0018      	movs	r0, r3
 8001ea8:	f7ff fc88 	bl	80017bc <LL_TIM_OC_SetMode>
 8001eac:	2380      	movs	r3, #128	; 0x80
 8001eae:	05db      	lsls	r3, r3, #23
 8001eb0:	2100      	movs	r1, #0
 8001eb2:	0018      	movs	r0, r3
 8001eb4:	f7ff fc33 	bl	800171e <LL_TIM_SetCounterMode>
 8001eb8:	2380      	movs	r3, #128	; 0x80
 8001eba:	05db      	lsls	r3, r3, #23
 8001ebc:	0018      	movs	r0, r3
 8001ebe:	f7ff fe01 	bl	8001ac4 <LL_TIM_EnableIT_CC1>
 8001ec2:	2380      	movs	r3, #128	; 0x80
 8001ec4:	05db      	lsls	r3, r3, #23
 8001ec6:	0018      	movs	r0, r3
 8001ec8:	f7ff fc1b 	bl	8001702 <LL_TIM_EnableCounter>
 8001ecc:	200f      	movs	r0, #15
 8001ece:	f7ff fa3b 	bl	8001348 <NVIC_EnableIRQ>
 8001ed2:	2103      	movs	r1, #3
 8001ed4:	200f      	movs	r0, #15
 8001ed6:	f7ff fa4d 	bl	8001374 <NVIC_SetPriority>
 8001eda:	46c0      	nop			; (mov r8, r8)
 8001edc:	46bd      	mov	sp, r7
 8001ede:	bd80      	pop	{r7, pc}
 8001ee0:	0000ea5f 	.word	0x0000ea5f
 8001ee4:	0000ea51 	.word	0x0000ea51

08001ee8 <sonar_echo>:
 8001ee8:	b580      	push	{r7, lr}
 8001eea:	af00      	add	r7, sp, #0
 8001eec:	2380      	movs	r3, #128	; 0x80
 8001eee:	029b      	lsls	r3, r3, #10
 8001ef0:	0018      	movs	r0, r3
 8001ef2:	f7ff fb71 	bl	80015d8 <LL_AHB1_GRP1_EnableClock>
 8001ef6:	2390      	movs	r3, #144	; 0x90
 8001ef8:	05db      	lsls	r3, r3, #23
 8001efa:	2202      	movs	r2, #2
 8001efc:	2180      	movs	r1, #128	; 0x80
 8001efe:	0018      	movs	r0, r3
 8001f00:	f7ff fb96 	bl	8001630 <LL_GPIO_SetPinMode>
 8001f04:	2390      	movs	r3, #144	; 0x90
 8001f06:	05db      	lsls	r3, r3, #23
 8001f08:	2201      	movs	r2, #1
 8001f0a:	2180      	movs	r1, #128	; 0x80
 8001f0c:	0018      	movs	r0, r3
 8001f0e:	f7ff fbab 	bl	8001668 <LL_GPIO_SetAFPin_0_7>
 8001f12:	2002      	movs	r0, #2
 8001f14:	f7ff fb76 	bl	8001604 <LL_APB1_GRP1_EnableClock>
 8001f18:	4b19      	ldr	r3, [pc, #100]	; (8001f80 <sonar_echo+0x98>)
 8001f1a:	212f      	movs	r1, #47	; 0x2f
 8001f1c:	0018      	movs	r0, r3
 8001f1e:	f7ff fc26 	bl	800176e <LL_TIM_SetPrescaler>
 8001f22:	2380      	movs	r3, #128	; 0x80
 8001f24:	025b      	lsls	r3, r3, #9
 8001f26:	4816      	ldr	r0, [pc, #88]	; (8001f80 <sonar_echo+0x98>)
 8001f28:	001a      	movs	r2, r3
 8001f2a:	2110      	movs	r1, #16
 8001f2c:	f7ff fce2 	bl	80018f4 <LL_TIM_IC_SetActiveInput>
 8001f30:	4b13      	ldr	r3, [pc, #76]	; (8001f80 <sonar_echo+0x98>)
 8001f32:	2200      	movs	r2, #0
 8001f34:	2110      	movs	r1, #16
 8001f36:	0018      	movs	r0, r3
 8001f38:	f7ff fd28 	bl	800198c <LL_TIM_IC_SetPrescaler>
 8001f3c:	4b10      	ldr	r3, [pc, #64]	; (8001f80 <sonar_echo+0x98>)
 8001f3e:	2200      	movs	r2, #0
 8001f40:	2110      	movs	r1, #16
 8001f42:	0018      	movs	r0, r3
 8001f44:	f7ff fd6e 	bl	8001a24 <LL_TIM_IC_SetPolarity>
 8001f48:	4b0d      	ldr	r3, [pc, #52]	; (8001f80 <sonar_echo+0x98>)
 8001f4a:	2100      	movs	r1, #0
 8001f4c:	0018      	movs	r0, r3
 8001f4e:	f7ff fbe6 	bl	800171e <LL_TIM_SetCounterMode>
 8001f52:	4b0b      	ldr	r3, [pc, #44]	; (8001f80 <sonar_echo+0x98>)
 8001f54:	2110      	movs	r1, #16
 8001f56:	0018      	movs	r0, r3
 8001f58:	f7ff fc21 	bl	800179e <LL_TIM_CC_EnableChannel>
 8001f5c:	4b08      	ldr	r3, [pc, #32]	; (8001f80 <sonar_echo+0x98>)
 8001f5e:	0018      	movs	r0, r3
 8001f60:	f7ff fdbe 	bl	8001ae0 <LL_TIM_EnableIT_CC2>
 8001f64:	4b06      	ldr	r3, [pc, #24]	; (8001f80 <sonar_echo+0x98>)
 8001f66:	0018      	movs	r0, r3
 8001f68:	f7ff fbcb 	bl	8001702 <LL_TIM_EnableCounter>
 8001f6c:	2010      	movs	r0, #16
 8001f6e:	f7ff f9eb 	bl	8001348 <NVIC_EnableIRQ>
 8001f72:	2102      	movs	r1, #2
 8001f74:	2010      	movs	r0, #16
 8001f76:	f7ff f9fd 	bl	8001374 <NVIC_SetPriority>
 8001f7a:	46c0      	nop			; (mov r8, r8)
 8001f7c:	46bd      	mov	sp, r7
 8001f7e:	bd80      	pop	{r7, pc}
 8001f80:	40000400 	.word	0x40000400

08001f84 <timer_config>:
 8001f84:	b580      	push	{r7, lr}
 8001f86:	af00      	add	r7, sp, #0
 8001f88:	2380      	movs	r3, #128	; 0x80
 8001f8a:	029b      	lsls	r3, r3, #10
 8001f8c:	0018      	movs	r0, r3
 8001f8e:	f7ff fb23 	bl	80015d8 <LL_AHB1_GRP1_EnableClock>
 8001f92:	2390      	movs	r3, #144	; 0x90
 8001f94:	05db      	lsls	r3, r3, #23
 8001f96:	2202      	movs	r2, #2
 8001f98:	2110      	movs	r1, #16
 8001f9a:	0018      	movs	r0, r3
 8001f9c:	f7ff fb48 	bl	8001630 <LL_GPIO_SetPinMode>
 8001fa0:	2390      	movs	r3, #144	; 0x90
 8001fa2:	05db      	lsls	r3, r3, #23
 8001fa4:	2204      	movs	r2, #4
 8001fa6:	2110      	movs	r1, #16
 8001fa8:	0018      	movs	r0, r3
 8001faa:	f7ff fb5d 	bl	8001668 <LL_GPIO_SetAFPin_0_7>
 8001fae:	2380      	movs	r3, #128	; 0x80
 8001fb0:	005b      	lsls	r3, r3, #1
 8001fb2:	0018      	movs	r0, r3
 8001fb4:	f7ff fb26 	bl	8001604 <LL_APB1_GRP1_EnableClock>
 8001fb8:	4b11      	ldr	r3, [pc, #68]	; (8002000 <timer_config+0x7c>)
 8001fba:	212f      	movs	r1, #47	; 0x2f
 8001fbc:	0018      	movs	r0, r3
 8001fbe:	f7ff fbd6 	bl	800176e <LL_TIM_SetPrescaler>
 8001fc2:	4a10      	ldr	r2, [pc, #64]	; (8002004 <timer_config+0x80>)
 8001fc4:	4b0e      	ldr	r3, [pc, #56]	; (8002000 <timer_config+0x7c>)
 8001fc6:	0011      	movs	r1, r2
 8001fc8:	0018      	movs	r0, r3
 8001fca:	f7ff fbdc 	bl	8001786 <LL_TIM_SetAutoReload>
 8001fce:	4b0c      	ldr	r3, [pc, #48]	; (8002000 <timer_config+0x7c>)
 8001fd0:	2100      	movs	r1, #0
 8001fd2:	0018      	movs	r0, r3
 8001fd4:	f7ff fba3 	bl	800171e <LL_TIM_SetCounterMode>
 8001fd8:	4b09      	ldr	r3, [pc, #36]	; (8002000 <timer_config+0x7c>)
 8001fda:	2110      	movs	r1, #16
 8001fdc:	0018      	movs	r0, r3
 8001fde:	f7ff fbde 	bl	800179e <LL_TIM_CC_EnableChannel>
 8001fe2:	4b07      	ldr	r3, [pc, #28]	; (8002000 <timer_config+0x7c>)
 8001fe4:	0018      	movs	r0, r3
 8001fe6:	f7ff fb8c 	bl	8001702 <LL_TIM_EnableCounter>
 8001fea:	2013      	movs	r0, #19
 8001fec:	f7ff f9ac 	bl	8001348 <NVIC_EnableIRQ>
 8001ff0:	2101      	movs	r1, #1
 8001ff2:	2013      	movs	r0, #19
 8001ff4:	f7ff f9be 	bl	8001374 <NVIC_SetPriority>
 8001ff8:	46c0      	nop			; (mov r8, r8)
 8001ffa:	46bd      	mov	sp, r7
 8001ffc:	bd80      	pop	{r7, pc}
 8001ffe:	46c0      	nop			; (mov r8, r8)
 8002000:	40002000 	.word	0x40002000
 8002004:	0000ffff 	.word	0x0000ffff

08002008 <TIM3_IRQHandler>:
 8002008:	b580      	push	{r7, lr}
 800200a:	af00      	add	r7, sp, #0
 800200c:	46c0      	nop			; (mov r8, r8)
 800200e:	2390      	movs	r3, #144	; 0x90
 8002010:	05db      	lsls	r3, r3, #23
 8002012:	2180      	movs	r1, #128	; 0x80
 8002014:	0018      	movs	r0, r3
 8002016:	f7ff fb4a 	bl	80016ae <LL_GPIO_IsInputPinSet>
 800201a:	1e03      	subs	r3, r0, #0
 800201c:	d0f7      	beq.n	800200e <TIM3_IRQHandler+0x6>
 800201e:	4b17      	ldr	r3, [pc, #92]	; (800207c <TIM3_IRQHandler+0x74>)
 8002020:	2100      	movs	r1, #0
 8002022:	0018      	movs	r0, r3
 8002024:	f7ff fb8d 	bl	8001742 <LL_TIM_SetCounter>
 8002028:	46c0      	nop			; (mov r8, r8)
 800202a:	2390      	movs	r3, #144	; 0x90
 800202c:	05db      	lsls	r3, r3, #23
 800202e:	2180      	movs	r1, #128	; 0x80
 8002030:	0018      	movs	r0, r3
 8002032:	f7ff fb3c 	bl	80016ae <LL_GPIO_IsInputPinSet>
 8002036:	1e03      	subs	r3, r0, #0
 8002038:	d1f7      	bne.n	800202a <TIM3_IRQHandler+0x22>
 800203a:	4b10      	ldr	r3, [pc, #64]	; (800207c <TIM3_IRQHandler+0x74>)
 800203c:	0018      	movs	r0, r3
 800203e:	f7ff fb8c 	bl	800175a <LL_TIM_GetCounter>
 8002042:	0002      	movs	r2, r0
 8002044:	4b0e      	ldr	r3, [pc, #56]	; (8002080 <TIM3_IRQHandler+0x78>)
 8002046:	601a      	str	r2, [r3, #0]
 8002048:	4b0d      	ldr	r3, [pc, #52]	; (8002080 <TIM3_IRQHandler+0x78>)
 800204a:	681b      	ldr	r3, [r3, #0]
 800204c:	0018      	movs	r0, r3
 800204e:	f7fe ffc3 	bl	8000fd8 <__aeabi_ui2d>
 8002052:	4a0c      	ldr	r2, [pc, #48]	; (8002084 <TIM3_IRQHandler+0x7c>)
 8002054:	4b0c      	ldr	r3, [pc, #48]	; (8002088 <TIM3_IRQHandler+0x80>)
 8002056:	f7fe f901 	bl	800025c <__aeabi_ddiv>
 800205a:	0002      	movs	r2, r0
 800205c:	000b      	movs	r3, r1
 800205e:	0010      	movs	r0, r2
 8002060:	0019      	movs	r1, r3
 8002062:	f7fe f8dd 	bl	8000220 <__aeabi_d2uiz>
 8002066:	0002      	movs	r2, r0
 8002068:	4b08      	ldr	r3, [pc, #32]	; (800208c <TIM3_IRQHandler+0x84>)
 800206a:	601a      	str	r2, [r3, #0]
 800206c:	4b03      	ldr	r3, [pc, #12]	; (800207c <TIM3_IRQHandler+0x74>)
 800206e:	0018      	movs	r0, r3
 8002070:	f7ff fd1c 	bl	8001aac <LL_TIM_ClearFlag_CC2>
 8002074:	46c0      	nop			; (mov r8, r8)
 8002076:	46bd      	mov	sp, r7
 8002078:	bd80      	pop	{r7, pc}
 800207a:	46c0      	nop			; (mov r8, r8)
 800207c:	40000400 	.word	0x40000400
 8002080:	20000450 	.word	0x20000450
 8002084:	66666666 	.word	0x66666666
 8002088:	404d6666 	.word	0x404d6666
 800208c:	20000454 	.word	0x20000454

08002090 <systick_config>:
 8002090:	b580      	push	{r7, lr}
 8002092:	af00      	add	r7, sp, #0
 8002094:	23fa      	movs	r3, #250	; 0xfa
 8002096:	009b      	lsls	r3, r3, #2
 8002098:	4a07      	ldr	r2, [pc, #28]	; (80020b8 <systick_config+0x28>)
 800209a:	0019      	movs	r1, r3
 800209c:	0010      	movs	r0, r2
 800209e:	f7ff fd2d 	bl	8001afc <LL_InitTick>
 80020a2:	f7ff fd45 	bl	8001b30 <LL_SYSTICK_EnableIT>
 80020a6:	2301      	movs	r3, #1
 80020a8:	425b      	negs	r3, r3
 80020aa:	2100      	movs	r1, #0
 80020ac:	0018      	movs	r0, r3
 80020ae:	f7ff f961 	bl	8001374 <NVIC_SetPriority>
 80020b2:	46c0      	nop			; (mov r8, r8)
 80020b4:	46bd      	mov	sp, r7
 80020b6:	bd80      	pop	{r7, pc}
 80020b8:	02dc6c00 	.word	0x02dc6c00

080020bc <SysTick_Handler>:
 80020bc:	b580      	push	{r7, lr}
 80020be:	af00      	add	r7, sp, #0
 80020c0:	4b03      	ldr	r3, [pc, #12]	; (80020d0 <SysTick_Handler+0x14>)
 80020c2:	681b      	ldr	r3, [r3, #0]
 80020c4:	0018      	movs	r0, r3
 80020c6:	f7ff fe15 	bl	8001cf4 <dec_display>
 80020ca:	46c0      	nop			; (mov r8, r8)
 80020cc:	46bd      	mov	sp, r7
 80020ce:	bd80      	pop	{r7, pc}
 80020d0:	20000454 	.word	0x20000454

080020d4 <main>:
 80020d4:	b580      	push	{r7, lr}
 80020d6:	af00      	add	r7, sp, #0
 80020d8:	f7ff fd6e 	bl	8001bb8 <rcc_config>
 80020dc:	f7ff fda0 	bl	8001c20 <gpio_config>
 80020e0:	f7ff fea4 	bl	8001e2c <sonar_trig>
 80020e4:	f7ff ff00 	bl	8001ee8 <sonar_echo>
 80020e8:	f7ff ff4c 	bl	8001f84 <timer_config>
 80020ec:	f7ff ffd0 	bl	8002090 <systick_config>
 80020f0:	e7fe      	b.n	80020f0 <main+0x1c>
	...

080020f4 <SystemInit>:
 80020f4:	b580      	push	{r7, lr}
 80020f6:	af00      	add	r7, sp, #0
 80020f8:	4b1a      	ldr	r3, [pc, #104]	; (8002164 <SystemInit+0x70>)
 80020fa:	681a      	ldr	r2, [r3, #0]
 80020fc:	4b19      	ldr	r3, [pc, #100]	; (8002164 <SystemInit+0x70>)
 80020fe:	2101      	movs	r1, #1
 8002100:	430a      	orrs	r2, r1
 8002102:	601a      	str	r2, [r3, #0]
 8002104:	4b17      	ldr	r3, [pc, #92]	; (8002164 <SystemInit+0x70>)
 8002106:	685a      	ldr	r2, [r3, #4]
 8002108:	4b16      	ldr	r3, [pc, #88]	; (8002164 <SystemInit+0x70>)
 800210a:	4917      	ldr	r1, [pc, #92]	; (8002168 <SystemInit+0x74>)
 800210c:	400a      	ands	r2, r1
 800210e:	605a      	str	r2, [r3, #4]
 8002110:	4b14      	ldr	r3, [pc, #80]	; (8002164 <SystemInit+0x70>)
 8002112:	681a      	ldr	r2, [r3, #0]
 8002114:	4b13      	ldr	r3, [pc, #76]	; (8002164 <SystemInit+0x70>)
 8002116:	4915      	ldr	r1, [pc, #84]	; (800216c <SystemInit+0x78>)
 8002118:	400a      	ands	r2, r1
 800211a:	601a      	str	r2, [r3, #0]
 800211c:	4b11      	ldr	r3, [pc, #68]	; (8002164 <SystemInit+0x70>)
 800211e:	681a      	ldr	r2, [r3, #0]
 8002120:	4b10      	ldr	r3, [pc, #64]	; (8002164 <SystemInit+0x70>)
 8002122:	4913      	ldr	r1, [pc, #76]	; (8002170 <SystemInit+0x7c>)
 8002124:	400a      	ands	r2, r1
 8002126:	601a      	str	r2, [r3, #0]
 8002128:	4b0e      	ldr	r3, [pc, #56]	; (8002164 <SystemInit+0x70>)
 800212a:	685a      	ldr	r2, [r3, #4]
 800212c:	4b0d      	ldr	r3, [pc, #52]	; (8002164 <SystemInit+0x70>)
 800212e:	4911      	ldr	r1, [pc, #68]	; (8002174 <SystemInit+0x80>)
 8002130:	400a      	ands	r2, r1
 8002132:	605a      	str	r2, [r3, #4]
 8002134:	4b0b      	ldr	r3, [pc, #44]	; (8002164 <SystemInit+0x70>)
 8002136:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8002138:	4b0a      	ldr	r3, [pc, #40]	; (8002164 <SystemInit+0x70>)
 800213a:	210f      	movs	r1, #15
 800213c:	438a      	bics	r2, r1
 800213e:	62da      	str	r2, [r3, #44]	; 0x2c
 8002140:	4b08      	ldr	r3, [pc, #32]	; (8002164 <SystemInit+0x70>)
 8002142:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8002144:	4b07      	ldr	r3, [pc, #28]	; (8002164 <SystemInit+0x70>)
 8002146:	490c      	ldr	r1, [pc, #48]	; (8002178 <SystemInit+0x84>)
 8002148:	400a      	ands	r2, r1
 800214a:	631a      	str	r2, [r3, #48]	; 0x30
 800214c:	4b05      	ldr	r3, [pc, #20]	; (8002164 <SystemInit+0x70>)
 800214e:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8002150:	4b04      	ldr	r3, [pc, #16]	; (8002164 <SystemInit+0x70>)
 8002152:	2101      	movs	r1, #1
 8002154:	438a      	bics	r2, r1
 8002156:	635a      	str	r2, [r3, #52]	; 0x34
 8002158:	4b02      	ldr	r3, [pc, #8]	; (8002164 <SystemInit+0x70>)
 800215a:	2200      	movs	r2, #0
 800215c:	609a      	str	r2, [r3, #8]
 800215e:	46c0      	nop			; (mov r8, r8)
 8002160:	46bd      	mov	sp, r7
 8002162:	bd80      	pop	{r7, pc}
 8002164:	40021000 	.word	0x40021000
 8002168:	f8ffb80c 	.word	0xf8ffb80c
 800216c:	fef6ffff 	.word	0xfef6ffff
 8002170:	fffbffff 	.word	0xfffbffff
 8002174:	ffc0ffff 	.word	0xffc0ffff
 8002178:	fffffeac 	.word	0xfffffeac

0800217c <NMI_Handler>:
 800217c:	b580      	push	{r7, lr}
 800217e:	af00      	add	r7, sp, #0
 8002180:	46c0      	nop			; (mov r8, r8)
 8002182:	46bd      	mov	sp, r7
 8002184:	bd80      	pop	{r7, pc}

08002186 <HardFault_Handler>:
 8002186:	b580      	push	{r7, lr}
 8002188:	af00      	add	r7, sp, #0
 800218a:	e7fe      	b.n	800218a <HardFault_Handler+0x4>

0800218c <SVC_Handler>:
 800218c:	b580      	push	{r7, lr}
 800218e:	af00      	add	r7, sp, #0
 8002190:	46c0      	nop			; (mov r8, r8)
 8002192:	46bd      	mov	sp, r7
 8002194:	bd80      	pop	{r7, pc}

08002196 <PendSV_Handler>:
 8002196:	b580      	push	{r7, lr}
 8002198:	af00      	add	r7, sp, #0
 800219a:	46c0      	nop			; (mov r8, r8)
 800219c:	46bd      	mov	sp, r7
 800219e:	bd80      	pop	{r7, pc}

080021a0 <__libc_init_array>:
 80021a0:	b570      	push	{r4, r5, r6, lr}
 80021a2:	4d0c      	ldr	r5, [pc, #48]	; (80021d4 <__libc_init_array+0x34>)
 80021a4:	4e0c      	ldr	r6, [pc, #48]	; (80021d8 <__libc_init_array+0x38>)
 80021a6:	1b76      	subs	r6, r6, r5
 80021a8:	10b6      	asrs	r6, r6, #2
 80021aa:	d005      	beq.n	80021b8 <__libc_init_array+0x18>
 80021ac:	2400      	movs	r4, #0
 80021ae:	cd08      	ldmia	r5!, {r3}
 80021b0:	3401      	adds	r4, #1
 80021b2:	4798      	blx	r3
 80021b4:	42a6      	cmp	r6, r4
 80021b6:	d1fa      	bne.n	80021ae <__libc_init_array+0xe>
 80021b8:	f000 f896 	bl	80022e8 <_init>
 80021bc:	4d07      	ldr	r5, [pc, #28]	; (80021dc <__libc_init_array+0x3c>)
 80021be:	4e08      	ldr	r6, [pc, #32]	; (80021e0 <__libc_init_array+0x40>)
 80021c0:	1b76      	subs	r6, r6, r5
 80021c2:	10b6      	asrs	r6, r6, #2
 80021c4:	d005      	beq.n	80021d2 <__libc_init_array+0x32>
 80021c6:	2400      	movs	r4, #0
 80021c8:	cd08      	ldmia	r5!, {r3}
 80021ca:	3401      	adds	r4, #1
 80021cc:	4798      	blx	r3
 80021ce:	42a6      	cmp	r6, r4
 80021d0:	d1fa      	bne.n	80021c8 <__libc_init_array+0x28>
 80021d2:	bd70      	pop	{r4, r5, r6, pc}
 80021d4:	08002378 	.word	0x08002378
 80021d8:	08002378 	.word	0x08002378
 80021dc:	08002378 	.word	0x08002378
 80021e0:	08002380 	.word	0x08002380

080021e4 <register_fini>:
 80021e4:	4b03      	ldr	r3, [pc, #12]	; (80021f4 <register_fini+0x10>)
 80021e6:	b510      	push	{r4, lr}
 80021e8:	2b00      	cmp	r3, #0
 80021ea:	d002      	beq.n	80021f2 <register_fini+0xe>
 80021ec:	4802      	ldr	r0, [pc, #8]	; (80021f8 <register_fini+0x14>)
 80021ee:	f000 f805 	bl	80021fc <atexit>
 80021f2:	bd10      	pop	{r4, pc}
 80021f4:	00000000 	.word	0x00000000
 80021f8:	0800220d 	.word	0x0800220d

080021fc <atexit>:
 80021fc:	b510      	push	{r4, lr}
 80021fe:	0001      	movs	r1, r0
 8002200:	2300      	movs	r3, #0
 8002202:	2200      	movs	r2, #0
 8002204:	2000      	movs	r0, #0
 8002206:	f000 f819 	bl	800223c <__register_exitproc>
 800220a:	bd10      	pop	{r4, pc}

0800220c <__libc_fini_array>:
 800220c:	b570      	push	{r4, r5, r6, lr}
 800220e:	4d07      	ldr	r5, [pc, #28]	; (800222c <__libc_fini_array+0x20>)
 8002210:	4c07      	ldr	r4, [pc, #28]	; (8002230 <__libc_fini_array+0x24>)
 8002212:	1b64      	subs	r4, r4, r5
 8002214:	10a4      	asrs	r4, r4, #2
 8002216:	d005      	beq.n	8002224 <__libc_fini_array+0x18>
 8002218:	3c01      	subs	r4, #1
 800221a:	00a3      	lsls	r3, r4, #2
 800221c:	58eb      	ldr	r3, [r5, r3]
 800221e:	4798      	blx	r3
 8002220:	2c00      	cmp	r4, #0
 8002222:	d1f9      	bne.n	8002218 <__libc_fini_array+0xc>
 8002224:	f000 f866 	bl	80022f4 <_fini>
 8002228:	bd70      	pop	{r4, r5, r6, pc}
 800222a:	46c0      	nop			; (mov r8, r8)
 800222c:	08002380 	.word	0x08002380
 8002230:	08002384 	.word	0x08002384

08002234 <__retarget_lock_acquire_recursive>:
 8002234:	4770      	bx	lr
 8002236:	46c0      	nop			; (mov r8, r8)

08002238 <__retarget_lock_release_recursive>:
 8002238:	4770      	bx	lr
 800223a:	46c0      	nop			; (mov r8, r8)

0800223c <__register_exitproc>:
 800223c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800223e:	46d6      	mov	lr, sl
 8002240:	464f      	mov	r7, r9
 8002242:	4646      	mov	r6, r8
 8002244:	b5c0      	push	{r6, r7, lr}
 8002246:	4f26      	ldr	r7, [pc, #152]	; (80022e0 <__register_exitproc+0xa4>)
 8002248:	b082      	sub	sp, #8
 800224a:	0006      	movs	r6, r0
 800224c:	6838      	ldr	r0, [r7, #0]
 800224e:	4692      	mov	sl, r2
 8002250:	4698      	mov	r8, r3
 8002252:	4689      	mov	r9, r1
 8002254:	f7ff ffee 	bl	8002234 <__retarget_lock_acquire_recursive>
 8002258:	4b22      	ldr	r3, [pc, #136]	; (80022e4 <__register_exitproc+0xa8>)
 800225a:	681b      	ldr	r3, [r3, #0]
 800225c:	9301      	str	r3, [sp, #4]
 800225e:	23a4      	movs	r3, #164	; 0xa4
 8002260:	9a01      	ldr	r2, [sp, #4]
 8002262:	005b      	lsls	r3, r3, #1
 8002264:	58d5      	ldr	r5, [r2, r3]
 8002266:	2d00      	cmp	r5, #0
 8002268:	d02e      	beq.n	80022c8 <__register_exitproc+0x8c>
 800226a:	686c      	ldr	r4, [r5, #4]
 800226c:	2c1f      	cmp	r4, #31
 800226e:	dc30      	bgt.n	80022d2 <__register_exitproc+0x96>
 8002270:	2e00      	cmp	r6, #0
 8002272:	d10f      	bne.n	8002294 <__register_exitproc+0x58>
 8002274:	1c63      	adds	r3, r4, #1
 8002276:	606b      	str	r3, [r5, #4]
 8002278:	464b      	mov	r3, r9
 800227a:	3402      	adds	r4, #2
 800227c:	00a4      	lsls	r4, r4, #2
 800227e:	6838      	ldr	r0, [r7, #0]
 8002280:	5163      	str	r3, [r4, r5]
 8002282:	f7ff ffd9 	bl	8002238 <__retarget_lock_release_recursive>
 8002286:	2000      	movs	r0, #0
 8002288:	b002      	add	sp, #8
 800228a:	bce0      	pop	{r5, r6, r7}
 800228c:	46ba      	mov	sl, r7
 800228e:	46b1      	mov	r9, r6
 8002290:	46a8      	mov	r8, r5
 8002292:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002294:	2288      	movs	r2, #136	; 0x88
 8002296:	4651      	mov	r1, sl
 8002298:	0028      	movs	r0, r5
 800229a:	00a3      	lsls	r3, r4, #2
 800229c:	18eb      	adds	r3, r5, r3
 800229e:	5099      	str	r1, [r3, r2]
 80022a0:	3a87      	subs	r2, #135	; 0x87
 80022a2:	40a2      	lsls	r2, r4
 80022a4:	3089      	adds	r0, #137	; 0x89
 80022a6:	30ff      	adds	r0, #255	; 0xff
 80022a8:	6801      	ldr	r1, [r0, #0]
 80022aa:	4311      	orrs	r1, r2
 80022ac:	6001      	str	r1, [r0, #0]
 80022ae:	2184      	movs	r1, #132	; 0x84
 80022b0:	4640      	mov	r0, r8
 80022b2:	0049      	lsls	r1, r1, #1
 80022b4:	5058      	str	r0, [r3, r1]
 80022b6:	2e02      	cmp	r6, #2
 80022b8:	d1dc      	bne.n	8002274 <__register_exitproc+0x38>
 80022ba:	002b      	movs	r3, r5
 80022bc:	338d      	adds	r3, #141	; 0x8d
 80022be:	33ff      	adds	r3, #255	; 0xff
 80022c0:	6819      	ldr	r1, [r3, #0]
 80022c2:	430a      	orrs	r2, r1
 80022c4:	601a      	str	r2, [r3, #0]
 80022c6:	e7d5      	b.n	8002274 <__register_exitproc+0x38>
 80022c8:	0015      	movs	r5, r2
 80022ca:	354d      	adds	r5, #77	; 0x4d
 80022cc:	35ff      	adds	r5, #255	; 0xff
 80022ce:	50d5      	str	r5, [r2, r3]
 80022d0:	e7cb      	b.n	800226a <__register_exitproc+0x2e>
 80022d2:	6838      	ldr	r0, [r7, #0]
 80022d4:	f7ff ffb0 	bl	8002238 <__retarget_lock_release_recursive>
 80022d8:	2001      	movs	r0, #1
 80022da:	4240      	negs	r0, r0
 80022dc:	e7d4      	b.n	8002288 <__register_exitproc+0x4c>
 80022de:	46c0      	nop			; (mov r8, r8)
 80022e0:	20000430 	.word	0x20000430
 80022e4:	08002374 	.word	0x08002374

080022e8 <_init>:
 80022e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80022ea:	46c0      	nop			; (mov r8, r8)
 80022ec:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80022ee:	bc08      	pop	{r3}
 80022f0:	469e      	mov	lr, r3
 80022f2:	4770      	bx	lr

080022f4 <_fini>:
 80022f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80022f6:	46c0      	nop			; (mov r8, r8)
 80022f8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80022fa:	bc08      	pop	{r3}
 80022fc:	469e      	mov	lr, r3
 80022fe:	4770      	bx	lr