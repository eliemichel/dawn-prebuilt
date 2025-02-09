#version 310 es

layout(binding = 0, std140)
uniform u_block_std140_1_ubo {
  vec2 inner_col0;
  vec2 inner_col1;
  vec2 inner_col2;
} v;
layout(binding = 1, std430)
buffer s_block_1_ssbo {
  mat3x2 inner;
} v_1;
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  v_1.inner = mat3x2(v.inner_col0, v.inner_col1, v.inner_col2);
  v_1.inner[1u] = mat3x2(v.inner_col0, v.inner_col1, v.inner_col2)[0u];
  v_1.inner[1u] = mat3x2(v.inner_col0, v.inner_col1, v.inner_col2)[0u].yx;
  v_1.inner[0u].y = mat3x2(v.inner_col0, v.inner_col1, v.inner_col2)[1u].x;
}
