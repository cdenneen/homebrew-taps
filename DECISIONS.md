# Decisions

## 2026-06-25

### Context

The tap needed a way to install a Tailscale macOS release that still supports macOS 11 Big Sur.

### Decision

Add a versioned cask named `tailscale-app@1.90.3` that installs the archived standalone macOS `.pkg` from Tailscale's package server.

### Rationale

- The repository already uses versioned artifact names for compatibility cases.
- The upstream Homebrew cask uses the `tailscale-app` token for the macOS GUI app, so matching that naming avoids ambiguity with any `tailscale` formula.
- Version 1.90.3 is the intended Big Sur-compatible target for this use case.

### Alternatives considered

- Add `tailscale@1.90.3` as a new token.
- Replace the unversioned upstream cask behavior.
- Install directly from the upstream package URL without using the tap.

### Consequences

- Users can install this exact legacy Tailscale build through the tap with `brew install --cask`.
- Future legacy app pins can follow the same versioned-cask pattern.

### Failed approaches / rejected designs

- None during this change.
