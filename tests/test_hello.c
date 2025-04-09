// tests/test_hello.c
#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>

extern int add(int, int);

static void test_add(void **state) {
    (void)state;
    assert_int_equal(add(2, 3), 5);
    assert_int_equal(add(-1, 1), 0);
}

int main(void) {
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_add),
    };
    return cmocka_run_group_tests(tests, NULL, NULL);
}

