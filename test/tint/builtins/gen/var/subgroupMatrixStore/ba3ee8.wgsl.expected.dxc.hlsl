SKIP: FAILED


enable chromium_experimental_subgroup_matrix;

struct SB_RW {
  arg_0 : array<u32, 64>,
}

@group(0) @binding(0) var<storage, read_write> sb_rw : SB_RW;

fn subgroupMatrixStore_ba3ee8() {
  var arg_1 = 1u;
  var arg_2 = subgroup_matrix_left<u32, 8, 8>();
  var arg_3 = true;
  var arg_4 = 1u;
  subgroupMatrixStore(&(sb_rw.arg_0), arg_1, arg_2, arg_3, arg_4);
}

@compute @workgroup_size(1)
fn compute_main() {
  subgroupMatrixStore_ba3ee8();
}

Failed to generate: <dawn>/test/tint/builtins/gen/var/subgroupMatrixStore/ba3ee8.wgsl:52:3 error: no matching call to 'subgroupMatrixStore(array<u32, 64>, u32, subgroup_matrix_left<u32, 8, 8>, bool, u32)'

4 candidate functions:
 • 'subgroupMatrixStore(ptr<workgroup' or 'storage, array<u32, AC>, write' or 'read_write>  ✗ , u32  ✓ , subgroup_matrix<K, u32, C, R>  ✓ , bool  ✓ , u32  ✓ )'
 • 'subgroupMatrixStore(ptr<workgroup' or 'storage, array<f16, AC>, write' or 'read_write>  ✗ , u32  ✓ , subgroup_matrix<K, f16, C, R>  ✗ , bool  ✓ , u32  ✓ )'
 • 'subgroupMatrixStore(ptr<workgroup' or 'storage, array<f32, AC>, write' or 'read_write>  ✗ , u32  ✓ , subgroup_matrix<K, f32, C, R>  ✗ , bool  ✓ , u32  ✓ )'
 • 'subgroupMatrixStore(ptr<workgroup' or 'storage, array<i32, AC>, write' or 'read_write>  ✗ , u32  ✓ , subgroup_matrix<K, i32, C, R>  ✗ , bool  ✓ , u32  ✓ )'

  subgroupMatrixStore(&sb_rw.arg_0, arg_1, arg_2, arg_3, arg_4);
  ^^^^^^^^^^^^^^^^^^^


tint executable returned error: exit status 1
