---
layout: page
title: Schedule
permalink: /schedule/
page_top_padding: "pt-[152px] md:pt-[176px]"
page_header_margin: "mb-12 md:mb-16"
eyebrow: "The day"
subtitle: "Edit the conference DSL and run it in the terminal panel to preview the agenda output."
---

{% capture schedule_source %}
{% include dsl/content.rb %}
{% endcapture %}

{% include schedule-editor.html source=schedule_source %}
