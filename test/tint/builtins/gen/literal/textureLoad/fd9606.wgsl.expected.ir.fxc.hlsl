
RWByteAddressBuffer prevent_dce : register(u0);
RWTexture2DArray<float4> arg_0 : register(u0, space1);
float4 textureLoad_fd9606() {
  int2 v = int2((1u).xx);
  float4 res = float4(arg_0.Load(int4(v, int(int(1)), int(0))));
  return res;
}

void fragment_main() {
  prevent_dce.Store4(0u, asuint(textureLoad_fd9606()));
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store4(0u, asuint(textureLoad_fd9606()));
}

