//
// Created by os on 6/22/22.
//

#ifndef PROJECT_BASE_V1_1_KSEMAPHORE_HPP
#define PROJECT_BASE_V1_1_KSEMAPHORE_HPP

#include "../lib/hw.h"
#include "KPCB.hpp"

class KSemaphore {
public:
    ~KSemaphore() {
        while (head) {
            KPCB* old = head;
            head = head->nextSemaphore;
            old->nextSemaphore = nullptr;
            old->setErr(true);
            old->setWaiting(false);
            KScheduler::put(old);
        }
    }

    void wait() { if(--val < 0) block(); }
    void signal() { if (val++ < 0) deblock(); }
    int value() const { return val; }
    static KSemaphore* createSemaphore(uint64 init);

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
protected:
    void block();
    void deblock();
    void put(KPCB* kpcb);
    KPCB* get();
private:
    explicit KSemaphore(uint64 init) : val(init) {}
    int val;
    KPCB* head = nullptr;
    KPCB* tail = nullptr;
};


#endif //PROJECT_BASE_V1_1_KSEMAPHORE_HPP
