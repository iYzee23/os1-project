//
// Created by os on 6/22/22.
//

#include "../h/KSemaphore.hpp"

void KSemaphore::block() {
    put(KPCB::running);
    KPCB::dispatch();
}

void KSemaphore::deblock() {
    KPCB* kpcb = KSemaphore::get();
    if (!kpcb) return;
    KScheduler::put(kpcb);
}

void KSemaphore::put(KPCB* kpcb) {
    kpcb->setWaiting(true);
    if (!head) head = kpcb;
    else tail->nextSemaphore = kpcb;
    tail = kpcb;
}

KPCB *KSemaphore::get() {
    if (!head) return nullptr;
    KPCB* old = head;
    head = head->nextSemaphore;
    if (!head) tail = nullptr;
    old->nextSemaphore = nullptr;
    old->setWaiting(false);
    return old;
}

KSemaphore *KSemaphore::createSemaphore(uint64 init) {
    return new KSemaphore(init);
}
