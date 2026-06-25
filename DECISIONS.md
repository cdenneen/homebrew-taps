# Decisions

## 2026-06-25

### Context

The tap needed a way to install a Tailscale macOS release that still supports macOS 11 Big Sur.

### Decision

Add a versioned cask named `tailscale-app@1.90.3` that installs the archived standalone macOS `.pkg` from Tailscale's package server.

### Rationale

- The repository already uses versioned artifact names for compatibility cases.
- The upstream Homebrew cask uses the `tailscale-app` token for the macOS GUI app, so matching that naming avoids ambiguity with any `tailscale` formula.
- Version 1.90.3 initially looked like the last likely Big Sur-compatible target based on later support-floor notes.

### Alternatives considered

- Add `tailscale@1.90.3` as a new token.
- Replace the unversioned upstream cask behavior.
- Install directly from the upstream package URL without using the tap.

### Consequences

- Users can install this exact legacy Tailscale build through the tap with `brew install --cask`.
- Future legacy app pins can follow the same versioned-cask pattern.

### Failed approaches / rejected designs

- None during the initial change.

## 2026-06-25

### Context

The `tailscale-app@1.90.3` cask installed successfully but the app failed to launch on macOS 11.7.11 Big Sur, reporting that macOS 12.4 or later was required.

### Decision

Add a second versioned cask named `tailscale-app@1.70.0` for older macOS installs.

### Rationale

- Tailscale's changelog explicitly states that around August 15, 2024, the latest version would require macOS 11 Big Sur or later, which is consistent with the `1.70.0` generation.
- The runtime error on `1.90.3` is stronger evidence than the later docs for practical Big Sur compatibility.
- Keeping both casks makes the tap useful for both Monterey-era and Big Sur-era installs.

### Alternatives considered

- Replace `tailscale-app@1.90.3` with `tailscale-app@1.70.0`.
- Try another intermediate version such as `1.76.x`.

### Consequences

- Big Sur users get a more conservative install target.
- The tap now contains two Tailscale pins for different macOS generations.

### Failed approaches / rejected designs

- `tailscale-app@1.90.3` for Big Sur, because it launches with a macOS 12.4 minimum requirement in practice.
