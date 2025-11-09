# Installation Guide (rbenv)

This guide provides instructions for setting up your development environment using `rbenv` to manage Ruby versions, specifically for the Rubycon project.

## Prerequisites

Before you begin, ensure you have `rbenv` installed. If not, you can follow the official `rbenv` installation guide: [https://github.com/rbenv/rbenv#installation](https://github.com/rbenv/rbenv#installation)

## Installation Steps

1.  **Install Ruby 3.4.5:**
    The Rubycon project requires Ruby version `3.4.5`. Use `rbenv` to install it:
    ```bash
    rbenv install 3.4.5
    ```
    If you encounter issues, ensure your `rbenv` environment is correctly set up and that you have necessary build tools (like `openssl`, `readline`, etc.) installed via Homebrew or your system's package manager.

2.  **Set Local Ruby Version:**
    Navigate to the project's root directory (`/Users/ricc/git/rubycon.it`) and set Ruby 3.4.5 as the local version for this project. This will create or update the `.ruby-version` file in the project root.
    ```bash
    rbenv local 3.4.5
    ```

3.  **Rehash rbenv:**
    After installing a new Ruby version or installing gems with executables, you need to rehash `rbenv` to ensure it picks up the new executables:
    ```bash
    rbenv rehash
    ```

4.  **Install Bundler:**
    Bundler is used to manage the project's Ruby gem dependencies. Install it if you haven't already for this specific Ruby version:
    ```bash
    gem install bundler
    ```

5.  **Install Project Dependencies:**
    Finally, install all the gems required by the Rubycon project. Make sure you are in the project's root directory when running this command:
    ```bash
    bundle install --gemfile=rubycon.it/Gemfile
    ```
    This command tells Bundler to look for the `Gemfile` inside the `rubycon.it/` subdirectory.

## Running the Project Locally

Once all dependencies are installed, you can run the Jekyll server locally using the `just` command:

```bash
just run-local-p4002
```

Then, open your browser to `http://localhost:4002` (or the specific page you want to view, e.g., `http://localhost:4002/2025/11/14/marco-roth.html`).
