//
// Created by os on 6/22/22.
//

#ifndef PROJECT_BASE_V1_1_KMEMORYALLOCATOR_HPP
#define PROJECT_BASE_V1_1_KMEMORYALLOCATOR_HPP


#include "../lib/hw.h"

typedef struct BlockHeader {
    BlockHeader* next;
    size_t size;
} BlockHeader;

class KMemoryAllocator {
private:
    static BlockHeader* freeMemHead;
    static void tryToJoin(BlockHeader*);

public:
    static void initBlockHeader();
    static void *mem_alloc(size_t);
    static int mem_free(void*);
};


#endif //PROJECT_BASE_V1_1_KMEMORYALLOCATOR_HPP
