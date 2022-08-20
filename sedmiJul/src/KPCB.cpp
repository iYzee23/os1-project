//
// Created by os on 6/22/22.
//

#include "../h/KPCB.hpp"
#include "../h/KRiscv.hpp"

KPCB* KPCB::running = nullptr;
int KPCB::counter = 0;
int KPCB::statID = 0;
time_t KPCB::timeSliceCounter = 0;

void KPCB::yield() {
    asm volatile ("li a0, 0x13");
    asm volatile ("ecall");
}

void KPCB::dispatch() {
    KPCB* old = running;
    if (!old->isFinished() && !old->isWaiting() && !old->isErr() && !old->isSleeping()) KScheduler::put(old);
    running = KScheduler::get();
    KPCB::timeSliceCounter = 0;

    if (old->isFinished()) {
        Context c = old->context;
        KMemoryAllocator::mem_free(old->stack);
        old->stack = nullptr;
        KPCB::contextSwitch(&c, &running->context);
    }
    else if (running != old) KPCB::contextSwitch(&old->context, &running->context);
}

KPCB *KPCB::createThread(KPCB::Body body, void* args, void* stek) {
    return new KPCB(body, args, stek);
}

KPCB *KPCB::createThread(KPCB::Body body) {
    return new KPCB(body);
}

void KPCB::threadWrapper() {
    KRiscv::popSppSpie();
    running->body(running->args);
    running->setFinished(true);
    KPCB::yield();
}

KPCB::KPCB(Body body, void* args, void* stek) :
    body(body), ID(statID++), args(args), stack(body != nullptr ? (char*)stek : nullptr),
    context({body != nullptr ? /*(uint64)body*/ (uint64)&threadWrapper : 0, stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0})
    {
        if (body != nullptr) {
            //KScheduler::put(this);
            counter++;
        }
    }

KPCB::KPCB(Body body) :
    body(body), ID(statID++), args(nullptr), stack(body != nullptr ? new char[STACK_SIZE]: nullptr),
    context({body != nullptr ? /*(uint64)body*/ (uint64)&threadWrapper : 0, stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0})
    {
        if (body != nullptr) {
            //KScheduler::put(this);
            counter++;
        }
    }