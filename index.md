---
title: The TeX Frequently Asked Question List
permalink: /
redirect_from: /faq/
---

{%- comment -%}
Based on https://github.com/codinfox/codinfox-lanyon/blob/master/blog/category.html
{%- endcomment -%}

{%- assign rawcats = ""- %}
{%- for page in site.pages -%}
{%- assign tcats = page.category | join:'|' | append:'|' -%}
{%- assign rawcats = rawcats | append:tcats -%}
{%- endfor -%}

{%- assign rawcats = rawcats | split:'|' | sort -%}

{%- assign cats = "" -%}

{%- for cat in rawcats -%}
{%- if cat != "" -%}

{%- if cats == "" -%}
{%- assign cats = cat | split:'|' -%}
{%- endif -%}

{%- unless cats contains cat -%}
{%- assign cats = cats | join:'|' | append:'|' | append:cat | split:'|' -%}
{%- endunless -%}
{%- endif- %}
{%- endfor -%}

{%- assign rawtags = "" -%}
{%- for page in site.pages -%}
{%- assign ttags = page.tags | join:'|' | append:'|' -%}
{%- assign rawtags = rawtags | append:ttags -%}
{%- endfor -%}

{%- assign rawtags = rawtags | split:'|' | sort -%}

{%- assign tags = "" -%}

{%- for tag in rawtags -%}
{%- if tag != "" -%}

{%- if tags == "" -%}
{%- assign tags = tag | split:'|' -%}
{%- endif -%}

{%- unless tags contains tag -%}
{%- assign tags = tags | join:'|' | append:'|' | append:tag | split:'|' -%}
{%- endunless -%}
{%- endif -%}
{%- endfor -%}

<h2 id="question-categories">Question Categories</h2>
<ul class="categories">
{%- for ct in cats %}
  <li><a href="#{{ ct }}"> {{ ct | capitalize }} </a></li>
{%- endfor %}
</ul>

<h2 id="question-categories">Question Tags</h2>
<dl><dd><p>
{%- for tag in tags %}
    {%- if forloop.first == false -%}
      &nbsp;&ndash;&#x20;
    {%- endif -%}
  <a href="tags#{{ tag }}">{{ tag | capitalize }}</a>
{%- endfor %}
</p></dd></dl>




{% for ct in cats %}
<h2 id="{{ ct }}">{{ ct | capitalize }}</h2>
<ul class="category-list">
  {%- assign sorted = site.pages | sort: 'title' -%}
  {%- for page in sorted -%}
  {%- if page.category contains ct %}
  <li id="{{page.path  | remove_first: ".md" }}"><a href="{{ page.url |replace:'/FAQ','FAQ' }}">{{ page.title | markdownify | remove: "<p>" | remove: "</p>" | strip_newlines }}</a></li>
  {%- endif -%}
  {%- endfor %}
</ul>
{% endfor -%}

