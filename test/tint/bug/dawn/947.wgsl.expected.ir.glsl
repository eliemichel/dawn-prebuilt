SKIP: FAILED

#version 310 es


struct Uniforms {
  vec2 u_scale;
  vec2 u_offset;
};

struct VertexOutputs {
  vec2 texcoords;
  vec4 position;
};

layout(binding = 0, std140)
uniform tint_symbol_2_1_ubo {
  Uniforms tint_symbol_1;
} v;
layout(location = 0) out vec2 vs_main_loc0_Output;
VertexOutputs vs_main_inner(uint VertexIndex) {
  vec2 texcoord[3] = vec2[3](vec2(-0.5f, 0.0f), vec2(1.5f, 0.0f), vec2(0.5f, 2.0f));
  VertexOutputs tint_symbol = VertexOutputs(vec2(0.0f), vec4(0.0f));
  tint_symbol.position = vec4(((texcoord[VertexIndex] * 2.0f) - vec2(1.0f)), 0.0f, 1.0f);
  bool flipY = (v.tint_symbol_1.u_scale.y < 0.0f);
  if (flipY) {
    tint_symbol.texcoords = ((((texcoord[VertexIndex] * v.tint_symbol_1.u_scale) + v.tint_symbol_1.u_offset) * vec2(1.0f, -1.0f)) + vec2(0.0f, 1.0f));
  } else {
    tint_symbol.texcoords = ((((texcoord[VertexIndex] * vec2(1.0f, -1.0f)) + vec2(0.0f, 1.0f)) * v.tint_symbol_1.u_scale) + v.tint_symbol_1.u_offset);
  }
  return tint_symbol;
}
void main() {
  VertexOutputs v_1 = vs_main_inner(gl_VertexID);
  vs_main_loc0_Output = v_1.texcoords;
  gl_Position = v_1.position;
  gl_Position[1u] = -(gl_Position.y);
  gl_Position[2u] = ((2.0f * gl_Position.z) - gl_Position.w);
  gl_PointSize = 1.0f;
}
error: Error parsing GLSL shader:
ERROR: 0:32: 'vs_main_inner' : no matching overloaded function found 
ERROR: 0:32: '=' :  cannot convert from ' const float' to ' temp structure{ global highp 2-component vector of float texcoords,  global highp 4-component vector of float position}'
ERROR: 0:32: '' : compilation terminated 
ERROR: 3 compilation errors.  No code generated.



#version 310 es
precision highp float;
precision highp int;

bool continue_execution = true;
layout(location = 0) in vec2 fs_main_loc0_Input;
layout(location = 0) out vec4 fs_main_loc0_Output;
vec4 fs_main_inner(vec2 texcoord) {
  vec2 clampedTexcoord = clamp(texcoord, vec2(0.0f), vec2(1.0f));
  if (!(all((clampedTexcoord == texcoord)))) {
    continue_execution = false;
  }
  vec4 srcColor = vec4(0.0f);
  if (!(continue_execution)) {
    discard;
  }
  return srcColor;
}
void main() {
  fs_main_loc0_Output = fs_main_inner(fs_main_loc0_Input);
}
error: Error parsing GLSL shader:
ERROR: 0:10: 'all' : no matching overloaded function found 
ERROR: 0:10: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.




tint executable returned error: exit status 1
