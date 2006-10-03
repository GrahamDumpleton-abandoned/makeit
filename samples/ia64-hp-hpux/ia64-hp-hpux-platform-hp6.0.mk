ifneq "$(filter pthread,$(PLATFORM_OPTIONS))" ""
COMPILER_CFLAGS += -mt
COMPILER_CXXFLAGS += -mt
COMPILER_LDFLAGS += -mt
endif

ifneq "$(filter math,$(PLATFORM_OPTIONS))" ""
COMPILER_LDLIBS += -lm
endif
