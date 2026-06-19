# Changelog

All notable changes to the RTX-Core-Framework will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.3.0] - 2026-06-19
### Added
- **Security & Integrity Notice:** Added a warning in the framework to address prompt injection vulnerabilities, instructing users to only use the official repo.
- **Input Validation:** Added a rule for agents to validate user input (name) to prevent path traversal and script injection.
- **Visual Architecture Diagram:** Added a Mermaid flowchart to the README to visualize the First-Boot and global propagation process.
- **Comparison Table:** Added a feature comparison table between RTX, Custom Instructions, and LocalLLMs.
- **Troubleshooting FAQ:** Added a comprehensive FAQ for issues like language drift, Cursor/Codex integration, and uninstallation.
- **Uninstall Guide:** Explicit OS paths provided to remove the framework globally.
- **Multilingual Support:** Added `README.hi.md` (Hindi) to prove the "mother tongue-first" concept natively.
- **GitHub Templates:** Added structured `.github` templates for bug reports, feature requests, and pull requests with an RTX compliance checklist.
- **Persona Examples:** Added 3 new pre-compiled examples: Python Developer (Ananya), Web Developer (Vishal), and Data Analyst (Dhruv).

### Changed
- **Branding:** Renamed all references of "RTX Core Framework" to "(RTX⚡) Core Framework" and added emojis.
- **File Structure:** Renamed `framework/RTX-Core-Framework.md` to `framework/RTXCoreFramework.md`.

## [1.2.0] - 2026-06-19
### Changed
- **Propagation Flow:** Restored and clarified the autonomous global propagation functionality in the framework.
- **README Simplification:** Updated the "What Happens After" section to clarify the single-file download and autonomous injection flow.

### Removed
- **External Scripts:** Removed `sync.ps1` and `sync.sh` completely to enforce the "Zero Prompt, Single File" golden rule.

## [1.1.0] - 2026-06-18
### Added
- **Precision Protocol (Section 6):** Added relentless review checklists, structured architecture spec requirements, and Native-Tongue Assertion prompts for automated tests.
- **Autonomous Setup Logic:** Removed manual installation scripts (PowerShell). The agent now uses internal OS commands to dynamically create a personalized master framework copy in the home directory before propagating.
- **Language Integrity Rule:** Enforced pure English integrity for the core framework documentation, pushing the translated language blend strictly to the agent's interaction output.
- **Visuals:** Added a dynamic Hero Banner and Engagement Badges to the README.

### Changed
- **Terminology:** Replaced malware-adjacent terms (e.g., "Infection Mode") with professional equivalents like "Global Sync Protocol" and "one-time opt-in authorization" to prevent security flags.
- **Documentation Cleanup:** Removed hardcoded, third-party brand names (Claude, ChatGPT, etc.) from the README to ensure neutral, generic instructions.
- **Link Fixes:** Fixed broken Wiki URLs to match the correct repository namespace (`RTXCoreFramework`).
- **Capability Disclosure:** Added a transparent disclaimer that autonomous file-system propagation only applies to Agentic CLIs/IDEs, requiring manual copy-paste for Web-UI chat bots.

### Removed
- **External Scripts:** Removed the embedded `RTX-Global-Injector.ps1` script entirely to eliminate external dependencies and malware risks.

## [1.0.0] - 2026-06-16
### Added
- Initial release of the RTX (Reasoning, Thinking, Xtreme) Core Framework.
- Dynamic 70% Romanized native language + 30% English blending logic.
- The 3-Step Universal Output Protocol.
- Agent identity aliasing and dynamic persona injection.
