
#ifndef __MemoryPage_H__
#define __MemoryPage_H__

#include <cstdlib>

class MemoryPage
{
public:
   // constructor
   explicit MemoryPage(int sz=512);

   // destructor
   ~MemoryPage();

   // C++03 copy ctor and assignment operator
   MemoryPage(const MemoryPage&);
   MemoryPage& operator=(const MemoryPage&);

   // C++11 move ctor and assignment operator
   MemoryPage(MemoryPage&&);
   MemoryPage& operator=(MemoryPage&&);

   std::size_t getSize() const    { return size; }

private:
   std::size_t size;
   char* buf;
};

#endif


