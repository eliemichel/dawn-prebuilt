SKIP: FAILED

#version 310 es

ivec3 tint_mod_v3i32(ivec3 lhs, ivec3 rhs) {
  int v = ((((rhs == ivec3(0)) | ((lhs == ivec3((-2147483647 - 1))) & (rhs == ivec3(-1)))).x) ? (ivec3(1).x) : (rhs.x));
  int v_1 = ((((rhs == ivec3(0)) | ((lhs == ivec3((-2147483647 - 1))) & (rhs == ivec3(-1)))).y) ? (ivec3(1).y) : (rhs.y));
  ivec3 v_2 = ivec3(v, v_1, ((((rhs == ivec3(0)) | ((lhs == ivec3((-2147483647 - 1))) & (rhs == ivec3(-1)))).z) ? (ivec3(1).z) : (rhs.z)));
  return (lhs - ((lhs / v_2) * v_2));
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  int a = 4;
  ivec3 b = ivec3(0, 2, 0);
  ivec3 v_3 = (b + b);
  ivec3 r = tint_mod_v3i32(ivec3(a), v_3);
}
error: Error parsing GLSL shader:
ERROR: 0:4: '&' :  wrong operand types: no operation '&' exists that takes a left-hand operand of type ' temp bool' and a right operand of type ' temp bool' (or there is no acceptable conversion)
ERROR: 0:4: '|' :  wrong operand types: no operation '|' exists that takes a left-hand operand of type ' temp bool' and a right operand of type ' temp bool' (or there is no acceptable conversion)
ERROR: 0:4: '' : compilation terminated 
ERROR: 3 compilation errors.  No code generated.




tint executable returned error: exit status 1
