
RWTexture2DArray<uint4> arg_0 : register(u0, space1);
void textureStore_a9426c() {
  arg_0[uint3((1u).xx, uint(1u))] = (1u).xxxx;
}

void fragment_main() {
  textureStore_a9426c();
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureStore_a9426c();
}

