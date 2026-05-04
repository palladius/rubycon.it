Rubycon::Agenda.schedule(Date.new(2026, 5, 8)) do
  check_in at: 8_30,
           desc: "Check-in & Welcome Coffee"

  intro at: 9_30,
        desc: "Welcome to Rubycon",
        by: "Riccardo Carlesso" # MC

  keynote at: 9_45, # Keynote
          title: "Ruby Is the Best Language for Building AI Web Apps",
          by: "Carmine Paolino"

  talk at: 10_25,
       title: "Shift-left on Accessibility in your Ruby webapps",
       by: "Julia López"

  lapsus at: 11_05,
         desc: "☕️ Coffee Break"

  talk at: 11_20,
       title: "Breaking the rules of software engineering: will it work?",
       by: "Silvano Stralla"

  talk at: 12_00,
       title: "rv, a ruby manager for the future",
       by: "André Arko"

  lapsus at: 12_40,
         desc: "🍝 Lunch Break & Networking"

  # We want to give everyone the chance to say/bring something for 5 minutes.
  lightning_talks at: 13_45,
                  desc: "⚡️ 5minutes for everyone who has something to say",
                  tags: %w[ FIFO on_the_day ]

  talk at: 14_45,
       title: "Semantic Image Search in Ruby: Postgres, Redis, or LLM?",
       by: "Michele Franzin"

  talk at: 15_25,
       title: "My daily life on Ruby",
       by: "Akira Matsuda"

  lapsus at: 16_05,
         desc: "☕ Coffee Break"

  talk at: 16_20,
       title: "HTML-Aware ERB: The Path to Reactive Rendering",
       by: "Marco Roth"


  talk at: 17_00,
       title: "From Plato to Production: A Philosophical History of Code",
       by: "Yara Debian"

  talk at: 17_40,
       title: "Piadina - It's a wrap!", # aka Piadina!
       by: "Riccardo Carlesso"

  # Keep the conversation going, or refill
  # the batteries in the hotel, whatever you prefer.
  lapsus at: 18_00,
         desc: "Drinks or Shower or Nap",
         tags: %w[optional]

  # Here we will have dinner, and then the Toga Party!
  # The place is 10m walk from the hotel.
  dinner at: 20_00,
        desc: "🍝 Dinner + 🎉 Toga Party!",
        where: "🏖️ Bagno 46"
        #  url: "https://www.bagno46rimini.com/"
end

# ── Saturday ──────────────────────────────────────────
# Social activities (included in the ticket)

Rubycon::Agenda.schedule(Date.new(2026, 5, 9)) do
  social at: 10_00,
         desc: "🚶 Guided tour of Rimini old town"

  social at: 11_30,
         desc: "🌊 Walk to the Mouth of the Rubicon, where the river meets the sea"
end
