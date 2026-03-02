# Plan: Rename `pause` to `intermission` and update schedule times to numerals

Ref: [PR 84](https://github.com/palladius/rubycon.it/pull/84) and user request.

## Tasks

1. **Update DSL Definition**:
   - In `rubycon.it/_includes/dsl/definition.rb`:
     - Rename `pause` method to `intermission`.
     - Update `row` method (or add a helper) to format the `at` time. If it's a numeral like `11_15`, it should be formatted as `"11:15"`.
2. **Update DSL Content**:
   - In `rubycon.it/_includes/dsl/content.rb`:
     - Replace all `pause` calls with `intermission`.
     - Replace all `"HH:MM"` strings with `HH_MM` numerals (e.g., `"08:30"` -> `08_30`).
3. **Verification**:
   - Run `just test` (if available/configured) to ensure no regressions.
   - Manually check the logic for formatting `08_30` -> `"08:30"`.
4. **Documentation & Versioning**:
   - Bump version in `rubycon.it/_config.yml` to `0.16.3`.
   - Update `CHANGELOG.md` with the changes.
5. **Commit & Push**:
   - Use `gitmoji` for the commit.
   - Push to main (since user said "no PR, just commit push").

## Proposed formatting logic for `at`
In `definition.rb`, `time` can be a String or an Integer.
```ruby
def format_time(time)
  return time if time.is_a?(String)
  "%02d:%02d" % [time / 100, time % 100]
end
```

## Question regarding method name
User found `pause` ugly and suggested `break`, but `break` is a reserved keyword in Ruby and causes syntax errors in the DSL block.
I am proposing `intermission` as a more formal and "beautiful" alternative.
Alternatives: `interval`, `recess`, `gap`, `break_time`.
I will go with `intermission` unless user prefers something else.

## Testing
I'll create a small script to verify the `format_time` logic and that `intermission` works in the DSL.
