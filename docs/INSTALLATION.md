# Install szcore_world

## Standalone resource install

```bash
git clone https://github.com/Szilko121/szcore_world.git resources/[szcore]/szcore_world
```

Add after dependencies:

```cfg
ensure szcore_world
```

Declared dependencies: `szcore`

## Full framework

Use the txAdmin recipe from `https://github.com/Szilko121/SzCore-Recipe`.

## Updating

Pin production deployments to a release/tag rather than tracking an RC branch blindly. Read the changelog and database migration notes before upgrading.
