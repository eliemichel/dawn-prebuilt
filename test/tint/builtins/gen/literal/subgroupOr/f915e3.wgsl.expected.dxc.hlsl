//
// fragment_main
//
RWByteAddressBuffer prevent_dce : register(u0);

uint4 subgroupOr_f915e3() {
  uint4 res = WaveActiveBitOr((1u).xxxx);
  return res;
}

void fragment_main() {
  prevent_dce.Store4(0u, asuint(subgroupOr_f915e3()));
  return;
}
//
// compute_main
//
RWByteAddressBuffer prevent_dce : register(u0);

uint4 subgroupOr_f915e3() {
  uint4 res = WaveActiveBitOr((1u).xxxx);
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store4(0u, asuint(subgroupOr_f915e3()));
  return;
}
