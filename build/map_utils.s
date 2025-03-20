	.file	"map_utils.c"
	.text
	.p2align 4
	.globl	createMap
	.type	createMap, @function
createMap:
.LFB23:
	.cfi_startproc
	endbr64
	movq	$0, (%rdi)
	movq	%rdi, %rax
	movl	%esi, 8(%rdi)
	movl	%edx, 12(%rdi)
	movq	$0, 16(%rdi)
	ret
	.cfi_endproc
.LFE23:
	.size	createMap, .-createMap
	.p2align 4
	.globl	printMap
	.type	printMap, @function
printMap:
.LFB24:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	.cfi_offset 13, -24
	movq	%rdi, %r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movslq	12(%rdi), %rcx
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rsi
	leal	1(%rcx), %eax
	cltq
	addq	$15, %rax
	movq	%rax, %rdx
	andq	$-4096, %rax
	subq	%rax, %rsi
	andq	$-16, %rdx
	cmpq	%rsi, %rsp
	je	.L5
.L21:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rsi, %rsp
	jne	.L21
.L5:
	andl	$4095, %edx
	subq	%rdx, %rsp
	testq	%rdx, %rdx
	jne	.L22
.L6:
	movl	8(%r13), %eax
	movq	%rsp, %rbx
	xorl	%r12d, %r12d
	testl	%eax, %eax
	jle	.L3
	.p2align 4,,10
	.p2align 3
.L7:
	testl	%ecx, %ecx
	jle	.L11
	movq	16(%r13), %rax
	leaq	(%rax,%r12,8), %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L12:
	movq	(%rsi), %rdx
	cmpl	$1, (%rdx,%rax,4)
	je	.L9
	movb	$46, (%rbx,%rax)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L12
.L11:
	movb	$0, (%rbx,%rcx)
	movq	%rbx, %rdi
	addq	$1, %r12
	call	puts@PLT
	cmpl	%r12d, 8(%r13)
	jle	.L3
	movslq	12(%r13), %rcx
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L9:
	movb	$35, (%rbx,%rax)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L12
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L3:
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L23
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L22:
	.cfi_restore_state
	orq	$0, -8(%rsp,%rdx)
	jmp	.L6
.L23:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE24:
	.size	printMap, .-printMap
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
