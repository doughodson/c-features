
#include "MemoryPage.h"
#include <iostream>

using std::cout;
using std::endl;

int main(int, char**)
{
   cout << "Start of program" << endl;

   // constructor & assignment
   cout << "p01 :: ";   MemoryPage p01(1000);

   cout << "p02 :: ";   MemoryPage p02(p01);

   cout << "p03 :: ";   MemoryPage p03;
   cout << "p04 :: ";   MemoryPage p04;
   cout << "p05 :: ";   MemoryPage p05 = p04;
   cout << "bk  :: ";   p05 = p04;

   // move semantics
   cout << "p06 :: ";   MemoryPage p06(MemoryPage(50));
   cout << "p07 :: ";   MemoryPage p07(static_cast<MemoryPage&&>(MemoryPage(50)));
   cout << "p08 :: ";   MemoryPage p08(std::move(MemoryPage(50)));

   cout << "p09 :: ";   MemoryPage p09;
   cout << "p09 :: " << p09.getSize() << endl;
   cout << "p10 :: ";   MemoryPage p10(std::move(p09));
   cout << "p09 :: " << p09.getSize() << endl;

   cout << "p11 :: ";   MemoryPage p11;
   cout << "p12 :: ";   MemoryPage p12;
   cout << "bk  :: ";   p12 = std::move(p11);

   cout << "End of program" << endl;

   return 0;
}

