fn main() {
    // test1();
    // test2();
    test3();
}

fn test1(){

    // Integer addition
    println!("1 + 2 = {}", 1u32 + 2);

    // Integer subtraction
    println!("1 - 2 = {}", 1i32 - 2);
    // TODO ^ Try changing `1i32` to `1u32` to see why the type is important

    // Short-circuiting boolean logic
    println!("true AND false is {}", true && false);
    println!("true OR false is {}", true || false);
    println!("NOT true is {}", !true);

    // Bitwise operations
    println!("0011 AND 0101 is {:04b}", 0b0011u32 & 0b0101);
    println!("0011 OR 0101 is {:04b}", 0b0011u32 | 0b0101);
    println!("0011 XOR 0101 is {:04b}", 0b0011u32 ^ 0b0101);
    println!("1 << 5 is {}", 1u32 << 5);
    println!("0x80 >> 2 is 0x{:x}", 0x80u32 >> 2);

    // Use underscores to improve readability!
    println!("One million is written as {}", 1_000_000u32);

}
fn test2(){
    #[derive(Debug)]
    struct matrix(i32,f32,String);
    #[derive(Debug)]
    struct matrix1<'a>(i32,&'a String);

    let m = matrix(1,1.2,"hello,rust".to_string());
    println!("m = {:?}",m);
    
    let s = String::from("hello,world");
    let m1 = matrix1(2,&s);
    println!("m1 = {:?}",m1);

    let a = (1,2,3,"aaa");
    println!("a.0={},a.1={},a.2={}",a.0,a.1,a.2);

}
fn test3(){

    use std::mem;
    let xs:[i32;5]=[0,1,2,3,4];
    println!("xs ={:?}",xs);
    println!("xs[0]={},xs[4]={}",xs[0],xs[1]);

    println!("xs[1..4]={:?}",&xs[1 .. 3]);
    println!("sizeof xs[0..5]= {} ",mem::size_of_val(&xs));
    println!("sizeof xs[1..3]= {} ",mem::size_of_val(&xs[1..3]));
    let xs: [i32;10] = [0;10];
    println!("reapte val of xs={:?}",xs);


    fn string_anly(ss:[String;3]){
        let a=ss;
        // println!("string_anly ss={:?}",ss);已经move了权限，访问ss报错
        println!("string_anly ss={:?}",a);
    }
    fn inter_anly(ss:[i32;3]){
        let a=ss;
        println!("inter_anly ss={:?}",ss);//不会报错，应为复制的ss
    }

    //对于泛型来说，let a=ss这样的操作会导致参数ss所有权的move，原因应是泛型具有
    fn all_anly<T:std::fmt::Debug>(ss:[T;3]){
        let a=ss;
        println!("all_anly ss={:?}",a);

    }

    let xs:[String;3]=[String::from("hello"),String::from("world"),String::from("bbb")];
    let ys:[i32;3]=[1,2,3];
    println!("xs = {:?},ys={:?}",xs,ys);
    
    /**
     *情况1:
     * string_anly导致的xs所有权转移，所以string_anly会导致xs成为野指针，
     * 
     *
     * */
    // string_anly(xs);
    // println!("after string_anly ={:?}",xs);
    /*
     *情况2：
     *inter_anly传递的是i32的数组，是可以copy到栈上的，所以ss所有权不会转移 
     */
    // inter_anly(ys);
    // println!("after inter_anly ={:?}",ys);

    all_anly(xs);
    // println!("after string_anly ={:?}",xs);
    all_anly(ys);
    println!("after inter_anly ={:?}",ys);








}