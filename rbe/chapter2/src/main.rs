fn main() {
    // test1();
    test2();
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


}