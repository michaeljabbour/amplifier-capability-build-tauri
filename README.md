# Build with Tauri

Build a desktop app whose frontend and sidecar agree.

Developers working across a Tauri webview, Rust shell, and optional companion process. Use when creating or repairing Tauri 2 project structure, IPC, permissions, or sidecar lifecycle.

## Install the portable method

```sh
python3 scripts/capability.py doctor
python3 scripts/capability.py install --dest ~/.agents/skills
```

Keep the complete `skills/build-tauri` folder together. Installation copies only that method, references, and license; it starts no service and installs no runtime. Use a different skills-parent path for your host.

## Choose the mode

- **Structure** — The app layout, target platforms, or build boundary is unclear. A versioned map of frontend, Rust shell, capabilities, and packaged binaries.
- **IPC** — A frontend action needs Rust data, progress, or an error. A typed command/channel/event contract with lifecycle and permission checks.
- **Sidecar** — A companion process must start, serve, recover, and stop. An explicit readiness, ownership, failure, and cleanup contract.

## What was consolidated

[Migration map](docs/MIGRATION.md) records the original source paths and current roles. Primary Git history, native engines, tests, examples, and evaluation assets remain in this checkout. [Native guide](docs/NATIVE-README.md) preserves the original project documentation; old install URLs and runtime claims there are historical and need current verification. [Validation](docs/VALIDATION.md) records actual checks and limits.

## Build the local site

```sh
python3 scripts/capability.py build
python3 scripts/capability.py check
```

Open `_site/index.html` or serve `_site` with a local static server. The downloadable ZIP is built from canonical method bytes. The fictional before/after example illustrates intended judgment; it is not a measured improvement. Nothing has been published or renamed remotely.
