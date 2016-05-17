--------------------------------------------------------
-- Test applications
--------------------------------------------------------

-- memorypage1
project "memorypage1"
   targetname "memorypage1"
   targetdir "../../memorypage"
   debugdir "../../memorypage"
   files {
      "../../memorypage/main1.cpp",
      "../../memorypage/MemoryPage.cpp",
      "../../memorypage/**.h"
   }
   defines { "_CONSOLE" }
   configuration "Release"
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}
   configuration "Debug"
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}

-- memorypage2
project "memorypage2"
   targetname "memorypage2"
   targetdir "../../memorypage"
   debugdir "../../memorypage"
   files {
      "../../memorypage/main2.cpp",
      "../../memorypage/MemoryPage.cpp",
      "../../memorypage/**.h"
   }
   defines { "_CONSOLE" }
   configuration "Release"
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}
   configuration "Debug"
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}

-- memorypage3
project "memorypage3"
   targetname "memorypage3"
   targetdir "../../memorypage"
   debugdir "../../memorypage"
   files {
      "../../memorypage/main3.cpp",
      "../../memorypage/MemoryPage.cpp",
      "../../memorypage/**.h"
   }
   defines { "_CONSOLE" }
   configuration "Release"
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}
   configuration "Debug"
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}

-- spinlock
project "spinlock"
   targetname "spinlock"
   targetdir "../../spinlock"
   debugdir "../../spinlock"
   files {
      "../../spinlock/**.cpp",
      "../../spinlock/**.h"
   }
   defines { "_CONSOLE" }
   configuration "Release"
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}
   configuration "Debug"
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}

