/*冒泡排序和归并排序实现*/
fn bubble_sort(arr:&mut [i32]){
    let n=arr.len();
    for i in 0..n{
        for j in i+1..n{
            //swap(arr[i],arr[j])
            if arr[i]>arr[j]{
                let temp=arr[i];
                arr[i]=arr[j];
                arr[j]=temp;
            }
        }
    }
}
fn quick_sort(nums: &mut [i32], left: usize, right: usize) {
    if left >= right {
        return;
    }
    let mut l = left;
    let mut r = right;
    while l < r {
        while l < r && nums[r] >= nums[left] {
            r -= 1;
        }
        while l < r && nums[l] <= nums[left] {
            l += 1;;
        }
        nums.swap(l, r);
    }
    nums.swap(left, l);
    if l > 1 {
        quick_sort(nums, left, l - 1);
    }
    quick_sort(nums, r + 1, right);
}




#[test]
fn test() {
    let mut arr:[i32;10]=[1,3,5,4,-1,10,-20,13,-1,0];
    println!("arr={:#?}",arr);
    println!("******************bubble sort***********************");
    bubble_sort(&mut arr);
    println!("arr={:#?}",arr);
    println!("******************quick sort***********************");
    let mut arr:[i32;10]=[1,3,5,4,-1,10,-20,13,-1,0];
    let n=arr.len();
    quick_sort(&mut arr,0,9);
    println!("arr={:#?}",arr);


}
