SKIP: INVALID


enable subgroups;

@group(0) @binding(0) var<storage, read_write> prevent_dce : u32;

fn subgroupShuffleXor_80b6e9() -> u32 {
  var res : u32 = subgroupShuffleXor(1u, 1u);
  return res;
}

@fragment
fn fragment_main() {
  prevent_dce = subgroupShuffleXor_80b6e9();
}

@compute @workgroup_size(1)
fn compute_main() {
  prevent_dce = subgroupShuffleXor_80b6e9();
}

Failed to generate: <dawn>/test/tint/builtins/gen/literal/subgroupShuffleXor/80b6e9.wgsl:41:8 error: GLSL backend does not support extension 'subgroups'
enable subgroups;
       ^^^^^^^^^


enable subgroups;

@group(0) @binding(0) var<storage, read_write> prevent_dce : u32;

fn subgroupShuffleXor_80b6e9() -> u32 {
  var res : u32 = subgroupShuffleXor(1u, 1u);
  return res;
}

@fragment
fn fragment_main() {
  prevent_dce = subgroupShuffleXor_80b6e9();
}

@compute @workgroup_size(1)
fn compute_main() {
  prevent_dce = subgroupShuffleXor_80b6e9();
}

Failed to generate: <dawn>/test/tint/builtins/gen/literal/subgroupShuffleXor/80b6e9.wgsl:41:8 error: GLSL backend does not support extension 'subgroups'
enable subgroups;
       ^^^^^^^^^


tint executable returned error: exit status 1
