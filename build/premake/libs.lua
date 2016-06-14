
     
-- lua
project "lua"
   kind "StaticLib"
   -- destination directory for compiled binary target
   targetdir (targetDirPath)
   files {
      "../../lua-5.3.3/**.h",
      "../../lua-5.3.3/**.cpp",
      "../../lua-5.3.3/**.c"
   }
   targetname "lua"
