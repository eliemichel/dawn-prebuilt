#version 310 es
precision highp float;
precision highp int;

void select_2c96d4() {
  bvec3 arg_2 = bvec3(true);
  bvec3 v = arg_2;
  float v_1 = ((v.x) ? (vec3(1.0f).x) : (vec3(1.0f).x));
  float v_2 = ((v.y) ? (vec3(1.0f).y) : (vec3(1.0f).y));
  vec3 res = vec3(v_1, v_2, ((v.z) ? (vec3(1.0f).z) : (vec3(1.0f).z)));
}
void main() {
  select_2c96d4();
}
#version 310 es

void select_2c96d4() {
  bvec3 arg_2 = bvec3(true);
  bvec3 v = arg_2;
  float v_1 = ((v.x) ? (vec3(1.0f).x) : (vec3(1.0f).x));
  float v_2 = ((v.y) ? (vec3(1.0f).y) : (vec3(1.0f).y));
  vec3 res = vec3(v_1, v_2, ((v.z) ? (vec3(1.0f).z) : (vec3(1.0f).z)));
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  select_2c96d4();
}
#version 310 es


struct VertexOutput {
  vec4 pos;
};

void select_2c96d4() {
  bvec3 arg_2 = bvec3(true);
  bvec3 v = arg_2;
  float v_1 = ((v.x) ? (vec3(1.0f).x) : (vec3(1.0f).x));
  float v_2 = ((v.y) ? (vec3(1.0f).y) : (vec3(1.0f).y));
  vec3 res = vec3(v_1, v_2, ((v.z) ? (vec3(1.0f).z) : (vec3(1.0f).z)));
}
VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = VertexOutput(vec4(0.0f));
  tint_symbol.pos = vec4(0.0f);
  select_2c96d4();
  return tint_symbol;
}
void main() {
  gl_Position = vertex_main_inner().pos;
  gl_Position[1u] = -(gl_Position.y);
  gl_Position[2u] = ((2.0f * gl_Position.z) - gl_Position.w);
  gl_PointSize = 1.0f;
}
