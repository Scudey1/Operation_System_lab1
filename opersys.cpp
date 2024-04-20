#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include "fib.h"

// Функция, которую будет выполнять каждый поток
void* fibonacci_thread(void* arg) {
    int n = *((int*)arg);
    printf("%d ", fibonacci(n));
    pthread_exit(NULL);
}

int main() {
    int n = 10;
    pthread_t threads[n];

    // Создание и запуск потоков
    for (int i = 0; i < n; i++) {
        pthread_create(&threads[i], NULL, fibonacci_thread, (void*)&i);
    }

    // Ожидание завершения потоков
    for (int i = 0; i < n; i++) {
        pthread_join(threads[i], NULL);
    }

    system("pause");
    return 0;
}
