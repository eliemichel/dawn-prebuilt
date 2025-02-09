//
// fragment_main
//

RWByteAddressBuffer prevent_dce : register(u0);
int3 max_25eafe() {
  int3 arg_0 = (int(1)).xxx;
  int3 arg_1 = (int(1)).xxx;
  int3 res = max(arg_0, arg_1);
  return res;
}

void fragment_main() {
  prevent_dce.Store3(0u, asuint(max_25eafe()));
}

//
// compute_main
//

RWByteAddressBuffer prevent_dce : register(u0);
int3 max_25eafe() {
  int3 arg_0 = (int(1)).xxx;
  int3 arg_1 = (int(1)).xxx;
  int3 res = max(arg_0, arg_1);
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store3(0u, asuint(max_25eafe()));
}

//
// vertex_main
//
struct VertexOutput {
  float4 pos;
  int3 prevent_dce;
};

struct vertex_main_outputs {
  nointerpolation int3 VertexOutput_prevent_dce : TEXCOORD0;
  float4 VertexOutput_pos : SV_Position;
};


int3 max_25eafe() {
  int3 arg_0 = (int(1)).xxx;
  int3 arg_1 = (int(1)).xxx;
  int3 res = max(arg_0, arg_1);
  return res;
}

VertexOutput vertex_main_inner() {
  VertexOutput v = (VertexOutput)0;
  v.pos = (0.0f).xxxx;
  v.prevent_dce = max_25eafe();
  VertexOutput v_1 = v;
  return v_1;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_2 = vertex_main_inner();
  vertex_main_outputs v_3 = {v_2.prevent_dce, v_2.pos};
  return v_3;
}

