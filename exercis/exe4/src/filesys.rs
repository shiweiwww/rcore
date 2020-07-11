#![allow(unused)]

use std::io::{self, Write};
#[derive(Debug)]
enum EyeColor {
    BLUE_EYES,
    GREEN_EYES,
    BROWN_EYES,
    BLACK_EYES,
    OTHER_EYES,
    Nil
}
const EYE_COLOR_NAMES:[&str;5]=[ "Blue", "Green", "Brown", "Black", "Other"];
#[derive(Debug)]
struct Person {
    age:i32,
    first_name:String,
    last_name:String,
    eyes:EyeColor,
    income:f64,
}

fn readline()->String{
    let mut buf=String::new();
    io::stdout().flush();
    io::stdin().read_line(& mut buf).ok().expect("Error!");
  
    buf.replace("\n", "").to_string()
    // buf
}
fn console(){
    let mut p=Person{age:0,first_name:"".to_string(),last_name:"".to_string(),eyes:EyeColor::Nil,income:0.0};
    
    print!("> What's your First Name? ");
    p.first_name = readline();
    print!("> What's your Last Name? ");
    p.last_name = readline();
    print!("> How old are you? ");
    p.age =readline().parse::<i32>().unwrap();
    print!("> What color are your eyes:\n");
    for i in  0..5 {
        println!("  {}) {}", i+1, EYE_COLOR_NAMES[i]);
    }
    print!("> ");
    let i=readline().parse::<usize>().unwrap();
    let eys= match i{
        0=>EyeColor::BLUE_EYES,
        1=>EyeColor::GREEN_EYES,
        2=>EyeColor::BROWN_EYES,
        3=>EyeColor::BLACK_EYES,
        4=>EyeColor::OTHER_EYES,
        _=>EyeColor::Nil,
    };
    p.eyes=eys;

    // println!("{:?}",EyeColor.0);
    print!("How much do you make an hour? ");
    p.income=readline().parse::<f64>().unwrap();
    println!("----- RESULTS -----");
    println!("result={:#?}",p);
}


#[test]
fn test() {
    console();
}
