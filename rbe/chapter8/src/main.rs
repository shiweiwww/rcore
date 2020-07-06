fn main() {
    // println!("Hello, world!");

    // test1();
    // test2();
    // test3();
    // test4();
    test5();

}
fn test1(){

    let i=1;
    let j = if i<0 {
        2  
    } else
    {
        3
    };
    println!("i={},j={}",i,j);
}
fn test2(){

    let mut count = 0;
    let i = loop{
        count +=1;
        println!("count = {}",count);
        if count>=10{
            break count;
        }
    };
    println!("break count={}",count);
}
fn test3(){
    let mut i=0;
    while i<10{
        println!("i = {}",i);
        i+=1;
    }
    let mut opt = Some(0);
    while let Some(j)=opt {
        if j>9{
            opt=None;
        }else{
            println!("j={}",j);
            opt=Some(j+1);
        }
    }   
}
fn test4(){

    for i in 1..10{
        println!("i={}",i);
    }


    let vec = [1,2,3,4];
    for v in vec.iter()
    {
        println!("v={}",v);
    }


    fn aaa(arr:&mut [i32]){
        arr[0]=3;
        println!("arr={:?}",arr);
    }
    //ref == &
    let ref mut a=[1,2,3];
    aaa(a);
    println!("a={:?}",a);

    let ref x=4;
    match x {
        &val => {println!("val={}",val)},
        _ => {},
    }
    let  x=4;
    match x{
        val => {println!("val = {}",val)},
    }

    let ref x=4;
    match *x{
        val => {println!("val={}",val)},
    }

    // let mut a=String::from("aaac");
    // let p=&mut a;
    // p.push_str("ddd");
    // println!("p={},{}",*p,1);
    // println!("a={}",a);

}
fn test5(){


    fn age()->i32{
        22
    }
    match age(){
        0 => {println!("0")},
        n @ 1..=20 => {println!("n={}",n)},
        n => {println!("n={}",n)}
    }



}