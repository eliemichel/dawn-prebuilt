SKIP: INVALID


enable subgroups;

@group(0) @binding(0) var<storage, read_write> prevent_dce : f32;

fn subgroupMul_0de9d3() -> f32 {
  var arg_0 = 1.0f;
  var res : f32 = subgroupMul(arg_0);
  return res;
}

@fragment
fn fragment_main() {
  prevent_dce = subgroupMul_0de9d3();
}

@compute @workgroup_size(1)
fn compute_main() {
  prevent_dce = subgroupMul_0de9d3();
}

Failed to generate: <dawn>/test/tint/builtins/gen/var/subgroupMul/0de9d3.wgsl:41:8 error: GLSL backend does not support extension 'subgroups'
enable subgroups;
       ^^^^^^^^^


enable subgroups;

@group(0) @binding(0) var<storage, read_write> prevent_dce : f32;

fn subgroupMul_0de9d3() -> f32 {
  var arg_0 = 1.0f;
  var res : f32 = subgroupMul(arg_0);
  return res;
}

@fragment
fn fragment_main() {
  prevent_dce = subgroupMul_0de9d3();
}

@compute @workgroup_size(1)
fn compute_main() {
  prevent_dce = subgroupMul_0de9d3();
}

Failed to generate: <dawn>/test/tint/builtins/gen/var/subgroupMul/0de9d3.wgsl:41:8 error: GLSL backend does not support extension 'subgroups'
enable subgroups;
       ^^^^^^^^^


tint executable returned error: exit status 1
