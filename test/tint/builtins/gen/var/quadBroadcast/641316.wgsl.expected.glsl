SKIP: INVALID


enable subgroups;

@group(0) @binding(0) var<storage, read_write> prevent_dce : vec2<u32>;

fn quadBroadcast_641316() -> vec2<u32> {
  var arg_0 = vec2<u32>(1u);
  const arg_1 = 1i;
  var res : vec2<u32> = quadBroadcast(arg_0, arg_1);
  return res;
}

@fragment
fn fragment_main() {
  prevent_dce = quadBroadcast_641316();
}

@compute @workgroup_size(1)
fn compute_main() {
  prevent_dce = quadBroadcast_641316();
}

Failed to generate: <dawn>/test/tint/builtins/gen/var/quadBroadcast/641316.wgsl:41:8 error: GLSL backend does not support extension 'subgroups'
enable subgroups;
       ^^^^^^^^^


enable subgroups;

@group(0) @binding(0) var<storage, read_write> prevent_dce : vec2<u32>;

fn quadBroadcast_641316() -> vec2<u32> {
  var arg_0 = vec2<u32>(1u);
  const arg_1 = 1i;
  var res : vec2<u32> = quadBroadcast(arg_0, arg_1);
  return res;
}

@fragment
fn fragment_main() {
  prevent_dce = quadBroadcast_641316();
}

@compute @workgroup_size(1)
fn compute_main() {
  prevent_dce = quadBroadcast_641316();
}

Failed to generate: <dawn>/test/tint/builtins/gen/var/quadBroadcast/641316.wgsl:41:8 error: GLSL backend does not support extension 'subgroups'
enable subgroups;
       ^^^^^^^^^


tint executable returned error: exit status 1
