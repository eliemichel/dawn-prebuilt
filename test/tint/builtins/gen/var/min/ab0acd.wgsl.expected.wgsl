enable f16;

fn min_ab0acd() {
  var arg_0 = vec3<f16>(1.0h);
  var arg_1 = vec3<f16>(1.0h);
  var res : vec3<f16> = min(arg_0, arg_1);
  prevent_dce = res;
}

@group(2) @binding(0) var<storage, read_write> prevent_dce : vec3<f16>;

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  min_ab0acd();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  min_ab0acd();
}

@compute @workgroup_size(1)
fn compute_main() {
  min_ab0acd();
}
