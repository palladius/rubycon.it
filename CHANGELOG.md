# Changelog

## 0.17.0

* [gemini] feat(ui): 🎨 Massive UI refactoring based on Figma design (#88).
    * Implemented "Roman" theme with Wine Red (#802126) and Cream (#fcf7e8) color palette.
    * Refined logotype to match PDF specifications, including the "I♦I" pictogram.
    * Completely redesigned Hero section with full-viewport background, transparent header, and improved CTAs.
    * Updated all sections (About, Speakers, Schedule, Sponsors, Venue) to match the minimalist, left-aligned design from Figma mockups.
    * Added "Cross the Rubicon" call-to-action section above the footer.
    * Simplified footer with refined link columns and social icons.
    * Integrated "Cinzel" serif font for a classical aesthetic.

## 0.16.3

* [gemini] refactor(dsl): ⏱️ Converted schedule times from strings to numerals (e.g., `08_30`).
* [gemini] refactor(dsl): 💨 Renamed `pause` to `lapsus` (Latin flair, no Ruby keyword conflict).
* [gemini] refactor(dsl): 🍝 Renamed `party` to `dinner`.

(version is now in `rubycon.it/_config.yml`)

## 0.4.45

* [gemini] chore(merge): 🔀 Merge branch 'feat/equity-to-scholarship' into main (Fixes #78).

## 0.4.44

* [palladius] feat(scholarship): 🔗 Restored dual-link strategy (`/scholarship` canonical, `/equity` redirect) (Ref #78).
    * Renamed `equity.html` back to `scholarship.html`.
    * Added `jekyll-redirect-from` plugin to handle `/equity` -> `/scholarship` redirect.
    * Added text "formerly known as Equity" to scholarship page.
    * Moved "Scholarship" link from main navigation to Footer value-links.
* [palladius] feat(venue): 📍 Moved "Logistics & Hotels" from top nav to Venue section.
* [palladius] feat(footer): 🔤 Alphabetized quick links and added "Code of Conduct".
* [palladius] feat(faq): 📜 Updated FAQ to point to footer links and avoid broken markdown.

## 0.4.43

* [alessia] feat(equity-to-scholarship) 📝 Rename 'equity' to 'Scholarship' and add it on the menu.
## 0.4.42

* [gemini] docs: 📚 Add RAG events documentation and SEO analysis (CUJ 06) output.

## 0.4.41

* [palladius] feat(legal): 🛡️ Add Code of Conduct based on Berlin standard (Fixes #68).

## 0.4.40

* [gemini] fix(content): 📝 Rephrase 'community event' to 'community-friendly event' on sponsors page.

## 0.4.39

* [gemini] feat(sponsors): 💡 Add 'Bespoke Opportunities' section (space, swag, flexibility) to sponsors page.

## 0.4.38

* [gemini] feat(sponsors): 💡 Add 'Bespoke Opportunities' section (space, swag, flexibility) to sponsors page.

## 0.4.37

## 0.4.35

* [gemini] revert(sponsors): 🔓 Remove accordion toggle, make sponsors list always visible (Fixes #65 part 6).

## 0.4.34

* [gemini] fix(sponsors): 🌑 Use dark background for community sponsors to fix visibility of white logos (Fixes #65 part 4).

## 0.4.33

* [gemini] feat(sponsors): 🙈 Make the current sponsors list togglable (accordion) on the sponsors page.

## 0.4.32

* [gemini] fix(sponsors): 💄 Fix 'very ugly' sponsors page by adding a new `page` layout and `sponsors_list` include.

## 0.4.31

* [gemini] feat(sponsors): 📄 Add Sponsorship Prospectus page with PDF downloads (Fixes #65).

## 0.4.30

* [gemini] feat(content): 🇺🇸 Clarify that talks will be in English on Homepage and About page (Fixes #64).

## 0.4.29

* [ricc] fix(test): 🔧 Configure HTML-Proofer with lower concurrency and timeouts to reduce 429 rate limit errors.

## 0.4.28

* [ricc] feat(footer): 🔗 Add link to LICENSE file on 'Some rights reserved' text.

## 0.4.27

* [ricc] style(footer): 💅 Make version number bold in footer for better visibility.

## 0.4.26

* [ricc] fix(sponsors): 🔗 Change weLaika URL from LinkedIn to welaika.com (as requested by sponsor).

## 0.4.25

* [ricc] chore(sponsors): 🧹 Remove orphaned sponsor images (devfest.png, modenarb.jpg) from root directory.

## 0.4.24

* [ricc] fix(sponsors): 📝 Add description to Appsignal sponsor for consistency.

## 0.4.23

* [ricc] feat(sponsors): 🤝 Add weLaika as Praetor sponsor (Fixes #59).

## 0.4.22

* [ricc] fix(cicd): 🔧 Fix broken Netlify CI/CD by adding `bundle install` before `bundle exec jekyll build` (Fixes #58).

## 0.4.21

* [gemini] feat(equity): 🤝 Add Equity Tickets page with program details and sponsor info.

## 0.4.20

* [gemini] chore(git): 🗑️ Remove Git LFS and restore binary images directly to git history.

## 0.4.19

* [gemini] fix(workflow): 🔀 Fix gemini-triage workflow permission and config issues (Fixes #55).

## 0.4.18

* [ricc] feat(logistics): 🏨 Add Hotel Ambasciatori to nearby hotels list.

## 0.4.17

* [ricc] feat(logistics): ✨ Add star ratings to hotels.

## 0.4.16

* [ricc] feat(logistics): ✨ Consolidate features: Add anchor IDs for direct linking (#travel, #hotels, etc.), rename #transportation to #travel, enrich venue section with hotel images, add hotel stars rating and ballpark price to nearby hotels, and add direct Google Maps link for the venue.

## 0.4.15

* [ricc] feat(logistics): 🔍 Make hotel map image clickable to enlarge.

## 0.4.14

* [ricc] feat(logistics): 🗺️ Add "Click here to enlarge" link for interactive map.

## 0.4.13

* [ricc] style(logistics): 💅 Update logistics page with Tailwind CSS for better typography and layout.

## 0.4.12

* [ricc] refactor(logistics): ♻️ Reorganize page layout to linear sections and move hotel map.

## 0.4.11

* [ricc] fix(logistics): 🗺️ Update hotel map image to an annotated version.

## 0.4.10

* [ricc] feat(logistics): 🗺️ Add hotel map image and interactive Google Maps iframe.

## 0.4.9

* [ricc] feat(logistics): 💅 Improve UI of logistics page and add hotel notes.

## 0.4.8

* [ricc] feat(logistics): 🏛️ Add logistics page with hotel and travel info.

## 0.4.7

* [riccardo] fix(faq): 📝 Fix typos in FAQ.

## 0.4.6

* [riccardo] feat(faq): 💬 Add emojis to FAQ questions.

## 0.4.5


* [gemini] feat(speakers): 🗣️ Update Maecenas description with CFP link.

## 0.4.3

* [gemini] feat(sponsors): 🤝 Add SheTech as a community sponsor.

## 0.4.2

* [gemini] fix(content): 📝 Fix typos and inconsistencies in articles.

## 0.4.1

* [ricc] feat(content): 📝 Tone down Marco Roth article.

## 0.4.0

* [gemini] feat(content): 📝 Clarify that the conference is single-track on the schedule and CFP pages.

## 0.3.9

* [gemini] feat(speaker): 🗣️ Update Marco Roth article with image, links, and fix front matter.

## 0.3.8

* [ricc] feat(speakers): 🗣️ Introduce Marco Roth as a speaker.

## 0.3.7

* [gemini] feat(tickets): 🎟️ Update ticket button text and URL.

## 0.3.6

* [gemini] fix(accessibility): 🏛️ Improved "learn more" link with aria-label and updated newsletter form accessibility plan.

## 0.3.6

* [gemini] feat(footer): 🏛️ Add CFP link to footer.
* [Riccardo] feat(header): 🏛️ Add CFP link to header.
* [Riccardo] 🏛️ Removed surnames ricc/Fede from Blog.

## 0.3.5

* [gemini] fix(layout): 🏛️ Remove duplicated image from article layout.

## 0.3.4

* [gemini] feat(articles): 🏛️ Restore image in article cards.
* [gemini] feat(articles): 🏛️ Use article image as background for the Latest News section.
* [gemini] fix(articles): 🏛️ Remove empty 'Published on' date from articles page.
* [gemini] feat(articles): 🏛️ Restore image on individual article pages with 50% width and float right.
* [gemini] fix(articles): 🏛️ Adjust image size and positioning on individual article pages.
* [gemini] feat(articles): 🏛️ Make article title red and bold.
* [gemini] feat(articles): 🏛️ Restore main image on articles page.
* [gemini] fix(articles): 🏛️ Remove standalone image from articles page.

## 0.3.3

* [gemini] feat(articles): 🏛️ Add article image to cards and resize main image.

## 0.3.2

* [gemini] fix(articles): 🏛️ Fixed broken image on articles page and resolved HTML validation errors.

## 0.3.1

* [gemini] feat(footer): 🏛️ Added GitHub link to quick links section in footer.

## 0.3.0

* [gemini] fix(css): 🛠️ Resolved Sass `@import` deprecation warning by using `@use` and namespacing variables.
* [gemini] feat: Add articles/newsletter functionality
* [gemini] feat: Create article layout
* [gemini] feat: Create articles listing page
* [gemini] feat: Add first newsletter article
* [gemini] feat: Add articles link to footer

## 0.2.22

* [gemini] fix(sass): 🛠️ Resolve Sass `@import` deprecation warning by using `@use` and namespacing variables.

## 0.2.21

* [gemini] feat(footer): 🏛️ Add link to GitHub repository in the footer.

## 0.2.20

* [gemini] feat(sponsors): 🏛️ Improved the sponsors page with a detailed prospectus.
* [gemini] feat(about): 🏛️ Added an organizers section to the about page.
* [gemini] fix(test): 🛠️ Fixed the build by ignoring Google Fonts in the test configuration.

## 0.2.19

* [gemini] 🏛️ fix(accessibility): Add alt text to images and improve link descriptions.

## 0.2.17

* 🏛️ feat(schedule): 🗓️ Replace "coming soon" with a 3-line summary.
* 🏛️ docs: Add comment explaining how to restore the full schedule.

## 0.2.16

* 🏛️ feat: Add tabbed interface for sponsorships.
* 🏛️ feat: Add animated GIF to Imperator sponsor tab.
* 🏛️ fix: Correct typo in `venue.webp` image name.
* 🏛️ feat: Temporarily hide event schedule with a "coming soon" message.

## 0.2.14

* [gemini] chore: Restore Google Fonts preload and preconnect links

## 0.2.12

* [gemini] chore: Remove Google Fonts import from SASS

## 0.2.11

* [gemini] chore: Remove Google Fonts preload link

## 0.2.10

* [gemini] fix: Fix speakers link in schedule

## 0.2.9

* [gemini] feat: Make "Alea iacta REST" text bigger

## 0.2.8

* [gemini] fix: Center footer content and address font preload issue

## 0.2.7

* [gemini] feat: Arrange footer content on a single line

## 0.2.6

* [gemini] fix: Restore footer CSS by removing inline styles

## 0.2.5

* [gemini] fix: Ensure footer is correctly included in default layout

## 0.2.4

* [gemini] feat: Add social media links to footer

## 0.2.3

* [gemini] fix: restore header styling and use include

## 0.2.2

* [gemini] fix: inject custom footer content into theme

## 0.2.1

* [gemini] fix: restore header and fix footer

## 0.2.0

* [gemini] feat: switch to Cayman theme
* [gemini] feat: add Caesar image to home page
* [gemini] chore: rename markdown files to md

## 0.1.3

* [gemini] fix: restore event details and fix CSS deprecation warnings

## 0.1.2

* [gemini] feat: use variables for email addresses

## 0.1.1

* [gemini] feat: add dot to title

## 0.1.0

* [gemini] feat: add emojis to event details

## 0.0.9

* [gemini] feat: add emojis to navigation links and subtitle
* [gemini] feat: programmatically update footer version

## 0.0.8

* [gemini] feat: improve header layout and style

## 0.0.7

* [gemini] feat: add logo to header and as favicon

## 0.0.6

* [gemini] chore: rename .env to .env.public

## 0.0.5

* [gemini] feat: add testing framework and fix broken links

## 0.0.4

* [riccardo] feat: add motto to header

## 0.0.3

* [riccardo] feat: add schedule to website and update documentation
