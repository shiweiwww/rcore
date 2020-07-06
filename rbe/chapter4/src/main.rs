fn main() {

    let x;
    {
        let i=1;
        x=i*2;
    }
    println!("x={}",x);

    let mut x=10;
    println!("mut x={}",x);
    x=20;
    println!("after mut x={}",x);

}
