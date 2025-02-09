//
// fragment_main
//
#version 310 es
precision highp float;
precision highp int;

layout(binding = 0, std430)
buffer f_prevent_dce_block_ssbo {
  int inner;
} v;
int extractBits_249874() {
  int arg_0 = 1;
  uint arg_1 = 1u;
  uint arg_2 = 1u;
  int v_1 = arg_0;
  uint v_2 = min(arg_1, 32u);
  uint v_3 = min(arg_2, (32u - v_2));
  int v_4 = int(v_2);
  int res = bitfieldExtract(v_1, v_4, int(v_3));
  return res;
}
void main() {
  v.inner = extractBits_249874();
}
//
// compute_main
//
#version 310 es

layout(binding = 0, std430)
buffer prevent_dce_block_1_ssbo {
  int inner;
} v;
int extractBits_249874() {
  int arg_0 = 1;
  uint arg_1 = 1u;
  uint arg_2 = 1u;
  int v_1 = arg_0;
  uint v_2 = min(arg_1, 32u);
  uint v_3 = min(arg_2, (32u - v_2));
  int v_4 = int(v_2);
  int res = bitfieldExtract(v_1, v_4, int(v_3));
  return res;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  v.inner = extractBits_249874();
}
//
// vertex_main
//
#version 310 es


struct VertexOutput {
  vec4 pos;
  int prevent_dce;
};

layout(location = 0) flat out int tint_interstage_location0;
int extractBits_249874() {
  int arg_0 = 1;
  uint arg_1 = 1u;
  uint arg_2 = 1u;
  int v = arg_0;
  uint v_1 = min(arg_1, 32u);
  uint v_2 = min(arg_2, (32u - v_1));
  int v_3 = int(v_1);
  int res = bitfieldExtract(v, v_3, int(v_2));
  return res;
}
VertexOutput vertex_main_inner() {
  VertexOutput v_4 = VertexOutput(vec4(0.0f), 0);
  v_4.pos = vec4(0.0f);
  v_4.prevent_dce = extractBits_249874();
  return v_4;
}
void main() {
  VertexOutput v_5 = vertex_main_inner();
  gl_Position = vec4(v_5.pos.x, -(v_5.pos.y), ((2.0f * v_5.pos.z) - v_5.pos.w), v_5.pos.w);
  tint_interstage_location0 = v_5.prevent_dce;
  gl_PointSize = 1.0f;
}
