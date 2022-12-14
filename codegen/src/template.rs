use regex::Regex;
use std::collections::HashMap;

pub struct Template {
    src: String,
    matches: Vec<(usize, usize)>,
}

impl Template {
    pub fn new(template: &str) -> Self {
        let regex = Regex::new(r"\{\{([^}]*)\}\}").unwrap();

        Template {
            src: template.to_owned(),
            matches: regex
                .find_iter(template)
                .map(|m| (m.start(), m.end()))
                .collect(),
        }
    }

    pub fn render(&self, vals: &HashMap<&str, String>) -> String {
        self.render_named(vals)
    }

    pub fn render_named(&self, vals: &HashMap<&str, String>) -> String {
        let mut parts: Vec<&str> = vec![];
        let template_str = &self.src;

        // get index of first arg match or return a copy of the template if no args matched
        let first = match self.matches.first() {
            Some((start, _)) => *start,
            _ => return template_str.clone(),
        };

        // copy from template start to first arg
        if first > 0 {
            parts.push(&template_str[0..first])
        }

        // keeps the index of the previous argument end
        let mut prev_end: Option<usize> = None;

        for (start, end) in self.matches.iter() {
            // copy from previous argument end till current argument start
            if let Some(last_end) = prev_end {
                parts.push(&template_str[last_end..*start])
            }

            // argument name with braces
            let arg = &template_str[*start..*end];
            // just the argument name
            let arg_name = &arg[2..arg.len() - 2];

            // if value passed for argument then append it, otherwise append original argument
            // name with braces
            match vals.get(arg_name) {
                Some(s) => parts.push(s),
                _ => parts.push(arg),
            }

            prev_end = Some(*end);
        }

        let template_len = template_str.len();
        // if last arg end index isn't the end of the string then copy
        // from last arg end till end of template string
        if let Some(last_pos) = prev_end {
            if last_pos < template_len {
                parts.push(&template_str[last_pos..template_len])
            }
        }

        parts.join("")
    }

    pub fn render_positional(&self, vals: &[&String]) -> String {
        let mut parts: Vec<&str> = vec![];
        let template_str = &self.src;

        // get index of first arg match or return a copy of the template if no args matched
        let first = match self.matches.first() {
            Some((start, _)) => *start,
            _ => return template_str.clone(),
        };

        // copy from template start to first arg
        if first > 0 {
            parts.push(&template_str[0..first])
        }

        // keeps the index of the previous argument end
        let mut prev_end: Option<usize> = None;

        for ((start, end), val) in self.matches.iter().zip(vals.iter()) {
            // copy from previous argument end till current argument start
            if let Some(last_end) = prev_end {
                parts.push(&template_str[last_end..*start])
            }

            parts.push(val);

            prev_end = Some(*end);
        }

        let template_len = template_str.len();
        // if last arg end index isn't the end of the string then copy
        // from last arg end till end of template string
        if let Some(last_pos) = prev_end {
            if last_pos < template_len {
                parts.push(&template_str[last_pos..template_len])
            }
        }

        parts.join("")
    }
}
