SKIP: FAILED

#version 310 es
precision highp float;
precision highp int;

layout(binding = 0, std430)
buffer tint_symbol_1_1_ssbo {
  int tint_symbol;
} v;
int dot_ef6b1d() {
  ivec4 arg_0 = ivec4(1);
  ivec4 arg_1 = ivec4(1);
  int res = dot(arg_0, arg_1);
  return res;
}
void main() {
  v.tint_symbol = dot_ef6b1d();
}
error: Error parsing GLSL shader:
ERROR: 0:12: 'dot' : no matching overloaded function found 
ERROR: 0:12: '=' :  cannot convert from ' const float' to ' temp highp int'
ERROR: 0:12: '' : compilation terminated 
ERROR: 3 compilation errors.  No code generated.



#version 310 es

layout(binding = 0, std430)
buffer tint_symbol_1_1_ssbo {
  int tint_symbol;
} v;
int dot_ef6b1d() {
  ivec4 arg_0 = ivec4(1);
  ivec4 arg_1 = ivec4(1);
  int res = dot(arg_0, arg_1);
  return res;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  v.tint_symbol = dot_ef6b1d();
}
error: Error parsing GLSL shader:
ERROR: 0:10: 'dot' : no matching overloaded function found 
ERROR: 0:10: '=' :  cannot convert from ' const float' to ' temp highp int'
ERROR: 0:10: '' : compilation terminated 
ERROR: 3 compilation errors.  No code generated.



#version 310 es


struct VertexOutput {
  vec4 pos;
  int prevent_dce;
};

layout(location = 0) flat out int vertex_main_loc0_Output;
int dot_ef6b1d() {
  ivec4 arg_0 = ivec4(1);
  ivec4 arg_1 = ivec4(1);
  int res = dot(arg_0, arg_1);
  return res;
}
VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = VertexOutput(vec4(0.0f), 0);
  tint_symbol.pos = vec4(0.0f);
  tint_symbol.prevent_dce = dot_ef6b1d();
  return tint_symbol;
}
void main() {
  VertexOutput v = vertex_main_inner();
  gl_Position = v.pos;
  gl_Position[1u] = -(gl_Position.y);
  gl_Position[2u] = ((2.0f * gl_Position.z) - gl_Position.w);
  vertex_main_loc0_Output = v.prevent_dce;
  gl_PointSize = 1.0f;
}
error: Error parsing GLSL shader:
ERROR: 0:13: 'dot' : no matching overloaded function found 
ERROR: 0:13: '=' :  cannot convert from ' const float' to ' temp highp int'
ERROR: 0:13: '' : compilation terminated 
ERROR: 3 compilation errors.  No code generated.




tint executable returned error: exit status 1
