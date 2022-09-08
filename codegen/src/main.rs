use anyhow::Result;
use std::fs::File;
use std::io::prelude::*;

mod output;
mod parser;
mod template;

fn main() -> Result<()> {
    let uri = "https://tailwindcss.com/docs/customizing-colors";
    let filename = "../src/Element/Colors.elm";

    let data = parser::get_data(uri)?;
    let text = output::render(&data);
    let mut file = File::create(filename)?;
    file.write_all(text.as_bytes())?;
    Ok(())
}
