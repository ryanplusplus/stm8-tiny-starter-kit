TARGET ?= tests
BUILD_DIR ?= ./build/test
STM8_TINY = lib/stm8-tiny
TINY = $(STM8_TINY)/lib/tiny

SRC_DIRS ?= \
  $(TINY)/src \
  $(TINY)/test/double \
  test/src/dummy \

INC_DIRS ?= \
  $(STM8_TINY)/src \
  $(TINY)/include \

SRC_FILES := \
  $(TINY)/test/test_runner.cpp \

include $(TINY)/Makefile
