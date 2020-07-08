fn main() {
    println!("Hello, world!");
}
#[test]
fn test1() {
    #[derive(Debug)]
    struct point{
        x:i32,
        y:i32
    }
    let p = point{x:2,y:4};
    println!("p={:?}",p);
    let b = Box::new(p);
    println!("b.x={}",(*b).x);

}
#[test]
fn test2() {
    use std::collections::{HashMap,HashSet};

    let mut d = HashMap::new();
    d.insert("k1",101);
    d.insert("k2",102);
    d.insert("k3",103);
    println!("d={:?}",d);

    let mut set = HashSet::new();
    set.insert(4);
    set.insert(5);
    set.insert(6);
    println!("set = {:?}",set);


    let mut set1 = HashSet::new();
    set1.insert(3);
    set1.insert(2);
    set1.insert(1);
    println!("set1 = {:?}",set1);
    let mut m = set.union(&set1).collect::<Vec<&i32>>();
    println!("m = {:?}",m[0]);

}
#[test]
fn test3() {


    use std::rc::Rc;
    let rc_a = Rc::new("a share string");
    println!("rc_a share count = {}",Rc::strong_count(&rc_a));
    {

        let rc_b = Rc::clone(&rc_a);
        println!("rc_b share count = {}",Rc::strong_count(&rc_b));
        println!("rc_a share count = {}",Rc::strong_count(&rc_a));

    }
    println!("rc_a share count = {}",Rc::strong_count(&rc_a));
}


#[test]
fn test4() {
    
    fn factorial1(num: u64) -> u64{
        let mut sum=num;
        for i in 1..num{
            sum *=i;
        }
        sum
    }
    let result = (1..0).fold(0, |acc, x| acc*x);
    println!("{}",result);
}