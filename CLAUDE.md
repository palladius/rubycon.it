# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project overview

Static Jekyll website for **Rubycon** — a Ruby conference on May 8, 2026 in Rimini, Italy. The name puns on Ruby, Conference, and the Rubicon river (Caesar's "alea iacta est"). Deployed via Netlify on push to `main`.

- **Production**: https://rubycon.it / https://rubycon.me / https://rubycon.netlify.app
- **Staging**: https://rubycon-staging.netlify.app (auto-pushed from `staging` branch)
- **GitHub repo**: https://github.com/palladius/rubycon.it

## Commands

All commands are run from the repo root using `just`:

```bash
just install              # npm install + bundle install
just run                  # Serve at http://localhost:4002 (with --watch --livereload)
just run-local-p4002-future  # Same, also renders future-dated posts
just test                 # Build site + run html-proofer (checks links, HTML, OG tags)
just version              # Print current site_version from _config.yml
just agenda               # Print schedule via Ruby DSL to stdout
just clean                # jekyll clean
```

Do **not** run the server yourself — ask the user to start it. Logs go to `rubycon.it/log/last-run.log`. To smoke-test a page while a server is running: `curl http://localhost:4002/path`.

Run `just test` and confirm with user before `git push`.

## Architecture

The Jekyll site lives entirely inside the `rubycon.it/` subdirectory (Netlify's build base).

### Data-driven sections
All major content is in `rubycon.it/_data/`:
- `speakers.yml` — speaker cards rendered by `_includes/speakers.html`
- `sponsors.yml` — sponsor tiers/logos
- `schedule.yml` — session slots
- `faq.yml`, `logistics.yml`, `venue.yml`, `navigation.yml`

To add/edit a speaker, sponsor, FAQ item, etc., edit the relevant YAML file.

### Layouts and includes
- `_layouts/default.html` — base layout (header + footer wrapper)
- `_layouts/page.html` — standard page content
- `_layouts/article.html` — blog post (uses `.prose` class)
- `_includes/` — one partial per section (hero, speakers, sponsors, schedule, faq, logistics, venue, footer, call_to_action)

### Blog posts
`_posts/YYYY-MM-DD-slug.md` — speaker announcements and articles. Posts with future dates are hidden unless the server is started with `--future`.

### Schedule DSL
The schedule can be driven by a Ruby DSL in `_includes/schedule_dsl.rb` (requiring `dsl/definition.rb` and `dsl/content.rb`). Print it with `just agenda`.

### CSS / SCSS
- Entry point: `rubycon.it/assets/css/style.scss` — **do not remove this file** and do not collapse the front matter (`---`) onto one line with the `@use` directive (known breakage pattern, see `doc/CSS_ERRORS.md`).
- Variables: `rubycon.it/_sass/_variables.scss`
  - Primary palette: `$ruby-wine-red: #802126`, `$ruby-cream: #fcf7e8`
- Additional partials: `_sass/_faq.scss`, `_sass/_syntax.scss`

## Versioning and changelog

Before every commit:
1. Increment `site_version` in `rubycon.it/_config.yml` (semantic versioning).
2. Add an entry to `CHANGELOG.md` with your name, e.g. `* [emiliano] added sponsor X`.

Use `just version` to check the current version.

## Commit conventions

- Use gitmoji + Roman-themed emojis.
- If an issue is referenced, update the GitHub issue after commit and add the commit hash as a comment.
- Link: `gh issue comment <number> --body "Fixed in <hash>"`.

## Non-trivial tasks: plan first

For any non-trivial change, create a plan at `doc/plans/YYYYMMDD-short_name.md` before implementing. Each subtask should be easily testable and easily revertable. Do not execute until the user approves the plan.

## CSS pitfalls (see also `doc/CSS_ERRORS.md`)

- Never remove `rubycon.it/assets/css/style.scss`.
- The SCSS front matter must stay as two separate `---` lines; do not merge them into a single line with `@use`.
