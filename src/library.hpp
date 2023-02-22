#pragma once

#ifdef __cplusplus
#include <cstdint>
extern "C" {
#else 
#include <stdint.h>
#endif

bool asm_is_windows();
int compute_answer();
int sum_4_ints(int,int,int,int);
void increment_pointer_int64(int64_t*);


#ifdef __cplusplus
}
#endif
