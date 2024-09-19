struct VertexOutput {
  float4 pos;
  float4 prevent_dce;
};

struct vertex_main_outputs {
  nointerpolation float4 VertexOutput_prevent_dce : TEXCOORD0;
  float4 VertexOutput_pos : SV_Position;
};


RWByteAddressBuffer prevent_dce : register(u0);
Texture2DArray<float4> arg_0 : register(t0, space1);
float4 textureLoad_4acb64() {
  int2 arg_1 = (int(1)).xx;
  uint arg_2 = 1u;
  int arg_3 = int(1);
  uint v = arg_2;
  int v_1 = arg_3;
  int2 v_2 = int2(arg_1);
  int v_3 = int(v);
  float4 res = float4(arg_0.Load(int4(v_2, v_3, int(v_1))));
  return res;
}

void fragment_main() {
  prevent_dce.Store4(0u, asuint(textureLoad_4acb64()));
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store4(0u, asuint(textureLoad_4acb64()));
}

VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = (VertexOutput)0;
  tint_symbol.pos = (0.0f).xxxx;
  tint_symbol.prevent_dce = textureLoad_4acb64();
  VertexOutput v_4 = tint_symbol;
  return v_4;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_5 = vertex_main_inner();
  VertexOutput v_6 = v_5;
  VertexOutput v_7 = v_5;
  vertex_main_outputs v_8 = {v_7.prevent_dce, v_6.pos};
  return v_8;
}

