
// C Library Headers
extern "C"
{
#include "builtin-funcs.h"
#include "lua.h"
#include "lauxlib.h"
};

static const luaL_Reg libname [] =
{
    { "test_string", test_string },
    { NULL, NULL }
};

void registerFuncs(lua_State* luaVM)
{
  luaL_register(luaVM, "libname", libname);
}

int test_string(lua_State* luaVM)
{
  printf("testme\n");
  return 0;
}

