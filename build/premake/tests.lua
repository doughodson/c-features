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

-- test-lua
project "test-lua"
   kind "ConsoleApp"
   targetname "test-lua"
   targetdir "../../test-lua"
   debugdir "../../test-lua"
   files {
      "../../test-lua/**.cpp",
      "../../test-lua/**.c",
      "../../test-lua/**.h"
   }
   includedirs { "../../lua-5.3.3" }
   libdirs     { LibPath }
   defines { "_CONSOLE" }
   filter "Release32"
      links { "lua" }
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}
   filter "Debug32"
      links { "lua_d" }
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}

-- test-js
project "test-js"
   kind "ConsoleApp"
   targetname "test-js"
   targetdir "../../test-js"
   debugdir "../../test-js"
   files {
      "../../test-js/**.cpp",
      "../../test-js/**.c",
      "../../test-js/**.h"
   }
   defines { "_CONSOLE" }
   filter "Release32"
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}
   filter "Debug32"
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}
