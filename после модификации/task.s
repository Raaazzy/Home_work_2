# r14d - i (Task)
# r13d - set_len
# rbp-24 - str (Task)
# rbp-256 - str (Task_file)
# rbp-272 - str (Task_random)
# r15d - length

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
	push	rbp	
	mov	rbp, rsp	
	sub	rsp, 32	
	mov	QWORD PTR -24[rbp], rdi	# str, str
# ./task.c:9: 	int len = strlen(str);
	mov	rax, QWORD PTR -24[rbp]	# tmp93, str
	mov	rdi, rax	#, tmp93
	call	strlen@PLT	
# ./task.c:9: 	int len = strlen(str);
	mov	r13d, eax	# len, _1
# ./task.c:10:     for (int i = 0; i < len; ++i) {
	mov	r14d, 0	# i,
# ./task.c:10:     for (int i = 0; i < len; ++i) {
	jmp	.L2	
.L5:
# ./task.c:11:         if (str[i] != str[len - 1 - i]) {
	mov	eax, r14d	# tmp94, i
	movsx	rdx, eax	
	mov	rax, QWORD PTR -24[rbp]	# tmp95, str
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]	
# ./task.c:11:         if (str[i] != str[len - 1 - i]) {
	mov	eax, r13d	# tmp96, len
	sub	eax, 1	
# ./task.c:11:         if (str[i] != str[len - 1 - i]) {
	sub	eax, r14d	
	movsx	rcx, eax	
# ./task.c:11:         if (str[i] != str[len - 1 - i]) {
	mov	rax, QWORD PTR -24[rbp]	# tmp97, str
	add	rax, rcx	
	movzx	eax, BYTE PTR [rax]	
# ./task.c:11:         if (str[i] != str[len - 1 - i]) {
	cmp	dl, al	
	je	.L3	
# ./task.c:12:             return "NO";
	lea	rax, .LC0[rip]	
	jmp	.L4	
.L3:
# ./task.c:10:     for (int i = 0; i < len; ++i) {
	add	r14d, 1	# i,
.L2:
# ./task.c:10:     for (int i = 0; i < len; ++i) {
	mov	eax, r14d	# tmp98, i
	cmp	eax, r13d	# tmp98, len
	jl	.L5	
# ./task.c:15:     return "YES";
	lea	rax, .LC1[rip]	
.L4:
# ./task.c:16: }
	leave	
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
	push	rbp	
	mov	rbp, rsp	
	sub	rsp, 288	
	mov	r15d, edi	# length, length
# ./task.c:20:     int set_len = strlen(SET);
	mov	r13d, 61	# set_len,
# ./task.c:21:     srand(clock());
	call	clock@PLT	
# ./task.c:21:     srand(clock());
	mov	edi, eax	
	call	srand@PLT	
# ./task.c:22:     for (int i = 0; i < length; ++i) {
	mov	r14d, 0	# i,
# ./task.c:22:     for (int i = 0; i < length; ++i) {
	jmp	.L7	
.L8:
# ./task.c:23:         str[i] = SET[rand() % set_len];
	call	rand@PLT	
# ./task.c:23:         str[i] = SET[rand() % set_len];
	cdq
	idiv	r13d	# set_len
	mov	eax, edx	
# ./task.c:23:         str[i] = SET[rand() % set_len];
	lea	rdx, .LC2[rip]	# tmp92,
	movzx	edx, BYTE PTR [rax+rdx]	
# ./task.c:23:         str[i] = SET[rand() % set_len];
	mov	eax, r14d	# tmp94, i
	mov	BYTE PTR -272[rbp+rax], dl	
# ./task.c:22:     for (int i = 0; i < length; ++i) {
	add	r14d, 1	# i,
.L7:
# ./task.c:22:     for (int i = 0; i < length; ++i) {
	mov	eax, r14d	# tmp95, i
	cmp	eax, r15d	# tmp95, length
	jl	.L8	
# ./task.c:25:     str[length] = '\0';
	mov	eax, r15d	# tmp97, length
	mov	BYTE PTR -272[rbp+rax], 0	# str,
# ./task.c:26:     printf("Generated string: %s", str);
	lea	rax, -272[rbp]	# tmp98,
	mov	rsi, rax	#, tmp98
	lea	rdi, .LC3[rip]	
	mov	eax, 0	
	call	printf@PLT	
# ./task.c:27:     return Task(str);
	lea	rax, -272[rbp]	# tmp99,
	mov	rdi, rax	#, tmp99
	call	Task	
# ./task.c:28: }
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
	push	rbp
	mov	rbp, rsp	
	sub	rsp, 256	
# ./task.c:32:     printf("Your string (you can enter a maximum of 256 characters):");
	lea	rdi, .LC4[rip]	
	mov	eax, 0	
	call	printf@PLT	
# ./task.c:33:     fflush(stdin);
	mov	rax, QWORD PTR stdin[rip]	# stdin.0_1, stdin
	mov	rdi, rax	#, stdin.0_1
	call	fflush@PLT	
# ./task.c:34:     getchar();
	call	getchar@PLT	
# ./task.c:35:     fgets(str, 256, stdin);
	mov	rdx, QWORD PTR stdin[rip]	# stdin.1_2, stdin
	lea	rax, -256[rbp]	# tmp88,
	mov	esi, 256	
	mov	rdi, rax	#, tmp88
	call	fgets@PLT	
# ./task.c:36:     str[strlen(str)-1] = '\0';
	lea	rax, -256[rbp]	# tmp89,
	mov	rdi, rax	#, tmp89
	call	strlen@PLT	
# ./task.c:36:     str[strlen(str)-1] = '\0';
	sub	rax, 1	
# ./task.c:36:     str[strlen(str)-1] = '\0';
	mov	BYTE PTR -256[rbp+rax], 0	# str,
# ./task.c:37:     return Task(str);
	lea	rax, -256[rbp]	# tmp90,
	mov	rdi, rax	#, tmp90
	call	Task	
# ./task.c:38: }
	leave	
	ret	
