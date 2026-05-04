module Rubycon
  class Schedule
    def initialize
      @rows = []
    end

    def self.agenda_of_the_day(date, &block)
      puts "# Agenda for #{date}"
      instance = new
      instance.instance_eval(&block)
      instance.print_agenda
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
      title = "🎤 #{title}" unless title.start_with?("🎤")
      row(at, title, by, "Keynote")
    end

    def talk(at:, title: nil, desc: nil, by: "TBD", tags: [])
      title ||= desc || "TBD"
      title = "🎤 #{title}" unless title.start_with?("🎤")
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

    def social(at:, desc:, by: nil)
      row(at, desc, by, "Social")
    end

    def print_agenda
      @rows.each_with_index do |row, i|
        time = row[:time]
        time_str = if time.is_a?(Integer)
                     "%02d:%02d" % [time / 100, time % 100]
                   else
                     time.to_s
                   end
        speaker = row[:speaker]
        speaker_str = (speaker && speaker != "") ? "(#{speaker})" : ""

        delta_str = ""
        if i < @rows.size - 1
          next_time = @rows[i+1][:time]
          if time.is_a?(Integer) && next_time.is_a?(Integer)
            t1 = (time / 100) * 60 + (time % 100)
            t2 = (next_time / 100) * 60 + (next_time % 100)
            diff = t2 - t1
            diff += 24 * 60 if diff < 0
            if diff > 0
              delta_str = "(#{diff}m)"
            end
          end
        end

        puts "  #{time_str.ljust(8)} | #{delta_str.ljust(6)} | #{row[:desc].ljust(40)} #{speaker_str}"
      end
    end

    private

    def row(time, desc, speaker, tags)
      @rows << { time: time, desc: desc, speaker: speaker, tags: tags }
    end
  end

  module Agenda
    def self.schedule(date, &block)
      Schedule.schedule(date, &block)
    end
  end
end
