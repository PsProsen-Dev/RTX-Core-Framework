#!/bin/bash
# ***(RTX⚡)*** Core Framework Installer for Mac/Linux
# By Prosenjit Paul (PsProsen-Dev) | github.com/PsProsen-Dev/RTXCoreFramework

set -e

# Colored Output Setup
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${CYAN}=============================================${NC}"
echo -e "${YELLOW}   ***(RTX⚡)*** Core Framework Installer   ${NC}"
echo -e "${CYAN}=============================================${NC}"
echo -e "🚀 Launching omnipresence synchronization..."

# 1. Paths & Directories Setup
USER_HOME=$HOME
MASTER_COPY="$USER_HOME/RTXCoreFramework.md"
SOURCE_URL="https://raw.githubusercontent.com/PsProsen-Dev/RTXCoreFramework/master/framework/RTXCoreFramework.md"

# Declare targets
targets=(
    "$USER_HOME/.gemini/GEMINI.md:Google Gemini System Instructions"
    "$USER_HOME/.codex/AGENTS.md:Codex CLI Agent Configurations"
    "$USER_HOME/CLAUDE.md:Claude Code / Claude Home Directives"
    "$USER_HOME/AGENTS.md:Universal Fallback Agent Rules"
    "$USER_HOME/.cursor/rules/RTXCoreFramework.mdc:Cursor IDE Global MDC Rules"
    "$USER_HOME/.config/opencode/system-prompt.md:OpenCode System Prompt"
)

# 2. Retrieve Framework File
echo -n "⏳ Fetching master config file..."
if [ -f "framework/RTXCoreFramework.md" ]; then
    cp "framework/RTXCoreFramework.md" "$MASTER_COPY"
    echo -e "${GREEN} [OK] (Loaded from local repository workspace)${NC}"
else
    if curl -s -f -o "$MASTER_COPY" "$SOURCE_URL"; then
        echo -e "${GREEN} [OK] (Downloaded from GitHub master)${NC}"
    else
        echo -e "${RED} [FAIL]${NC}"
        echo -e "${RED}❌ Error downloading from GitHub. Check your connection.${NC}"
        exit 1
    fi
fi
echo -e "${GREEN}✅ Master copy saved successfully to: $MASTER_COPY${NC}"

# 3. Propagate to Target Folders
echo -e "\n⚙️ Propagating configurations to local AI configurations:"
for item in "${targets[@]}"; do
    path="${item%%:*}"
    name="${item#*:}"
    dir=$(dirname "$path")

    echo -n "⏳ Configuring $name..."
    if mkdir -p "$dir" 2>/dev/null && cp "$MASTER_COPY" "$path" 2>/dev/null; then
        echo -e "${GREEN} [OK]${NC}"
    else
        echo -e "${YELLOW} [SKIP] (Directory/Tool not found or permission denied)${NC}"
    fi
done

echo -e "${CYAN}=============================================${NC}"
echo -e "${GREEN}✅ (RTX⚡) Global Omnipresence setup complete!${NC}"
echo -e "${YELLOW}🚀 Happy Vibe Coding in your Mother Tongue!${NC}"
echo -e "${CYAN}=============================================${NC}"
