fn ldexp_a22679() {
  var arg_0 = vec2<f32>(1.0f);
  const arg_1 = vec2(1);
  var res : vec2<f32> = ldexp(arg_0, arg_1);
  prevent_dce = res;
}

@group(2) @binding(0) var<storage, read_write> prevent_dce : vec2<f32>;

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  ldexp_a22679();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  ldexp_a22679();
}

@compute @workgroup_size(1)
fn compute_main() {
  ldexp_a22679();
}
