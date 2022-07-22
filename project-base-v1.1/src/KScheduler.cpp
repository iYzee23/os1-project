//
// Created by os on 6/22/22.
//

#include "../h/KScheduler.hpp"
#include "../h/KPCB.hpp"

KPCB* KScheduler::head = nullptr;
KPCB* KScheduler::tail = nullptr;

KPCB *KScheduler::get() {
    if (!head) return nullptr;
    KPCB* curr = head;
    head = head->nextScheduler;
    if (!head) tail = nullptr;
    curr->nextScheduler = nullptr;
    return curr;
}

void KScheduler::put(KPCB *kpcb) {
    if (!head) head = kpcb;
    else tail->nextScheduler = kpcb;
    tail = kpcb;
}
