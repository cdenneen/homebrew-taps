# Handoff

## Project summary

Personal Homebrew tap repository for custom formulae and version-pinned casks.

## Current status

- Added versioned casks: `Casks/tailscale-app@1.90.3.rb` and `Casks/tailscale-app@1.70.0.rb`
- Created the required project memory files described by repo instructions.
- `1.90.3` proved too new for macOS 11.7.11 in practice, so `1.70.0` was added as the Big Sur target.

## What was completed

- Cloned the remote tap repo.
- Matched the existing versioned-cask style.
- Used Tailscale's archived macOS package URL and official checksums for versions `1.90.3` and `1.70.0`.

## What remains

- Confirm `1.70.0` launches successfully on the Big Sur machine.

## Open issues

- Tailscale's published docs and actual runtime minimum macOS version are not perfectly aligned for newer builds.

## Important files

- `Casks/tailscale-app@1.90.3.rb`
- `Casks/tailscale-app@1.70.0.rb`
- `README.md`
- `PROJECT_STATE.md`
- `NEXT_STEPS.md`
- `DECISIONS.md`

## Current branch information

- Branch: `main`

## Exact next action

- Use `brew install --cask cdenneen/taps/tailscale-app@1.70.0` on the Big Sur machine.
