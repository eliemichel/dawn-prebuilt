//
// fragment_main
//

void acos_5e9ad2() {
  float res = 0.25f;
}

void fragment_main() {
  acos_5e9ad2();
}

//
// compute_main
//

void acos_5e9ad2() {
  float res = 0.25f;
}

[numthreads(1, 1, 1)]
void compute_main() {
  acos_5e9ad2();
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


void acos_5e9ad2() {
  float res = 0.25f;
}

VertexOutput vertex_main_inner() {
  VertexOutput v = (VertexOutput)0;
  v.pos = (0.0f).xxxx;
  acos_5e9ad2();
  VertexOutput v_1 = v;
  return v_1;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_2 = vertex_main_inner();
  vertex_main_outputs v_3 = {v_2.pos};
  return v_3;
}

