SKIP: FAILED


enable chromium_experimental_subgroup_matrix;
enable f16;

var<workgroup> arg_0 : array<f16, 64>;

fn subgroupMatrixStore_127fb7() {
  var arg_1 = 1u;
  var arg_2 = subgroup_matrix_result<f16, 8, 8>();
  const arg_3 = true;
  var arg_4 = 1u;
  subgroupMatrixStore(&(arg_0), arg_1, arg_2, arg_3, arg_4);
}

@compute @workgroup_size(1)
fn compute_main() {
  subgroupMatrixStore_127fb7();
}

Failed to generate: <dawn>/test/tint/builtins/gen/var/subgroupMatrixStore/127fb7.wgsl:41:8 error: HLSL backend does not support extension 'chromium_experimental_subgroup_matrix'
enable chromium_experimental_subgroup_matrix;
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


tint executable returned error: exit status 1
