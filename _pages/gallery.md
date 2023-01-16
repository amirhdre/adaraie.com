---
layout: page
title: Life Gallery
permalink: /gallery/
description: A gallery that captures my life - the people who inspired me, the places that I traveled, and the timeline of my life. 
nav: true
nav_order: 1
display_categories:
horizontal: false
---

<div id="person_preview_box"></div>    

<div class="projects gallery" style="align-items: center;justify-content: center;">
    <h2 class="category">People 👦🏾👦🏻👧🏾👧🏻</h2>
    {%- assign categorized_people = site.people -%}
    {%- assign sorted_people = categorized_people | sort: "importance" %}
    <div class="grid">
    {%- for people in sorted_people -%}
      {% include people.html %}
    {%- endfor %}
    </div>

    <h2 class="category">Places ⛵️⛰️⛺️🌍</h2>
    {%- assign categorized_places = site.places -%}
    {%- assign sorted_places = categorized_places | sort: "year" %}
    <div class="grid">
    {%- for places in sorted_places -%}
      {% include places.html %}
    {%- endfor %}
    </div>

</div>

<script>
function mouseoverBox1(element){
    //document.getElementById("person_preview_box").innerHTML =  card;
    // var myPara = element.getElementById("person_name").innerHTML;
    // var doc = new DOMParser().parseFromString(element, "text/html")
    //var person_name = doc.getElementById("person_name").innerHTML;
    //console.log(typeof element);
    person_name = element.querySelector("#person_name").innerHTML;
    person_institute = element.querySelector("#person_institute").innerHTML;
    person_field = element.querySelector("#person_field").innerHTML;

    card = ''.concat(`<nav id="navbar person-discription-nav" class="navbar navbar-light navbar-expand-sm fixed-top">
        <div class="container" style="padding:1.5rem; align-items: center;justify-content: center;"><div class="card text-white sticky-top">
  <div class="card-header" style="font-size:1.5rem;">🙋🏻 `,person_name,`</div><div class="card-body">
    <h6 class="card-title">\t🏫 `,person_institute,`</h6>`,`<p class="card-text">📌 \t`,person_field,`</p></div>
</div></div>
</nav>`);


    document.getElementById("person_preview_box").style.display = "block";
    document.getElementById("person_preview_box").innerHTML = card;
}

function mouseoutBox1(element){
      document.getElementById("person_preview_box").style.display = "none";
}

</script>