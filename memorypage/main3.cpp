
#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main()
{
   vector<string> s;
   s.resize(0);

   string s1("hello");

   cout << "Start of program" << endl;

   for(unsigned int i=0; i<10000; i++) {
      s.push_back(std::move(s1));
   }

   cout << s1 << endl;

   cout << "End of program" << endl;

   return 0;
}


