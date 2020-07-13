
#[derive(Debug)]
struct Person {
    name:String,
    age:i32,
    height:i32,
    weight:i32
}
/* 生命周期的原因无法返回应用类型*/
fn Person_create(name:&str,age:i32, height:i32, weight:i32)->Person
{
    let who=Person{
        name:name.to_string(),
        age:age,
        height:height,
        weight:weight
    };
    return who;
}
fn Person_destroy(who: Person){}
fn Person_print(who:&Person)
{
    println!("print...Name: {}", who.name);
    println!("\tAge: {}", who.age);
    println!("\tHeight: {}", who.height);
    println!("\tWeight: {}", who.weight);
}

#[test]
fn test() {

    let p=Person_create("sw",19,180,165);
    println!("******************Person create**************");
    println!("p={:#?}",p);
    // Person_destroy(p);
    // println!("******************Person destroy**************={:#?}",p);//error:已经销毁，不能使用
    println!("******************Person print**************");
    Person_print(&p);


}