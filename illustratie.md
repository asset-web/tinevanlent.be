---
layout: page
title: Illustratie
permalink: /illustratie/
---

{% assign image_files = site.static_files | where: "illustratie", true | sort: "modified_time" | reverse %}
{% for thumbnail in image_files %}
  <a href="{{ thumbnail.path  | replace: 'thumbnails', 'fullsize' }}"><img src="{{ thumbnail.path }}" alt="*" width="100" height="100" /></a>
{% endfor %}