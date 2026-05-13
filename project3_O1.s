	.file	"project3.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Usage: %s <filename>\n"
.LC1:
	.string	"rb"
.LC2:
	.string	"Error opening file"
.LC3:
	.string	"%08x "
.LC4:
	.string	"%02x "
.LC5:
	.string	"  "
.LC6:
	.string	"|"
	.text
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	cmpl	$1, %edi
	jle	.L17
	movq	8(%rsi), %rdi
	leaq	.LC1(%rip), %rsi
	call	fopen@PLT
	movq	%rax, 8(%rsp)
	testq	%rax, %rax
	je	.L18
	movl	$0, %r14d
	leaq	.LC5(%rip), %r13
	leaq	.LC4(%rip), %r12
	jmp	.L4
.L17:
	movq	(%rsi), %rdx
	leaq	.LC0(%rip), %rsi
	movl	$2, %edi
	call	__printf_chk@PLT
	movl	$1, %eax
	jmp	.L1
.L18:
	leaq	.LC2(%rip), %rdi
	call	perror@PLT
	movl	$1, %eax
	jmp	.L1
.L5:
	movq	%r13, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.L6:
	addq	$1, %rbx
	cmpq	$16, %rbx
	je	.L19
.L7:
	cmpq	%rbp, %rbx
	jnb	.L5
	movzbl	(%rbx,%r15), %edx
	movq	%r12, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	jmp	.L6
.L19:
	movl	$124, %edi
	call	putchar@PLT
	call	__ctype_b_loc@PLT
	movq	%rax, %r15
	leaq	16(%rsp), %rbx
	addq	%rbx, %rbp
	jmp	.L10
.L8:
	movl	$46, %edi
	call	putchar@PLT
.L9:
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	je	.L20
.L10:
	movzbl	(%rbx), %edi
	movzbl	%dil, %edx
	movq	(%r15), %rax
	testb	$64, 1(%rax,%rdx,2)
	je	.L8
	movzbl	%dil, %edi
	call	putchar@PLT
	jmp	.L9
.L20:
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	addl	$16, %r14d
.L4:
	leaq	16(%rsp), %rdi
	movq	8(%rsp), %rcx
	movl	$16, %edx
	movl	$1, %esi
	call	fread@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L21
	movl	%r14d, %edx
	leaq	.LC3(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$0, %ebx
	leaq	16(%rsp), %r15
	jmp	.L7
.L21:
	movq	8(%rsp), %rdi
	call	fclose@PLT
	movl	$0, %eax
.L1:
	movq	40(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L22
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L22:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
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
