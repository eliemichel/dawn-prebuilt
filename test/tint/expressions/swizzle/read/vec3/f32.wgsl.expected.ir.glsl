#version 310 es


struct S {
  vec3 v;
};

S P = S(vec3(0.0f));
void f() {
  vec3 v = P.v;
  float x = P.v.x;
  float y = P.v.y;
  float z = P.v.z;
  vec2 xx = P.v.xx;
  vec2 xy = P.v.xy;
  vec2 xz = P.v.xz;
  vec2 yx = P.v.yx;
  vec2 yy = P.v.yy;
  vec2 yz = P.v.yz;
  vec2 zx = P.v.zx;
  vec2 zy = P.v.zy;
  vec2 zz = P.v.zz;
  vec3 xxx = P.v.xxx;
  vec3 xxy = P.v.xxy;
  vec3 xxz = P.v.xxz;
  vec3 xyx = P.v.xyx;
  vec3 xyy = P.v.xyy;
  vec3 xyz = P.v.xyz;
  vec3 xzx = P.v.xzx;
  vec3 xzy = P.v.xzy;
  vec3 xzz = P.v.xzz;
  vec3 yxx = P.v.yxx;
  vec3 yxy = P.v.yxy;
  vec3 yxz = P.v.yxz;
  vec3 yyx = P.v.yyx;
  vec3 yyy = P.v.yyy;
  vec3 yyz = P.v.yyz;
  vec3 yzx = P.v.yzx;
  vec3 yzy = P.v.yzy;
  vec3 yzz = P.v.yzz;
  vec3 zxx = P.v.zxx;
  vec3 zxy = P.v.zxy;
  vec3 zxz = P.v.zxz;
  vec3 zyx = P.v.zyx;
  vec3 zyy = P.v.zyy;
  vec3 zyz = P.v.zyz;
  vec3 zzx = P.v.zzx;
  vec3 zzy = P.v.zzy;
  vec3 zzz = P.v.zzz;
  vec4 xxxx = P.v.xxxx;
  vec4 xxxy = P.v.xxxy;
  vec4 xxxz = P.v.xxxz;
  vec4 xxyx = P.v.xxyx;
  vec4 xxyy = P.v.xxyy;
  vec4 xxyz = P.v.xxyz;
  vec4 xxzx = P.v.xxzx;
  vec4 xxzy = P.v.xxzy;
  vec4 xxzz = P.v.xxzz;
  vec4 xyxx = P.v.xyxx;
  vec4 xyxy = P.v.xyxy;
  vec4 xyxz = P.v.xyxz;
  vec4 xyyx = P.v.xyyx;
  vec4 xyyy = P.v.xyyy;
  vec4 xyyz = P.v.xyyz;
  vec4 xyzx = P.v.xyzx;
  vec4 xyzy = P.v.xyzy;
  vec4 xyzz = P.v.xyzz;
  vec4 xzxx = P.v.xzxx;
  vec4 xzxy = P.v.xzxy;
  vec4 xzxz = P.v.xzxz;
  vec4 xzyx = P.v.xzyx;
  vec4 xzyy = P.v.xzyy;
  vec4 xzyz = P.v.xzyz;
  vec4 xzzx = P.v.xzzx;
  vec4 xzzy = P.v.xzzy;
  vec4 xzzz = P.v.xzzz;
  vec4 yxxx = P.v.yxxx;
  vec4 yxxy = P.v.yxxy;
  vec4 yxxz = P.v.yxxz;
  vec4 yxyx = P.v.yxyx;
  vec4 yxyy = P.v.yxyy;
  vec4 yxyz = P.v.yxyz;
  vec4 yxzx = P.v.yxzx;
  vec4 yxzy = P.v.yxzy;
  vec4 yxzz = P.v.yxzz;
  vec4 yyxx = P.v.yyxx;
  vec4 yyxy = P.v.yyxy;
  vec4 yyxz = P.v.yyxz;
  vec4 yyyx = P.v.yyyx;
  vec4 yyyy = P.v.yyyy;
  vec4 yyyz = P.v.yyyz;
  vec4 yyzx = P.v.yyzx;
  vec4 yyzy = P.v.yyzy;
  vec4 yyzz = P.v.yyzz;
  vec4 yzxx = P.v.yzxx;
  vec4 yzxy = P.v.yzxy;
  vec4 yzxz = P.v.yzxz;
  vec4 yzyx = P.v.yzyx;
  vec4 yzyy = P.v.yzyy;
  vec4 yzyz = P.v.yzyz;
  vec4 yzzx = P.v.yzzx;
  vec4 yzzy = P.v.yzzy;
  vec4 yzzz = P.v.yzzz;
  vec4 zxxx = P.v.zxxx;
  vec4 zxxy = P.v.zxxy;
  vec4 zxxz = P.v.zxxz;
  vec4 zxyx = P.v.zxyx;
  vec4 zxyy = P.v.zxyy;
  vec4 zxyz = P.v.zxyz;
  vec4 zxzx = P.v.zxzx;
  vec4 zxzy = P.v.zxzy;
  vec4 zxzz = P.v.zxzz;
  vec4 zyxx = P.v.zyxx;
  vec4 zyxy = P.v.zyxy;
  vec4 zyxz = P.v.zyxz;
  vec4 zyyx = P.v.zyyx;
  vec4 zyyy = P.v.zyyy;
  vec4 zyyz = P.v.zyyz;
  vec4 zyzx = P.v.zyzx;
  vec4 zyzy = P.v.zyzy;
  vec4 zyzz = P.v.zyzz;
  vec4 zzxx = P.v.zzxx;
  vec4 zzxy = P.v.zzxy;
  vec4 zzxz = P.v.zzxz;
  vec4 zzyx = P.v.zzyx;
  vec4 zzyy = P.v.zzyy;
  vec4 zzyz = P.v.zzyz;
  vec4 zzzx = P.v.zzzx;
  vec4 zzzy = P.v.zzzy;
  vec4 zzzz = P.v.zzzz;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
}
