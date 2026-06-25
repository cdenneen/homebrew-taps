# Project State

## Current goals

- Maintain a personal Homebrew tap with version-pinned formulae and casks.
- Add a Big Sur-compatible Tailscale app cask for version 1.70.0.

## Current status

- Versioned Tailscale casks are present under `Casks/` and pushed to `main`.
- `tailscale-app@1.70.0` is the preferred Big Sur target after `1.90.3` proved too new in practice.

## Active work stream

- None.

## Recent accomplishments

- Inspected existing tap structure and existing versioned cask pattern.
- Pulled the official Tailscale 1.90.3 and 1.70.0 macOS package checksums.
- Published versioned Tailscale casks to GitHub.

## Current blockers

- None.

## Known risks

- Homebrew cask behavior can change over time; a future audit may require minor metadata adjustments.
- Tailscale's published docs and actual runtime minimum macOS version do not appear perfectly aligned for newer builds.

## Important assumptions

- `tailscale-app@1.70.0` should remain a standalone versioned cask rather than replacing the current upstream Tailscale cask.
