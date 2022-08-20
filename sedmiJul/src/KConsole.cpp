//
// Created by os on 6/22/22.
//

#include "../h/KConsole.hpp"
#include "../h/KSemaphore.hpp"

KConsole* KConsole::inBuff = nullptr;
KConsole* KConsole::outBuff = nullptr;

KConsole::KConsole(int _cap) : cap(_cap + 1), head(0), tail(0) {
    size_t sizeBlock = (sizeof(char)*cap + 16) / MEM_BLOCK_SIZE + ((sizeof(char)*cap + 16) % MEM_BLOCK_SIZE ? 1 : 0);
    buffer = (char*)KMemoryAllocator::mem_alloc(sizeBlock);
    itemAvailable = KSemaphore::createSemaphore(0);
    spaceAvailable = KSemaphore::createSemaphore(_cap);
    mutexHead = KSemaphore::createSemaphore(1);
    mutexTail = KSemaphore::createSemaphore(1);
}

KConsole::~KConsole() {
    KMemoryAllocator::mem_free(buffer);
    delete itemAvailable;
    delete spaceAvailable;
    delete mutexTail;
    delete mutexHead;
}

void KConsole::put(char val) {
    spaceAvailable->wait();
    mutexTail->wait();

    buffer[tail] = val;
    tail = (tail + 1) % cap;

    mutexTail->signal();
    itemAvailable->signal();

}

int KConsole::get() {
    itemAvailable->wait();
    mutexHead->wait();

    char ret = buffer[head];
    head = (head + 1) % cap;

    mutexHead->signal();
    spaceAvailable->signal();
    return ret;
}

int KConsole::getCnt() {
    int ret;

    mutexHead->wait();
    mutexTail->wait();

    if (tail >= head) {
        ret = tail - head;
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    mutexHead->signal();
    return ret;
}

void KConsole::initConsoleBuffers() {
    inBuff = new KConsole(BUFF_SIZE);
    outBuff = new KConsole(BUFF_SIZE);
}

void KConsole::deinitConsoleBuffers() {
    delete inBuff;
    delete outBuff;
}
