fn main() {
    // println!("Hello, world!");
    // test1();
    // test2();
    // test3();
}
#[test]
fn test1(){

 #[derive(Debug)]
 struct Point{
     x:i32,
     y:f64,
 }

impl Point{
    fn new(x:i32,y:f64)->Self{
        Point{
            x:x,y:y
        }
    }
    /*self:Self,对象本身，let pp会使drop掉self本身从而实效 */
    fn ab(self){
        let pp=self;
    }
    /*self:&Self,是Self的引用，let pp=self不会出现问题 */
    fn ab2(&self){
        let pp=self;
    }
    fn ab3(&mut self){
        let pp=self;
        //p为可变借用，ab3借出变量了
        // println!("ab3 pp={:?}",self);
    }

}


 let ref p = Point{x:1,y:1.0};
 println!("p = {:?}",p);
 fn ab(p:&Point){
     let pp=p;
 }
 ab(p);
 println!("ab funtion = {:?}",p);

let mut p=Point::new(1,1.0);
println!("Point:new = {:?}",p);
// p.ab();//Error
// println!("Point:new = {:?}",p);//Error
p.ab2();
println!("Point:new = {:?}",p);
let pa = &mut p;

// p.ab3();


}
#[test]
fn test2(){

    let lambda = |x| x+1;
    let x=lambda(1);
    println!("x={}",x);

    let lambda = |x,y|{x+y};
    let xy=lambda(1,2);
    println!("xy = {}",xy);
    let lambda = |x,y,z|{x+y+z};
    let xyz = lambda(1,2,3);
    println!("xyz = {}",xyz);


}
#[test]
fn test3(){

    fn sums(n:i32)->i32{
        if n==0{
            return 0i32;
        }
        n+sums(n-1)
    }
    let a = sums(14);
    println!("a = {}",a);

}