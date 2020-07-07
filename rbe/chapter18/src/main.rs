fn main() {
    println!("Hello, world!");
}
#[test]
fn test1() {


    let opt:Option<&str>=Some("13");
    println!("opt = {}",opt.unwrap());

    match opt{
        Some("13")=>println!("opt is match ={}",opt.unwrap()),
        _ => {}
    }

}