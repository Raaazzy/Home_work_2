# rbp-20 - i
# rbp-24 - i
# rbp-32 - input_stream
# rbp-40 - output_stream
# rbp-48 - t_start
# rbp-56 - t_end
# rbp-60 - answer
# rbp-64 - length
# rbp-320 - str
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
	sub	rsp, 320	
	mov	DWORD PTR -308[rbp], edi	# argc, argc
	mov	QWORD PTR -320[rbp], rsi	# argv, argv
# ./main.c:13:     if (argc == 2) {
	cmp	DWORD PTR -308[rbp], 2	# argc,
	jne	.L2	
# ./main.c:14:         time_t t_start = clock();
	call	clock@PLT	
	mov	QWORD PTR -32[rbp], rax	# t_start, tmp106
# ./main.c:15:         printf("String: %s\n", argv[1]);
	mov	rax, QWORD PTR -320[rbp]	# tmp107, argv
	add	rax, 8	# _1,
# ./main.c:15:         printf("String: %s\n", argv[1]);
	mov	rax, QWORD PTR [rax]	# _2, *_1
	mov	rsi, rax	#, _2
	lea	rdi, .LC0[rip]	
	mov	eax, 0	
	call	printf@PLT	
# ./main.c:16:         for (int i = 0; i < 25000000; ++i) {
	mov	DWORD PTR -4[rbp], 0	# i,
# ./main.c:16:         for (int i = 0; i < 25000000; ++i) {
	jmp	.L3	
.L4:
# ./main.c:17:             Task(argv[1]);
	mov	rax, QWORD PTR -320[rbp]	# tmp108, argv
	add	rax, 8	# _3,
# ./main.c:17:             Task(argv[1]);
	mov	rax, QWORD PTR [rax]	# _4, *_3
	mov	rdi, rax	#, _4
	call	Task@PLT	
# ./main.c:16:         for (int i = 0; i < 25000000; ++i) {
	add	DWORD PTR -4[rbp], 1	# i,
.L3:
# ./main.c:16:         for (int i = 0; i < 25000000; ++i) {
	cmp	DWORD PTR -4[rbp], 24999999	# i,
	jle	.L4	
# ./main.c:19:         time_t t_end = clock();
	call	clock@PLT	
	mov	QWORD PTR -40[rbp], rax	# t_end, tmp109
# ./main.c:20:         printf("Program execution time: %d ms", (int) (difftime(t_end, t_start)) / 1000);
	mov	rdx, QWORD PTR -32[rbp]	# tmp110, t_start
	mov	rax, QWORD PTR -40[rbp]	# tmp111, t_end
	mov	rsi, rdx	#, tmp110
	mov	rdi, rax	#, tmp111
	call	difftime@PLT	
# ./main.c:20:         printf("Program execution time: %d ms", (int) (difftime(t_end, t_start)) / 1000);
	cvttsd2si	eax, xmm0	# _6, _5
# ./main.c:20:         printf("Program execution time: %d ms", (int) (difftime(t_end, t_start)) / 1000);
	movsx	rdx, eax	# tmp112, _6
	imul	rdx, rdx, 274877907	# tmp113, tmp112,
	shr	rdx, 32	# tmp114,
	sar	edx, 6	# tmp115,
	sar	eax, 31	# tmp116,
	sub	edx, eax	# tmp115, tmp116
	mov	eax, edx	# _7, tmp115
	mov	esi, eax	#, _7
	lea	rdi, .LC1[rip]	
	mov	eax, 0	
	call	printf@PLT	
# ./main.c:21:         printf("\nResult: %s\n", Task(argv[1]));
	mov	rax, QWORD PTR -320[rbp]	# tmp117, argv
	add	rax, 8	# _8,
# ./main.c:21:         printf("\nResult: %s\n", Task(argv[1]));
	mov	rax, QWORD PTR [rax]	# _9, *_8
	mov	rdi, rax	#, _9
	call	Task@PLT	
	mov	rsi, rax	#, _10
	lea	rdi, .LC2[rip]
	mov	eax, 0	
	call	printf@PLT	
# ./main.c:22:         return 0;
	mov	eax, 0	# _24,
	jmp	.L13	
.L2:
# ./main.c:25:     if (argc == 3) {
	cmp	DWORD PTR -308[rbp], 3	# argc,
	jne	.L6	
# ./main.c:27:         FILE *input_stream = fopen(argv[1], "r");
	mov	rax, QWORD PTR -320[rbp]	# tmp118, argv
	add	rax, 8	# _11,
# ./main.c:27:         FILE *input_stream = fopen(argv[1], "r");
	mov	rax, QWORD PTR [rax]	# _12, *_11
	lea	rsi, .LC3[rip]	
	mov	rdi, rax	#, _12
	call	fopen@PLT	
	mov	QWORD PTR -16[rbp], rax	# input_stream, tmp119
# ./main.c:28:         if (input_stream == NULL) {
	cmp	QWORD PTR -16[rbp], 0	# input_stream,
	jne	.L7	
# ./main.c:29:             printf("Error opening file. Press any key to continue");
	lea	rdi, .LC4[rip]	
	mov	eax, 0	
	call	printf@PLT	
# ./main.c:30:             getchar();
	call	getchar@PLT	
# ./main.c:31:             return 0;
	mov	eax, 0	# _24,
	jmp	.L13	
.L7:
# ./main.c:33:         fgets(arr_str, sizeof(arr_str), input_stream);
	mov	rdx, QWORD PTR -16[rbp]	# tmp120, input_stream
	lea	rax, -304[rbp]	# tmp121,
	mov	esi, 256	
	mov	rdi, rax	#, tmp121
	call	fgets@PLT	
# ./main.c:34:         fclose(input_stream);
	mov	rax, QWORD PTR -16[rbp]	# tmp122, input_stream
	mov	rdi, rax	#, tmp122
	call	fclose@PLT	
# ./main.c:35:         FILE *output_stream = fopen(argv[2], "w");
	mov	rax, QWORD PTR -320[rbp]	# tmp123, argv
	add	rax, 16	# _13,
# ./main.c:35:         FILE *output_stream = fopen(argv[2], "w");
	mov	rax, QWORD PTR [rax]	# _14, *_13
	lea	rsi, .LC5[rip]	
	mov	rdi, rax	#, _14
	call	fopen@PLT	
	mov	QWORD PTR -24[rbp], rax	# output_stream, tmp124
# ./main.c:36:         fprintf(output_stream, "%s ", Task(arr_str));
	lea	rax, -304[rbp]	# tmp125,
	mov	rdi, rax	#, tmp125
	call	Task@PLT	
	mov	rdx, rax	# _15,
	mov	rax, QWORD PTR -24[rbp]	# tmp126, output_stream
	lea	rsi, .LC6[rip]	#,
	mov	rdi, rax	#, tmp126
	mov	eax, 0	
	call	fprintf@PLT	
# ./main.c:37:         fclose(output_stream);
	mov	rax, QWORD PTR -24[rbp]	# tmp127, output_stream
	mov	rdi, rax	#, tmp127
	call	fclose@PLT	
# ./main.c:38:         return 0;
	mov	eax, 0	# _24,
	jmp	.L13	
.L6:
# ./main.c:40:     printf("Enter \"1\" if you want to generate a random string, or enter any other number if you want to enter the data yourself:");
	lea	rdi, .LC7[rip]	
	mov	eax, 0
	call	printf@PLT	
# ./main.c:41:     int answer = 0;
	mov	DWORD PTR -44[rbp], 0	# answer,
# ./main.c:42:     scanf("%d", &answer);
	lea	rax, -44[rbp]	# tmp128,
	mov	rsi, rax	#, tmp128
	lea	rdi, .LC8[rip]	
	mov	eax, 0	
	call	__isoc99_scanf@PLT	
# ./main.c:43:     if (answer == 1) {
	mov	eax, DWORD PTR -44[rbp]	# answer.0_16, answer
# ./main.c:43:     if (answer == 1) {
	cmp	eax, 1	# answer.0_16,
	jne	.L9	
# ./main.c:44:         int length = 0;
	mov	DWORD PTR -48[rbp], 0	# length,
# ./main.c:45:         printf("Input length (0 < length <= %d):", max_size);
	mov	esi, 256	
	lea	rdi, .LC9[rip]	
	mov	eax, 0	
	call	printf@PLT	
# ./main.c:46:         scanf("%d", &length);
	lea	rax, -48[rbp]	# tmp129,
	mov	rsi, rax	#, tmp129
	lea	rdi, .LC8[rip]	
	mov	eax, 0	
	call	__isoc99_scanf@PLT	
# ./main.c:47:         if (length < 1 || length > max_size) {
	mov	eax, DWORD PTR -48[rbp]	# length.1_17, length
# ./main.c:47:         if (length < 1 || length > max_size) {
	test	eax, eax	# length.1_17
	jle	.L10	
# ./main.c:47:         if (length < 1 || length > max_size) {
	mov	eax, DWORD PTR -48[rbp]	# length.2_18, length
# ./main.c:47:         if (length < 1 || length > max_size) {
	cmp	eax, 256	# length.2_18,
	jle	.L11	
.L10:
# ./main.c:48:             printf("Incorrect length = %d\n", length);
	mov	eax, DWORD PTR -48[rbp]	# length.3_19, length
	mov	esi, eax	#, length.3_19
	lea	rdi, .LC10[rip]	
	mov	eax, 0	
	call	printf@PLT	
# ./main.c:49:             return 0;
	mov	eax, 0	# _24,
	jmp	.L13	
.L11:
# ./main.c:51:         printf("\nResult: %s\n", Task_random(length));
	mov	eax, DWORD PTR -48[rbp]	# length.4_20, length
	mov	edi, eax	#, length.4_20
	call	Task_random@PLT	
	mov	rsi, rax	#, _21
	lea	rdi, .LC2[rip]	
	mov	eax, 0	
	call	printf@PLT	
# ./main.c:52:         return 0;
	mov	eax, 0	# _24,
	jmp	.L13	
.L9:
# ./main.c:54:     printf("\nResult: %s\n", Task_file());
	mov	eax, 0	
	call	Task_file@PLT	
	mov	rsi, rax	#, _22
	lea	rdi, .LC2[rip]	
	mov	eax, 0	
	call	printf@PLT	
# ./main.c:55:     return 0;
	mov	eax, 0	# _24,
.L13:
# ./main.c:56: }
	leave	
	ret	
