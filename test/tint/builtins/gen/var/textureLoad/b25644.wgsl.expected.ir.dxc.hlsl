
RWByteAddressBuffer prevent_dce : register(u0);
RWTexture2DArray<uint4> arg_0 : register(u0, space1);
uint4 textureLoad_b25644() {
  int2 arg_1 = (int(1)).xx;
  uint arg_2 = 1u;
  uint v = arg_2;
  int2 v_1 = int2(arg_1);
  uint4 res = uint4(arg_0.Load(int4(v_1, int(v), int(0))));
  return res;
}

void fragment_main() {
  prevent_dce.Store4(0u, textureLoad_b25644());
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store4(0u, textureLoad_b25644());
}

