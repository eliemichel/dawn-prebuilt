
RWTexture1D<uint4> arg_0 : register(u0, space1);
void textureStore_4cce74() {
  arg_0[int(1)] = (1u).xxxx;
}

void fragment_main() {
  textureStore_4cce74();
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureStore_4cce74();
}

