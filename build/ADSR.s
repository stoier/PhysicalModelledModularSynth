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
	.file	"/root/Bela/projects/DynamicStiffStringModular/build/ADSR.bc"
	.file	1 "/root/Bela/projects/DynamicStiffStringModular" "ADSR.h"
	.file	2 "/root/Bela/projects/DynamicStiffStringModular" "ExponentialSegment.h"
	.globl	_ZN4ADSRC2Ev
	.p2align	4
	.type	_ZN4ADSRC2Ev,%function
_ZN4ADSRC2Ev:                           @ @_ZN4ADSRC2Ev
.Lfunc_begin0:
	.file	3 "/root/Bela/projects/DynamicStiffStringModular" "ADSR.cpp"
	.loc	3 21 0                  @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:21:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset lr, -4
.Ltmp2:
	.cfi_offset r11, -8
.Ltmp3:
	.cfi_offset r10, -12
.Ltmp4:
	.cfi_offset r4, -16
	.setfp	r11, sp, #8
	add	r11, sp, #8
.Ltmp5:
	.cfi_def_cfa r11, 8
	@DEBUG_VALUE: ADSR:this <- %R0
	mov	r4, r0
.Ltmp6:
	@DEBUG_VALUE: ADSR:this <- %R4
	.loc	3 20 7 prologue_end     @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:20:7
	add	r0, r4, #24
	bl	_ZN18ExponentialSegmentC1Ev
	adr	r0, .LCPI0_0
	mov	r1, #0
.Ltmp7:
	.loc	3 22 14                 @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:22:14
	vld1.64	{d16, d17}, [r0:128]
	mov	r0, r4
	vst1.32	{d16, d17}, [r0]!
	.loc	3 27 9                  @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:27:9
	str	r1, [r0]
.Ltmp8:
	.loc	3 28 1                  @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:28:1
	mov	r0, r4
	pop	{r4, r10, r11, pc}
.Ltmp9:
	.p2align	4
@ BB#1:
.LCPI0_0:
	.long	981668463               @ float 0.00100000005
	.long	981668463               @ float 0.00100000005
	.long	1065353216              @ float 1
	.long	981668463               @ float 0.00100000005
.Lfunc_end0:
	.size	_ZN4ADSRC2Ev, .Lfunc_end0-_ZN4ADSRC2Ev
	.cfi_endproc
	.fnend

	.globl	_ZN4ADSR13setSampleRateEf
	.p2align	2
	.type	_ZN4ADSR13setSampleRateEf,%function
_ZN4ADSR13setSampleRateEf:              @ @_ZN4ADSR13setSampleRateEf
.Lfunc_begin1:
	.loc	3 32 0                  @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:32:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: setSampleRate:this <- %R0
	@DEBUG_VALUE: setSampleRate:rate <- %S0
	.loc	3 33 2 prologue_end     @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:33:2
	add	r0, r0, #24
.Ltmp10:
	.loc	3 33 8 is_stmt 0        @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:33:8
	b	_ZN18ExponentialSegment13setSampleRateEf
.Ltmp11:
.Lfunc_end1:
	.size	_ZN4ADSR13setSampleRateEf, .Lfunc_end1-_ZN4ADSR13setSampleRateEf
	.cfi_endproc
	.fnend

	.globl	_ZN4ADSR7triggerEv
	.p2align	2
	.type	_ZN4ADSR7triggerEv,%function
_ZN4ADSR7triggerEv:                     @ @_ZN4ADSR7triggerEv
.Lfunc_begin2:
	.loc	3 38 0 is_stmt 1        @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:38:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: trigger:this <- %R0
	.loc	3 40 9 prologue_end     @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:40:9
	mov	r1, #1
	.loc	3 41 8                  @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:41:8
	vmov.f32	d0, #1.000000e+00
	.loc	3 40 9                  @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:40:9
	str	r1, [r0, #16]
	.loc	3 41 20                 @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:41:20
	vldr	s4, [r0]
	.loc	3 41 2 is_stmt 0        @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:41:2
	add	r0, r0, #24
.Ltmp12:
	.loc	3 41 8                  @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:41:8
	vldr	s2, .LCPI2_0
	vmov.f32	s1, s4
	b	_ZN18ExponentialSegment6rampToEfff
.Ltmp13:
	.p2align	2
@ BB#1:
.LCPI2_0:
	.long	1065437102              @ float 1.00999999
.Lfunc_end2:
	.size	_ZN4ADSR7triggerEv, .Lfunc_end2-_ZN4ADSR7triggerEv
	.cfi_endproc
	.fnend

	.globl	_ZN4ADSR7releaseEv
	.p2align	2
	.type	_ZN4ADSR7releaseEv,%function
_ZN4ADSR7releaseEv:                     @ @_ZN4ADSR7releaseEv
.Lfunc_begin3:
	.loc	3 46 0 is_stmt 1        @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:46:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: release:this <- %R0
	.loc	3 48 9 prologue_end     @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:48:9
	mov	r1, #4
	.loc	3 49 8                  @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:49:8
	vmov.i32	d0, #0x0
	.loc	3 48 9                  @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:48:9
	str	r1, [r0, #16]
	.loc	3 49 20                 @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:49:20
	vldr	s4, [r0, #12]
	.loc	3 49 2 is_stmt 0        @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:49:2
	add	r0, r0, #24
.Ltmp14:
	.loc	3 49 8                  @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:49:8
	vldr	s2, .LCPI3_0
	vmov.f32	s1, s4
	b	_ZN18ExponentialSegment6rampToEfff
.Ltmp15:
	.p2align	2
@ BB#1:
.LCPI3_0:
	.long	1065361605              @ float 1.00100005
.Lfunc_end3:
	.size	_ZN4ADSR7releaseEv, .Lfunc_end3-_ZN4ADSR7releaseEv
	.cfi_endproc
	.fnend

	.globl	_ZN4ADSR7processEv
	.p2align	2
	.type	_ZN4ADSR7processEv,%function
_ZN4ADSR7processEv:                     @ @_ZN4ADSR7processEv
.Lfunc_begin4:
	.loc	3 55 0 is_stmt 1        @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:55:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset lr, -4
.Ltmp18:
	.cfi_offset r11, -8
.Ltmp19:
	.cfi_offset r5, -12
.Ltmp20:
	.cfi_offset r4, -16
	.setfp	r11, sp, #8
	add	r11, sp, #8
.Ltmp21:
	.cfi_def_cfa r11, 8
	@DEBUG_VALUE: process:this <- %R0
	mov	r5, r0
.Ltmp22:
	@DEBUG_VALUE: process:this <- %R5
	.loc	3 61 8 prologue_end     @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:61:8
	ldr	r0, [r5, #16]
.Ltmp23:
	.loc	3 61 8 is_stmt 0        @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:61:8
	cmp	r0, #1
	beq	.LBB4_5
.Ltmp24:
@ BB#1:
	@DEBUG_VALUE: process:this <- %R5
	cmp	r0, #2
	beq	.LBB4_7
.Ltmp25:
@ BB#2:
	@DEBUG_VALUE: process:this <- %R5
	cmp	r0, #4
	bne	.LBB4_10
.Ltmp26:
@ BB#3:
	@DEBUG_VALUE: process:this <- %R5
	.loc	3 83 6 is_stmt 1        @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:83:6
	add	r4, r5, #24
	.loc	3 83 12 is_stmt 0       @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:83:12
	mov	r0, r4
	bl	_ZN18ExponentialSegment8finishedEv
.Ltmp27:
	.loc	3 83 6                  @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:83:6
	cmp	r0, #1
	bne	.LBB4_11
.Ltmp28:
@ BB#4:
	@DEBUG_VALUE: process:this <- %R5
	.loc	3 84 11 is_stmt 1       @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:84:11
	mov	r0, #0
	b	.LBB4_9
.Ltmp29:
.LBB4_5:
	@DEBUG_VALUE: process:this <- %R5
	.loc	3 66 6                  @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:66:6
	add	r4, r5, #24
	.loc	3 66 12 is_stmt 0       @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:66:12
	mov	r0, r4
	bl	_ZN18ExponentialSegment8finishedEv
.Ltmp30:
	.loc	3 66 6                  @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:66:6
	cmp	r0, #1
	bne	.LBB4_11
.Ltmp31:
@ BB#6:
	@DEBUG_VALUE: process:this <- %R5
	.loc	3 67 11 is_stmt 1       @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:67:11
	mov	r0, #2
	.loc	3 68 10                 @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:68:10
	vldr	s2, .LCPI4_0
	.loc	3 67 11                 @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:67:11
	str	r0, [r5, #16]
	.loc	3 68 10                 @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:68:10
	mov	r0, r4
	.loc	3 68 32 is_stmt 0       @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:68:32
	vldr	s1, [r5, #4]
	.loc	3 68 17                 @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:68:17
	vldr	s0, [r5, #8]
	.loc	3 68 10                 @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:68:10
	bl	_ZN18ExponentialSegment6rampToEfff
	b	.LBB4_11
.Ltmp32:
.LBB4_7:
	@DEBUG_VALUE: process:this <- %R5
	.loc	3 73 6 is_stmt 1        @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:73:6
	add	r4, r5, #24
	.loc	3 73 12 is_stmt 0       @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:73:12
	mov	r0, r4
	bl	_ZN18ExponentialSegment8finishedEv
.Ltmp33:
	.loc	3 73 6                  @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:73:6
	cmp	r0, #1
	bne	.LBB4_11
.Ltmp34:
@ BB#8:
	@DEBUG_VALUE: process:this <- %R5
	.loc	3 74 11 is_stmt 1       @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:74:11
	mov	r0, #3
.Ltmp35:
.LBB4_9:
	@DEBUG_VALUE: process:this <- %R5
	.loc	3 84 11                 @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:84:11
	str	r0, [r5, #16]
	b	.LBB4_11
.Ltmp36:
.LBB4_10:                               @ %._crit_edge
	@DEBUG_VALUE: process:this <- %R5
	.loc	3 89 12                 @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:89:12
	add	r4, r5, #24
.Ltmp37:
.LBB4_11:
	@DEBUG_VALUE: process:this <- %R5
	.loc	3 89 18 is_stmt 0       @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:89:18
	mov	r0, r4
	pop	{r4, r5, r11, lr}
.Ltmp38:
	b	_ZN18ExponentialSegment7processEv
.Ltmp39:
	.p2align	2
@ BB#12:
.LCPI4_0:
	.long	1065361605              @ float 1.00100005
.Lfunc_end4:
	.size	_ZN4ADSR7processEv, .Lfunc_end4-_ZN4ADSR7processEv
	.cfi_endproc
	.fnend

	.globl	_ZN4ADSR8isActiveEv
	.p2align	2
	.type	_ZN4ADSR8isActiveEv,%function
_ZN4ADSR8isActiveEv:                    @ @_ZN4ADSR8isActiveEv
.Lfunc_begin5:
	.loc	3 95 0 is_stmt 1        @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:95:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: isActive:this <- %R0
	.loc	3 96 10 prologue_end    @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:96:10
	ldr	r0, [r0, #16]
.Ltmp40:
	.loc	3 96 17 is_stmt 0       @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:96:17
	cmp	r0, #0
	movwne	r0, #1
	.loc	3 96 2                  @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:96:2
	bx	lr
.Ltmp41:
.Lfunc_end5:
	.size	_ZN4ADSR8isActiveEv, .Lfunc_end5-_ZN4ADSR8isActiveEv
	.cfi_endproc
	.fnend

	.globl	_ZN4ADSR13setAttackTimeEf
	.p2align	2
	.type	_ZN4ADSR13setAttackTimeEf,%function
_ZN4ADSR13setAttackTimeEf:              @ @_ZN4ADSR13setAttackTimeEf
.Lfunc_begin6:
	.loc	3 102 0 is_stmt 1       @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:102:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: setAttackTime:this <- %R0
	@DEBUG_VALUE: setAttackTime:attackTime <- %S0
	vmov.i32	d16, #0x0
                                        @ kill: %S0<def> %S0<kill> %D0<def>
.Ltmp42:
	vmax.f32	d0, d0, d16
.Ltmp43:
	.loc	3 106 15 prologue_end   @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:106:15
	vstr	s0, [r0]
.Ltmp44:
	.loc	3 107 1                 @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:107:1
	bx	lr
.Ltmp45:
.Lfunc_end6:
	.size	_ZN4ADSR13setAttackTimeEf, .Lfunc_end6-_ZN4ADSR13setAttackTimeEf
	.cfi_endproc
	.fnend

	.globl	_ZN4ADSR12setDecayTimeEf
	.p2align	2
	.type	_ZN4ADSR12setDecayTimeEf,%function
_ZN4ADSR12setDecayTimeEf:               @ @_ZN4ADSR12setDecayTimeEf
.Lfunc_begin7:
	.loc	3 110 0                 @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:110:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: setDecayTime:this <- %R0
	@DEBUG_VALUE: setDecayTime:decayTime <- %S0
	vmov.i32	d16, #0x0
                                        @ kill: %S0<def> %S0<kill> %D0<def>
.Ltmp46:
	vmax.f32	d0, d0, d16
.Ltmp47:
	.loc	3 114 14 prologue_end   @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:114:14
	vstr	s0, [r0, #4]
.Ltmp48:
	.loc	3 115 1                 @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:115:1
	bx	lr
.Ltmp49:
.Lfunc_end7:
	.size	_ZN4ADSR12setDecayTimeEf, .Lfunc_end7-_ZN4ADSR12setDecayTimeEf
	.cfi_endproc
	.fnend

	.globl	_ZN4ADSR15setSustainLevelEf
	.p2align	2
	.type	_ZN4ADSR15setSustainLevelEf,%function
_ZN4ADSR15setSustainLevelEf:            @ @_ZN4ADSR15setSustainLevelEf
.Lfunc_begin8:
	.loc	3 118 0                 @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:118:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: setSustainLevel:this <- %R0
	@DEBUG_VALUE: setSustainLevel:sustainLevel <- %S0
	.loc	3 119 5 prologue_end    @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:119:5
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	bge	.LBB8_2
@ BB#1:
	@DEBUG_VALUE: setSustainLevel:sustainLevel <- %S0
	@DEBUG_VALUE: setSustainLevel:this <- %R0
.Ltmp50:
	.loc	3 120 17                @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:120:17
	mov	r1, #0
	str	r1, [r0, #8]
.Ltmp51:
	.loc	3 125 1                 @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:125:1
	bx	lr
.LBB8_2:
	@DEBUG_VALUE: setSustainLevel:sustainLevel <- %S0
	@DEBUG_VALUE: setSustainLevel:this <- %R0
.Ltmp52:
	.loc	3 121 23                @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:121:23
	vmov.f32	d1, #1.000000e+00
.Ltmp53:
	.loc	3 121 10 is_stmt 0      @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:121:10
	vcmpe.f32	s0, s2
	vmrs	APSR_nzcv, fpscr
.Ltmp54:
	.loc	3 122 17 is_stmt 1      @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:122:17
	movgt	r1, #1065353216
	.loc	3 124 17                @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:124:17
	vstrle	s0, [r0, #8]
	.loc	3 122 17                @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:122:17
	strgt	r1, [r0, #8]
.Ltmp55:
	.loc	3 125 1                 @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:125:1
	bx	lr
.Ltmp56:
.Lfunc_end8:
	.size	_ZN4ADSR15setSustainLevelEf, .Lfunc_end8-_ZN4ADSR15setSustainLevelEf
	.cfi_endproc
	.fnend

	.globl	_ZN4ADSR14setReleaseTimeEf
	.p2align	2
	.type	_ZN4ADSR14setReleaseTimeEf,%function
_ZN4ADSR14setReleaseTimeEf:             @ @_ZN4ADSR14setReleaseTimeEf
.Lfunc_begin9:
	.loc	3 128 0                 @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:128:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: setReleaseTime:this <- %R0
	@DEBUG_VALUE: setReleaseTime:releaseTime <- %S0
	vmov.i32	d16, #0x0
                                        @ kill: %S0<def> %S0<kill> %D0<def>
.Ltmp57:
	vmax.f32	d0, d0, d16
.Ltmp58:
	.loc	3 132 16 prologue_end   @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:132:16
	vstr	s0, [r0, #12]
.Ltmp59:
	.loc	3 133 1                 @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:133:1
	bx	lr
.Ltmp60:
.Lfunc_end9:
	.size	_ZN4ADSR14setReleaseTimeEf, .Lfunc_end9-_ZN4ADSR14setReleaseTimeEf
	.cfi_endproc
	.fnend

	.globl	_ZN4ADSRD2Ev
	.p2align	2
	.type	_ZN4ADSRD2Ev,%function
_ZN4ADSRD2Ev:                           @ @_ZN4ADSRD2Ev
.Lfunc_begin10:
	.loc	3 137 0                 @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:137:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset lr, -4
.Ltmp63:
	.cfi_offset r11, -8
.Ltmp64:
	.cfi_offset r10, -12
.Ltmp65:
	.cfi_offset r4, -16
	.setfp	r11, sp, #8
	add	r11, sp, #8
.Ltmp66:
	.cfi_def_cfa r11, 8
	@DEBUG_VALUE: ~ADSR:this <- %R0
	mov	r4, r0
.Ltmp67:
	@DEBUG_VALUE: ~ADSR:this <- %R4
	.loc	3 139 1 prologue_end    @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:139:1
	add	r0, r4, #24
	bl	_ZN18ExponentialSegmentD1Ev
.Ltmp68:
	.loc	3 139 1 is_stmt 0       @ /root/Bela/projects/DynamicStiffStringModular/ADSR.cpp:139:1
	mov	r0, r4
	pop	{r4, r10, r11, pc}
.Ltmp69:
.Lfunc_end10:
	.size	_ZN4ADSRD2Ev, .Lfunc_end10-_ZN4ADSRD2Ev
	.cfi_endproc
	.fnend

	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)" @ string offset=0
.Linfo_string1:
	.asciz	"/root/Bela/projects/DynamicStiffStringModular/build/ADSR.cpp" @ string offset=45
.Linfo_string2:
	.asciz	"/root/Bela"            @ string offset=106
.Linfo_string3:
	.asciz	"attackTime_"           @ string offset=117
.Linfo_string4:
	.asciz	"float"                 @ string offset=129
.Linfo_string5:
	.asciz	"decayTime_"            @ string offset=135
.Linfo_string6:
	.asciz	"sustainLevel_"         @ string offset=146
.Linfo_string7:
	.asciz	"releaseTime_"          @ string offset=160
.Linfo_string8:
	.asciz	"state_"                @ string offset=173
.Linfo_string9:
	.asciz	"StateOff"              @ string offset=180
.Linfo_string10:
	.asciz	"StateAttack"           @ string offset=189
.Linfo_string11:
	.asciz	"StateDecay"            @ string offset=201
.Linfo_string12:
	.asciz	"StateSustain"          @ string offset=212
.Linfo_string13:
	.asciz	"StateRelease"          @ string offset=225
.Linfo_string14:
	.asciz	"State"                 @ string offset=238
.Linfo_string15:
	.asciz	"ramp_"                 @ string offset=244
.Linfo_string16:
	.asciz	"sampleRate_"           @ string offset=250
.Linfo_string17:
	.asciz	"double"                @ string offset=262
.Linfo_string18:
	.asciz	"currentValue_"         @ string offset=269
.Linfo_string19:
	.asciz	"targetValue_"          @ string offset=283
.Linfo_string20:
	.asciz	"asymptoteValue_"       @ string offset=296
.Linfo_string21:
	.asciz	"expValue_"             @ string offset=312
.Linfo_string22:
	.asciz	"multiplier_"           @ string offset=322
.Linfo_string23:
	.asciz	"ExponentialSegment"    @ string offset=334
.Linfo_string24:
	.asciz	"_ZN18ExponentialSegment13setSampleRateEf" @ string offset=353
.Linfo_string25:
	.asciz	"setSampleRate"         @ string offset=394
.Linfo_string26:
	.asciz	"_ZN18ExponentialSegment8setValueEf" @ string offset=408
.Linfo_string27:
	.asciz	"setValue"              @ string offset=443
.Linfo_string28:
	.asciz	"_ZN18ExponentialSegment6rampToEfff" @ string offset=452
.Linfo_string29:
	.asciz	"rampTo"                @ string offset=487
.Linfo_string30:
	.asciz	"_ZN18ExponentialSegment7processEv" @ string offset=494
.Linfo_string31:
	.asciz	"process"               @ string offset=528
.Linfo_string32:
	.asciz	"_ZN18ExponentialSegment8finishedEv" @ string offset=536
.Linfo_string33:
	.asciz	"finished"              @ string offset=571
.Linfo_string34:
	.asciz	"bool"                  @ string offset=580
.Linfo_string35:
	.asciz	"~ExponentialSegment"   @ string offset=585
.Linfo_string36:
	.asciz	"ADSR"                  @ string offset=605
.Linfo_string37:
	.asciz	"_ZN4ADSR13setSampleRateEf" @ string offset=610
.Linfo_string38:
	.asciz	"_ZN4ADSR7triggerEv"    @ string offset=636
.Linfo_string39:
	.asciz	"trigger"               @ string offset=655
.Linfo_string40:
	.asciz	"_ZN4ADSR7releaseEv"    @ string offset=663
.Linfo_string41:
	.asciz	"release"               @ string offset=682
.Linfo_string42:
	.asciz	"_ZN4ADSR7processEv"    @ string offset=690
.Linfo_string43:
	.asciz	"_ZN4ADSR8isActiveEv"   @ string offset=709
.Linfo_string44:
	.asciz	"isActive"              @ string offset=729
.Linfo_string45:
	.asciz	"_ZN4ADSR13getAttackTimeEv" @ string offset=738
.Linfo_string46:
	.asciz	"getAttackTime"         @ string offset=764
.Linfo_string47:
	.asciz	"_ZN4ADSR12getDecayTimeEv" @ string offset=778
.Linfo_string48:
	.asciz	"getDecayTime"          @ string offset=803
.Linfo_string49:
	.asciz	"_ZN4ADSR15getSustainLevelEv" @ string offset=816
.Linfo_string50:
	.asciz	"getSustainLevel"       @ string offset=844
.Linfo_string51:
	.asciz	"_ZN4ADSR14getReleaseTimeEv" @ string offset=860
.Linfo_string52:
	.asciz	"getReleaseTime"        @ string offset=887
.Linfo_string53:
	.asciz	"_ZN4ADSR13setAttackTimeEf" @ string offset=902
.Linfo_string54:
	.asciz	"setAttackTime"         @ string offset=928
.Linfo_string55:
	.asciz	"_ZN4ADSR12setDecayTimeEf" @ string offset=942
.Linfo_string56:
	.asciz	"setDecayTime"          @ string offset=967
.Linfo_string57:
	.asciz	"_ZN4ADSR15setSustainLevelEf" @ string offset=980
.Linfo_string58:
	.asciz	"setSustainLevel"       @ string offset=1008
.Linfo_string59:
	.asciz	"_ZN4ADSR14setReleaseTimeEf" @ string offset=1024
.Linfo_string60:
	.asciz	"setReleaseTime"        @ string offset=1051
.Linfo_string61:
	.asciz	"~ADSR"                 @ string offset=1066
.Linfo_string62:
	.asciz	"_ZN4ADSRC2Ev"          @ string offset=1072
.Linfo_string63:
	.asciz	"_ZN4ADSRD2Ev"          @ string offset=1085
.Linfo_string64:
	.asciz	"this"                  @ string offset=1098
.Linfo_string65:
	.asciz	"rate"                  @ string offset=1103
.Linfo_string66:
	.asciz	"attackTime"            @ string offset=1108
.Linfo_string67:
	.asciz	"decayTime"             @ string offset=1119
.Linfo_string68:
	.asciz	"sustainLevel"          @ string offset=1129
.Linfo_string69:
	.asciz	"releaseTime"           @ string offset=1142
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
	.long	.Lfunc_begin0-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp6-.Lfunc_begin0
	.long	.Ltmp9-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc1:
	.long	.Lfunc_begin1-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Lfunc_begin2-.Lfunc_begin0
	.long	.Ltmp12-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc3:
	.long	.Lfunc_begin3-.Lfunc_begin0
	.long	.Ltmp14-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Lfunc_begin4-.Lfunc_begin0
	.long	.Ltmp22-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp22-.Lfunc_begin0
	.long	.Ltmp38-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	85                      @ DW_OP_reg5
	.long	0
	.long	0
.Ldebug_loc5:
	.long	.Lfunc_begin5-.Lfunc_begin0
	.long	.Ltmp40-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc6:
	.long	.Lfunc_begin6-.Lfunc_begin0
	.long	.Ltmp42-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc7:
	.long	.Lfunc_begin7-.Lfunc_begin0
	.long	.Ltmp46-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc8:
	.long	.Lfunc_begin9-.Lfunc_begin0
	.long	.Ltmp57-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc9:
	.long	.Lfunc_begin10-.Lfunc_begin0
	.long	.Ltmp67-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp67-.Lfunc_begin0
	.long	.Ltmp69-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
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
	.byte	3                       @ Abbreviation Code
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
	.byte	4                       @ Abbreviation Code
	.byte	4                       @ DW_TAG_enumeration_type
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
	.byte	5                       @ Abbreviation Code
	.byte	40                      @ DW_TAG_enumerator
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	28                      @ DW_AT_const_value
	.byte	13                      @ DW_FORM_sdata
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	6                       @ Abbreviation Code
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
	.byte	7                       @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	8                       @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	9                       @ Abbreviation Code
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
	.byte	11                      @ Abbreviation Code
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
	.byte	12                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	13                      @ Abbreviation Code
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
	.byte	14                      @ Abbreviation Code
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
	.byte	15                      @ Abbreviation Code
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
	.byte	16                      @ Abbreviation Code
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
	.byte	17                      @ Abbreviation Code
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
	.byte	18                      @ Abbreviation Code
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
	.byte	0                       @ EOM(3)
	.section	.debug_info,"",%progbits
.Lsection_info:
.Lcu_begin0:
	.long	1236                    @ Length of Unit
	.short	4                       @ DWARF version number
	.long	.Lsection_abbrev        @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x4cd DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	4                       @ DW_AT_language
	.long	.Linfo_string1          @ DW_AT_name
	.long	.Lline_table_start0     @ DW_AT_stmt_list
	.long	.Linfo_string2          @ DW_AT_comp_dir
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	2                       @ Abbrev [2] 0x26:0x1c2 DW_TAG_class_type
	.long	.Linfo_string36         @ DW_AT_name
	.byte	72                      @ DW_AT_byte_size
	.byte	1                       @ DW_AT_decl_file
	.byte	19                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x2e:0xc DW_TAG_member
	.long	.Linfo_string3          @ DW_AT_name
	.long	488                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	70                      @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	3                       @ Abbrev [3] 0x3a:0xc DW_TAG_member
	.long	.Linfo_string5          @ DW_AT_name
	.long	488                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	3                       @ Abbrev [3] 0x46:0xc DW_TAG_member
	.long	.Linfo_string6          @ DW_AT_name
	.long	488                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	72                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	3                       @ Abbrev [3] 0x52:0xc DW_TAG_member
	.long	.Linfo_string7          @ DW_AT_name
	.long	488                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	73                      @ DW_AT_decl_line
	.byte	12                      @ DW_AT_data_member_location
	.byte	3                       @ Abbrev [3] 0x5e:0xc DW_TAG_member
	.long	.Linfo_string8          @ DW_AT_name
	.long	106                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	75                      @ DW_AT_decl_line
	.byte	16                      @ DW_AT_data_member_location
	.byte	4                       @ Abbrev [4] 0x6a:0x27 DW_TAG_enumeration_type
	.long	.Linfo_string14         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	1                       @ DW_AT_decl_file
	.byte	22                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x72:0x6 DW_TAG_enumerator
	.long	.Linfo_string9          @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x78:0x6 DW_TAG_enumerator
	.long	.Linfo_string10         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x7e:0x6 DW_TAG_enumerator
	.long	.Linfo_string11         @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x84:0x6 DW_TAG_enumerator
	.long	.Linfo_string12         @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x8a:0x6 DW_TAG_enumerator
	.long	.Linfo_string13         @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	3                       @ Abbrev [3] 0x91:0xc DW_TAG_member
	.long	.Linfo_string15         @ DW_AT_name
	.long	495                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	76                      @ DW_AT_decl_line
	.byte	24                      @ DW_AT_data_member_location
	.byte	6                       @ Abbrev [6] 0x9d:0xe DW_TAG_subprogram
	.long	.Linfo_string36         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	32                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0xa5:0x5 DW_TAG_formal_parameter
	.long	765                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	6                       @ Abbrev [6] 0xab:0x13 DW_TAG_subprogram
	.long	.Linfo_string36         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	35                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0xb3:0x5 DW_TAG_formal_parameter
	.long	765                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	8                       @ Abbrev [8] 0xb8:0x5 DW_TAG_formal_parameter
	.long	488                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0xbe:0x17 DW_TAG_subprogram
	.long	.Linfo_string37         @ DW_AT_linkage_name
	.long	.Linfo_string25         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	38                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0xca:0x5 DW_TAG_formal_parameter
	.long	765                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	8                       @ Abbrev [8] 0xcf:0x5 DW_TAG_formal_parameter
	.long	488                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0xd5:0x12 DW_TAG_subprogram
	.long	.Linfo_string38         @ DW_AT_linkage_name
	.long	.Linfo_string39         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	41                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0xe1:0x5 DW_TAG_formal_parameter
	.long	765                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0xe7:0x12 DW_TAG_subprogram
	.long	.Linfo_string40         @ DW_AT_linkage_name
	.long	.Linfo_string41         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	44                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0xf3:0x5 DW_TAG_formal_parameter
	.long	765                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0xf9:0x16 DW_TAG_subprogram
	.long	.Linfo_string42         @ DW_AT_linkage_name
	.long	.Linfo_string31         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.long	488                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x109:0x5 DW_TAG_formal_parameter
	.long	765                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0x10f:0x16 DW_TAG_subprogram
	.long	.Linfo_string43         @ DW_AT_linkage_name
	.long	.Linfo_string44         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	52                      @ DW_AT_decl_line
	.long	758                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x11f:0x5 DW_TAG_formal_parameter
	.long	765                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0x125:0x16 DW_TAG_subprogram
	.long	.Linfo_string45         @ DW_AT_linkage_name
	.long	.Linfo_string46         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	55                      @ DW_AT_decl_line
	.long	488                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x135:0x5 DW_TAG_formal_parameter
	.long	765                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0x13b:0x16 DW_TAG_subprogram
	.long	.Linfo_string47         @ DW_AT_linkage_name
	.long	.Linfo_string48         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
	.long	488                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x14b:0x5 DW_TAG_formal_parameter
	.long	765                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0x151:0x16 DW_TAG_subprogram
	.long	.Linfo_string49         @ DW_AT_linkage_name
	.long	.Linfo_string50         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	57                      @ DW_AT_decl_line
	.long	488                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x161:0x5 DW_TAG_formal_parameter
	.long	765                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0x167:0x16 DW_TAG_subprogram
	.long	.Linfo_string51         @ DW_AT_linkage_name
	.long	.Linfo_string52         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.long	488                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x177:0x5 DW_TAG_formal_parameter
	.long	765                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x17d:0x17 DW_TAG_subprogram
	.long	.Linfo_string53         @ DW_AT_linkage_name
	.long	.Linfo_string54         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	60                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x189:0x5 DW_TAG_formal_parameter
	.long	765                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	8                       @ Abbrev [8] 0x18e:0x5 DW_TAG_formal_parameter
	.long	488                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x194:0x17 DW_TAG_subprogram
	.long	.Linfo_string55         @ DW_AT_linkage_name
	.long	.Linfo_string56         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	61                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x1a0:0x5 DW_TAG_formal_parameter
	.long	765                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	8                       @ Abbrev [8] 0x1a5:0x5 DW_TAG_formal_parameter
	.long	488                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x1ab:0x17 DW_TAG_subprogram
	.long	.Linfo_string57         @ DW_AT_linkage_name
	.long	.Linfo_string58         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	62                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x1b7:0x5 DW_TAG_formal_parameter
	.long	765                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	8                       @ Abbrev [8] 0x1bc:0x5 DW_TAG_formal_parameter
	.long	488                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x1c2:0x17 DW_TAG_subprogram
	.long	.Linfo_string59         @ DW_AT_linkage_name
	.long	.Linfo_string60         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	63                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x1ce:0x5 DW_TAG_formal_parameter
	.long	765                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	8                       @ Abbrev [8] 0x1d3:0x5 DW_TAG_formal_parameter
	.long	488                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	6                       @ Abbrev [6] 0x1d9:0xe DW_TAG_subprogram
	.long	.Linfo_string61         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	66                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x1e1:0x5 DW_TAG_formal_parameter
	.long	765                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	11                      @ Abbrev [11] 0x1e8:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x1ef:0xfb DW_TAG_class_type
	.long	.Linfo_string23         @ DW_AT_name
	.byte	48                      @ DW_AT_byte_size
	.byte	2                       @ DW_AT_decl_file
	.byte	17                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x1f7:0xc DW_TAG_member
	.long	.Linfo_string16         @ DW_AT_name
	.long	746                     @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	46                      @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	3                       @ Abbrev [3] 0x203:0xc DW_TAG_member
	.long	.Linfo_string18         @ DW_AT_name
	.long	746                     @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	47                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	3                       @ Abbrev [3] 0x20f:0xc DW_TAG_member
	.long	.Linfo_string19         @ DW_AT_name
	.long	746                     @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.byte	16                      @ DW_AT_data_member_location
	.byte	3                       @ Abbrev [3] 0x21b:0xc DW_TAG_member
	.long	.Linfo_string20         @ DW_AT_name
	.long	746                     @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.byte	24                      @ DW_AT_data_member_location
	.byte	3                       @ Abbrev [3] 0x227:0xc DW_TAG_member
	.long	.Linfo_string21         @ DW_AT_name
	.long	746                     @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	50                      @ DW_AT_decl_line
	.byte	32                      @ DW_AT_data_member_location
	.byte	3                       @ Abbrev [3] 0x233:0xc DW_TAG_member
	.long	.Linfo_string22         @ DW_AT_name
	.long	746                     @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	51                      @ DW_AT_decl_line
	.byte	40                      @ DW_AT_data_member_location
	.byte	6                       @ Abbrev [6] 0x23f:0xe DW_TAG_subprogram
	.long	.Linfo_string23         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	21                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x247:0x5 DW_TAG_formal_parameter
	.long	753                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	6                       @ Abbrev [6] 0x24d:0x13 DW_TAG_subprogram
	.long	.Linfo_string23         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	24                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x255:0x5 DW_TAG_formal_parameter
	.long	753                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	8                       @ Abbrev [8] 0x25a:0x5 DW_TAG_formal_parameter
	.long	488                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x260:0x17 DW_TAG_subprogram
	.long	.Linfo_string24         @ DW_AT_linkage_name
	.long	.Linfo_string25         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	27                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x26c:0x5 DW_TAG_formal_parameter
	.long	753                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	8                       @ Abbrev [8] 0x271:0x5 DW_TAG_formal_parameter
	.long	488                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x277:0x17 DW_TAG_subprogram
	.long	.Linfo_string26         @ DW_AT_linkage_name
	.long	.Linfo_string27         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	30                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x283:0x5 DW_TAG_formal_parameter
	.long	753                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	8                       @ Abbrev [8] 0x288:0x5 DW_TAG_formal_parameter
	.long	488                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x28e:0x21 DW_TAG_subprogram
	.long	.Linfo_string28         @ DW_AT_linkage_name
	.long	.Linfo_string29         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	33                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x29a:0x5 DW_TAG_formal_parameter
	.long	753                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	8                       @ Abbrev [8] 0x29f:0x5 DW_TAG_formal_parameter
	.long	488                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x2a4:0x5 DW_TAG_formal_parameter
	.long	488                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x2a9:0x5 DW_TAG_formal_parameter
	.long	488                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0x2af:0x16 DW_TAG_subprogram
	.long	.Linfo_string30         @ DW_AT_linkage_name
	.long	.Linfo_string31         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	36                      @ DW_AT_decl_line
	.long	488                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x2bf:0x5 DW_TAG_formal_parameter
	.long	753                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0x2c5:0x16 DW_TAG_subprogram
	.long	.Linfo_string32         @ DW_AT_linkage_name
	.long	.Linfo_string33         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	39                      @ DW_AT_decl_line
	.long	758                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x2d5:0x5 DW_TAG_formal_parameter
	.long	753                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	6                       @ Abbrev [6] 0x2db:0xe DW_TAG_subprogram
	.long	.Linfo_string35         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x2e3:0x5 DW_TAG_formal_parameter
	.long	753                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	11                      @ Abbrev [11] 0x2ea:0x7 DW_TAG_base_type
	.long	.Linfo_string17         @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	12                      @ Abbrev [12] 0x2f1:0x5 DW_TAG_pointer_type
	.long	495                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x2f6:0x7 DW_TAG_base_type
	.long	.Linfo_string34         @ DW_AT_name
	.byte	2                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	12                      @ Abbrev [12] 0x2fd:0x5 DW_TAG_pointer_type
	.long	38                      @ DW_AT_type
	.byte	13                      @ Abbrev [13] 0x302:0x27 DW_TAG_subprogram
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	795                     @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	20                      @ DW_AT_decl_line
	.long	.Linfo_string62         @ DW_AT_linkage_name
	.long	157                     @ DW_AT_specification
	.byte	14                      @ Abbrev [14] 0x31b:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc0            @ DW_AT_location
	.long	.Linfo_string64         @ DW_AT_name
	.long	1234                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x329:0x34 DW_TAG_subprogram
	.long	.Lfunc_begin1           @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	830                     @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	31                      @ DW_AT_decl_line
	.long	190                     @ DW_AT_specification
	.byte	14                      @ Abbrev [14] 0x33e:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc1            @ DW_AT_location
	.long	.Linfo_string64         @ DW_AT_name
	.long	1234                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	16                      @ Abbrev [16] 0x34b:0x11 DW_TAG_formal_parameter
	.byte	5                       @ DW_AT_location
	.byte	144
	.ascii	"\200\002"
	.byte	147
	.byte	4
	.long	.Linfo_string65         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	31                      @ DW_AT_decl_line
	.long	488                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x35d:0x23 DW_TAG_subprogram
	.long	.Lfunc_begin2           @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	882                     @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.long	213                     @ DW_AT_specification
	.byte	14                      @ Abbrev [14] 0x372:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc2            @ DW_AT_location
	.long	.Linfo_string64         @ DW_AT_name
	.long	1234                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x380:0x23 DW_TAG_subprogram
	.long	.Lfunc_begin3           @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	917                     @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	45                      @ DW_AT_decl_line
	.long	231                     @ DW_AT_specification
	.byte	14                      @ Abbrev [14] 0x395:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc3            @ DW_AT_location
	.long	.Linfo_string64         @ DW_AT_name
	.long	1234                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x3a3:0x23 DW_TAG_subprogram
	.long	.Lfunc_begin4           @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	952                     @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	54                      @ DW_AT_decl_line
	.long	249                     @ DW_AT_specification
	.byte	14                      @ Abbrev [14] 0x3b8:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc4            @ DW_AT_location
	.long	.Linfo_string64         @ DW_AT_name
	.long	1234                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x3c6:0x23 DW_TAG_subprogram
	.long	.Lfunc_begin5           @ DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	987                     @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	94                      @ DW_AT_decl_line
	.long	271                     @ DW_AT_specification
	.byte	14                      @ Abbrev [14] 0x3db:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc5            @ DW_AT_location
	.long	.Linfo_string64         @ DW_AT_name
	.long	1234                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x3e9:0x30 DW_TAG_subprogram
	.long	.Lfunc_begin6           @ DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	1022                    @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	101                     @ DW_AT_decl_line
	.long	381                     @ DW_AT_specification
	.byte	17                      @ Abbrev [17] 0x3fe:0xb DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string64         @ DW_AT_name
	.long	1234                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	18                      @ Abbrev [18] 0x409:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc6            @ DW_AT_location
	.long	.Linfo_string66         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	101                     @ DW_AT_decl_line
	.long	488                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x419:0x30 DW_TAG_subprogram
	.long	.Lfunc_begin7           @ DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	1070                    @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	109                     @ DW_AT_decl_line
	.long	404                     @ DW_AT_specification
	.byte	17                      @ Abbrev [17] 0x42e:0xb DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string64         @ DW_AT_name
	.long	1234                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	18                      @ Abbrev [18] 0x439:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc7            @ DW_AT_location
	.long	.Linfo_string67         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	109                     @ DW_AT_decl_line
	.long	488                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x449:0x32 DW_TAG_subprogram
	.long	.Lfunc_begin8           @ DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	1118                    @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	117                     @ DW_AT_decl_line
	.long	427                     @ DW_AT_specification
	.byte	17                      @ Abbrev [17] 0x45e:0xb DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string64         @ DW_AT_name
	.long	1234                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	16                      @ Abbrev [16] 0x469:0x11 DW_TAG_formal_parameter
	.byte	5                       @ DW_AT_location
	.byte	144
	.ascii	"\200\002"
	.byte	147
	.byte	4
	.long	.Linfo_string68         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	117                     @ DW_AT_decl_line
	.long	488                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x47b:0x30 DW_TAG_subprogram
	.long	.Lfunc_begin9           @ DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	1168                    @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	127                     @ DW_AT_decl_line
	.long	450                     @ DW_AT_specification
	.byte	17                      @ Abbrev [17] 0x490:0xb DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string64         @ DW_AT_name
	.long	1234                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	18                      @ Abbrev [18] 0x49b:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc8            @ DW_AT_location
	.long	.Linfo_string69         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	127                     @ DW_AT_decl_line
	.long	488                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0x4ab:0x27 DW_TAG_subprogram
	.long	.Lfunc_begin10          @ DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	1220                    @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	136                     @ DW_AT_decl_line
	.long	.Linfo_string63         @ DW_AT_linkage_name
	.long	473                     @ DW_AT_specification
	.byte	14                      @ Abbrev [14] 0x4c4:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc9            @ DW_AT_location
	.long	.Linfo_string64         @ DW_AT_name
	.long	1234                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x4d2:0x5 DW_TAG_pointer_type
	.long	38                      @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.section	.debug_ranges,"",%progbits
.Ldebug_range:
	.section	.debug_macinfo,"",%progbits
.Ldebug_macinfo:
.Lcu_macro_begin0:
	.byte	0                       @ End Of Macro List Mark
	.section	.debug_pubnames,"",%progbits
	.long	.LpubNames_end0-.LpubNames_begin0 @ Length of Public Names Info
.LpubNames_begin0:
	.short	2                       @ DWARF Version
	.long	.Lcu_begin0             @ Offset of Compilation Unit Info
	.long	1240                    @ Compilation Unit Length
	.long	1049                    @ DIE offset
	.asciz	"ADSR::setDecayTime"    @ External Name
	.long	1001                    @ DIE offset
	.asciz	"ADSR::setAttackTime"   @ External Name
	.long	861                     @ DIE offset
	.asciz	"ADSR::trigger"         @ External Name
	.long	966                     @ DIE offset
	.asciz	"ADSR::isActive"        @ External Name
	.long	1195                    @ DIE offset
	.asciz	"ADSR::~ADSR"           @ External Name
	.long	770                     @ DIE offset
	.asciz	"ADSR::ADSR"            @ External Name
	.long	809                     @ DIE offset
	.asciz	"ADSR::setSampleRate"   @ External Name
	.long	1097                    @ DIE offset
	.asciz	"ADSR::setSustainLevel" @ External Name
	.long	1147                    @ DIE offset
	.asciz	"ADSR::setReleaseTime"  @ External Name
	.long	931                     @ DIE offset
	.asciz	"ADSR::process"         @ External Name
	.long	896                     @ DIE offset
	.asciz	"ADSR::release"         @ External Name
	.long	0                       @ End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",%progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 @ Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       @ DWARF Version
	.long	.Lcu_begin0             @ Offset of Compilation Unit Info
	.long	1240                    @ Compilation Unit Length
	.long	488                     @ DIE offset
	.asciz	"float"                 @ External Name
	.long	38                      @ DIE offset
	.asciz	"ADSR"                  @ External Name
	.long	495                     @ DIE offset
	.asciz	"ExponentialSegment"    @ External Name
	.long	746                     @ DIE offset
	.asciz	"double"                @ External Name
	.long	758                     @ DIE offset
	.asciz	"bool"                  @ External Name
	.long	0                       @ End Mark
.LpubTypes_end0:
	.cfi_sections .debug_frame

	.globl	_ZN4ADSRC1Ev
	.type	_ZN4ADSRC1Ev,%function
_ZN4ADSRC1Ev = _ZN4ADSRC2Ev
	.globl	_ZN4ADSRD1Ev
	.type	_ZN4ADSRD1Ev,%function
_ZN4ADSRD1Ev = _ZN4ADSRD2Ev
	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
	.section	.debug_line,"",%progbits
.Lline_table_start0:
