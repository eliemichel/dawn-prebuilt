//
// fragment_main
//
RWByteAddressBuffer prevent_dce : register(u0);

float quadBroadcast_960c6b() {
  float arg_0 = 1.0f;
  float res = QuadReadLaneAt(arg_0, 1u);
  return res;
}

void fragment_main() {
  prevent_dce.Store(0u, asuint(quadBroadcast_960c6b()));
  return;
}
//
// compute_main
//
RWByteAddressBuffer prevent_dce : register(u0);

float quadBroadcast_960c6b() {
  float arg_0 = 1.0f;
  float res = QuadReadLaneAt(arg_0, 1u);
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store(0u, asuint(quadBroadcast_960c6b()));
  return;
}
