//
// Created by os on 6/22/22.
//

#include "../h/KSleep.hpp"
#include "../h/KPCB.hpp"
#include "../h/KRiscv.hpp"

KPCB* KSleep::head = nullptr;

void KSleep::remove() {
    if (!head) return;
    --(head->timeSleepCounter);
    while (head && !(head->timeSleepCounter)) {
        KPCB* old = head;
        head = head->nextSleeping;
        old->nextSleeping = nullptr;
        old->setSleeping(false);
        KScheduler::put(old);
    }
}

void KSleep::add(time_t t) {
    KPCB* kpcb = KPCB::running;
    if (!kpcb || !t) return;
    kpcb->setSleeping(true);
    if (!head) {
        head = kpcb;
        head->timeSleepCounter = t;
        head->nextSleeping = nullptr;
    }
    else {
        KPCB* curr = head, *prev = nullptr;
        while (curr) {
            long r = (long)t - (long)curr->timeSleepCounter;
            if (r <= 0) {
                curr->timeSleepCounter -= t;
                kpcb->timeSleepCounter = t;
                kpcb->nextSleeping = curr;
                if (!prev) head = kpcb;
                else prev->nextSleeping = kpcb;
                return;
            }
            else t -= curr->timeSleepCounter;
            prev = curr;
            curr = curr->nextSleeping;
        }
        kpcb->timeSleepCounter = t;
        kpcb->nextSleeping = nullptr;
        prev->nextSleeping = kpcb;
    }
}
