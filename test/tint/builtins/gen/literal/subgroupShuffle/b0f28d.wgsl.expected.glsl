SKIP: INVALID


enable subgroups;
enable subgroups_f16;
enable f16;

@group(0) @binding(0) var<storage, read_write> prevent_dce : f16;

fn subgroupShuffle_b0f28d() -> f16 {
  var res : f16 = subgroupShuffle(1.0h, 1i);
  return res;
}

@fragment
fn fragment_main() {
  prevent_dce = subgroupShuffle_b0f28d();
}

@compute @workgroup_size(1)
fn compute_main() {
  prevent_dce = subgroupShuffle_b0f28d();
}

Failed to generate: <dawn>/test/tint/builtins/gen/literal/subgroupShuffle/b0f28d.wgsl:41:8 error: GLSL backend does not support extension 'subgroups'
enable subgroups;
       ^^^^^^^^^


enable subgroups;
enable subgroups_f16;
enable f16;

@group(0) @binding(0) var<storage, read_write> prevent_dce : f16;

fn subgroupShuffle_b0f28d() -> f16 {
  var res : f16 = subgroupShuffle(1.0h, 1i);
  return res;
}

@fragment
fn fragment_main() {
  prevent_dce = subgroupShuffle_b0f28d();
}

@compute @workgroup_size(1)
fn compute_main() {
  prevent_dce = subgroupShuffle_b0f28d();
}

Failed to generate: <dawn>/test/tint/builtins/gen/literal/subgroupShuffle/b0f28d.wgsl:41:8 error: GLSL backend does not support extension 'subgroups'
enable subgroups;
       ^^^^^^^^^


tint executable returned error: exit status 1
