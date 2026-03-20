#!/bin/bash
set -euo pipefail

# ============================================================
#  release.sh - Release a new version of intern-skills
#  Usage:
#    ./release.sh patch   # 1.0.0 -> 1.0.1
#    ./release.sh minor   # 1.0.0 -> 1.1.0
#    ./release.sh major   # 1.0.0 -> 2.0.0
#    ./release.sh 2.3.1   # exact version
# ============================================================

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
VERSION_FILE="$ROOT_DIR/version.txt"
MANIFEST_FILE="$ROOT_DIR/manifest.json"
SKILLS_DIR="$ROOT_DIR/skills"
ZIP_DIR="$ROOT_DIR/skills_zip"

# ---- Colors ----
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

log()   { echo -e "${GREEN}[✓]${NC} $1"; }
warn()  { echo -e "${YELLOW}[!]${NC} $1"; }
error() { echo -e "${RED}[✗]${NC} $1" >&2; exit 1; }
info()  { echo -e "${CYAN}[i]${NC} $1"; }

# ---- Read current version ----
CURRENT_VERSION=$(tr -d '[:space:]' < "$VERSION_FILE")
info "Current version: ${CYAN}$CURRENT_VERSION${NC}"

IFS='.' read -r MAJOR MINOR PATCH <<< "$CURRENT_VERSION"

# ---- Compute new version ----
BUMP="${1:-}"

if [[ -z "$BUMP" ]]; then
  error "Usage: ./release.sh <patch|minor|major|x.y.z>"
fi

case "$BUMP" in
  patch) NEW_VERSION="$MAJOR.$MINOR.$((PATCH + 1))" ;;
  minor) NEW_VERSION="$MAJOR.$((MINOR + 1)).0" ;;
  major) NEW_VERSION="$((MAJOR + 1)).0.0" ;;
  *)
    if [[ "$BUMP" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
      NEW_VERSION="$BUMP"
    else
      error "Invalid argument: '$BUMP'. Use patch, minor, major, or x.y.z"
    fi
    ;;
esac

info "New version:     ${CYAN}$NEW_VERSION${NC}"
echo ""

# ---- Step 1: Update version.txt ----
echo "$NEW_VERSION" > "$VERSION_FILE"
log "Updated version.txt"

# ---- Step 2: Update manifest.json ----
if command -v jq &> /dev/null; then
  tmp=$(mktemp)
  jq --arg v "$NEW_VERSION" '.version = $v' "$MANIFEST_FILE" > "$tmp" && mv "$tmp" "$MANIFEST_FILE"
else
  sed -i.bak "s/\"version\": \"$CURRENT_VERSION\"/\"version\": \"$NEW_VERSION\"/" "$MANIFEST_FILE"
  rm -f "$MANIFEST_FILE.bak"
fi
log "Updated manifest.json"

# ---- Step 3: Rebuild zip files ----
info "Rebuilding skill zip files..."
mkdir -p "$ZIP_DIR"

for role_dir in "$SKILLS_DIR"/*/; do
  role_name=$(basename "$role_dir")
  zip_file="$ZIP_DIR/$role_name.zip"

  rm -f "$zip_file"
  (cd "$SKILLS_DIR" && zip -r -q "$zip_file" "$role_name"/)
  log "Packed ${CYAN}$role_name.zip${NC}"
done

# ---- Step 4: Git operations ----
echo ""
info "Staging changes..."
cd "$ROOT_DIR"
git add -A

warn "Ready to commit & tag version ${CYAN}v$NEW_VERSION${NC}"
read -rp "Proceed with commit and tag? [y/N] " confirm

if [[ "$confirm" =~ ^[Yy]$ ]]; then
  git commit -m "release: v$NEW_VERSION"
  git tag -a "v$NEW_VERSION" -m "Release v$NEW_VERSION"
  log "Committed and tagged ${CYAN}v$NEW_VERSION${NC}"

  read -rp "Push to remote (with tags)? [y/N] " push_confirm
  if [[ "$push_confirm" =~ ^[Yy]$ ]]; then
    git push && git push --tags
    log "Pushed to remote"
  else
    warn "Skipped push. Run manually:"
    echo "  git push && git push --tags"
  fi
else
  warn "Skipped commit. Changes are staged — commit manually when ready."
fi

echo ""
log "Release ${CYAN}v$NEW_VERSION${NC} done!"
