int2 tint_extract_bits(int2 v, uint offset, uint count) {
  const uint s = min(offset, 32u);
  const uint e = min(32u, (s + count));
  const uint shl = (32u - e);
  const uint shr = (shl + s);
  const int2 shl_result = ((shl < 32u) ? (v << uint2((shl).xx)) : (0).xx);
  return ((shr < 32u) ? (shl_result >> uint2((shr).xx)) : ((shl_result >> (31u).xx) >> (1u).xx));
}

RWByteAddressBuffer prevent_dce : register(u0, space2);

void extractBits_a99a8d() {
  int2 arg_0 = (1).xx;
  uint arg_1 = 1u;
  uint arg_2 = 1u;
  int2 res = tint_extract_bits(arg_0, arg_1, arg_2);
  prevent_dce.Store2(0u, asuint(res));
}

struct tint_symbol {
  float4 value : SV_Position;
};

float4 vertex_main_inner() {
  extractBits_a99a8d();
  return (0.0f).xxxx;
}

tint_symbol vertex_main() {
  const float4 inner_result = vertex_main_inner();
  tint_symbol wrapper_result = (tint_symbol)0;
  wrapper_result.value = inner_result;
  return wrapper_result;
}

void fragment_main() {
  extractBits_a99a8d();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  extractBits_a99a8d();
  return;
}
