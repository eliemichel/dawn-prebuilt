
RWTexture2DArray<int4> arg_0 : register(u0, space1);
void textureStore_48cb56() {
  uint2 arg_1 = (1u).xx;
  uint arg_2 = 1u;
  int4 arg_3 = (int(1)).xxxx;
  uint2 v = arg_1;
  int4 v_1 = arg_3;
  arg_0[uint3(v, uint(arg_2))] = v_1;
}

void fragment_main() {
  textureStore_48cb56();
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureStore_48cb56();
}

