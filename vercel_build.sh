#!/bin/bash
set -e

echo "🚀 Setting up Flutter for Vercel build..."

git clone https://github.com/flutter/flutter.git -b stable --depth 1
export PATH="$PATH:pwd/flutter/bin"

flutter --version
flutter pub get
flutter build web --release

echo "✅ Flutter web build complete — output in build/web"