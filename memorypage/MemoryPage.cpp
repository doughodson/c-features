
#include "MemoryPage.h"
#include <iostream>

// constructor
MemoryPage::MemoryPage(int sz):size(sz), buf(new char[size])
{
   std::cout << "MemoryPage: constructor called\n";
}

// destructor
MemoryPage::~MemoryPage()
{
   delete[] buf;
   std::cout << "MemoryPage: destructor called\n";
}

// copy constructor
MemoryPage::MemoryPage(const MemoryPage& other):size(other.size), buf(new char[other.size])
{
   std::cout << "MemoryPage: copy constructor called\n";
}

// copy assignment operator
MemoryPage& MemoryPage::operator=(const MemoryPage& other)
{
   size = other.size;
   delete[] buf;
   buf = new char[other.size];
   std::cout << "MemoryPage: copy assignment called\n";
   return *this;
}

// move constructor
MemoryPage::MemoryPage(MemoryPage&& other):size(0), buf(nullptr)
{
   // pilfer other’s resource
   size = other.size;
   buf = other.buf;
   // reset other
   other.size = 0;
   other.buf = nullptr;
   std::cout << "MemoryPage: move constructor called\n";
}

// move assignment operator
MemoryPage& MemoryPage::operator=(MemoryPage&& other)
{
   if (this!=&other) {
      // release the current object’s resources
      delete[] buf;
      size=0;
      // pilfer other’s resource
      size = other.size;
      buf = other.buf;
      // reset other
      other.size = 0;
      other.buf = nullptr;
   }
   std::cout << "MemoryPage: move assignment called\n";
   return *this;
}


