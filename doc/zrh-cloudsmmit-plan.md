# Accessibility Improvement Plan for Rubycon.it

Based on the analysis of CUJ03, here is a checklist of actionable recommendations to improve the accessibility of the Rubycon.it website.

## 1. Image Accessibility

### 1.1. Add `alt` text to the newsletter button image

*   **Issue:** The image inside the button in the "Join the Newsletter" section is missing an `alt` attribute. Since the button itself has no text, screen readers cannot determine its function. The newsletter form is dynamically loaded via a `kit.com` script, meaning its HTML cannot be directly modified in `rubycon.it/_includes/newsletter.html`.
*   **File to edit:** N/A (dynamic content)
*   **Recommendation:**
    1.  **Investigate `kit.com` documentation:** Check if `kit.com` provides configuration options to add `alt` text to images or `aria-label` attributes to buttons within their embedded forms. This is the preferred solution.
    2.  **Implement a JavaScript solution:** If `kit.com` does not offer direct configuration, a JavaScript solution could be implemented to target the image and/or button after the form has loaded and dynamically add the `alt` attribute or `aria-label`. This would involve adding a script to the page that runs after the `kit.com` script has rendered the form.
        *   **Example (JavaScript):**
            ```javascript
            document.addEventListener('DOMContentLoaded', function() {
                const newsletterButton = document.querySelector('.kit-form-button-selector'); // Replace with actual selector
                if (newsletterButton && !newsletterButton.hasAttribute('aria-label')) {
                    newsletterButton.setAttribute('aria-label', 'Subscribe to our newsletter');
                }
                const newsletterImage = newsletterButton ? newsletterButton.querySelector('img') : null;
                if (newsletterImage && !newsletterImage.hasAttribute('alt')) {
                    newsletterImage.setAttribute('alt', ''); // Empty alt if aria-label is on button
                }
            });
            ```
        *   **Note:** The exact selectors (`.kit-form-button-selector`) would need to be determined by inspecting the rendered HTML of the embedded form.

## 2. Link Text Clarity

### 2.1. Improve "learn more" link text

*   **Issue:** The "learn more" link is generic. While sighted users can infer its purpose from the context, screen reader users navigating by links will not have that context.
*   **File to edit:** `rubycon.it/index.html`
*   **Recommendation:** Make the link text more descriptive.

    *   **Current:** `<a href="#about">learn more</a>`
    *   **GOOD:** `<a href="#about">Learn more about Rubycon Italy</a>`
    *   **EVEN BETTER:** Keep the short link text for visual design, but provide more context for screen readers using `aria-label`.
        `<a href="#about" aria-label="Learn more about Rubycon Italy">learn more</a>`

## 3. Color Contrast

*   **Assessment:** A visual inspection of the site suggests that the color contrast is generally good. The white text on the dark red background and the black text on the light background appear to meet accessibility standards.
*   **Recommendation:** No immediate changes are recommended based on visual inspection. However, for a more thorough verification, you can use the browser's developer tools to inspect the color contrast ratios of text elements against their backgrounds. The recommended contrast ratio is at least 4.5:1 for normal text and 3:1 for large text.

## 4. General Recommendations

*   **Semantic HTML:** The website uses a good heading structure (`h1`, `h2`, `h3`), which is excellent for screen reader navigation. Continue to use semantic HTML elements as the site develops.
*   **Manual Testing:** Regularly test the website using a screen reader (like VoiceOver on macOS, NVDA on Windows, or TalkBack on Android) to identify any usability issues for visually impaired users.
