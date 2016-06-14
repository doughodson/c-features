#
include ../makedefs

LIB = $(LIB_DIR)/liblua.a

OBJS += \
	lapi.o \
	lauxlib.o \
	baselib.o \
	lbitlib.o \
	lcode.o \
	lcorolib.o \
	lctype.o \
	ldblib.o \
	ldebug.o \
	ldo.o \
	ldump.o \
	lfunc.o \
	lgc.o \
	linit.o \
	liolib.o \
	llex.o \
	lmathlib.o \
	lmem.o \
	loadlib.o \
	lobject.o \
	lopcodes.o \
	loslib.o \
	lparser.o \
	lstate.o \
	lstring.o \
	lstrlib.o \
	ltable.o \
	ltablib.o \
	ltm.o \
	lundump.o \
	lutf8lib.o \
	lvm.o \
	lzio.o

.PHONY: all clean

all: $(LIB)

$(LIB) : $(OBJS)
	ar rs $@ $(OBJS)

clean:
	-rm -f *.o
	-rm -f $(LIB)
