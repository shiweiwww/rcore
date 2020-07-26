### lab5实验报告
 ##### 一. 实验目的和内容
  - ###### 设备树
  - ###### 驱动和块设备驱动
 
 ##### 二. 操作方法和实验步骤
  - ###### 设备树的解析以及驱动的加载
 ##### 三. 实验结果和分析
  - ###### 代码流程分析 
      * ###### driver::init解析设备树，并查找满足compatible="virtio,mmio"条件的节点,解析该节点的reg信息判断设备类型，要是设备类型为Block，定义块设备驱动VirtIOBlkDriver，通过virtio_blk加载设备驱动，并记录在DRIVERS中；同时定义BlockDevice(pub Arc\<dyn Driver\>),使得文件系统可以通过调用块设备的该接口来读写。具体来说，遍历DRIVERS找到Block设备的驱动bdriver，通过BlockDevice引用该driver,返回INode节点来读取块内容
    ```rust
        lazy_static! {
            pub static ref ROOT_INODE: Arc<dyn INode> = {
                for driver in DRIVERS.read().iter() {
                    if driver.device_type() == DeviceType::Block {
                        let device = BlockDevice(driver.clone());
                        let device_with_cache = Arc::new(BlockCache::new(device, BLOCK_CACHE_CAPACITY));
                        return SimpleFileSystem::open(device_with_cache)
                            .expect("failed to open SFS")
                            .root_inode();
                    }
                }
                panic!("failed to load fs")
            };
        }
        pub fn init() {
            ROOT_INODE.ls();
            println!("mod fs initialized");
        }
    ```    
 ##### 四. 问题建议以及改进的地方
  - ###### 清楚的理解了设备驱动以及设备的工作原理，对如何书写设备驱动还是不是很清楚，后面抽时间补补相关知识
  - ###### 实验题目前先不做，先刷一遍整体对代码有理解在刷吧

