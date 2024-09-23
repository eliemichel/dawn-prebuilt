// Copyright 2024 The Dawn & Tint Authors
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
// 1. Redistributions of source code must retain the above copyright notice, this
//    list of conditions and the following disclaimer.
//
// 2. Redistributions in binary form must reproduce the above copyright notice,
//    this list of conditions and the following disclaimer in the documentation
//    and/or other materials provided with the distribution.
//
// 3. Neither the name of the copyright holder nor the names of its
//    contributors may be used to endorse or promote products derived from
//    this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
// FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
// DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
// SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
// CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
// OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

////////////////////////////////////////////////////////////////////////////////
// File generated by 'tools/src/cmd/gen' using the template:
//   src/tint/lang/glsl/builtin_fn.cc.tmpl
//
// To regenerate run: './tools/run gen'
//
//                       Do not modify this file directly
////////////////////////////////////////////////////////////////////////////////

#include "src/tint/lang/glsl/builtin_fn.h"

namespace tint::glsl {

const char* str(BuiltinFn i) {
    switch (i) {
        case BuiltinFn::kNone:
            return "<none>";
        case BuiltinFn::kBarrier:
            return "barrier";
        case BuiltinFn::kMemoryBarrierBuffer:
            return "memoryBarrierBuffer";
        case BuiltinFn::kMemoryBarrierImage:
            return "memoryBarrierImage";
        case BuiltinFn::kAtomicCompSwap:
            return "atomicCompSwap";
        case BuiltinFn::kAtomicSub:
            return "atomicSub";
        case BuiltinFn::kFloatBitsToInt:
            return "floatBitsToInt";
        case BuiltinFn::kFloatBitsToUint:
            return "floatBitsToUint";
        case BuiltinFn::kIntBitsToFloat:
            return "intBitsToFloat";
        case BuiltinFn::kUintBitsToFloat:
            return "uintBitsToFloat";
        case BuiltinFn::kBitCount:
            return "bitCount";
        case BuiltinFn::kBitfieldExtract:
            return "bitfieldExtract";
        case BuiltinFn::kBitfieldInsert:
            return "bitfieldInsert";
        case BuiltinFn::kPackFloat2X16:
            return "packFloat2x16";
        case BuiltinFn::kUnpackFloat2X16:
            return "unpackFloat2x16";
        case BuiltinFn::kTextureSize:
            return "textureSize";
        case BuiltinFn::kImageSize:
            return "imageSize";
        case BuiltinFn::kTexelFetch:
            return "texelFetch";
        case BuiltinFn::kImageLoad:
            return "imageLoad";
        case BuiltinFn::kImageStore:
            return "imageStore";
    }
    return "<unknown>";
}

}  // namespace tint::glsl
