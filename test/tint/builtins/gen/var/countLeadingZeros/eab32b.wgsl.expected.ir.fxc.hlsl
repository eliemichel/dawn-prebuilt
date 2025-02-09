//
// fragment_main
//

RWByteAddressBuffer prevent_dce : register(u0);
int4 countLeadingZeros_eab32b() {
  int4 arg_0 = (int(1)).xxxx;
  uint4 v = asuint(arg_0);
  uint4 v_1 = (((v <= (65535u).xxxx)) ? ((16u).xxxx) : ((0u).xxxx));
  uint4 v_2 = ((((v << v_1) <= (16777215u).xxxx)) ? ((8u).xxxx) : ((0u).xxxx));
  uint4 v_3 = (((((v << v_1) << v_2) <= (268435455u).xxxx)) ? ((4u).xxxx) : ((0u).xxxx));
  uint4 v_4 = ((((((v << v_1) << v_2) << v_3) <= (1073741823u).xxxx)) ? ((2u).xxxx) : ((0u).xxxx));
  uint4 v_5 = (((((((v << v_1) << v_2) << v_3) << v_4) <= (2147483647u).xxxx)) ? ((1u).xxxx) : ((0u).xxxx));
  uint4 v_6 = (((((((v << v_1) << v_2) << v_3) << v_4) == (0u).xxxx)) ? ((1u).xxxx) : ((0u).xxxx));
  int4 res = asint(((v_1 | (v_2 | (v_3 | (v_4 | (v_5 | v_6))))) + v_6));
  return res;
}

void fragment_main() {
  prevent_dce.Store4(0u, asuint(countLeadingZeros_eab32b()));
}

//
// compute_main
//

RWByteAddressBuffer prevent_dce : register(u0);
int4 countLeadingZeros_eab32b() {
  int4 arg_0 = (int(1)).xxxx;
  uint4 v = asuint(arg_0);
  uint4 v_1 = (((v <= (65535u).xxxx)) ? ((16u).xxxx) : ((0u).xxxx));
  uint4 v_2 = ((((v << v_1) <= (16777215u).xxxx)) ? ((8u).xxxx) : ((0u).xxxx));
  uint4 v_3 = (((((v << v_1) << v_2) <= (268435455u).xxxx)) ? ((4u).xxxx) : ((0u).xxxx));
  uint4 v_4 = ((((((v << v_1) << v_2) << v_3) <= (1073741823u).xxxx)) ? ((2u).xxxx) : ((0u).xxxx));
  uint4 v_5 = (((((((v << v_1) << v_2) << v_3) << v_4) <= (2147483647u).xxxx)) ? ((1u).xxxx) : ((0u).xxxx));
  uint4 v_6 = (((((((v << v_1) << v_2) << v_3) << v_4) == (0u).xxxx)) ? ((1u).xxxx) : ((0u).xxxx));
  int4 res = asint(((v_1 | (v_2 | (v_3 | (v_4 | (v_5 | v_6))))) + v_6));
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store4(0u, asuint(countLeadingZeros_eab32b()));
}

//
// vertex_main
//
struct VertexOutput {
  float4 pos;
  int4 prevent_dce;
};

struct vertex_main_outputs {
  nointerpolation int4 VertexOutput_prevent_dce : TEXCOORD0;
  float4 VertexOutput_pos : SV_Position;
};


int4 countLeadingZeros_eab32b() {
  int4 arg_0 = (int(1)).xxxx;
  uint4 v = asuint(arg_0);
  uint4 v_1 = (((v <= (65535u).xxxx)) ? ((16u).xxxx) : ((0u).xxxx));
  uint4 v_2 = ((((v << v_1) <= (16777215u).xxxx)) ? ((8u).xxxx) : ((0u).xxxx));
  uint4 v_3 = (((((v << v_1) << v_2) <= (268435455u).xxxx)) ? ((4u).xxxx) : ((0u).xxxx));
  uint4 v_4 = ((((((v << v_1) << v_2) << v_3) <= (1073741823u).xxxx)) ? ((2u).xxxx) : ((0u).xxxx));
  uint4 v_5 = (((((((v << v_1) << v_2) << v_3) << v_4) <= (2147483647u).xxxx)) ? ((1u).xxxx) : ((0u).xxxx));
  uint4 v_6 = (((((((v << v_1) << v_2) << v_3) << v_4) == (0u).xxxx)) ? ((1u).xxxx) : ((0u).xxxx));
  int4 res = asint(((v_1 | (v_2 | (v_3 | (v_4 | (v_5 | v_6))))) + v_6));
  return res;
}

VertexOutput vertex_main_inner() {
  VertexOutput v_7 = (VertexOutput)0;
  v_7.pos = (0.0f).xxxx;
  v_7.prevent_dce = countLeadingZeros_eab32b();
  VertexOutput v_8 = v_7;
  return v_8;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_9 = vertex_main_inner();
  vertex_main_outputs v_10 = {v_9.prevent_dce, v_9.pos};
  return v_10;
}

