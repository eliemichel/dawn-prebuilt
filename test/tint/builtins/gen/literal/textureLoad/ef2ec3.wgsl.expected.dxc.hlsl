//
// fragment_main
//
RWByteAddressBuffer prevent_dce : register(u0);
RWTexture1D<int4> arg_0 : register(u0, space1);

int4 textureLoad_ef2ec3() {
  int4 res = arg_0.Load(1u);
  return res;
}

void fragment_main() {
  prevent_dce.Store4(0u, asuint(textureLoad_ef2ec3()));
  return;
}
//
// compute_main
//
RWByteAddressBuffer prevent_dce : register(u0);
RWTexture1D<int4> arg_0 : register(u0, space1);

int4 textureLoad_ef2ec3() {
  int4 res = arg_0.Load(1u);
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store4(0u, asuint(textureLoad_ef2ec3()));
  return;
}
