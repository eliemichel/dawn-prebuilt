fn ceil_bb2ca2() {
  var res = ceil(vec2(1.5));
}

@fragment
fn fragment_main() {
  ceil_bb2ca2();
}

@compute @workgroup_size(1)
fn compute_main() {
  ceil_bb2ca2();
}

struct VertexOutput {
  @builtin(position)
  pos : vec4<f32>,
}

@vertex
fn vertex_main() -> VertexOutput {
  var out : VertexOutput;
  out.pos = vec4<f32>();
  ceil_bb2ca2();
  return out;
}
