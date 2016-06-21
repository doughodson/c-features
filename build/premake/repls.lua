--------------------------------------------------------
-- REPL applications
--------------------------------------------------------

-- repl-clips - clips read-eval-print-loop
project "repl-clips"
   kind "ConsoleApp"
   targetname "clips"
   targetdir "../../repl-clips"
   debugdir "../../repl-clips"
   files {
      "../../repl-clips/**.cpp",
      "../../repl-clips/**.c",
      "../../repl-clips/**.h"
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

-- repl-lua - lua read-eval-print-loop
project "repl-lua"
   kind "ConsoleApp"
   targetname "lua"
   targetdir "../../repl-lua"
   debugdir "../../repl-lua"
   files {
      "../../repl-lua/**.cpp",
      "../../repl-lua/**.c",
      "../../repl-lua/**.h"
   }
   includedirs { "../../lua-5.3.3" }
   libdirs     { LibPath }
   defines { "_CONSOLE", "LUA_COMPAT_MODULE" }
   filter "Release32"
      links { "lua" }
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}
   filter "Debug32"
      links { "lua_d" }
      links {"Ws2_32", "Winmm", "comctl32", "gdi32"}


