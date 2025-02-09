//
// fragment_main
//
RWByteAddressBuffer prevent_dce : register(u0);

float16_t determinant_d7c86f() {
  matrix<float16_t, 3, 3> arg_0 = matrix<float16_t, 3, 3>((float16_t(1.0h)).xxx, (float16_t(1.0h)).xxx, (float16_t(1.0h)).xxx);
  float16_t res = determinant(arg_0);
  return res;
}

void fragment_main() {
  prevent_dce.Store<float16_t>(0u, determinant_d7c86f());
  return;
}
//
// compute_main
//
RWByteAddressBuffer prevent_dce : register(u0);

float16_t determinant_d7c86f() {
  matrix<float16_t, 3, 3> arg_0 = matrix<float16_t, 3, 3>((float16_t(1.0h)).xxx, (float16_t(1.0h)).xxx, (float16_t(1.0h)).xxx);
  float16_t res = determinant(arg_0);
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store<float16_t>(0u, determinant_d7c86f());
  return;
}
//
// vertex_main
//
float16_t determinant_d7c86f() {
  matrix<float16_t, 3, 3> arg_0 = matrix<float16_t, 3, 3>((float16_t(1.0h)).xxx, (float16_t(1.0h)).xxx, (float16_t(1.0h)).xxx);
  float16_t res = determinant(arg_0);
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
  tint_symbol.prevent_dce = determinant_d7c86f();
  return tint_symbol;
}

tint_symbol_1 vertex_main() {
  VertexOutput inner_result = vertex_main_inner();
  tint_symbol_1 wrapper_result = (tint_symbol_1)0;
  wrapper_result.pos = inner_result.pos;
  wrapper_result.prevent_dce = inner_result.prevent_dce;
  return wrapper_result;
}
