TARGET := app
BUILD_DIR := ./build/target
TOOLS_DIR := tools
STM8_TINY := lib/stm8-tiny
TINY := $(STM8_TINY)/lib/tiny
TINY_DEVICES := lib/tiny-devices

DEVICE := stm8s103f3
DEVICE_TYPE := STM8S103
STLINK := stlinkv2
OPENOCD_CFG := $(TOOLS_DIR)/openocd/stm8s103.cfg
TOOLCHAIN_VERSION := 4.0.0

MAIN := src/main.c

SRC_FILES := \

SRC_DIRS := \
  src \

LIB_FILES := \

LIB_DIRS := \
  $(TINY)/src \
  $(STM8_TINY)/src \
  $(TINY_DEVICES)/src \

INC_DIRS := \
  $(TINY)/include \
  $(TINY_DEVICES)/include \

.PHONY: default
default: size

include $(TOOLS_DIR)/makefile-worker.mk
