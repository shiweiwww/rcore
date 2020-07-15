use super::*;
pub fn replace_column(data:String,column:&str,replacement:&str)->Result<String,Error>{

    let mut lines = data.lines();
    let headers = lines.next().unwrap();
    let columns:Vec<&str>=headers.split(",").collect();
    let columns_nums=columns.iter().position(|&e|e==column);
    let columns_nums = match columns_nums{
        Some(column)=>column,
        None=>Err("column name doesn't exists in input file")?
    };
    let mut result = String::with_capacity(data.capacity());
    result.push_str(&columns.join(","));
    result.push('\n');
    for line in lines{
        let mut rcd:Vec<&str>=line.split(",").collect();
        rcd[columns_nums]=replacement;
        result.push_str(&rcd.join(","));
        result.push('\n');

    }
    Ok(result)
}