#!/bin/bash

# Test gcc version
gcc --version

# Build the API library
g++ -fPIC -D API_EXPORTS -o lib.so -shared lib.cpp -fvisibility=hidden -Wall -fsanitize=undefined -lubsan

# Build the main
g++ -o main main.cpp ./lib.so -fvisibility=hidden -Wall -fsanitize=undefined -lubsan

# Test main
./main
