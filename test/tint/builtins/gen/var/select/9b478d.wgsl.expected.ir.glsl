#version 310 es
precision highp float;
precision highp int;

void select_9b478d() {
  bool arg_2 = true;
  int res = ((arg_2) ? (1) : (1));
}
void main() {
  select_9b478d();
}
#version 310 es

void select_9b478d() {
  bool arg_2 = true;
  int res = ((arg_2) ? (1) : (1));
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  select_9b478d();
}
#version 310 es


struct VertexOutput {
  vec4 pos;
};

void select_9b478d() {
  bool arg_2 = true;
  int res = ((arg_2) ? (1) : (1));
}
VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = VertexOutput(vec4(0.0f));
  tint_symbol.pos = vec4(0.0f);
  select_9b478d();
  return tint_symbol;
}
void main() {
  gl_Position = vertex_main_inner().pos;
  gl_Position[1u] = -(gl_Position.y);
  gl_Position[2u] = ((2.0f * gl_Position.z) - gl_Position.w);
  gl_PointSize = 1.0f;
}
