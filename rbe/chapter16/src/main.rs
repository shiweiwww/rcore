fn main() {
    println!("Hello, world!");
}
#[test]
fn test1() {

    macro_rules! hello {
        () => {
            println!("hello!");
        };
    }
    hello!();

}
#[test]
fn test2() {
    macro_rules! create_fun {
        ($func_name:ident) => {
            fn $func_name(){
                println!("you called func is {}",stringify!($func_name));
            }
        };
    }

    create_fun!(foo);
    foo();
}
#[test]
fn test3() {
    macro_rules! play {
        ($l:expr,$i:expr) => {
            println!("argv = {:?},{}",$l,$i);
        };
    }
    play!(1,2);
}
#[test]
fn test4() {

panic!("aaaaaaa");

}
#[test]
fn test5() {

    let patten="abc";
    let ref vec=["abc","def","cdf"];
    for item in vec{
        if *item==patten{
            println!("item={}",item);
        }
    }




}