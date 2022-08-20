//
// Created by os on 6/22/22.
//

#ifndef PROJECT_BASE_V1_1_SYSCALL_C_H
#define PROJECT_BASE_V1_1_SYSCALL_C_H

#include "../lib/hw.h"

void* mem_alloc(size_t size);   //0x01
int mem_free(void*);            //0x02

void userMode();                //0x05
void kernelMode();              //0x06

class KPCB;
typedef KPCB* thread_t;
int thread_create_CPP(
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
);                              //0x10
int thread_create(
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
);                              //0x11
int thread_exit();              //0x12
void thread_dispatch();         //0x13

class KSemaphore;
typedef KSemaphore* sem_t;
int sem_open(
        sem_t* handle,
        unsigned init
);                              //0x21
int sem_close(sem_t handle);    //0x22
int sem_wait(sem_t id);         //0x23
int sem_signal(sem_t id);       //0x24

typedef unsigned long time_t;
int time_sleep(time_t);         //0x31

const int EOF = -1;
char getc();                    //0x41
void putc(char);                //0x42
void readCons();                //0x43


#endif //PROJECT_BASE_V1_1_SYSCALL_C_H
