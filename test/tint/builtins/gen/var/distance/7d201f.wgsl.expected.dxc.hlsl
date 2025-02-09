//
// fragment_main
//
RWByteAddressBuffer prevent_dce : register(u0);

float16_t distance_7d201f() {
  float16_t arg_0 = float16_t(1.0h);
  float16_t arg_1 = float16_t(1.0h);
  float16_t res = distance(arg_0, arg_1);
  return res;
}

void fragment_main() {
  prevent_dce.Store<float16_t>(0u, distance_7d201f());
  return;
}
//
// compute_main
//
RWByteAddressBuffer prevent_dce : register(u0);

float16_t distance_7d201f() {
  float16_t arg_0 = float16_t(1.0h);
  float16_t arg_1 = float16_t(1.0h);
  float16_t res = distance(arg_0, arg_1);
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store<float16_t>(0u, distance_7d201f());
  return;
}
//
// vertex_main
//
float16_t distance_7d201f() {
  float16_t arg_0 = float16_t(1.0h);
  float16_t arg_1 = float16_t(1.0h);
  float16_t res = distance(arg_0, arg_1);
  return res;
}

struct VertexOutput {
  float4 pos;
  float16_t prevent_dce;
};
struct tint_symbol_1 {
  nointerpolation float16_t prevent_dce : TEXCOORD0;
  float4 pos : SV_Position;
};

VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = (VertexOutput)0;
  tint_symbol.pos = (0.0f).xxxx;
  tint_symbol.prevent_dce = distance_7d201f();
  return tint_symbol;
}

tint_symbol_1 vertex_main() {
  VertexOutput inner_result = vertex_main_inner();
  tint_symbol_1 wrapper_result = (tint_symbol_1)0;
  wrapper_result.pos = inner_result.pos;
  wrapper_result.prevent_dce = inner_result.prevent_dce;
  return wrapper_result;
}
