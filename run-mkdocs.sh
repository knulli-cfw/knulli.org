#!/bin/bash

# Project paths
PROJECT_DIR=$(pwd)
SITE_DIR="$PROJECT_DIR/site"

echo "🚀 Starting KNULLI Wiki development environment..."

# 1. Ensure the site directory exists so the webserver has something to serve
mkdir -p "$SITE_DIR"

# 2. Start the Python webserver in the background (Port 8000)
# Standard output is redirected to /dev/null to keep the terminal clean
python3 -m http.server 8000 --directory "$SITE_DIR" > /dev/null 2>&1 &
SERVER_PID=$!

echo "🌐 Webserver is running at http://localhost:8000 (PID: $SERVER_PID)"
echo "👁️  Watching for file changes... (Press CTRL+C to stop)"

# 3. Cleanup function: Kill the background webserver when the script is terminated
trap "echo 'Stopping...'; kill $SERVER_PID; exit" SIGINT SIGTERM

# 4. Watcher loop using 'entr'
# We use single quotes for the sh -c string to prevent the local shell
# from evaluating $(date) before entr even starts.
find docs/ mkdocs.yml | entr -c sh -c 'pipenv run mkdocs build && echo "✅ Build successful at $(date +%H:%M:%S)"'
