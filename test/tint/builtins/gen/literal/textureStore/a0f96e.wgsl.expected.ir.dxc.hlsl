
RWTexture2DArray<float4> arg_0 : register(u0, space1);
void textureStore_a0f96e() {
  arg_0[uint3((1u).xx, uint(1u))] = (1.0f).xxxx;
}

void fragment_main() {
  textureStore_a0f96e();
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureStore_a0f96e();
}

