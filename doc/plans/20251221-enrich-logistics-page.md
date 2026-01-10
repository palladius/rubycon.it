# Plan: Enrich Logistics Page with Maps

## Goal
Add a static map image and an interactive Google Maps iframe to the Logistics page to help attendees locate the venue and nearby hotels.

## Steps

1.  **Modify `rubycon.it/_includes/logistics.html`**:
    *   Add a new section or card for "Hotel Map".
    *   Embed the static image: `/assets/images/logistics/hotels-close-to-ambasciatori.png`.
    *   Embed the Google Maps iframe provided by the user.
    *   Ensure the layout is responsive (iframe and image should fit well).

2.  **Verify**:
    *   Check if the page renders correctly locally (I can't run the server, but I can check the code structure).
    *   (Optional) If I could run the server, I would visit `http://localhost:4000/logistics/`. Since I can't, I will rely on code correctness.

3.  **Documentation**:
    *   Update `CHANGELOG.md`.
    *   Update `rubycon.it/_config.yml` version.
