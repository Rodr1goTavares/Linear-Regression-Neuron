	.file	"map_utils.c"
	.text
	.p2align 4
	.globl	createMap
	.type	createMap, @function
createMap:
.LFB0:
	.cfi_startproc
	endbr64
	movq	$0, (%rdi)
	movq	%rdi, %rax
	movl	%esi, 8(%rdi)
	movl	%edx, 12(%rdi)
	movq	$0, 16(%rdi)
	ret
	.cfi_endproc
.LFE0:
	.size	createMap, .-createMap
	.p2align 4
	.globl	printMap
	.type	printMap, @function
printMap:
.LFB1:
	.cfi_startproc
	endbr64
	ret
	.cfi_endproc
.LFE1:
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
