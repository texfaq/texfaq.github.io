---
title: Category index
permalink: category
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

<h1 class="page-title">
  <a href="/">Categories</a> | {{ page.title }}
</h1>

<ul class="categories">
{%- for ct in cats %}
  <li><a href="#{{ ct }}"> {{ ct | capitalize }} </a></li>
{%- endfor %}
</ul>

{% for ct in cats %}
<h2 id="{{ ct }}">{{ ct | capitalize }}</h2>
<ul class="category-list">
  {%- assign sorted = site.pages | sort: 'title' -%}
  {%- for page in sorted -%}
  {%- if page.category contains ct %}
  <li><a href="{{ page.url }}">{{ page.title | markdownify | remove: "<p>" | remove: "</p>" | strip_newlines }}</a></li>
  {%- endif -%}
  {%- endfor %}
</ul>
{% endfor -%}
