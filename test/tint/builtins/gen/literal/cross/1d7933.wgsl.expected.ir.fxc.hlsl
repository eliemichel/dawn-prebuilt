//
// fragment_main
//

void cross_1d7933() {
  float3 res = (0.0f).xxx;
}

void fragment_main() {
  cross_1d7933();
}

//
// compute_main
//

void cross_1d7933() {
  float3 res = (0.0f).xxx;
}

[numthreads(1, 1, 1)]
void compute_main() {
  cross_1d7933();
}

//
// vertex_main
//
struct VertexOutput {
  float4 pos;
};

struct vertex_main_outputs {
  float4 VertexOutput_pos : SV_Position;
};


void cross_1d7933() {
  float3 res = (0.0f).xxx;
}

VertexOutput vertex_main_inner() {
  VertexOutput v = (VertexOutput)0;
  v.pos = (0.0f).xxxx;
  cross_1d7933();
  VertexOutput v_1 = v;
  return v_1;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_2 = vertex_main_inner();
  vertex_main_outputs v_3 = {v_2.pos};
  return v_3;
}

