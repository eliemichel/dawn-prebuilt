SKIP: FAILED


enable chromium_experimental_subgroup_matrix;

var<workgroup> arg_0 : array<i32, 64>;

fn subgroupMatrixStore_494f4e() {
  var arg_1 = 1u;
  var arg_2 = subgroup_matrix_left<i32, 8, 8>();
  var arg_3 = true;
  var arg_4 = 1u;
  subgroupMatrixStore(&(arg_0), arg_1, arg_2, arg_3, arg_4);
}

@compute @workgroup_size(1)
fn compute_main() {
  subgroupMatrixStore_494f4e();
}

Failed to generate: <dawn>/test/tint/builtins/gen/var/subgroupMatrixStore/494f4e.wgsl:41:8 error: HLSL backend does not support extension 'chromium_experimental_subgroup_matrix'
enable chromium_experimental_subgroup_matrix;var<workgroup> arg_0: array<i32, 64>;
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


tint executable returned error: exit status 1
