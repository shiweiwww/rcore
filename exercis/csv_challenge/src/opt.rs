use structopt_derive::*;
#[derive(StructOpt,Debug)]
#[structopt(name="csv_challenge",about="Usage")]
pub struct  Opt {
    #[structopt(help="Input file")]
    pub input :String,
    #[structopt(help="Column Name")]
    pub column_name:String,
    #[structopt(help="Replacement colomn name")]
    pub replacement:String,
    #[structopt(help="out file")]
    pub output:Option<String>,

}