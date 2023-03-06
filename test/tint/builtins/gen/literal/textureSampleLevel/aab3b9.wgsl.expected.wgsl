@group(1) @binding(0) var arg_0 : texture_cube_array<f32>;

@group(1) @binding(1) var arg_1 : sampler;

fn textureSampleLevel_aab3b9() {
  var res : vec4<f32> = textureSampleLevel(arg_0, arg_1, vec3<f32>(1.0f), 1u, 1.0f);
  prevent_dce = res;
}

@group(2) @binding(0) var<storage, read_write> prevent_dce : vec4<f32>;

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureSampleLevel_aab3b9();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureSampleLevel_aab3b9();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureSampleLevel_aab3b9();
}
