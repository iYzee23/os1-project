//
// Created by os on 6/22/22.
//

#include "../h/KMemoryAllocator.hpp"

BlockHeader* KMemoryAllocator::freeMemHead = nullptr;

void* KMemoryAllocator::mem_alloc(size_t sizeBlock) {
    size_t size = sizeBlock * MEM_BLOCK_SIZE;
    BlockHeader *blk = freeMemHead, *prev = nullptr;
    while (blk != nullptr) {
        if (blk->size >= size) break;
        prev = blk;
        blk = blk->next;
    }
    if (blk == nullptr) return nullptr;
    size_t remainingSize = blk->size - size;
    if (remainingSize >= MEM_BLOCK_SIZE) {
        blk->size = size;
        BlockHeader* newBlk = (BlockHeader*)((char*)blk + size);
        if (prev) prev->next = newBlk;
        else freeMemHead = newBlk;
        newBlk->next = blk->next;
        newBlk->size = remainingSize;
    }
    else {
        if (prev) prev->next = blk->next;
        else freeMemHead = blk->next;
    }
    blk->next = nullptr;
    return (char*)blk + sizeof(BlockHeader);
}

int KMemoryAllocator::mem_free(void* addr) {
    if (addr == nullptr) return -1;
    BlockHeader* curr = freeMemHead, *prev = nullptr;
    if (!freeMemHead || addr < freeMemHead) curr = nullptr;
    else {
        while (curr != nullptr) {
            if (curr > addr) break;
            prev = curr;
            curr = curr->next;
        }
        if (curr == nullptr) return -1;
    }
    BlockHeader* newSeg = (BlockHeader*)((char*)addr - sizeof(BlockHeader));
    if (curr) newSeg->next = curr/*->next*/;
    else newSeg->next = freeMemHead;
    if (prev) prev->next = newSeg;
    else freeMemHead = newSeg;
    KMemoryAllocator::tryToJoin(newSeg);
    KMemoryAllocator::tryToJoin(prev);
    return 0;
}

void KMemoryAllocator::tryToJoin(BlockHeader* curr) {
    if (!curr) return;
    if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
        curr->size += curr->next->size;
        curr->next = curr->next->next;
    }
}

void KMemoryAllocator::initBlockHeader() {
    freeMemHead = (BlockHeader*)HEAP_START_ADDR;
    freeMemHead->next = nullptr;
    freeMemHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
}