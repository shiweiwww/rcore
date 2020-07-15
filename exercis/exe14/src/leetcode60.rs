/**leetcode.62 不同路径 */
/**
 * 
 * python 实现
 * ---------------------------------
// class Solution:
//     def uniquePaths(self, m,n):
//         pre = [1] * n
//         cur = [1] * n
//         for i in range(1, m):
//             for j in range(1, n):
//                 cur[j] = pre[j] + cur[j-1]
//             pre = cur[:]
//         return pre[-1]
 * 
 */

/**
 * 
 *  rust 实现
 */
struct Solution;
impl Solution {
    pub fn unique_paths(m: i32, n: i32) -> i32 {
        let mut pre=vec![1;n as usize];
        let mut cur=vec![1;n as usize];
        for i in 1..m as usize{
            for j in 1..n as usize{
                cur[j]=pre[j]+cur[j-1];
            }
            pre=cur.clone();
        }
        return pre[n as usize -1];
        
    }
}






#[test]
fn test() {
}