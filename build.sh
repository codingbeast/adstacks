#!/bin/bash
# Enable error abort
set -e

echo "=== Downloading Flutter SDK ==="
git clone https://github.com/flutter/flutter.git -b stable --depth 1 _flutter

echo "=== Configuring Flutter PATH ==="
export PATH="$PATH:`pwd`/_flutter/bin"

echo "=== Checking Flutter Version ==="
flutter --version

echo "=== Building Flutter Web ==="
flutter build web --release --web-renderer canvaskit

echo "=== Build Complete ==="
