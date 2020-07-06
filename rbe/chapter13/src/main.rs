fn main() {
    println!("Hello, world!");

    test();

}
#[cfg(somecondition)]
fn test(){
    println!("somecondition");
}