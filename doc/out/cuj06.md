# CUJ 06: SEO Analysis
Executed on: 2026-01-16
Site Version: 0.4.41

## 1. On-Page SEO Basics
*   **Title:** `<title>RubyCon - The Ruby Conference in Italy</title>`. 🟢 **GOOD**.
*   **Meta Description:** **MISSING**. Google will auto-generate this from page content, which is unpredictable. 🔴 **FAIL**.
*   **Open Graph:** `og:title` is present, but `og:description` and `og:image` are missing or default. 🟡 **POOR**.

## 2. Technical SEO
*   **Sitemap:** `sitemap.xml` is missing. 🔴 **FAIL**.
*   **Robots.txt:** `robots.txt` is missing. 🔴 **FAIL**.
*   **SSL/HTTPS:** Active and working. 🟢 **GOOD**.

## 3. Structured Data (Schema.org)
*   **Current:** Basic "WebSite" JSON-LD.
*   **Missing:** "Event" JSON-LD. This is critical for appearing in the "Events" box on Google Search results and for aggregators to pick up the date/location automatically. 🔴 **FAIL**.

## 4. Key Terms Visibility
*   "Ruby Italy", "Ruby Conference", "Rimini" are present in the text, but lacking prominence in meta-data.

## Summary & Recommendations
The site is technically healthy but invisible to many automated systems because of missing metadata and structured data.

**Plan Forward:**
1.  Add a compelling meta description.
2.  Install `jekyll-sitemap`.
3.  Create `robots.txt`.
4.  Implement detailed JSON-LD for the event (Date: 2026-05-08, Location: Hotel Ambasciatori, Rimini).
