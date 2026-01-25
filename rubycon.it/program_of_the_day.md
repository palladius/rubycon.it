---
layout: page
title: Program of the Day (DSL)
permalink: /program_of_the_day/
---


*Note for rubyconians: this page is rendered using a DSL, see `program_of_the_day.md` for the code. It's not linked anywhere, for you folks to TAL. -- Riccardo*

<div class="prose lg:prose-xl mx-auto">
    <p>Because we love Ruby, here is the program of the day rendered as... valid Ruby code!</p>
</div>

{% highlight ruby %}
{% include dsl/content.rb %}
{% endhighlight %}


<!-- 
{% highlight ruby %}
  # Riccaro tried without including the file, but it didn't work.
  puts "Hello World"

=begin

  Note from https://jekyllrb.com/docs/liquid/tags/ : 
  Using Pygments has been deprecated and is not supported in Jekyll 4; the configuration setting highlighter: pygments now automatically falls back to using Rouge which is written in Ruby and 100% compatible with stylesheets for Pygments.

=end  
{% endhighlight %}


{% highlight ruby linenos %}
# with line numbers
def foo
  puts 'foo'
end
{% endhighlight %}
-->