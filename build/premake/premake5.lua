--
-- If premake command is not supplied an action (target compiler), exit!
--
-- Target of interest:
--     vs2013     (Visual Studio 2013)
--     vs2015     (Visual Studio 2015)
--

-- we must have an ide/compiler specified
if (_ACTION == nil) then
  return
end

--
-- set include and library paths
--
if (_ACTION == "vs2013") or (_ACTION == "vs2015") then
   LibPath         = "../../lib/".._ACTION
end

locationPath  = "../" .. _ACTION
if (_ACTION == "vs2013") or (_ACTION == "vs2015") then
  targetDirPath = "../../lib/".._ACTION
end
print ("Target directory path: "..targetDirPath)

workspace "cpp-features"

   -- destination directory for generated solution/project files
   location (locationPath)

   -- C++ code in all projects
   language "C++"

   --
   -- Build (solution) configuration options:
   --     Release32        (Application linked to Multi-threaded DLL)
   --     Debug32          (Application linked to Multi-threaded Debug DLL)
   --
   configurations { "Release32", "Debug32" }

   -- common release configuration flags and symbols
   filter { "Release32" }
      flags { "Optimize" }
      if (_ACTION == "vs2013") or (_ACTION == "vs2015") then
         -- enable compiler intrinsics and favour speed over size
         buildoptions { "/Oi", "/Ot" }
         defines { "WIN32", "NDEBUG" }
      end

   -- common debug configuration flags and symbols
   filter { "Debug32" }
      targetsuffix "_d"
      flags { "Symbols" }
      if (_ACTION == "vs2013") or (_ACTION == "vs2015") then
         -- enable compiler intrinsics
         buildoptions { "/Oi" }
         defines { "WIN32", "_DEBUG" }
      end

   -- test apps
   dofile "tests.lua"
