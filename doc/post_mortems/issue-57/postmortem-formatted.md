<h1 style="color:#0000FF">Postmortem: CSS Outage (Issue #57)</h1>

<h1 style="color:#0000FF">Executive Summary</h1>

A breaking change in the CSS styling (specifically Front Matter configuration in SCSS files) caused the website's layout to break. The issue was introduced in commit [`a61a79d`](https://github.com/palladius/rubycon.it/commit/a61a79d) and resolved by reverting the changes in commit [`c41124c`](https://github.com/palladius/rubycon.it/commit/c41124c). The outage lasted approximately 22 minutes.

<h2 style="color:#0000FF">Impact</h2>

The production website (`rubycon.it`) was rendered without proper styling, affecting the user experience for all visitors during the 22-minute window. No data was lost.

<h2 style="color:#0000FF">Background</h2>

The team was working on improving H5/H6 styling and updating the footer. The changes involved modifying `style.scss` and `footer.html`.

<h2 style="color:#0000FF">Root Causes and Trigger</h2>

**Trigger**: Commit [`a61a79d`](https://github.com/palladius/rubycon.it/commit/a61a79d) at 2026-01-10 11:36:14 CET.
**Root Cause**: The `style.scss` file's Front Matter (YAML header) was malformed or modified in a way that prevented Jekyll from processing it as SASS/SCSS, causing it to be served as plain text or not loaded correctly.

<h2 style="color:#0000FF">Detection and Monitoring</h2>

The issue was self-detected by the author (Riccardo) shortly after deployment (or during local check, though the commit log suggests it hit main). Issue #57 was created to track it.

<h2 style="color:#0000FF">Mitigation</h2>

The mitigation was to revert the changes to `style.scss` via commit [`c41124c`](https://github.com/palladius/rubycon.it/commit/c41124c).

<h2 style="color:#0000FF">Customer Comms</h2>

None. The outage was short and traffic is assumed to be low (pre-event).

<h2 style="color:#0000FF">Lessons Learned</h2>

<h3 style="color:#0000FF">Things That Went Well</h3>

*   Fast turnaround time (22 minutes from break to fix).
*   Git revert was effective.

<h3 style="color:#0000FF">Things That Went Poorly</h3>

*   Bad commit was pushed to main without adequate local testing or preview (presumably).
*   CSS Front Matter fragility.

<h3 style="color:#0000FF">Where We Got Lucky</h3>

*   Traffic was likely low.

<h2 style="color:#0000FF">Action Items</h2>

| Action Item | Owner | Priority | Type | Bug_id |
|-------------|-------|----------|------|--------|
| Investigate why SCSS front matter broke | ricc@ | P2 | Investigate | [#62](https://github.com/palladius/rubycon.it/issues/62) |
| Add CI/CD check for site build before merge | ricc@ | P1 | Prevent | [#63](https://github.com/palladius/rubycon.it/issues/63) |

<h2 style="color:#0000FF">Timeline</h2>

Day: **2026-01-10** TZ=CET
* `11:36:14`: Commit [`a61a79d`](https://github.com/palladius/rubycon.it/commit/a61a79d) pushed to main (breaking CSS) <== <span style="color:red">Start of Incident</span>
* `11:50:00`: Riccardo detects the issue (estimated) <== <span style="color:red">Incident Detected</span>
* `11:58:53`: Commit [`c41124c`](https://github.com/palladius/rubycon.it/commit/c41124c) reverts `style.scss` changes <== <span style="color:red">Mitigation</span>
* `11:58:58`: Commit [`d6a5e62`](https://github.com/palladius/rubycon.it/commit/d6a5e62) confirms fix <== <span style="color:red">End of Incident</span>
* `12:05:43`: Issue #57 created for tracking

<h2 style="color:#0000FF">IMPORTANT</h2>

This PostMortem is AI-generated. Please review it carefully before submitting.

<h2 style="color:#0000FF">Action Items Links</h2>
* Investigate why SCSS front matter broke: https://github.com/palladius/rubycon.it/issues/62
* Add CI/CD check for site build before merge: https://github.com/palladius/rubycon.it/issues/63
