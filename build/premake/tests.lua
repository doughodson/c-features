--------------------------------------------------------
-- Test applications
--------------------------------------------------------

-- memorypage1
project "memorypage1"
   kind "ConsoleApp"
   targetname "memorypage1"
   targetdir "../../memorypage"
   debugdir "../../memorypage"
   files {
      "../../memorypage/main1.cpp",
      "../../memorypage/MemoryPage.cpp",
      "../../memorypage/**.h"
   }
   defines { "_CONSOLE" }
   filter "Release32"
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}
   filter "Debug32"
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}

-- memorypage2
project "memorypage2"
   kind "ConsoleApp"
   targetname "memorypage2"
   targetdir "../../memorypage"
   debugdir "../../memorypage"
   files {
      "../../memorypage/main2.cpp",
      "../../memorypage/MemoryPage.cpp",
      "../../memorypage/**.h"
   }
   defines { "_CONSOLE" }
   filter "Release32"
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}
   filter "Debug32"
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}

-- memorypage3
project "memorypage3"
   kind "ConsoleApp"
   targetname "memorypage3"
   targetdir "../../memorypage"
   debugdir "../../memorypage"
   files {
      "../../memorypage/main3.cpp",
      "../../memorypage/MemoryPage.cpp",
      "../../memorypage/**.h"
   }
   defines { "_CONSOLE" }
   filter "Release32"
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}
   filter "Debug32"
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}

-- spinlock
project "spinlock"
   kind "ConsoleApp"
   targetname "spinlock"
   targetdir "../../spinlock"
   debugdir "../../spinlock"
   files {
      "../../spinlock/**.cpp",
      "../../spinlock/**.h"
   }
   defines { "_CONSOLE" }
   filter "Release32"
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}
   filter "Debug32"
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}
