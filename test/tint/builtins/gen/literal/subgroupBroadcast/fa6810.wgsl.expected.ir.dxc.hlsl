//
// fragment_main
//

RWByteAddressBuffer prevent_dce : register(u0);
int2 subgroupBroadcast_fa6810() {
  int2 res = WaveReadLaneAt((int(1)).xx, int(1));
  return res;
}

void fragment_main() {
  prevent_dce.Store2(0u, asuint(subgroupBroadcast_fa6810()));
}

//
// compute_main
//

RWByteAddressBuffer prevent_dce : register(u0);
int2 subgroupBroadcast_fa6810() {
  int2 res = WaveReadLaneAt((int(1)).xx, int(1));
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store2(0u, asuint(subgroupBroadcast_fa6810()));
}

