#version 310 es
#extension GL_AMD_gpu_shader_half_float: require

f16vec2 u = f16vec2(1.0hf);
ivec2 tint_v2f16_to_v2i32(f16vec2 value) {
  ivec2 v_1 = ivec2(value);
  int v_2 = (((value >= f16vec2(-65504.0hf)).x) ? (v_1.x) : (ivec2((-2147483647 - 1)).x));
  ivec2 v_3 = ivec2(v_2, (((value >= f16vec2(-65504.0hf)).y) ? (v_1.y) : (ivec2((-2147483647 - 1)).y)));
  int v_4 = (((value <= f16vec2(65504.0hf)).x) ? (v_3.x) : (ivec2(2147483647).x));
  return ivec2(v_4, (((value <= f16vec2(65504.0hf)).y) ? (v_3.y) : (ivec2(2147483647).y)));
}
void f() {
  ivec2 v = tint_v2f16_to_v2i32(u);
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
}
