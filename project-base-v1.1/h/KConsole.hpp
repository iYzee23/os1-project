//
// Created by os on 6/22/22.
//

#ifndef PROJECT_BASE_V1_1_KCONSOLE_HPP
#define PROJECT_BASE_V1_1_KCONSOLE_HPP

#include "../lib/hw.h"
#include "../h/KMemoryAllocator.hpp"
class KSemaphore;

class KConsole {
private:
    int cap;
    char* buffer;
    int head, tail;

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

    KSemaphore* spaceAvailable;
    KSemaphore* itemAvailable;
    KSemaphore* mutexHead;
    KSemaphore* mutexTail;

public:
    KConsole(int _cap);
    ~KConsole();

    void put(char val);
    int get();
    int getCnt();

    static void initConsoleBuffers();
    static KConsole* outBuff;
    static KConsole* inBuff;
    static int constexpr BUFF_SIZE = 1024;
};


#endif //PROJECT_BASE_V1_1_KCONSOLE_HPP
