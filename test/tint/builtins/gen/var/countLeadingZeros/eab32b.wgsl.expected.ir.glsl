SKIP: FAILED

#version 310 es
precision highp float;
precision highp int;

layout(binding = 0, std430)
buffer tint_symbol_1_1_ssbo {
  ivec4 tint_symbol;
} v;
ivec4 countLeadingZeros_eab32b() {
  ivec4 arg_0 = ivec4(1);
  uvec4 v_1 = uvec4(arg_0);
  uint v_2 = (((v_1 <= uvec4(65535u)).x) ? (uvec4(16u).x) : (uvec4(0u).x));
  uint v_3 = (((v_1 <= uvec4(65535u)).y) ? (uvec4(16u).y) : (uvec4(0u).y));
  uint v_4 = (((v_1 <= uvec4(65535u)).z) ? (uvec4(16u).z) : (uvec4(0u).z));
  uvec4 v_5 = uvec4(v_2, v_3, v_4, (((v_1 <= uvec4(65535u)).w) ? (uvec4(16u).w) : (uvec4(0u).w)));
  uint v_6 = ((((v_1 << v_5) <= uvec4(16777215u)).x) ? (uvec4(8u).x) : (uvec4(0u).x));
  uint v_7 = ((((v_1 << v_5) <= uvec4(16777215u)).y) ? (uvec4(8u).y) : (uvec4(0u).y));
  uint v_8 = ((((v_1 << v_5) <= uvec4(16777215u)).z) ? (uvec4(8u).z) : (uvec4(0u).z));
  uvec4 v_9 = uvec4(v_6, v_7, v_8, ((((v_1 << v_5) <= uvec4(16777215u)).w) ? (uvec4(8u).w) : (uvec4(0u).w)));
  uint v_10 = (((((v_1 << v_5) << v_9) <= uvec4(268435455u)).x) ? (uvec4(4u).x) : (uvec4(0u).x));
  uint v_11 = (((((v_1 << v_5) << v_9) <= uvec4(268435455u)).y) ? (uvec4(4u).y) : (uvec4(0u).y));
  uint v_12 = (((((v_1 << v_5) << v_9) <= uvec4(268435455u)).z) ? (uvec4(4u).z) : (uvec4(0u).z));
  uvec4 v_13 = uvec4(v_10, v_11, v_12, (((((v_1 << v_5) << v_9) <= uvec4(268435455u)).w) ? (uvec4(4u).w) : (uvec4(0u).w)));
  uint v_14 = ((((((v_1 << v_5) << v_9) << v_13) <= uvec4(1073741823u)).x) ? (uvec4(2u).x) : (uvec4(0u).x));
  uint v_15 = ((((((v_1 << v_5) << v_9) << v_13) <= uvec4(1073741823u)).y) ? (uvec4(2u).y) : (uvec4(0u).y));
  uint v_16 = ((((((v_1 << v_5) << v_9) << v_13) <= uvec4(1073741823u)).z) ? (uvec4(2u).z) : (uvec4(0u).z));
  uvec4 v_17 = uvec4(v_14, v_15, v_16, ((((((v_1 << v_5) << v_9) << v_13) <= uvec4(1073741823u)).w) ? (uvec4(2u).w) : (uvec4(0u).w)));
  uint v_18 = (((((((v_1 << v_5) << v_9) << v_13) << v_17) <= uvec4(2147483647u)).x) ? (uvec4(1u).x) : (uvec4(0u).x));
  uint v_19 = (((((((v_1 << v_5) << v_9) << v_13) << v_17) <= uvec4(2147483647u)).y) ? (uvec4(1u).y) : (uvec4(0u).y));
  uint v_20 = (((((((v_1 << v_5) << v_9) << v_13) << v_17) <= uvec4(2147483647u)).z) ? (uvec4(1u).z) : (uvec4(0u).z));
  uvec4 v_21 = uvec4(v_18, v_19, v_20, (((((((v_1 << v_5) << v_9) << v_13) << v_17) <= uvec4(2147483647u)).w) ? (uvec4(1u).w) : (uvec4(0u).w)));
  uint v_22 = (((((((v_1 << v_5) << v_9) << v_13) << v_17) == uvec4(0u)).x) ? (uvec4(1u).x) : (uvec4(0u).x));
  uint v_23 = (((((((v_1 << v_5) << v_9) << v_13) << v_17) == uvec4(0u)).y) ? (uvec4(1u).y) : (uvec4(0u).y));
  uint v_24 = (((((((v_1 << v_5) << v_9) << v_13) << v_17) == uvec4(0u)).z) ? (uvec4(1u).z) : (uvec4(0u).z));
  uvec4 v_25 = uvec4(v_22, v_23, v_24, (((((((v_1 << v_5) << v_9) << v_13) << v_17) == uvec4(0u)).w) ? (uvec4(1u).w) : (uvec4(0u).w)));
  ivec4 res = ivec4(((v_5 | (v_9 | (v_13 | (v_17 | (v_21 | v_25))))) + v_25));
  return res;
}
void main() {
  v.tint_symbol = countLeadingZeros_eab32b();
}
error: Error parsing GLSL shader:
ERROR: 0:12: '<=' :  wrong operand types: no operation '<=' exists that takes a left-hand operand of type ' temp highp 4-component vector of uint' and a right operand of type ' const 4-component vector of uint' (or there is no acceptable conversion)
ERROR: 0:12: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.



#version 310 es

layout(binding = 0, std430)
buffer tint_symbol_1_1_ssbo {
  ivec4 tint_symbol;
} v;
ivec4 countLeadingZeros_eab32b() {
  ivec4 arg_0 = ivec4(1);
  uvec4 v_1 = uvec4(arg_0);
  uint v_2 = (((v_1 <= uvec4(65535u)).x) ? (uvec4(16u).x) : (uvec4(0u).x));
  uint v_3 = (((v_1 <= uvec4(65535u)).y) ? (uvec4(16u).y) : (uvec4(0u).y));
  uint v_4 = (((v_1 <= uvec4(65535u)).z) ? (uvec4(16u).z) : (uvec4(0u).z));
  uvec4 v_5 = uvec4(v_2, v_3, v_4, (((v_1 <= uvec4(65535u)).w) ? (uvec4(16u).w) : (uvec4(0u).w)));
  uint v_6 = ((((v_1 << v_5) <= uvec4(16777215u)).x) ? (uvec4(8u).x) : (uvec4(0u).x));
  uint v_7 = ((((v_1 << v_5) <= uvec4(16777215u)).y) ? (uvec4(8u).y) : (uvec4(0u).y));
  uint v_8 = ((((v_1 << v_5) <= uvec4(16777215u)).z) ? (uvec4(8u).z) : (uvec4(0u).z));
  uvec4 v_9 = uvec4(v_6, v_7, v_8, ((((v_1 << v_5) <= uvec4(16777215u)).w) ? (uvec4(8u).w) : (uvec4(0u).w)));
  uint v_10 = (((((v_1 << v_5) << v_9) <= uvec4(268435455u)).x) ? (uvec4(4u).x) : (uvec4(0u).x));
  uint v_11 = (((((v_1 << v_5) << v_9) <= uvec4(268435455u)).y) ? (uvec4(4u).y) : (uvec4(0u).y));
  uint v_12 = (((((v_1 << v_5) << v_9) <= uvec4(268435455u)).z) ? (uvec4(4u).z) : (uvec4(0u).z));
  uvec4 v_13 = uvec4(v_10, v_11, v_12, (((((v_1 << v_5) << v_9) <= uvec4(268435455u)).w) ? (uvec4(4u).w) : (uvec4(0u).w)));
  uint v_14 = ((((((v_1 << v_5) << v_9) << v_13) <= uvec4(1073741823u)).x) ? (uvec4(2u).x) : (uvec4(0u).x));
  uint v_15 = ((((((v_1 << v_5) << v_9) << v_13) <= uvec4(1073741823u)).y) ? (uvec4(2u).y) : (uvec4(0u).y));
  uint v_16 = ((((((v_1 << v_5) << v_9) << v_13) <= uvec4(1073741823u)).z) ? (uvec4(2u).z) : (uvec4(0u).z));
  uvec4 v_17 = uvec4(v_14, v_15, v_16, ((((((v_1 << v_5) << v_9) << v_13) <= uvec4(1073741823u)).w) ? (uvec4(2u).w) : (uvec4(0u).w)));
  uint v_18 = (((((((v_1 << v_5) << v_9) << v_13) << v_17) <= uvec4(2147483647u)).x) ? (uvec4(1u).x) : (uvec4(0u).x));
  uint v_19 = (((((((v_1 << v_5) << v_9) << v_13) << v_17) <= uvec4(2147483647u)).y) ? (uvec4(1u).y) : (uvec4(0u).y));
  uint v_20 = (((((((v_1 << v_5) << v_9) << v_13) << v_17) <= uvec4(2147483647u)).z) ? (uvec4(1u).z) : (uvec4(0u).z));
  uvec4 v_21 = uvec4(v_18, v_19, v_20, (((((((v_1 << v_5) << v_9) << v_13) << v_17) <= uvec4(2147483647u)).w) ? (uvec4(1u).w) : (uvec4(0u).w)));
  uint v_22 = (((((((v_1 << v_5) << v_9) << v_13) << v_17) == uvec4(0u)).x) ? (uvec4(1u).x) : (uvec4(0u).x));
  uint v_23 = (((((((v_1 << v_5) << v_9) << v_13) << v_17) == uvec4(0u)).y) ? (uvec4(1u).y) : (uvec4(0u).y));
  uint v_24 = (((((((v_1 << v_5) << v_9) << v_13) << v_17) == uvec4(0u)).z) ? (uvec4(1u).z) : (uvec4(0u).z));
  uvec4 v_25 = uvec4(v_22, v_23, v_24, (((((((v_1 << v_5) << v_9) << v_13) << v_17) == uvec4(0u)).w) ? (uvec4(1u).w) : (uvec4(0u).w)));
  ivec4 res = ivec4(((v_5 | (v_9 | (v_13 | (v_17 | (v_21 | v_25))))) + v_25));
  return res;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  v.tint_symbol = countLeadingZeros_eab32b();
}
error: Error parsing GLSL shader:
ERROR: 0:10: '<=' :  wrong operand types: no operation '<=' exists that takes a left-hand operand of type ' temp highp 4-component vector of uint' and a right operand of type ' const 4-component vector of uint' (or there is no acceptable conversion)
ERROR: 0:10: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.



#version 310 es


struct VertexOutput {
  vec4 pos;
  ivec4 prevent_dce;
};

layout(location = 0) flat out ivec4 vertex_main_loc0_Output;
ivec4 countLeadingZeros_eab32b() {
  ivec4 arg_0 = ivec4(1);
  uvec4 v = uvec4(arg_0);
  uint v_1 = (((v <= uvec4(65535u)).x) ? (uvec4(16u).x) : (uvec4(0u).x));
  uint v_2 = (((v <= uvec4(65535u)).y) ? (uvec4(16u).y) : (uvec4(0u).y));
  uint v_3 = (((v <= uvec4(65535u)).z) ? (uvec4(16u).z) : (uvec4(0u).z));
  uvec4 v_4 = uvec4(v_1, v_2, v_3, (((v <= uvec4(65535u)).w) ? (uvec4(16u).w) : (uvec4(0u).w)));
  uint v_5 = ((((v << v_4) <= uvec4(16777215u)).x) ? (uvec4(8u).x) : (uvec4(0u).x));
  uint v_6 = ((((v << v_4) <= uvec4(16777215u)).y) ? (uvec4(8u).y) : (uvec4(0u).y));
  uint v_7 = ((((v << v_4) <= uvec4(16777215u)).z) ? (uvec4(8u).z) : (uvec4(0u).z));
  uvec4 v_8 = uvec4(v_5, v_6, v_7, ((((v << v_4) <= uvec4(16777215u)).w) ? (uvec4(8u).w) : (uvec4(0u).w)));
  uint v_9 = (((((v << v_4) << v_8) <= uvec4(268435455u)).x) ? (uvec4(4u).x) : (uvec4(0u).x));
  uint v_10 = (((((v << v_4) << v_8) <= uvec4(268435455u)).y) ? (uvec4(4u).y) : (uvec4(0u).y));
  uint v_11 = (((((v << v_4) << v_8) <= uvec4(268435455u)).z) ? (uvec4(4u).z) : (uvec4(0u).z));
  uvec4 v_12 = uvec4(v_9, v_10, v_11, (((((v << v_4) << v_8) <= uvec4(268435455u)).w) ? (uvec4(4u).w) : (uvec4(0u).w)));
  uint v_13 = ((((((v << v_4) << v_8) << v_12) <= uvec4(1073741823u)).x) ? (uvec4(2u).x) : (uvec4(0u).x));
  uint v_14 = ((((((v << v_4) << v_8) << v_12) <= uvec4(1073741823u)).y) ? (uvec4(2u).y) : (uvec4(0u).y));
  uint v_15 = ((((((v << v_4) << v_8) << v_12) <= uvec4(1073741823u)).z) ? (uvec4(2u).z) : (uvec4(0u).z));
  uvec4 v_16 = uvec4(v_13, v_14, v_15, ((((((v << v_4) << v_8) << v_12) <= uvec4(1073741823u)).w) ? (uvec4(2u).w) : (uvec4(0u).w)));
  uint v_17 = (((((((v << v_4) << v_8) << v_12) << v_16) <= uvec4(2147483647u)).x) ? (uvec4(1u).x) : (uvec4(0u).x));
  uint v_18 = (((((((v << v_4) << v_8) << v_12) << v_16) <= uvec4(2147483647u)).y) ? (uvec4(1u).y) : (uvec4(0u).y));
  uint v_19 = (((((((v << v_4) << v_8) << v_12) << v_16) <= uvec4(2147483647u)).z) ? (uvec4(1u).z) : (uvec4(0u).z));
  uvec4 v_20 = uvec4(v_17, v_18, v_19, (((((((v << v_4) << v_8) << v_12) << v_16) <= uvec4(2147483647u)).w) ? (uvec4(1u).w) : (uvec4(0u).w)));
  uint v_21 = (((((((v << v_4) << v_8) << v_12) << v_16) == uvec4(0u)).x) ? (uvec4(1u).x) : (uvec4(0u).x));
  uint v_22 = (((((((v << v_4) << v_8) << v_12) << v_16) == uvec4(0u)).y) ? (uvec4(1u).y) : (uvec4(0u).y));
  uint v_23 = (((((((v << v_4) << v_8) << v_12) << v_16) == uvec4(0u)).z) ? (uvec4(1u).z) : (uvec4(0u).z));
  uvec4 v_24 = uvec4(v_21, v_22, v_23, (((((((v << v_4) << v_8) << v_12) << v_16) == uvec4(0u)).w) ? (uvec4(1u).w) : (uvec4(0u).w)));
  ivec4 res = ivec4(((v_4 | (v_8 | (v_12 | (v_16 | (v_20 | v_24))))) + v_24));
  return res;
}
VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = VertexOutput(vec4(0.0f), ivec4(0));
  tint_symbol.pos = vec4(0.0f);
  tint_symbol.prevent_dce = countLeadingZeros_eab32b();
  return tint_symbol;
}
void main() {
  VertexOutput v_25 = vertex_main_inner();
  gl_Position = v_25.pos;
  gl_Position[1u] = -(gl_Position.y);
  gl_Position[2u] = ((2.0f * gl_Position.z) - gl_Position.w);
  vertex_main_loc0_Output = v_25.prevent_dce;
  gl_PointSize = 1.0f;
}
error: Error parsing GLSL shader:
ERROR: 0:13: '<=' :  wrong operand types: no operation '<=' exists that takes a left-hand operand of type ' temp highp 4-component vector of uint' and a right operand of type ' const 4-component vector of uint' (or there is no acceptable conversion)
ERROR: 0:13: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.




tint executable returned error: exit status 1
