
ByteAddressBuffer v : register(t0);
RWByteAddressBuffer v_1 : register(u1);
[numthreads(1, 1, 1)]
void main() {
  uint v_2 = 0u;
  v_1.GetDimensions(v_2);
  uint v_3 = ((v_2 / 2u) - 1u);
  uint v_4 = (min(uint(int(0)), v_3) * 2u);
  uint v_5 = 0u;
  v.GetDimensions(v_5);
  uint v_6 = ((v_5 / 2u) - 1u);
  v_1.Store<float16_t>((0u + v_4), v.Load<float16_t>((0u + (min(uint(int(0)), v_6) * 2u))));
}

