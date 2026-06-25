# Architecture

## System architecture

- Personal Homebrew tap repository with standard `Formula/` and `Casks/` directories.

## Key components

- `Formula/`: versioned or unversioned Homebrew formulae.
- `Casks/`: versioned macOS application installers.
- `README.md`: basic usage instructions for tap consumers.

## Data flow

- Homebrew resolves the tap from GitHub.
- A selected formula or cask downloads its upstream artifact directly from the vendor URL.
- Homebrew installs and manages the artifact locally on the user's machine.

## Major dependencies

- GitHub for tap hosting.
- Homebrew for package resolution and installation.
- Upstream vendor package servers for cask payloads.

## Integration points

- GitHub-hosted tap name: `cdenneen/taps`
- Tailscale package server for archived macOS installers.

## Design constraints

- Prefer version-pinned entries for legacy compatibility cases.
- Keep casks explicit about macOS version support and upstream package identity.
