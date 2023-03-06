// Copyright 2021 The Tint Authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

////////////////////////////////////////////////////////////////////////////////
// File generated by tools/src/cmd/gen
// using the template:
//   test/tint/builtins/gen/gen.wgsl.tmpl
//
// Do not modify this file directly
////////////////////////////////////////////////////////////////////////////////


// fn extractBits(vec<3, u32>, u32, u32) -> vec<3, u32>
fn extractBits_12b197() {
  var res: vec3<u32> = extractBits(vec3<u32>(1u), 1u, 1u);
  prevent_dce = res;
}
@group(2) @binding(0) var<storage, read_write> prevent_dce : vec3<u32>;

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  extractBits_12b197();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  extractBits_12b197();
}

@compute @workgroup_size(1)
fn compute_main() {
  extractBits_12b197();
}
