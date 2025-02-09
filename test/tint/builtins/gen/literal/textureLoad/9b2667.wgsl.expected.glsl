//
// fragment_main
//
#version 310 es
precision highp float;
precision highp int;


struct TintTextureUniformData {
  uint tint_builtin_value_0;
};

layout(binding = 0, std430)
buffer f_prevent_dce_block_ssbo {
  float inner;
} v;
layout(binding = 0, std140)
uniform f_tint_symbol_ubo {
  TintTextureUniformData inner;
} v_1;
uniform highp sampler2DArray f_arg_0;
float textureLoad_9b2667() {
  uint v_2 = (uint(textureSize(f_arg_0, 0).z) - 1u);
  uint v_3 = min(uint(1), v_2);
  uint v_4 = (v_1.inner.tint_builtin_value_0 - 1u);
  uint v_5 = min(uint(1), v_4);
  uvec2 v_6 = (uvec2(textureSize(f_arg_0, int(v_5)).xy) - uvec2(1u));
  ivec2 v_7 = ivec2(min(uvec2(ivec2(1)), v_6));
  ivec3 v_8 = ivec3(v_7, int(v_3));
  float res = texelFetch(f_arg_0, v_8, int(v_5)).x;
  return res;
}
void main() {
  v.inner = textureLoad_9b2667();
}
//
// compute_main
//
#version 310 es


struct TintTextureUniformData {
  uint tint_builtin_value_0;
};

layout(binding = 0, std430)
buffer prevent_dce_block_1_ssbo {
  float inner;
} v;
layout(binding = 0, std140)
uniform tint_symbol_1_ubo {
  TintTextureUniformData inner;
} v_1;
uniform highp sampler2DArray arg_0;
float textureLoad_9b2667() {
  uint v_2 = (uint(textureSize(arg_0, 0).z) - 1u);
  uint v_3 = min(uint(1), v_2);
  uint v_4 = (v_1.inner.tint_builtin_value_0 - 1u);
  uint v_5 = min(uint(1), v_4);
  uvec2 v_6 = (uvec2(textureSize(arg_0, int(v_5)).xy) - uvec2(1u));
  ivec2 v_7 = ivec2(min(uvec2(ivec2(1)), v_6));
  ivec3 v_8 = ivec3(v_7, int(v_3));
  float res = texelFetch(arg_0, v_8, int(v_5)).x;
  return res;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  v.inner = textureLoad_9b2667();
}
//
// vertex_main
//
#version 310 es


struct TintTextureUniformData {
  uint tint_builtin_value_0;
};

struct VertexOutput {
  vec4 pos;
  float prevent_dce;
};

layout(binding = 0, std140)
uniform v_tint_symbol_ubo {
  TintTextureUniformData inner;
} v;
uniform highp sampler2DArray v_arg_0;
layout(location = 0) flat out float tint_interstage_location0;
float textureLoad_9b2667() {
  uint v_1 = (uint(textureSize(v_arg_0, 0).z) - 1u);
  uint v_2 = min(uint(1), v_1);
  uint v_3 = (v.inner.tint_builtin_value_0 - 1u);
  uint v_4 = min(uint(1), v_3);
  uvec2 v_5 = (uvec2(textureSize(v_arg_0, int(v_4)).xy) - uvec2(1u));
  ivec2 v_6 = ivec2(min(uvec2(ivec2(1)), v_5));
  ivec3 v_7 = ivec3(v_6, int(v_2));
  float res = texelFetch(v_arg_0, v_7, int(v_4)).x;
  return res;
}
VertexOutput vertex_main_inner() {
  VertexOutput v_8 = VertexOutput(vec4(0.0f), 0.0f);
  v_8.pos = vec4(0.0f);
  v_8.prevent_dce = textureLoad_9b2667();
  return v_8;
}
void main() {
  VertexOutput v_9 = vertex_main_inner();
  gl_Position = vec4(v_9.pos.x, -(v_9.pos.y), ((2.0f * v_9.pos.z) - v_9.pos.w), v_9.pos.w);
  tint_interstage_location0 = v_9.prevent_dce;
  gl_PointSize = 1.0f;
}
