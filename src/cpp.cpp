#include <iostream>

// 由NASM生成的代码
extern "C" long long asm_foo(void);

#include "library.hpp"

int main()
{
    std::cout<< asm_foo() << "\n";
    if (asm_is_windows()){
        std::cout << "asm code knows we are on Windows!\n";
    }else {
        std::cout << "NOT running on windows!\n";
    }

    const auto answer = compute_answer();
    std::cout << "42 is " << answer << std::endl;

    int64_t not_zero =0;
    increment_pointer_int64(&not_zero);

    std::cout << "not_zero was increment by ASM code to value: " << not_zero << std::endl;
}
