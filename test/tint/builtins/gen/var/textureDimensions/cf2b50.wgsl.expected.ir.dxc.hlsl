//
// fragment_main
//

RWByteAddressBuffer prevent_dce : register(u0);
TextureCubeArray<float4> arg_0 : register(t0, space1);
uint2 textureDimensions_cf2b50() {
  uint arg_1 = 1u;
  uint4 v = (0u).xxxx;
  arg_0.GetDimensions(arg_1, v.x, v.y, v.z, v.w);
  uint2 res = v.xy;
  return res;
}

void fragment_main() {
  prevent_dce.Store2(0u, textureDimensions_cf2b50());
}

//
// compute_main
//

RWByteAddressBuffer prevent_dce : register(u0);
TextureCubeArray<float4> arg_0 : register(t0, space1);
uint2 textureDimensions_cf2b50() {
  uint arg_1 = 1u;
  uint4 v = (0u).xxxx;
  arg_0.GetDimensions(arg_1, v.x, v.y, v.z, v.w);
  uint2 res = v.xy;
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store2(0u, textureDimensions_cf2b50());
}

//
// vertex_main
//
struct VertexOutput {
  float4 pos;
  uint2 prevent_dce;
};

struct vertex_main_outputs {
  nointerpolation uint2 VertexOutput_prevent_dce : TEXCOORD0;
  float4 VertexOutput_pos : SV_Position;
};


TextureCubeArray<float4> arg_0 : register(t0, space1);
uint2 textureDimensions_cf2b50() {
  uint arg_1 = 1u;
  uint4 v = (0u).xxxx;
  arg_0.GetDimensions(arg_1, v.x, v.y, v.z, v.w);
  uint2 res = v.xy;
  return res;
}

VertexOutput vertex_main_inner() {
  VertexOutput v_1 = (VertexOutput)0;
  v_1.pos = (0.0f).xxxx;
  v_1.prevent_dce = textureDimensions_cf2b50();
  VertexOutput v_2 = v_1;
  return v_2;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_3 = vertex_main_inner();
  vertex_main_outputs v_4 = {v_3.prevent_dce, v_3.pos};
  return v_4;
}

