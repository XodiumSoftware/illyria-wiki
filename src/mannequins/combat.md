# Combat

Mannequins choose how aggressively they engage nearby monsters, and always back up their owner.

## Combat Modes

Set the mode per mannequin in the edit dialog.

| Mode       | Behavior                                                                      |
| ---------- | ----------------------------------------------------------------------------- |
| Aggressive | Attacks the nearest monster within 12 blocks without waiting to be hit        |
| Defensive  | Stops moving and raises its shield near monsters, fights only when struck     |
| Fleeing    | Ignores monsters entirely, is not targeted by them, and keeps following owner |

Monsters within 12 blocks are rescanned every second, so a mannequin leaves combat shortly after
the threat dies, escapes, or turns invisible.

## Groups

Mannequins you own that are within **24 blocks** of each other form a squad and fight as one.

- **Focus fire** — the squad commits to a single target, the most threatening one it can see,
  instead of splitting up.
- **Surrounding** — squad members spread out evenly around the target on a 1.6-block ring instead
  of stacking on the same spot, so a group of four actually encircles its target.
- **Threat** — a monster's score grows the closer it is to any member, and jumps sharply when it
  damages a mannequin or you, or when you attack it. Scores fade over time, so the squad
  gradually drops a target that fled and returns to whatever is actually threatening it.
- **Respecting your hits** — what you attack outranks nearby monsters, so the squad joins your
  target instead of wandering off to something that merely happens to be close.
- **Staying focused** — the squad only switches target when a new threat clearly outweighs the
  current one, which stops it from ping-ponging between two equally dangerous mobs.
- **Staggered attacks** — squad members start their attack timers at slightly different offsets,
  so archers do not all fire on the same tick.

Mannequins further than 24 blocks away from a squad do not join the fight.

## Defending & Assisting

Independently of the combat mode (except Fleeing), mannequins also:

- **Retaliate** — whatever damages the mannequin becomes the squad's target.
- **Assist** — when you damage something, nearby mannequins join the fight.
- **Defend** — when something damages you, your mannequins attack the aggressor.

Mannequins never attack you or other mannequins owned by the same player.

## Shields

Equip a **shield in the off hand** so the mannequin can block. While defending or fighting, the
mannequin holds the shield raised:

- Blocked hits are fully cancelled and play the vanilla shield-block sound.
- Every blocked hit costs 1 shield durability; the shield breaks with the usual break sound.
- The shield drops for the swing when the mannequin attacks, then comes back up a moment later.

Hits that land while the shield is down wear down any armor the mannequin is wearing, just like a
player.

## Chasing

Engaged mannequins chase their target at sprinting speed and attack every half second in melee
range, stepping back briefly after each strike. Combat ends when:

- The target dies.
- The target moves further than 30 blocks away.
- The target changes dimensions.

Following pauses while engaged and resumes once combat ends.

## Damage

Melee damage is the held weapon's attack damage plus 1, so a netherite sword hits for 8. See
[Weapons](weapons.md) for bows, tridents, and spears.

## Notes

- A shield is only used from the off hand — a shield in the main hand does nothing.
- Mannequins can be killed; they drop everything they were wearing and holding, plus any arrows
  stored in the arrow slot.
- Defensive mannequins will not start fights, so they are safe to leave near villagers or pets.
