#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────────────────────
# RTX Core Framework — One-Click Sync Script (Mac / Linux)
# https://github.com/PsProsen-Dev/RTXCoreFramework
#
# USAGE:
#   1. Save your personalized framework as: ~/RTXCoreFramework.md
#   2. Run: chmod +x sync.sh && ./sync.sh
#   3. Done! All your tools are now synced.
# ─────────────────────────────────────────────────────────────────────────────

set -e

SOURCE="$HOME/RTXCoreFramework.md"

# ── Check source file exists ──────────────────────────────────────────────────
if [ ! -f "$SOURCE" ]; then
    echo ""
    echo "❌ ERROR: Personalized framework not found at:"
    echo "   $SOURCE"
    echo ""
    echo "👉 Run the First-Boot Protocol in any AI agent first to generate your"
    echo "   personalized framework, save it to the path above, then re-run."
    echo ""
    exit 1
fi

echo ""
echo "⚡ RTX Core Framework — One-Click Sync Script"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📂 Source: $SOURCE"
echo ""

SYNCED=0
FAILED=0

sync_target() {
    local label="$1"
    local dest="$2"
    local dir
    dir="$(dirname "$dest")"

    if mkdir -p "$dir" 2>/dev/null && cp "$SOURCE" "$dest" 2>/dev/null; then
        printf "  ✅ %-20s → %s\n" "$label" "$dest"
        SYNCED=$((SYNCED + 1))
    else
        printf "  ⚠️  %-20s → FAILED (check permissions)\n" "$label"
        FAILED=$((FAILED + 1))
    fi
}

# ── Target Locations ──────────────────────────────────────────────────────────
sync_target "Gemini"           "$HOME/.gemini/GEMINI.md"
sync_target "Codex CLI"        "$HOME/.codex/AGENTS.md"
sync_target "Claude"           "$HOME/CLAUDE.md"
sync_target "AGENTS Fallback"  "$HOME/AGENTS.md"
sync_target "Cursor"           "$HOME/.cursor/rules/RTXCoreFramework.mdc"
sync_target "OpenCode"         "$HOME/.config/opencode/system-prompt.md"

# ── Summary ───────────────────────────────────────────────────────────────────
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Synced: $SYNCED tool(s)   ⚠️  Skipped: $FAILED tool(s)"
echo ""
echo "🚀 RTX Sync complete! Restart your AI tools to apply the new framework."
echo ""
