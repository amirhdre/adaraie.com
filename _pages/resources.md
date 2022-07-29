---
layout: page
title: resources
permalink: /resources/
description: Resources
nav: true
display_categories: [Book, Course, Podcast]
---

<!-- pages/projects.md -->
<div class="resources">
{%- if site.enable_resources_categories and page.display_categories %}
  <!-- Display categorized projects -->
  {%- for category in page.display_categories %}
  <h2 class="category">{{ category }}</h2>
  {%- assign categorized_resources = site.resources | where: "category", category -%}
  {%- assign sorted_resources = categorized_resources | sort: "importance" %}
  <!-- Generate cards for each project -->
  <div class="grid">
    {%- for resources in sorted_resources -%}
      {% include resources.html %}
    {%- endfor %}
  </div>
  {% endfor %}

{%- else -%}
<!-- Display projects without categories -->
  {%- assign sorted_resources = site.resources | sort: "importance" -%}
  <!-- Generate cards for each project -->
  <div class="grid">
    {%- for resources in sorted_resources -%}
      {% include resources.html %}
    {%- endfor %}
  </div>
{%- endif -%}
</div>
