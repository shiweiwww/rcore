#[allow(dead_code)]
use std::collections::LinkedList;
use Val::*;
use std::cmp::PartialEq;

#[derive(Debug,PartialEq,Copy,Clone)]
enum Val{
    val(i32),
    Nil,
}
#[derive(Debug)]
struct bTree{
    val:Val,
    left:Option<Box<bTree>>,
    right:Option<Box<bTree>>,
}
impl bTree{
    fn new(item:Val)->Self{
        Self{
            val:item,
            left:None,
            right:None
        }
    }
    fn build_tree(&mut self,elets:&mut LinkedList<Val>)->Option<Box<Self>>{
        if elets.is_empty(){
            return None;
        }
        if let Some(value) = elets.pop_front() {
            if value==Nil{
                return None; 
            }
            let le = self.build_tree(elets);
            let ri = self.build_tree(elets);
            let root = Some(Box::new(bTree{val:value,left:le,right:ri}));
            return root;
        }
        return None;
    }

    fn print_preorder(&self,root:&Option<Box<Self>>){
        if let Some(n)=root {
            println!("v = {:?}",n.val);
            self.print_preorder(&n.left);
            self.print_preorder(&n.right);
        }
    }
}

#[test]
fn test() {
    let mut lists: LinkedList<Val> = LinkedList::new();
    lists.extend(&[val(1),val(2),Nil,val(3),Nil,Nil,val(4),Nil,val(7),Nil,Nil]);
    println!("************************build tree******************************");
    let mut tree=bTree::new(Nil);
    let root = tree.build_tree(&mut lists);
    println!("tree = {:#?}",root);
    println!("************************print preorder**************************");
    tree.print_preorder(&root);

}