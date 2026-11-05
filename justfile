# IllyriaWiki – justfile for common documentation tasks
# Run `just` to see all available recipes
#
# Cross-platform: `just` uses sh on Unix and PowerShell on Windows.

[windows]
set shell := ["powershell.exe", "-NoProfile", "-Command"]

# Default recipe (shows this list)
_default:
    @just --list

# Alias kept for muscle memory
alias list := _default

# Build the wiki
build:
    mdbook build

# Build and open in browser
[unix]
open: build
    xdg-open book/index.html >/dev/null 2>&1 || open book/index.html >/dev/null 2>&1 || echo "Open book/index.html manually"

# Build and open in browser
[windows]
open: build
    Start-Process book/index.html

# Serve with live-reload on port 3000
serve:
    mdbook serve --open --port 3000

# Lint all Markdown files
lint:
    npx markdownlint-cli2 --config .markdownlint.json "src/**/*.md"

# Fix linting issues automatically
lint-fix:
    npx markdownlint-cli2 --config .markdownlint.json --fix "src/**/*.md"

# Run link checker (requires lychee: cargo install lychee)
check-links:
    lychee --config lychee.toml "src/**/*.md"

# Full validation: lint + build
check: lint build

# Clean build artifacts
clean:
    mdbook clean

# Setup dependencies (requires cargo and npm)
[unix]
setup:
    cargo install mdbook
    npm install -g markdownlint-cli2
    echo "Setup complete!"

# Setup dependencies (requires cargo and npm)
[windows]
setup:
    cargo install mdbook
    npm install -g markdownlint-cli2
    Write-Host "Setup complete!"

# Clone IllyriaPlus as sibling (for wiki-sync reference)
[unix]
setup-reference:
    #!/usr/bin/env sh
    if [ ! -d "../IllyriaPlus" ]; then
        git clone git@github.com:XodiumSoftware/IllyriaPlus.git ../IllyriaPlus
        echo "IllyriaPlus cloned as sibling directory"
    else
        echo "IllyriaPlus already exists"
    fi

# Clone IllyriaPlus as sibling (for wiki-sync reference)
[windows]
setup-reference:
    if (-not (Test-Path "../IllyriaPlus")) { git clone git@github.com:XodiumSoftware/IllyriaPlus.git ../IllyriaPlus; Write-Host "IllyriaPlus cloned as sibling directory" } else { Write-Host "IllyriaPlus already exists" }
