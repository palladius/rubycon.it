Rubycon::Agenda.schedule(Date.new(2026, 5, 8)) do
  check_in at: "08:30",
           desc: "Check-in & Welcome Coffee"

  intro at: "09:30",
        desc: "MC Welcome",
        by: "Riccardo Carlesso"

  keynote at: "09:45",
          title: "Ruby Is the Best Language for Building AI Web Apps",
          by: "Carmine Paolino"

  talk at: "10:30",
       title: "Debugging Techniques in Ruby",
       by: "Julia Lopez"

  pause at: "11:15",
        desc: "☕️ Coffee Break"

  talk at: "11:20",
       title: "Breaking the rules of software engineering: will it work?",
       by: "Silvano Stralla"

  talk at: "11:55",
       title: "rv, a ruby manager for the future",
       by: "André Arko"

  pause at: "12:25",
        desc: "🍝 Lunch Break & Networking"

  # We want to give everyone the chance to say/bring something for 5 minutes.
  lightning_talks at: "13:55",
                  desc: "⚡️ 5minutes for everyone who has something to say",
                  tags: %w[FIFO]

  talk at: "14:45",
       title: "Semantic Image Search in Ruby: Postgres, Redis, or LLM?",
       by: "Michele Franzin"

  talk at: "15:20",
       title: "My daily life on Ruby",
       by: "Akira Matsuda"

  pause at: "15:50",
        desc: "☕ Coffee Break"

  talk at: "16:10",
       title: "TBD",
       by: "Marco Roth"


  talk at: "16:45",
       title: "From Plato to Production: A Philosophical History of Code",
       by: "Yara Debian"

  talk at: "17:15",
       title: "It's a wrap!",
       by: "Riccardo Carlesso"

  # Keep the conversation going, or refill
  # the batteries in the hotel, whatever you prefer.
  pause at: "18:00",
        desc: "Drinks or Shower or Nap",
        tags: %w[optional]

  # Here we will have dinner, and then the Toga Party!
  # The place is 10m walk from the hotel.
  party at: "20:00",
        desc: "🍝 Dinner + 🎉 Toga Party!",
        where: "🏖️ Bagno 46",
        url: "https://www.bagno46rimini.com/"
end
