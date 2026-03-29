# Figma UI Refactoring Plan

## Description
This massive UI refactoring uses the design provided in Figma via [Issue #88](https://github.com/palladius/rubycon.it/issues/88) to update the Rubycon.it static website.
The design utilizes a sophisticated Wine Red (`#802126`) and Cream White (`#fcf7e8`) color set, moving away from the previously planned blue scales to better align with the Roman "Rubicon" theme.

We will use the **figma26** branch to ensure `main` remains stable.

## Subtasks

### 1. Environment & Git Setup
- Create and checkout a new branch called `figma26`.
- Add an entry in `CHANGELOG.md` for this UI refactoring initiative.
- **Testable**: `git branch --show-current` outputs `figma26`.
- **Revertible**: `git checkout main && git branch -D figma26`.

### 2. Figma MCP Server Configuration
- The user must ensure the Antigravity Figma MCP Server is installed and authenticated. 
- You can connect via Figma's Remote MCP endpoint (`https://mcp.figma.com/mcp`) or by enabling the Desktop MCP server in Figma Dev Mode.
- **Testable**: The agent can successfully run Figma MCP tools or list Figma resources.
- **Revertible**: Disable or remove the MCP from Antigravity configuration.

### 3. Extract Design System
- Utilize the Figma MCP to read the Figma file: `https://www.figma.com/design/qfjYpDGQmX7vRR6e2eKXmU/Revisione-Ui`.
- Extract exact hex codes, typography sizes, layout boundaries, and specific assets.
- **Testable**: Agent outputs a clear mapping of what variables will be created.
- **Revertible**: No code changes at this stage.

### 4. Implement Basic CSS Design Tokens
- Update the main stylesheet to include the extracted Figma tokens as CSS variables under `:root`.
- **Testable**: Run `just build` and inspect the generated CSS.
- **Revertible**: Revert CSS file modifications via Git.

### 5. Layout Refactor (Header & Footer)
- Update `_layouts/default.html` and includes such as `header.html` and `footer.html`.
- **Testable**: `curl -s http://localhost:4002 | grep "your-new-classes"` or verify with Playwright.
- **Revertible**: Revert HTML files via Git.

### 6. Pages Refactor (Schedule, Speakers, Sponsors)
- Adjust the layout of iteration loops (speakers, schedule, sponsors) to align with Figma specifications.
- Ensure the newly updated schedule logic integrates smoothly with the new UI.
- **Testable**: Use Playwright to capture screenshots of `http://localhost:4002` and visually inspect. Wait for user feedback.
- **Revertible**: Revert HTML/CSS file differences.

### 7. Review, Version Bump & Push
- Update `version:` in `_config.yml` (semantic bump, e.g., minor or major depending on scope).
- Add detailed `CHANGELOG.md` entry.
- Test with `just test`.
- Push to origin and create a GitHub Pull Request closing/referencing #88.
- **Testable**: Verify Netlify deployment preview generated from the PR.
- **Revertible**: Delete branch and close PR.
