//
// fragment_main
//
#version 310 es
precision highp float;
precision highp int;

layout(binding = 0, std430)
buffer f_prevent_dce_block_ssbo {
  ivec3 inner;
} v;
ivec3 countLeadingZeros_7c38a6() {
  ivec3 arg_0 = ivec3(1);
  uvec3 v_1 = uvec3(arg_0);
  ivec3 res = ivec3(((mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u))) | (mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u))) | (mix(uvec3(0u), uvec3(4u), lessThanEqual(((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u))) | (mix(uvec3(0u), uvec3(2u), lessThanEqual((((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))), uvec3(1073741823u))) | (mix(uvec3(0u), uvec3(1u), lessThanEqual(((((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))) << mix(uvec3(0u), uvec3(2u), lessThanEqual((((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))), uvec3(1073741823u)))), uvec3(2147483647u))) | mix(uvec3(0u), uvec3(1u), equal(((((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))) << mix(uvec3(0u), uvec3(2u), lessThanEqual((((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))), uvec3(1073741823u)))), uvec3(0u)))))))) + mix(uvec3(0u), uvec3(1u), equal(((((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))) << mix(uvec3(0u), uvec3(2u), lessThanEqual((((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))), uvec3(1073741823u)))), uvec3(0u)))));
  return res;
}
void main() {
  v.inner = countLeadingZeros_7c38a6();
}
//
// compute_main
//
#version 310 es

layout(binding = 0, std430)
buffer prevent_dce_block_1_ssbo {
  ivec3 inner;
} v;
ivec3 countLeadingZeros_7c38a6() {
  ivec3 arg_0 = ivec3(1);
  uvec3 v_1 = uvec3(arg_0);
  ivec3 res = ivec3(((mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u))) | (mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u))) | (mix(uvec3(0u), uvec3(4u), lessThanEqual(((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u))) | (mix(uvec3(0u), uvec3(2u), lessThanEqual((((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))), uvec3(1073741823u))) | (mix(uvec3(0u), uvec3(1u), lessThanEqual(((((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))) << mix(uvec3(0u), uvec3(2u), lessThanEqual((((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))), uvec3(1073741823u)))), uvec3(2147483647u))) | mix(uvec3(0u), uvec3(1u), equal(((((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))) << mix(uvec3(0u), uvec3(2u), lessThanEqual((((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))), uvec3(1073741823u)))), uvec3(0u)))))))) + mix(uvec3(0u), uvec3(1u), equal(((((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))) << mix(uvec3(0u), uvec3(2u), lessThanEqual((((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v_1 << mix(uvec3(0u), uvec3(16u), lessThanEqual(v_1, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))), uvec3(1073741823u)))), uvec3(0u)))));
  return res;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  v.inner = countLeadingZeros_7c38a6();
}
//
// vertex_main
//
#version 310 es


struct VertexOutput {
  vec4 pos;
  ivec3 prevent_dce;
};

layout(location = 0) flat out ivec3 vertex_main_loc0_Output;
ivec3 countLeadingZeros_7c38a6() {
  ivec3 arg_0 = ivec3(1);
  uvec3 v = uvec3(arg_0);
  ivec3 res = ivec3(((mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u))) | (mix(uvec3(0u), uvec3(8u), lessThanEqual((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))), uvec3(16777215u))) | (mix(uvec3(0u), uvec3(4u), lessThanEqual(((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u))) | (mix(uvec3(0u), uvec3(2u), lessThanEqual((((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))), uvec3(1073741823u))) | (mix(uvec3(0u), uvec3(1u), lessThanEqual(((((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))) << mix(uvec3(0u), uvec3(2u), lessThanEqual((((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))), uvec3(1073741823u)))), uvec3(2147483647u))) | mix(uvec3(0u), uvec3(1u), equal(((((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))) << mix(uvec3(0u), uvec3(2u), lessThanEqual((((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))), uvec3(1073741823u)))), uvec3(0u)))))))) + mix(uvec3(0u), uvec3(1u), equal(((((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))) << mix(uvec3(0u), uvec3(2u), lessThanEqual((((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))), uvec3(16777215u)))) << mix(uvec3(0u), uvec3(4u), lessThanEqual(((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))) << mix(uvec3(0u), uvec3(8u), lessThanEqual((v << mix(uvec3(0u), uvec3(16u), lessThanEqual(v, uvec3(65535u)))), uvec3(16777215u)))), uvec3(268435455u)))), uvec3(1073741823u)))), uvec3(0u)))));
  return res;
}
VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = VertexOutput(vec4(0.0f), ivec3(0));
  tint_symbol.pos = vec4(0.0f);
  tint_symbol.prevent_dce = countLeadingZeros_7c38a6();
  return tint_symbol;
}
void main() {
  VertexOutput v_1 = vertex_main_inner();
  gl_Position = v_1.pos;
  gl_Position.y = -(gl_Position.y);
  gl_Position.z = ((2.0f * gl_Position.z) - gl_Position.w);
  vertex_main_loc0_Output = v_1.prevent_dce;
  gl_PointSize = 1.0f;
}
