extern crate screenshot_rs;
extern crate tesseract;
extern crate tempfile;
extern crate cli_clipboard;

use screenshot_rs::screenshot_area;
use tempfile::NamedTempFile;
use std::fs;
use cli_clipboard::{ClipboardContext, ClipboardProvider};

fn main() {
    let temp_file = NamedTempFile::new().expect("Failed to create a temporary file");

    let temp_path = temp_file.path().with_extension("png");
    screenshot_area(temp_path.display().to_string(), true);

    let text = tesseract::ocr(temp_path.to_str().unwrap(),"eng")
        .expect("Failed to extract text from image");

    let mut ctx = ClipboardContext::new().unwrap();
    ctx.set_contents(text.to_owned()).unwrap();
    let _ = ctx.get_contents();

    fs::remove_file(temp_path).expect("Failed to delete the file");
}
