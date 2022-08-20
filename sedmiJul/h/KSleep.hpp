//
// Created by os on 6/22/22.
//

#ifndef PROJECT_BASE_V1_1_KSLEEP_HPP
#define PROJECT_BASE_V1_1_KSLEEP_HPP

#include "../lib/hw.h"

class KPCB;

class KSleep {
public:
    static void remove();
    static void add(time_t t);
private:
    static KPCB* head;
};


#endif //PROJECT_BASE_V1_1_KSLEEP_HPP
