#version 460
precision highp float;
precision highp int;

layout(binding = 0, rg32ui) uniform highp uimage1D arg_0;
void textureStore_4cce74() {
  int arg_1 = 1;
  uvec4 arg_2 = uvec4(1u);
  imageStore(arg_0, arg_1, arg_2);
}
void main() {
  textureStore_4cce74();
}
#version 460

layout(binding = 0, rg32ui) uniform highp uimage1D arg_0;
void textureStore_4cce74() {
  int arg_1 = 1;
  uvec4 arg_2 = uvec4(1u);
  imageStore(arg_0, arg_1, arg_2);
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  textureStore_4cce74();
}
