# Changelog

All notable changes to this project will be documented in this file.

## [Unreleased]

## [0.16.7] - 2026-03-30

### Added
- *[Riccardo / Antigravity]* **Speakers**: Added Michele Franzin to the featured speakers list (`_data/speakers.yml`) and copied his picture from Sessionize. Fixes GH Issue #91.

## [0.16.6] - 2026-03-30

### Added
- *[Riccardo / Antigravity]* **Speakers**: Added Akira Matsuda and André Arko to the featured speakers list (`_data/speakers.yml`) and copied their pictures. Tracked missing information for the rest of the schedule in GH Issue #91.

## [0.16.4] - 2026-03-29

### Changed
- *[Riccardo / Antigravity]* **Schedule**: Standardized talk durations to 40 minutes and coffee breaks to 20 minutes for better consistency. Shrunk Piadina wrap to 20m. Updated `_includes/dsl/content.rb` and `_data/schedule.yml`.

## [0.4.47] - 2026-01-25

### Added
- **Sponsors**: Added `scholarship_tickets` property to support scholarship sponsors.
- **Sponsors**: Added **weLaika**, **Typesense**, and **Seesaw** as scholarship sponsors (2 tickets each).

### Changed
- **Scholarship Page**: Dynamic rendering of scholarship sponsors using `scholarship_tickets` property.
- **Configuration**: Refactored scholarship sponsors to be part of their respective tiers (Triumvir/Praetor) instead of a separate section.

## [0.4.46] - 2026-01-25

### Added
- **Schedule DSL**: Implemented a Ruby DSL for the conference schedule (`_includes/schedule_dsl.rb`), featuring a readable one-liner syntax (`talk`, `lapsus`, `check_in`).
- **Program Page**: Added `/program_of_the_day` page to display the schedule rendered as Ruby code.
- **Styling**: Introduced a custom "Ruby Red" & Cyan syntax highlighting theme for code blocks (`_sass/_syntax.scss`).
- **Features**: Added `lightning_talks` and `party` methods to the DSL with optional arguments (tags, speakers).

### Changed
- **Homepage**: Reverted schedule section to "Schedule to come" placeholder.
- **CSS**: Fixed `style.scss` compilation issues and enforced strict front matter validation (`test/check_front_matter.rb`).
- **Syntax Highlighting**: Strings are now **Bold** and **Ruby Red** (`#dc2626`), Keywords are **Cyan** (`#00b0ff`).
- **Refactoring**: Split DSL into `definition.rb` and `content.rb` for better separation of concerns.

