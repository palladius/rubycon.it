# Add Akira Matsuda and André Arko to Featured Speakers

## Goal
To add Akira Matsuda and André Arko to the featured speakers rota on the website, along with their pictures which have been provided in the `rubycon speakers/` directory.

## Subtasks

1. **Crop Images:**
   - Command/Task: The new images are not square (`akira01.jpg` is 1745x2402, `andre arko.jpg` is 768x1024). We will crop these photos to a 1:1 square aspect ratio using a Python 3 script (Pillow module).
   - *Testability:* Using `file` or `identify` on the cropped images should show identical width and height.
   - *Revertability:* If the crop cuts off something important, we can fall back to the original pictures.

2. **Move Images:**
   - Command/Task: Move the newly cropped images from `rubycon speakers/` into the correct website assets directory (`rubycon.it/assets/images/articles/`).
   - Rename `akira01.jpg` -> `akira_matsuda.jpg`
   - Rename `andre arko.jpg` -> `andre_arko.jpg`
   - *Testability:* `ls rubycon.it/assets/images/articles/` should list the two new images.
   - *Revertability:* Simply delete those two new pictures.

3. **Update `speakers.yml` data:**
   - Task: Edit `rubycon.it/_data/speakers.yml` to add two new entries for Akira Matsuda and André Arko.
   - Fields to fill:
     - **Akira Matsuda**: Role: "Ruby Committer & Creator of Kaminari", Description: "Akira is a Ruby Committer, creator of Kaminari and Asakusa.rb organizer.", Labels: `[ruby, kaminari]`
     - **André Arko**: Role: "Ruby Central Board & Lead Developer of Bundler", Description: "André is the creator of Bundler and works tirelessly on RubyGems to make dependency management great.", Labels: `[ruby, bundler, rubygems]`
   - *Testability:* Running `grep "Akira Matsuda" rubycon.it/_data/speakers.yml` should yield a hit. Loading the local server and viewing the speakers list should show them.
   - *Revertability:* Remove the YAML entries or revert the `speakers.yml` file.

4. **Update Version & Changelog:**
   - Task: Bump the version in `rubycon.it/_config.yml` (semver) and add the changes to `rubycon.it/CHANGELOG.md` making reference to adding the speakers.
   - *Testability:* `git diff` should cleanly show the version bump and changelog addition.
   - *Revertability:* Revert `_config.yml` and `CHANGELOG.md`.

5. **Commit the changes:**
   - Task: Make a single cohesive git commit with gitmoji (e.g. `✨ Add Akira and André to speakers list`).
