# Next Steps

## Immediate next task

- Verify the new cask file parses cleanly and provide the tap/install commands.

## Ordered task list

1. Run a lightweight syntax check on `Casks/tailscale-app@1.90.3.rb`.
2. Review `git diff` for the new cask and memory files.
3. Share the exact `brew tap` and `brew install --cask` commands.

## Dependencies

- Network access is required when the user installs the cask from the tap.

## Validation steps

- `ruby -c Casks/tailscale-app@1.90.3.rb`
- Optional: `brew audit --cask --tap cdenneen/taps tailscale-app@1.90.3`

## Recommended next-session starting point

- If more legacy software is needed, follow the same versioned-cask pattern in `Casks/`.
