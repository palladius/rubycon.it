module Rubycon
  class Schedule
    def self.agenda_of_the_day(date, &block)
      puts "# Agenda for #{date}"
      new.instance_eval(&block)
    end

    def self.schedule(date, &block)
      agenda_of_the_day(date, &block)
    end

    def check_in(at:, desc:)
      row(at, desc, nil, "Check-in")
    end

    def intro(at:, desc:, by: "TBD")
      row(at, desc, by, "Intro")
    end

    def keynote(at:, title:, by: "TBD")
      row(at, title, by, "Keynote")
    end

    def talk(at:, title: nil, desc: nil, by: "TBD", tags: [])
      title ||= desc || "TBD"
      row(at, title, by, tags)
    end

    def lapsus(at:, desc:, tags: [])
      row(at, desc, nil, "Break")
    end

    def lightning_talks(at:, desc:, tags: [])
      row(at, desc, "Many speakers (FIFO)", tags)
    end

    def dinner(at:, desc:, by: nil, where: nil, url: nil)
      desc += " @ #{where}" if where
      row(at, desc, by, "Dinner")
    end

    private

    def row(time, desc, speaker, tags)
      time_str = if time.is_a?(Integer)
                   "%02d:%02d" % [time / 100, time % 100]
                 else
                   time.to_s
                 end
      speaker_str = (speaker && speaker != "") ? "(#{speaker})" : ""
      puts "  #{time_str.ljust(15)} | #{desc.ljust(40)} #{speaker_str}"
    end
  end

  module Agenda
    def self.schedule(date, &block)
      Schedule.schedule(date, &block)
    end
  end
end
