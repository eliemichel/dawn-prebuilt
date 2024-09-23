// Copyright 2021 The Dawn & Tint Authors
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
//   src/tint/lang/core/parameter_usage.cc.tmpl
//
// To regenerate run: './tools/run gen'
//
//                       Do not modify this file directly
////////////////////////////////////////////////////////////////////////////////

#include "src/tint/lang/core/parameter_usage.h"

namespace tint::core {

std::string_view ToString(ParameterUsage usage) {
    switch (usage) {
        case ParameterUsage::kNone:
            return "none";
        case ParameterUsage::kArrayIndex:
            return "array_index";
        case ParameterUsage::kBase:
            return "base";
        case ParameterUsage::kBias:
            return "bias";
        case ParameterUsage::kBits:
            return "bits";
        case ParameterUsage::kCompareValue:
            return "compare_value";
        case ParameterUsage::kComponent:
            return "component";
        case ParameterUsage::kCoords:
            return "coords";
        case ParameterUsage::kDdx:
            return "ddx";
        case ParameterUsage::kDdy:
            return "ddy";
        case ParameterUsage::kDelta:
            return "delta";
        case ParameterUsage::kDepth:
            return "depth";
        case ParameterUsage::kDepthRef:
            return "depth_ref";
        case ParameterUsage::kE:
            return "e";
        case ParameterUsage::kElements:
            return "elements";
        case ParameterUsage::kHeight:
            return "height";
        case ParameterUsage::kId:
            return "id";
        case ParameterUsage::kInputAttachment:
            return "input_attachment";
        case ParameterUsage::kInsert:
            return "insert";
        case ParameterUsage::kLevel:
            return "level";
        case ParameterUsage::kLocation:
            return "location";
        case ParameterUsage::kMask:
            return "mask";
        case ParameterUsage::kNumLevels:
            return "num_levels";
        case ParameterUsage::kOffset:
            return "offset";
        case ParameterUsage::kOriginalValue:
            return "original_value";
        case ParameterUsage::kSampleIndex:
            return "sample_index";
        case ParameterUsage::kSampler:
            return "sampler";
        case ParameterUsage::kSamples:
            return "samples";
        case ParameterUsage::kSourceLaneIndex:
            return "sourceLaneIndex";
        case ParameterUsage::kTexture:
            return "texture";
        case ParameterUsage::kValue:
            return "value";
        case ParameterUsage::kW:
            return "w";
        case ParameterUsage::kWidth:
            return "width";
        case ParameterUsage::kX:
            return "x";
        case ParameterUsage::kXy:
            return "xy";
        case ParameterUsage::kXyz:
            return "xyz";
        case ParameterUsage::kY:
            return "y";
        case ParameterUsage::kYz:
            return "yz";
        case ParameterUsage::kZ:
            return "z";
        case ParameterUsage::kZw:
            return "zw";
        case ParameterUsage::kZyw:
            return "zyw";
    }
    return "<unknown>";
}

}  // namespace tint::core
