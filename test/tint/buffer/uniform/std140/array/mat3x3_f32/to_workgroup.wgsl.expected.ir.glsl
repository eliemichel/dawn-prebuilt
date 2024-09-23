#version 310 es


struct mat3x3_f32_std140 {
  vec3 col0;
  vec3 col1;
  vec3 col2;
};

layout(binding = 0, std140)
uniform tint_symbol_1_std140_1_ubo {
  mat3x3_f32_std140 tint_symbol[4];
} v;
shared mat3 w[4];
void f_inner(uint tint_local_index) {
  {
    uint v_1 = 0u;
    v_1 = tint_local_index;
    while(true) {
      uint v_2 = v_1;
      if ((v_2 >= 4u)) {
        break;
      }
      w[v_2] = mat3(vec3(0.0f), vec3(0.0f), vec3(0.0f));
      {
        v_1 = (v_2 + 1u);
      }
      continue;
    }
  }
  barrier();
  mat3x3_f32_std140 v_3[4] = v.tint_symbol;
  mat3 v_4[4] = mat3[4](mat3(vec3(0.0f), vec3(0.0f), vec3(0.0f)), mat3(vec3(0.0f), vec3(0.0f), vec3(0.0f)), mat3(vec3(0.0f), vec3(0.0f), vec3(0.0f)), mat3(vec3(0.0f), vec3(0.0f), vec3(0.0f)));
  {
    uint v_5 = 0u;
    v_5 = 0u;
    while(true) {
      uint v_6 = v_5;
      if ((v_6 >= 4u)) {
        break;
      }
      v_4[v_6] = mat3(v_3[v_6].col0, v_3[v_6].col1, v_3[v_6].col2);
      {
        v_5 = (v_6 + 1u);
      }
      continue;
    }
  }
  w = v_4;
  w[1] = mat3(v.tint_symbol[2].col0, v.tint_symbol[2].col1, v.tint_symbol[2].col2);
  w[1][0] = v.tint_symbol[0].col1.zxy;
  w[1][0][0u] = v.tint_symbol[0].col1.x;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  f_inner(gl_LocalInvocationIndex);
}
