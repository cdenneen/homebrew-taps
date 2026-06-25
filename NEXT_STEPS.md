# Next Steps

## Immediate next task

- Use `tailscale-app@1.70.0` on the Big Sur machine.

## Ordered task list

1. Install `tailscale-app@1.70.0` from the tap.
2. If needed, remove `tailscale-app@1.90.3` later if it is no longer useful.
3. Optionally add more versioned casks or README examples if more legacy apps are needed.

## Dependencies

- Network access is required when the user installs the cask from the tap.

## Validation steps

- Install via `brew install --cask cdenneen/taps/tailscale-app@1.70.0`.
- Launch on macOS 11.7.11 Big Sur.

## Recommended next-session starting point

- If more legacy software is needed, follow the same versioned-cask pattern in `Casks/`.
