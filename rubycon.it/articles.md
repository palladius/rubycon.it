---
layout: article
title: Articles
permalink: /articles/
---

<section id="articles" class="py-20">
  <div class="container mx-auto px-4">
    <h2 class="text-3xl font-bold text-center mb-12">Latest News</h2>

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
      {% for post in site.posts %}
        <div class="bg-white rounded-lg shadow-md overflow-hidden">
          <div class="p-6">
            <h3 class="text-xl font-bold mb-2"><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
            <p class="text-gray-600 text-sm mb-4">Published on {{ post.date | date: "%B %d, %Y" }}</p>
            <p class="text-gray-700">{{ post.excerpt }}</p>
            <a href="{{ post.url | relative_url }}" class="text-red-500 hover:underline mt-4 inline-block">Read more</a>
          </div>
        </div>
      {% endfor %}
    </div>
  </div>
</section>
