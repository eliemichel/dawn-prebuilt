SKIP: FAILED

#version 310 es

uvec3 tint_mod_v3u32(uvec3 lhs, uvec3 rhs) {
  uint v = (((rhs == uvec3(0u)).x) ? (uvec3(1u).x) : (rhs.x));
  uint v_1 = (((rhs == uvec3(0u)).y) ? (uvec3(1u).y) : (rhs.y));
  uvec3 v_2 = uvec3(v, v_1, (((rhs == uvec3(0u)).z) ? (uvec3(1u).z) : (rhs.z)));
  return (lhs - ((lhs / v_2) * v_2));
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  uvec3 a = uvec3(1u, 2u, 3u);
  uvec3 b = uvec3(0u, 5u, 0u);
  uvec3 r = tint_mod_v3u32(a, (b + b));
}
error: Error parsing GLSL shader:
ERROR: 0:4: 'scalar swizzle' : not supported with this profile: es
ERROR: 0:4: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.




tint executable returned error: exit status 1
