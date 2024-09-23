#version 310 es


struct str {
  int i;
};

shared str S;
int func() {
  return S.i;
}
void tint_symbol_inner(uint tint_local_index) {
  if ((tint_local_index == 0u)) {
    S = str(0);
  }
  barrier();
  int r = func();
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  tint_symbol_inner(gl_LocalInvocationIndex);
}
