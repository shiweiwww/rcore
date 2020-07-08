// macros2.rs
// Make me compile! Execute `rustlings hint macros2` for hints :)

#[macro_use]
pub mod macros1;

fn main() {
    my_macro!();
}


macro_rules! my_macro {
    () => {
        println!("Check out my macro!");
    };
}