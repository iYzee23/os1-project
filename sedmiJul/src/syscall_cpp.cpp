//
// Created by os on 6/22/22.
//

#include "../h/syscall_cpp.hpp"
#include "../h/KPCB.hpp"

void* operator new(size_t size) {
    return mem_alloc(size);
}

void operator delete (void* addr) {
    mem_free(addr);
}

void* operator new[] (size_t size) {
    return mem_alloc(size);
}

void operator delete[] (void* addr) {
    mem_free(addr);
}

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create_CPP(&myHandle, body, arg);
}

Thread::~Thread() {
    myHandle->setFinished(true);
}

int Thread::start() {
    return myHandle->startIt();
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t t) {
    return time_sleep(t);
}

Thread::Thread() {
    thread_create_CPP(&myHandle, &wrapper, this);
}

void Thread::wrapper(void *args) {
    Thread* thr = (Thread*)args;
    if (thr) thr->run();
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}

PeriodicThread::PeriodicThread(time_t period)
    : Thread(&wrapperPeriodic, new pStruct({this, period})) {

}

void PeriodicThread::wrapperPeriodic(void *args) {
    pStruct* pstr = (pStruct*) args;
    if (pstr) {
        while (true) {
            pstr->pthr->periodicActivation();
            time_sleep(pstr->pperiod);
        }
    }
}
