	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	cortex-a8
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	neon
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 2	@ Tag_ABI_FP_denormal
	.eabi_attribute	23, 1	@ Tag_ABI_FP_number_model
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.eabi_attribute	68, 1	@ Tag_Virtualization_use
	.file	"/root/Bela/projects/DynamicStiffStringModular/build/ExponentialSegment.bc"
	.file	1 "/usr/bin/../lib/gcc/arm-linux-gnueabihf/6.3.0/../../../../include/arm-linux-gnueabihf/c++/6.3.0/bits" "c++config.h"
	.file	2 "/usr/include/arm-linux-gnueabihf/bits" "math-finite.h"
	.file	3 "/usr/include/arm-linux-gnueabihf/bits" "mathcalls.h"
	.file	4 "/usr/include/arm-linux-gnueabihf/bits" "mathdef.h"
	.globl	_ZN18ExponentialSegmentC2Ev
	.p2align	2
	.type	_ZN18ExponentialSegmentC2Ev,%function
_ZN18ExponentialSegmentC2Ev:            @ @_ZN18ExponentialSegmentC2Ev
.Lfunc_begin0:
	.file	5 "/root/Bela/projects/DynamicStiffStringModular" "ExponentialSegment.cpp"
	.loc	5 20 0                  @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:20:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: ExponentialSegment:this <- %R0
	.loc	5 21 14 prologue_end    @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:21:14
	movw	r1, #0
.Ltmp0:
	.loc	5 42 33                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:42:33
	vmov.i32	q8, #0x0
.Ltmp1:
	.loc	5 21 14                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:21:14
	movt	r1, #16368
	str	r1, [r0, #4]
	mov	r1, #0
	str	r1, [r0]
.Ltmp2:
	.loc	5 42 33                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:42:33
	str	r1, [r0, #40]
	str	r1, [r0, #44]
	add	r1, r0, #24
	vst1.64	{d16, d17}, [r1]
.Ltmp3:
	@DEBUG_VALUE: setValue:value <- 0.000000e+00
	@DEBUG_VALUE: setValue:this <- %R0
	.loc	5 41 2                  @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:41:2
	add	r1, r0, #8
	.loc	5 42 33                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:42:33
	vst1.64	{d16, d17}, [r1]
.Ltmp4:
	.loc	5 23 1                  @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:23:1
	bx	lr
.Ltmp5:
.Lfunc_end0:
	.size	_ZN18ExponentialSegmentC2Ev, .Lfunc_end0-_ZN18ExponentialSegmentC2Ev
	.cfi_endproc
	.file	6 "/root/Bela/projects/DynamicStiffStringModular" "ExponentialSegment.h"
	.fnend

	.globl	_ZN18ExponentialSegment8setValueEf
	.p2align	2
	.type	_ZN18ExponentialSegment8setValueEf,%function
_ZN18ExponentialSegment8setValueEf:     @ @_ZN18ExponentialSegment8setValueEf
.Lfunc_begin1:
	.loc	5 40 0                  @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:40:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: setValue:this <- %R0
	@DEBUG_VALUE: setValue:value <- %S0
	.loc	5 41 18 prologue_end    @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:41:18
	vcvt.f64.f32	d16, s0
	.loc	5 44 14                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:44:14
	vmov.i32	q9, #0x0
	.loc	5 41 16                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:41:16
	vstr	d16, [r0, #8]
	.loc	5 42 33                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:42:33
	vstr	d16, [r0, #16]
	.loc	5 42 18 is_stmt 0       @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:42:18
	vstr	d16, [r0, #24]
	.loc	5 43 2 is_stmt 1        @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:43:2
	add	r0, r0, #32
.Ltmp6:
	.loc	5 44 14                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:44:14
	vst1.64	{d18, d19}, [r0]
	.loc	5 45 1                  @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:45:1
	bx	lr
.Ltmp7:
.Lfunc_end1:
	.size	_ZN18ExponentialSegment8setValueEf, .Lfunc_end1-_ZN18ExponentialSegment8setValueEf
	.cfi_endproc
	.fnend

	.globl	_ZN18ExponentialSegmentC2Ef
	.p2align	2
	.type	_ZN18ExponentialSegmentC2Ef,%function
_ZN18ExponentialSegmentC2Ef:            @ @_ZN18ExponentialSegmentC2Ef
.Lfunc_begin2:
	.loc	5 27 0                  @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:27:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: ExponentialSegment:this <- %R0
	@DEBUG_VALUE: ExponentialSegment:sampleRate <- %S0
	.loc	5 28 16 prologue_end    @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:28:16
	vcvt.f64.f32	d16, s0
.Ltmp8:
	.loc	5 42 33                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:42:33
	add	r1, r0, #24
	vmov.i32	q9, #0x0
.Ltmp9:
	@DEBUG_VALUE: setValue:this <- %R0
	.loc	5 28 14                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:28:14
	vstr	d16, [r0]
.Ltmp10:
	.loc	5 42 33                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:42:33
	vst1.64	{d18, d19}, [r1]
.Ltmp11:
	@DEBUG_VALUE: setValue:value <- 0.000000e+00
	.loc	5 41 2                  @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:41:2
	add	r1, r0, #8
	.loc	5 42 33                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:42:33
	vst1.64	{d18, d19}, [r1]
	mov	r1, #0
	str	r1, [r0, #40]
	str	r1, [r0, #44]
.Ltmp12:
	.loc	5 30 1                  @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:30:1
	bx	lr
.Ltmp13:
.Lfunc_end2:
	.size	_ZN18ExponentialSegmentC2Ef, .Lfunc_end2-_ZN18ExponentialSegmentC2Ef
	.cfi_endproc
	.fnend

	.globl	_ZN18ExponentialSegment13setSampleRateEf
	.p2align	2
	.type	_ZN18ExponentialSegment13setSampleRateEf,%function
_ZN18ExponentialSegment13setSampleRateEf: @ @_ZN18ExponentialSegment13setSampleRateEf
.Lfunc_begin3:
	.loc	5 34 0                  @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:34:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: setSampleRate:this <- %R0
	@DEBUG_VALUE: setSampleRate:rate <- %S0
	.loc	5 35 16 prologue_end    @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:35:16
	vcvt.f64.f32	d16, s0
	.loc	5 35 14 is_stmt 0       @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:35:14
	vstr	d16, [r0]
	.loc	5 36 1 is_stmt 1        @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:36:1
	bx	lr
.Ltmp14:
.Lfunc_end3:
	.size	_ZN18ExponentialSegment13setSampleRateEf, .Lfunc_end3-_ZN18ExponentialSegment13setSampleRateEf
	.cfi_endproc
	.fnend

	.globl	_ZN18ExponentialSegment6rampToEfff
	.p2align	2
	.type	_ZN18ExponentialSegment6rampToEfff,%function
_ZN18ExponentialSegment6rampToEfff:     @ @_ZN18ExponentialSegment6rampToEfff
.Lfunc_begin4:
	.loc	5 49 0                  @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:49:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset lr, -4
.Ltmp17:
	.cfi_offset r11, -8
.Ltmp18:
	.cfi_offset r10, -12
.Ltmp19:
	.cfi_offset r4, -16
	.setfp	r11, sp, #8
	add	r11, sp, #8
.Ltmp20:
	.cfi_def_cfa r11, 8
	.vsave	{d8, d9}
	vpush	{d8, d9}
.Ltmp21:
	.cfi_offset d9, -24
.Ltmp22:
	.cfi_offset d8, -32
	@DEBUG_VALUE: rampTo:this <- %R0
	@DEBUG_VALUE: rampTo:value <- %S0
	@DEBUG_VALUE: rampTo:time <- %S1
	@DEBUG_VALUE: rampTo:overshootRatio <- %S2
                                        @ kill: %S2<def> %S2<kill> %D1<def>
.Ltmp23:
	.loc	5 51 17 prologue_end    @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:51:17
	vcvt.f64.f32	d16, s0
	mov	r4, r0
.Ltmp24:
	@DEBUG_VALUE: rampTo:this <- %R4
	.loc	5 61 43                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:61:43
	vcvt.f64.f32	d18, s2
	vmov.f64	d9, #1.000000e+00
	.loc	5 51 15                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:51:15
	vstr	d16, [r4, #16]
	vmov.f32	s16, s1
.Ltmp25:
	@DEBUG_VALUE: rampTo:time <- %S16
	.loc	5 61 42                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:61:42
	vdiv.f64	d18, d9, d18
	.loc	5 55 42                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:55:42
	vldr	d17, [r4, #8]
	.loc	5 55 40 is_stmt 0       @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:55:40
	vsub.f64	d16, d16, d17
	.loc	5 55 27                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:55:27
	vcvt.f32.f64	s0, d16
.Ltmp26:
	@DEBUG_VALUE: rampTo:distanceToTarget <- %S0
	.loc	5 56 53 is_stmt 1       @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:56:53
	vmul.f32	d0, d0, d1
.Ltmp27:
	.loc	5 56 36 is_stmt 0       @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:56:36
	vcvt.f64.f32	d16, s0
	.loc	5 56 34                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:56:34
	vadd.f64	d17, d16, d17
	.loc	5 61 37 is_stmt 1       @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:61:37
	vsub.f64	d0, d9, d18
	.loc	5 58 28                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:58:28
	vneg.f64	d16, d16
	.loc	5 56 18                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:56:18
	vstr	d17, [r4, #24]
	.loc	5 58 12                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:58:12
	vstr	d16, [r4, #32]
	.loc	5 61 29 discriminator 1 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:61:29
	bl	__log_finite
	.loc	5 61 22 is_stmt 0       @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:61:22
	vcvt.f64.f32	d16, s16
	.loc	5 61 27                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:61:27
	vdiv.f64	d16, d16, d0
	.loc	5 64 29 is_stmt 1       @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:64:29
	vdiv.f64	d0, d9, d16
	.loc	5 64 20 is_stmt 0       @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:64:20
	bl	__exp_finite
	.loc	5 64 43                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:64:43
	vldr	d16, [r4]
	.loc	5 64 41                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:64:41
	vdiv.f64	d1, d9, d16
	.loc	5 64 16 discriminator 1 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:64:16
	bl	pow
	.loc	5 64 14                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:64:14
	vstr	d0, [r4, #40]
	.loc	5 65 1 is_stmt 1        @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:65:1
	vpop	{d8, d9}
.Ltmp28:
	pop	{r4, r10, r11, pc}
.Ltmp29:
.Lfunc_end4:
	.size	_ZN18ExponentialSegment6rampToEfff, .Lfunc_end4-_ZN18ExponentialSegment6rampToEfff
	.cfi_endproc
	.fnend

	.globl	_ZN18ExponentialSegment7processEv
	.p2align	2
	.type	_ZN18ExponentialSegment7processEv,%function
_ZN18ExponentialSegment7processEv:      @ @_ZN18ExponentialSegment7processEv
.Lfunc_begin5:
	.loc	5 69 0                  @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:69:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: process:this <- %R0
	.loc	5 85 55 prologue_end discriminator 1 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:85:55
	vldr	d18, [r0, #24]
.Ltmp30:
	.loc	5 73 13                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:73:13
	vldr	d17, [r0, #32]
.Ltmp31:
	.loc	5 75 9                  @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:75:9
	vadd.f64	d16, d17, d18
	.loc	5 70 16                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:70:16
	vstr	d16, [r0, #8]
.Ltmp32:
	@DEBUG_VALUE: finished:this <- %R0
	.loc	5 85 22                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:85:22
	vldr	d19, [r0, #16]
.Ltmp33:
	.loc	5 83 35                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:83:35
	vcmpe.f64	d16, d19
	vmrs	APSR_nzcv, fpscr
	blt	.LBB5_2
.Ltmp34:
@ BB#1:
	@DEBUG_VALUE: finished:this <- %R0
	@DEBUG_VALUE: process:this <- %R0
	vcmpe.f64	d16, d18
	vmrs	APSR_nzcv, fpscr
	ble	.LBB5_5
.LBB5_2:
	@DEBUG_VALUE: finished:this <- %R0
	@DEBUG_VALUE: process:this <- %R0
.Ltmp35:
	.loc	5 85 35                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:85:35
	vcmpe.f64	d16, d19
	vmrs	APSR_nzcv, fpscr
	bgt	.LBB5_4
.Ltmp36:
@ BB#3:
	@DEBUG_VALUE: finished:this <- %R0
	@DEBUG_VALUE: process:this <- %R0
	vcmpe.f64	d16, d18
	vmrs	APSR_nzcv, fpscr
	bge	.LBB5_5
.LBB5_4:                                @ %_ZN18ExponentialSegment8finishedEv.exit
	@DEBUG_VALUE: finished:this <- %R0
	@DEBUG_VALUE: process:this <- %R0
	.loc	5 73 16                 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:73:16
	vldr	d18, [r0, #40]
	.loc	5 73 13 is_stmt 0       @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:73:13
	vmul.f64	d17, d17, d18
	vstr	d17, [r0, #32]
.Ltmp37:
.LBB5_5:                                @ %_ZN18ExponentialSegment8finishedEv.exit.thread
	@DEBUG_VALUE: finished:this <- %R0
	@DEBUG_VALUE: process:this <- %R0
	.loc	5 75 9 is_stmt 1        @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:75:9
	vcvt.f32.f64	s0, d16
	.loc	5 75 2 is_stmt 0        @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:75:2
	bx	lr
.Ltmp38:
.Lfunc_end5:
	.size	_ZN18ExponentialSegment7processEv, .Lfunc_end5-_ZN18ExponentialSegment7processEv
	.cfi_endproc
	.fnend

	.globl	_ZN18ExponentialSegment8finishedEv
	.p2align	2
	.type	_ZN18ExponentialSegment8finishedEv,%function
_ZN18ExponentialSegment8finishedEv:     @ @_ZN18ExponentialSegment8finishedEv
.Lfunc_begin6:
	.loc	5 80 0 is_stmt 1        @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:80:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: finished:this <- %R0
	.loc	5 85 5 prologue_end     @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:85:5
	vldr	d16, [r0, #8]
	.loc	5 85 22 is_stmt 0       @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:85:22
	vldr	d17, [r0, #16]
.Ltmp39:
	.loc	5 83 35 is_stmt 1       @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:83:35
	vcmpe.f64	d16, d17
	vmrs	APSR_nzcv, fpscr
	blt	.LBB6_2
@ BB#1:
	@DEBUG_VALUE: finished:this <- %R0
	.loc	5 83 55 is_stmt 0 discriminator 1 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:83:55
	vldr	d18, [r0, #24]
	mov	r1, #1
	.loc	5 83 5 discriminator 1  @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:83:5
	vcmpe.f64	d16, d18
	vmrs	APSR_nzcv, fpscr
	ble	.LBB6_5
.Ltmp40:
.LBB6_2:
	@DEBUG_VALUE: finished:this <- %R0
	.loc	5 85 35 is_stmt 1       @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:85:35
	vcmpe.f64	d16, d17
	vmrs	APSR_nzcv, fpscr
	ble	.LBB6_4
@ BB#3:
	@DEBUG_VALUE: finished:this <- %R0
	mov	r1, #0
	b	.LBB6_5
.LBB6_4:
	@DEBUG_VALUE: finished:this <- %R0
	.loc	5 85 55 is_stmt 0 discriminator 1 @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:85:55
	vldr	d17, [r0, #24]
	mov	r1, #1
	.loc	5 85 5 discriminator 1  @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:85:5
	vcmpe.f64	d16, d17
	vmrs	APSR_nzcv, fpscr
	movlt	r1, #0
.Ltmp41:
.LBB6_5:
	@DEBUG_VALUE: finished:this <- %R0
	.loc	5 88 1 is_stmt 1        @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:88:1
	mov	r0, r1
	bx	lr
.Ltmp42:
.Lfunc_end6:
	.size	_ZN18ExponentialSegment8finishedEv, .Lfunc_end6-_ZN18ExponentialSegment8finishedEv
	.cfi_endproc
	.fnend

	.globl	_ZN18ExponentialSegmentD2Ev
	.p2align	2
	.type	_ZN18ExponentialSegmentD2Ev,%function
_ZN18ExponentialSegmentD2Ev:            @ @_ZN18ExponentialSegmentD2Ev
.Lfunc_begin7:
	.loc	5 92 0                  @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:92:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: ~ExponentialSegment:this <- %R0
	.loc	5 93 1 prologue_end     @ /root/Bela/projects/DynamicStiffStringModular/ExponentialSegment.cpp:93:1
	bx	lr
.Ltmp43:
.Lfunc_end7:
	.size	_ZN18ExponentialSegmentD2Ev, .Lfunc_end7-_ZN18ExponentialSegmentD2Ev
	.cfi_endproc
	.fnend

	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)" @ string offset=0
.Linfo_string1:
	.asciz	"/root/Bela/projects/DynamicStiffStringModular/build/ExponentialSegment.cpp" @ string offset=45
.Linfo_string2:
	.asciz	"/root/Bela"            @ string offset=120
.Linfo_string3:
	.asciz	"std"                   @ string offset=131
.Linfo_string4:
	.asciz	"__acos_finite"         @ string offset=135
.Linfo_string5:
	.asciz	"acos"                  @ string offset=149
.Linfo_string6:
	.asciz	"double"                @ string offset=154
.Linfo_string7:
	.asciz	"__asin_finite"         @ string offset=161
.Linfo_string8:
	.asciz	"asin"                  @ string offset=175
.Linfo_string9:
	.asciz	"atan"                  @ string offset=180
.Linfo_string10:
	.asciz	"__atan2_finite"        @ string offset=185
.Linfo_string11:
	.asciz	"atan2"                 @ string offset=200
.Linfo_string12:
	.asciz	"ceil"                  @ string offset=206
.Linfo_string13:
	.asciz	"cos"                   @ string offset=211
.Linfo_string14:
	.asciz	"__cosh_finite"         @ string offset=215
.Linfo_string15:
	.asciz	"cosh"                  @ string offset=229
.Linfo_string16:
	.asciz	"__exp_finite"          @ string offset=234
.Linfo_string17:
	.asciz	"exp"                   @ string offset=247
.Linfo_string18:
	.asciz	"fabs"                  @ string offset=251
.Linfo_string19:
	.asciz	"floor"                 @ string offset=256
.Linfo_string20:
	.asciz	"__fmod_finite"         @ string offset=262
.Linfo_string21:
	.asciz	"fmod"                  @ string offset=276
.Linfo_string22:
	.asciz	"frexp"                 @ string offset=281
.Linfo_string23:
	.asciz	"int"                   @ string offset=287
.Linfo_string24:
	.asciz	"ldexp"                 @ string offset=291
.Linfo_string25:
	.asciz	"__log_finite"          @ string offset=297
.Linfo_string26:
	.asciz	"log"                   @ string offset=310
.Linfo_string27:
	.asciz	"__log10_finite"        @ string offset=314
.Linfo_string28:
	.asciz	"log10"                 @ string offset=329
.Linfo_string29:
	.asciz	"modf"                  @ string offset=335
.Linfo_string30:
	.asciz	"__pow_finite"          @ string offset=340
.Linfo_string31:
	.asciz	"pow"                   @ string offset=353
.Linfo_string32:
	.asciz	"sin"                   @ string offset=357
.Linfo_string33:
	.asciz	"__sinh_finite"         @ string offset=361
.Linfo_string34:
	.asciz	"sinh"                  @ string offset=375
.Linfo_string35:
	.asciz	"__sqrt_finite"         @ string offset=380
.Linfo_string36:
	.asciz	"sqrt"                  @ string offset=394
.Linfo_string37:
	.asciz	"tan"                   @ string offset=399
.Linfo_string38:
	.asciz	"tanh"                  @ string offset=403
.Linfo_string39:
	.asciz	"double_t"              @ string offset=408
.Linfo_string40:
	.asciz	"float"                 @ string offset=417
.Linfo_string41:
	.asciz	"float_t"               @ string offset=423
.Linfo_string42:
	.asciz	"__acosh_finite"        @ string offset=431
.Linfo_string43:
	.asciz	"acosh"                 @ string offset=446
.Linfo_string44:
	.asciz	"__acoshf_finite"       @ string offset=452
.Linfo_string45:
	.asciz	"acoshf"                @ string offset=468
.Linfo_string46:
	.asciz	"acoshl"                @ string offset=475
.Linfo_string47:
	.asciz	"long double"           @ string offset=482
.Linfo_string48:
	.asciz	"asinh"                 @ string offset=494
.Linfo_string49:
	.asciz	"asinhf"                @ string offset=500
.Linfo_string50:
	.asciz	"asinhl"                @ string offset=507
.Linfo_string51:
	.asciz	"__atanh_finite"        @ string offset=514
.Linfo_string52:
	.asciz	"atanh"                 @ string offset=529
.Linfo_string53:
	.asciz	"__atanhf_finite"       @ string offset=535
.Linfo_string54:
	.asciz	"atanhf"                @ string offset=551
.Linfo_string55:
	.asciz	"atanhl"                @ string offset=558
.Linfo_string56:
	.asciz	"cbrt"                  @ string offset=565
.Linfo_string57:
	.asciz	"cbrtf"                 @ string offset=570
.Linfo_string58:
	.asciz	"cbrtl"                 @ string offset=576
.Linfo_string59:
	.asciz	"copysign"              @ string offset=582
.Linfo_string60:
	.asciz	"copysignf"             @ string offset=591
.Linfo_string61:
	.asciz	"copysignl"             @ string offset=601
.Linfo_string62:
	.asciz	"erf"                   @ string offset=611
.Linfo_string63:
	.asciz	"erff"                  @ string offset=615
.Linfo_string64:
	.asciz	"erfl"                  @ string offset=620
.Linfo_string65:
	.asciz	"erfc"                  @ string offset=625
.Linfo_string66:
	.asciz	"erfcf"                 @ string offset=630
.Linfo_string67:
	.asciz	"erfcl"                 @ string offset=636
.Linfo_string68:
	.asciz	"__exp2_finite"         @ string offset=642
.Linfo_string69:
	.asciz	"exp2"                  @ string offset=656
.Linfo_string70:
	.asciz	"__exp2f_finite"        @ string offset=661
.Linfo_string71:
	.asciz	"exp2f"                 @ string offset=676
.Linfo_string72:
	.asciz	"exp2l"                 @ string offset=682
.Linfo_string73:
	.asciz	"expm1"                 @ string offset=688
.Linfo_string74:
	.asciz	"expm1f"                @ string offset=694
.Linfo_string75:
	.asciz	"expm1l"                @ string offset=701
.Linfo_string76:
	.asciz	"fdim"                  @ string offset=708
.Linfo_string77:
	.asciz	"fdimf"                 @ string offset=713
.Linfo_string78:
	.asciz	"fdiml"                 @ string offset=719
.Linfo_string79:
	.asciz	"fma"                   @ string offset=725
.Linfo_string80:
	.asciz	"fmaf"                  @ string offset=729
.Linfo_string81:
	.asciz	"fmal"                  @ string offset=734
.Linfo_string82:
	.asciz	"fmax"                  @ string offset=739
.Linfo_string83:
	.asciz	"fmaxf"                 @ string offset=744
.Linfo_string84:
	.asciz	"fmaxl"                 @ string offset=750
.Linfo_string85:
	.asciz	"fmin"                  @ string offset=756
.Linfo_string86:
	.asciz	"fminf"                 @ string offset=761
.Linfo_string87:
	.asciz	"fminl"                 @ string offset=767
.Linfo_string88:
	.asciz	"__hypot_finite"        @ string offset=773
.Linfo_string89:
	.asciz	"hypot"                 @ string offset=788
.Linfo_string90:
	.asciz	"__hypotf_finite"       @ string offset=794
.Linfo_string91:
	.asciz	"hypotf"                @ string offset=810
.Linfo_string92:
	.asciz	"hypotl"                @ string offset=817
.Linfo_string93:
	.asciz	"ilogb"                 @ string offset=824
.Linfo_string94:
	.asciz	"ilogbf"                @ string offset=830
.Linfo_string95:
	.asciz	"ilogbl"                @ string offset=837
.Linfo_string96:
	.asciz	"lgamma"                @ string offset=844
.Linfo_string97:
	.asciz	"lgammaf"               @ string offset=851
.Linfo_string98:
	.asciz	"lgammal"               @ string offset=859
.Linfo_string99:
	.asciz	"llrint"                @ string offset=867
.Linfo_string100:
	.asciz	"long long int"         @ string offset=874
.Linfo_string101:
	.asciz	"llrintf"               @ string offset=888
.Linfo_string102:
	.asciz	"llrintl"               @ string offset=896
.Linfo_string103:
	.asciz	"llround"               @ string offset=904
.Linfo_string104:
	.asciz	"llroundf"              @ string offset=912
.Linfo_string105:
	.asciz	"llroundl"              @ string offset=921
.Linfo_string106:
	.asciz	"log1p"                 @ string offset=930
.Linfo_string107:
	.asciz	"log1pf"                @ string offset=936
.Linfo_string108:
	.asciz	"log1pl"                @ string offset=943
.Linfo_string109:
	.asciz	"__log2_finite"         @ string offset=950
.Linfo_string110:
	.asciz	"log2"                  @ string offset=964
.Linfo_string111:
	.asciz	"__log2f_finite"        @ string offset=969
.Linfo_string112:
	.asciz	"log2f"                 @ string offset=984
.Linfo_string113:
	.asciz	"log2l"                 @ string offset=990
.Linfo_string114:
	.asciz	"logb"                  @ string offset=996
.Linfo_string115:
	.asciz	"logbf"                 @ string offset=1001
.Linfo_string116:
	.asciz	"logbl"                 @ string offset=1007
.Linfo_string117:
	.asciz	"lrint"                 @ string offset=1013
.Linfo_string118:
	.asciz	"long int"              @ string offset=1019
.Linfo_string119:
	.asciz	"lrintf"                @ string offset=1028
.Linfo_string120:
	.asciz	"lrintl"                @ string offset=1035
.Linfo_string121:
	.asciz	"lround"                @ string offset=1042
.Linfo_string122:
	.asciz	"lroundf"               @ string offset=1049
.Linfo_string123:
	.asciz	"lroundl"               @ string offset=1057
.Linfo_string124:
	.asciz	"nan"                   @ string offset=1065
.Linfo_string125:
	.asciz	"char"                  @ string offset=1069
.Linfo_string126:
	.asciz	"nanf"                  @ string offset=1074
.Linfo_string127:
	.asciz	"nanl"                  @ string offset=1079
.Linfo_string128:
	.asciz	"nearbyint"             @ string offset=1084
.Linfo_string129:
	.asciz	"nearbyintf"            @ string offset=1094
.Linfo_string130:
	.asciz	"nearbyintl"            @ string offset=1105
.Linfo_string131:
	.asciz	"nextafter"             @ string offset=1116
.Linfo_string132:
	.asciz	"nextafterf"            @ string offset=1126
.Linfo_string133:
	.asciz	"nextafterl"            @ string offset=1137
.Linfo_string134:
	.asciz	"nexttoward"            @ string offset=1148
.Linfo_string135:
	.asciz	"nexttowardf"           @ string offset=1159
.Linfo_string136:
	.asciz	"nexttowardl"           @ string offset=1171
.Linfo_string137:
	.asciz	"__remainder_finite"    @ string offset=1183
.Linfo_string138:
	.asciz	"remainder"             @ string offset=1202
.Linfo_string139:
	.asciz	"__remainderf_finite"   @ string offset=1212
.Linfo_string140:
	.asciz	"remainderf"            @ string offset=1232
.Linfo_string141:
	.asciz	"remainderl"            @ string offset=1243
.Linfo_string142:
	.asciz	"remquo"                @ string offset=1254
.Linfo_string143:
	.asciz	"remquof"               @ string offset=1261
.Linfo_string144:
	.asciz	"remquol"               @ string offset=1269
.Linfo_string145:
	.asciz	"rint"                  @ string offset=1277
.Linfo_string146:
	.asciz	"rintf"                 @ string offset=1282
.Linfo_string147:
	.asciz	"rintl"                 @ string offset=1288
.Linfo_string148:
	.asciz	"round"                 @ string offset=1294
.Linfo_string149:
	.asciz	"roundf"                @ string offset=1300
.Linfo_string150:
	.asciz	"roundl"                @ string offset=1307
.Linfo_string151:
	.asciz	"scalbln"               @ string offset=1314
.Linfo_string152:
	.asciz	"scalblnf"              @ string offset=1322
.Linfo_string153:
	.asciz	"scalblnl"              @ string offset=1331
.Linfo_string154:
	.asciz	"scalbn"                @ string offset=1340
.Linfo_string155:
	.asciz	"scalbnf"               @ string offset=1347
.Linfo_string156:
	.asciz	"scalbnl"               @ string offset=1355
.Linfo_string157:
	.asciz	"tgamma"                @ string offset=1363
.Linfo_string158:
	.asciz	"tgammaf"               @ string offset=1370
.Linfo_string159:
	.asciz	"tgammal"               @ string offset=1378
.Linfo_string160:
	.asciz	"trunc"                 @ string offset=1386
.Linfo_string161:
	.asciz	"truncf"                @ string offset=1392
.Linfo_string162:
	.asciz	"truncl"                @ string offset=1399
.Linfo_string163:
	.asciz	"sampleRate_"           @ string offset=1406
.Linfo_string164:
	.asciz	"currentValue_"         @ string offset=1418
.Linfo_string165:
	.asciz	"targetValue_"          @ string offset=1432
.Linfo_string166:
	.asciz	"asymptoteValue_"       @ string offset=1445
.Linfo_string167:
	.asciz	"expValue_"             @ string offset=1461
.Linfo_string168:
	.asciz	"multiplier_"           @ string offset=1471
.Linfo_string169:
	.asciz	"ExponentialSegment"    @ string offset=1483
.Linfo_string170:
	.asciz	"_ZN18ExponentialSegment13setSampleRateEf" @ string offset=1502
.Linfo_string171:
	.asciz	"setSampleRate"         @ string offset=1543
.Linfo_string172:
	.asciz	"_ZN18ExponentialSegment8setValueEf" @ string offset=1557
.Linfo_string173:
	.asciz	"setValue"              @ string offset=1592
.Linfo_string174:
	.asciz	"_ZN18ExponentialSegment6rampToEfff" @ string offset=1601
.Linfo_string175:
	.asciz	"rampTo"                @ string offset=1636
.Linfo_string176:
	.asciz	"_ZN18ExponentialSegment7processEv" @ string offset=1643
.Linfo_string177:
	.asciz	"process"               @ string offset=1677
.Linfo_string178:
	.asciz	"_ZN18ExponentialSegment8finishedEv" @ string offset=1685
.Linfo_string179:
	.asciz	"finished"              @ string offset=1720
.Linfo_string180:
	.asciz	"bool"                  @ string offset=1729
.Linfo_string181:
	.asciz	"~ExponentialSegment"   @ string offset=1734
.Linfo_string182:
	.asciz	"this"                  @ string offset=1754
.Linfo_string183:
	.asciz	"value"                 @ string offset=1759
.Linfo_string184:
	.asciz	"_ZN18ExponentialSegmentC2Ev" @ string offset=1765
.Linfo_string185:
	.asciz	"_ZN18ExponentialSegmentC2Ef" @ string offset=1793
.Linfo_string186:
	.asciz	"_ZN18ExponentialSegmentD2Ev" @ string offset=1821
.Linfo_string187:
	.asciz	"sampleRate"            @ string offset=1849
.Linfo_string188:
	.asciz	"rate"                  @ string offset=1860
.Linfo_string189:
	.asciz	"time"                  @ string offset=1865
.Linfo_string190:
	.asciz	"overshootRatio"        @ string offset=1870
.Linfo_string191:
	.asciz	"distanceToTarget"      @ string offset=1885
.Linfo_string192:
	.asciz	"tau"                   @ string offset=1902
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	0
	.long	0
.Ldebug_loc1:
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Lfunc_begin1-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc3:
	.long	.Ltmp9-.Lfunc_begin0
	.long	.Lfunc_end2-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Ltmp11-.Lfunc_begin0
	.long	.Lfunc_end2-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	0
	.long	0
.Ldebug_loc5:
	.long	.Lfunc_begin4-.Lfunc_begin0
	.long	.Ltmp24-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp24-.Lfunc_begin0
	.long	.Ltmp29-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc6:
	.long	.Lfunc_begin4-.Lfunc_begin0
	.long	.Ltmp26-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc7:
	.long	.Lfunc_begin4-.Lfunc_begin0
	.long	.Ltmp25-.Lfunc_begin0
	.short	8                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_constu
	.byte	16                      @ 32
	.byte	32                      @ DW_OP_shr
	.byte	37                      @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	.Ltmp25-.Lfunc_begin0
	.long	.Ltmp28-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	136                     @ 264
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc8:
	.long	.Lfunc_begin4-.Lfunc_begin0
	.long	.Ltmp23-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	129                     @ 257
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc9:
	.long	.Ltmp26-.Lfunc_begin0
	.long	.Ltmp27-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc10:
	.long	.Ltmp32-.Lfunc_begin0
	.long	.Lfunc_end5-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
	.section	.debug_abbrev,"",%progbits
.Lsection_abbrev:
	.byte	1                       @ Abbreviation Code
	.byte	17                      @ DW_TAG_compile_unit
	.byte	1                       @ DW_CHILDREN_yes
	.byte	37                      @ DW_AT_producer
	.byte	14                      @ DW_FORM_strp
	.byte	19                      @ DW_AT_language
	.byte	5                       @ DW_FORM_data2
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	16                      @ DW_AT_stmt_list
	.byte	23                      @ DW_FORM_sec_offset
	.byte	27                      @ DW_AT_comp_dir
	.byte	14                      @ DW_FORM_strp
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	2                       @ Abbreviation Code
	.byte	57                      @ DW_TAG_namespace
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	3                       @ Abbreviation Code
	.byte	8                       @ DW_TAG_imported_declaration
	.byte	0                       @ DW_CHILDREN_no
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	24                      @ DW_AT_import
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	4                       @ Abbreviation Code
	.byte	8                       @ DW_TAG_imported_declaration
	.byte	0                       @ DW_CHILDREN_no
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	24                      @ DW_AT_import
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	5                       @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	6                       @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	7                       @ Abbreviation Code
	.byte	36                      @ DW_TAG_base_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	62                      @ DW_AT_encoding
	.byte	11                      @ DW_FORM_data1
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	8                       @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	9                       @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	10                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	11                      @ Abbreviation Code
	.byte	22                      @ DW_TAG_typedef
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	12                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	13                      @ Abbreviation Code
	.byte	38                      @ DW_TAG_const_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	14                      @ Abbreviation Code
	.byte	2                       @ DW_TAG_class_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	15                      @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	16                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	17                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	18                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	19                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	20                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	32                      @ DW_AT_inline
	.byte	11                      @ DW_FORM_data1
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	21                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	22                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	23                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	24                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	25                      @ Abbreviation Code
	.byte	29                      @ DW_TAG_inlined_subroutine
	.byte	1                       @ DW_CHILDREN_yes
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	85                      @ DW_AT_ranges
	.byte	23                      @ DW_FORM_sec_offset
	.byte	88                      @ DW_AT_call_file
	.byte	11                      @ DW_FORM_data1
	.byte	89                      @ DW_AT_call_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	26                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	27                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	28                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	29                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	30                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	31                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	32                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	33                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	34                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	0                       @ EOM(3)
	.section	.debug_info,"",%progbits
.Lsection_info:
.Lcu_begin0:
	.long	4538                    @ Length of Unit
	.short	4                       @ DWARF version number
	.long	.Lsection_abbrev        @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x11b3 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	4                       @ DW_AT_language
	.long	.Linfo_string1          @ DW_AT_name
	.long	.Lline_table_start0     @ DW_AT_stmt_list
	.long	.Linfo_string2          @ DW_AT_comp_dir
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	2                       @ Abbrev [2] 0x26:0x408 DW_TAG_namespace
	.long	.Linfo_string3          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	199                     @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x2d:0x7 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.byte	106                     @ DW_AT_decl_line
	.long	1070                    @ DW_AT_import
	.byte	3                       @ Abbrev [3] 0x34:0x7 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.byte	125                     @ DW_AT_decl_line
	.long	1098                    @ DW_AT_import
	.byte	3                       @ Abbrev [3] 0x3b:0x7 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.byte	144                     @ DW_AT_decl_line
	.long	1119                    @ DW_AT_import
	.byte	3                       @ Abbrev [3] 0x42:0x7 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.byte	163                     @ DW_AT_decl_line
	.long	1136                    @ DW_AT_import
	.byte	3                       @ Abbrev [3] 0x49:0x7 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.byte	184                     @ DW_AT_decl_line
	.long	1162                    @ DW_AT_import
	.byte	3                       @ Abbrev [3] 0x50:0x7 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.byte	203                     @ DW_AT_decl_line
	.long	1179                    @ DW_AT_import
	.byte	3                       @ Abbrev [3] 0x57:0x7 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.byte	222                     @ DW_AT_decl_line
	.long	1196                    @ DW_AT_import
	.byte	3                       @ Abbrev [3] 0x5e:0x7 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.byte	241                     @ DW_AT_decl_line
	.long	1217                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x65:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	1238                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x6d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	279                     @ DW_AT_decl_line
	.long	1255                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x75:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	298                     @ DW_AT_decl_line
	.long	1272                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x7d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	319                     @ DW_AT_decl_line
	.long	1298                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x85:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	338                     @ DW_AT_decl_line
	.long	1332                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x8d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	357                     @ DW_AT_decl_line
	.long	1354                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x95:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	376                     @ DW_AT_decl_line
	.long	1376                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x9d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	395                     @ DW_AT_decl_line
	.long	1398                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0xa5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	407                     @ DW_AT_decl_line
	.long	1425                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0xad:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	444                     @ DW_AT_decl_line
	.long	1452                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0xb5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	463                     @ DW_AT_decl_line
	.long	1469                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0xbd:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	482                     @ DW_AT_decl_line
	.long	1491                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0xc5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	501                     @ DW_AT_decl_line
	.long	1513                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0xcd:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	520                     @ DW_AT_decl_line
	.long	1530                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0xd5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1101                    @ DW_AT_decl_line
	.long	1547                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0xdd:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1102                    @ DW_AT_decl_line
	.long	1558                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0xe5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1105                    @ DW_AT_decl_line
	.long	1576                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0xed:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1106                    @ DW_AT_decl_line
	.long	1597                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0xf5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1107                    @ DW_AT_decl_line
	.long	1618                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0xfd:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1109                    @ DW_AT_decl_line
	.long	1646                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x105:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1110                    @ DW_AT_decl_line
	.long	1663                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x10d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1111                    @ DW_AT_decl_line
	.long	1680                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x115:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1113                    @ DW_AT_decl_line
	.long	1697                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x11d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1114                    @ DW_AT_decl_line
	.long	1718                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x125:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1115                    @ DW_AT_decl_line
	.long	1739                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x12d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1117                    @ DW_AT_decl_line
	.long	1760                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x135:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1118                    @ DW_AT_decl_line
	.long	1777                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x13d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1119                    @ DW_AT_decl_line
	.long	1794                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x145:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1121                    @ DW_AT_decl_line
	.long	1811                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x14d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1122                    @ DW_AT_decl_line
	.long	1833                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x155:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1123                    @ DW_AT_decl_line
	.long	1855                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x15d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1125                    @ DW_AT_decl_line
	.long	1877                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x165:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1126                    @ DW_AT_decl_line
	.long	1895                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x16d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1127                    @ DW_AT_decl_line
	.long	1913                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x175:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1129                    @ DW_AT_decl_line
	.long	1931                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x17d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1130                    @ DW_AT_decl_line
	.long	1949                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x185:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1131                    @ DW_AT_decl_line
	.long	1967                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x18d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1133                    @ DW_AT_decl_line
	.long	1985                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x195:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1134                    @ DW_AT_decl_line
	.long	2006                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x19d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1135                    @ DW_AT_decl_line
	.long	2027                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x1a5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1137                    @ DW_AT_decl_line
	.long	2048                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x1ad:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1138                    @ DW_AT_decl_line
	.long	2065                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x1b5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1139                    @ DW_AT_decl_line
	.long	2082                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x1bd:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1141                    @ DW_AT_decl_line
	.long	2099                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x1c5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1142                    @ DW_AT_decl_line
	.long	2122                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x1cd:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1143                    @ DW_AT_decl_line
	.long	2145                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x1d5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1145                    @ DW_AT_decl_line
	.long	2168                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x1dd:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1146                    @ DW_AT_decl_line
	.long	2196                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x1e5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1147                    @ DW_AT_decl_line
	.long	2224                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x1ed:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1149                    @ DW_AT_decl_line
	.long	2252                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x1f5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1150                    @ DW_AT_decl_line
	.long	2275                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x1fd:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1151                    @ DW_AT_decl_line
	.long	2298                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x205:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1153                    @ DW_AT_decl_line
	.long	2321                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x20d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1154                    @ DW_AT_decl_line
	.long	2344                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x215:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1155                    @ DW_AT_decl_line
	.long	2367                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x21d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1157                    @ DW_AT_decl_line
	.long	2390                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x225:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1158                    @ DW_AT_decl_line
	.long	2416                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x22d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1159                    @ DW_AT_decl_line
	.long	2442                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x235:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1161                    @ DW_AT_decl_line
	.long	2468                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x23d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1162                    @ DW_AT_decl_line
	.long	2486                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x245:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1163                    @ DW_AT_decl_line
	.long	2504                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x24d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1165                    @ DW_AT_decl_line
	.long	2522                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x255:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1166                    @ DW_AT_decl_line
	.long	2540                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x25d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1167                    @ DW_AT_decl_line
	.long	2558                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x265:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1169                    @ DW_AT_decl_line
	.long	2576                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x26d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1170                    @ DW_AT_decl_line
	.long	2601                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x275:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1171                    @ DW_AT_decl_line
	.long	2619                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x27d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1173                    @ DW_AT_decl_line
	.long	2637                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x285:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1174                    @ DW_AT_decl_line
	.long	2655                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x28d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1175                    @ DW_AT_decl_line
	.long	2673                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x295:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1177                    @ DW_AT_decl_line
	.long	2691                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x29d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1178                    @ DW_AT_decl_line
	.long	2708                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x2a5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1179                    @ DW_AT_decl_line
	.long	2725                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x2ad:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1181                    @ DW_AT_decl_line
	.long	2742                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x2b5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1182                    @ DW_AT_decl_line
	.long	2764                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x2bd:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1183                    @ DW_AT_decl_line
	.long	2786                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x2c5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1185                    @ DW_AT_decl_line
	.long	2808                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x2cd:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1186                    @ DW_AT_decl_line
	.long	2825                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x2d5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1187                    @ DW_AT_decl_line
	.long	2842                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x2dd:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1189                    @ DW_AT_decl_line
	.long	2859                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x2e5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1190                    @ DW_AT_decl_line
	.long	2884                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x2ed:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1191                    @ DW_AT_decl_line
	.long	2902                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x2f5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1193                    @ DW_AT_decl_line
	.long	2920                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x2fd:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1194                    @ DW_AT_decl_line
	.long	2938                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x305:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1195                    @ DW_AT_decl_line
	.long	2956                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x30d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1197                    @ DW_AT_decl_line
	.long	2974                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x315:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1198                    @ DW_AT_decl_line
	.long	3008                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x31d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1199                    @ DW_AT_decl_line
	.long	3025                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x325:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1201                    @ DW_AT_decl_line
	.long	3042                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x32d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1202                    @ DW_AT_decl_line
	.long	3060                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x335:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1203                    @ DW_AT_decl_line
	.long	3078                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x33d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1205                    @ DW_AT_decl_line
	.long	3096                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x345:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1206                    @ DW_AT_decl_line
	.long	3119                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x34d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1207                    @ DW_AT_decl_line
	.long	3142                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x355:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1209                    @ DW_AT_decl_line
	.long	3165                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x35d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1210                    @ DW_AT_decl_line
	.long	3188                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x365:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1211                    @ DW_AT_decl_line
	.long	3211                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x36d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1213                    @ DW_AT_decl_line
	.long	3234                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x375:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1214                    @ DW_AT_decl_line
	.long	3261                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x37d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1215                    @ DW_AT_decl_line
	.long	3288                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x385:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1217                    @ DW_AT_decl_line
	.long	3315                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x38d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1218                    @ DW_AT_decl_line
	.long	3343                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x395:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1219                    @ DW_AT_decl_line
	.long	3371                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x39d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1221                    @ DW_AT_decl_line
	.long	3399                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x3a5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1222                    @ DW_AT_decl_line
	.long	3417                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x3ad:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1223                    @ DW_AT_decl_line
	.long	3435                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x3b5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1225                    @ DW_AT_decl_line
	.long	3453                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x3bd:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1226                    @ DW_AT_decl_line
	.long	3471                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x3c5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1227                    @ DW_AT_decl_line
	.long	3489                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x3cd:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1229                    @ DW_AT_decl_line
	.long	3507                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x3d5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1230                    @ DW_AT_decl_line
	.long	3530                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x3dd:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1231                    @ DW_AT_decl_line
	.long	3553                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x3e5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1233                    @ DW_AT_decl_line
	.long	3576                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x3ed:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1234                    @ DW_AT_decl_line
	.long	3599                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x3f5:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1235                    @ DW_AT_decl_line
	.long	3622                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x3fd:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1237                    @ DW_AT_decl_line
	.long	3645                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x405:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1238                    @ DW_AT_decl_line
	.long	3663                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x40d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1239                    @ DW_AT_decl_line
	.long	3681                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x415:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1241                    @ DW_AT_decl_line
	.long	3699                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x41d:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1242                    @ DW_AT_decl_line
	.long	3717                    @ DW_AT_import
	.byte	4                       @ Abbrev [4] 0x425:0x8 DW_TAG_imported_declaration
	.byte	1                       @ DW_AT_decl_file
	.short	1243                    @ DW_AT_decl_line
	.long	3735                    @ DW_AT_import
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x42e:0x15 DW_TAG_subprogram
	.long	.Linfo_string4          @ DW_AT_linkage_name
	.long	.Linfo_string5          @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	24                      @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x43d:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x443:0x7 DW_TAG_base_type
	.long	.Linfo_string6          @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	5                       @ Abbrev [5] 0x44a:0x15 DW_TAG_subprogram
	.long	.Linfo_string7          @ DW_AT_linkage_name
	.long	.Linfo_string8          @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	52                      @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x459:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x45f:0x11 DW_TAG_subprogram
	.long	.Linfo_string9          @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x46a:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x470:0x1a DW_TAG_subprogram
	.long	.Linfo_string10         @ DW_AT_linkage_name
	.long	.Linfo_string11         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x47f:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x484:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x48a:0x11 DW_TAG_subprogram
	.long	.Linfo_string12         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	178                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x495:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x49b:0x11 DW_TAG_subprogram
	.long	.Linfo_string13         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	63                      @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x4a6:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x4ac:0x15 DW_TAG_subprogram
	.long	.Linfo_string14         @ DW_AT_linkage_name
	.long	.Linfo_string15         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	95                      @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x4bb:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x4c1:0x15 DW_TAG_subprogram
	.long	.Linfo_string16         @ DW_AT_linkage_name
	.long	.Linfo_string17         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	108                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x4d0:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x4d6:0x11 DW_TAG_subprogram
	.long	.Linfo_string18         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	181                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x4e1:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x4e7:0x11 DW_TAG_subprogram
	.long	.Linfo_string19         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	184                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x4f2:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x4f8:0x1a DW_TAG_subprogram
	.long	.Linfo_string20         @ DW_AT_linkage_name
	.long	.Linfo_string21         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	158                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x507:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x50c:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x512:0x16 DW_TAG_subprogram
	.long	.Linfo_string22         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	103                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x51d:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x522:0x5 DW_TAG_formal_parameter
	.long	1320                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x528:0x5 DW_TAG_pointer_type
	.long	1325                    @ DW_AT_type
	.byte	7                       @ Abbrev [7] 0x52d:0x7 DW_TAG_base_type
	.long	.Linfo_string23         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	8                       @ Abbrev [8] 0x534:0x16 DW_TAG_subprogram
	.long	.Linfo_string24         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	106                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x53f:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x544:0x5 DW_TAG_formal_parameter
	.long	1325                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0x54a:0x16 DW_TAG_subprogram
	.long	.Linfo_string25         @ DW_AT_linkage_name
	.long	.Linfo_string26         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	363                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x55a:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0x560:0x16 DW_TAG_subprogram
	.long	.Linfo_string27         @ DW_AT_linkage_name
	.long	.Linfo_string28         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	376                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x570:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x576:0x16 DW_TAG_subprogram
	.long	.Linfo_string29         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	115                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x581:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x586:0x5 DW_TAG_formal_parameter
	.long	1420                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x58c:0x5 DW_TAG_pointer_type
	.long	1091                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x591:0x1b DW_TAG_subprogram
	.long	.Linfo_string30         @ DW_AT_linkage_name
	.long	.Linfo_string31         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	402                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x5a1:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x5a6:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x5ac:0x11 DW_TAG_subprogram
	.long	.Linfo_string32         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x5b7:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0x5bd:0x16 DW_TAG_subprogram
	.long	.Linfo_string33         @ DW_AT_linkage_name
	.long	.Linfo_string34         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	452                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x5cd:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0x5d3:0x16 DW_TAG_subprogram
	.long	.Linfo_string35         @ DW_AT_linkage_name
	.long	.Linfo_string36         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	465                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x5e3:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x5e9:0x11 DW_TAG_subprogram
	.long	.Linfo_string37         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	67                      @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x5f4:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x5fa:0x11 DW_TAG_subprogram
	.long	.Linfo_string38         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	76                      @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x605:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	11                      @ Abbrev [11] 0x60b:0xb DW_TAG_typedef
	.long	1091                    @ DW_AT_type
	.long	.Linfo_string39         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	28                      @ DW_AT_decl_line
	.byte	11                      @ Abbrev [11] 0x616:0xb DW_TAG_typedef
	.long	1569                    @ DW_AT_type
	.long	.Linfo_string41         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x621:0x7 DW_TAG_base_type
	.long	.Linfo_string40         @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ Abbrev [5] 0x628:0x15 DW_TAG_subprogram
	.long	.Linfo_string42         @ DW_AT_linkage_name
	.long	.Linfo_string43         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	38                      @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x637:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x63d:0x15 DW_TAG_subprogram
	.long	.Linfo_string44         @ DW_AT_linkage_name
	.long	.Linfo_string45         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	41                      @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x64c:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x652:0x15 DW_TAG_subprogram
	.long	.Linfo_string42         @ DW_AT_linkage_name
	.long	.Linfo_string46         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	44                      @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x661:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x667:0x7 DW_TAG_base_type
	.long	.Linfo_string47         @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	8                       @ Abbrev [8] 0x66e:0x11 DW_TAG_subprogram
	.long	.Linfo_string48         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x679:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x67f:0x11 DW_TAG_subprogram
	.long	.Linfo_string49         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x68a:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x690:0x11 DW_TAG_subprogram
	.long	.Linfo_string50         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x69b:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x6a1:0x15 DW_TAG_subprogram
	.long	.Linfo_string51         @ DW_AT_linkage_name
	.long	.Linfo_string52         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	81                      @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x6b0:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x6b6:0x15 DW_TAG_subprogram
	.long	.Linfo_string53         @ DW_AT_linkage_name
	.long	.Linfo_string54         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	84                      @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x6c5:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x6cb:0x15 DW_TAG_subprogram
	.long	.Linfo_string51         @ DW_AT_linkage_name
	.long	.Linfo_string55         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	87                      @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x6da:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x6e0:0x11 DW_TAG_subprogram
	.long	.Linfo_string56         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	169                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x6eb:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x6f1:0x11 DW_TAG_subprogram
	.long	.Linfo_string57         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	169                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x6fc:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x702:0x11 DW_TAG_subprogram
	.long	.Linfo_string58         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	169                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x70d:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x713:0x16 DW_TAG_subprogram
	.long	.Linfo_string59         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	221                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x71e:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x723:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x729:0x16 DW_TAG_subprogram
	.long	.Linfo_string60         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	221                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x734:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x739:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x73f:0x16 DW_TAG_subprogram
	.long	.Linfo_string61         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	221                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x74a:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x74f:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x755:0x12 DW_TAG_subprogram
	.long	.Linfo_string62         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	259                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x761:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x767:0x12 DW_TAG_subprogram
	.long	.Linfo_string63         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	259                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x773:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x779:0x12 DW_TAG_subprogram
	.long	.Linfo_string64         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	259                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x785:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x78b:0x12 DW_TAG_subprogram
	.long	.Linfo_string65         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x797:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x79d:0x12 DW_TAG_subprogram
	.long	.Linfo_string66         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x7a9:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x7af:0x12 DW_TAG_subprogram
	.long	.Linfo_string67         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x7bb:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x7c1:0x15 DW_TAG_subprogram
	.long	.Linfo_string68         @ DW_AT_linkage_name
	.long	.Linfo_string69         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	146                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x7d0:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x7d6:0x15 DW_TAG_subprogram
	.long	.Linfo_string70         @ DW_AT_linkage_name
	.long	.Linfo_string71         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	147                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x7e5:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x7eb:0x15 DW_TAG_subprogram
	.long	.Linfo_string68         @ DW_AT_linkage_name
	.long	.Linfo_string72         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	150                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x7fa:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x800:0x11 DW_TAG_subprogram
	.long	.Linfo_string73         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x80b:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x811:0x11 DW_TAG_subprogram
	.long	.Linfo_string74         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x81c:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x822:0x11 DW_TAG_subprogram
	.long	.Linfo_string75         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x82d:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x833:0x17 DW_TAG_subprogram
	.long	.Linfo_string76         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	354                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x83f:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x844:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x84a:0x17 DW_TAG_subprogram
	.long	.Linfo_string77         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	354                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x856:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x85b:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x861:0x17 DW_TAG_subprogram
	.long	.Linfo_string78         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	354                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x86d:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x872:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x878:0x1c DW_TAG_subprogram
	.long	.Linfo_string79         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	373                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x884:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x889:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x88e:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x894:0x1c DW_TAG_subprogram
	.long	.Linfo_string80         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	373                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x8a0:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x8a5:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x8aa:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x8b0:0x1c DW_TAG_subprogram
	.long	.Linfo_string81         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	373                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x8bc:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x8c1:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x8c6:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x8cc:0x17 DW_TAG_subprogram
	.long	.Linfo_string82         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	357                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x8d8:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x8dd:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x8e3:0x17 DW_TAG_subprogram
	.long	.Linfo_string83         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	357                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x8ef:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x8f4:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x8fa:0x17 DW_TAG_subprogram
	.long	.Linfo_string84         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	357                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x906:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x90b:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x911:0x17 DW_TAG_subprogram
	.long	.Linfo_string85         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	360                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x91d:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x922:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x928:0x17 DW_TAG_subprogram
	.long	.Linfo_string86         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	360                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x934:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x939:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x93f:0x17 DW_TAG_subprogram
	.long	.Linfo_string87         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	360                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x94b:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x950:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x956:0x1a DW_TAG_subprogram
	.long	.Linfo_string88         @ DW_AT_linkage_name
	.long	.Linfo_string89         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	174                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x965:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x96a:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x970:0x1a DW_TAG_subprogram
	.long	.Linfo_string90         @ DW_AT_linkage_name
	.long	.Linfo_string91         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	177                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x97f:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x984:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x98a:0x1a DW_TAG_subprogram
	.long	.Linfo_string88         @ DW_AT_linkage_name
	.long	.Linfo_string92         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	180                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x999:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x99e:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x9a4:0x12 DW_TAG_subprogram
	.long	.Linfo_string93         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	313                     @ DW_AT_decl_line
	.long	1325                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x9b0:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x9b6:0x12 DW_TAG_subprogram
	.long	.Linfo_string94         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	313                     @ DW_AT_decl_line
	.long	1325                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x9c2:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x9c8:0x12 DW_TAG_subprogram
	.long	.Linfo_string95         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	313                     @ DW_AT_decl_line
	.long	1325                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x9d4:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x9da:0x12 DW_TAG_subprogram
	.long	.Linfo_string96         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	308                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x9e6:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x9ec:0x12 DW_TAG_subprogram
	.long	.Linfo_string97         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	319                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x9f8:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x9fe:0x12 DW_TAG_subprogram
	.long	.Linfo_string98         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	329                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xa0a:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xa10:0x12 DW_TAG_subprogram
	.long	.Linfo_string99         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	344                     @ DW_AT_decl_line
	.long	2594                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xa1c:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0xa22:0x7 DW_TAG_base_type
	.long	.Linfo_string100        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	12                      @ Abbrev [12] 0xa29:0x12 DW_TAG_subprogram
	.long	.Linfo_string101        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	344                     @ DW_AT_decl_line
	.long	2594                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xa35:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xa3b:0x12 DW_TAG_subprogram
	.long	.Linfo_string102        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	344                     @ DW_AT_decl_line
	.long	2594                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xa47:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xa4d:0x12 DW_TAG_subprogram
	.long	.Linfo_string103        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	350                     @ DW_AT_decl_line
	.long	2594                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xa59:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xa5f:0x12 DW_TAG_subprogram
	.long	.Linfo_string104        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	350                     @ DW_AT_decl_line
	.long	2594                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xa6b:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xa71:0x12 DW_TAG_subprogram
	.long	.Linfo_string105        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	350                     @ DW_AT_decl_line
	.long	2594                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xa7d:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0xa83:0x11 DW_TAG_subprogram
	.long	.Linfo_string106        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	131                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xa8e:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0xa94:0x11 DW_TAG_subprogram
	.long	.Linfo_string107        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	131                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xa9f:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0xaa5:0x11 DW_TAG_subprogram
	.long	.Linfo_string108        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	131                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xab0:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0xab6:0x16 DW_TAG_subprogram
	.long	.Linfo_string109        @ DW_AT_linkage_name
	.long	.Linfo_string110        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	390                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xac6:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0xacc:0x16 DW_TAG_subprogram
	.long	.Linfo_string111        @ DW_AT_linkage_name
	.long	.Linfo_string112        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	391                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xadc:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0xae2:0x16 DW_TAG_subprogram
	.long	.Linfo_string109        @ DW_AT_linkage_name
	.long	.Linfo_string113        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	394                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xaf2:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0xaf8:0x11 DW_TAG_subprogram
	.long	.Linfo_string114        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xb03:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0xb09:0x11 DW_TAG_subprogram
	.long	.Linfo_string115        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xb14:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0xb1a:0x11 DW_TAG_subprogram
	.long	.Linfo_string116        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xb25:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xb2b:0x12 DW_TAG_subprogram
	.long	.Linfo_string117        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	342                     @ DW_AT_decl_line
	.long	2877                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xb37:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0xb3d:0x7 DW_TAG_base_type
	.long	.Linfo_string118        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	12                      @ Abbrev [12] 0xb44:0x12 DW_TAG_subprogram
	.long	.Linfo_string119        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	342                     @ DW_AT_decl_line
	.long	2877                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xb50:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xb56:0x12 DW_TAG_subprogram
	.long	.Linfo_string120        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	342                     @ DW_AT_decl_line
	.long	2877                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xb62:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xb68:0x12 DW_TAG_subprogram
	.long	.Linfo_string121        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	348                     @ DW_AT_decl_line
	.long	2877                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xb74:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xb7a:0x12 DW_TAG_subprogram
	.long	.Linfo_string122        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	348                     @ DW_AT_decl_line
	.long	2877                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xb86:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xb8c:0x12 DW_TAG_subprogram
	.long	.Linfo_string123        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	348                     @ DW_AT_decl_line
	.long	2877                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xb98:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0xb9e:0x11 DW_TAG_subprogram
	.long	.Linfo_string124        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	228                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xba9:0x5 DW_TAG_formal_parameter
	.long	2991                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0xbaf:0x5 DW_TAG_pointer_type
	.long	2996                    @ DW_AT_type
	.byte	13                      @ Abbrev [13] 0xbb4:0x5 DW_TAG_const_type
	.long	3001                    @ DW_AT_type
	.byte	7                       @ Abbrev [7] 0xbb9:0x7 DW_TAG_base_type
	.long	.Linfo_string125        @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	8                       @ Abbrev [8] 0xbc0:0x11 DW_TAG_subprogram
	.long	.Linfo_string126        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	228                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xbcb:0x5 DW_TAG_formal_parameter
	.long	2991                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0xbd1:0x11 DW_TAG_subprogram
	.long	.Linfo_string127        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	228                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xbdc:0x5 DW_TAG_formal_parameter
	.long	2991                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xbe2:0x12 DW_TAG_subprogram
	.long	.Linfo_string128        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	322                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xbee:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xbf4:0x12 DW_TAG_subprogram
	.long	.Linfo_string129        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	322                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xc00:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xc06:0x12 DW_TAG_subprogram
	.long	.Linfo_string130        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	322                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xc12:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xc18:0x17 DW_TAG_subprogram
	.long	.Linfo_string131        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	292                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xc24:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xc29:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xc2f:0x17 DW_TAG_subprogram
	.long	.Linfo_string132        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	292                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xc3b:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xc40:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xc46:0x17 DW_TAG_subprogram
	.long	.Linfo_string133        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	292                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xc52:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xc57:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xc5d:0x17 DW_TAG_subprogram
	.long	.Linfo_string134        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	294                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xc69:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xc6e:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xc74:0x17 DW_TAG_subprogram
	.long	.Linfo_string135        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	294                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xc80:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xc85:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xc8b:0x17 DW_TAG_subprogram
	.long	.Linfo_string136        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	294                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xc97:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xc9c:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0xca2:0x1b DW_TAG_subprogram
	.long	.Linfo_string137        @ DW_AT_linkage_name
	.long	.Linfo_string138        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	418                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xcb2:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xcb7:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0xcbd:0x1b DW_TAG_subprogram
	.long	.Linfo_string139        @ DW_AT_linkage_name
	.long	.Linfo_string140        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	421                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xccd:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xcd2:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0xcd8:0x1b DW_TAG_subprogram
	.long	.Linfo_string137        @ DW_AT_linkage_name
	.long	.Linfo_string141        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	424                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xce8:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xced:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xcf3:0x1c DW_TAG_subprogram
	.long	.Linfo_string142        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	335                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xcff:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xd04:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xd09:0x5 DW_TAG_formal_parameter
	.long	1320                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xd0f:0x1c DW_TAG_subprogram
	.long	.Linfo_string143        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	335                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xd1b:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xd20:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xd25:0x5 DW_TAG_formal_parameter
	.long	1320                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xd2b:0x1c DW_TAG_subprogram
	.long	.Linfo_string144        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	335                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xd37:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xd3c:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xd41:0x5 DW_TAG_formal_parameter
	.long	1320                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xd47:0x12 DW_TAG_subprogram
	.long	.Linfo_string145        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	289                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xd53:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xd59:0x12 DW_TAG_subprogram
	.long	.Linfo_string146        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	289                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xd65:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xd6b:0x12 DW_TAG_subprogram
	.long	.Linfo_string147        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	289                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xd77:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xd7d:0x12 DW_TAG_subprogram
	.long	.Linfo_string148        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	326                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xd89:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xd8f:0x12 DW_TAG_subprogram
	.long	.Linfo_string149        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	326                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xd9b:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xda1:0x12 DW_TAG_subprogram
	.long	.Linfo_string150        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	326                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xdad:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xdb3:0x17 DW_TAG_subprogram
	.long	.Linfo_string151        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	318                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xdbf:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xdc4:0x5 DW_TAG_formal_parameter
	.long	2877                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xdca:0x17 DW_TAG_subprogram
	.long	.Linfo_string152        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	318                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xdd6:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xddb:0x5 DW_TAG_formal_parameter
	.long	2877                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xde1:0x17 DW_TAG_subprogram
	.long	.Linfo_string153        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	318                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xded:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xdf2:0x5 DW_TAG_formal_parameter
	.long	2877                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xdf8:0x17 DW_TAG_subprogram
	.long	.Linfo_string154        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	309                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xe04:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xe09:0x5 DW_TAG_formal_parameter
	.long	1325                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xe0f:0x17 DW_TAG_subprogram
	.long	.Linfo_string155        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	309                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xe1b:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xe20:0x5 DW_TAG_formal_parameter
	.long	1325                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xe26:0x17 DW_TAG_subprogram
	.long	.Linfo_string156        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	309                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xe32:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xe37:0x5 DW_TAG_formal_parameter
	.long	1325                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xe3d:0x12 DW_TAG_subprogram
	.long	.Linfo_string157        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	480                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xe49:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xe4f:0x12 DW_TAG_subprogram
	.long	.Linfo_string158        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	487                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xe5b:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xe61:0x12 DW_TAG_subprogram
	.long	.Linfo_string159        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	495                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xe6d:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xe73:0x12 DW_TAG_subprogram
	.long	.Linfo_string160        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xe7f:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xe85:0x12 DW_TAG_subprogram
	.long	.Linfo_string161        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xe91:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xe97:0x12 DW_TAG_subprogram
	.long	.Linfo_string162        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.long	1639                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0xea3:0x5 DW_TAG_formal_parameter
	.long	1639                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0xea9:0xfb DW_TAG_class_type
	.long	.Linfo_string169        @ DW_AT_name
	.byte	48                      @ DW_AT_byte_size
	.byte	6                       @ DW_AT_decl_file
	.byte	17                      @ DW_AT_decl_line
	.byte	15                      @ Abbrev [15] 0xeb1:0xc DW_TAG_member
	.long	.Linfo_string163        @ DW_AT_name
	.long	1091                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	46                      @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	15                      @ Abbrev [15] 0xebd:0xc DW_TAG_member
	.long	.Linfo_string164        @ DW_AT_name
	.long	1091                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	47                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	15                      @ Abbrev [15] 0xec9:0xc DW_TAG_member
	.long	.Linfo_string165        @ DW_AT_name
	.long	1091                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.byte	16                      @ DW_AT_data_member_location
	.byte	15                      @ Abbrev [15] 0xed5:0xc DW_TAG_member
	.long	.Linfo_string166        @ DW_AT_name
	.long	1091                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.byte	24                      @ DW_AT_data_member_location
	.byte	15                      @ Abbrev [15] 0xee1:0xc DW_TAG_member
	.long	.Linfo_string167        @ DW_AT_name
	.long	1091                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	50                      @ DW_AT_decl_line
	.byte	32                      @ DW_AT_data_member_location
	.byte	15                      @ Abbrev [15] 0xeed:0xc DW_TAG_member
	.long	.Linfo_string168        @ DW_AT_name
	.long	1091                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	51                      @ DW_AT_decl_line
	.byte	40                      @ DW_AT_data_member_location
	.byte	16                      @ Abbrev [16] 0xef9:0xe DW_TAG_subprogram
	.long	.Linfo_string169        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	21                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	17                      @ Abbrev [17] 0xf01:0x5 DW_TAG_formal_parameter
	.long	4004                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0xf07:0x13 DW_TAG_subprogram
	.long	.Linfo_string169        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	24                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	17                      @ Abbrev [17] 0xf0f:0x5 DW_TAG_formal_parameter
	.long	4004                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	6                       @ Abbrev [6] 0xf14:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0xf1a:0x17 DW_TAG_subprogram
	.long	.Linfo_string170        @ DW_AT_linkage_name
	.long	.Linfo_string171        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	27                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	17                      @ Abbrev [17] 0xf26:0x5 DW_TAG_formal_parameter
	.long	4004                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	6                       @ Abbrev [6] 0xf2b:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0xf31:0x17 DW_TAG_subprogram
	.long	.Linfo_string172        @ DW_AT_linkage_name
	.long	.Linfo_string173        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	30                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	17                      @ Abbrev [17] 0xf3d:0x5 DW_TAG_formal_parameter
	.long	4004                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	6                       @ Abbrev [6] 0xf42:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0xf48:0x21 DW_TAG_subprogram
	.long	.Linfo_string174        @ DW_AT_linkage_name
	.long	.Linfo_string175        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	33                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	17                      @ Abbrev [17] 0xf54:0x5 DW_TAG_formal_parameter
	.long	4004                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	6                       @ Abbrev [6] 0xf59:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xf5e:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xf63:0x5 DW_TAG_formal_parameter
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	19                      @ Abbrev [19] 0xf69:0x16 DW_TAG_subprogram
	.long	.Linfo_string176        @ DW_AT_linkage_name
	.long	.Linfo_string177        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	36                      @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	17                      @ Abbrev [17] 0xf79:0x5 DW_TAG_formal_parameter
	.long	4004                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	19                      @ Abbrev [19] 0xf7f:0x16 DW_TAG_subprogram
	.long	.Linfo_string178        @ DW_AT_linkage_name
	.long	.Linfo_string179        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	39                      @ DW_AT_decl_line
	.long	4009                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	17                      @ Abbrev [17] 0xf8f:0x5 DW_TAG_formal_parameter
	.long	4004                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0xf95:0xe DW_TAG_subprogram
	.long	.Linfo_string181        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	17                      @ Abbrev [17] 0xf9d:0x5 DW_TAG_formal_parameter
	.long	4004                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0xfa4:0x5 DW_TAG_pointer_type
	.long	3753                    @ DW_AT_type
	.byte	7                       @ Abbrev [7] 0xfa9:0x7 DW_TAG_base_type
	.long	.Linfo_string180        @ DW_AT_name
	.byte	2                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	20                      @ Abbrev [20] 0xfb0:0x21 DW_TAG_subprogram
	.byte	5                       @ DW_AT_decl_file
	.byte	39                      @ DW_AT_decl_line
	.long	3889                    @ DW_AT_specification
	.byte	1                       @ DW_AT_inline
	.long	4028                    @ DW_AT_object_pointer
	.byte	21                      @ Abbrev [21] 0xfbc:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string182        @ DW_AT_name
	.long	4049                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	22                      @ Abbrev [22] 0xfc5:0xb DW_TAG_formal_parameter
	.long	.Linfo_string183        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	39                      @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0xfd1:0x5 DW_TAG_pointer_type
	.long	3753                    @ DW_AT_type
	.byte	23                      @ Abbrev [23] 0xfd6:0x43 DW_TAG_subprogram
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	4079                    @ DW_AT_object_pointer
	.byte	5                       @ DW_AT_decl_file
	.byte	19                      @ DW_AT_decl_line
	.long	.Linfo_string184        @ DW_AT_linkage_name
	.long	3833                    @ DW_AT_specification
	.byte	24                      @ Abbrev [24] 0xfef:0xb DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string182        @ DW_AT_name
	.long	4049                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	25                      @ Abbrev [25] 0xffa:0x1e DW_TAG_inlined_subroutine
	.long	4016                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges0         @ DW_AT_ranges
	.byte	5                       @ DW_AT_call_file
	.byte	22                      @ DW_AT_call_line
	.byte	26                      @ Abbrev [26] 0x1005:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc1            @ DW_AT_location
	.long	4028                    @ DW_AT_abstract_origin
	.byte	26                      @ Abbrev [26] 0x100e:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc0            @ DW_AT_location
	.long	4037                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0x1019:0x28 DW_TAG_subprogram
	.long	.Lfunc_begin1           @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	4140                    @ DW_AT_object_pointer
	.long	4016                    @ DW_AT_abstract_origin
	.byte	26                      @ Abbrev [26] 0x102c:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc2            @ DW_AT_location
	.long	4028                    @ DW_AT_abstract_origin
	.byte	28                      @ Abbrev [28] 0x1035:0xb DW_TAG_formal_parameter
	.byte	5                       @ DW_AT_location
	.byte	144
	.ascii	"\200\002"
	.byte	147
	.byte	4
	.long	4037                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x1041:0x54 DW_TAG_subprogram
	.long	.Lfunc_begin2           @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	4186                    @ DW_AT_object_pointer
	.byte	5                       @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.long	.Linfo_string185        @ DW_AT_linkage_name
	.long	3847                    @ DW_AT_specification
	.byte	24                      @ Abbrev [24] 0x105a:0xb DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string182        @ DW_AT_name
	.long	4049                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	29                      @ Abbrev [29] 0x1065:0x11 DW_TAG_formal_parameter
	.byte	5                       @ DW_AT_location
	.byte	144
	.ascii	"\200\002"
	.byte	147
	.byte	4
	.long	.Linfo_string187        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
	.byte	25                      @ Abbrev [25] 0x1076:0x1e DW_TAG_inlined_subroutine
	.long	4016                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges1         @ DW_AT_ranges
	.byte	5                       @ DW_AT_call_file
	.byte	29                      @ DW_AT_call_line
	.byte	26                      @ Abbrev [26] 0x1081:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc3            @ DW_AT_location
	.long	4028                    @ DW_AT_abstract_origin
	.byte	26                      @ Abbrev [26] 0x108a:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc4            @ DW_AT_location
	.long	4037                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	30                      @ Abbrev [30] 0x1095:0x32 DW_TAG_subprogram
	.long	.Lfunc_begin3           @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	4266                    @ DW_AT_object_pointer
	.byte	5                       @ DW_AT_decl_file
	.byte	33                      @ DW_AT_decl_line
	.long	3866                    @ DW_AT_specification
	.byte	24                      @ Abbrev [24] 0x10aa:0xb DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string182        @ DW_AT_name
	.long	4049                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	29                      @ Abbrev [29] 0x10b5:0x11 DW_TAG_formal_parameter
	.byte	5                       @ DW_AT_location
	.byte	144
	.ascii	"\200\002"
	.byte	147
	.byte	4
	.long	.Linfo_string188        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	33                      @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	30                      @ Abbrev [30] 0x10c7:0x6a DW_TAG_subprogram
	.long	.Lfunc_begin4           @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	4316                    @ DW_AT_object_pointer
	.byte	5                       @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.long	3912                    @ DW_AT_specification
	.byte	31                      @ Abbrev [31] 0x10dc:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc5            @ DW_AT_location
	.long	.Linfo_string182        @ DW_AT_name
	.long	4049                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	32                      @ Abbrev [32] 0x10e9:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc6            @ DW_AT_location
	.long	.Linfo_string183        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
	.byte	32                      @ Abbrev [32] 0x10f8:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc7            @ DW_AT_location
	.long	.Linfo_string189        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
	.byte	32                      @ Abbrev [32] 0x1107:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc8            @ DW_AT_location
	.long	.Linfo_string190        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x1116:0xf DW_TAG_variable
	.long	.Ldebug_loc9            @ DW_AT_location
	.long	.Linfo_string191        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	55                      @ DW_AT_decl_line
	.long	1569                    @ DW_AT_type
	.byte	34                      @ Abbrev [34] 0x1125:0xb DW_TAG_variable
	.long	.Linfo_string192        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	61                      @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x1131:0x16 DW_TAG_subprogram
	.byte	5                       @ DW_AT_decl_file
	.byte	79                      @ DW_AT_decl_line
	.long	3967                    @ DW_AT_specification
	.byte	1                       @ DW_AT_inline
	.long	4413                    @ DW_AT_object_pointer
	.byte	21                      @ Abbrev [21] 0x113d:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string182        @ DW_AT_name
	.long	4049                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	30                      @ Abbrev [30] 0x1147:0x36 DW_TAG_subprogram
	.long	.Lfunc_begin5           @ DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	4444                    @ DW_AT_object_pointer
	.byte	5                       @ DW_AT_decl_file
	.byte	68                      @ DW_AT_decl_line
	.long	3945                    @ DW_AT_specification
	.byte	24                      @ Abbrev [24] 0x115c:0xb DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string182        @ DW_AT_name
	.long	4049                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	25                      @ Abbrev [25] 0x1167:0x15 DW_TAG_inlined_subroutine
	.long	4401                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges2         @ DW_AT_ranges
	.byte	5                       @ DW_AT_call_file
	.byte	72                      @ DW_AT_call_line
	.byte	26                      @ Abbrev [26] 0x1172:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc10           @ DW_AT_location
	.long	4413                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0x117d:0x1b DW_TAG_subprogram
	.long	.Lfunc_begin6           @ DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	4496                    @ DW_AT_object_pointer
	.long	4401                    @ DW_AT_abstract_origin
	.byte	28                      @ Abbrev [28] 0x1190:0x7 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	4413                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x1198:0x25 DW_TAG_subprogram
	.long	.Lfunc_begin7           @ DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	4529                    @ DW_AT_object_pointer
	.byte	5                       @ DW_AT_decl_file
	.byte	91                      @ DW_AT_decl_line
	.long	.Linfo_string186        @ DW_AT_linkage_name
	.long	3989                    @ DW_AT_specification
	.byte	24                      @ Abbrev [24] 0x11b1:0xb DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string182        @ DW_AT_name
	.long	4049                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.section	.debug_ranges,"",%progbits
.Ldebug_range:
.Ldebug_ranges0:
	.long	.Ltmp0-.Lfunc_begin0
	.long	.Ltmp1-.Lfunc_begin0
	.long	.Ltmp2-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp8-.Lfunc_begin0
	.long	.Ltmp9-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.long	.Ltmp12-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges2:
	.long	.Lfunc_begin5-.Lfunc_begin0
	.long	.Ltmp30-.Lfunc_begin0
	.long	.Ltmp32-.Lfunc_begin0
	.long	.Ltmp36-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_macinfo,"",%progbits
.Ldebug_macinfo:
.Lcu_macro_begin0:
	.byte	0                       @ End Of Macro List Mark
	.section	.debug_pubnames,"",%progbits
	.long	.LpubNames_end0-.LpubNames_begin0 @ Length of Public Names Info
.LpubNames_begin0:
	.short	2                       @ DWARF Version
	.long	.Lcu_begin0             @ Offset of Compilation Unit Info
	.long	4542                    @ Compilation Unit Length
	.long	4295                    @ DIE offset
	.asciz	"ExponentialSegment::rampTo" @ External Name
	.long	4504                    @ DIE offset
	.asciz	"ExponentialSegment::~ExponentialSegment" @ External Name
	.long	4016                    @ DIE offset
	.asciz	"ExponentialSegment::setValue" @ External Name
	.long	4401                    @ DIE offset
	.asciz	"ExponentialSegment::finished" @ External Name
	.long	4161                    @ DIE offset
	.asciz	"ExponentialSegment::ExponentialSegment" @ External Name
	.long	38                      @ DIE offset
	.asciz	"std"                   @ External Name
	.long	4423                    @ DIE offset
	.asciz	"ExponentialSegment::process" @ External Name
	.long	4245                    @ DIE offset
	.asciz	"ExponentialSegment::setSampleRate" @ External Name
	.long	0                       @ End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",%progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 @ Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       @ DWARF Version
	.long	.Lcu_begin0             @ Offset of Compilation Unit Info
	.long	4542                    @ Compilation Unit Length
	.long	1639                    @ DIE offset
	.asciz	"long double"           @ External Name
	.long	4009                    @ DIE offset
	.asciz	"bool"                  @ External Name
	.long	2594                    @ DIE offset
	.asciz	"long long int"         @ External Name
	.long	1569                    @ DIE offset
	.asciz	"float"                 @ External Name
	.long	1558                    @ DIE offset
	.asciz	"float_t"               @ External Name
	.long	2877                    @ DIE offset
	.asciz	"long int"              @ External Name
	.long	1091                    @ DIE offset
	.asciz	"double"                @ External Name
	.long	1325                    @ DIE offset
	.asciz	"int"                   @ External Name
	.long	3753                    @ DIE offset
	.asciz	"ExponentialSegment"    @ External Name
	.long	1547                    @ DIE offset
	.asciz	"double_t"              @ External Name
	.long	3001                    @ DIE offset
	.asciz	"char"                  @ External Name
	.long	0                       @ End Mark
.LpubTypes_end0:
	.cfi_sections .debug_frame

	.globl	_ZN18ExponentialSegmentC1Ev
	.type	_ZN18ExponentialSegmentC1Ev,%function
_ZN18ExponentialSegmentC1Ev = _ZN18ExponentialSegmentC2Ev
	.globl	_ZN18ExponentialSegmentC1Ef
	.type	_ZN18ExponentialSegmentC1Ef,%function
_ZN18ExponentialSegmentC1Ef = _ZN18ExponentialSegmentC2Ef
	.globl	_ZN18ExponentialSegmentD1Ev
	.type	_ZN18ExponentialSegmentD1Ev,%function
_ZN18ExponentialSegmentD1Ev = _ZN18ExponentialSegmentD2Ev
	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
	.section	.debug_line,"",%progbits
.Lline_table_start0:
