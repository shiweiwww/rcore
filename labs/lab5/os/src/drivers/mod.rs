pub mod bus;
pub use bus::virtio_mmio::virtio_probe;
use core::slice;
use crate::memory::address::{PhysicalAddress, VirtualAddress};

pub mod block;
pub mod drivers;
pub use drivers::*;
use device_tree::{DeviceTree, Node};
use spin::RwLock;
use crate::memory::alloc::{
    vec, 
    vec::Vec,
    collections::vec_deque::VecDeque,
    collections::LinkedList,
    sync::Arc
};
pub mod devicetree;

/// 从设备树的物理地址来获取全部设备信息并初始化
pub fn init(dtb_pa: PhysicalAddress) {
    let dtb_va = VirtualAddress::from(dtb_pa);
    devicetree::init(dtb_va);
    println!("mod driver initialized")
}


