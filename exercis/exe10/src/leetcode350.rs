/*leetcode350：求两个数组交集*/
/**
 * 
 * python实现
 * ---------------------------------------------
 * from collections import defaultdict
 * class Solution(object):
 *     def intersect(self, nums1, nums2):
 *         """
 *         :type nums1: List[int]
 *         :type nums2: List[int]
 *         :rtype: List[int]
 *         """
 *         mp=defaultdict(int)
 *         res = []
 *         for item in nums2:
 *             mp[item]+=1
 *         for item in nums1:
 *             if mp[item]>0:
 *                 res+=[item]
 *                 mp[item]-=1
 *        return res
 * 
 */

/**
 * 
 * rust实现
 * 
 */
use std::collections::HashMap;
struct Solution;
impl Solution {
    pub fn intersect(nums1: Vec<i32>, nums2: Vec<i32>) -> Vec<i32> {
        let mut map: HashMap<i32, i32> = HashMap::new();
        let mut res=Vec::<i32>::new();
        for &item in nums2.iter(){
            match map.get(&item){
                Some(&v)=>{
                    let i:i32=v;
                    map.insert(item,v+1);
                },
                None=>{
                    map.insert(item,1);
                }
            }
        }
        for &item in nums1.iter(){
            match map.get(&item){
                Some(&v)=>{
                    if v>0{
                        res.push(item);
                        map.insert(item,v-1);
                    }
                }
                None=>{},
            }
        }
        res
    }
}