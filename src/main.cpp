#include "addition.hpp"

#include <iostream>
int main() {
  int a = 5;
  int b = 3;
  std::cout << "a is " << a << "\nb is " << b << "\the sum of a and b is "
<< add(a, b) << std::endl; }
