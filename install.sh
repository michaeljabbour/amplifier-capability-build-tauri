#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS=(tauri2-project-structure tauri2-ipc-patterns tauri2-sidecar-integration)

echo "Installing tauri skills from $REPO_DIR"

for target_dir in "$HOME/.amplifier/skills" "$HOME/.claude/skills"; do
  if [ -d "$(dirname "$target_dir")" ]; then
    for skill in "${SKILLS[@]}"; do
      mkdir -p "$target_dir/$skill"
      ln -sf "$REPO_DIR/$skill/SKILL.md" "$target_dir/$skill/SKILL.md"
      echo "  $target_dir/$skill/SKILL.md -> $REPO_DIR/$skill/SKILL.md"
    done
  else
    echo "  Skipped $target_dir (parent dir does not exist)"
  fi
done

echo "Done. Update anytime with: cd $REPO_DIR && git pull"
