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


# hw.optional.arm.FEAT_CRC32: 1
# hw.optional.arm.FEAT_FlagM: 1
# hw.optional.arm.FEAT_FlagM2: 1
# hw.optional.arm.FEAT_FHM: 1
# hw.optional.arm.FEAT_DotProd: 1
# hw.optional.arm.FEAT_SHA3: 1
# hw.optional.arm.FEAT_RDM: 1
# hw.optional.arm.FEAT_LSE: 1
# hw.optional.arm.FEAT_SHA256: 1
# hw.optional.arm.FEAT_SHA512: 1
# hw.optional.arm.FEAT_SHA1: 1
# hw.optional.arm.FEAT_AES: 1
# hw.optional.arm.FEAT_PMULL: 1
# hw.optional.arm.FEAT_SPECRES: 0
# hw.optional.arm.FEAT_SPECRES2: 0
# hw.optional.arm.FEAT_SB: 1
# hw.optional.arm.FEAT_FRINTTS: 1
# hw.optional.arm.FEAT_PACIMP: 1
# hw.optional.arm.FEAT_LRCPC: 1
# hw.optional.arm.FEAT_LRCPC2: 1
# hw.optional.arm.FEAT_FCMA: 1
# hw.optional.arm.FEAT_JSCVT: 1
# hw.optional.arm.FEAT_PAuth: 1
# hw.optional.arm.FEAT_PAuth2: 1
# hw.optional.arm.FEAT_FPAC: 1
# hw.optional.arm.FEAT_FPACCOMBINE: 1
# hw.optional.arm.FEAT_DPB: 1
# hw.optional.arm.FEAT_DPB2: 1
# hw.optional.arm.FEAT_BF16: 1
# hw.optional.arm.FEAT_EBF16: 1
# hw.optional.arm.FEAT_I8MM: 1
# hw.optional.arm.FEAT_WFxT: 1
# hw.optional.arm.FEAT_RPRES: 1
# hw.optional.arm.FEAT_CSSC: 1
# hw.optional.arm.FEAT_HBC: 1
# hw.optional.arm.FEAT_ECV: 1
# hw.optional.arm.FEAT_AFP: 1
# hw.optional.arm.FEAT_LSE2: 1
# hw.optional.arm.FEAT_CSV2: 1
# hw.optional.arm.FEAT_CSV3: 1
# hw.optional.arm.FEAT_DIT: 1
# hw.optional.arm.FEAT_FP16: 1
# hw.optional.arm.FEAT_SSBS: 0
# hw.optional.arm.FEAT_BTI: 1
# hw.optional.arm.FEAT_SME: 1
# hw.optional.arm.FEAT_SME2: 1
# hw.optional.arm.FEAT_SME2p1: 1
# hw.optional.arm.FEAT_MTE: 1
# hw.optional.arm.FEAT_MTE2: 1
# hw.optional.arm.FEAT_MTE3: 0
# hw.optional.arm.FEAT_MTE4: 1
# hw.optional.arm.FEAT_MTE_ASYNC: 0
# hw.optional.arm.FEAT_MTE_STORE_ONLY: 1
# hw.optional.arm.FEAT_SME_F64F64: 1
# hw.optional.arm.FEAT_SME_I16I64: 1
# hw.optional.arm.FEAT_SME_F16F16: 1
# hw.optional.arm.FEAT_SME_B16B16: 1
# hw.optional.arm.FEAT_MTE_CANONICAL_TAGS: 1
# hw.optional.arm.FEAT_MTE_NO_ADDRESS_TAGS: 1
