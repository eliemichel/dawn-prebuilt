SKIP: FAILED

#version 310 es
precision highp float;
precision highp int;

layout(binding = 0, std430)
buffer tint_symbol_1_1_ssbo {
  vec3 tint_symbol;
} v;
vec3 select_78be5f() {
  vec3 arg_0 = vec3(1.0f);
  vec3 arg_1 = vec3(1.0f);
  bool arg_2 = true;
  vec3 v_1 = arg_0;
  vec3 v_2 = arg_1;
  bool v_3 = arg_2;
  float v_4 = ((v_3.x) ? (v_2.x) : (v_1.x));
  float v_5 = ((v_3.y) ? (v_2.y) : (v_1.y));
  vec3 res = vec3(v_4, v_5, ((v_3.z) ? (v_2.z) : (v_1.z)));
  return res;
}
void main() {
  v.tint_symbol = select_78be5f();
}
error: Error parsing GLSL shader:
ERROR: 0:16: 'scalar swizzle' : not supported with this profile: es
ERROR: 0:16: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.



#version 310 es

layout(binding = 0, std430)
buffer tint_symbol_1_1_ssbo {
  vec3 tint_symbol;
} v;
vec3 select_78be5f() {
  vec3 arg_0 = vec3(1.0f);
  vec3 arg_1 = vec3(1.0f);
  bool arg_2 = true;
  vec3 v_1 = arg_0;
  vec3 v_2 = arg_1;
  bool v_3 = arg_2;
  float v_4 = ((v_3.x) ? (v_2.x) : (v_1.x));
  float v_5 = ((v_3.y) ? (v_2.y) : (v_1.y));
  vec3 res = vec3(v_4, v_5, ((v_3.z) ? (v_2.z) : (v_1.z)));
  return res;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  v.tint_symbol = select_78be5f();
}
error: Error parsing GLSL shader:
ERROR: 0:14: 'scalar swizzle' : not supported with this profile: es
ERROR: 0:14: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.



#version 310 es


struct VertexOutput {
  vec4 pos;
  vec3 prevent_dce;
};

layout(location = 0) flat out vec3 vertex_main_loc0_Output;
vec3 select_78be5f() {
  vec3 arg_0 = vec3(1.0f);
  vec3 arg_1 = vec3(1.0f);
  bool arg_2 = true;
  vec3 v = arg_0;
  vec3 v_1 = arg_1;
  bool v_2 = arg_2;
  float v_3 = ((v_2.x) ? (v_1.x) : (v.x));
  float v_4 = ((v_2.y) ? (v_1.y) : (v.y));
  vec3 res = vec3(v_3, v_4, ((v_2.z) ? (v_1.z) : (v.z)));
  return res;
}
VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = VertexOutput(vec4(0.0f), vec3(0.0f));
  tint_symbol.pos = vec4(0.0f);
  tint_symbol.prevent_dce = select_78be5f();
  return tint_symbol;
}
void main() {
  VertexOutput v_5 = vertex_main_inner();
  gl_Position = v_5.pos;
  gl_Position[1u] = -(gl_Position.y);
  gl_Position[2u] = ((2.0f * gl_Position.z) - gl_Position.w);
  vertex_main_loc0_Output = v_5.prevent_dce;
  gl_PointSize = 1.0f;
}
error: Error parsing GLSL shader:
ERROR: 0:17: 'scalar swizzle' : not supported with this profile: es
ERROR: 0:17: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.




tint executable returned error: exit status 1
