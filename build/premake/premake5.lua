--
-- If premake command is not supplied an action (target compiler), exit!
--
-- Target of interest:
--     vs2010     (Visual Studio 2010)
--     vs2012     (Visual Studio 2012)
--     vs2013     (Visual Studio 2013)
--     vs2015     (Visual Studio 2015)
--     codeblocks (Code::Blocks)
--     codelite   (CodeLite)
--

-- we must have an ide/compiler specified
if (_ACTION == nil) then
  return
end

locationPath  = "../" .. _ACTION

solution "cpp-features"

   -- destination directory for generated solution/project files
   location (locationPath)

   -- create console application by default
   kind "ConsoleApp"

   -- C++ code in all projects
   language "C++"

   --
   -- Build (solution) configuration options:
   --     Release        (Application linked to Multi-threaded DLL)
   --     Debug          (Application linked to Multi-threaded Debug DLL)
   --
   configurations { "Release", "Debug" }

   -- common release configuration flags and symbols
   configuration { "Release" }
      flags { "Optimize" }
      if (_ACTION == "vs2010") or (_ACTION == "vs2012") or (_ACTION == "vs2013") or (_ACTION == "vs2015") then
         -- enable compiler intrinsics and favour speed over size
         buildoptions { "/Oi", "/Ot" }
         defines { "WIN32", "NDEBUG" }
      end

   -- common debug configuration flags and symbols
   configuration { "Debug" }
      flags { "Symbols" }
      if (_ACTION == "vs2010") or (_ACTION == "vs2012") or (_ACTION == "vs2013") or (_ACTION == "vs2015") then
         -- enable compiler intrinsics
         buildoptions { "/Oi" }
         defines { "WIN32", "_DEBUG" }
      end

   -- tests
   dofile "tests.lua"

