use super::super::address::{PhysicalAddress,PhysicalPageNumber};
use super::super::alloc::{vec, vec::Vec};
use bit_field::BitArray;
/// 分配器：固定容量，每次分配 / 回收一个元素
pub trait Allocator {
    /// 给定容量，创建分配器
    // fn new(capacity: usize) -> Self;
    fn new(base:usize,start:PhysicalPageNumber,capacity: usize) -> Self;
    /// 分配一个元素，无法分配则返回 `None`
    fn alloc(&mut self) -> Option<usize>;
    /// 回收一个元素
    fn dealloc(&mut self, index: usize);
}
pub struct SegmentTreeAllocator {
    /// 树本身
    tree: Vec<u8>,
}
pub struct SgtreeAlloc{
    /// 树本身
    tree: Vec<u8>,
}
// impl Allocator for SgtreeAlloc{
//     fn new(capacity: usize) -> Self {
//         assert!(capacity >= 8);
//         // 完全二叉树的树叶数量
//         let leaf_count = capacity.next_power_of_two();
//         let mut tree = vec![0u8; 2 * leaf_count];
//         // 去除尾部超出范围的空间

//         for i in ((capacity + 7) / 8)..(leaf_count / 8) {
//             tree[leaf_count / 8 + i] = 255u8;
//         }
//         for i in capacity..(capacity + 8) {
//             tree.set_bit(leaf_count + i, true);
//         }
//         // 沿树枝向上计算
//         for i in (1..leaf_count).rev() {
//             let v = tree.get_bit(i * 2) && tree.get_bit(i * 2 + 1);
//             tree.set_bit(i, v);
//         }
//         Self { tree }
//     }

//     fn alloc(&mut self) -> Option<usize> {
//         if self.tree.get_bit(1) {
//             None
//         } else {
//             let mut node = 1;
//             // 递归查找直到找到一个值为 0 的树叶
//             while node < self.tree.len() / 2 {
//                 if !self.tree.get_bit(node * 2) {
//                     node *= 2;
//                 } else if !self.tree.get_bit(node * 2 + 1) {
//                     node = node * 2 + 1;
//                 } else {
//                     panic!("tree is full or damaged");
//                 }
//             }
//             // 检验
//             assert!(!self.tree.get_bit(node), "tree is damaged");
//             // 修改树
//             self.update_node(node, true);
//             Some(node - self.tree.len() / 2)
//         }
//     }

//     fn dealloc(&mut self, index: usize) {
//         let node = index + self.tree.len() / 2;
//         assert!(self.tree.get_bit(node));
//         self.update_node(node, false);
//     }
// }
// impl SgtreeAlloc {
//     /// 更新线段树中一个树叶，然后递归更新其祖先
//     fn update_node(&mut self, mut index: usize, value: bool) {
//         self.tree.set_bit(index, value);
//         while index > 1 {
//             index /= 2;
//             let v = self.tree.get_bit(index * 2) && self.tree.get_bit(index * 2 + 1);
//             self.tree.set_bit(index, v);
//         }
//     }
// }


pub struct StackedAllocator {
    // list: Vec<(usize, usize)>,
    base:usize,
    head:PhysicalPageNumber,//链表头指针
    capacity:usize
}

impl Allocator for StackedAllocator {
    fn new(base:usize,head:PhysicalPageNumber,capacity: usize) -> Self {
        Self {
            base:base,
            head: head,
            capacity:capacity
            // list: vec![(0, capacity)],
        }
    }
    
    fn alloc(&mut self) -> Option<usize> {
        let index:usize=self.head.into();
        let pa:usize = PhysicalAddress::from(self.head).into();
        let ptr = pa as *mut usize;
        let v= unsafe{*ptr};
        self.head = PhysicalPageNumber::from(self.base+v);
        // println!("next {},{}",v,self.head);
        // println!("xxx{}",index-self.base);
        if index-self.base>self.capacity{
            None
        }else{
            Some(index-self.base)  
        }
        // None
        // if let Some((start, end)) = self.list.pop() {
        //     if end - start > 1 {
        //         self.list.push((start + 1, end));
        //     }
        //     Some(start)
        // } else {
        //     None
        // }
        
    }
    fn dealloc(&mut self, index: usize) {
        // println!("dealloc...,index={}",index);

        let i:usize=self.head.into();
        let p=PhysicalPageNumber::from(self.base+index);
        let pa:usize = PhysicalAddress::from(p).into();
        let ptr = pa as *mut usize;
        unsafe {*ptr=i-self.base};
        self.head = p;
        // self.list.push((index, index + 1));
    }
}
