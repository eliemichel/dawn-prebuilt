#version 310 es

ivec3 tint_mod_v3i32(ivec3 lhs, ivec3 rhs) {
  uvec3 v = uvec3(equal(lhs, ivec3((-2147483647 - 1))));
  bvec3 v_1 = bvec3((v & uvec3(equal(rhs, ivec3(-1)))));
  uvec3 v_2 = uvec3(equal(rhs, ivec3(0)));
  ivec3 v_3 = mix(rhs, ivec3(1), bvec3((v_2 | uvec3(v_1))));
  return (lhs - ((lhs / v_3) * v_3));
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  ivec3 a = ivec3(1, 2, 3);
  int b = 0;
  ivec3 v_4 = a;
  ivec3 r = tint_mod_v3i32(v_4, ivec3(b));
}
