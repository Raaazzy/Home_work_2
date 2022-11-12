#include <stdio.h>
#include <string.h>
#include <time.h>

#define max_size 256

extern char * Task(const char *str);
extern char * Task_random(int length);
extern char * Task_file();

int main(int argc, char *argv[]) {
    // Ввод с помощью консоли
    if (argc == 2) {
        time_t t_start = clock();
        printf("String: %s\n", argv[1]);
        for (int i = 0; i < 25000000; ++i) {
            Task(argv[1]);
        }
        time_t t_end = clock();
        printf("Program execution time: %d ms", (int) (difftime(t_end, t_start)) / 1000);
        printf("\nResult: %s\n", Task(argv[1]));
        return 0;
    }
    // Ввод с помощью файла
    if (argc == 3) {
        char arr_str[256], str[256];
        FILE *input_stream = fopen(argv[1], "r");
        if (input_stream == NULL) {
            printf("Error opening file. Press any key to continue");
            getchar();
            return 0;
        }
        fgets(arr_str, sizeof(arr_str), input_stream);
        fclose(input_stream);
        FILE *output_stream = fopen(argv[2], "w");
        fprintf(output_stream, "%s ", Task(arr_str));
        fclose(output_stream);
        return 0;
    }
    printf("Enter \"1\" if you want to generate a random string, or enter any other number if you want to enter the data yourself:");
    int answer = 0;
    scanf("%d", &answer);
    if (answer == 1) {
        int length = 0;
        printf("Input length (0 < length <= %d):", max_size);
        scanf("%d", &length);
        if (length < 1 || length > max_size) {
            printf("Incorrect length = %d\n", length);
            return 0;
        }
        printf("\nResult: %s\n", Task_random(length));
        return 0;
    }
    printf("\nResult: %s\n", Task_file());
    return 0;
}
