//
// fragment_main
//
#version 460
precision highp float;
precision highp int;

layout(binding = 0, std430)
buffer f_prevent_dce_block_ssbo {
  uvec4 inner;
} v;
uniform highp usamplerCubeArray arg_1_arg_2;
uvec4 textureGather_d4b5c6() {
  vec3 arg_3 = vec3(1.0f);
  int arg_4 = 1;
  vec3 v_1 = arg_3;
  vec4 v_2 = vec4(v_1, float(arg_4));
  uvec4 res = textureGather(arg_1_arg_2, v_2, int(1u));
  return res;
}
void main() {
  v.inner = textureGather_d4b5c6();
}
//
// compute_main
//
#version 460

layout(binding = 0, std430)
buffer prevent_dce_block_1_ssbo {
  uvec4 inner;
} v;
uniform highp usamplerCubeArray arg_1_arg_2;
uvec4 textureGather_d4b5c6() {
  vec3 arg_3 = vec3(1.0f);
  int arg_4 = 1;
  vec3 v_1 = arg_3;
  vec4 v_2 = vec4(v_1, float(arg_4));
  uvec4 res = textureGather(arg_1_arg_2, v_2, int(1u));
  return res;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  v.inner = textureGather_d4b5c6();
}
//
// vertex_main
//
#version 460


struct VertexOutput {
  vec4 pos;
  uvec4 prevent_dce;
};

uniform highp usamplerCubeArray arg_1_arg_2;
layout(location = 0) flat out uvec4 vertex_main_loc0_Output;
uvec4 textureGather_d4b5c6() {
  vec3 arg_3 = vec3(1.0f);
  int arg_4 = 1;
  vec3 v = arg_3;
  vec4 v_1 = vec4(v, float(arg_4));
  uvec4 res = textureGather(arg_1_arg_2, v_1, int(1u));
  return res;
}
VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = VertexOutput(vec4(0.0f), uvec4(0u));
  tint_symbol.pos = vec4(0.0f);
  tint_symbol.prevent_dce = textureGather_d4b5c6();
  return tint_symbol;
}
void main() {
  VertexOutput v_2 = vertex_main_inner();
  gl_Position = v_2.pos;
  gl_Position.y = -(gl_Position.y);
  gl_Position.z = ((2.0f * gl_Position.z) - gl_Position.w);
  vertex_main_loc0_Output = v_2.prevent_dce;
  gl_PointSize = 1.0f;
}
