ifneq "$(filter pthread,$(PLATFORM_OPTIONS))" ""
COMPILER_CFLAGS += -pthread
COMPILER_CXXFLAGS += -pthread
COMPILER_LDFLAGS += -pthread
endif

ifneq "$(filter math,$(PLATFORM_OPTIONS))" ""
COMPILER_LDLIBS += -lm
endif
