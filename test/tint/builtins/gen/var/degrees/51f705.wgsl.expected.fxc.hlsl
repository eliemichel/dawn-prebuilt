//
// fragment_main
//
float tint_degrees(float param_0) {
  return param_0 * 57.29577951308232286465;
}

RWByteAddressBuffer prevent_dce : register(u0);

float degrees_51f705() {
  float arg_0 = 1.0f;
  float res = tint_degrees(arg_0);
  return res;
}

void fragment_main() {
  prevent_dce.Store(0u, asuint(degrees_51f705()));
  return;
}
//
// compute_main
//
float tint_degrees(float param_0) {
  return param_0 * 57.29577951308232286465;
}

RWByteAddressBuffer prevent_dce : register(u0);

float degrees_51f705() {
  float arg_0 = 1.0f;
  float res = tint_degrees(arg_0);
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store(0u, asuint(degrees_51f705()));
  return;
}
//
// vertex_main
//
float tint_degrees(float param_0) {
  return param_0 * 57.29577951308232286465;
}

float degrees_51f705() {
  float arg_0 = 1.0f;
  float res = tint_degrees(arg_0);
  return res;
}

struct VertexOutput {
  float4 pos;
  float prevent_dce;
};
struct tint_symbol_1 {
  nointerpolation float prevent_dce : TEXCOORD0;
  float4 pos : SV_Position;
};

VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = (VertexOutput)0;
  tint_symbol.pos = (0.0f).xxxx;
  tint_symbol.prevent_dce = degrees_51f705();
  return tint_symbol;
}

tint_symbol_1 vertex_main() {
  VertexOutput inner_result = vertex_main_inner();
  tint_symbol_1 wrapper_result = (tint_symbol_1)0;
  wrapper_result.pos = inner_result.pos;
  wrapper_result.prevent_dce = inner_result.prevent_dce;
  return wrapper_result;
}
