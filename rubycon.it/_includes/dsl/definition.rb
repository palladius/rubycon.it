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

    def pause(at:, desc:, tags: [])
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
      speaker_str = speaker ? "(#{speaker})" : ""
      puts "  #{time.ljust(15)} | #{desc.ljust(40)} #{speaker_str}"
    end
  end
end
