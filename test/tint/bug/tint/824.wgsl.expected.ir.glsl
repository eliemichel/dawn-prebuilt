SKIP: FAILED

#version 310 es


struct Output {
  vec4 Position;
  vec4 color;
};

layout(location = 0) out vec4 tint_symbol_loc0_Output;
Output tint_symbol_inner(uint VertexIndex, uint InstanceIndex) {
  vec2 zv[4] = vec2[4](vec2(0.20000000298023223877f), vec2(0.30000001192092895508f), vec2(-0.10000000149011611938f), vec2(1.10000002384185791016f));
  float z = zv[InstanceIndex][0u];
  Output tint_symbol_1 = Output(vec4(0.0f), vec4(0.0f));
  tint_symbol_1.Position = vec4(0.5f, 0.5f, z, 1.0f);
  vec4 colors[4] = vec4[4](vec4(1.0f, 0.0f, 0.0f, 1.0f), vec4(0.0f, 1.0f, 0.0f, 1.0f), vec4(0.0f, 0.0f, 1.0f, 1.0f), vec4(1.0f));
  tint_symbol_1.color = colors[InstanceIndex];
  return tint_symbol_1;
}
void main() {
  Output v = tint_symbol_inner(gl_VertexID, gl_InstanceID);
  gl_Position = v.Position;
  gl_Position[1u] = -(gl_Position.y);
  gl_Position[2u] = ((2.0f * gl_Position.z) - gl_Position.w);
  tint_symbol_loc0_Output = v.color;
  gl_PointSize = 1.0f;
}
error: Error parsing GLSL shader:
ERROR: 0:20: 'tint_symbol_inner' : no matching overloaded function found 
ERROR: 0:20: '=' :  cannot convert from ' const float' to ' temp structure{ global highp 4-component vector of float Position,  global highp 4-component vector of float color}'
ERROR: 0:20: '' : compilation terminated 
ERROR: 3 compilation errors.  No code generated.




tint executable returned error: exit status 1
