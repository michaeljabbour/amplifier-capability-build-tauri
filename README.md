# amplifier-tauri-skill

Generic [Tauri 2.0](https://tauri.app/) development skills for AI coding assistants. These skills teach standard Tauri project structure, IPC patterns, and sidecar integration -- not specific to any one Tauri app.

## Skills Included

| Skill | Description |
|-------|-------------|
| `tauri2-project-structure` | Standard Tauri 2.0 layout, Cargo conventions, plugin system |
| `tauri2-ipc-patterns` | Commands, events, invoke between Rust and frontend |
| `tauri2-sidecar-integration` | Managing sidecar processes: spawn, health check, communication |

## Install from GitHub

### Amplifier (CLI or Desktop)

**Option A -- Git skill source (recommended, survives updates):**

Add to your bundle YAML or `desktop.yaml`:

```yaml
tools:
  - module: tool-skills
    config:
      skills:
        - "git+https://github.com/michaeljabbour/amplifier-tauri-skill@main"
```

Skills are fetched from GitHub automatically. This config lives in your bundle
file, not in the Amplifier cache, so it survives `amplifier update`.

**Option B -- Clone and symlink for global access:**

```bash
# 1. Clone
git clone https://github.com/michaeljabbour/amplifier-tauri-skill.git ~/dev/amplifier-tauri-skill

# 2. Install into ~/.amplifier/skills/ (survives all updates)
mkdir -p ~/.amplifier/skills
for skill in tauri2-project-structure tauri2-ipc-patterns tauri2-sidecar-integration; do
  mkdir -p ~/.amplifier/skills/$skill
  ln -sf ~/dev/amplifier-tauri-skill/$skill/SKILL.md ~/.amplifier/skills/$skill/SKILL.md
done
```

Now any Amplifier session can `load_skill("tauri2-ipc-patterns")` from any
project. Update skills anytime with `cd ~/dev/amplifier-tauri-skill && git pull`.

> **Why file symlinks?** `pathlib.glob("**")` doesn't follow symlinked
> directories, but follows file symlinks fine.

### Kepler Desktop

Already configured -- skills are wired into Kepler's `desktop.yaml` via the
`behaviors/skills.yaml` behavior bundle. Nothing to install.

### Claude Code

```bash
claude skill add https://github.com/michaeljabbour/amplifier-tauri-skill
```

Or reference individual skills directly:

```
Read ~/dev/amplifier-tauri-skill/tauri2-ipc-patterns/SKILL.md for Tauri 2.0
IPC patterns, then review my invoke handler.
```

### Other Tools (Cursor, Warp, etc.)

```bash
git clone https://github.com/michaeljabbour/amplifier-tauri-skill.git
```

Point your tool at the `SKILL.md` files in each subdirectory.

## Related Skill Repos

These three repos layer on top of each other:

```
amplifier-skill            -- Core Amplifier patterns (delegation, CLI, agents)
amplifier-kepler-skill     -- Kepler-specific (desktop distribution)
amplifier-tauri-skill      -- Generic Tauri 2.0 (this repo)
```

Install all three for full-stack Kepler development:

```yaml
# In your bundle YAML (git sources -- always up to date)
tools:
  - module: tool-skills
    config:
      skills:
        - "git+https://github.com/michaeljabbour/amplifier-skill@main"
        - "git+https://github.com/michaeljabbour/amplifier-kepler-skill@main"
        - "git+https://github.com/michaeljabbour/amplifier-tauri-skill@main"
```

Or clone and symlink all three globally:

```bash
mkdir -p ~/.amplifier/skills

# amplifier-skill (single skill at repo root)
mkdir -p ~/.amplifier/skills/amplifier-skill
ln -sf ~/dev/amplifier-skill/SKILL.md ~/.amplifier/skills/amplifier-skill/SKILL.md

# kepler skills (4 skills)
for skill in kepler-architecture kepler-dev-setup kepler-sidecar-patterns kepler-bundle-composition; do
  mkdir -p ~/.amplifier/skills/$skill
  ln -sf ~/dev/amplifier-kepler-skill/$skill/SKILL.md ~/.amplifier/skills/$skill/SKILL.md
done

# tauri skills (3 skills)
for skill in tauri2-project-structure tauri2-ipc-patterns tauri2-sidecar-integration; do
  mkdir -p ~/.amplifier/skills/$skill
  ln -sf ~/dev/amplifier-tauri-skill/$skill/SKILL.md ~/.amplifier/skills/$skill/SKILL.md
done
```

## Repository Layout

```text
.
├── README.md
├── .gitignore
├── tauri2-project-structure/
│   └── SKILL.md
├── tauri2-ipc-patterns/
│   └── SKILL.md
└── tauri2-sidecar-integration/
    └── SKILL.md
```
