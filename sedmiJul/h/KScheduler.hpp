//
// Created by os on 6/22/22.
//

#ifndef PROJECT_BASE_V1_1_KSCHEDULER_HPP
#define PROJECT_BASE_V1_1_KSCHEDULER_HPP


#include "../lib/hw.h"

class KPCB;

class KScheduler {
public:
    static KPCB* get();
    static void put(KPCB* kpcb);
private:
    static KPCB* head;
    static KPCB* tail;
};

#endif //PROJECT_BASE_V1_1_KSCHEDULER_HPP
