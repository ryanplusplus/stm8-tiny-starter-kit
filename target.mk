TARGET := target
BUILD_DIR := build

DEVICE := stm8s103f3
DEVICE_TYPE := STM8S103
STLINK := stlinkv2
OPENOCD_CFG := tools/openocd/stm8s103.cfg
SVD := tools/svd/stm8s103f3.svd
TOOLCHAIN_VERSION := 4.1.0

include tools/defaults.mk

MAIN := src/main.c

SRC_FILES := \

SRC_DIRS := \
  src \

INC_DIRS := \

include lib/stm8-tiny/lib_stm8-tiny.mk
include lib/tiny-devices/lib_tiny-devices.mk

include tools/tools.mk
