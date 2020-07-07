fn main() {
    println!("Hello, world!");
}
#[test]
fn test1() {
    fn destory(b:Box<i32>){
    }
    let b = Box::new(1234i32);
    println!("b={:?}",b);
    destory(b);
    // println!("after destory b={:?}",b);
}
#[test]
fn test2() {
    trait Animal{
        fn noise(&self)->String;
    }
    struct Pig{}
    struct Dog{}

    impl Animal for Pig{
        fn noise(&self)->String{
            String::from("ennenenen")
        }
    }
    impl Animal for Dog{
        fn noise(&self)->String{
            String::from("wawawawa")
        }
    }
    fn random_choid(i:f32)->Box<dyn Animal>{
        if i<0.5{
            Box::new(Pig{})
        }
        else{
            Box::new(Dog{})
        }
    }
    let p=random_choid(1.4);
    println!("p = {:?}",p.noise());
}
#[test]
fn test3() {

struct Point<'a>{
    name:&'a str
}

impl<'a> Drop for Point<'a>{
    fn drop(&mut self) {
        println!("> Dropping {}", self.name);
    }    
}
;
let _a = Point{name:"_a"};
{
    let _b = Point{name:"_b"};
    {
        let _c = Point{name:"_c"};
    }
}
drop(_a)
}
#[test]
fn test4() {

    trait person{
        fn pername(&self)->&str;
    }
    trait teacher{
        fn work(&self)->&str;
    }
    trait student:person+teacher{
        fn score(&self)->i32;
    }
    #[derive(Debug)]
    struct S<'a>{
        name:&'a str,
        score:i32,
        job:&'a str,
    }

    impl<'a> student for S<'a>{
        fn score(&self)->i32{
            self.score
        }
    }
    impl<'a> person for S<'a>{
        fn pername(&self)->&str{
            &self.name
        }
    }
    impl<'a> teacher for S<'a>{
        fn work(&self)->&str{
            &self.job
        }
    }

    fn static_dipatch<T>(t:&T)->&str where T:student{
        t.pername()
    }
    fn dyn_dipatch(ss:&dyn student)->&str{
        ss.pername()
    }


    let p=S{name:"sw",score:100,job:"work"};
    println!("p={:?}",p);
    println!("dyn name={},static name={}",dyn_dipatch(&p),static_dipatch(&p));
}