The `logistics.yml` file does not currently have a field for hotel star ratings. I recommend adding a `stars` field to each hotel entry. This would allow you to specify the star rating for each hotel.

For example, to add a 4-star rating to "Hotel Ambasciatori" and a 5-star rating to "Caesar's Palace", the relevant parts of your `logistics.yml` file would look like this:

```yaml
venue_hotel:
  name: Hotel Ambasciatori
  stars: 4 # Example: Add this line for the star rating
  address: Lungomare Amerigo Vespucci, 22, 47921 Rimini RN, Italy
  url: "https://www.hotelambasciatori.it/"
  # ... (other notes)

nearby_hotels:
  - name: Caesar's Palace (Ale-oh-oh)
    stars: 5 # Example: Add this line for the star rating
    url: "https://www.caesars.com/caesars-palace"
    # ... (other notes)
```

Would you like me to make these changes to `rubycon.it/_data/logistics.yml`? If so, please specify the star ratings you'd like for each hotel you want to update.