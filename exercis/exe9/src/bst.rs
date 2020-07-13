/*二叉搜索树的实现*/
use std::rc::Rc;
use std::cell::RefCell;
use std::collections::LinkedList;

#[derive(Debug)]
struct  BSTreeNode {
    key:i32,
    data:String,
    left:Option<Box<BSTreeNode>>,
    right:Option<Box<BSTreeNode>>,
}
impl BSTreeNode{
    fn BSTreeNode_create(key:i32, data:&str)->Option<Box<BSTreeNode>>
    {
        Some(Box::new(Self{
            key:key,
            data:data.to_string(),
            left:None,
            right:None,
        }))
    }
}
#[derive(Debug)]
struct BSTree{
    root:Option<Box<BSTreeNode>>
}
impl BSTree{
    fn cteate_bst()->Self{
        Self{
            root:None
        }
    }

   fn BSTree_setnode(&mut self,key:i32, data:&str)
    {
        let mut queue:LinkedList<&mut Option<Box<BSTreeNode>>> = LinkedList::new();
        queue.push_back(&mut self.root);
        while !queue.is_empty(){
            if let Some(n1)=queue.pop_front(){
                if let Some(n2)=n1{
                    let cmp=key-n2.key;
                    if cmp<=0{
                        match &n2.left{
                            Some(node)=>{
                                queue.push_back(&mut n2.left);
                            },
                            None=>{
                                n2.left=BSTreeNode::BSTreeNode_create(key,data);
                            },
                        }                        
                    }else{
                        match &n2.right{
                            Some(node)=>{
                                queue.push_back(&mut n2.right);
                            },
                            None=>{
                                n2.right=BSTreeNode::BSTreeNode_create(key,data);
                            },
                        }
                    }
                }
            }
        }
    }
    fn BSTree_set(&mut self,key:i32,data:&str)
    {
        match &mut self.root{
            Some(n)=>{
                self.BSTree_setnode(key,data);
            },
            None=>{
                self.root=BSTreeNode::BSTreeNode_create(key,data);
            }
        }
    }

    fn get_node(&self,key:i32)->Option<String>{

        let mut queue:LinkedList<& Option<Box<BSTreeNode>>> = LinkedList::new();
        queue.push_back(&self.root);
        while !queue.is_empty(){
            if let Some(n1)=queue.pop_front(){
                if let Some(n2)=n1{
                    let cmp=key-n2.key;
                    if cmp<0{
                        match &n2.left{
                            Some(node)=>{
                                queue.push_back(&n2.left);
                            },
                            None=>{},
                        }                        
                    }else if cmp>0{
                        match &n2.right{
                            Some(node)=>{
                                queue.push_back(&n2.right);
                            },
                            None=>{},
                        }
                    }else{
                        // println!("find.....{:#?}",n2);
                        return Some(n2.data.clone());
                    }
                }
            }
        }
        return None
    }




}

#[test]
fn test() {
    let mut bst=BSTree::cteate_bst();
    println!("*******************cteate_bst***************************");
    bst.BSTree_set(5,"cc");
    bst.BSTree_set(-1,"dd");
    bst.BSTree_set(2,"ee");
    bst.BSTree_set(6,"ee");
    bst.BSTree_set(7,"ee");
    println!("bst={:#?}",bst);
    println!("*******************get node***************************");
    println!("node={:#?}",bst.get_node(6));

}