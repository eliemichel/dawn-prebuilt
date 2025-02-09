//
// fragment_main
//
RWByteAddressBuffer prevent_dce : register(u0);
RWTexture1D<uint4> arg_0 : register(u0, space1);

uint4 textureLoad_ad551e() {
  uint4 res = arg_0.Load(1u);
  return res;
}

void fragment_main() {
  prevent_dce.Store4(0u, asuint(textureLoad_ad551e()));
  return;
}
//
// compute_main
//
RWByteAddressBuffer prevent_dce : register(u0);
RWTexture1D<uint4> arg_0 : register(u0, space1);

uint4 textureLoad_ad551e() {
  uint4 res = arg_0.Load(1u);
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store4(0u, asuint(textureLoad_ad551e()));
  return;
}
