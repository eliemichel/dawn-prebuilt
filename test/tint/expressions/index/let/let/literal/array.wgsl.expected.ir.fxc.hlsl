
int f() {
  int a[8] = {int(1), int(2), int(3), int(4), int(5), int(6), int(7), int(8)};
  int i = int(1);
  return a[min(uint(i), 7u)];
}

[numthreads(1, 1, 1)]
void unused_entry_point() {
}

