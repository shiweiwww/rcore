// Stacks and Queues
trait op<T>{
    fn stack_create()->Self;
    fn stack_destroy(&mut self);
    fn push(&mut self,elem:T);
    fn pop(&mut self)->T;
}
#[derive(Debug)]
struct Stack<T> {
    vec:Vec<T>
}

impl<T:std::fmt::Debug> op<T> for Stack<T>{
    fn stack_create()->Self{
        let vec:Vec<T>=Vec::new();
        Self{
            vec:vec,
        }
    }
    fn stack_destroy(&mut self){
        self.vec.clear();
    }
    fn push(&mut self,elem:T){
        self.vec.push(elem)

    }
    fn pop(&mut self)->T{
       self.vec.pop().unwrap()
    }

}

#[test]
fn test() {

    let mut stack:Stack<String>=Stack::stack_create();
    stack.push("aaa".to_string());
    stack.push("aaa".to_string());
    stack.push("aaa".to_string());
    println!("stack={:?}",stack);
    println!("stack={:?}",stack.pop());

    let mut stack:Stack<i32>=Stack::stack_create();
    stack.push(1);
    stack.push(2);
    stack.push(3);
    println!("stack={:?}",stack);
    stack.stack_destroy();
    println!("stack={:?}",stack);



}