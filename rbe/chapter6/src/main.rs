fn main() {
    // println!("Hello, world!");
    test1();
}

fn test1(){
    #[derive(Debug)]
    struct Point{
        x:i32,
        y:i32

    }
    impl From <i32> for Point{
        fn from(item:i32)->Self{
            Point{x:item,y:item}
        }
    }

    let p = Point::from(3);
    println!("p={:?}",p);
    let into:Point =p.into();
    println!("into={:?}",into);

    let parsed: i32 = "5".parse().unwrap();
    let turbo_parsed = "10".parse::<i32>().unwrap();

    let sum = parsed + turbo_parsed;
    println!("Sum: {:?}", sum);
}