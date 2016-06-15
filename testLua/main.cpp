
#include "Account.h"

int main(int argc, char *argv[])
{
   //Check if a Lua Script was specified
   if(argc != 2){
      printf("Error! No Lua script or too many scripts were specified.\n");
      printf("Usage: %s <Script>.lua\n", argv[0]);
      return -1;
   }

   //Create a new Lua state
   lua_State *L = luaL_newstate(); 

   //Load Lua base library 
   luaopen_base(L);

   //Register "Account" Class with Lua
   Luna<Account>::Register(L);

   //Execute the Lua script
   printf("C++: Executing Lua Script: %s\n",argv[1]);
   if(luaL_dofile(L, argv[1]) != 0){
      printf("Lua Error: %s\n", lua_tostring(L,-1));
   }

   //Close Lua state
   lua_close(L);
   return 0;
}
