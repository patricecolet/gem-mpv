# Makefile to build class 'helloworld' for Pure Data.
# Needs Makefile.pdlibbuilder as helper makefile for platform-dependent build
# settings and rules.

# library name
lib.name = mpv

# input source file (class name == source file basename)
class.sources = gem_mpv.cpp

# all extra files to be included in binary distribution of the library
datafiles =

ldlibs = -L/c/msys64/home/Patrice/Gem/src/.libs  -L/c/msys64/home/Patrice/Gem/src/Utils/.libs -lmpv -lGem -lopengl32
cflags = -I/c/msys64/home/Patrice/Gem/src -DHAVE_STRUCT_TIMESPEC 

# include Makefile.pdlibbuilder from submodule directory 'pd-lib-builder'
PDLIBBUILDER_DIR=pd-lib-builder/
include $(PDLIBBUILDER_DIR)/Makefile.pdlibbuilder
