# Add All Featured Speakers

## Goal
To track and add all speakers from the schedule to the featured speakers rota on the website (`rubycon.it/_data/speakers.yml`), and add the missing information to GitHub Issue #91 so the team can gather it.

## Speakers Status Checklist

Already fully added:
- [x] **Carmine Paolino**
- [x] **Marco Roth**
- [x] **Julia López**

Ready to be added (Pics provided, using placeholder roles/descriptions):
- [x] **Akira Matsuda**
- [x] **André Arko**

Missing info (Need Pic, Role, Description, Labels):
- [ ] **Silvano Stralla** - pic given
- [ ] **Michele Franzin** - pic NOT GIVEN. ESCALATED.
- [ ] **Yara Debian** OK pic given
- [ ] **Riccardo Carlesso** - NOT NEEDED as MC and organizer.

## Subtasks

1. **Move Available Images:**
   - Command/Task: Move the available images for Akira and André from `rubycon speakers/` into the correct website assets directory.
   - Rename `akira01.jpg` -> `akira_matsuda.jpg`
   - Rename `andre arko.jpg` -> `andre_arko.jpg`
   - *Status*: ✅ Done.

2. **Update `speakers.yml` data:**
   - Task: Edit `rubycon.it/_data/speakers.yml` to add entries for Akira Matsuda and André Arko.
   - Fields used (placeholders until we get final ones):
     - **Akira Matsuda**: Role: "Ruby Committer & Creator of Kaminari", Description: "Akira is a Ruby Committer, creator of Kaminari and Asakusa.rb organizer.", Labels: `[ruby, kaminari]`
     - **André Arko**: Role: "Ruby Central Board & Lead Developer of Bundler", Description: "André is the creator of Bundler and works tirelessly on RubyGems to make dependency management great.", Labels: `[ruby, bundler, rubygems]`
   - *Testability:* Running `grep "Akira Matsuda" rubycon.it/_data/speakers.yml` should yield a hit.
   - *Revertability:* Remove the YAML entries.

3. **Comment on Issue #91:**
   - Task: Post a comment on the GitHub Issue #91 outlining exactly what is missing for the remaining speakers (Silvano, Michele, Yara, Riccardo).
   - *Testability:* Visit issue #91 on github.com.
   - *Revertability:* Delete or edit the issue comment.

4. **Update Version & Changelog:**
   - Task: Bump the version in `rubycon.it/_config.yml` (semver) and add the changes to `rubycon.it/CHANGELOG.md` making reference to adding the speakers.
   - *Testability:* `git diff` should cleanly show the changes.

5. **Commit the changes:**
   - Task: Make a single cohesive git commit with gitmoji.
