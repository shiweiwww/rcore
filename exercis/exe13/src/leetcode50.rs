/**leetcode 求x^n次方 */
/**
 * 
 * python 实现
 * -------------------------------
 */
// class Solution(object):
//     def myPow(self, x, n):
//         """
//         :type x: float
//         :type n: int
//         :rtype: float
//         """
//         a=self.f(x,abs(n))
//         # return a
//         return 1/a if n<0 else a
//     def f(self,x,n):
//         if n<=1:
//             return x**n
//         if n%2==0:
//             rs = self.f(x,n/2)
//             return rs*rs
//         else:
//             rs = self.f(x,n/2+1)
//             return rs*rs/x

/**
 * rust 实现
 */
struct Solution;
impl Solution {
    pub fn my_pow(x: f64, n: i32) -> f64 {
        let mut a=Self::f(x,n.abs());
        if n<0{
            1f64/a
        }else{
            a
        }
    }
    pub fn f(x:f64,n:i32)->f64{
        if n<=1{
            match n{
                0=>return 1f64,
                1=>return x,
                _=>{},
            }
        }
        if n%2==0{
            let mut rs=Self::f(x,n/2);
            return rs*rs;
        }else{
            let mut rs=Self::f(x,n/2+1);
            return rs*rs/x
        }
    }

}