---
layout: page
title: people
permalink: /people/
description: <strong>People you should know</strong> - If you like my work, you should know about a few remarkable early career scientists who've inspired my approach to research, advocacy, or mentorship over the years. Some of them may not even know the impact they've had on me, but I learn from their example. So, here they are in no particular order. You can check out their work by clicking on their names below. I plan on continuously updating this page.
nav: true
display_categories: [Science]
horizontal: false
---

<!-- pages/projects.md -->
<div class="people">
{%- if site.enable_people_categories and page.display_categories %}
  <!-- Display categorized projects -->
  {%- for category in page.display_categories %}
  <h2 class="category">{{ category }}</h2>
  {%- assign categorized_people = site.people | where: "category", category -%}
  {%- assign sorted_people = categorized_people | sort: "importance" %}
  <!-- Generate cards for each project -->
  <div class="grid">
    {%- for people in sorted_people -%}
      {% include people.html %}
    {%- endfor %}
  </div>
  {% endfor %}

{%- else -%}
<!-- Display projects without categories -->
  {%- assign sorted_people = site.people | sort: "importance" -%}
  <!-- Generate cards for each project -->
  <div class="grid">
    {%- for people in sorted_people -%}
      {% include people.html %}
    {%- endfor %}
  </div>
{%- endif -%}
</div>
