//
// fragment_main
//
#version 310 es
precision highp float;
precision highp int;


struct modf_result_vec4_f32 {
  vec4 member_0;
  vec4 whole;
};

void modf_4bfced() {
  vec4 arg_0 = vec4(-1.5f);
  modf_result_vec4_f32 v = modf_result_vec4_f32(vec4(0.0f), vec4(0.0f));
  v.member_0 = modf(arg_0, v.whole);
  modf_result_vec4_f32 res = v;
}
void main() {
  modf_4bfced();
}
//
// compute_main
//
#version 310 es


struct modf_result_vec4_f32 {
  vec4 member_0;
  vec4 whole;
};

void modf_4bfced() {
  vec4 arg_0 = vec4(-1.5f);
  modf_result_vec4_f32 v = modf_result_vec4_f32(vec4(0.0f), vec4(0.0f));
  v.member_0 = modf(arg_0, v.whole);
  modf_result_vec4_f32 res = v;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  modf_4bfced();
}
//
// vertex_main
//
#version 310 es


struct modf_result_vec4_f32 {
  vec4 member_0;
  vec4 whole;
};

struct VertexOutput {
  vec4 pos;
};

void modf_4bfced() {
  vec4 arg_0 = vec4(-1.5f);
  modf_result_vec4_f32 v = modf_result_vec4_f32(vec4(0.0f), vec4(0.0f));
  v.member_0 = modf(arg_0, v.whole);
  modf_result_vec4_f32 res = v;
}
VertexOutput vertex_main_inner() {
  VertexOutput v_1 = VertexOutput(vec4(0.0f));
  v_1.pos = vec4(0.0f);
  modf_4bfced();
  return v_1;
}
void main() {
  vec4 v_2 = vertex_main_inner().pos;
  gl_Position = vec4(v_2.x, -(v_2.y), ((2.0f * v_2.z) - v_2.w), v_2.w);
  gl_PointSize = 1.0f;
}
