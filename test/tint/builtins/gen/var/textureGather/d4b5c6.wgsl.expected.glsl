#version 460

layout(binding = 0, std430) buffer prevent_dce_block_ssbo {
  uvec4 inner;
} prevent_dce;

uniform highp usamplerCubeArray arg_1_arg_2;

uvec4 textureGather_d4b5c6() {
  vec3 arg_3 = vec3(1.0f);
  int arg_4 = 1;
  uvec4 res = textureGather(arg_1_arg_2, vec4(arg_3, float(arg_4)), int(1u));
  return res;
}

struct VertexOutput {
  vec4 pos;
  uvec4 prevent_dce;
};

void fragment_main() {
  prevent_dce.inner = textureGather_d4b5c6();
}

void main() {
  fragment_main();
  return;
}
#version 460

layout(binding = 0, std430) buffer prevent_dce_block_ssbo {
  uvec4 inner;
} prevent_dce;

uniform highp usamplerCubeArray arg_1_arg_2;

uvec4 textureGather_d4b5c6() {
  vec3 arg_3 = vec3(1.0f);
  int arg_4 = 1;
  uvec4 res = textureGather(arg_1_arg_2, vec4(arg_3, float(arg_4)), int(1u));
  return res;
}

struct VertexOutput {
  vec4 pos;
  uvec4 prevent_dce;
};

void compute_main() {
  prevent_dce.inner = textureGather_d4b5c6();
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  compute_main();
  return;
}
#version 460

layout(location = 0) flat out uvec4 prevent_dce_1;
uniform highp usamplerCubeArray arg_1_arg_2;

uvec4 textureGather_d4b5c6() {
  vec3 arg_3 = vec3(1.0f);
  int arg_4 = 1;
  uvec4 res = textureGather(arg_1_arg_2, vec4(arg_3, float(arg_4)), int(1u));
  return res;
}

struct VertexOutput {
  vec4 pos;
  uvec4 prevent_dce;
};

VertexOutput vertex_main() {
  VertexOutput tint_symbol = VertexOutput(vec4(0.0f, 0.0f, 0.0f, 0.0f), uvec4(0u, 0u, 0u, 0u));
  tint_symbol.pos = vec4(0.0f);
  tint_symbol.prevent_dce = textureGather_d4b5c6();
  return tint_symbol;
}

void main() {
  gl_PointSize = 1.0;
  VertexOutput inner_result = vertex_main();
  gl_Position = inner_result.pos;
  prevent_dce_1 = inner_result.prevent_dce;
  gl_Position.y = -(gl_Position.y);
  gl_Position.z = ((2.0f * gl_Position.z) - gl_Position.w);
  return;
}
