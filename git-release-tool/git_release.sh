#!/bin/bash
#auther : Shehan Kaushalya
#description: Git & Release Automation Tool
#date:18/12/2025

CURRENT_BRANCH=$(git branch --show-current)

if [[ $CURRENT_BRANCH == "main" ]]; then
  echo "Direct commits to main are not allowed"
  exit 1
fi

if ! git diff --quiet; then
  echo "Uncommitted changes detected"
  read -p "Enter commit message: " MSG
  [[ -z $MSG ]] && { echo "Empty commit message"; exit 1; }
  git add .
  git commit -m "$MSG"
fi

read -p "Enter release version (vX.Y.Z): " VERSION

if ! [[ $VERSION =~ ^v[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "Invalid version format"
  exit 1
fi

git tag -a "$VERSION" -m "Release $VERSION"
git push origin "$CURRENT_BRANCH"
git push origin "$VERSION"

echo "Release $VERSION completed"

