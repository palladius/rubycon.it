# Fix Double Sponsors Issue (#92)

We noticed that the `rubycon.it/_data/sponsors.yml` file contains duplicated blocks for the "quaestor" and "community" sponsors. 
The second block includes more complete information for some sponsors (like "Avo", which has a URL, description, and scale).

## Tasks

1. Deduplicate `rubycon.it/_data/sponsors.yml` by removing lines 48-107, keeping the more complete block from line 108 onwards.
2. Increment `site_version` in `rubycon.it/_config.yml`.
3. Update `CHANGELOG.md` making sure to credit the author and linking to the issue.
4. Run tests with `just test`.
5. Check if the issue #92 is resolved.
6. Commit using an appropriate gitmoji, mention the issue, and push to production if authorized.
