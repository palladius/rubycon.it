

# Riccardo loves Ruby DSL even more than my very first aDSL!

Rubycon::Agenda.schedule(Date.new(2026, 5, 8)) do

 check_in at: "08:30",
     desc: "Check-in & Welcome Coffee"

 talk at: "09:30",
     desc: "Opening Remarks",
     by: "Riccardo Carlesso"

  talk at: "09:45",
     by: "Carmine Paolino",
     title: "Ruby Is the Best Language for Building AI Web Apps"

  talk at: "10:30",
     by: "Julia Lopez",
     title: "Debugging Techniques in Ruby: You still need to understand how the code works!"

  pause at: "11:15",
     desc: "☕️ Coffee Break"

  talk at: "11:30",
     by: "Marco Roth",
     title: something_on(:Herb, :ReActionView)

  talk at: "12:15",
     title: "Speech #4"

  pause at: "13:00",
     desc: "🍝 Lunch Break & Networking"

  # We want to give everyone the chance to say/bring something for 5 minutes.
  lightning_talks at: "14:30",
     desc: "⚡️ 5m for everyone who has something to say" ,
     tags: %w{ FIFO }

  talk at: "15:15",
     title: "Speech #5"

  pause at: "16:00",
     desc: "☕ Coffee Break"

  talk at: "16:15",
     title: "Speech #6"

  talk at: "17:00",
     title: "Speech #7"

  talk at: "17:45",
     title: "It's a wrap!",
     by: "Riccardo, Emiliano, and the team"

  # Keep the conversation going, or refill
  # the batteries in the hotel, whatever you prefer.
  pause at: "18:00",
     desc: "Drinks or Shower or Nap",
     tags: %w{optional}

  # Here we will have dinner, and then the Toga Party!
  # The place is 10m walk from the hotel.
  party at: "20:00",
     desc: "🍝 Dinner + 🎉 Toga Party!",
     where: '🏖️ Bagno 46',
     url: 'https://www.bagno46rimini.com/'
end

# Titles being refined here: https://github.com/palladius/rubycon.it/issues/74
