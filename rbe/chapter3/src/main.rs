fn main() {
    // println!("Hello, world!");
    // test1();
    test2();
}
//struct
fn test1(){
    #[derive(Debug)]
    struct Persion<'a>{
        name:&'a str,
        age:i32
    }
    let  nm = "shiwei";
    let mut p = Persion{name:nm,age:20};
    println!("p = {:?}",p);
    p.name="bbb";
    println!("change name of p={:?}",p);

    #[derive(Debug)]
    struct Persion1<'a>{
        name:&'a mut str,
        age:i32,
    }
    let nm1 = String::from("test structs 2");
    let mut nm2 = String::from("test structs 2");
    let mut p_m = &mut nm2;//Error:nm1是不可变变量，不能可变借用
    let mut p1 = Persion1{name:p_m,age:23};
    println!("p1 = {:?}",p1);
    let mut temp = String::from("aaaa");
    p1.name=&mut temp;
    println!("p1 = {:?}",p1);
    println!("nm2 = {:?}",nm2);

    let p1 = Persion{name:"wqx",age:12};
    let p2 = Persion{name:"sw",..p1};
    println!("update p2 with p1 p2={:?}",p2);


    #[derive(Debug)]
    struct Pair(i32,f32);
    let pair = Pair(32,23.0);
    println!("pair={:?},pair.0 = {},pair.1 = {}",pair,pair.0,pair.1);

    #[derive(Debug)]
    struct Unit;
    let un = Unit;
    println!("unit struct Unit={:?}",un);


}
fn test2(){
    #[derive(Debug)]
    enum Book {
        FISRT,
        SECOND,
        third(i32)

    }
    println!("Book::FIRST = {:?},BOOK::SECOND={:?}",Book::FISRT,Book::SECOND);
    let third = Book::third(1);
    println!("Book::third = {:?}",third);

    fn switchto(cnd:Book)->Book
    {

        match cnd {
            Book::FISRT => {
                Book::FISRT
            },
            Book::SECOND => {
                Book::SECOND
            },
            Book::third(i) => {
                println!("i={}",i);
                Book::third(i)
            }
        }
    }


    let first = Book::FISRT;
    let scd = Book::SECOND;
    let third = Book::third(1);

    println!("{:?}",switchto(first));
    println!("{:?}",switchto(scd));
    println!("{:?}",switchto(third));


    let opt = Some(64);
    let opt:Option<i32> = Option::None;
    match opt {
        Option::Some(x) => {
            println!("x = {}",x);
        },
        Option::None => {
            println!("0");
        }
    }


    let x=13;
    if let 12=x{
        println!("x = {}",x);
    }

    #[derive(Debug)]
    enum Env {
        one=0,
        two=1,
        three
    }

    let one = Env::one;
    println!("one = {:?}",one as i32);

    const COUNT:i32=0;
    println!("COUNT = {}",COUNT);



 
}