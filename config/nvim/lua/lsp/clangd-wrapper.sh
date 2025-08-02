#!/bin/bash

# This wrapper is so that the lsp can read the header files of my-lib-c as pointed to by compile_flags.txt, inside any project.
# It seems that using "--compile-commands-dir=[...]/compile_flags.txt" was not working properly, and I don't know why.

# Path to your global compile_flags.txt
FLAGS_SOURCE="/Users/ferxinii/.config/nvim/lua/lsp/compile_flags.txt"

DIR=$(pwd)

ln -sf "$FLAGS_SOURCE" "$DIR/compile_flags.txt"

clangd "$@"

rm -f $DIR/compile_flags.txt

