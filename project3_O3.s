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
	.section	.text.unlikely,"ax",@progbits
.LCOLDB7:
	.section	.text.startup,"ax",@progbits
.LHOTB7:
	.p2align 4
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
	jle	.L21
	movq	8(%rsi), %rdi
	leaq	.LC1(%rip), %rsi
	call	fopen@PLT
	movq	%rax, 8(%rsp)
	testq	%rax, %rax
	je	.L17
	movl	$0, 4(%rsp)
	leaq	16(%rsp), %rbp
	leaq	.LC5(%rip), %r13
	leaq	.LC4(%rip), %r12
	.p2align 4,,10
	.p2align 3
.L4:
	movq	8(%rsp), %rcx
	movl	$16, %edx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	fread@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L22
	movl	4(%rsp), %edx
	leaq	.LC3(%rip), %rsi
	xorl	%eax, %eax
	xorl	%r14d, %r14d
	movl	$2, %edi
	call	__printf_chk@PLT
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L24:
	movzbl	0(%rbp,%r14), %edx
	movq	%r12, %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	addq	$1, %r14
	call	__printf_chk@PLT
	cmpq	$16, %r14
	je	.L23
.L8:
	cmpq	%rbx, %r14
	jb	.L24
	movq	%r13, %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	addq	$1, %r14
	call	__printf_chk@PLT
	cmpq	$16, %r14
	jne	.L8
.L23:
	movl	$124, %edi
	movq	%rbp, %r15
	addq	%rbp, %rbx
	call	putchar@PLT
	call	__ctype_b_loc@PLT
	movq	%rax, %r14
	.p2align 4,,10
	.p2align 3
.L11:
	movzbl	(%r15), %ecx
	movq	(%r14), %rax
	movq	%rcx, %rdi
	testb	$64, 1(%rax,%rcx,2)
	jne	.L19
	movl	$46, %edi
.L19:
	call	putchar@PLT
	addq	$1, %r15
	cmpq	%r15, %rbx
	jne	.L11
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	addl	$16, 4(%rsp)
	jmp	.L4
.L22:
	movq	8(%rsp), %rdi
	call	fclose@PLT
	xorl	%eax, %eax
.L1:
	movq	40(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L25
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
.L21:
	.cfi_restore_state
	movq	(%rsi), %rdx
	movl	$2, %edi
	leaq	.LC0(%rip), %rsi
	call	__printf_chk@PLT
.L3:
	movl	$1, %eax
	jmp	.L1
.L25:
	call	__stack_chk_fail@PLT
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	main.cold, @function
main.cold:
.LFSB25:
.L17:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	leaq	.LC2(%rip), %rdi
	call	perror@PLT
	jmp	.L3
	.cfi_endproc
.LFE25:
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE7:
	.section	.text.startup
.LHOTE7:
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
