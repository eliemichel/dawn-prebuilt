//
// fragment_main
//

RWByteAddressBuffer prevent_dce : register(u0);
Texture3D<int4> arg_0 : register(t0, space1);
int4 textureLoad_223246() {
  uint3 arg_1 = (1u).xxx;
  int arg_2 = int(1);
  int v = arg_2;
  int4 res = arg_0.Load(int4(int3(arg_1), v));
  return res;
}

void fragment_main() {
  prevent_dce.Store4(0u, asuint(textureLoad_223246()));
}

//
// compute_main
//

RWByteAddressBuffer prevent_dce : register(u0);
Texture3D<int4> arg_0 : register(t0, space1);
int4 textureLoad_223246() {
  uint3 arg_1 = (1u).xxx;
  int arg_2 = int(1);
  int v = arg_2;
  int4 res = arg_0.Load(int4(int3(arg_1), v));
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store4(0u, asuint(textureLoad_223246()));
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


Texture3D<int4> arg_0 : register(t0, space1);
int4 textureLoad_223246() {
  uint3 arg_1 = (1u).xxx;
  int arg_2 = int(1);
  int v = arg_2;
  int4 res = arg_0.Load(int4(int3(arg_1), v));
  return res;
}

VertexOutput vertex_main_inner() {
  VertexOutput v_1 = (VertexOutput)0;
  v_1.pos = (0.0f).xxxx;
  v_1.prevent_dce = textureLoad_223246();
  VertexOutput v_2 = v_1;
  return v_2;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_3 = vertex_main_inner();
  vertex_main_outputs v_4 = {v_3.prevent_dce, v_3.pos};
  return v_4;
}

