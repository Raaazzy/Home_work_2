# ИДЗ №2 по АВС (на 9 баллов)
Омирбекова Дария, группа БПИ-217<br>
Вариант 15

# Используемые файлы:
- До модификации:
> главный файл с функцией main - [main.c](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%B4%D0%BE%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/main.c), [main.s](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%B4%D0%BE%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/main.s)<br>
побочный файл с функцией task для проверки строки на палиндром - [task.c](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%B4%D0%BE%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/task.c), [task.s](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%B4%D0%BE%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/task.s)<br>
- После модификации:
> главный файл с функцией main - [main.c](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/main.c), [main.s](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/main.s)<br>
побочный файл с функцией task для проверки строки на палиндром - [task.c](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/task.c), [task.s](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/task.s)<br>

# <a name="explanation">Пояснения к запуску и эксплуатации:</a>
Чтобы запустить программу необходимо с необходимым режимом следует ввести следующие команды:<br>
- С использованием аргументов командной строки:

Если нужно работать с вводом с консоли:
```s
./program.exe string
# где string - это строка, которую необходимо проверить на палиндром
```
Если нужно работать с вводом с файла:
```s
./program.exe input.txt output.txt
# где input.txt - это название файла, с которого нужно считать информацию
# где output.txt - это название файла, в который нужно записать информацию
```
- Без использования аргументов командной строки:

Если нужно работать с рандомно сгенерированной строкой или введенной через консоль:
```s
./program.exe
```

# На 4 балла:
### - Приведено решение задачи на C.
> главный файл с функцией main (после модификации) - [main.c](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/main.c)<br>
побочный файл с функцией task для проверки строки на палиндром (после модификации) - [task.c](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/task.c)<br>

### - В полученную ассемблерную программу, откомпилированную без оптимизирующих и отладочных опций, добавлены комментарии, поясняющие эквивалентное представление переменных в программе на C.
> главный файл с функцией main (после модификации) - [main.s](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/main.s)<br>
побочный файл с функцией task для проверки строки на палиндром (после модификации) - [task.s](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/task.s)<br>

### - Из ассемблерной программы убраны лишние макросы за счет использования соответствующих аргументов командной строки:
> главный файл с функцией main (после модификации) - [main.s](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/main.s)<br>
побочный файл с функцией task для проверки строки на палиндром (после модификации) - [task.s](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/task.s)<br>

Убраны следующие строчки кода в файле main.s:<br>
```s
	endbr64 
	
	cdqe

	.size	main, .-main
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
```
Убраны следующие строчки кода в файле task.s:<br>
```s
	endbr64
	
	cdqe
	
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
```

### - Модифицированная ассемблерная программа отдельно откомпилирована и скомпонована без использования опций отладки.
Скомпоновала программу, с помощью команд:
```s
gcc -masm=intel -fno-asynchronous-unwind-tables -fno-jump-tables -fno-stack-protector -fno-exceptions -fverbose-asm ./main.c -S -o ./main.s
gcc -masm=intel -fno-asynchronous-unwind-tables -fno-jump-tables -fno-stack-protector -fno-exceptions -fverbose-asm ./task.c -S -o ./task.s
gcc ./main.s -c -o main.o
gcc ./task.s -c -o task.o
gcc ./task.o main.o -o program.exe
```

### - Представлено полное тестовое покрытие, дающее одинаковый результат на обоих программах.
Программы были протестированы на следующих тестовых данных:
```
a
1
abccba
abcba
qwe
asdfg
```
- Все тесты обе программы выполнили успешно, выдав одинаковый результат:
1. ![image](https://user-images.githubusercontent.com/111382627/201492245-eff00004-f7dd-4b5e-b7b9-d160776fd10e.png)
2. ![image](https://user-images.githubusercontent.com/111382627/201492259-0ec720b1-db87-445b-8c16-c6fa0892c642.png)
3. ![image](https://user-images.githubusercontent.com/111382627/201492272-dbeb6ea0-ad8d-424e-8752-542b471fe8ca.png)
4. ![image](https://user-images.githubusercontent.com/111382627/201492289-89ff0a28-1b64-4399-af75-cafe23883646.png)
5. ![image](https://user-images.githubusercontent.com/111382627/201492311-4b0f9b30-fc17-467e-a2fd-72571cd488c0.png)
6. ![image](https://user-images.githubusercontent.com/111382627/201492325-efeb5e34-0ba0-4e1c-9b22-94d3e4ac90e6.png)

# На 5 баллов:
### - В реализованной программе использовать функции с передачей данных через параметры.
> файл с функцией task - [task.c](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/task.c)<br>

Для реализации данного пункта использовалась отдельные функции Task (с параметром char *str) и Task_random (с параметром int length):
```c
char * Task(const char *str)
char * Task_random(int length)

```

### - Использовать локальные переменные.
> главный файл с функцией main - [main.c](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/main.c)<br>
побочный файл с функцией task - [task.c](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/task.c)<br>

Локальные переменные, которые были использованы в функции main:
```c
int i;
int length;
FILE *input_stream;
FILE *output_stream;
time_t t_end;
time_t t_start;
int answer;
char arr_str[256];
char str[256];
```
Локальные переменные, которые были использованы в функции task:
```c
int set_len;
int i;
int i;
int length;
char str[256];
char str[256];
```
### - В ассемблерную программу при вызове функции добавить комментарии, описывающие передачу фактических параметров и перенос возвращаемого результата.
> главный файл с функцией main - [main.s](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/main.s)<br>
побочный файл с функцией task - [task.s](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/task.s)<br>

### - В функциях для формальных параметров добавить комментарии, описывающие связь между параметрами языка Си и регистрами (стеком).
> главный файл с функцией main - [main.s](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/main.s)<br>
побочный файл с функцией task - [task.s](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/task.s)<br>

# На 6 баллов:
### - Рефакторинг программы на ассемблере за счет максимального использования регистров процессора.
Все локальные переменные заменены на регистры. Добавлены соответствующие комментарии в коде программ.<br>
> В файле с функцией main - [main.s](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/main.s):<br>
```
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
```
> В файле с функцией task - [task.s](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/task.s):<br>
```
# r14d - i (Task)
# r13d - set_len
# rbp-24 - str (Task)
# rbp-256 - str (Task_file)
# rbp-272 - str (Task_random)
# r15d - length
```

### - Добавление комментариев в разработанную программу, поясняющих эквивалентное использование регистров вместо переменных исходной программы на C.
> главный файл с функцией main - [main.s](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/main.s)<br>
побочный файл с функцией task - [task.s](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/task.s)<br>

### - Представлены тестовые прогоны для разработанной программы.
Программа была протестирована на следующих тестовых данных:
```
a
1
abccba
abcba
qwe
asdfg
```
- Все тесты программа выполнила успешно, выдав корректный результат:
1. ![image](https://user-images.githubusercontent.com/111382627/201492245-eff00004-f7dd-4b5e-b7b9-d160776fd10e.png)
2. ![image](https://user-images.githubusercontent.com/111382627/201492259-0ec720b1-db87-445b-8c16-c6fa0892c642.png)
3. ![image](https://user-images.githubusercontent.com/111382627/201492272-dbeb6ea0-ad8d-424e-8752-542b471fe8ca.png)
4. ![image](https://user-images.githubusercontent.com/111382627/201492289-89ff0a28-1b64-4399-af75-cafe23883646.png)
5. ![image](https://user-images.githubusercontent.com/111382627/201492311-4b0f9b30-fc17-467e-a2fd-72571cd488c0.png)
6. ![image](https://user-images.githubusercontent.com/111382627/201492325-efeb5e34-0ba0-4e1c-9b22-94d3e4ac90e6.png)

### - Сопоставим размеры программы до модификации и после:
- В модифицированной программе содержится приблизительно 415 строк кода без учета комментариев. При этом ее вес составляет 14 KiB.<br>
- В не модифицированной программе содержиться приблизительно 475 строк кода без учета комментариев. При этом ее вес составляет 15 KiB.<br>


# На 7 баллов:
### - Реализация программы на ассемблере, полученной после рефакторинга, в виде двух или более единиц компиляции.
Было получено 2 единицы компиляции: 
> главный файл с функцией main - [main.s](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/main.s)<br>
побочный файл с функцией task для определения палиндрома - [task.s](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/task.s)<br>

Программа скомпанована с помощью команд:
```s
gcc -masm=intel -fno-asynchronous-unwind-tables -fno-jump-tables -fno-stack-protector -fno-exceptions -fverbose-asm ./main.c -S -o ./main.s
gcc -masm=intel -fno-asynchronous-unwind-tables -fno-jump-tables -fno-stack-protector -fno-exceptions -fverbose-asm ./task.c -S -o ./task.s
gcc ./main.s -c -o main.o
gcc ./task.s -c -o task.o
gcc ./task.o main.o -o program.exe
```
### - Задание файлов с исходными данными и файла для вывода результатов с использованием аргументов командной строки.
> главный файл с функцией main - [main.c](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/main.c)<br>
побочный файл с функцией task - [task.c](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/task.c)<br>

Данный пункт реализован с помощью добавления фрагмента кода в функцию main:
```c
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
for (int i = 0; i < strlen(arr_str) - 1; ++i) {
	str[i] = arr_str[i];
}
fprintf(output_stream, "%s ", Task(str));
fclose(output_stream);
```

### - Результат работы с тестовыми данными:
С данными файлами можно протестировать программу лично: [тестовые данные](https://github.com/Raaazzy/Home_work_2/tree/main/%D1%82%D0%B5%D1%81%D1%82%D0%BE%D0%B2%D1%8B%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5)<br>

Тип входных данных: строка, состоящая из символов ASCII;<br>
Тип выходных данных: строка "YES" или "NO".<br>

Если входные данные поступили из файла, то и выведутся в файл.<br>
Если входные данные поступили из консоли, то и будут вывеены в консоль.<br>

![image](https://user-images.githubusercontent.com/111382627/201501596-d9194038-8553-4eee-abfc-9dec1b116015.png)
![image](https://user-images.githubusercontent.com/111382627/201501623-1fa6ad7e-1625-4509-85c2-629d53aa1fd8.png)
![image](https://user-images.githubusercontent.com/111382627/201501648-f8cbaac1-702a-4b86-afde-e4afdb284464.png)
![image](https://user-images.githubusercontent.com/111382627/201501686-a805267c-822f-400d-8b2f-725c7b72fa10.png)

# На 8 баллов:
### - Добавлен генератор случайных наборов данных, расширяющих возможности тестирования:
> главный файл с функцией main - [main.c](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/main.c)<br>
побочный файл с функцией task - [task.c](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/task.c)<br>

Данный пункт реализован с помощью добавления фрагмента кода в функцию main:
```c
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
```

- Тестирование программы прошло успешно:
![image](https://user-images.githubusercontent.com/111382627/201501739-150c56e4-bf72-4c60-937d-6a356e7b3e9d.png)
![image](https://user-images.githubusercontent.com/111382627/201501755-4c568ec9-e7d4-4cb1-9a83-a95c184ee813.png)
![image](https://user-images.githubusercontent.com/111382627/201501770-2558e55e-5312-4405-8ff7-94f1a5b8c41e.png)
![image](https://user-images.githubusercontent.com/111382627/201501788-c49ef691-6634-4f43-b1af-7f3e580ea1b1.png)
![image](https://user-images.githubusercontent.com/111382627/201501800-bb9d15e9-b2b2-4c92-b3a9-df04517bdc49.png)

### - Генератор подключен к программе с выбором в командной строке варианта ввода данных:
> главный файл с функцией main - [main.c](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/main.c)<br>
побочный файл с функцией task - [task.c](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/task.c)<br>

Проверяю количество элементов введенных в консоль:<br>
- если равно 2, то значит, что пользователь выбрал ввод с консоли.<br>
- если равен 3, то значит, что пользователь выбрал ввод с файла.<br>
```c
        if (argc == 2) {}
        if (argc == 3) {}
```
А какие именно аргументы стоит вводить можно посмотреть [здесь](#explanation).

### - Добавены замеры во времени, которые не учитывают время ввода и вывода данных.
> главный файл с функцией main - [main.c](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/main.c)<br>
побочный файл с функцией task - [task.c](https://github.com/Raaazzy/Home_work_2/blob/main/%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BC%D0%BE%D0%B4%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8/task.c)<br>

Данный пункт осуществлен с помощью добавления таймера в функцию main:
```c
// Таймер
time_t t_start = clock();
for (int i = 0; i < 25000000; ++i) {
	Task(argv[1]);
}
time_t t_end = clock();
printf("Program execution time: %d ms", (int) (difftime(t_end, t_start)) / 1000);
```

- По результатом замеров, было выявлено, что модифицированная программа работает быстрее примерно в 2 раза:<br>
> Не модифицированная программа:<br>
![image](https://user-images.githubusercontent.com/111382627/201501078-d499626a-a9ac-4618-a402-afd3fb933ec9.png)
Модифицированная программа:<br>
![image](https://user-images.githubusercontent.com/111382627/201501086-93f51aa8-a223-4156-acf3-09251cde9dc2.png)

> Не модифицированная программа:<br>
![image](https://user-images.githubusercontent.com/111382627/201501231-9c55e9c0-2bf6-4b74-a53a-6d09fbb32152.png)
Модифицированная программа:<br>
![image](https://user-images.githubusercontent.com/111382627/201501137-50e89391-2ec1-4675-91b4-9224bf922aec.png)

> Не модифицированная программа:<br>
![image](https://user-images.githubusercontent.com/111382627/201501243-b28c98bc-54bc-4044-80c8-0b4a2d95f54b.png)
Модифицированная программа:<br>
![image](https://user-images.githubusercontent.com/111382627/201501150-f6014c80-813d-4728-bf50-9b30931a698f.png)


### Сравнение программы до и после модификации по весу и скорости выполнения задач:

|                        |          Вес          |    Скорость            |    Количество строк    |
|:----------------------:|:---------------------:|:----------------------:|:----------------------:|
|          -O            |        7,3 KiB        |        1345 ms         |      447               |
|         -O2            |         8 KiB         |        516 ms          |      487               |
|         -O3            |        9,2 KiB        |        498 ms          |       573              |
|         -Os            |        6,4 KiB        |        1657 ms         |      400               |
