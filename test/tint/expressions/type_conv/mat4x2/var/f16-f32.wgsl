// flags:  --hlsl-shader-model 62
enable f16;
var<private> u = mat4x2<f16>(1.0h, 2.0h,
                             3.0h, 4.0h,
                             5.0h, 6.0h,
                             7.0h, 8.0h);
fn f() {
    var v : mat4x2<f32> = mat4x2<f32>(u);
}