//
// fragment_main
//

RWByteAddressBuffer prevent_dce : register(u0);
Texture2D<float4> arg_0 : register(t0, space1);
uint2 textureDimensions_1bd78c() {
  int arg_1 = int(1);
  uint3 v = (0u).xxx;
  arg_0.GetDimensions(uint(arg_1), v.x, v.y, v.z);
  uint2 res = v.xy;
  return res;
}

void fragment_main() {
  prevent_dce.Store2(0u, textureDimensions_1bd78c());
}

//
// compute_main
//

RWByteAddressBuffer prevent_dce : register(u0);
Texture2D<float4> arg_0 : register(t0, space1);
uint2 textureDimensions_1bd78c() {
  int arg_1 = int(1);
  uint3 v = (0u).xxx;
  arg_0.GetDimensions(uint(arg_1), v.x, v.y, v.z);
  uint2 res = v.xy;
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store2(0u, textureDimensions_1bd78c());
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


Texture2D<float4> arg_0 : register(t0, space1);
uint2 textureDimensions_1bd78c() {
  int arg_1 = int(1);
  uint3 v = (0u).xxx;
  arg_0.GetDimensions(uint(arg_1), v.x, v.y, v.z);
  uint2 res = v.xy;
  return res;
}

VertexOutput vertex_main_inner() {
  VertexOutput v_1 = (VertexOutput)0;
  v_1.pos = (0.0f).xxxx;
  v_1.prevent_dce = textureDimensions_1bd78c();
  VertexOutput v_2 = v_1;
  return v_2;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_3 = vertex_main_inner();
  vertex_main_outputs v_4 = {v_3.prevent_dce, v_3.pos};
  return v_4;
}

