/*
 *  HasHMap来讲并不是一个复杂的结构，主要是key值的产生以及冲突的处理， 
 *  本着熟悉rust语法，本例子一切从简，做出如下约定
 *  key：产生0-10000的一个随机数表示
 *  冲突处理：对于冲突，最简单的就是冲突项放到一个Vec中就行 
 */

const SIZE:usize=6;	 
#[derive(Debug)]
struct HashMap<T>{
    links:[Option<Vec<T>>;SIZE]
}

impl<T: std::fmt::Debug> HashMap<T>{

    fn Hashmap_create()->HashMap<T>{
        Self{
            links:[None,None,None,None,None,None]
        }
    }
    fn Hashmap_destroy(self){}
    fn Hashmap_set(&mut self,key:usize,val:T)->usize{
        match &mut self.links[key]{
            Some(n)=>{
                n.push(val);
            },
            None=>{
                let mut vec= Vec::<T>::new();
                vec.push(val);
                self.links[key]=Some(vec);
            }
        }
        key

    }
    fn Hashmap_get(&self,key:usize)->&Option<Vec<T>>{
        &self.links[key]
    }
    fn Hashmap_delete(&mut self,key:usize){
        self.links[key]=None;
    }


}


#[test]
fn test() {

    let mut hash = HashMap::<String>::Hashmap_create();
    hash.Hashmap_set(0,"aaa".to_string());
    hash.Hashmap_set(0,"bb".to_string());
    hash.Hashmap_set(1,"bb".to_string());
    hash.Hashmap_set(3,"cc".to_string());

    println!("hash create={:#?}",hash);
    println!("hash get={:#?}",hash.Hashmap_get(0));
    hash.Hashmap_delete(0);
    println!("hash create={:#?}",hash);
    hash.Hashmap_destroy();

}