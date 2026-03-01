# Tauri 2.0 Skills

Generic [Tauri 2.0](https://tauri.app/) development skills for AI coding assistants.
These skills teach standard Tauri project structure, IPC patterns, and sidecar
integration — not specific to any one Tauri app.

## Skills Included

| Skill | Description |
|-------|-------------|
| `tauri2-project-structure` | Standard Tauri 2.0 layout, Cargo conventions, plugin system |
| `tauri2-ipc-patterns` | Commands, events, invoke between Rust and frontend |
| `tauri2-sidecar-integration` | Managing sidecar processes: spawn, health check, communication |

## Install

### Claude Code

```bash
claude skill add https://github.com/michaeljabbour/amplifier-tauri-skill
```

### Manual Install

```bash
git clone https://github.com/michaeljabbour/amplifier-tauri-skill ~/skills/tauri
```

### Amplifier Instances

Add to your bundle's `tool-skills` config:

```yaml
tools:
  - module: tool-skills
    config:
      skills_dirs:
        - ~/dev/amplifier-tauri-skill
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
