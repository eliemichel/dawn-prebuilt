#version 310 es

shared int a;
shared vec4 b;
shared mat2 c;
int tint_div_i32(int lhs, int rhs) {
  return (lhs / ((((rhs == 0) | ((lhs == (-2147483647 - 1)) & (rhs == -1)))) ? (1) : (rhs)));
}
void foo() {
  a = tint_div_i32(a, 2);
  b = (b * mat4(vec4(0.0f), vec4(0.0f), vec4(0.0f), vec4(0.0f)));
  c = (c * 2.0f);
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
}
