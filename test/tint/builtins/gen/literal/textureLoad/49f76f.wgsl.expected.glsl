#version 310 es

uniform highp usampler2DMS arg_0_1;
layout(binding = 0, std430) buffer prevent_dce_block_ssbo {
  uvec4 inner;
} prevent_dce;

void textureLoad_49f76f() {
  uvec4 res = texelFetch(arg_0_1, ivec2(uvec2(1u)), int(1u));
  prevent_dce.inner = res;
}

vec4 vertex_main() {
  textureLoad_49f76f();
  return vec4(0.0f);
}

void main() {
  gl_PointSize = 1.0;
  vec4 inner_result = vertex_main();
  gl_Position = inner_result;
  gl_Position.y = -(gl_Position.y);
  gl_Position.z = ((2.0f * gl_Position.z) - gl_Position.w);
  return;
}
#version 310 es
precision mediump float;

uniform highp usampler2DMS arg_0_1;
layout(binding = 0, std430) buffer prevent_dce_block_ssbo {
  uvec4 inner;
} prevent_dce;

void textureLoad_49f76f() {
  uvec4 res = texelFetch(arg_0_1, ivec2(uvec2(1u)), int(1u));
  prevent_dce.inner = res;
}

void fragment_main() {
  textureLoad_49f76f();
}

void main() {
  fragment_main();
  return;
}
#version 310 es

uniform highp usampler2DMS arg_0_1;
layout(binding = 0, std430) buffer prevent_dce_block_ssbo {
  uvec4 inner;
} prevent_dce;

void textureLoad_49f76f() {
  uvec4 res = texelFetch(arg_0_1, ivec2(uvec2(1u)), int(1u));
  prevent_dce.inner = res;
}

void compute_main() {
  textureLoad_49f76f();
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  compute_main();
  return;
}
