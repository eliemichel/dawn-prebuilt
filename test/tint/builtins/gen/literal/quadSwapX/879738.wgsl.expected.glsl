SKIP: INVALID


enable subgroups;

@group(0) @binding(0) var<storage, read_write> prevent_dce : vec2<f32>;

fn quadSwapX_879738() -> vec2<f32> {
  var res : vec2<f32> = quadSwapX(vec2<f32>(1.0f));
  return res;
}

@fragment
fn fragment_main() {
  prevent_dce = quadSwapX_879738();
}

@compute @workgroup_size(1)
fn compute_main() {
  prevent_dce = quadSwapX_879738();
}

Failed to generate: <dawn>/test/tint/builtins/gen/literal/quadSwapX/879738.wgsl:41:8 error: GLSL backend does not support extension 'subgroups'
enable subgroups;
       ^^^^^^^^^


enable subgroups;

@group(0) @binding(0) var<storage, read_write> prevent_dce : vec2<f32>;

fn quadSwapX_879738() -> vec2<f32> {
  var res : vec2<f32> = quadSwapX(vec2<f32>(1.0f));
  return res;
}

@fragment
fn fragment_main() {
  prevent_dce = quadSwapX_879738();
}

@compute @workgroup_size(1)
fn compute_main() {
  prevent_dce = quadSwapX_879738();
}

Failed to generate: <dawn>/test/tint/builtins/gen/literal/quadSwapX/879738.wgsl:41:8 error: GLSL backend does not support extension 'subgroups'
enable subgroups;
       ^^^^^^^^^


tint executable returned error: exit status 1
