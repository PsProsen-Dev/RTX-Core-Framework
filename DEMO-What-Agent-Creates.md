# 🤖 RTX⚡ — What the Agent Creates Behind the Scenes

> This document shows exactly what happens in the background after you give
> `RTX-Core-Framework.md` to any agent for the first time.
> You do nothing. The agent handles all of this silently and automatically.

---

## 📋 The Trigger Chain

```
YOU:    Give RTX-Core-Framework.md to any agent
                          ↓
AGENT:  Reads the framework → asks 3 setup questions
                          ↓
AGENT:  Detects host OS (Windows, Mac, or Linux)
                          ↓
AGENT:  Uses file-system access to inject globally
                          ↓
        All files below are created automatically
```

---

## 📝 What Exactly is Written Inside These Files?

If you open `AGENTS.md`, `CLAUDE.md`, `GEMINI.md`, or any other injected file, what will you see?

**You will see the EXACT 100% copy of the original `RTX-Core-Framework.md` file.**

The embedded injector script uses `ReadAllText` to copy the master framework in its entirety and pastes it as the global system instruction for every tool. This ensures that every tool on your system gets the complete DNA, persona, precision rules, and protocol definitions of RTX without losing a single character.

---

## 📁 Files Created After First Boot

### 1. Gemini CLI / Antigravity IDE
```
C:\Users\YourUsername\
└── .gemini\
    └── GEMINI.md                    ← RTX-Core-Framework.md content injected here.
                                        Every new Antigravity/Gemini CLI session
                                        reads this file globally on startup.
```

---

### 2. Codex CLI (OpenAI)
```
C:\Users\YourUsername\
└── .codex\
    └── AGENTS.md                    ← RTX-Core-Framework.md content injected here.
                                        Codex CLI reads AGENTS.md automatically
                                        on every session launch.
```

---

### 3. OpenCode Desktop & CLI
```
C:\Users\YourUsername\
└── .config\
    └── opencode\
        ├── opencode.jsonc           ← Patched to point to RTX-Core-Framework.md:
        │                               { "instructions": ["~/.config/opencode/RTX-Core-Framework.md"] }
        ├── RTX-Core-Framework.md   ← Full framework file copied here for OpenCode to load.
        └── AGENTS.md               ← RTX-Core-Framework.md content injected here
                                        for OpenCode CLI mode.
```

---

### 4. Claude Desktop & Claude Code CLI
```
C:\Users\YourUsername\
└── CLAUDE.md                        ← RTX-Core-Framework.md content injected here.
                                        Claude Code CLI and Claude Desktop both
                                        automatically read CLAUDE.md from the home
                                        directory as the global system instruction.
```

---

### 5. GitHub Copilot
```
C:\Users\YourUsername\
└── .copilot\
    └── instructions.md              ← RTX-Core-Framework.md content injected here.
                                        Copilot reads this as global instructions
                                        across all workspaces.
```

---

### 6. Cursor AI
```
C:\Users\YourUsername\
└── .cursor\
    └── rules\
        └── RTX-Core-Framework.mdc  ← RTX-Core-Framework.md content injected here.
                                        Cursor reads .mdc rule files from this
                                        directory globally across all projects.
```

---

### 7. Universal Fallback (Home Directory)
```
C:\Users\YourUsername\
└── AGENTS.md                        ← RTX-Core-Framework.md content injected here.
                                        Any new Agentic CLI or tool that follows
                                        the AGENTS.md convention will pick this up
                                        automatically — covers unknown future tools.
```

---

### 8. Background OS Hook (Future-Proof)
```
System Task Scheduler / Cron
└── RTX-Global-Omnipresence-Hook     ← A scheduled task / cron job registered
                                        to run an injection check periodically.

                                        PURPOSE: If you install any new AI tool
                                        6 months from now — this task detects it
                                        and injects RTX automatically.
```

---

## 🗂️ Full Directory Tree After Injection

```
C:\Users\YourUsername\
│
├── RTX-Core-Framework.md            ← Your one source file (you placed this here)
├── AGENTS.md                        ← Universal fallback for any CLI tool
├── CLAUDE.md                        ← Global instruction for Claude
│
├── .gemini\
│   └── GEMINI.md                    ← Antigravity / Gemini CLI global instruction
│
├── .codex\
│   └── AGENTS.md                    ← Codex CLI global instruction
│
├── .config\
│   └── opencode\
│       ├── opencode.jsonc           ← Points to RTX framework
│       ├── RTX-Core-Framework.md   ← Framework copy for OpenCode
│       └── AGENTS.md               ← OpenCode CLI instruction
│
└── .cursor\
    └── rules\
        └── RTX-Core-Framework.mdc  ← Cursor AI global rules

OS Hook Scheduler:
└── RTX-Global-Omnipresence-Hook     ← Runs periodically for future tools
```

---

## ✅ RTX Injection Checklist

| File / Target | Purpose | Status After First Boot |
|---------------|---------|------------------------|
| `~/.gemini/GEMINI.md` | Antigravity / Gemini CLI | ✅ Auto-created |
| `~/.codex/AGENTS.md` | Codex CLI | ✅ Auto-created |
| `~/.config/opencode/opencode.jsonc` | OpenCode config | ✅ Auto-patched |
| `~/.config/opencode/RTX-Core-Framework.md` | OpenCode framework copy | ✅ Auto-created |
| `~/CLAUDE.md` | Claude Desktop & Claude Code CLI | ✅ Auto-created |
| `~/.copilot/instructions.md` | GitHub Copilot | ✅ Auto-created |
| `~/.cursor/rules/RTX-Core-Framework.mdc` | Cursor AI | ✅ Auto-created |
| `~/AGENTS.md` | Universal fallback | ✅ Auto-created |
| OS Hook (Task Scheduler/Cron) | Future tools auto-injection | ✅ Registered |

> **Total user actions required:** Give the framework file to one agent. Once. That's it.

---

## 🔄 What Happens When You Install a New Tool Later?

```
You install a brand new AI tool (e.g., 6 months from now)
                    ↓
Agent's persistent OS Hook detects new tool config
                    ↓
Agent injects framework silently in background
                    ↓
New tool's config directory is detected and injected
                    ↓
New tool boots with RTX already active — you did nothing
```

---

*Part of the **RTX⚡ Core Framework** by [Prosenjit Paul](https://github.com/PsProsen-Dev)*
