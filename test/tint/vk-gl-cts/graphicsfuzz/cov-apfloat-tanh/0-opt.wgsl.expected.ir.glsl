SKIP: FAILED

#version 310 es
precision highp float;
precision highp int;


struct main_out {
  vec4 x_GLF_color_1;
};

vec4 x_GLF_color = vec4(0.0f);
layout(location = 0) out vec4 tint_symbol_loc0_Output;
void main_1() {
  vec4 v = vec4(0.0f);
  float dist1 = 0.0f;
  float dist2 = 0.0f;
  v = vec4(1.0f, 2.0f, 3.0f, 4.0f);
  vec4 x_30 = v;
  vec4 x_32 = v;
  vec4 x_34 = v;
  vec4 v_1 = tanh(x_30);
  vec4 v_2 = sinh(x_32);
  dist1 = distance(v_1, (v_2 / cosh(x_34)));
  vec4 x_38 = v;
  dist2 = distance(tanh(x_38), vec4(0.76159000396728515625f, 0.96403002738952636719f, 0.99505001306533813477f, 0.99932998418807983398f));
  float x_41 = dist1;
  float x_43 = dist2;
  if (((x_41 < 0.10000000149011611938f) & (x_43 < 0.10000000149011611938f))) {
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
ERROR: 0:27: '&' :  wrong operand types: no operation '&' exists that takes a left-hand operand of type ' temp bool' and a right operand of type ' temp bool' (or there is no acceptable conversion)
ERROR: 0:27: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.




tint executable returned error: exit status 1
