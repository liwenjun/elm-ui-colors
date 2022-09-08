use crate::parser::Color;
use crate::template::Template;
use std::collections::HashMap;

#[derive(Debug)]
struct FuncWithTitle {
    title: String,
    funcs: Vec<Func>,
}

#[derive(Debug)]
struct Func {
    name: String,
    value: String,
}

pub fn render(colors: &[Color]) -> String {
    let text = "{{module}}\n{{module_doc}}\n{{import}}\n{{funcs}}";

    let template = Template::new(text);
    let mut args = HashMap::new();

    let funcs = get_all_func(colors);
    args.insert("module", render_module(&funcs));
    args.insert("module_doc", render_module_doc(&funcs));
    args.insert("import", render_import());
    args.insert("funcs", render_funcs(&funcs));
    template.render(&args)
}

fn render_module(funcs: &[FuncWithTitle]) -> String {
    let template = Template::new("module Element.Colors exposing ({{}})\n\n");
    let arg = get_all_color_name(funcs);
    let args = vec![&arg];
    template.render_positional(&args)
}

fn render_module_doc(funcs: &[FuncWithTitle]) -> String {
    let text = "{-|\n\n# 颜色 Colors\n\n将Tailwind的默认调色板转换为Elm-UI所用。\n\n{{}}\n\n-}";
    let template = Template::new(text);

    let arg = funcs
        .iter()
        .map(|p| render_module_doc_func(&p))
        .collect::<Vec<_>>()
        .join("\n");
    let args = vec![&arg];
    template.render_positional(&args)
}

fn render_import() -> String {
    "\nimport Element exposing (Color)\nimport Element.HexColor exposing (rgbCSSHex)\n".to_string()
}

fn render_funcs(funcs: &[FuncWithTitle]) -> String {
    let text = "{{}}";
    let template = Template::new(text);

    let arg = funcs
        .iter()
        .map(|p| render_func(&p))
        .collect::<Vec<_>>()
        .join("\n");

    let args = vec![&arg];
    template.render_positional(&args)
}

fn render_func(func: &FuncWithTitle) -> String {
    func.funcs
        .iter()
        .map(|p| render_func_one(&p))
        .collect::<Vec<_>>()
        .join("\n")
}

fn render_func_one(func: &Func) -> String {
    let text = "\n{-| -}\n{{}} : Color\n{{}} = \"{{}}\" |> rgbCSSHex\n";
    let template = Template::new(text);
    let args = vec![&func.name, &func.name, &func.value];
    template.render_positional(&args)
}

fn render_module_doc_func(func: &FuncWithTitle) -> String {
    let text = "\n## {{}}\n\n@docs {{}}\n";
    let template = Template::new(text);
    let fns = get_color_name(func);
    let args = vec![&func.title, &fns];
    template.render_positional(&args)
}

fn get_color_name(func: &FuncWithTitle) -> String {
    func.funcs
        .iter()
        .map(|p| p.name.clone())
        .collect::<Vec<_>>()
        .join(",")
}

fn get_all_color_name(funcs: &[FuncWithTitle]) -> String {
    funcs
        .iter()
        .map(|p| get_color_name(&p))
        .collect::<Vec<_>>()
        .join("\n  , ")
}

fn get_all_func(colors: &[Color]) -> Vec<FuncWithTitle> {
    let mut ret = vec![];
    for c in colors {
        ret.push(get_func(c));
    }
    ret
}

fn get_func(color: &Color) -> FuncWithTitle {
    let mut funcs = vec![];
    for v in &color.values {
        funcs.push(Func {
            name: format!("{}_{}", color.title.to_lowercase(), v.depth),
            value: format!("{}", v.value.to_lowercase()),
        });
    }
    FuncWithTitle {
        title: color.title.clone(),
        funcs,
    }
}
