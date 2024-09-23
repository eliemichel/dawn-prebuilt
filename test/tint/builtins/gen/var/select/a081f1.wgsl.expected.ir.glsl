#version 310 es
#extension GL_AMD_gpu_shader_half_float: require
precision highp float;
precision highp int;

layout(binding = 0, std430)
buffer tint_symbol_1_1_ssbo {
  f16vec4 tint_symbol;
} v;
f16vec4 select_a081f1() {
  f16vec4 arg_0 = f16vec4(1.0hf);
  f16vec4 arg_1 = f16vec4(1.0hf);
  bvec4 arg_2 = bvec4(true);
  f16vec4 v_1 = arg_0;
  f16vec4 v_2 = arg_1;
  bvec4 v_3 = arg_2;
  float16_t v_4 = ((v_3.x) ? (v_2.x) : (v_1.x));
  float16_t v_5 = ((v_3.y) ? (v_2.y) : (v_1.y));
  float16_t v_6 = ((v_3.z) ? (v_2.z) : (v_1.z));
  f16vec4 res = f16vec4(v_4, v_5, v_6, ((v_3.w) ? (v_2.w) : (v_1.w)));
  return res;
}
void main() {
  v.tint_symbol = select_a081f1();
}
#version 310 es
#extension GL_AMD_gpu_shader_half_float: require

layout(binding = 0, std430)
buffer tint_symbol_1_1_ssbo {
  f16vec4 tint_symbol;
} v;
f16vec4 select_a081f1() {
  f16vec4 arg_0 = f16vec4(1.0hf);
  f16vec4 arg_1 = f16vec4(1.0hf);
  bvec4 arg_2 = bvec4(true);
  f16vec4 v_1 = arg_0;
  f16vec4 v_2 = arg_1;
  bvec4 v_3 = arg_2;
  float16_t v_4 = ((v_3.x) ? (v_2.x) : (v_1.x));
  float16_t v_5 = ((v_3.y) ? (v_2.y) : (v_1.y));
  float16_t v_6 = ((v_3.z) ? (v_2.z) : (v_1.z));
  f16vec4 res = f16vec4(v_4, v_5, v_6, ((v_3.w) ? (v_2.w) : (v_1.w)));
  return res;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  v.tint_symbol = select_a081f1();
}
#version 310 es
#extension GL_AMD_gpu_shader_half_float: require


struct VertexOutput {
  vec4 pos;
  f16vec4 prevent_dce;
};

layout(location = 0) flat out f16vec4 vertex_main_loc0_Output;
f16vec4 select_a081f1() {
  f16vec4 arg_0 = f16vec4(1.0hf);
  f16vec4 arg_1 = f16vec4(1.0hf);
  bvec4 arg_2 = bvec4(true);
  f16vec4 v = arg_0;
  f16vec4 v_1 = arg_1;
  bvec4 v_2 = arg_2;
  float16_t v_3 = ((v_2.x) ? (v_1.x) : (v.x));
  float16_t v_4 = ((v_2.y) ? (v_1.y) : (v.y));
  float16_t v_5 = ((v_2.z) ? (v_1.z) : (v.z));
  f16vec4 res = f16vec4(v_3, v_4, v_5, ((v_2.w) ? (v_1.w) : (v.w)));
  return res;
}
VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = VertexOutput(vec4(0.0f), f16vec4(0.0hf));
  tint_symbol.pos = vec4(0.0f);
  tint_symbol.prevent_dce = select_a081f1();
  return tint_symbol;
}
void main() {
  VertexOutput v_6 = vertex_main_inner();
  gl_Position = v_6.pos;
  gl_Position[1u] = -(gl_Position.y);
  gl_Position[2u] = ((2.0f * gl_Position.z) - gl_Position.w);
  vertex_main_loc0_Output = v_6.prevent_dce;
  gl_PointSize = 1.0f;
}
