# rbp-40 - str (Task)
# rbp-20 - i
# rbp-276 - length
# rbp-8 - set_len
# rbp-4 - i
# rbp-544 - str (Task_file)

	.file	"task.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"NO"
.LC1:
	.string	"YES"
	.text
	.globl	Task
	.type	Task, @function
Task:
	endbr64	
	push	rbp	
	mov	rbp, rsp	
	push	rbx	
	sub	rsp, 40	
	mov	QWORD PTR -40[rbp], rdi	# str, str
# ./task.c:9:     for (int i = 0; i < strlen(str); ++i) {
	mov	DWORD PTR -20[rbp], 0	# i,
# ./task.c:9:     for (int i = 0; i < strlen(str); ++i) {
	jmp	.L2	
.L5:
# ./task.c:10:         if (str[i] != str[strlen(str) - 1 - i]) {
	mov	eax, DWORD PTR -20[rbp]	# tmp95, i
	movsx	rdx, eax	# _1, tmp95
	mov	rax, QWORD PTR -40[rbp]	# tmp96, str
	add	rax, rdx	# _2, _1
	movzx	ebx, BYTE PTR [rax]	# _3, *_2
# ./task.c:10:         if (str[i] != str[strlen(str) - 1 - i]) {
	mov	rax, QWORD PTR -40[rbp]	# tmp97, str
	mov	rdi, rax	#, tmp97
	call	strlen@PLT	
# ./task.c:10:         if (str[i] != str[strlen(str) - 1 - i]) {
	mov	edx, DWORD PTR -20[rbp]	# tmp98, i
	movsx	rdx, edx	# _5, tmp98
	sub	rax, rdx	# _6, _5
	lea	rdx, -1[rax]	# _7,
# ./task.c:10:         if (str[i] != str[strlen(str) - 1 - i]) {
	mov	rax, QWORD PTR -40[rbp]	# tmp99, str
	add	rax, rdx	# _8, _7
	movzx	eax, BYTE PTR [rax]	# _9, *_8
# ./task.c:10:         if (str[i] != str[strlen(str) - 1 - i]) {
	cmp	bl, al	# _3, _9
	je	.L3	
# ./task.c:11:             return "NO";
	lea	rax, .LC0[rip]	# _13,
	jmp	.L4	
.L3:
# ./task.c:9:     for (int i = 0; i < strlen(str); ++i) {
	add	DWORD PTR -20[rbp], 1	# i,
.L2:
# ./task.c:9:     for (int i = 0; i < strlen(str); ++i) {
	mov	eax, DWORD PTR -20[rbp]	# tmp100, i
	movsx	rbx, eax	# _10, tmp100
# ./task.c:9:     for (int i = 0; i < strlen(str); ++i) {
	mov	rax, QWORD PTR -40[rbp]	# tmp101, str
	mov	rdi, rax	#, tmp101
	call	strlen@PLT	
# ./task.c:9:     for (int i = 0; i < strlen(str); ++i) {
	cmp	rbx, rax	# _10, _11
	jb	.L5	
# ./task.c:14:     return "YES";
	lea	rax, .LC1[rip]	# _13,
.L4:
# ./task.c:15: }
	add	rsp, 40	
	pop	rbx
	pop	rbp	
	ret	
	.size	Task, .-Task
	.section	.rodata
.LC3:
	.string	"Generated string: %s"
	.align 8
.LC2:
	.string	"QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm123456789"
	.text
	.globl	Task_random
	.type	Task_random, @function
Task_random:
	endbr64	
	push	rbp	
	mov	rbp, rsp	
	sub	rsp, 288	
	mov	DWORD PTR -276[rbp], edi	# length, length
# ./task.c:19:     int set_len = strlen(SET);
	mov	DWORD PTR -8[rbp], 61	# set_len,
# ./task.c:20:     srand(clock());
	call	clock@PLT	
# ./task.c:20:     srand(clock());
	mov	edi, eax	#, _2
	call	srand@PLT	
# ./task.c:21:     for (int i = 0; i < length; ++i) {
	mov	DWORD PTR -4[rbp], 0	# i,
# ./task.c:21:     for (int i = 0; i < length; ++i) {
	jmp	.L7	
.L8:
# ./task.c:22:         str[i] = SET[rand() % set_len];
	call	rand@PLT	
# ./task.c:22:         str[i] = SET[rand() % set_len];
	cdq
	idiv	DWORD PTR -8[rbp]	# set_len
	mov	eax, edx	# _4, tmp89
# ./task.c:22:         str[i] = SET[rand() % set_len];
	cdqe
	lea	rdx, .LC2[rip]	# tmp92,
	movzx	edx, BYTE PTR [rax+rdx]	# _5,
# ./task.c:22:         str[i] = SET[rand() % set_len];
	mov	eax, DWORD PTR -4[rbp]	# tmp94, i
	cdqe
	mov	BYTE PTR -272[rbp+rax], dl	# str, _5
# ./task.c:21:     for (int i = 0; i < length; ++i) {
	add	DWORD PTR -4[rbp], 1	# i,
.L7:
# ./task.c:21:     for (int i = 0; i < length; ++i) {
	mov	eax, DWORD PTR -4[rbp]	# tmp95, i
	cmp	eax, DWORD PTR -276[rbp]	# tmp95, length
	jl	.L8	
# ./task.c:24:     str[length] = '\0';
	mov	eax, DWORD PTR -276[rbp]	# tmp97, length
	cdqe
	mov	BYTE PTR -272[rbp+rax], 0	# str,
# ./task.c:25:     printf("Generated string: %s", str);
	lea	rax, -272[rbp]	# tmp98,
	mov	rsi, rax	#, tmp98
	lea	rdi, .LC3[rip]	
	mov	eax, 0	
	call	printf@PLT	
# ./task.c:26:     return Task(str);
	lea	rax, -272[rbp]	# tmp99,
	mov	rdi, rax	#, tmp99
	call	Task	
# ./task.c:27: }
	leave	
	ret	
	.size	Task_random, .-Task_random
	.section	.rodata
	.align 8
.LC4:
	.string	"Your string (you can enter a maximum of 256 characters):"
	.text
	.globl	Task_file
	.type	Task_file, @function
Task_file:
	endbr64	
	push	rbp
	mov	rbp, rsp	
	push	rbx	
	sub	rsp, 536	
# ./task.c:31:     printf("Your string (you can enter a maximum of 256 characters):");
	lea	rdi, .LC4[rip]	
	mov	eax, 0	
	call	printf@PLT	
# ./task.c:32:     fflush(stdin);
	mov	rax, QWORD PTR stdin[rip]	# stdin.0_1, stdin
	mov	rdi, rax	#, stdin.0_1
	call	fflush@PLT	
# ./task.c:33:     getchar();
	call	getchar@PLT	
# ./task.c:34:     fgets(string, 256, stdin);
	mov	rdx, QWORD PTR stdin[rip]	# stdin.1_2, stdin
	lea	rax, -288[rbp]	# tmp90,
	mov	esi, 256	
	mov	rdi, rax	#, tmp90
	call	fgets@PLT	
# ./task.c:35:     for (int i = 0; i < strlen(string) - 1; ++i) {
	mov	DWORD PTR -20[rbp], 0	# i,
# ./task.c:35:     for (int i = 0; i < strlen(string) - 1; ++i) {
	jmp	.L11	
.L12:
# ./task.c:36:         str[i] = string[i];
	mov	eax, DWORD PTR -20[rbp]	# tmp92, i
	cdqe
	movzx	edx, BYTE PTR -288[rbp+rax]	# _3, string
# ./task.c:36:         str[i] = string[i];
	mov	eax, DWORD PTR -20[rbp]	# tmp94, i
	cdqe
	mov	BYTE PTR -544[rbp+rax], dl	# str, _3
# ./task.c:35:     for (int i = 0; i < strlen(string) - 1; ++i) {
	add	DWORD PTR -20[rbp], 1	# i,
.L11:
# ./task.c:35:     for (int i = 0; i < strlen(string) - 1; ++i) {
	mov	eax, DWORD PTR -20[rbp]	# tmp95, i
	movsx	rbx, eax	# _4, tmp95
# ./task.c:35:     for (int i = 0; i < strlen(string) - 1; ++i) {
	lea	rax, -288[rbp]	# tmp96,
	mov	rdi, rax	#, tmp96
	call	strlen@PLT	
# ./task.c:35:     for (int i = 0; i < strlen(string) - 1; ++i) {
	sub	rax, 1	# _6,
# ./task.c:35:     for (int i = 0; i < strlen(string) - 1; ++i) {
	cmp	rbx, rax	# _4, _6
	jb	.L12	
# ./task.c:38:     return Task(str);
	lea	rax, -544[rbp]	# tmp97,
	mov	rdi, rax	#, tmp97
	call	Task	
# ./task.c:39: }
	add	rsp, 536	
	pop	rbx	
	pop	rbp	
	ret	
	.size	Task_file, .-Task_file
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
