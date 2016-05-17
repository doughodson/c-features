
#include "MemoryPage.h"
#include <iostream>
#include <vector>

using namespace std;

int main()
{
   vector<MemoryPage> pages;
   pages.resize(0);

   cout << "Start of program" << endl;

   cout << "p1 :: ";  MemoryPage p1;
   cout << "------------------------------------\n";
   cout << "p2 :: ";  pages.push_back(p1);
   cout << "------------------------------------\n";
   cout << "p3 :: ";  pages.push_back(std::move(p1));
   cout << "------------------------------------\n";
   cout << "p4 :: ";  pages.push_back(std::move(MemoryPage()));

   cout << "End of program" << endl;

   return 0;
}


