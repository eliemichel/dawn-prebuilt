
RWTexture2DArray<uint4> arg_0 : register(u0, space1);
void textureStore_b42fd3() {
  arg_0[uint3((1u).xx, uint(1u))] = (1u).xxxx;
}

void fragment_main() {
  textureStore_b42fd3();
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureStore_b42fd3();
}

