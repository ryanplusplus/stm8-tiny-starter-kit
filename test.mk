TARGET ?= tests
BUILD_DIR ?= ./build/test
STM8_TINY = lib/stm8-tiny
TINY = $(STM8_TINY)/lib/tiny

SRC_DIRS := \
  $(TINY)/src \
  $(TINY)/test/src \
  test \
  test/dummy \

INC_DIRS := \
  $(STM8_TINY)/src \
	$(TINY)/include \
	$(TINY)/test/include \

SRC_FILES := \
  $(TINY)/test/tests/test_runner.cpp \

include $(TINY)/Makefile

.PHONY: debug-deps
debug-deps: $(BUILD_DIR)/$(TARGET)
