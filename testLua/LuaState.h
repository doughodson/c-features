
#ifndef __LuaState_H__
#define __LuaState_H__

#include "luna.h"

#include "State.h"

class LuaState : public State
{
public:
   // Luna C++ wrapper template declarations
   static const char className[];
   static const Luna<LuaState>::PropertyType properties[];
   static const Luna<LuaState>::FunctionType methods[];

   LuaState(lua_State*);

   int isAlive(lua_State*);
   int getRoll(lua_State*);
   int getPitch(lua_State*);
};

#endif
