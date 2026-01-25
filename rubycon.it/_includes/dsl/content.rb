

# Riccardo loves Ruby DSL even more than my very first aDSL!

Rubycon::Schedule.agenda_of_the_day("May 8th, 2026") do

  check_in at: "08:30", desc: "Check-in & Welcome Coffee"
  
  talk at: "09:30", desc: "Opening Remarks: why are we here?", by: "Riccardo Carlesso", tags: %w{quick_intro}
  
  talk at: "09:45", desc: "Opening Keynote", by: "Carmine Paolino", tags: %w{keynote}
  talk at: "10:30", desc: "First Speech",    by: "Julia Lopez"
  
  pause at: "11:15", desc: "Coffee Break"
  
  talk at: "11:30", desc: "Second Speech",   by: "Marco Roth"
  talk at: "12:15", desc: "Third Speech",    by: "TBD"
  
  pause at: "13:00", desc: "Lunch Break & Networking"
  
  talk at: "14:30", desc: "Fourth Speech",   by: "TBD"
  talk at: "15:15", desc: "Fifth Speech",    by: "TBD"
  
  pause at: "16:00", desc: "Coffee Break"
  
  talk at: "16:15", desc: "Sixth Speech",    by: "TBD"
  talk at: "17:00", desc: "Seventh Speech",  by: "TBD"
  
  talk at: "17:45", desc: "It's a wrap!",    by: "All Attendees"

  # Here everyone will be free to do what they want. Keep the conversation going, 
  # or refill the battiries in the hotel, whatever you prefer.
  pause at: "18:00", desc: "Drinks or Shower or Nap", tags: %w{optional}

  # Here we will have dinner, and then the Toga Party! The place is 10m walk from the hotel.
  party at: "20:00", desc: "Dinner + Toga Party!",    by: "All Attendees", where: 'Bagno 46'
end
