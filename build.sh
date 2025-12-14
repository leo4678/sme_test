#!/bin/bash

set -e

BUILD_TYPE=Release
#BUILD_TYPE=Debug

BUILD_DIR=build_sme_t4

#cmake -DCMAKE_BUILD_TYPE=$BUILD_TYPE -DKLEIDIAI_BUILD_BENCHMARK=ON -S . -B ./build/
#cmake --build ./build

rm -rf /Users/kirin/Project/sme2/kleidiai/$BUILD_DIR/*
cmake -DCMAKE_BUILD_TYPE=$BUILD_TYPE -DKLEIDIAI_BUILD_BENCHMARK=ON -DKLEIDIAI_INTERNAL_EXTRA_ARCH=+sme+sme2 -S /Users/kirin/Project/sme2/kleidiai -B /Users/kirin/Project/sme2/kleidiai/$BUILD_DIR/
cmake --build /Users/kirin/Project/sme2/kleidiai/$BUILD_DIR
