#!/bin/bash
set -e

mkdir -p bin
x86_64-linux-gnu-gcc $PROGRAM_COMPILER_FLAGS -isystem sys -std=gnu17 -Wall -Wextra -Werror -Wno-unused-parameter src/doom.c -o bin/doom.o
x86_64-linux-gnu-ld $PROGRAM_LINKER_FLAGS bin/doom.o -o bin/doom.nxe
