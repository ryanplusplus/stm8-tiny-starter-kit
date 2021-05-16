TARGET := target
BUILD_DIR := build
TOOLS_DIR := tools
STM8_TINY := lib/stm8-tiny
TINY := $(STM8_TINY)/lib/tiny
TINY_DEVICES := lib/tiny-devices

DEVICE := stm8s103f3
DEVICE_TYPE := STM8S103
STLINK := stlinkv2
OPENOCD_CFG := tools/openocd/stm8s103.cfg
SVD := tools/svd/stm8s103f3.svd
TOOLCHAIN_VERSION := 4.1.0

include tools/defaults.mk

MAIN := src/main.c

SRC_FILES := \

INC_DIRS := \

include lib_stm8-tiny.mk


include tools/tools.mk
