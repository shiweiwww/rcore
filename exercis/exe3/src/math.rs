//A Simple Statistics Engine

trait op<'a,T>{
    fn new(arr:&'a [T])->Self;
    fn sum(&self)->T;
    fn min(&self)->T;
    fn max(&self)->T;
    fn count(&self)->i32;
    fn mean(&self)->T;
}
struct stats<'a,T>{
    samples:&'a [T]
}
impl<'a,T:std::fmt::Debug+std::fmt::Display+std::iter::Sum<&'a T>+PartialOrd + Copy+std::ops::Div<Output=T>+std::convert::From<i32>> op<'a,T> for stats<'a,T>{
    fn new(arr:&'a [T])->Self{
        Self{
            samples:arr
        }
    }
    fn sum(&self)->T{
        self.samples.iter().sum::<T>()
    }

    fn min(&self)->T{
        let mut largest = self.samples[0];
        for &item in self.samples {
            if item < largest {
                largest = item;
            }
        }
        largest
    }
    fn max(&self)->T{
        let mut largest = self.samples[0];
        for &item in self.samples {
            if item > largest {
                largest = item;
            }
        }
        largest
    }
    fn count(&self)->i32{
        let mut c=0;
        for i in self.samples{
            c+=1;
        }
        c
    }
    fn mean(&self)->T{
        let sum=self.sum();
        let n = self.count();
        let a:T=n.into();
        sum/a
    }
}

#[test]
fn test() {
    let arr:[f64;7]=[1.0,2.0,3.0,4.0,5.0,7.0,8.0];
    let st=stats::new(&arr);
    println!("sum={:#?},count={:#?},min={:#?},max={:#?},mean={:#?}",st.sum(),st.count(),st.min(),st.max(),st.mean());


    let arr:[i32;7]=[10,20,30,40,50,70,80];
    let st=stats::new(&arr);
    println!("sum={:#?},count={:#?},min={:#?},max={:#?},mean={:#?}",st.sum(),st.count(),st.min(),st.max(),st.mean());

}
