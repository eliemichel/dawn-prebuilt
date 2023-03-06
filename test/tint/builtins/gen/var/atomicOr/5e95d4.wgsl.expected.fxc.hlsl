RWByteAddressBuffer sb_rw : register(u0, space0);

uint sb_rwatomicOr(uint offset, uint value) {
  uint original_value = 0;
  sb_rw.InterlockedOr(offset, value, original_value);
  return original_value;
}


RWByteAddressBuffer prevent_dce : register(u0, space2);

void atomicOr_5e95d4() {
  uint arg_1 = 1u;
  uint res = sb_rwatomicOr(0u, arg_1);
  prevent_dce.Store(0u, asuint(res));
}

void fragment_main() {
  atomicOr_5e95d4();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  atomicOr_5e95d4();
  return;
}
