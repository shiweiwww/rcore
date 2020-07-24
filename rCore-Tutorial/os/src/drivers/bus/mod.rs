//! 总线协议驱动
//!
//! 目前仅仅实现了 virtio MMIO 协议，另外还有类似 PCI 等协议
//! MMIO 指通过读写特定内存段来实现设备交互

pub mod virtio_mmio;
use super::super::block::virtio_blk;
use crate::memory::{
    frame::{FrameTracker, FRAME_ALLOCATOR},
    mapping::Mapping,
    PhysicalAddress, VirtualAddress, PAGE_SIZE,
};
use alloc::collections::btree_map::BTreeMap;
use device_tree::{util::SliceRead, Node};
use lazy_static::lazy_static;
use spin::RwLock;
use virtio_drivers::{DeviceType, VirtIOHeader};