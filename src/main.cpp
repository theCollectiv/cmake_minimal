#include "addition.hpp"

#include <iostream>
int main() {
  int a = 5;
  int b = 3;
  std::cout << "a ist " << a << "\nb ist " << b << "\nDie Summe ist "
<< add(a, b) << std::endl; }
