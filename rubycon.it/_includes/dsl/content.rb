

# Riccardo loves Ruby DSL even more than my very first aDSL!

Rubycon::Schedule.agenda_of_the_day(Date.new(2026, 5, 8)) do

  check_in at: "08:30", desc: "Check-in & Welcome Coffee"
  
  talk at: "09:30", desc: "Opening Remarks", by: "Riccardo Carlesso" # , tags: %w{quick_intro}
  
  talk at: "09:45", desc: "Opening Keynote", by: "Carmine Paolino" # , tags: %w{keynote}
  talk at: "10:30", desc: "Speech #2",    by: "Julia Lopez"
  
  pause at: "11:15", desc: "☕ Coffee Break"
  
  talk at: "11:30", desc: "Speech #3",   by: "Marco Roth"
  talk at: "12:15", desc: "Speech #4" #,    by: "TBD"
  
  pause at: "13:00", desc: "🍝 Lunch Break & Networking"
  
  # We wamt to give everyone the chance to say/bring something for 5 minutes.
  lightning_talks at: "14:30", desc: "5m for everyone who has something to say" , 
                  tags: %w{ FIFO }
  talk at: "15:15", desc: "Speech #5" #,    by: "TBD"
    
  pause at: "16:00", desc: "☕ Coffee Break"
  
  talk at: "16:15", desc: "Speech #6"  #,    by: "TBD"
  talk at: "17:00", desc: "Speech #7" #,    by: "TBD"  
  talk at: "17:45", desc: "It's a wrap!",    by: "Riccardo, Emiliano, and the team"

  # Here everyone will be free to do what they want. Keep the conversation going, 
  # or refill the battiries in the hotel, whatever you prefer. 
  pause at: "18:00", desc: "Drinks or Shower or Nap", tags: %w{optional}

  # Here we will have dinner, and then the Toga Party! The place is 10m walk from the hotel.
  party at: "20:00", desc: "🍝 Dinner + 🎉 Toga Party!",    by: "All", 
        where: '🏖️ Bagno 46'
end
