
#include "Account.h"

#define method(class, name) {#name, &class::name}

// name to use to address the class in Lua
const char Account::className[] = "Account";

// list of class properties that one can set/get from Lua
const Luna<Account>::PropertyType Account::properties[] = {
  {0,0}
};

// list of class methods to make available in Lua
const Luna<Account>::FunctionType Account::methods[] = {
  method(Account, deposit),
  method(Account, withdraw),
  method(Account, getBalance),
  {0,0}
};

Account::Account(lua_State* l)
{ 
   balance = lua_tointeger(l, 1);
}

Account::~Account()
{
   printf("C++: Deleted Account (%p)\n", this); 
}

/**
Deposits an amount into the account
@param L The Lua state
@return The number of returned variables on the stack. None in this case.
*/
int Account::deposit(lua_State* l)
{
   balance += lua_tointeger(l, 1);  
   return 0; 
}

/**
Withdraws an amount from the account
@param L The Lua state
@return The number of returned variables on the stack. None in this case.
*/
int Account::withdraw(lua_State* l)
{
   balance -= lua_tointeger(l, 1); 
   return 0; 
}

/**
Accessor Method
Get the balance for the account
@param L The Lua state
@return The number of returned variables on the stack. The balance in this case.
*/
int Account::getBalance(lua_State* l)
{ 
   lua_pushnumber(l, balance);
   return 1; 
}

