	.file	"task.c"
	.intel_syntax noprefix
# GNU C17 (Ubuntu 11.3.0-1ubuntu1~22.04) version 11.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -O0 -fno-asynchronous-unwind-tables -fcf-protection=none -fstack-protector-strong -fstack-clash-protection
	.text
	.globl	printAns
	.type	printAns, @function
printAns:
	push	rbp	#
	mov	rbp, rsp	#,
	sub	rsp, 48	#,
	mov	QWORD PTR -24[rbp], rdi	# arr1, arr1
	mov	QWORD PTR -32[rbp], rsi	# arr2, arr2
	mov	DWORD PTR -36[rbp], edx	# size, size
# task.c:4:     for (int i = 0; i < size; i++) {
	mov	DWORD PTR -4[rbp], 0	# i,
# task.c:4:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L4:
# task.c:5:         if (arr1[i] && arr2[i]) {
	mov	eax, DWORD PTR -4[rbp]	# tmp92, i
	cdqe
	lea	rdx, 0[0+rax*4]	# _2,
	mov	rax, QWORD PTR -24[rbp]	# tmp93, arr1
	add	rax, rdx	# _3, _2
	mov	eax, DWORD PTR [rax]	# _4, *_3
# task.c:5:         if (arr1[i] && arr2[i]) {
	test	eax, eax	# _4
	je	.L3	#,
# task.c:5:         if (arr1[i] && arr2[i]) {
	mov	eax, DWORD PTR -4[rbp]	# tmp94, i
	cdqe
	lea	rdx, 0[0+rax*4]	# _6,
	mov	rax, QWORD PTR -32[rbp]	# tmp95, arr2
	add	rax, rdx	# _7, _6
	mov	eax, DWORD PTR [rax]	# _8, *_7
# task.c:5:         if (arr1[i] && arr2[i]) {
	test	eax, eax	# _8
	je	.L3	#,
# task.c:6:             printf("%c", (char)i);
	mov	eax, DWORD PTR -4[rbp]	# tmp96, i
# task.c:6:             printf("%c", (char)i);
	movsx	eax, al	# _10, _9
	mov	edi, eax	#, _10
	call	putchar@PLT	#
.L3:
# task.c:4:     for (int i = 0; i < size; i++) {
	add	DWORD PTR -4[rbp], 1	# i,
.L2:
# task.c:4:     for (int i = 0; i < size; i++) {
	mov	eax, DWORD PTR -4[rbp]	# tmp97, i
	cmp	eax, DWORD PTR -36[rbp]	# tmp97, size
	jl	.L4	#,
# task.c:9: }
	nop	
	nop	
	leave	
	ret	
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
	push	rbp	#
	mov	rbp, rsp	#,
	lea	r11, -1998848[rsp]	#,
.LPSRL0:
	sub	rsp, 4096	#,
	or	DWORD PTR [rsp], 0	#,
	cmp	rsp, r11	#,
	jne	.LPSRL0
	sub	rsp, 2208	#,
# task.c:12: {
	mov	rax, QWORD PTR fs:40	# tmp134, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.2388, tmp134
	xor	eax, eax	# tmp134
# task.c:15:     int used1[128] = {0};
	lea	rdx, -2001040[rbp]	# tmp96,
	mov	eax, 0	# tmp97,
	mov	ecx, 64	# tmp98,
	mov	rdi, rdx	# tmp96, tmp96
	rep stosq
# task.c:16:     int used2[128] = {0};
	lea	rdx, -2000528[rbp]	# tmp99,
	mov	eax, 0	# tmp100,
	mov	ecx, 64	# tmp101,
	mov	rdi, rdx	# tmp99, tmp99
	rep stosq
# task.c:17:     int i = 0;
	mov	DWORD PTR -2001048[rbp], 0	# i,
# task.c:19:     printf("Enter string 1:\n");
	lea	rax, .LC0[rip]	# tmp102,
	mov	rdi, rax	#, tmp102
	call	puts@PLT	#
.L7:
# task.c:21:         curr = fgetc(stdin);
	mov	rax, QWORD PTR stdin[rip]	# stdin.0_1, stdin
	mov	rdi, rax	#, stdin.0_1
	call	fgetc@PLT	#
	mov	DWORD PTR -2001044[rbp], eax	# curr, tmp103
# task.c:22:         if (curr >= 0) {
	cmp	DWORD PTR -2001044[rbp], 0	# curr,
	js	.L6	#,
# task.c:23:             used1[curr] = 1;
	mov	eax, DWORD PTR -2001044[rbp]	# tmp105, curr
	cdqe
	mov	DWORD PTR -2001040[rbp+rax*4], 1	# used1[curr_29],
.L6:
# task.c:25:         s1[i] = curr;
	mov	eax, DWORD PTR -2001044[rbp]	# tmp106, curr
	mov	edx, eax	# _2, tmp106
	mov	eax, DWORD PTR -2001048[rbp]	# tmp108, i
	cdqe
	mov	BYTE PTR -2000016[rbp+rax], dl	# s1[i_13], _2
# task.c:26:         i++;
	add	DWORD PTR -2001048[rbp], 1	# i,
# task.c:27:     } while (curr != '\n');
	cmp	DWORD PTR -2001044[rbp], 10	# curr,
	jne	.L7	#,
# task.c:28:     s1[i - 1] = '\0';
	mov	eax, DWORD PTR -2001048[rbp]	# tmp109, i
	sub	eax, 1	# _3,
# task.c:28:     s1[i - 1] = '\0';
	cdqe
	mov	BYTE PTR -2000016[rbp+rax], 0	# s1[_3],
# task.c:29:     i = 0;
	mov	DWORD PTR -2001048[rbp], 0	# i,
# task.c:30:     printf("Enter string 2:\n");
	lea	rax, .LC1[rip]	# tmp111,
	mov	rdi, rax	#, tmp111
	call	puts@PLT	#
.L9:
# task.c:32:         curr = fgetc(stdin);
	mov	rax, QWORD PTR stdin[rip]	# stdin.1_4, stdin
	mov	rdi, rax	#, stdin.1_4
	call	fgetc@PLT	#
	mov	DWORD PTR -2001044[rbp], eax	# curr, tmp112
# task.c:33:         if (curr >= 0) { 
	cmp	DWORD PTR -2001044[rbp], 0	# curr,
	js	.L8	#,
# task.c:34:             used2[curr] = 1;
	mov	eax, DWORD PTR -2001044[rbp]	# tmp114, curr
	cdqe
	mov	DWORD PTR -2000528[rbp+rax*4], 1	# used2[curr_37],
.L8:
# task.c:36:         s2[i] = curr;
	mov	eax, DWORD PTR -2001044[rbp]	# tmp115, curr
	mov	edx, eax	# _5, tmp115
	mov	eax, DWORD PTR -2001048[rbp]	# tmp117, i
	cdqe
	mov	BYTE PTR -1000016[rbp+rax], dl	# s2[i_14], _5
# task.c:37:         i++;
	add	DWORD PTR -2001048[rbp], 1	# i,
# task.c:38:     } while (curr != '\n');
	cmp	DWORD PTR -2001044[rbp], 10	# curr,
	jne	.L9	#,
# task.c:39:     s2[i - 1] = '\0';
	mov	eax, DWORD PTR -2001048[rbp]	# tmp118, i
	sub	eax, 1	# _6,
# task.c:39:     s2[i - 1] = '\0';
	cdqe
	mov	BYTE PTR -1000016[rbp+rax], 0	# s2[_6],
# task.c:40:     i = 0;
	mov	DWORD PTR -2001048[rbp], 0	# i,
# task.c:41:     printf("String 1:\n");
	lea	rax, .LC2[rip]	# tmp120,
	mov	rdi, rax	#, tmp120
	call	puts@PLT	#
# task.c:42:     while (s1[i] != '\0') {
	jmp	.L10	#
.L11:
# task.c:43:         printf("%c", (char)s1[i]);
	mov	eax, DWORD PTR -2001048[rbp]	# tmp122, i
	cdqe
	movzx	eax, BYTE PTR -2000016[rbp+rax]	# _7, s1[i_15]
# task.c:43:         printf("%c", (char)s1[i]);
	movsx	eax, al	# _8, _7
	mov	edi, eax	#, _8
	call	putchar@PLT	#
# task.c:44:         i++;
	add	DWORD PTR -2001048[rbp], 1	# i,
.L10:
# task.c:42:     while (s1[i] != '\0') {
	mov	eax, DWORD PTR -2001048[rbp]	# tmp124, i
	cdqe
	movzx	eax, BYTE PTR -2000016[rbp+rax]	# _9, s1[i_15]
# task.c:42:     while (s1[i] != '\0') {
	test	al, al	# _9
	jne	.L11	#,
# task.c:46:     printf("\n");
	mov	edi, 10	#,
	call	putchar@PLT	#
# task.c:47:     printf("String 2:\n");
	lea	rax, .LC3[rip]	# tmp125,
	mov	rdi, rax	#, tmp125
	call	puts@PLT	#
# task.c:48:     i = 0;
	mov	DWORD PTR -2001048[rbp], 0	# i,
# task.c:49:     while (s2[i] != '\0') {
	jmp	.L12	#
.L13:
# task.c:50:         printf("%c", (char)s2[i]);
	mov	eax, DWORD PTR -2001048[rbp]	# tmp127, i
	cdqe
	movzx	eax, BYTE PTR -1000016[rbp+rax]	# _10, s2[i_16]
# task.c:50:         printf("%c", (char)s2[i]);
	movsx	eax, al	# _11, _10
	mov	edi, eax	#, _11
	call	putchar@PLT	#
# task.c:51:         i++;
	add	DWORD PTR -2001048[rbp], 1	# i,
.L12:
# task.c:49:     while (s2[i] != '\0') {
	mov	eax, DWORD PTR -2001048[rbp]	# tmp129, i
	cdqe
	movzx	eax, BYTE PTR -1000016[rbp+rax]	# _12, s2[i_16]
# task.c:49:     while (s2[i] != '\0') {
	test	al, al	# _12
	jne	.L13	#,
# task.c:53:     printf("\nString intersection:");
	lea	rax, .LC4[rip]	# tmp130,
	mov	rdi, rax	#, tmp130
	mov	eax, 0	#,
	call	printf@PLT	#
# task.c:54:     printAns(used1, used2, 128);
	lea	rcx, -2000528[rbp]	# tmp131,
	lea	rax, -2001040[rbp]	# tmp132,
	mov	edx, 128	#,
	mov	rsi, rcx	#, tmp131
	mov	rdi, rax	#, tmp132
	call	printAns	#
# task.c:55:     return 0;
	mov	eax, 0	# _49,
# task.c:56: }
	mov	rdx, QWORD PTR -8[rbp]	# tmp135, D.2388
	sub	rdx, QWORD PTR fs:40	# tmp135, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L15	#,
	call	__stack_chk_fail@PLT	#
.L15:
	leave	
	ret	
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits