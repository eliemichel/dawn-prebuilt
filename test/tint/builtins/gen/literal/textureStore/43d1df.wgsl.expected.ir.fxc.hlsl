
RWTexture2DArray<float4> arg_0 : register(u0, space1);
void textureStore_43d1df() {
  arg_0[int3((int(1)).xx, int(int(1)))] = (1.0f).xxxx;
}

void fragment_main() {
  textureStore_43d1df();
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureStore_43d1df();
}

