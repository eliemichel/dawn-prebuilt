SKIP: INVALID


enable chromium_experimental_subgroup_matrix;
enable f16;

var<workgroup> arg_0 : array<f16, 64>;

fn subgroupMatrixStore_0d6927() {
  subgroupMatrixStore(&(arg_0), 1u, subgroup_matrix_result<f16, 8, 8>(), true, 1u);
}

@compute @workgroup_size(1)
fn compute_main() {
  subgroupMatrixStore_0d6927();
}

Failed to generate: <dawn>/test/tint/builtins/gen/literal/subgroupMatrixStore/0d6927.wgsl:41:8 error: HLSL backend does not support extension 'chromium_experimental_subgroup_matrix'
enable chromium_experimental_subgroup_matrix;
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


tint executable returned error: exit status 1
