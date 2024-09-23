#version 310 es

uint local_invocation_index_1 = 0u;
shared uint arg_0;
void atomicStore_726882() {
  atomicExchange(arg_0, 1u);
}
void compute_main_inner(uint local_invocation_index_2) {
  atomicExchange(arg_0, 0u);
  barrier();
  atomicStore_726882();
}
void compute_main_1() {
  uint x_28 = local_invocation_index_1;
  compute_main_inner(x_28);
}
void compute_main_inner_1(uint local_invocation_index_1_param) {
  if ((local_invocation_index_1_param == 0u)) {
    atomicExchange(arg_0, 0u);
  }
  barrier();
  local_invocation_index_1 = local_invocation_index_1_param;
  compute_main_1();
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  compute_main_inner_1(gl_LocalInvocationIndex);
}
