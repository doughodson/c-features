
#include "builtin-funcs.h"

// C headers
extern "C"
{
#include "lua.h"
#include "lauxlib.h"
};

static const luaL_Reg libname [] =
{
    { "test_string", test_string },
    { NULL, NULL }
};

void registerFuncs(lua_State* l)
{
  luaL_register(l, "libname", libname);
}

int test_string(lua_State* l)
{
  printf("testme\n");
  return 0;
}

