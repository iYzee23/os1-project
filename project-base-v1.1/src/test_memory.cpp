//
// Created by os on 6/22/22.
//

#include "../h/syscall_c.h"

void test_memory1() {
    char* z = new char;
    *z = 'z';
    putc(*z);
    putc('\n');
    delete z;
    char* a = new char;
    *a = 'a';
    putc(*a);
    putc('\n');
    char* b = new char;
    *b = 'b';
    putc(*b);
    putc('\n');
    delete a;
    char* c = new char;
    *c = 'c';
    putc(*c);
    putc('\n');
    delete c;
    char* d = new char;
    *d = 'd';
    putc(*d);
    putc('\n');
    delete d;
    delete b;
    char* e = new char[5];
    *(e+0) = 'p';
    *(e+1) = 'e';
    *(e+2) = 'd';
    *(e+3) = 'j';
    *(e+4) = 'a';
    for (int i = 0; i < 5; i++)
        putc(*(e+i));
    putc('\n');
    delete[] e;
    char* f = new char();
    *f = 'f';
    putc(*f);
    putc('\n');
    delete f;
}
void test_memory2() {
    char* charPtr = (char*)mem_alloc(sizeof(char));
    *charPtr = 'C';
    putc(*charPtr); putc(' ');
    int status = mem_free(charPtr);
    if (status == 0) putc('1');
    else putc('0');
    putc('\n');

    char* ptr = (char*) mem_alloc(68 * sizeof(char));
    ptr[0] = 'N'; ptr[1] = 'i'; ptr[2] = 'k'; ptr[3] = 'o'; ptr[4] = 'l'; ptr[5] = 'a'; ptr[6] = ' '; ptr[7] = 'm';
    ptr[8] = 'r'; ptr[9] = 'z'; ptr[10] = 'i'; ptr[11] = ' '; ptr[12] = 'o'; ptr[13] = 'p'; ptr[14] = 'e'; ptr[15] = 'r';
    ptr[16] = 'a'; ptr[17] = 't'; ptr[18] = 'i'; ptr[19] = 'v'; ptr[20] = 'n'; ptr[21] = 'e'; ptr[22] = ' '; ptr[23] = 's';
    ptr[24] = 'i'; ptr[25] = 's'; ptr[26] = 't'; ptr[27] = 'e'; ptr[28] = 'm'; ptr[29] = 'e'; ptr[30] = '!';

    ptr[31] = 'N'; ptr[32] = 'i'; ptr[33] = 'k'; ptr[34] = 'o'; ptr[35] = 'l'; ptr[36] = 'a'; ptr[37] = ' '; ptr[38] = 'm';
    ptr[39] = 'r'; ptr[40] = 'z'; ptr[41] = 'i'; ptr[42] = ' '; ptr[43] = 'o'; ptr[44] = 'p'; ptr[45] = 'e'; ptr[46] = 'r';
    ptr[47] = 'a'; ptr[48] = 't'; ptr[49] = 'i'; ptr[50] = 'v'; ptr[51] = 'n'; ptr[52] = 'e'; ptr[53] = ' '; ptr[54] = 's';
    ptr[55] = 'i'; ptr[56] = 's'; ptr[57] = 't'; ptr[58] = 'e'; ptr[59] = 'm'; ptr[60] = 'e'; ptr[61] = '!';
    ptr[62] = 'U'; ptr[63] = 'Z'; ptr[64] = 'X'; ptr[65] = 'A'; ptr[66] = 'S'; ptr[67] = '!';

    for (int i = 0; i < 68; i++)
        putc(ptr[i]);
    putc('\n');
    mem_free(ptr);

    uint64* intPtr = (uint64*)mem_alloc(5 * sizeof(uint64));
    *(intPtr + 0) = 5;
    *(intPtr + 1) = 27;
    *(intPtr + 2) = 45;
    *(intPtr + 3) = 192;
    *(intPtr + 4) = 255;
    for (int i = 0; i < 5; i++) {
        putc(48 + i);
        putc('.');
        putc(' ');
        uint64 ceo = intPtr[i];
        while (ceo > 0) {
            putc(48 + ceo%10);
            ceo /= 10;
        }
        putc('\n');
    }
    mem_free(intPtr);

    char* newPtr = (char*)new char(1); // 1 blok = 64 bajtova
    newPtr[0] = 'O'; newPtr[1] = 'K'; newPtr[2] = '.';
    for (int i = 0; i < 3; i++)
        putc(newPtr[i]);
    putc('\n');
    delete(newPtr);

    newPtr = (char*)new char(1);
    *newPtr = 'A';
    putc(*newPtr);
    delete(newPtr);
    *newPtr = 'B';
    putc(*newPtr);
    delete(newPtr);
    *newPtr = 'C';
    putc(*newPtr);
    delete(newPtr);

    putc('\n');
    putc('*');
    putc('\n');
}

void test_memory() {
    test_memory1();
    test_memory2();
}

