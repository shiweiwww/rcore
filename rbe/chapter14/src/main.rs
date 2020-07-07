fn main() {
    println!("Hello, world!");
}
#[test]
fn test1() {
    use std::ops;
    #[derive(Debug)]
    struct Point<T>{
        x:T,
        y:T
    }
    impl<T:std::fmt::Debug+std::ops::Mul> Point<T>{
        fn new(x:T,y:T)->Self{
            Point{x:x,y:y}
        }
        fn area(&self)->&T{
            &self.x
        }
        fn println(&self){
            println!("self ={:?}",self);
        }
        //self参数的话要是内部改变对象指，后期函数内外调用self结构体对象会出错
        fn ab(self){
        }
        fn ab1(&self){
            let m = self;
        }
    }
    let p=Point::new(1.0,2.0);
    let area = p.area();
    p.println();
    /*p已经改变了 */
    // p.ab();
    // println!("p = {:?}",p);//error
    // p.println();//error
    // p.ab1();
    // println!("p = {:?}",p);
    // p.println();

}
#[test]
fn test2() {

    struct Empty;
    struct null;
    trait DoubleDrop<T>{
        fn drop(self,_:T);
    }
    impl<T,U> DoubleDrop<T> for U{
        fn drop(self,_:T){}
    }

    let empty = Empty;
    let Null = null;
    Null.drop(empty);
    // Null;
    // empty;
}
#[test]
fn test3() {

    trait Shape{
        fn area(&self)->f64;
        fn get_heigth(&self)->f64;
        fn get_volum(&self,w:f64)->f64;
        fn println(&self);
    }
    
    #[derive(Debug)]
    struct Rec{
        height:f64,
        width:f64
    }
    impl Shape for Rec{
        fn area(&self)->f64{
            self.height*self.width
        }
        fn get_heigth(&self)->f64{
            self.height
        }
        fn get_volum(&self,w:f64)->f64{
            self.area()*w
        }
        fn println(&self){
            println!("self = {:?}",self);
        }
    }   
    let r = Rec{height:1.2,width:2.3};
    let area = r.area();
    let he = r.get_heigth();
    let vol = r.get_volum(1.3);
    r.println();
}
#[test]
fn test4() {

    trait Shape<U>{
        fn area(&self)->U;
        fn println(&self);
    }
    #[derive(Debug)]
    struct Rec<T:std::ops::Add<Output = T>>{
        x:T,
        y:T
    }

    impl<T:std::fmt::Debug+std::ops::Add<Output = T>+std::marker::Copy> Shape<T> for Rec<T>{

        fn area(&self)->T
        {
            self.x+self.y
        }
        fn println(&self){
            println!("self = {:?}",self);
        }
    }

    let r = Rec{x:1.4f32,y:4.5f32};
    let a = r.area();
    r.println();
}
#[test]
fn test5() {
    struct A;
    struct B;
    trait red {}
    trait blue {}

    impl red for A {}
    impl blue for B {}

    fn afun<T:red>(_:&T)->&'static str { "A" }
    fn bfun<T:blue>(_:&T)->&'static str { "B" }

    let ap=A;
    println!("A ={:?}",afun(&ap));
    let bp=B;
    println!("B ={:?}",bfun(&bp));
    // println!("B ={:?}",bfun(&ap));

}