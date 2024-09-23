#version 310 es

layout(binding = 0, std430)
buffer tint_symbol_1_1_ssbo {
  uint tint_symbol;
} v;
shared uint arg_0;
uint atomicMax_beccfc() {
  uint arg_1 = 1u;
  uint res = atomicMax(arg_0, arg_1);
  return res;
}
void compute_main_inner(uint tint_local_index) {
  if ((tint_local_index == 0u)) {
    atomicExchange(arg_0, 0u);
  }
  barrier();
  v.tint_symbol = atomicMax_beccfc();
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  compute_main_inner(gl_LocalInvocationIndex);
}
