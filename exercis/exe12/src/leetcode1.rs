/**leetcode两数之和 */
/**
 * 
 * 
 * python 实现
 * -------------------------------------------
 * 
 */
// class Solution(object):
//     def twoSum(self, nums, target):
//         """
//         :type nums: List[int]
//         :type target: int
//         :rtype: List[int]
//         """
//         key_map={}
//         ln = len(nums)
//         for i in range(ln):
//             key=target-nums[i]
//             if key not in key_map:
//                 key_map[nums[i]] = i
//             else:
//                 return key_map[key],i
//         return None


/**
 * 
 * rust 实现
 */

use std::collections::HashMap;
struct Solution;
impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
        let mut key_map: HashMap<i32, i32> = HashMap::new();
        let mut res:Vec<i32>=Vec::new();
        let ln = nums.len();
        for i in 0..ln{
            let key = target-nums[i];
            match key_map.get(&key){
                Some(&v)=>{
                    res.push(v);
                    res.push(i as i32);
                    break;
                },
                None=>{
                    key_map.insert(nums[i],i as i32);
                },
            }
        }
        return res;
    }
}
#[test]
fn test() {
}