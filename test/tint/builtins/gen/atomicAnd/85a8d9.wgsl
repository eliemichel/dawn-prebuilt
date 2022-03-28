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
// File generated by tools/builtin-gen
// using the template:
//   test/tint/builtins/builtins.wgsl.tmpl
// and the builtin defintion file:
//   src/tint/builtins.def
//
// Do not modify this file directly
////////////////////////////////////////////////////////////////////////////////

struct SB_RW {
  arg_0: atomic<u32>,
};
@group(0) @binding(0) var<storage, read_write> sb_rw : SB_RW;

// fn atomicAnd(ptr<storage, atomic<u32>, read_write>, u32) -> u32
fn atomicAnd_85a8d9() {
  var res: u32 = atomicAnd(&sb_rw.arg_0, 1u);
}

@stage(fragment)
fn fragment_main() {
  atomicAnd_85a8d9();
}

@stage(compute) @workgroup_size(1)
fn compute_main() {
  atomicAnd_85a8d9();
}
