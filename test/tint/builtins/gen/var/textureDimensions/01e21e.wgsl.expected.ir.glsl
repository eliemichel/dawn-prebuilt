#version 460
precision highp float;
precision highp int;

layout(binding = 0, std430)
buffer tint_symbol_1_1_ssbo {
  uint tint_symbol;
} v;
layout(binding = 0, rg32ui) uniform highp uimage1D arg_0;
uint textureDimensions_01e21e() {
  uint res = uint(imageSize(arg_0));
  return res;
}
void main() {
  v.tint_symbol = textureDimensions_01e21e();
}
#version 460

layout(binding = 0, std430)
buffer tint_symbol_1_1_ssbo {
  uint tint_symbol;
} v;
layout(binding = 0, rg32ui) uniform highp uimage1D arg_0;
uint textureDimensions_01e21e() {
  uint res = uint(imageSize(arg_0));
  return res;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  v.tint_symbol = textureDimensions_01e21e();
}
