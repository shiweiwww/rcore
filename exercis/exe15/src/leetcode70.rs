/**leetcode.70. 爬楼梯  */
/**
 * 
python 实现
-----------------------
class Solution(object):
    def climbStairs(self, n):
        """
        :type n: int
        :rtype: int
        """
        a0,a1=0,0
        r=1
        for i in range(1,n+1):
            a0=a1
            a1=r
            r=a0+a1
        return r
 * 
 * 
 * 
 */

 /**
  * rust 实现
  */
struct Solution;
impl Solution {
    pub fn climb_stairs(n: i32) -> i32 {
        let mut a0=0;
        let mut a1=0;
        let mut r=1;
        for i in 1..n+1{
            a0=a1;
            a1=r;
            r=a0+a1;
        }
        return r;
    }
}

#[test]
fn test() {
}