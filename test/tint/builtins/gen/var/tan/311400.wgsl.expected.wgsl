fn tan_311400() {
  const arg_0 = 1.0;
  var res = tan(arg_0);
}

@fragment
fn fragment_main() {
  tan_311400();
}

@compute @workgroup_size(1)
fn compute_main() {
  tan_311400();
}

struct VertexOutput {
  @builtin(position)
  pos : vec4<f32>,
}

@vertex
fn vertex_main() -> VertexOutput {
  var out : VertexOutput;
  out.pos = vec4<f32>();
  tan_311400();
  return out;
}
