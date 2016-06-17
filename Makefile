
include makedefs

PROJECTS = lua-5.3.3
PROJECTS += clips-6.30

PROJECTS += testLua
PROJECTS += testLuaRepl
PROJECTS += testClipsRepl

.PHONY: all clean $(PROJECTS)

all: $(PROJECTS)

$(PROJECTS):
	$(MAKE) -C $@

clean:
	-for d in $(PROJECTS); do (cd $$d; $(MAKE) clean ); done
