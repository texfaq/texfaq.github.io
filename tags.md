---
title: FAQ Tags
permalink: /tags
---

{%- comment -%}
Based on https://github.com/codinfox/codinfox-lanyon/blob/master/blog/tag.html
{%- endcomment -%}

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

<ul class="tags">
{%- for tag in tags %}
  <li><a href="#{{ tag }}"> {{ tag | capitalize }} </a></li>
{%- endfor %}
</ul>

{% for tag in tags %}
<h2 id="{{ tag }}">{{ tag | capitalize }}</h2>
<ul class="tag-list">
  {%- assign sorted = site.pages | sort: 'title' -%}
  {%- for page in sorted -%}
  {%- if page.tags contains tag %}
  <li><a href="{{ page.url }}">{{ page.title | markdownify | remove: "<p>" | remove: "</p>" | strip_newlines }}</a></li>
  {%- endif -%}
  {%- endfor %}
</ul>
{% endfor -%}
