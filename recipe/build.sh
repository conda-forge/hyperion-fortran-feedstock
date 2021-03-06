#!/bin/bash

./configure --prefix=$PREFIX
make

# In some cases the compilation process can produce .dSYM debug directories,
# so we remove those before installation
rm -rf bin/*.dSYM

make install
