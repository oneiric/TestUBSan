#!/bin/bash

# Test gcc version
clang --version

# Build the API library
clang++ -fPIC -D API_EXPORTS -o lib.dylib -shared lib.cpp -fvisibility=hidden -Wall -fsanitize=undefined

# Build the main
clang++ -o main main.cpp ./lib.dylib -fvisibility=hidden -Wall -fsanitize=undefined

# Test main
./main
