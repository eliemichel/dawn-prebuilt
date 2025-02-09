#version 310 es


struct S {
  vec3 v;
  uint tint_pad_0;
};

layout(binding = 0, std430)
buffer U_block_1_ssbo {
  S inner;
} v_1;
void f() {
  v_1.inner.v = vec3(1.0f, 2.0f, 3.0f);
  v_1.inner.v.x = 1.0f;
  v_1.inner.v.y = 2.0f;
  v_1.inner.v.z = 3.0f;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
}
