/*二分查找的实现*/
/**
 * python实现
 * ---------------------------------------
 * class Solution(object):
 *     def search(self, nums, target):
 *         """
 *         :type nums: List[int]
 *         :type target: int
 *         :rtype: int
 *         """
 *         lo,he = 0,len(nums)-1
 *         while lo<=he:
 *             mid = (lo+he)/2
 *             if nums[mid]==target:
 *                 return mid
 *             elif nums[mid]<target:
 *                 lo = mid+1
 *             else:
 *                 he = mid-1
 *         return -1
 * 
 */
/**
 * 
 * rust 实现
 */
struct Solution;
impl Solution {
    pub fn search(nums: Vec<i32>, target: i32) -> i32 {
        let mut lo:i32 = 0;
        let mut he:i32 = (nums.len()-1) as i32;
        let mut mid;
        while lo<=he{
            mid=(lo+he)/2;
            let val = nums[mid as usize];
            println!("mid={:#?}",mid);
            if val==target{
                return mid;
            }
            else if val<target{
                lo = mid+1;
            }
            else{
                he = mid-1;
            }  
        }
        return -1;
    }
}
#[test]
fn test() {
    let nums=vec![5];
    let a=Solution::search(nums,-5);
    println!("res={}",a);
}
