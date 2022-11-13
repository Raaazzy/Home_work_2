#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#define SET "QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm123456789"

char * Task(const char *str) {
	int len = strlen(str);
    for (int i = 0; i < len; ++i) {
        if (str[i] != str[len - 1 - i]) {
            return "NO";
        }
    }
    return "YES";
}

char * Task_random(int length) {
    char str[256];
    int set_len = strlen(SET);
    srand(clock());
    for (int i = 0; i < length; ++i) {
        str[i] = SET[rand() % set_len];
    }
    str[length] = '\0';
    printf("Generated string: %s", str);
    return Task(str);
}

char * Task_file() {
    char str[256];
    printf("Your string (you can enter a maximum of 256 characters):");
    fflush(stdin);
    getchar();
    fgets(str, 256, stdin);
    str[strlen(str)-1] = '\0';
    return Task(str);
}
