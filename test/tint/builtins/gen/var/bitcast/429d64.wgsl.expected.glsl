//
// fragment_main
//
#version 310 es
#extension GL_AMD_gpu_shader_half_float: require
precision highp float;
precision highp int;

layout(binding = 0, std430)
buffer f_prevent_dce_block_ssbo {
  f16vec4 inner;
} v;
f16vec4 tint_bitcast_to_f16(vec2 src) {
  return f16vec4(unpackFloat2x16(floatBitsToUint(src).x), unpackFloat2x16(floatBitsToUint(src).y));
}
f16vec4 bitcast_429d64() {
  vec2 arg_0 = vec2(1.0f);
  f16vec4 res = tint_bitcast_to_f16(arg_0);
  return res;
}
void main() {
  v.inner = bitcast_429d64();
}
//
// compute_main
//
#version 310 es
#extension GL_AMD_gpu_shader_half_float: require

layout(binding = 0, std430)
buffer prevent_dce_block_1_ssbo {
  f16vec4 inner;
} v;
f16vec4 tint_bitcast_to_f16(vec2 src) {
  return f16vec4(unpackFloat2x16(floatBitsToUint(src).x), unpackFloat2x16(floatBitsToUint(src).y));
}
f16vec4 bitcast_429d64() {
  vec2 arg_0 = vec2(1.0f);
  f16vec4 res = tint_bitcast_to_f16(arg_0);
  return res;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  v.inner = bitcast_429d64();
}
//
// vertex_main
//
#version 310 es
#extension GL_AMD_gpu_shader_half_float: require


struct VertexOutput {
  vec4 pos;
  f16vec4 prevent_dce;
};

layout(location = 0) flat out f16vec4 vertex_main_loc0_Output;
f16vec4 tint_bitcast_to_f16(vec2 src) {
  return f16vec4(unpackFloat2x16(floatBitsToUint(src).x), unpackFloat2x16(floatBitsToUint(src).y));
}
f16vec4 bitcast_429d64() {
  vec2 arg_0 = vec2(1.0f);
  f16vec4 res = tint_bitcast_to_f16(arg_0);
  return res;
}
VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = VertexOutput(vec4(0.0f), f16vec4(0.0hf));
  tint_symbol.pos = vec4(0.0f);
  tint_symbol.prevent_dce = bitcast_429d64();
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
