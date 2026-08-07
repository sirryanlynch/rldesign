#!/bin/bash
# Double-click this file to preview the portfolio locally.
# It serves this folder over http:// so all embedded tools load reliably,
# then opens it in your browser. Leave the Terminal window open while viewing;
# close it (or press Ctrl-C) when you're done.

cd "$(dirname "$0")" || exit 1
PORT=8756

# Pick python
PY="$(command -v python3 || command -v python)"
if [ -z "$PY" ]; then
  echo "Python isn't installed. Install it from https://www.python.org/downloads/ and try again."
  read -r -p "Press return to close." _
  exit 1
fi

echo "Serving your portfolio at  http://localhost:$PORT"
echo "Opening your browser…  (keep this window open while you review)"
( sleep 1; open "http://localhost:$PORT/index.html" ) &

# Serve; if the port is busy, bump it once
"$PY" -m http.server "$PORT" 2>/dev/null || {
  PORT=8757
  echo "Port was busy — using http://localhost:$PORT instead"
  ( sleep 1; open "http://localhost:$PORT/index.html" ) &
  "$PY" -m http.server "$PORT"
}
