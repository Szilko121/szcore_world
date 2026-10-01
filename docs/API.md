# szcore_world API reference

Generated from the 1.4.0-rc1 source tree.

## Exports

- `GetDensity`
- `GetProfile`
- `IsModelBlacklisted`
- `SetDensity`
- `SetProfile`

## Network events

- `szcore_world:setDensity`
- `szcore_world:setProfile`

## Local/event handlers

- `entityCreating`

## Commands

- No direct `RegisterCommand` entry detected.

## Integration guidance

Use exports for stable cross-resource integration. Treat raw net events as internal unless explicitly documented in the central framework docs. Compatibility adapters may expose additional ESX/QB/Qbox-shaped APIs that forward into native SzCore services.
