# Postmortem: CSS Outage (Issue #57)

# Executive Summary

A breaking change in the CSS styling (specifically Front Matter configuration in SCSS files) caused the website's layout to break. The issue was introduced in commit `a61a79d` and resolved by reverting the changes in commit `c41124c`. The outage lasted approximately 22 minutes.

## Impact

The production website (`rubycon.it`) was rendered without proper styling, affecting the user experience for all visitors during the 22-minute window. No data was lost.

## Background

The team was working on improving H5/H6 styling and updating the footer. The changes involved modifying `style.scss` and `footer.html`.

## Root Causes and Trigger

**Trigger**: Commit `a61a79d` at 2026-01-10 11:36:14 CET.
**Root Cause**: The `style.scss` file's Front Matter (YAML header) was malformed or modified in a way that prevented Jekyll from processing it as SASS/SCSS, causing it to be served as plain text or not loaded correctly.

## Detection and Monitoring

The issue was self-detected by the author (Riccardo) shortly after deployment (or during local check, though the commit log suggests it hit main). Issue #57 was created to track it.

## Mitigation

The mitigation was to revert the changes to `style.scss` via commit `c41124c`.

## Customer Comms

None. The outage was short and traffic is assumed to be low (pre-event).

## Lessons Learned

### Things That Went Well

*   Fast turnaround time (22 minutes from break to fix).
*   Git revert was effective.

### Things That Went Poorly

*   Bad commit was pushed to main without adequate local testing or preview (presumably).
*   CSS Front Matter fragility.

### Where We Got Lucky

*   Traffic was likely low.

## Action Items

| Action Item | Owner | Priority | Type | Bug_id |
|-------------|-------|----------|------|--------|
| Investigate why SCSS front matter broke | ricc@ | P2 | Investigate | |
| Add CI/CD check for site build before merge | ricc@ | P1 | Prevent | |

## Timeline

(To be filled from timeline.csv)

## IMPORTANT

This PostMortem is AI-generated. Please review it carefully before submitting.
