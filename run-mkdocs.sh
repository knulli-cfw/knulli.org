#!/bin/bash

# Project paths
PROJECT_DIR=$(pwd)
SITE_DIR="$PROJECT_DIR/site"
PORT=8000

echo "🚀 Starting KNULLI Wiki development environment..."

# 1. Ensure the site directory exists
mkdir -p "$SITE_DIR"

# 2. Start the Python webserver in the background
# We bind to 0.0.0.0 to make it accessible from other devices in the LAN
python3 -m http.server $PORT --directory "$SITE_DIR" --bind 0.0.0.0 > /dev/null 2>&1 &
SERVER_PID=$!

# Get the local IP address to show a clickable link
LOCAL_IP=$(hostname -I | awk '{print $1}')

echo "🌐 Webserver is reachable at:"
echo "   Local:  http://localhost:$PORT"
echo "   LAN:    http://$LOCAL_IP:$PORT"
echo "   (PID: $SERVER_PID)"
echo ""
echo "👁️  Watching for file changes... (Press CTRL+C to stop)"

# 3. Cleanup function
trap "echo 'Stopping...'; kill $SERVER_PID; exit" SIGINT SIGTERM

# 4. Watcher loop using 'entr'
find docs/ mkdocs.yml | entr -c sh -c "pipenv run mkdocs build && echo '✅ Build successful at \$(date +%H:%M:%S)'"
