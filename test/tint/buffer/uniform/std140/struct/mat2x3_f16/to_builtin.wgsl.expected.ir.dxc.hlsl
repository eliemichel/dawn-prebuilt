
cbuffer cbuffer_u : register(b0) {
  uint4 u[32];
};
vector<float16_t, 4> tint_bitcast_to_f16(uint2 src) {
  uint2 v = src;
  uint2 mask = (65535u).xx;
  uint2 shift = (16u).xx;
  float2 t_low = f16tof32((v & mask));
  float2 t_high = f16tof32(((v >> shift) & mask));
  float16_t v_1 = float16_t(t_low.x);
  float16_t v_2 = float16_t(t_high.x);
  float16_t v_3 = float16_t(t_low.y);
  return vector<float16_t, 4>(v_1, v_2, v_3, float16_t(t_high.y));
}

matrix<float16_t, 2, 3> v_4(uint start_byte_offset) {
  uint4 v_5 = u[(start_byte_offset / 16u)];
  vector<float16_t, 3> v_6 = tint_bitcast_to_f16((((((start_byte_offset % 16u) / 4u) == 2u)) ? (v_5.zw) : (v_5.xy))).xyz;
  uint4 v_7 = u[((8u + start_byte_offset) / 16u)];
  return matrix<float16_t, 2, 3>(v_6, tint_bitcast_to_f16(((((((8u + start_byte_offset) % 16u) / 4u) == 2u)) ? (v_7.zw) : (v_7.xy))).xyz);
}

[numthreads(1, 1, 1)]
void f() {
  matrix<float16_t, 3, 2> t = transpose(v_4(264u));
  float16_t l = length(tint_bitcast_to_f16(u[1u].xy).xyz.zxy);
  float16_t a = abs(tint_bitcast_to_f16(u[1u].xy).xyz.zxy.x);
}

