SKIP: INVALID


enable chromium_experimental_subgroup_matrix;

var<workgroup> arg_0 : array<u32, 64>;

fn subgroupMatrixStore_9d8fcc() {
  subgroupMatrixStore(&(arg_0), 1u, subgroup_matrix_right<u32, 8, 8>(), true, 1u);
}

@compute @workgroup_size(1)
fn compute_main() {
  subgroupMatrixStore_9d8fcc();
}

Failed to generate: <dawn>/test/tint/builtins/gen/literal/subgroupMatrixStore/9d8fcc.wgsl:41:8 error: HLSL backend does not support extension 'chromium_experimental_subgroup_matrix'
enable chromium_experimental_subgroup_matrix;var<workgroup> arg_0: array<u32, 64>;
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


tint executable returned error: exit status 1
