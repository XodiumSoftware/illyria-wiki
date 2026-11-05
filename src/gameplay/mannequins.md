# Mannequins

Spawn companion mannequins that track nearby entities with their heads, follow you like a pet,
fight your battles, and block with a shield.

Mannequins are a separate, standalone part of the server. This page is the quick tour — each topic
has its own page in the [Mannequins](../mannequins/index.md) section.

## Spawning

Run `/mannequins` (or `/mannequins <player>` as an operator) to open the mannequin list, then use
the **Spawn Mannequin** button to place one at your location. You become its owner (operators
only).

In survival, **sneak + right-click a villager with an Amethyst Shard** for a **33%** chance to turn
it into a mannequin owned by you. The shard is consumed on every attempt.

## Editing

**Right-click** a mannequin you own to open the edit dialog: skin, name, description, movement
mode, combat mode, and main hand.

**Shift + right-click** a mannequin you own to open the equipment GUI: helmet, chestplate,
leggings, boots, main hand, off hand, and an arrow slot for ranged weapons.

## Behaviors

- **Movement** — follows you like a tamed wolf, or stays anchored to a set spot.
- **Combat** — Aggressive, Defensive (default), or Fleeing; mannequins retaliate, assist your
  attacks, and defend you.
- **Squads** — mannequins within 24 blocks of each other focus-fire a single target and spread out
  to surround it.
- **Weapons** — swords, tridents (thrown with Loyalty), bows and crossbows (kite and shoot), and
  lunging spear attacks.
- **Head tracking** — looks at the nearest entity within 8 blocks.

## Notes

- Monsters treat mannequins as valid targets — zombies, skeletons, and creepers will detect and
  attack them, respecting vanilla daylight rules (e.g. spiders stay passive in daylight).
- Only the owner can edit a mannequin or swap its equipment.
- See the [Mannequins](../mannequins/index.md) section for full details.
