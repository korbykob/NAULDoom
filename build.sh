#!/bin/bash
set -e

mkdir -p bin
gcc $PROGRAM_COMPILER_FLAGS -Iinclude -std=gnu17 -Wall -Wextra -Werror -Wno-unused-parameter src/doom.c -o bin/doom.o
ld $PROGRAM_LINKER_FLAGS bin/doom.o -o bin/doom.nxe
