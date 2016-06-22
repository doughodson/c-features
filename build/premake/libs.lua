     
-- lua
project "lua"
   kind "StaticLib"
   -- destination directory for compiled binary target
   targetdir (targetDirPath)
   files {
      "../../lua-5.3.3/**.h",
      "../../lua-5.3.3/**.hpp",
      "../../lua-5.3.3/**.cpp",
      "../../lua-5.3.3/**.c"
   }
   defines { "LUA_COMPAT_MODULE" }
   targetname "lua"

-- clips
project "clips"
   kind "StaticLib"
   -- destination directory for compiled binary target
   targetdir (targetDirPath)
   files {
      "../../clips-6.30/**.h",
      "../../clips-6.30/**.cpp",
      "../../clips-6.30/**.c"
   }
   targetname "clips"
