struct S {
    a : array<i32>,
};

@group(0) @binding(0) var<storage, read> G : S;

@stage(compute) @workgroup_size(1)
fn main() {
    let p = &G.a;
    let p2 = p;
    let l1 : u32 = arrayLength(p2);
}
