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

-- clips-repl - clips read-eval-print-loop
project "clips-repl"
   kind "ConsoleApp"
   targetname "clips-repl"
   targetdir "../../clips-repl"
   debugdir "../../clips-repl"
   files {
      "../../clips-repl/**.cpp",
      "../../clips-repl/**.c",
      "../../clips-repl/**.h"
   }
   includedirs { "../../clips-6.30" }
   libdirs     { LibPath }
   defines { "_CONSOLE" }
   filter "Release32"
      links { "clips" }
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}
   filter "Debug32"
      links { "clips_d" }
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}

-- lua-repl - lua read-eval-print-loop
project "lua-repl"
   kind "ConsoleApp"
   targetname "lua-repl"
   targetdir "../../lua-repl"
   debugdir "../../lua-repl"
   files {
      "../../lua-repl/**.cpp",
      "../../lua-repl/**.c",
      "../../lua-repl/**.h"
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

-- test-lua
project "test-lua"
   kind "ConsoleApp"
   targetname "testLua"
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

