// Copyright 2025 The Dawn & Tint Authors
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

#ifndef SRC_TINT_LANG_CORE_TYPE_U64_H_
#define SRC_TINT_LANG_CORE_TYPE_U64_H_

#include <string>

#include "src/tint/lang/core/type/numeric_scalar.h"

namespace tint::core::type {

/// An unsigned 64-bit integer type.
class U64 final : public Castable<U64, NumericScalar> {
  public:
    /// Constructor
    U64();

    /// Destructor
    ~U64() override;

    /// @returns the name for this type that closely resembles how it would be declared in WGSL.
    std::string FriendlyName() const override { return "u64"; }

    /// @returns the size in bytes of the type.
    uint32_t Size() const override { return 8; }

    /// @returns the alignment in bytes of the type.
    uint32_t Align() const override { return 8; }

    /// @param ctx the clone context
    /// @returns a clone of this type
    U64* Clone(CloneContext& ctx) const override;
};

}  // namespace tint::core::type

#endif  // SRC_TINT_LANG_CORE_TYPE_U64_H_
