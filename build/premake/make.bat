rem
rem delete old solution/workspace files
rem
rmdir /S /Q ..\codeblocks
rmdir /S /Q ..\codelite
rmdir /S /Q ..\vs2010
rmdir /S /Q ..\vs2012
rmdir /S /Q ..\vs2013
rmdir /S /Q ..\vs2015
rem
rem create new solution/workspace files
rem
premake5.exe vs2010
premake5.exe vs2012
premake5.exe vs2013
premake5.exe vs2015

