LIBS := stm8-tiny $(LIBS)

INC_DIRS += \
  lib/stm8-tiny/lib/tiny/include \
  lib/stm8-tiny/src \

stm8-tiny_LIB_ROOT := lib/stm8-tiny

stm8-tiny_ASFLAGS := $(ASFLAGS)
stm8-tiny_CPPFLAGS := $(CPPFLAGS)
stm8-tiny_CFLAGS := $(CFLAGS)

stm8-tiny_DEFINES := $(DEFINES)

stm8-tiny_INC_DIRS := \
  lib/stm8-tiny/lib/tiny/include \

stm8-tiny_SYS_INC_DIRS := \

stm8-tiny_SRC_FILES := \

stm8-tiny_SRC_DIRS := \
  lib/stm8-tiny/src \
  lib/stm8-tiny/lib/tiny/src \
