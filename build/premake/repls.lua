--------------------------------------------------------
-- REPL applications
--------------------------------------------------------

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

-- luac - lua compiler
project "luac"
   kind "ConsoleApp"
   targetname "luac"
   targetdir "../../luac"
   debugdir "../../luac"
   files {
      "../../luac/**.cpp",
      "../../luac/**.c",
      "../../luac/**.h"
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

