//
// fragment_main
//

RWByteAddressBuffer prevent_dce : register(u0);
vector<float16_t, 4> quadBroadcast_4d9898() {
  vector<float16_t, 4> res = QuadReadLaneAt((float16_t(1.0h)).xxxx, int(1));
  return res;
}

void fragment_main() {
  prevent_dce.Store<vector<float16_t, 4> >(0u, quadBroadcast_4d9898());
}

//
// compute_main
//

RWByteAddressBuffer prevent_dce : register(u0);
vector<float16_t, 4> quadBroadcast_4d9898() {
  vector<float16_t, 4> res = QuadReadLaneAt((float16_t(1.0h)).xxxx, int(1));
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store<vector<float16_t, 4> >(0u, quadBroadcast_4d9898());
}

