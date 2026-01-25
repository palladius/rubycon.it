---
layout: page
title: Program of the Day (DSL)
permalink: /program_of_the_day/
---

<div class="prose lg:prose-xl mx-auto">
    <p>Because we love Ruby, here is the program of the day rendered as... valid Ruby code!</p>
</div>

{% highlight ruby %}
module Rubycon
  class Schedule
    def self.define(&block)
      new.instance_eval(&block)
    end

    def day(date, &block)
      puts "# Schedule for #{date}"
      yield
    end

    def event(time:, description:, speaker: nil, tag: nil)
      puts "  #{time.ljust(15)} | #{description.ljust(30)} | #{speaker}"
    end
  end
end

Rubycon::Schedule.define do
{% for day in site.data.schedule %}
  day "{{ day.title }}" do
{% for event in day.events %}    event(
      time:        "{{ event.clock }}",
      description: "{{ event.description }}",
      speaker:     "{{ event.full_name }}",
      tag:         "{{ event.tag }}"
    )
{% endfor %}  end
{% endfor %}
end
{% endhighlight %}
