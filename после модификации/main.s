# r13d - i (16-ой строки в СИ)
# r14d - i (36-ой строки в СИ)
# rbp-32 - input_stream
# rbp-40 - output_stream
# rbp-48 - t_start
# rbp-56 - t_end
# rbp-60 - answer
# r15d - length
# rbp-320 - str
# rbp-576 - arr_str
# rbp-580 - argc
# rbp-592 - argv
	
	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"String: %s\n"
.LC1:
	.string	"Program execution time: %d ms"
.LC2:
	.string	"\nResult: %s\n"
.LC3:
	.string	"r"
	.align 8
.LC4:
	.string	"Error opening file. Press any key to continue"
.LC5:
	.string	"w"
.LC6:
	.string	"%s "
	.align 8
.LC7:
	.string	"Enter \"1\" if you want to generate a random string, or enter any other number if you want to enter the data yourself:"
.LC8:
	.string	"%d"
	.align 8
.LC9:
	.string	"Input length (0 < length <= %d):"
.LC10:
	.string	"Incorrect length = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp	
	mov	rbp, rsp	
	push	rbx	
	sub	rsp, 584	
	mov	DWORD PTR -580[rbp], edi	# argc, argc
	mov	QWORD PTR -592[rbp], rsi	# argv, argv
# ./main.c:13:     if (argc == 2) {
	cmp	DWORD PTR -580[rbp], 2	# argc,
	jne	.L2	
# ./main.c:14:         printf("String: %s\n", argv[1]);
	mov	rax, QWORD PTR -592[rbp]	# tmp110, argv
	add	rax, 8	
# ./main.c:14:         printf("String: %s\n", argv[1]);
	mov	rax, QWORD PTR [rax]	
	mov	rsi, rax	
	lea	rdi, .LC0[rip]	
	mov	eax, 0	
	call	printf@PLT	
# ./main.c:15:         time_t t_start = clock();
	call	clock@PLT	
	mov	QWORD PTR -48[rbp], rax	# t_start, tmp111
# ./main.c:16:         for (int i = 0; i < 25000000; ++i) {
	mov	r13d, 0	# i,
# ./main.c:16:         for (int i = 0; i < 25000000; ++i) {
	jmp	.L3	
.L4:
# ./main.c:17:             Task(argv[1]);
	mov	rax, QWORD PTR -592[rbp]	# tmp112, argv
	add	rax, 8	
# ./main.c:17:             Task(argv[1]);
	mov	rax, QWORD PTR [rax]	
	mov	rdi, rax	
	call	Task@PLT	
# ./main.c:16:         for (int i = 0; i < 25000000; ++i) {
	add	r13d, 1	# i,
.L3:
# ./main.c:16:         for (int i = 0; i < 25000000; ++i) {
	cmp	r13d, 24999999	# i,
	jle	.L4	
# ./main.c:19:         time_t t_end = clock();
	call	clock@PLT	
	mov	QWORD PTR -56[rbp], rax	# t_end, tmp113
# ./main.c:20:         printf("Program execution time: %d ms", (int) (difftime(t_end, t_start)) / 1000);
	mov	rdx, QWORD PTR -48[rbp]	# tmp114, t_start
	mov	rax, QWORD PTR -56[rbp]	# tmp115, t_end
	mov	rsi, rdx	#, tmp114
	mov	rdi, rax	#, tmp115
	call	difftime@PLT	
# ./main.c:20:         printf("Program execution time: %d ms", (int) (difftime(t_end, t_start)) / 1000);
	cvttsd2si	eax, xmm0	
# ./main.c:20:         printf("Program execution time: %d ms", (int) (difftime(t_end, t_start)) / 1000);
	movsx	rdx, eax	
	imul	rdx, rdx, 274877907	# tmp117, tmp116,
	shr	rdx, 32	# tmp118,
	sar	edx, 6	# tmp119,
	sar	eax, 31	# tmp120,
	sub	edx, eax	# tmp119, tmp120
	mov	eax, edx	
	mov	esi, eax	
	lea	rdi, .LC1[rip]	
	mov	eax, 0	
	call	printf@PLT
# ./main.c:21:         printf("\nResult: %s\n", Task(argv[1]));
	mov	rax, QWORD PTR -592[rbp]	# tmp121, argv
	add	rax, 8	
# ./main.c:21:         printf("\nResult: %s\n", Task(argv[1]));
	mov	rax, QWORD PTR [rax]	
	mov	rdi, rax	
	call	Task@PLT	
	mov	rsi, rax	
	lea	rdi, .LC2[rip]	
	mov	eax, 0	
	call	printf@PLT	
# ./main.c:22:         return 0;
	mov	eax, 0	
	jmp	.L15	
.L2:
# ./main.c:25:     if (argc == 3) {
	cmp	DWORD PTR -580[rbp], 3	# argc,
	jne	.L6	
# ./main.c:27:         FILE *input_stream = fopen(argv[1], "r");
	mov	rax, QWORD PTR -592[rbp]	# tmp122, argv
	add	rax, 8	
# ./main.c:27:         FILE *input_stream = fopen(argv[1], "r");
	mov	rax, QWORD PTR [rax]	
	lea	rsi, .LC3[rip]	
	mov	rdi, rax	
	call	fopen@PLT	
	mov	QWORD PTR -32[rbp], rax	# input_stream, tmp123
# ./main.c:28:         if (input_stream == NULL) {
	cmp	QWORD PTR -32[rbp], 0	# input_stream,
	jne	.L7	
# ./main.c:29:             printf("Error opening file. Press any key to continue");
	lea	rdi, .LC4[rip]	
	mov	eax, 0	
	call	printf@PLT	
# ./main.c:30:             getchar();
	call	getchar@PLT	
# ./main.c:31:             return 0;
	mov	eax, 0	
	jmp	.L15	
.L7:
# ./main.c:33:         fgets(arr_str, sizeof(arr_str), input_stream);
	mov	rdx, QWORD PTR -32[rbp]	# tmp124, input_stream
	lea	rax, -576[rbp]	# tmp125,
	mov	esi, 256	
	mov	rdi, rax	#, tmp125
	call	fgets@PLT	
# ./main.c:34:         fclose(input_stream);
	mov	rax, QWORD PTR -32[rbp]	# tmp126, input_stream
	mov	rdi, rax	#, tmp126
	call	fclose@PLT	
# ./main.c:35:         FILE *output_stream = fopen(argv[2], "w");
	mov	rax, QWORD PTR -592[rbp]	# tmp127, argv
	add	rax, 16	
# ./main.c:35:         FILE *output_stream = fopen(argv[2], "w");
	mov	rax, QWORD PTR [rax]	
	lea	rsi, .LC5[rip]	
	mov	rdi, rax	
	call	fopen@PLT	
	mov	QWORD PTR -40[rbp], rax	# output_stream, tmp128
# ./main.c:36:         for (int i = 0; i < strlen(arr_str) - 1; ++i) {
	mov	r14d, 0	# i,
# ./main.c:36:         for (int i = 0; i < strlen(arr_str) - 1; ++i) {
	jmp	.L9	
.L10:
# ./main.c:37:         	str[i] = arr_str[i];
	mov	eax, r14d	# tmp130, i
	movzx	edx, BYTE PTR -576[rbp+rax]	
# ./main.c:37:         	str[i] = arr_str[i];
	mov	eax, r14d	# tmp132, i
	mov	BYTE PTR -320[rbp+rax], dl	
# ./main.c:36:         for (int i = 0; i < strlen(arr_str) - 1; ++i) {
	add	r14d, 1	# i,
.L9:
# ./main.c:36:         for (int i = 0; i < strlen(arr_str) - 1; ++i) {
	mov	eax, r14d	# tmp133, i
	movsx	rbx, eax	# _16, tmp133
# ./main.c:36:         for (int i = 0; i < strlen(arr_str) - 1; ++i) {
	lea	rax, -576[rbp]	# tmp134,
	mov	rdi, rax	#, tmp134
	call	strlen@PLT	
# ./main.c:36:         for (int i = 0; i < strlen(arr_str) - 1; ++i) {
	sub	rax, 1	
# ./main.c:36:         for (int i = 0; i < strlen(arr_str) - 1; ++i) {
	cmp	rbx, rax	
	jb	.L10	
# ./main.c:39:         fprintf(output_stream, "%s ", Task(str));
	lea	rax, -320[rbp]	# tmp135,
	mov	rdi, rax	#, tmp135
	call	Task@PLT	
	mov	rdx, rax	
	mov	rax, QWORD PTR -40[rbp]	# tmp136, output_stream
	lea	rsi, .LC6[rip]	
	mov	rdi, rax	#, tmp136
	mov	eax, 0	
	call	fprintf@PLT	
# ./main.c:40:         fclose(output_stream);
	mov	rax, QWORD PTR -40[rbp]	# tmp137, output_stream
	mov	rdi, rax	#, tmp137
	call	fclose@PLT	
# ./main.c:41:         return 0;
	mov	eax, 0	
	jmp	.L15	
.L6:
# ./main.c:43:     printf("Enter \"1\" if you want to generate a random string, or enter any other number if you want to enter the data yourself:");
	lea	rdi, .LC7[rip]	
	mov	eax, 0	
	call	printf@PLT	
# ./main.c:44:     int answer = 0;
	mov	DWORD PTR -60[rbp], 0	# answer,
# ./main.c:45:     scanf("%d", &answer);
	lea	rax, -60[rbp]	# tmp138,
	mov	rsi, rax	#, tmp138
	lea	rdi, .LC8[rip]	
	mov	eax, 0	
	call	__isoc99_scanf@PLT	
# ./main.c:46:     if (answer == 1) {
	mov	eax, DWORD PTR -60[rbp]	# answer.0_20, answer
# ./main.c:46:     if (answer == 1) {
	cmp	eax, 1	# answer.0_20,
	jne	.L11	
# ./main.c:47:         int length = 0;
	mov	r15d, 0	# length,
# ./main.c:48:         printf("Input length (0 < length <= %d):", max_size);
	mov	esi, 256	
	lea	rdi, .LC9[rip]	
	mov	eax, 0	
	call	printf@PLT	
# ./main.c:49:         scanf("%d", &length);
	lea	rax, -64[rbp]	# tmp139,
	mov	rsi, rax	#, tmp139
	lea	rdi, .LC8[rip]	
	mov	eax, 0	
	call	__isoc99_scanf@PLT	
# ./main.c:50:         if (length < 1 || length > max_size) {
	mov	eax, r15d	# length.1_21, length
# ./main.c:50:         if (length < 1 || length > max_size) {
	test	eax, eax	# length.1_21
	jle	.L12	
# ./main.c:50:         if (length < 1 || length > max_size) {
	mov	eax, r15d	# length.2_22, length
# ./main.c:50:         if (length < 1 || length > max_size) {
	cmp	eax, 256	# length.2_22,
	jle	.L13	
.L12:
# ./main.c:51:             printf("Incorrect length = %d\n", length);
	mov	eax, r15d	# length.3_23, length
	mov	esi, eax	#, length.3_23
	lea	rdi, .LC10[rip]	
	mov	eax, 0	
	call	printf@PLT	
# ./main.c:52:             return 0;
	mov	eax, 0	
	jmp	.L15	
.L13:
# ./main.c:54:         printf("\nResult: %s\n", Task_random(length));
	mov	eax, r15d	# length.4_24, length
	mov	edi, eax	#, length.4_24
	call	Task_random@PLT	
	mov	rsi, rax	#, _25
	lea	rdi, .LC2[rip]	
	mov	eax, 0	
	call	printf@PLT	
# ./main.c:55:         return 0;
	mov	eax, 0	
	jmp	.L15	
.L11:
# ./main.c:57:     printf("\nResult: %s\n", Task_file());
	mov	eax, 0	
	call	Task_file@PLT	
	mov	rsi, rax	
	lea	rdi, .LC2[rip]	
	mov	eax, 0	
	call	printf@PLT	
# ./main.c:58:     return 0;
	mov	eax, 0	
.L15:
# ./main.c:59: }
	add	rsp, 584	
	pop	rbx	
	pop	rbp	
	ret	
