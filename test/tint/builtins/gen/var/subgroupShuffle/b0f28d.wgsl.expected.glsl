SKIP: FAILED


enable subgroups;
enable subgroups_f16;
enable f16;

@group(0) @binding(0) var<storage, read_write> prevent_dce : f16;

fn subgroupShuffle_b0f28d() -> f16 {
  var arg_0 = 1.0h;
  var arg_1 = 1i;
  var res : f16 = subgroupShuffle(arg_0, arg_1);
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

Failed to generate: <dawn>/test/tint/builtins/gen/var/subgroupShuffle/b0f28d.wgsl:41:8 error: GLSL backend does not support extension 'subgroups'
enable subgroups;
       ^^^^^^^^^


enable subgroups;
enable subgroups_f16;
enable f16;

@group(0) @binding(0) var<storage, read_write> prevent_dce : f16;

fn subgroupShuffle_b0f28d() -> f16 {
  var arg_0 = 1.0h;
  var arg_1 = 1i;
  var res : f16 = subgroupShuffle(arg_0, arg_1);
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

Failed to generate: <dawn>/test/tint/builtins/gen/var/subgroupShuffle/b0f28d.wgsl:41:8 error: GLSL backend does not support extension 'subgroups'
enable subgroups;
       ^^^^^^^^^

