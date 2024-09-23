#version 310 es
precision highp float;
precision highp int;

layout(binding = 0, std430)
buffer tint_symbol_1_1_ssbo {
  uvec2 tint_symbol;
} v;
layout(binding = 0, rgba16ui) uniform highp writeonly uimage2D arg_0;
uvec2 textureDimensions_e99308() {
  uvec2 res = uvec2(imageSize(arg_0));
  return res;
}
void main() {
  v.tint_symbol = textureDimensions_e99308();
}
#version 310 es

layout(binding = 0, std430)
buffer tint_symbol_1_1_ssbo {
  uvec2 tint_symbol;
} v;
layout(binding = 0, rgba16ui) uniform highp writeonly uimage2D arg_0;
uvec2 textureDimensions_e99308() {
  uvec2 res = uvec2(imageSize(arg_0));
  return res;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  v.tint_symbol = textureDimensions_e99308();
}
