//
// Created by os on 6/22/22.
//

void test_thread();
void test_memory();
void test_semaphore();

void test_memory_thread_sync() {
    test_memory();
    test_memory();
    test_thread();
    test_memory();
    test_thread();
    test_thread();
    test_memory();
    test_memory();

    for (int i = 0; i < 100; i++)
        test_thread();
    for (int i = 0; i < 100; i++)
        test_memory();
    for (int i = 0; i < 100; i++) {
        test_thread();
        test_memory();
    }
    for (int i = 0; i < 100; i++) {
        test_memory();
        test_thread();
    }
}
void test_memory_thread_sync_semaphore() {
    test_semaphore();
    test_memory();
    test_memory();
    test_thread();
    test_memory();
    test_thread();
    test_thread();
    test_semaphore();
    test_semaphore();
    test_memory();
    test_memory();

    for (int i = 0; i < 100; i++)
        test_thread();
    for (int i = 0; i < 100; i++)
        test_memory();
    for (int i = 0; i < 100; i++)
        test_semaphore();
    for (int i = 0; i < 100; i++) {
        test_thread();
        test_semaphore();
        test_memory();
    }
    for (int i = 0; i < 100; i++) {
        test_memory();
        test_semaphore();
        test_thread();
    }
    for (int i = 0; i < 100; i++) {
        test_semaphore();
        test_memory();
        test_semaphore();
        test_thread();
        test_semaphore();
    }
}

void test_complex() {
    //test_memory_thread_sync();
    test_memory_thread_sync_semaphore();
}