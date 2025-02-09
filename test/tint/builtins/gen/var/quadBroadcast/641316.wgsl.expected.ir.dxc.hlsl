//
// fragment_main
//

RWByteAddressBuffer prevent_dce : register(u0);
uint2 quadBroadcast_641316() {
  uint2 arg_0 = (1u).xx;
  uint2 res = QuadReadLaneAt(arg_0, int(1));
  return res;
}

void fragment_main() {
  prevent_dce.Store2(0u, quadBroadcast_641316());
}

//
// compute_main
//

RWByteAddressBuffer prevent_dce : register(u0);
uint2 quadBroadcast_641316() {
  uint2 arg_0 = (1u).xx;
  uint2 res = QuadReadLaneAt(arg_0, int(1));
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store2(0u, quadBroadcast_641316());
}

