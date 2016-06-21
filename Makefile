
include makedefs

# libs
PROJECTS = lua-5.3.3
PROJECTS += clips-6.30

# lua compiler
PROJECTS += luac

# read-eval-print-loop interpreters
PROJECTS += repl-clips
PROJECTS += repl-lua

# specific test programs
PROJECTS += test-lua


.PHONY: all clean $(PROJECTS)

all: $(PROJECTS)

$(PROJECTS):
	$(MAKE) -C $@

clean:
	-for d in $(PROJECTS); do (cd $$d; $(MAKE) clean ); done
