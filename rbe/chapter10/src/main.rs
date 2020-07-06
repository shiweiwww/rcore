
mod my_mod{
    fn afun(){
        println!("the afun");
    }
    pub fn bfun(){
        println!("bfun");
    }
}

fn main() {
    println!("Hello, world!");
    my_mod::bfun();
    use my_mod::bfun as f;
    f();
}

