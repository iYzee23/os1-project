//
// Created by os on 6/22/22.
//

#include "../h/KRiscv.hpp"
#include "../h/KMemoryAllocator.hpp"
#include "../h/KPCB.hpp"
#include "../h/KConsole.hpp"
#include "../h/syscall_c.hpp"

uint64 framePointer;
void userMain();
void userWrapper(void* arg) {
    userMain();
}

void main() {
    KRiscv::w_stvec((uint64)&KRiscv::interrupt);
    KMemoryAllocator::initBlockHeader();
    KConsole::initConsoleBuffers();

    KPCB* main = nullptr;
    main = KPCB::createThread(nullptr, nullptr, nullptr);
    KPCB::running = main;

    KPCB* user = nullptr;
    thread_create(&user, &userWrapper, nullptr);

    KRiscv::ms_sstatus(KRiscv::SSTATUS_SIE);
    userMode();

    while (KPCB::counter) {
        KPCB::yield();
        readCons();
    }
    kernelMode();
    if (user) delete user;
    KConsole::deinitConsoleBuffers();
    delete main;
}

//kod thread_exit, trebalo bi regulisati situaciju u kojoj
//gasimo nit koja je zauzela semafor u smislu wait-a --> odradimo samo signal pre toga

//takodje, ukoliko je u redu na semaforu, treba da je izbacimo
//prolazimo kroz listu cekanja ne semaforu i trazimo da li je u njoj
//ako jeste, samo prelancavamo