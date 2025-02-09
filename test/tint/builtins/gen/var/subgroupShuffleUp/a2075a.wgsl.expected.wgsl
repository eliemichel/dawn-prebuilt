enable subgroups;
enable f16;

@group(0) @binding(0) var<storage, read_write> prevent_dce : vec2<f16>;

fn subgroupShuffleUp_a2075a() -> vec2<f16> {
  var arg_0 = vec2<f16>(1.0h);
  var arg_1 = 1u;
  var res : vec2<f16> = subgroupShuffleUp(arg_0, arg_1);
  return res;
}

@fragment
fn fragment_main() {
  prevent_dce = subgroupShuffleUp_a2075a();
}

@compute @workgroup_size(1)
fn compute_main() {
  prevent_dce = subgroupShuffleUp_a2075a();
}
