//
// Created by os on 6/22/22.
//

#include "../h/print.hpp"
#include "../h/syscall_c.h"
#include "../h/KRiscv.hpp"

void printStringRadi(const char *str) {
    uint64 sstatus = KRiscv::r_sstatus();
    KRiscv::mc_sstatus(KRiscv::SSTATUS_SIE);
    while (*str != '\0') {
        putc(*str);
        str++;
    }
    KRiscv::ms_sstatus(sstatus & KRiscv::SSTATUS_SIE ? KRiscv::SSTATUS_SIE : 0);
}

void printIntRadi(uint64 integer) {
    uint64 sstatus = KRiscv::r_sstatus();
    KRiscv::mc_sstatus(KRiscv::SSTATUS_SIE);
    static char digits[] = "0123456789";
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (integer < 0) neg = 1, x = -integer;
    else x = integer;

    i = 0;
    do {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);
    if (neg) buf[i++] = '-';

    while (--i >= 0) putc(buf[i]);
    KRiscv::ms_sstatus(sstatus & KRiscv::SSTATUS_SIE ? KRiscv::SSTATUS_SIE : 0);
}