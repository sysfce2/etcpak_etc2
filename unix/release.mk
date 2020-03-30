ARCH := $(shell uname -m)

CFLAGS := -O3 -s -march=native
DEFINES := -DNDEBUG

ifeq ($(ARCH),x86_64)
CFLAGS += -msse4.1
endif

include build.mk
