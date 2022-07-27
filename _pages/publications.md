---
layout: page
permalink: /publications/
title: publications
description: Amir's publications by categories in reversed chronological order.
# years: [1956, 1950, 1935, 1905]
years: [2022]
nav: true
---
<!-- _pages/publications.md -->
<div class="publications">

{%- for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div>
