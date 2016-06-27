
include makedefs

# libs
PROJECTS = lua-5.3.3
PROJECTS += clips-6.30

# lua compiler
PROJECTS += luac

# read-eval-print-loop interpreters
PROJECTS += repl-clips
PROJECTS += repl-lua
PROJECTS += repl-lua2
PROJECTS += repl-lua3

# specific test programs
PROJECTS += test-lua
PROJECTS += test-js

.PHONY: all clean $(PROJECTS)

all: $(PROJECTS)

$(PROJECTS):
	$(MAKE) -C $@

clean:
	-for d in $(PROJECTS); do (cd $$d; $(MAKE) clean ); done
