#version 310 es
#extension GL_AMD_gpu_shader_half_float: require

float16_t t = 0.0hf;
float16_t m() {
  t = 1.0hf;
  return float16_t(t);
}
int tint_f16_to_i32(float16_t value) {
  return (((value <= 65504.0hf)) ? ((((value >= -65504.0hf)) ? (int(value)) : ((-2147483647 - 1)))) : (2147483647));
}
void f() {
  int v = tint_f16_to_i32(m());
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
}
