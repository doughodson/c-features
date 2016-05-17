
#include "SpinLock.h"

#include <iostream>
#include <vector>
#include <thread>
#include <mutex>

//SpinLock lock;
std::mutex lock;

int count[20] = {0, 0, 0, 0, 0, 0, 0, 0};
 
void foo(int n)
{
   for (unsigned i = 0; i < 10000000; i++) {
      lock.lock();
      ++count[n];
      lock.unlock();
   }
}
 
int main(int, char**)
{
   std::vector<std::thread> threads;

   for(int n = 0; n < 8; ++n) {
      threads.emplace_back(foo, n);
   }
 
   for (auto& t : threads) {
      t.join();
   }
 
//   std::cout << "Spinlock locking\n";
//   std::cout << "Mutex locking\n";

   return count[0] + count[1] + count[2] + count[3]
        + count[4] + count[5] + count[6] + count[7];
}

