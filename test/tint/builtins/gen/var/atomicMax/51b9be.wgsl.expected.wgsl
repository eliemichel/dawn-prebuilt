struct SB_RW {
  arg_0 : atomic<u32>,
}

@group(0) @binding(0) var<storage, read_write> sb_rw : SB_RW;

fn atomicMax_51b9be() {
  var arg_1 = 1u;
  var res : u32 = atomicMax(&(sb_rw.arg_0), arg_1);
  prevent_dce = res;
}

@group(2) @binding(0) var<storage, read_write> prevent_dce : u32;

@fragment
fn fragment_main() {
  atomicMax_51b9be();
}

@compute @workgroup_size(1)
fn compute_main() {
  atomicMax_51b9be();
}
