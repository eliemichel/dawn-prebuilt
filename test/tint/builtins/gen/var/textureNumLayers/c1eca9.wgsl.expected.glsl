//
// fragment_main
//
#version 460
precision highp float;
precision highp int;

layout(binding = 0, std430)
buffer f_prevent_dce_block_ssbo {
  uint inner;
} v;
uniform highp usamplerCubeArray arg_0;
uint textureNumLayers_c1eca9() {
  uint res = uint(textureSize(arg_0, 0).z);
  return res;
}
void main() {
  v.inner = textureNumLayers_c1eca9();
}
//
// compute_main
//
#version 460

layout(binding = 0, std430)
buffer prevent_dce_block_1_ssbo {
  uint inner;
} v;
uniform highp usamplerCubeArray arg_0;
uint textureNumLayers_c1eca9() {
  uint res = uint(textureSize(arg_0, 0).z);
  return res;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  v.inner = textureNumLayers_c1eca9();
}
//
// vertex_main
//
#version 460


struct VertexOutput {
  vec4 pos;
  uint prevent_dce;
};

uniform highp usamplerCubeArray arg_0;
layout(location = 0) flat out uint vertex_main_loc0_Output;
uint textureNumLayers_c1eca9() {
  uint res = uint(textureSize(arg_0, 0).z);
  return res;
}
VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = VertexOutput(vec4(0.0f), 0u);
  tint_symbol.pos = vec4(0.0f);
  tint_symbol.prevent_dce = textureNumLayers_c1eca9();
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
