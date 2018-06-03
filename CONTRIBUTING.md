---
title: CONTRIBUTING
permalink: /CONTRIBUTING
---

# Contributing to the FAQ

Thanks for considering contributing to the TeX FAQ: feedback, fixes and ideas are
all useful.

## ChangeLog, commit messages and authors

Please note any significant change to the content of questions in
[`CHANGELOG.md`](CHANGELOG.md), including which question is changed in the
format `Q-<name>`.

Commit messages where the content of a single question is changed should start
with `Q-<name>`. Changes to the _content_ of questions should always be made in
separate commits: formatting, typos or other 'non-significant' changes can be
made for multiple questions in one go. When you change the content of an
answer, please update the date line at the bottom of the page.

If you are making a significant change to the content, please make sure you
add yourself to the [contributors list](AUTHORS.md).

## Categories and tags

Every question in the FAQ should belong to exactly one category: this is
specified in the YAML header of the source, for example
```yaml
---
title: What's wrong with `\bf`, `\it`, etc.?
category: usage
permalink: /FAQ-2letterfontcmd
date: 2014-06-10
---
```
The aim of the categories is to be relative broad-brush such that the total
number remains manageable. The current set of categories is used to
auto-generate the [main index](/): this should be consulted when creating new
questions (or proposing revision of the categories).

Questions _may_ also have one or more tags, again specified in the YAML,
for example:
```yaml
---
title: Master and slave counters
category: programming
tags:
  - latex
  - macros
permalink: /FAQ-addtoreset
date: 2014-06-10
---
```
At present, the total number of tags is small, and not all questions are
tagged. Unlike categories, questions may have no tags or multiple tags, and
the set of tags is expected to grow over time. The current set of tags are
listed in the [questions-by-tag page](/tags).

## Formatting

The online TeX FAQ is written in [GitHub-flavoured
Markdown](https://guides.github.com/features/mastering-markdown/), and uses the
[GitHub Pages](https://pages.github.com/) system to convert this to web pages.
In general, Markdown is easy to use, and offers enough formatting power to make
the FAQ useful. There are a few things to watch out for

- The Jekyll 'back-end' used by GitHub Pages is somewhat picky about unbalanced
  braces (`{` and `}`), even in code blocks. That's because it is looking for
  some instructions of its own there. To turn this off, surround the relevant
  parts of your source with


 
  <code>&lt;!-- &#x7b;&#x25; raw &#x25;&#x7d; --&gt;</code>

  and

  <code>&lt;!-- &#x7b;&#x25; endraw &#x25;&#x7d; --&gt;</code>


  (Typically these will go just before and after the <code>```</code> lines.)

- Only use block quotes for real quotations: use code markup for terminal
  output and similar

- We use the following HTML entities for special characters:
  - `&hellip;` Ellipsis
  - `&mdash;` Em-dash
  - `&ndash;` En-dash
  - `&nbsp;` Non-breaking space

- quotes you can use ASCII double and single quotes, which will be changed
  to typographical quotes: `"abc" 'abc' abc's` produces “abc” ‘abc’ abc’s.
  
- Please wrap source lines to keep them below 80 characters long

## New questions

- File names should be of the form `FAQ-<name>.md`, where the `<name>` is made
  up of characters ASCII letters, numbers and "-" only.
- If the `<name>` part is not all lower case, add a `redirect_from:`
  entry in the fronmatter of the page redirecting from the lowercase.
