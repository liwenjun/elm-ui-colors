use anyhow::Result;
use scraper::{ElementRef, Html, Selector};

const SELECTOR_ROOT: &str = r"#content-wrapper > div.grid.grid-cols-1.gap-8 > div > div";
const SELECTOR_TITLE: &str = r"div.w-16.shrink-0 > div > div";
const SELECTOR_COLORS: &str = r"div.px-0\.5.md\:flex.md\:justify-between.md\:space-x-2";
const SELECTOR_DEPTH: &str = r"div.w-6.font-medium.text-slate-900";
const SELECTOR_VALUE: &str = r"div.text-slate-500.font-mono.lowercase.dark\:text-slate-400";

#[derive(Debug)]
pub struct Color {
    pub title: String,
    pub values: Vec<DepthValue>,
}

#[derive(Debug)]
pub struct DepthValue {
    pub depth: String,
    pub value: String,
}

pub fn get_data(uri: &str) -> Result<Vec<Color>> {
    let html = get_html(uri)?;
    let nodes = get_nodes(&html);
    let mut ret = vec![];

    for node in nodes {
        let title = get_title(&node);
        let values = get_colors(node);

        ret.push(Color { title, values });
    }

    Ok(ret)
}

fn get_colors(node: ElementRef) -> Vec<DepthValue> {
    let nodes = get_color_nodes(node);
    let mut ret = vec![];

    for node in nodes {
        let depth = get_color_depth(&node);
        let value = get_color_vaule(&node);
        ret.push(DepthValue { depth, value });
    }

    ret
}

fn get_color_vaule(node: &ElementRef) -> String {
    let selector = Selector::parse(SELECTOR_VALUE).unwrap();
    node.select(&selector)
        .next()
        .unwrap()
        .text()
        .next()
        .unwrap_or_default()
        .to_owned()
}

fn get_color_depth(node: &ElementRef) -> String {
    let selector = Selector::parse(SELECTOR_DEPTH).unwrap();
    node.select(&selector)
        .next()
        .unwrap()
        .text()
        .next()
        .unwrap_or_default()
        .to_owned()
}

fn get_color_nodes(node: ElementRef) -> Vec<ElementRef<'_>> {
    let selector = Selector::parse(SELECTOR_COLORS).unwrap();
    node.select(&selector).into_iter().collect()
}

fn get_title(node: &ElementRef) -> String {
    let selector = Selector::parse(SELECTOR_TITLE).unwrap();
    node.select(&selector)
        .next()
        .unwrap()
        .text()
        .next()
        .unwrap_or_default()
        .to_owned()
}

fn get_html(uri: &str) -> Result<Html> {
    let response = minreq::get(uri).send()?;
    let hello = response.as_str()?;
    Ok(Html::parse_document(hello))
}

fn get_nodes(html: &Html) -> Vec<ElementRef<'_>> {
    let selector = Selector::parse(SELECTOR_ROOT).unwrap();
    //let node = html.select(&selector).next().unwrap();
    //let selector = Selector::parse("div > div.flex.flex-col.space-y-3").unwrap();
    html.select(&selector).into_iter().collect()
}
