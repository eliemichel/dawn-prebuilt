SKIP: FAILED

#version 310 es
#extension GL_OES_sample_variables: require
precision highp float;
precision highp int;


struct main_out {
  uint x_1_1;
};

int x_1[1] = int[1](0);
void main_1() {
  x_1[0] = 12;
}
main_out tint_symbol_inner() {
  main_1();
  return main_out(uint(x_1[0]));
}
void main() {
  gl_SampleMask = tint_symbol_inner().x_1_1;
}
error: Error parsing GLSL shader:
ERROR: 0:20: 'assign' :  cannot convert from ' global highp uint' to ' out unsized 1-element array of highp int SampleMaskIn'
ERROR: 0:20: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.




tint executable returned error: exit status 1
