
RWByteAddressBuffer prevent_dce : register(u0);
RWTexture2DArray<uint4> arg_0 : register(u0, space1);
uint4 textureLoad_6d1fb4() {
  int2 v = int2((1u).xx);
  uint4 res = uint4(arg_0.Load(int4(v, int(1u), int(0))));
  return res;
}

void fragment_main() {
  prevent_dce.Store4(0u, textureLoad_6d1fb4());
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store4(0u, textureLoad_6d1fb4());
}

