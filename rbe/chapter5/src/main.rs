fn main() {

    println!("1000 as i32 {}",1000 as i32);
    println!("1000 as u32 {}",1000 as u32);
    println!("1000 mod 256 {}",1000 % 256);


    let elem = 4u8;
    let mut vec = Vec::new();
    vec.push(elem);
    println!("vec = {:?}",vec);

}
