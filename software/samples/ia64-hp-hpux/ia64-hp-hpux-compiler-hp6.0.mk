CC = /usr/bin/cc
CXX = /opt/aCC/bin/aCC
LD = /usr/bin/ld

AR = /usr/bin/ar
RANLIB = /usr/bin/ranlib

COMPILER_VARIANTS = dbg opt std prf
COMPILER_PIC_VARIANTS = opt std

COMPILER_ATTRIBUTES += objects_pic_by_default

COMPILER_CPPFLAGS =
COMPILER_CFLAGS =
COMPILER_CXXFLAGS =

ifneq "$(filter disable_warnings,$(COMPILER_OPTIONS))" ""
COMPILER_CFLAGS += -w
COMPILER_CXXFLAGS += -w
endif

COMPILER_EXE_CPPFLAGS =
COMPILER_EXE_CFLAGS =
COMPILER_EXE_CXXFLAGS =

COMPILER_LDFLAGS = $(if $(PICPATH),-rpath $(subst $() $(),:,$(PICPATH)))
COMPILER_LDLIBS =

COMPILER_PIC_CPPFLAGS =
COMPILER_PIC_CFLAGS =
COMPILER_PIC_CXXFLAGS =
COMPILER_PIC_LDFLAGS =
COMPILER_PIC_LDLIBS =

COMPILER_CPPFLAGS_dbg =
COMPILER_CFLAGS_dbg = -g
COMPILER_CXXFLAGS_dbg = -g
COMPILER_LDFLAGS_dbg =
COMPILER_LDLIBS_dbg =

COMPILER_CPPFLAGS_opt = -DNDEBUG
COMPILER_CFLAGS_opt = -O
COMPILER_CXXFLAGS_opt = -O
COMPILER_LDFLAGS_opt =
COMPILER_LDLIBS_opt =

COMPILER_CPPFLAGS_prf =
COMPILER_CFLAGS_prf = -G
COMPILER_CXXFLAGS_prf = -G
COMPILER_LDFLAGS_prf =
COMPILER_LDLIBS_prf =

COMPILER_CPPFLAGS_std =
COMPILER_CFLAGS_std =
COMPILER_CXXFLAGS_std =
COMPILER_LDFLAGS_std =
COMPILER_LDLIBS_std =

define COMPILER_PIC_LIBRARY
$(CXX) -b -o @TARGET@ @PIC_LDFLAGS@ @LDFLAGS@ @OBJECTS@ \
 @PIC_LDLIBS@ @LDLIBS@
endef
