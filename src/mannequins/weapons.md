# Weapons

A mannequin fights with whatever you put in its main hand. The held item decides which of the
ranged and reach behaviors below kick in.

## Melee

Swords, axes, and bare fists swing normally at close range, using the weapon's attack damage plus 1.
This is the fallback for any item without special handling.

## Tridents <img class="mc-icon" alt="" src="../img/item/trident.png">

| Trident          | Behavior                                                       |
| ---------------- | -------------------------------------------------------------- |
| With **Loyalty** | Thrown at targets further than 2 blocks, returning to its hand |
| Without Loyalty  | Swung as a normal melee weapon                                 |

Thrown tridents are aimed at the target's eyes and return after a short delay once within
melee range again. If the trident entity disappears (chunk unload) or the mannequin changes
dimensions, the trident is placed back in the mannequin's hand.

## Bows & Crossbows <img class="mc-icon" alt="" src="../img/item/bow.png">

Ranged weapons need **arrows in the arrow slot** — see
[Spawning & Editing](spawning.md#equipment-gui).

| Property      | Bow                                       | Crossbow        |
| ------------- | ----------------------------------------- | --------------- |
| Fire range    | up to 20 blocks                           | up to 20 blocks |
| Shot cooldown | 1 second                                  | 1.25 seconds    |
| Kiting        | backs away when target is within 8 blocks | same            |

- Arrows are consumed per shot unless the weapon has **Infinity**.
- **Multishot** on a crossbow fires a spread of three projectiles.
- The arrow slot's item type decides the projectile: plain arrows, **spectral arrows** (glowing
  targets), **tipped arrows** (potion effects carried over, base potion type included), or
  **firework rockets** (crossbows only — bows fire a normal arrow instead).
- Each shot costs 1 durability.

## Spears <img class="mc-icon" alt="" src="../img/item/copper_spear.png">

Spears extend melee reach to 4 blocks and attack with a lunging charge:

- The mannequin leaps toward its target and deals weapon damage scaled by the
  weapon's attack damage.
- Lunges can be used once per second.

## Priorities

When a mannequin is fighting, it prefers behaviors in this order:

1. Bow / crossbow — if in range, with ammo and line of sight.
2. Trident throw — if holding a Loyalty trident and further than 2 blocks.
3. Spear lunge — if holding a spear and within 4 blocks.
4. Melee swing — anything else within 2 blocks.
5. Chase otherwise.

## Notes

- Ranged mannequins will not fire without line of sight, and will not fire without arrows —
  equip a melee weapon as a backup if you want them to keep fighting.
- Firework rockets fired from a crossbow use the rocket's own firework effects.
