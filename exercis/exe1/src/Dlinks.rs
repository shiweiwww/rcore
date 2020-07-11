/****Double Linked Lists****/
use std::rc::Rc;
use std::cell::RefCell;
use std::ptr::{NonNull, null};
use std::ops::{Deref, DerefMut};
#[allow(dead_code)]
#[warn(non_camel_case_types)]
/****
 * 链表实现，Option<Box<Links>>实现类似用C一样，可以直接使用None作为空指针
 * 
 */
#[derive(Debug)]
struct Links{
    val:i32,
    prev:Option<Box<Links>>
}
impl Links{
    fn new(elem:i32)->Self{
        Self{
            val:elem,
            prev:None
        }
    }
    fn append(self,elem:i32)->Self{
        let mut p=Links{val:elem,prev:Some(Box::new(self))};
        return p;
    }
}

/***
 *  静态双向链表实现，用vec实现一个静态双向链表
 *  但是drop功能和update功能实现起来麻烦，得更新所有的指针，不过存取比较快
 * 
 */
#[derive(Debug)]
struct listNode{
    val:i32,
    next:Option<usize>,
    prev:Option<usize>
}
impl listNode{
    fn new(elem:i32)->Self{
        Self {val:elem,next:None ,prev:None}
    }
}
impl Clone for listNode {
    fn clone(&self) -> Self {
        Self{
            val:self.val,
            next:self.next,
            prev:self.prev,
        }
    }
}
#[derive(Debug)]
#[allow(dead_code)]
struct Dlinks{
    vec:Vec<listNode>,
    first:Option<usize>,
    last:Option<usize>,
}

impl Dlinks{
    fn dlinks_create()->Self{
        Self{
            vec:Vec::<listNode>::new(),
            first:Some(0),
            last:Some(0)
        }
    }
    fn append(&mut self,elem:i32){
        let index=self.vec.len();
        let mut n=listNode::new(elem);
        if index!=0{
            n.next=None;
            n.prev=Some(index-1);
            let mut cur = self.vec[index-1].clone();
            cur.next=Some(index);
            self.vec[index-1]=cur;
        }
        self.last=Some(index);
        self.vec.push(n);
    }
    fn print_forward(&self)->Vec<i32>{
        let mut v=self.first;
        let mut vec=Vec::<i32>::new();
        loop {
            match v{
                Some(i)=>{
                    let item=&self.vec[i];
                    // println!("i={:?}",item.val);
                    vec.push(item.val);
                    v=item.next;
                }
                None=>break,
            }
        }
        vec
    }
    fn print_back(&self)->Vec<i32>{
        let mut v=self.last;
        let mut vec=Vec::<i32>::new();
        loop {
            match v{
                Some(i)=>{
                    let item=&self.vec[i];
                    vec.push(item.val);
                    v=item.prev;
                }
                None=>break,
            }
        }
        vec
    }
}

/***
 *  动态双向链表实现，用Option<Rc<RefCell<T>>>
 *  只用Option<Rc<T>>的只能实现单链表，Rc<T>中的知不允许改变
 *  用vec实现一个静态双向链表
 *  改进：由于Rc存在环，可以使用rc::Weak来解决
 */
#[derive(Debug)]
struct dlistNode{
    val:i32,
    next:Option<Rc<RefCell<dlistNode>>>,
    prev:Option<Rc<RefCell<dlistNode>>>
}
impl dlistNode{
    fn new()->Self{
        Self {val:-1,next:None ,prev:None}
    }
}
#[derive(Debug)]
struct dlinks{
    head:Option<Rc<RefCell<dlistNode>>>,
    tail:Option<Rc<RefCell<dlistNode>>>,

}
impl dlinks{
    fn create_root()->Self{
        let node = Rc::new(RefCell::new(dlistNode::new()));
        dlinks {
            head:Some(Rc::clone(&node)),
            tail:Some(Rc::clone(&node))
        }
    }
    fn append(&mut self,elem:i32){
        let mut node = Rc::new(RefCell::new(dlistNode{val:elem,next:None,prev:None}));
        match &self.tail{
            Some(v)=>{
                v.borrow_mut().next=Some(Rc::clone(&node));
                node.borrow_mut().prev=Some(Rc::clone(v));
            },
            None=>{
            },
        }
        self.tail=Some(Rc::clone(&node));
    }
    
    fn drop(&mut self,elem:i32)->i32{
        let mut v=self.head.clone();
        loop{
            match v{
                Some(n) =>{
                    if elem==n.borrow().val{
                        //  n.borrow_mut().prev.next=n.borrow().next.clone();
                        match &n.borrow().prev{
                            Some(p)=>p.borrow_mut().next=n.borrow().next.clone(),
                            None=>(),
                        }
                        //  n.borrow_mut().next.prev=n.borrow().prev.clone();
                        match &n.borrow().next{
                            Some(p)=>p.borrow_mut().prev=n.borrow().prev.clone(),
                            None=>(),
                        }
                        break elem;
                    }
                    v=n.borrow().next.clone();
                },
                None=>{break -1;},
            }
        }
    }
    fn print_forward(&self)->Vec<i32>{
        let mut v=self.head.clone();
        let mut vec=Vec::<i32>::new();
        loop{
            match v{
                Some(n)=>{
                    vec.push(n.borrow().val);
                    v=n.borrow().next.clone();
                },
                None=>break,
            }
        }
        vec
    }
    fn print_back(&self)->Vec<i32>{
        let mut v=self.tail.clone();
        let mut vec=Vec::<i32>::new();
        loop{
            match v{
                Some(n)=>{
                    vec.push(n.borrow().val);
                    v=n.borrow().prev.clone();
                },
                None=>break,
            }
        }
        vec
    }
}

#[test]
fn dlink_test() {
    println!("*********************************single links!*******************************");
    let mut dl = Links::new(-1);
    dl=dl.append(12);
    dl=dl.append(13);
    dl=dl.append(14);
    dl=dl.append(15);
    dl=dl.append(16);
    println!("dl={:#?}",dl);

    println!("*********************************static dLinks!*******************************");
    let mut dl = Dlinks::dlinks_create();
    dl.append(12);
    dl.append(13);
    dl.append(14);
    dl.append(15);
    dl.append(16);
    dl.append(17);
    dl.append(18);
    println!("dl={:#?}",dl);
    println!("************print forward!********");
    println!("print_forward={:#?}",dl.print_forward());
    println!("************print back!***********");
    println!("print_back={:#?}",dl.print_back());

    println!("********************************* dyn dLinks!*********************************************");
    let mut dl=dlinks::create_root();
    println!("******************************** testing append dyn dLinks!*******************************");
    dl.append(12);
    dl.append(13);
    dl.append(14);
    dl.append(15);
    dl.append(16);
    dl.append(17);
    dl.append(18);
    println!("********************************* printing forward dyn dLinks!****************************");
    let a=dl.print_forward();
    println!("print_forward={:#?}",a);
    println!("********************************* printing back dyn dLinks!*******************************");
    let a=dl.print_back();
    println!("print_back={:#?}",a);
    println!("********************************* test drop  dyn dLinks!**********************************");
    let b=dl.drop(13);
    let b=dl.drop(12);
    let b=dl.drop(16);
    let b=dl.drop(17);
    println!("drop elem={:#?}",b);   
    let a=dl.print_forward();
    println!("print_forward={:#?}",b);   
    let a=dl.print_forward();
    println!("print_forward={:#?}",a);
    let a=dl.print_back();
    println!("print_back={:#?}",a);

}