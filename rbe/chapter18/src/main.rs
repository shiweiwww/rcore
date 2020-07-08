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
#[test]
fn test2() {
    use std::fs::File;
    fn read_file(file_path:&str)->Result<std::fs::File,std::io::Error>{
        let f = File::open("hello.txt")?;
        Ok(f)
    }
    // let fa = match f {
    //     Ok(file) => Ok(file),
    //     Err(error) => {
    //         println!("Problem opening the file: {:?}", error);
    //         Err(error)
    //     },
    // };
    let fa = read_file("hello.txt");
    println!("fa = {:?}",fa);


}
#[test]
fn test3() {

    use std::error::Error;
    use std::fs::File;
    fn dyn_error()->Result<(),Box<dyn Error>>{
        let i="1".parse::<i32>()?;
        let f = File::open("hello.txt")?;    
        Ok(())
    }
    let a=dyn_error();
    println!("error = {:?}",a);
}


