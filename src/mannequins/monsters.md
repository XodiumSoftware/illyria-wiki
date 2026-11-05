# Monster Attention

Mannequins attract monsters the way players do — which is the point — but it has side effects
worth knowing about.

## How It Works

Any monster within **16 blocks** of a mannequin that does not already have a target will target
the mannequin instead of continuing to wander. This check runs every half second and covers
zombies, skeletons, creepers, spiders, and every other monster type.

Once targeted, the monster behaves normally toward the mannequin:

- It pursues, attacks, and respects vanilla daylight rules — spiders stay passive in daylight,
  undead still burn.
- Damage to a mannequin chips armor (and its shield, if raised) exactly like it would on a player.

## What This Means

- Mannequins act as a decoy — a stationed mannequin will pull monsters away from your base
  entrance, but it will also get attacked while you are away.
- Monsters pulled by a mannequin follow it, so a following mannequin can drag a small crowd of
  monsters to you. Defensive mannequins stop and shield up, which usually holds them in place.
- Fleeing mannequins are never targeted, so they can walk past a horde without being attacked.

## Notes

- Only monsters without a current target are pulled; a monster already fighting a player or
  another mannequin ignores the decoy.
- Fleeing mannequins are skipped entirely, so a squad of fleeing mannequins is ignored by monsters.
- To stop your own mannequin from being attacked, keep it inside a well-lit, enclosed area, or
  equip it with armor and a shield.
- See [Combat](combat.md) for how a mannequin responds once a monster lands the first hit.
