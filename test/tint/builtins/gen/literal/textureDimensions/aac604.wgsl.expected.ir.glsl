SKIP: FAILED

#version 310 es
precision highp float;
precision highp int;

layout(binding = 0, std430)
buffer tint_symbol_1_1_ssbo {
  uint tint_symbol;
} v;
uniform highp sampler1D arg_0;
uint textureDimensions_aac604() {
  highp sampler1D v_1 = arg_0;
  uint res = uint(textureSize(v_1, int(1u)));
  return res;
}
void main() {
  v.tint_symbol = textureDimensions_aac604();
}
error: Error parsing GLSL shader:
ERROR: 0:9: 'sampler1D' : Reserved word. 
ERROR: 0:9: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.



#version 310 es

layout(binding = 0, std430)
buffer tint_symbol_1_1_ssbo {
  uint tint_symbol;
} v;
uniform highp sampler1D arg_0;
uint textureDimensions_aac604() {
  highp sampler1D v_1 = arg_0;
  uint res = uint(textureSize(v_1, int(1u)));
  return res;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  v.tint_symbol = textureDimensions_aac604();
}
error: Error parsing GLSL shader:
ERROR: 0:7: 'sampler1D' : Reserved word. 
ERROR: 0:7: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.



#version 310 es


struct VertexOutput {
  vec4 pos;
  uint prevent_dce;
};

uniform highp sampler1D arg_0;
layout(location = 0) flat out uint vertex_main_loc0_Output;
uint textureDimensions_aac604() {
  highp sampler1D v = arg_0;
  uint res = uint(textureSize(v, int(1u)));
  return res;
}
VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = VertexOutput(vec4(0.0f), 0u);
  tint_symbol.pos = vec4(0.0f);
  tint_symbol.prevent_dce = textureDimensions_aac604();
  return tint_symbol;
}
void main() {
  VertexOutput v_1 = vertex_main_inner();
  gl_Position = v_1.pos;
  gl_Position[1u] = -(gl_Position.y);
  gl_Position[2u] = ((2.0f * gl_Position.z) - gl_Position.w);
  vertex_main_loc0_Output = v_1.prevent_dce;
  gl_PointSize = 1.0f;
}
error: Error parsing GLSL shader:
ERROR: 0:9: 'sampler1D' : Reserved word. 
ERROR: 0:9: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.




tint executable returned error: exit status 1
