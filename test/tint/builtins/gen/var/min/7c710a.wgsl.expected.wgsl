enable f16;

fn min_7c710a() {
  var arg_0 = vec4<f16>(1.0h);
  var arg_1 = vec4<f16>(1.0h);
  var res : vec4<f16> = min(arg_0, arg_1);
  prevent_dce = res;
}

@group(2) @binding(0) var<storage, read_write> prevent_dce : vec4<f16>;

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  min_7c710a();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  min_7c710a();
}

@compute @workgroup_size(1)
fn compute_main() {
  min_7c710a();
}
