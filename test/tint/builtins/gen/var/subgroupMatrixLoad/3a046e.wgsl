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

////////////////////////////////////////////////////////////////////////////////
// File generated by 'tools/src/cmd/gen' using the template:
//   test/tint/builtins/gen/gen.wgsl.tmpl
//
// To regenerate run: './tools/run gen'
//
//                       Do not modify this file directly
////////////////////////////////////////////////////////////////////////////////


// flags: --hlsl-shader-model 62


enable chromium_experimental_subgroup_matrix;

enable f16;
@group(0) @binding(0) var<storage, read_write> prevent_dce : array<f16, 1024>;

struct SB_RW {
  arg_0: array<f16, 64>,
};
@group(0) @binding(1) var<storage, read_write> sb_rw : SB_RW;

// fn subgroupMatrixLoad<T: subgroup_matrix<right, f16, 8, 8>>(ptr<storage, array<f16, 64>, read_write>, u32, @const bool, u32) -> subgroup_matrix<right, f16, 8, 8>
fn subgroupMatrixLoad_3a046e() -> subgroup_matrix_right<f16, 8, 8>{
  var arg_1 = 1u;
  const arg_2 = true;
  var arg_3 = 1u;
  var res: subgroup_matrix_right<f16, 8, 8> = subgroupMatrixLoad<subgroup_matrix_right<f16, 8, 8>>(&sb_rw.arg_0, arg_1, arg_2, arg_3);
  return res;
}
@compute @workgroup_size(1)
fn compute_main() {
  subgroupMatrixStore(&prevent_dce, 0, subgroupMatrixLoad_3a046e(), false, 64);
}
