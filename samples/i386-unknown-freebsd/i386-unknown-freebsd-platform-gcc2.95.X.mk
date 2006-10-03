ifneq "$(filter pthread,$(PLATFORM_OPTIONS))" ""
COMPILER_LDFLAGS += -pthread
COMPILER_PIC_LDFLAGS += -pthread
endif

ifneq "$(filter math,$(PLATFORM_OPTIONS))" ""
COMPILER_LDLIBS += -lm
endif
