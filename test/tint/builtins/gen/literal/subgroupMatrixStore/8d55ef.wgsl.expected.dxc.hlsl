SKIP: FAILED


enable chromium_experimental_subgroup_matrix;

var<workgroup> arg_0 : array<f32, 64>;

fn subgroupMatrixStore_8d55ef() {
  subgroupMatrixStore(&(arg_0), 1u, subgroup_matrix_result<f32, 8, 8>(), true, 1u);
}

@compute @workgroup_size(1)
fn compute_main() {
  subgroupMatrixStore_8d55ef();
}

Failed to generate: <dawn>/test/tint/builtins/gen/literal/subgroupMatrixStore/8d55ef.wgsl:41:8 error: HLSL backend does not support extension 'chromium_experimental_subgroup_matrix'
enable chromium_experimental_subgroup_matrix;var<workgroup> arg_0: array<f32, 64>;
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


tint executable returned error: exit status 1
