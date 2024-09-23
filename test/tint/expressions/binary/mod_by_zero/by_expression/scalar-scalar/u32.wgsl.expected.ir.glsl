#version 310 es

uint tint_mod_u32(uint lhs, uint rhs) {
  uint v = (((rhs == 0u)) ? (1u) : (rhs));
  return (lhs - ((lhs / v) * v));
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  uint a = 1u;
  uint b = 0u;
  uint r = tint_mod_u32(a, (b + b));
}
