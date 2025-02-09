#version 310 es
#extension GL_OES_sample_variables: require
#extension GL_AMD_gpu_shader_half_float: require
precision highp float;
precision highp int;


struct tint_push_constant_struct {
  float tint_frag_depth_min;
  float tint_frag_depth_max;
};

struct FragmentOutputs {
  int loc0;
  float frag_depth;
  uint loc1;
  float loc2;
  uint sample_mask;
  vec4 loc3;
  float16_t loc4;
  f16vec3 loc5;
};

layout(location = 0) uniform tint_push_constant_struct tint_push_constants;
layout(location = 0) out int main_loc0_Output;
layout(location = 1) out uint main_loc1_Output;
layout(location = 2) out float main_loc2_Output;
layout(location = 3) out vec4 main_loc3_Output;
layout(location = 4) out float16_t main_loc4_Output;
layout(location = 5) out f16vec3 main_loc5_Output;
FragmentOutputs main_inner() {
  return FragmentOutputs(1, 2.0f, 1u, 1.0f, 2u, vec4(1.0f, 2.0f, 3.0f, 4.0f), 2.25hf, f16vec3(3.0hf, 5.0hf, 8.0hf));
}
void main() {
  FragmentOutputs v = main_inner();
  main_loc0_Output = v.loc0;
  gl_FragDepth = clamp(v.frag_depth, tint_push_constants.tint_frag_depth_min, tint_push_constants.tint_frag_depth_max);
  main_loc1_Output = v.loc1;
  main_loc2_Output = v.loc2;
  gl_SampleMask[0u] = int(v.sample_mask);
  main_loc3_Output = v.loc3;
  main_loc4_Output = v.loc4;
  main_loc5_Output = v.loc5;
}
