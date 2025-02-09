//
// fragment_main
//
#version 310 es
precision highp float;
precision highp int;

layout(binding = 0, std430)
buffer f_prevent_dce_block_ssbo {
  int inner;
} v;
int countLeadingZeros_6d4656() {
  int arg_0 = 1;
  uint v_1 = uint(arg_0);
  int res = int(((mix(0u, 16u, (v_1 <= 65535u)) | (mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u)) | (mix(0u, 4u, (((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) <= 268435455u)) | (mix(0u, 2u, ((((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) <= 268435455u))) <= 1073741823u)) | (mix(0u, 1u, (((((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) <= 268435455u))) << mix(0u, 2u, ((((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) <= 268435455u))) <= 1073741823u))) <= 2147483647u)) | mix(0u, 1u, (((((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) <= 268435455u))) << mix(0u, 2u, ((((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) <= 268435455u))) <= 1073741823u))) == 0u))))))) + mix(0u, 1u, (((((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) <= 268435455u))) << mix(0u, 2u, ((((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) <= 268435455u))) <= 1073741823u))) == 0u))));
  return res;
}
void main() {
  v.inner = countLeadingZeros_6d4656();
}
//
// compute_main
//
#version 310 es

layout(binding = 0, std430)
buffer prevent_dce_block_1_ssbo {
  int inner;
} v;
int countLeadingZeros_6d4656() {
  int arg_0 = 1;
  uint v_1 = uint(arg_0);
  int res = int(((mix(0u, 16u, (v_1 <= 65535u)) | (mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u)) | (mix(0u, 4u, (((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) <= 268435455u)) | (mix(0u, 2u, ((((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) <= 268435455u))) <= 1073741823u)) | (mix(0u, 1u, (((((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) <= 268435455u))) << mix(0u, 2u, ((((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) <= 268435455u))) <= 1073741823u))) <= 2147483647u)) | mix(0u, 1u, (((((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) <= 268435455u))) << mix(0u, 2u, ((((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) <= 268435455u))) <= 1073741823u))) == 0u))))))) + mix(0u, 1u, (((((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) <= 268435455u))) << mix(0u, 2u, ((((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v_1 << mix(0u, 16u, (v_1 <= 65535u))) << mix(0u, 8u, ((v_1 << mix(0u, 16u, (v_1 <= 65535u))) <= 16777215u))) <= 268435455u))) <= 1073741823u))) == 0u))));
  return res;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  v.inner = countLeadingZeros_6d4656();
}
//
// vertex_main
//
#version 310 es


struct VertexOutput {
  vec4 pos;
  int prevent_dce;
};

layout(location = 0) flat out int tint_interstage_location0;
int countLeadingZeros_6d4656() {
  int arg_0 = 1;
  uint v = uint(arg_0);
  int res = int(((mix(0u, 16u, (v <= 65535u)) | (mix(0u, 8u, ((v << mix(0u, 16u, (v <= 65535u))) <= 16777215u)) | (mix(0u, 4u, (((v << mix(0u, 16u, (v <= 65535u))) << mix(0u, 8u, ((v << mix(0u, 16u, (v <= 65535u))) <= 16777215u))) <= 268435455u)) | (mix(0u, 2u, ((((v << mix(0u, 16u, (v <= 65535u))) << mix(0u, 8u, ((v << mix(0u, 16u, (v <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v << mix(0u, 16u, (v <= 65535u))) << mix(0u, 8u, ((v << mix(0u, 16u, (v <= 65535u))) <= 16777215u))) <= 268435455u))) <= 1073741823u)) | (mix(0u, 1u, (((((v << mix(0u, 16u, (v <= 65535u))) << mix(0u, 8u, ((v << mix(0u, 16u, (v <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v << mix(0u, 16u, (v <= 65535u))) << mix(0u, 8u, ((v << mix(0u, 16u, (v <= 65535u))) <= 16777215u))) <= 268435455u))) << mix(0u, 2u, ((((v << mix(0u, 16u, (v <= 65535u))) << mix(0u, 8u, ((v << mix(0u, 16u, (v <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v << mix(0u, 16u, (v <= 65535u))) << mix(0u, 8u, ((v << mix(0u, 16u, (v <= 65535u))) <= 16777215u))) <= 268435455u))) <= 1073741823u))) <= 2147483647u)) | mix(0u, 1u, (((((v << mix(0u, 16u, (v <= 65535u))) << mix(0u, 8u, ((v << mix(0u, 16u, (v <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v << mix(0u, 16u, (v <= 65535u))) << mix(0u, 8u, ((v << mix(0u, 16u, (v <= 65535u))) <= 16777215u))) <= 268435455u))) << mix(0u, 2u, ((((v << mix(0u, 16u, (v <= 65535u))) << mix(0u, 8u, ((v << mix(0u, 16u, (v <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v << mix(0u, 16u, (v <= 65535u))) << mix(0u, 8u, ((v << mix(0u, 16u, (v <= 65535u))) <= 16777215u))) <= 268435455u))) <= 1073741823u))) == 0u))))))) + mix(0u, 1u, (((((v << mix(0u, 16u, (v <= 65535u))) << mix(0u, 8u, ((v << mix(0u, 16u, (v <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v << mix(0u, 16u, (v <= 65535u))) << mix(0u, 8u, ((v << mix(0u, 16u, (v <= 65535u))) <= 16777215u))) <= 268435455u))) << mix(0u, 2u, ((((v << mix(0u, 16u, (v <= 65535u))) << mix(0u, 8u, ((v << mix(0u, 16u, (v <= 65535u))) <= 16777215u))) << mix(0u, 4u, (((v << mix(0u, 16u, (v <= 65535u))) << mix(0u, 8u, ((v << mix(0u, 16u, (v <= 65535u))) <= 16777215u))) <= 268435455u))) <= 1073741823u))) == 0u))));
  return res;
}
VertexOutput vertex_main_inner() {
  VertexOutput v_1 = VertexOutput(vec4(0.0f), 0);
  v_1.pos = vec4(0.0f);
  v_1.prevent_dce = countLeadingZeros_6d4656();
  return v_1;
}
void main() {
  VertexOutput v_2 = vertex_main_inner();
  gl_Position = vec4(v_2.pos.x, -(v_2.pos.y), ((2.0f * v_2.pos.z) - v_2.pos.w), v_2.pos.w);
  tint_interstage_location0 = v_2.prevent_dce;
  gl_PointSize = 1.0f;
}
