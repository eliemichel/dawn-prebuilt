
[numthreads(1, 1, 1)]
void f() {
  float a = 4.0f;
  float3 b = float3(1.0f, 2.0f, 3.0f);
  float3 v = (a / b);
  float3 r = (a - ((((v < (0.0f).xxx)) ? (ceil(v)) : (floor(v))) * b));
}

