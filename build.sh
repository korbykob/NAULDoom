#!/bin/bash
set -e

mkdir -p bin
gcc $PROGRAM_COMPILER_FLAGS -Iinclude src/doom.c -o bin/doom.o
nm bin/doom.o > bin/doom.sym
ld $PROGRAM_LINKER_FLAGS bin/doom.o -o bin/doom.nxe
