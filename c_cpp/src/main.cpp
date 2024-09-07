#include "common.h"
#include "main.hpp"
#include <iostream>

// Function definition from common.h
void print_hello() {
    std::cout << "Hello from Common!" << std::endl;
}

// Function definition from main.h
void run_application() {
    std::cout << "Running application..." << std::endl;
    print_hello(); // Call function from the C header
}

int main() {
    run_application();
    return 0;
}
