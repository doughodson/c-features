
include makedefs

PROJECTS = lua

PROJECTS += testLua

.PHONY: all clean $(PROJECTS)

all: $(PROJECTS)

$(PROJECTS):
	$(MAKE) -C $@

clean:
	-for d in $(PROJECTS); do (cd $$d; $(MAKE) clean ); done
