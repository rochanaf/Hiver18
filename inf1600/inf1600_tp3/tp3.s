	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	leaq	L_.str(%rip), %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	movl	%eax, -108(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.2(%rip), %rdi
	movl	%eax, -112(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	cmpl	$2, -8(%rbp)
	movl	%eax, -116(%rbp)        ## 4-byte Spill
	je	LBB0_2
## BB#1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_usage
LBB0_2:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_strdup
	leaq	-32(%rbp), %rsi
	leaq	-36(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_matrix_parse
	leaq	L_.str.3(%rip), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_matrix_print
	movl	-36(%rbp), %edi
	callq	_matrix_create
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_matrix_transpose
	leaq	L_.str.4(%rip), %rdi
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_matrix_print
	movl	-36(%rbp), %edi
	callq	_matrix_create
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_matrix_diagonal
	leaq	L_.str.5(%rip), %rdi
	movq	-64(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_matrix_print
	movl	-36(%rbp), %edi
	callq	_vector_create
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_matrix_row_aver
	leaq	L_.str.6(%rip), %rdi
	movq	-96(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_vector_print
	movl	-36(%rbp), %edi
	callq	_matrix_create
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	_matrix_multiply
	leaq	L_.str.7(%rip), %rdi
	movq	-80(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_matrix_print
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_matrix_equals_asm
	cmpl	$1, %eax
	jne	LBB0_4
## BB#3:
	leaq	L_.str.8(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -120(%rbp)        ## 4-byte Spill
	jmp	LBB0_5
LBB0_4:
	leaq	L_.str.9(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$1, %edi
	movl	%eax, -124(%rbp)        ## 4-byte Spill
	callq	_exit
LBB0_5:
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_matrix_equals_asm
	cmpl	$0, %eax
	jne	LBB0_7
## BB#6:
	leaq	L_.str.10(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -128(%rbp)        ## 4-byte Spill
	jmp	LBB0_8
LBB0_7:
	leaq	L_.str.11(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$1, %edi
	movl	%eax, -132(%rbp)        ## 4-byte Spill
	callq	_exit
LBB0_8:
	movl	-36(%rbp), %edi
	callq	_matrix_create
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_matrix_transpose_asm
	leaq	L_.str.12(%rip), %rdi
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_matrix_print
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_matrix_equals
	cmpl	$1, %eax
	jne	LBB0_10
## BB#9:
	leaq	L_.str.13(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -136(%rbp)        ## 4-byte Spill
	jmp	LBB0_11
LBB0_10:
	leaq	L_.str.14(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$1, %edi
	movl	%eax, -140(%rbp)        ## 4-byte Spill
	callq	_exit
LBB0_11:
	movl	-36(%rbp), %edi
	callq	_matrix_create
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_matrix_diagonal_asm
	leaq	L_.str.15(%rip), %rdi
	movq	-72(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_matrix_print
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_matrix_equals
	cmpl	$1, %eax
	jne	LBB0_13
## BB#12:
	leaq	L_.str.16(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -144(%rbp)        ## 4-byte Spill
	jmp	LBB0_14
LBB0_13:
	leaq	L_.str.17(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$1, %edi
	movl	%eax, -148(%rbp)        ## 4-byte Spill
	callq	_exit
LBB0_14:
	movl	-36(%rbp), %edi
	callq	_matrix_create
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	_matrix_multiply_asm
	leaq	L_.str.18(%rip), %rdi
	movq	-88(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_matrix_print
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_matrix_equals
	cmpl	$1, %eax
	jne	LBB0_16
## BB#15:
	leaq	L_.str.19(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -152(%rbp)        ## 4-byte Spill
	jmp	LBB0_17
LBB0_16:
	leaq	L_.str.20(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$1, %edi
	movl	%eax, -156(%rbp)        ## 4-byte Spill
	callq	_exit
LBB0_17:
	movl	-36(%rbp), %edi
	callq	_vector_create
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_matrix_row_aver_asm
	leaq	L_.str.21(%rip), %rdi
	movq	-104(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_vector_print
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_vector_equals
	cmpl	$1, %eax
	jne	LBB0_19
## BB#18:
	leaq	L_.str.22(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -160(%rbp)        ## 4-byte Spill
	jmp	LBB0_20
LBB0_19:
	leaq	L_.str.23(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$1, %edi
	movl	%eax, -164(%rbp)        ## 4-byte Spill
	callq	_exit
LBB0_20:
	movq	-24(%rbp), %rdi
	callq	_free
	movq	-32(%rbp), %rdi
	callq	_matrix_free
	movq	-48(%rbp), %rdi
	callq	_matrix_free
	movq	-56(%rbp), %rdi
	callq	_matrix_free
	movq	-80(%rbp), %rdi
	callq	_matrix_free
	movq	-88(%rbp), %rdi
	callq	_matrix_free
	movq	-64(%rbp), %rdi
	callq	_matrix_free
	movq	-72(%rbp), %rdi
	callq	_matrix_free
	movq	-96(%rbp), %rdi
	callq	_matrix_free
	movq	-104(%rbp), %rdi
	callq	_matrix_free
	xorl	%eax, %eax
	addq	$176, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_usage:                                 ## @usage
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str.29(%rip), %rsi
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	(%rax), %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	_fprintf
	movl	$1, %edi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	callq	_exit
	.cfi_endproc

	.p2align	4, 0x90
_matrix_parse:                          ## @matrix_parse
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi6:
	.cfi_def_cfa_offset 16
Lcfi7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi8:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	L_.str.30(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	_fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	LBB2_2
## BB#1:
	movq	-8(%rbp), %rdi
	callq	_perror
	movl	$1, %edi
	callq	_exit
LBB2_2:
	leaq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	_read_line
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rsi
	subq	$1, %rsi
	movb	$0, (%rax,%rsi)
	movq	-40(%rbp), %rdi
	callq	_count_elems
	movq	-24(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-24(%rbp), %rsi
	movl	(%rsi), %edi
	callq	_matrix_create
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	movl	$0, -60(%rbp)
LBB2_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_4 Depth 2
	movl	$0, -64(%rbp)
LBB2_4:                                 ##   Parent Loop BB2_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-64(%rbp), %eax
	movq	-24(%rbp), %rdx
	cmpl	(%rdx), %eax
	movb	%cl, -65(%rbp)          ## 1-byte Spill
	jge	LBB2_6
## BB#5:                                ##   in Loop: Header=BB2_4 Depth=2
	leaq	-40(%rbp), %rdi
	leaq	L_.str.31(%rip), %rsi
	callq	_strsep
	movq	%rax, -56(%rbp)
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -65(%rbp)          ## 1-byte Spill
LBB2_6:                                 ##   in Loop: Header=BB2_4 Depth=2
	movb	-65(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB2_7
	jmp	LBB2_8
LBB2_7:                                 ##   in Loop: Header=BB2_4 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$10, %edx
	movq	-56(%rbp), %rdi
	callq	_strtol
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-64(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movq	-24(%rbp), %rsi
	imull	(%rsi), %r8d
	addl	%r8d, %ecx
	movslq	%ecx, %rsi
	movl	%edx, (%rax,%rsi,4)
	movl	-64(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -64(%rbp)
	jmp	LBB2_4
LBB2_8:                                 ##   in Loop: Header=BB2_3 Depth=1
	movl	-64(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	je	LBB2_10
## BB#9:
	leaq	L_.str.32(%rip), %rsi
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	movb	$0, %al
	callq	_fprintf
	movl	$1, %edi
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	callq	_exit
LBB2_10:                                ##   in Loop: Header=BB2_3 Depth=1
	leaq	-48(%rbp), %rsi
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rdi
	callq	_read_line
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	LBB2_12
## BB#11:                               ##   in Loop: Header=BB2_3 Depth=1
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	$1, %rcx
	movb	$0, (%rax,%rcx)
LBB2_12:                                ##   in Loop: Header=BB2_3 Depth=1
	jmp	LBB2_13
LBB2_13:                                ##   in Loop: Header=BB2_3 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rdx
	cmpl	(%rdx), %eax
	movb	%cl, -73(%rbp)          ## 1-byte Spill
	jge	LBB2_15
## BB#14:                               ##   in Loop: Header=BB2_3 Depth=1
	cmpq	$0, -40(%rbp)
	setne	%al
	movb	%al, -73(%rbp)          ## 1-byte Spill
LBB2_15:                                ##   in Loop: Header=BB2_3 Depth=1
	movb	-73(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB2_3
## BB#16:
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	je	LBB2_18
## BB#17:
	leaq	L_.str.33(%rip), %rsi
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	-60(%rbp), %r8d
	movb	$0, %al
	callq	_fprintf
	movl	$1, %edi
	movl	%eax, -80(%rbp)         ## 4-byte Spill
	callq	_exit
LBB2_18:
	movq	-32(%rbp), %rdi
	callq	_fclose
	movl	%eax, -84(%rbp)         ## 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_matrix_print
	.p2align	4, 0x90
_matrix_print:                          ## @matrix_print
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi9:
	.cfi_def_cfa_offset 16
Lcfi10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi11:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	L_.str.24(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movl	$0, -24(%rbp)
	movl	%eax, -32(%rbp)         ## 4-byte Spill
LBB3_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_3 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB3_8
## BB#2:                                ##   in Loop: Header=BB3_1 Depth=1
	leaq	L_.str.25(%rip), %rdi
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	imull	-20(%rbp), %ecx
	movslq	%ecx, %rdx
	movl	(%rax,%rdx,4), %esi
	movb	$0, %al
	callq	_printf
	movl	$1, -28(%rbp)
	movl	%eax, -36(%rbp)         ## 4-byte Spill
LBB3_3:                                 ##   Parent Loop BB3_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB3_6
## BB#4:                                ##   in Loop: Header=BB3_3 Depth=2
	leaq	L_.str.26(%rip), %rdi
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %edx
	imull	-20(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movl	(%rax,%rsi,4), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -40(%rbp)         ## 4-byte Spill
## BB#5:                                ##   in Loop: Header=BB3_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB3_3
LBB3_6:                                 ##   in Loop: Header=BB3_1 Depth=1
	leaq	L_.str.27(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -44(%rbp)         ## 4-byte Spill
## BB#7:                                ##   in Loop: Header=BB3_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB3_1
LBB3_8:
	leaq	L_.str.28(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_matrix_create:                         ## @matrix_create
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi12:
	.cfi_def_cfa_offset 16
Lcfi13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi14:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	shlq	$2, %rax
	movslq	-4(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, %rdi
	callq	_malloc
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_matrix_transpose:                      ## @matrix_transpose
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi15:
	.cfi_def_cfa_offset 16
Lcfi16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi17:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
LBB5_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_3 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB5_8
## BB#2:                                ##   in Loop: Header=BB5_1 Depth=1
	movl	$0, -28(%rbp)
LBB5_3:                                 ##   Parent Loop BB5_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB5_6
## BB#4:                                ##   in Loop: Header=BB5_3 Depth=2
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %edx
	imull	-20(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movl	(%rax,%rsi,4), %ecx
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %edi
	imull	-20(%rbp), %edi
	addl	%edi, %edx
	movslq	%edx, %rsi
	movl	%ecx, (%rax,%rsi,4)
## BB#5:                                ##   in Loop: Header=BB5_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB5_3
LBB5_6:                                 ##   in Loop: Header=BB5_1 Depth=1
	jmp	LBB5_7
LBB5_7:                                 ##   in Loop: Header=BB5_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB5_1
LBB5_8:
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_matrix_diagonal:                       ## @matrix_diagonal
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi18:
	.cfi_def_cfa_offset 16
Lcfi19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi20:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
LBB6_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_3 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB6_11
## BB#2:                                ##   in Loop: Header=BB6_1 Depth=1
	movl	$0, -28(%rbp)
LBB6_3:                                 ##   Parent Loop BB6_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB6_9
## BB#4:                                ##   in Loop: Header=BB6_3 Depth=2
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	LBB6_6
## BB#5:                                ##   in Loop: Header=BB6_3 Depth=2
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %edx
	imull	-20(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movl	(%rax,%rsi,4), %ecx
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %edi
	imull	-20(%rbp), %edi
	addl	%edi, %edx
	movslq	%edx, %rsi
	movl	%ecx, (%rax,%rsi,4)
	jmp	LBB6_7
LBB6_6:                                 ##   in Loop: Header=BB6_3 Depth=2
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %edx
	imull	-20(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movl	$0, (%rax,%rsi,4)
LBB6_7:                                 ##   in Loop: Header=BB6_3 Depth=2
	jmp	LBB6_8
LBB6_8:                                 ##   in Loop: Header=BB6_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB6_3
LBB6_9:                                 ##   in Loop: Header=BB6_1 Depth=1
	jmp	LBB6_10
LBB6_10:                                ##   in Loop: Header=BB6_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB6_1
LBB6_11:
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_vector_create:                         ## @vector_create
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi21:
	.cfi_def_cfa_offset 16
Lcfi22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi23:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	_malloc
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_matrix_row_aver:                       ## @matrix_row_aver
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi24:
	.cfi_def_cfa_offset 16
Lcfi25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi26:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
LBB8_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_3 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB8_8
## BB#2:                                ##   in Loop: Header=BB8_1 Depth=1
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
LBB8_3:                                 ##   Parent Loop BB8_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB8_6
## BB#4:                                ##   in Loop: Header=BB8_3 Depth=2
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %edx
	imull	-20(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movl	(%rax,%rsi,4), %ecx
	addl	-32(%rbp), %ecx
	movl	%ecx, -32(%rbp)
## BB#5:                                ##   in Loop: Header=BB8_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB8_3
LBB8_6:                                 ##   in Loop: Header=BB8_1 Depth=1
	movl	-32(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	movq	-16(%rbp), %rcx
	movslq	-24(%rbp), %rsi
	movl	%eax, (%rcx,%rsi,4)
## BB#7:                                ##   in Loop: Header=BB8_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB8_1
LBB8_8:
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_vector_print
	.p2align	4, 0x90
_vector_print:                          ## @vector_print
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi27:
	.cfi_def_cfa_offset 16
Lcfi28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi29:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	L_.str.24(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movl	$0, -24(%rbp)
	movl	%eax, -28(%rbp)         ## 4-byte Spill
LBB9_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB9_7
## BB#2:                                ##   in Loop: Header=BB9_1 Depth=1
	cmpl	$0, -24(%rbp)
	jne	LBB9_4
## BB#3:                                ##   in Loop: Header=BB9_1 Depth=1
	leaq	L_.str.25(%rip), %rdi
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	jmp	LBB9_5
LBB9_4:                                 ##   in Loop: Header=BB9_1 Depth=1
	leaq	L_.str.26(%rip), %rdi
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -36(%rbp)         ## 4-byte Spill
LBB9_5:                                 ##   in Loop: Header=BB9_1 Depth=1
	jmp	LBB9_6
LBB9_6:                                 ##   in Loop: Header=BB9_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB9_1
LBB9_7:
	leaq	L_.str.27(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_matrix_multiply:                       ## @matrix_multiply
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi30:
	.cfi_def_cfa_offset 16
Lcfi31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi32:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	$0, -32(%rbp)
LBB10_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB10_3 Depth 2
                                        ##       Child Loop BB10_5 Depth 3
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB10_12
## BB#2:                                ##   in Loop: Header=BB10_1 Depth=1
	movl	$0, -36(%rbp)
LBB10_3:                                ##   Parent Loop BB10_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB10_5 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB10_10
## BB#4:                                ##   in Loop: Header=BB10_3 Depth=2
	movl	$0, -44(%rbp)
	movl	$0, -40(%rbp)
LBB10_5:                                ##   Parent Loop BB10_1 Depth=1
                                        ##     Parent Loop BB10_3 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB10_8
## BB#6:                                ##   in Loop: Header=BB10_5 Depth=3
	movq	-8(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	-32(%rbp), %edx
	imull	-28(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movl	(%rax,%rsi,4), %ecx
	movq	-16(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %edi
	imull	-28(%rbp), %edi
	addl	%edi, %edx
	movslq	%edx, %rsi
	imull	(%rax,%rsi,4), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
## BB#7:                                ##   in Loop: Header=BB10_5 Depth=3
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB10_5
LBB10_8:                                ##   in Loop: Header=BB10_3 Depth=2
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %esi
	imull	-28(%rbp), %esi
	addl	%esi, %edx
	movslq	%edx, %rdi
	movl	%eax, (%rcx,%rdi,4)
## BB#9:                                ##   in Loop: Header=BB10_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB10_3
LBB10_10:                               ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_11
LBB10_11:                               ##   in Loop: Header=BB10_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB10_1
LBB10_12:
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_matrix_equals:                         ## @matrix_equals
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi33:
	.cfi_def_cfa_offset 16
Lcfi34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi35:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$0, -32(%rbp)
LBB11_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB11_3 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB11_10
## BB#2:                                ##   in Loop: Header=BB11_1 Depth=1
	movl	$0, -36(%rbp)
LBB11_3:                                ##   Parent Loop BB11_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB11_8
## BB#4:                                ##   in Loop: Header=BB11_3 Depth=2
	movq	-16(%rbp), %rax
	movl	-36(%rbp), %ecx
	movl	-32(%rbp), %edx
	imull	-28(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movl	(%rax,%rsi,4), %ecx
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %edi
	imull	-28(%rbp), %edi
	addl	%edi, %edx
	movslq	%edx, %rsi
	cmpl	(%rax,%rsi,4), %ecx
	je	LBB11_6
## BB#5:
	movl	$0, -4(%rbp)
	jmp	LBB11_11
LBB11_6:                                ##   in Loop: Header=BB11_3 Depth=2
	jmp	LBB11_7
LBB11_7:                                ##   in Loop: Header=BB11_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB11_3
LBB11_8:                                ##   in Loop: Header=BB11_1 Depth=1
	jmp	LBB11_9
LBB11_9:                                ##   in Loop: Header=BB11_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB11_1
LBB11_10:
	movl	$1, -4(%rbp)
LBB11_11:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_vector_equals:                         ## @vector_equals
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi36:
	.cfi_def_cfa_offset 16
Lcfi37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi38:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$0, -32(%rbp)
LBB12_1:                                ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB12_6
## BB#2:                                ##   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	cmpl	(%rax,%rcx,4), %edx
	je	LBB12_4
## BB#3:
	movl	$0, -4(%rbp)
	jmp	LBB12_7
LBB12_4:                                ##   in Loop: Header=BB12_1 Depth=1
	jmp	LBB12_5
LBB12_5:                                ##   in Loop: Header=BB12_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB12_1
LBB12_6:
	movl	$1, -4(%rbp)
LBB12_7:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_matrix_free:                           ## @matrix_free
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi39:
	.cfi_def_cfa_offset 16
Lcfi40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi41:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_free
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_read_line:                             ## @read_line
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi42:
	.cfi_def_cfa_offset 16
Lcfi43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi44:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, _read_line.buf(%rip)
	jne	LBB14_2
## BB#1:
	movq	$1024, _read_line.bufsz(%rip) ## imm = 0x400
	movq	_read_line.bufsz(%rip), %rdi
	callq	_malloc
	movq	%rax, _read_line.buf(%rip)
LBB14_2:
	movq	_read_line.buf(%rip), %rax
	movq	_read_line.bufsz(%rip), %rcx
	subq	$1, %rcx
	movb	$1, (%rax,%rcx)
	movq	_read_line.buf(%rip), %rdi
	movq	_read_line.bufsz(%rip), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdx
	callq	_fgets
	cmpq	$0, %rax
	jne	LBB14_4
## BB#3:
	movq	$0, -8(%rbp)
	jmp	LBB14_14
LBB14_4:
	jmp	LBB14_5
LBB14_5:                                ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	_read_line.buf(%rip), %rdx
	movq	_read_line.bufsz(%rip), %rsi
	subq	$1, %rsi
	movsbl	(%rdx,%rsi), %eax
	cmpl	$0, %eax
	movb	%cl, -33(%rbp)          ## 1-byte Spill
	jne	LBB14_7
## BB#6:                                ##   in Loop: Header=BB14_5 Depth=1
	movq	_read_line.buf(%rip), %rax
	movq	_read_line.bufsz(%rip), %rcx
	subq	$2, %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$10, %edx
	setne	%sil
	movb	%sil, -33(%rbp)         ## 1-byte Spill
LBB14_7:                                ##   in Loop: Header=BB14_5 Depth=1
	movb	-33(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB14_8
	jmp	LBB14_13
LBB14_8:                                ##   in Loop: Header=BB14_5 Depth=1
	movq	_read_line.buf(%rip), %rdi
	movq	_read_line.bufsz(%rip), %rax
	shlq	$1, %rax
	movq	%rax, %rsi
	callq	_realloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	LBB14_10
## BB#9:
	movq	$0, -8(%rbp)
	jmp	LBB14_14
LBB14_10:                               ##   in Loop: Header=BB14_5 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, _read_line.buf(%rip)
	movq	_read_line.bufsz(%rip), %rax
	shlq	$1, %rax
	movq	%rax, _read_line.bufsz(%rip)
	movq	_read_line.buf(%rip), %rax
	movq	_read_line.bufsz(%rip), %rcx
	subq	$1, %rcx
	movb	$1, (%rax,%rcx)
	movq	_read_line.buf(%rip), %rax
	movq	_read_line.bufsz(%rip), %rcx
	shrq	$1, %rcx
	addq	%rcx, %rax
	addq	$-1, %rax
	movq	_read_line.bufsz(%rip), %rcx
	shrq	$1, %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movl	%edx, %esi
	movq	%rcx, %rdx
	callq	_fgets
	cmpq	$0, %rax
	jne	LBB14_12
## BB#11:
	movq	$0, -8(%rbp)
	jmp	LBB14_14
LBB14_12:                               ##   in Loop: Header=BB14_5 Depth=1
	jmp	LBB14_5
LBB14_13:
	movq	_read_line.buf(%rip), %rdi
	callq	_strlen
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	_read_line.buf(%rip), %rax
	movq	%rax, -8(%rbp)
LBB14_14:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_count_elems:                           ## @count_elems
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi45:
	.cfi_def_cfa_offset 16
Lcfi46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi47:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
LBB15_1:                                ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	LBB15_5
## BB#2:                                ##   in Loop: Header=BB15_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	jne	LBB15_4
## BB#3:                                ##   in Loop: Header=BB15_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
LBB15_4:                                ##   in Loop: Header=BB15_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	LBB15_1
LBB15_5:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"=========================\n"

L_.str.1:                               ## @.str.1
	.asciz	"=== Matrix operations ===\n"

L_.str.2:                               ## @.str.2
	.asciz	"=========================\n\n"

L_.str.3:                               ## @.str.3
	.asciz	"original"

L_.str.4:                               ## @.str.4
	.asciz	"transpose (C function)"

L_.str.5:                               ## @.str.5
	.asciz	"diagonal (C function)"

L_.str.6:                               ## @.str.6
	.asciz	"average vector (C function)"

L_.str.7:                               ## @.str.7
	.asciz	"original x transpose (C function)"

L_.str.8:                               ## @.str.8
	.asciz	"OK: equality test with original matrix passed (assembler function)\n\n"

L_.str.9:                               ## @.str.9
	.asciz	"FAIL: equality test with original matrix failed (assembler function)\n\n"

L_.str.10:                              ## @.str.10
	.asciz	"OK: inequality test between original and reference transpose passed (assembler function)\n\n"

L_.str.11:                              ## @.str.11
	.asciz	"FAIL: inequality test between original and reference transpose failed (assembler function)\n\n"

L_.str.12:                              ## @.str.12
	.asciz	"transpose (assembler function)"

L_.str.13:                              ## @.str.13
	.asciz	"OK: transpose calculated with assembly function matches reference\n\n"

L_.str.14:                              ## @.str.14
	.asciz	"FAIL: transpose calculated with assembly function does not match reference\n\n"

L_.str.15:                              ## @.str.15
	.asciz	"diagonal (assembler function)"

L_.str.16:                              ## @.str.16
	.asciz	"OK: diagonal calculated with assembly function matches reference\n\n"

L_.str.17:                              ## @.str.17
	.asciz	"FAIL: diagoanl calculated with assembly function does not match reference\n\n"

L_.str.18:                              ## @.str.18
	.asciz	"original x transpose (assembler function)"

L_.str.19:                              ## @.str.19
	.asciz	"OK: multiplication calculated with assembly function matches reference\n\n"

L_.str.20:                              ## @.str.20
	.asciz	"FAIL: multiplication calculated with assembly function does not match reference\n\n"

L_.str.21:                              ## @.str.21
	.asciz	"average vector (assembler function)"

L_.str.22:                              ## @.str.22
	.asciz	"OK: average vector with assembly function matches reference\n\n"

L_.str.23:                              ## @.str.23
	.asciz	"FAIL: average vector calculated with assembly function does not match reference\n\n"

L_.str.24:                              ## @.str.24
	.asciz	"%s = \n"

L_.str.25:                              ## @.str.25
	.asciz	"\t| %5d"

L_.str.26:                              ## @.str.26
	.asciz	" %5d"

L_.str.27:                              ## @.str.27
	.asciz	" |\n\n"

L_.str.28:                              ## @.str.28
	.asciz	"\n"

L_.str.29:                              ## @.str.29
	.asciz	"Usage:\n\t%s <filename>\n"

L_.str.30:                              ## @.str.30
	.asciz	"r"

L_.str.31:                              ## @.str.31
	.asciz	" "

L_.str.32:                              ## @.str.32
	.asciz	"%s: expected %d elements at row %d, found %d instead\n"

L_.str.33:                              ## @.str.33
	.asciz	"%s: expected %d rows, found %d instead\n"

.zerofill __DATA,__bss,_read_line.buf,8,3 ## @read_line.buf
.zerofill __DATA,__bss,_read_line.bufsz,8,3 ## @read_line.bufsz

.subsections_via_symbols
