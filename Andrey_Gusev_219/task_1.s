	.file	"task.c"
	.intel_syntax noprefix
	.text
	.globl	printAns
	.type	printAns, @function
printAns:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	DWORD PTR -36[rbp], edx
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L4:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
.L3:
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L4
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	printAns, .-printAns
	.section	.rodata
.LC0:
	.string	"Enter string 1:"
.LC1:
	.string	"Enter string 2:"
.LC2:
	.string	"String 1:"
.LC3:
	.string	"String 2:"
.LC4:
	.string	"\nString intersection:"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	lea	r11, -1998848[rsp]
.LPSRL0:
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 2208
# Выделение памяти для переменных
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
# int used1[128] = {0};
	lea	rdx, -2001040[rbp]
	mov	eax, 0
	mov	ecx, 64
	mov	rdi, rdx
	rep stosq
# int used2[128] = {0};
	lea	rdx, -2000528[rbp]
	mov	eax, 0
	mov	ecx, 64
	mov	rdi, rdx
	rep stosq
#Объявление переменной i
	mov	DWORD PTR -2001048[rbp], 0
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
.L7:
	mov	rax, QWORD PTR stdin[rip]
	mov	rdi, rax
	call	fgetc@PLT
	mov	DWORD PTR -2001044[rbp], eax
	cmp	DWORD PTR -2001044[rbp], 0
	js	.L6
	mov	eax, DWORD PTR -2001044[rbp]
	cdqe
	mov	DWORD PTR -2001040[rbp+rax*4], 1
.L6:
	mov	eax, DWORD PTR -2001044[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -2001048[rbp]
	cdqe
	mov	BYTE PTR -2000016[rbp+rax], dl
	add	DWORD PTR -2001048[rbp], 1
	cmp	DWORD PTR -2001044[rbp], 10
	jne	.L7
	mov	eax, DWORD PTR -2001048[rbp]
	sub	eax, 1
	cdqe
	mov	BYTE PTR -2000016[rbp+rax], 0
	mov	DWORD PTR -2001048[rbp], 0
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
.L9:
	mov	rax, QWORD PTR stdin[rip]
	mov	rdi, rax
	call	fgetc@PLT
	mov	DWORD PTR -2001044[rbp], eax
	cmp	DWORD PTR -2001044[rbp], 0
	js	.L8
	mov	eax, DWORD PTR -2001044[rbp]
	cdqe
	mov	DWORD PTR -2000528[rbp+rax*4], 1
.L8:
	mov	eax, DWORD PTR -2001044[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -2001048[rbp]
	cdqe
	mov	BYTE PTR -1000016[rbp+rax], dl
	add	DWORD PTR -2001048[rbp], 1
	cmp	DWORD PTR -2001044[rbp], 10
	jne	.L9
	mov	eax, DWORD PTR -2001048[rbp]
	sub	eax, 1
	cdqe
	mov	BYTE PTR -1000016[rbp+rax], 0
	mov	DWORD PTR -2001048[rbp], 0
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L10
.L11:
	mov	eax, DWORD PTR -2001048[rbp]
	cdqe
	movzx	eax, BYTE PTR -2000016[rbp+rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	add	DWORD PTR -2001048[rbp], 1
.L10:
	mov	eax, DWORD PTR -2001048[rbp]
	cdqe
	movzx	eax, BYTE PTR -2000016[rbp+rax]
	test	al, al
	jne	.L11
	mov	edi, 10
	call	putchar@PLT
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	DWORD PTR -2001048[rbp], 0
	jmp	.L12
.L13:
	mov	eax, DWORD PTR -2001048[rbp]
	cdqe
	movzx	eax, BYTE PTR -1000016[rbp+rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	add	DWORD PTR -2001048[rbp], 1
.L12:
	mov	eax, DWORD PTR -2001048[rbp]
	cdqe
	movzx	eax, BYTE PTR -1000016[rbp+rax]
	test	al, al
	jne	.L13
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rcx, -2000528[rbp]
	lea	rax, -2001040[rbp]
	mov	edx, 128
	mov	rsi, rcx
	mov	rdi, rax
	call	printAns
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
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