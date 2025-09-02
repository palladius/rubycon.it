## CUJ-04: Website Technical Health Check

This report summarizes the technical health of the Rubycon website based on CUJ-04.

### Summary of Findings

| # | Check                               | Status  | Notes                                                                                             |
|---|-------------------------------------|---------|---------------------------------------------------------------------------------------------------|
| 1 | Broken Images                       | ✅ Pass   | All images on the homepage were checked and load correctly.                                       |
| 2 | Clickable Links                     | ✅ Pass   | All links on the homepage were checked and are functional.                                        |
| 3 | DNS Resolution                      | ✅ Pass   | `rubycon.it` and `rubycon.netlify.app` resolve to the same content, as expected.                  |
| 4 | Netlify Builds                      | ✅ Pass   | The Netlify build badge indicates that builds are passing.                                        |
| 5 | HTTPS Certificate                   | ❌ Fail   | The HTTPS certificate for `rubycon.it` expires on **November 21, 2025**, before the event date. |
| 6 | Version Number in Footer            | ❌ Fail   | The website version number is not present in the footer.                                          |

### Recommendations

1.  **Renew HTTPS Certificate:** The SSL certificate for `rubycon.it` must be renewed to cover the period of the event in May 2026.
2.  **Display Version Number:** The website's version number from `_config.yml` should be dynamically included in the footer to aid in debugging and version tracking.