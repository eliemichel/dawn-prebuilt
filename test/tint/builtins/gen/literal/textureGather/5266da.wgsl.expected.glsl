//
// fragment_main
//
#version 310 es
precision highp float;
precision highp int;

layout(binding = 0, std430)
buffer f_prevent_dce_block_ssbo {
  vec4 inner;
} v;
uniform highp sampler2D arg_1_arg_2;
vec4 textureGather_5266da() {
  vec4 res = textureGather(arg_1_arg_2, vec2(1.0f), int(1));
  return res;
}
void main() {
  v.inner = textureGather_5266da();
}
//
// compute_main
//
#version 310 es

layout(binding = 0, std430)
buffer prevent_dce_block_1_ssbo {
  vec4 inner;
} v;
uniform highp sampler2D arg_1_arg_2;
vec4 textureGather_5266da() {
  vec4 res = textureGather(arg_1_arg_2, vec2(1.0f), int(1));
  return res;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  v.inner = textureGather_5266da();
}
//
// vertex_main
//
#version 310 es


struct VertexOutput {
  vec4 pos;
  vec4 prevent_dce;
};

uniform highp sampler2D arg_1_arg_2;
layout(location = 0) flat out vec4 vertex_main_loc0_Output;
vec4 textureGather_5266da() {
  vec4 res = textureGather(arg_1_arg_2, vec2(1.0f), int(1));
  return res;
}
VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = VertexOutput(vec4(0.0f), vec4(0.0f));
  tint_symbol.pos = vec4(0.0f);
  tint_symbol.prevent_dce = textureGather_5266da();
  return tint_symbol;
}
void main() {
  VertexOutput v = vertex_main_inner();
  gl_Position = v.pos;
  gl_Position.y = -(gl_Position.y);
  gl_Position.z = ((2.0f * gl_Position.z) - gl_Position.w);
  vertex_main_loc0_Output = v.prevent_dce;
  gl_PointSize = 1.0f;
}
