SKIP: FAILED

#version 310 es
precision highp float;
precision highp int;


struct buf1 {
  int ten;
};

struct buf0 {
  int minusEight;
};

struct main_out {
  vec4 x_GLF_color_1;
};

layout(binding = 1, std140)
uniform tint_symbol_2_1_ubo {
  buf1 tint_symbol_1;
} v;
layout(binding = 0, std140)
uniform tint_symbol_4_1_ubo {
  buf0 tint_symbol_3;
} v_1;
vec4 x_GLF_color = vec4(0.0f);
layout(location = 0) out vec4 tint_symbol_loc0_Output;
int tint_div_i32(int lhs, int rhs) {
  return (lhs / ((((rhs == 0) | ((lhs == (-2147483647 - 1)) & (rhs == -1)))) ? (1) : (rhs)));
}
void main_1() {
  int a = 0;
  int b = 0;
  int i = 0;
  a = 0;
  b = 0;
  i = 0;
  {
    while(true) {
      if ((i < v.tint_symbol_1.ten)) {
      } else {
        break;
      }
      if ((a > 5)) {
        break;
      }
      int v_2 = a;
      a = (v_2 + tint_div_i32(v_1.tint_symbol_3.minusEight, -4));
      b = (b + 1);
      {
        i = (i + 1);
      }
      continue;
    }
  }
  if ((b == 3)) {
    x_GLF_color = vec4(1.0f, 0.0f, 0.0f, 1.0f);
  } else {
    x_GLF_color = vec4(0.0f);
  }
}
main_out tint_symbol_inner() {
  main_1();
  return main_out(x_GLF_color);
}
void main() {
  tint_symbol_loc0_Output = tint_symbol_inner().x_GLF_color_1;
}
error: Error parsing GLSL shader:
ERROR: 0:29: '&' :  wrong operand types: no operation '&' exists that takes a left-hand operand of type ' temp bool' and a right operand of type ' temp bool' (or there is no acceptable conversion)
ERROR: 0:29: '|' :  wrong operand types: no operation '|' exists that takes a left-hand operand of type ' temp bool' and a right operand of type ' temp bool' (or there is no acceptable conversion)
ERROR: 0:29: '' : compilation terminated 
ERROR: 3 compilation errors.  No code generated.




tint executable returned error: exit status 1
