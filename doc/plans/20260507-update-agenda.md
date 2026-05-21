# Plan: Update Agenda and Add Speakers-Only View

Date: 2026-05-07
Task: Adjust dinner time and create a speaker-focused agenda view for slides.

## Subtasks

1. **Adjust Dinner Time**
   - Modify `rubycon.it/_includes/dsl/content.rb` to change dinner/party start time from 20:00 to 19:30.
   - *Test*: Run `just agenda` and verify dinner starts at 19:30.

2. **Enhance DSL Definition for Speakers-Only Mode**
   - Modify `rubycon.it/_includes/dsl/definition.rb` to:
     - Detect `ENV['AGENDA_MODE']`.
     - Filter events for `speakers-only` mode: Keep Intro, Keynote, Talk, Lightning Talks, Lunch, Outro.
     - Add a new printing format for slides: `Time | Duration | Title | Speaker`.
   - *Test*: Set `AGENDA_MODE=speakers-only` and run the script manually to verify output.

3. **Add `just agenda-speakers-only` to Justfile**
   - Create a new recipe `agenda-speakers-only` that sets `AGENDA_MODE=speakers-only` and runs the agenda command.
   - *Test*: Run `just agenda-speakers-only` and verify it matches requirements.

4. **Update Metadata**
   - Increment site version in `rubycon.it/_config.yml`.
   - Add entry to `CHANGELOG.md`.
