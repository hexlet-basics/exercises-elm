#!/usr/bin/env bash

elm make Main.elm --output=elm.js >/dev/null 2>&1 || { echo "Compilation failed"; exit 1; }

if ! grep -q "Hello, World!" elm.js; then
  echo "Expected output 'Hello, World!' not found"
  exit 1
fi
