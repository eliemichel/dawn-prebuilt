
cbuffer cbuffer_u : register(b0) {
  uint4 u[3];
};
RWByteAddressBuffer s : register(u1);
void v(uint offset, float3x3 obj) {
  s.Store3((offset + 0u), asuint(obj[0u]));
  s.Store3((offset + 16u), asuint(obj[1u]));
  s.Store3((offset + 32u), asuint(obj[2u]));
}

float3x3 v_1(uint start_byte_offset) {
  return float3x3(asfloat(u[(start_byte_offset / 16u)].xyz), asfloat(u[((16u + start_byte_offset) / 16u)].xyz), asfloat(u[((32u + start_byte_offset) / 16u)].xyz));
}

[numthreads(1, 1, 1)]
void main() {
  float3x3 x = v_1(0u);
  v(0u, x);
}

