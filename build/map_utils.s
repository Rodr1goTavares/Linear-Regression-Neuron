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
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s"
	.text
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
	pushq	%r14
	.cfi_offset 14, -24
	movq	%rdi, %r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movslq	12(%rdi), %rax
	movq	%rsp, %rsi
	movq	%rax, %rcx
	addq	$15, %rax
	movq	%rax, %rdx
	andq	$-4096, %rax
	subq	%rax, %rsi
	andq	$-16, %rdx
	cmpq	%rsi, %rsp
	je	.L5
.L20:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rsi, %rsp
	jne	.L20
.L5:
	andl	$4095, %edx
	subq	%rdx, %rsp
	testq	%rdx, %rdx
	jne	.L21
.L6:
	movl	8(%r14), %eax
	movq	%rsp, %r12
	xorl	%r13d, %r13d
	leaq	.LC0(%rip), %rbx
	testl	%eax, %eax
	jle	.L3
	.p2align 4,,10
	.p2align 3
.L7:
	testl	%ecx, %ecx
	jle	.L11
	movq	16(%r14), %rax
	leaq	(%rax,%r13,8), %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L9:
	movq	(%rsi), %rdx
	movl	(%rdx,%rax,4), %edx
	movb	%dl, (%r12,%rax)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L9
.L11:
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	addq	$1, %r13
	cmpl	%r13d, 8(%r14)
	jle	.L3
	movslq	12(%r14), %rcx
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L3:
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L22
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L21:
	.cfi_restore_state
	orq	$0, -8(%rsp,%rdx)
	jmp	.L6
.L22:
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
