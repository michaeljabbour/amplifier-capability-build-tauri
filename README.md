# Tauri 2.0 Skills

Generic [Tauri 2.0](https://tauri.app/) development skills for AI coding assistants.
These skills teach standard Tauri project structure, IPC patterns, and sidecar
integration -- not specific to any one Tauri app.

## Skills Included

| Skill | Description |
|-------|-------------|
| `tauri2-project-structure` | Standard Tauri 2.0 layout, Cargo conventions, plugin system |
| `tauri2-ipc-patterns` | Commands, events, invoke between Rust and frontend |
| `tauri2-sidecar-integration` | Managing sidecar processes: spawn, health check, communication |

## Install

### Global Installation (All Amplifier Instances)

To make these skills available to **every** Amplifier instance (CLI, Desktop,
any tool) regardless of which project you're working in, symlink each skill
directory into `~/.amplifier/skills/`:

```bash
# Clone the repo (if you haven't already)
git clone https://github.com/michaeljabbour/amplifier-tauri-skill.git ~/dev/amplifier-tauri-skill

# Create the global skills directory
mkdir -p ~/.amplifier/skills

# Symlink each skill directory
ln -sf ~/dev/amplifier-tauri-skill/tauri2-project-structure ~/.amplifier/skills/tauri2-project-structure
ln -sf ~/dev/amplifier-tauri-skill/tauri2-ipc-patterns ~/.amplifier/skills/tauri2-ipc-patterns
ln -sf ~/dev/amplifier-tauri-skill/tauri2-sidecar-integration ~/.amplifier/skills/tauri2-sidecar-integration
```

After this, any Amplifier session can run `load_skill("tauri2-ipc-patterns")`
from any project directory.

### Claude Code

```bash
claude skill add https://github.com/michaeljabbour/amplifier-tauri-skill
```

You can also point Claude Code at individual skill files:
```
Read ~/dev/amplifier-tauri-skill/tauri2-ipc-patterns/SKILL.md for Tauri 2.0
IPC patterns, then review my invoke handler.
```

### Bundle YAML Configuration

Add to your project's bundle YAML to make skills available per-project:

```yaml
tools:
  - module: tool-skills
    config:
      skills_dirs:
        - ~/dev/amplifier-tauri-skill
```

### Manual Install

```bash
git clone https://github.com/michaeljabbour/amplifier-tauri-skill ~/dev/amplifier-tauri-skill
# Reference the SKILL.md files directly in your tool's context
```

## Relationship to Other Skill Repos

These three skill repositories layer on top of each other:

```
amplifier-skill            — Core Amplifier patterns (delegation, CLI, agents)
amplifier-kepler-skill     — Kepler-specific skills (desktop distribution)
amplifier-tauri-skill      — Generic Tauri 2.0 development skills (this repo)
```

- **`amplifier-skill`** provides universal Amplifier knowledge: how delegation
  works, CLI discovery, agent catalog, module contracts.
- **`amplifier-kepler-skill`** provides Kepler-specific knowledge: concentric
  rings architecture, bundle composition, sidecar lifecycle, desktop
  distribution concerns.
- **`amplifier-tauri-skill`** (this repo) provides generic Tauri 2.0 knowledge:
  project structure, IPC patterns, sidecar integration. Not Kepler-specific --
  useful for any Tauri app.

To install all three globally:

```bash
mkdir -p ~/.amplifier/skills

# Core Amplifier skill
ln -sf ~/dev/amplifier-skill ~/.amplifier/skills/amplifier-skill

# Kepler skills
ln -sf ~/dev/amplifier-kepler-skill/kepler-architecture ~/.amplifier/skills/kepler-architecture
ln -sf ~/dev/amplifier-kepler-skill/kepler-dev-setup ~/.amplifier/skills/kepler-dev-setup
ln -sf ~/dev/amplifier-kepler-skill/kepler-sidecar-patterns ~/.amplifier/skills/kepler-sidecar-patterns
ln -sf ~/dev/amplifier-kepler-skill/kepler-bundle-composition ~/.amplifier/skills/kepler-bundle-composition

# Tauri skills
ln -sf ~/dev/amplifier-tauri-skill/tauri2-project-structure ~/.amplifier/skills/tauri2-project-structure
ln -sf ~/dev/amplifier-tauri-skill/tauri2-ipc-patterns ~/.amplifier/skills/tauri2-ipc-patterns
ln -sf ~/dev/amplifier-tauri-skill/tauri2-sidecar-integration ~/.amplifier/skills/tauri2-sidecar-integration
```

## Repository Layout

```text
.
├── README.md
├── tauri2-project-structure/
│   └── SKILL.md
├── tauri2-ipc-patterns/
│   └── SKILL.md
└── tauri2-sidecar-integration/
    └── SKILL.md
```
