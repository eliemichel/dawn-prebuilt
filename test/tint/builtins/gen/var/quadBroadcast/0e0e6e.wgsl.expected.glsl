SKIP: INVALID


enable subgroups;

@group(0) @binding(0) var<storage, read_write> prevent_dce : vec3<i32>;

fn quadBroadcast_0e0e6e() -> vec3<i32> {
  var arg_0 = vec3<i32>(1i);
  const arg_1 = 1u;
  var res : vec3<i32> = quadBroadcast(arg_0, arg_1);
  return res;
}

@fragment
fn fragment_main() {
  prevent_dce = quadBroadcast_0e0e6e();
}

@compute @workgroup_size(1)
fn compute_main() {
  prevent_dce = quadBroadcast_0e0e6e();
}

Failed to generate: <dawn>/test/tint/builtins/gen/var/quadBroadcast/0e0e6e.wgsl:41:8 error: GLSL backend does not support extension 'subgroups'
enable subgroups;
       ^^^^^^^^^


enable subgroups;

@group(0) @binding(0) var<storage, read_write> prevent_dce : vec3<i32>;

fn quadBroadcast_0e0e6e() -> vec3<i32> {
  var arg_0 = vec3<i32>(1i);
  const arg_1 = 1u;
  var res : vec3<i32> = quadBroadcast(arg_0, arg_1);
  return res;
}

@fragment
fn fragment_main() {
  prevent_dce = quadBroadcast_0e0e6e();
}

@compute @workgroup_size(1)
fn compute_main() {
  prevent_dce = quadBroadcast_0e0e6e();
}

Failed to generate: <dawn>/test/tint/builtins/gen/var/quadBroadcast/0e0e6e.wgsl:41:8 error: GLSL backend does not support extension 'subgroups'
enable subgroups;
       ^^^^^^^^^


tint executable returned error: exit status 1
