//
// Created by os on 6/22/22.
//

#ifndef PROJECT_BASE_V1_1_KPCB_HPP
#define PROJECT_BASE_V1_1_KPCB_HPP

#include "../lib/hw.h"
#include "../lib/mem.h"
#include "KScheduler.hpp"
#include "KMemoryAllocator.hpp"

class KPCB {
public:
    ~KPCB() { delete[] stack; }
    friend class KScheduler;
    friend class KSemaphore;
    friend class KRiscv;
    friend class KSleep;

    void* operator new(size_t size) {
        size_t sizeBlock = (size + 16) / MEM_BLOCK_SIZE + ((size + 16) % MEM_BLOCK_SIZE ? 1 : 0);
        return KMemoryAllocator::mem_alloc(sizeBlock);
        //return __mem_alloc(size);
    }
    void* operator new[](size_t size) {
        size_t sizeBlock = (size + 16) / MEM_BLOCK_SIZE + ((size + 16) % MEM_BLOCK_SIZE ? 1 : 0);
        return KMemoryAllocator::mem_alloc(sizeBlock);
        //return __mem_alloc(size);
    }
    void operator delete(void* addr) {
        KMemoryAllocator::mem_free(addr);
        //__mem_free(addr);
    }
    void operator delete[](void* addr) {
        KMemoryAllocator::mem_free(addr);
        //__mem_free(addr);
    }

    using Body = void (*)(void*);
    static KPCB* createThread(Body body, void* args, void* stek);
    static KPCB* createThread(Body body);
    static void yield();
    static void dispatch();
    static KPCB* running;
    static int counter;
    static int statID;

    bool isFinished() const { return finished; }
    bool isSleeping() const { return sleeping; }
    bool isWaiting() const { return waiting; }
    bool isErr() const { return err; }
    void setFinished(bool val) {
        if (finished) return;
        finished = val;
        counter--;
    }
    void setSleeping(bool val) { sleeping = val; }
    void setWaiting(bool val) { waiting = val; }
    void setErr(bool val) { err = val; }
    int startIt() {
        if (started) return -1;
        started = true;
        KScheduler::put(this);
        return 0;
    }
    void setSleepCounter(time_t t) { timeSleepCounter = t; }
private:
    explicit KPCB(Body);
    explicit KPCB(Body, void*, void*);

    struct Context {
        uint64 ra;
        uint64 sp;
    };
    Body body;
    int ID;
    void* args;
    uint64* stack;
    Context context;
    bool finished = false;
    bool sleeping = false;
    bool waiting = false;
    bool err = false;
    bool started = false;
    KPCB* nextScheduler = nullptr;
    KPCB* nextSleeping = nullptr;
    KPCB* nextSemaphore = nullptr;

    time_t timeSleepCounter = 0;
    static time_t timeSliceCounter;
    static uint64 constexpr TIME_SLICE = DEFAULT_TIME_SLICE;
    static uint64 constexpr STACK_SIZE = 2 * DEFAULT_STACK_SIZE;
    static void contextSwitch(Context* old, Context* runn);
    static void threadWrapper();
};


#endif //PROJECT_BASE_V1_1_KPCB_HPP
