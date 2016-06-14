#
include ../makedefs

PGM = testLua

OBJS = lua.o LuaState.o State.o

LDFLAGS += -llua

all: $(PGM)

$(PGM): $(OBJS)
	$(CXX) -o $@ $(OBJS) $(LDFLAGS)

clean:
	-rm -f *.o
	-rm -f $(PGM)
