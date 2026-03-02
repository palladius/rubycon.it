module Rubycon
  class Schedule
    def self.agenda_of_the_day(date, &block)
      puts "# Agenda for #{date}"
      new.instance_eval(&block)
    end

    def check_in(at:, desc:)
      row(at, desc, "All Attendees", "Check-in")
    end

    def talk(at:, desc:, by: "TBD", tags: [])
      row(at, desc, by, tags)
    end

    def lapsus(at:, desc:, tags: [])
      row(at, desc, "All Attendees", "Break")
    end

    def lightning_talks(at:, desc:, tags: [])
      row(at, desc, "Many speakers (FIFO)", tags)
    end

    def party(at:, desc:, by: "All Attendees", where: nil)
      desc += " @ #{where}" if where
      row(at, desc, by, "Party")
    end

    private

    def row(time, desc, speaker, tags)
      time_str = if time.is_a?(Integer)
                   "%02d:%02d" % [time / 100, time % 100]
                 else
                   time.to_s
                 end
      speaker_str = speaker ? "(#{speaker})" : ""
      puts "  #{time_str.ljust(15)} | #{desc.ljust(40)} #{speaker_str}"
    end
  end
end
