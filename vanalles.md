---
layout: page
title: Vanalles
permalink: /vanalles/
---
{% assign image_files = site.static_files | where: "vanalles", true | sort: "modified_time" | reverse %}
{% include_relative includes/thumbnails.html %}