//
// Created by os on 6/22/22.
//

#ifndef PROJECT_BASE_V1_1_SYSCALL_CPP_H
#define PROJECT_BASE_V1_1_SYSCALL_CPP_H

#include "syscall_c.hpp"

void* operator new (size_t);
void operator delete (void*);
void* operator new[] (size_t);
void operator delete[] (void*);

class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
private:
    thread_t myHandle;
    static void wrapper(void* args);
};

class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
private:
    sem_t myHandle;
};

class PeriodicThread : public Thread {
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    static void wrapperPeriodic(void* args);
};

class Console {
public:
    static char getc ();
    static void putc (char);
};

typedef struct PStruct {
    PeriodicThread* pthr;
    time_t pperiod;
} pStruct;

#endif //PROJECT_BASE_V1_1_SYSCALL_CPP_H
