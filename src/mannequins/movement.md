# Movement & Tracking

Mannequins walk on their own — either behind you or back to a spot you anchored them to.

## Following

The default **Movement** mode. The mannequin behaves like a tamed wolf:

- Walks behind you at player walking speed.
- Stops when it is within 2 blocks of you.
- Teleports to you when you are more than 12 blocks away or in another dimension, landing on the
  nearest ground rather than mid-air.
- Jumps automatically when a solid block blocks the next step.

If you are offline or invisible to players, a following mannequin falls back to returning to its
anchor.

## Stationary

Set **Movement** to Stationary to anchor the mannequin where it stands when you save the dialog.

- Walks back to the anchor at walking speed after combat or after being knocked away.
- Teleports to the anchor when pushed more than 12 blocks from it, landing on the nearest ground.

## Pausing

Movement pauses while a mannequin is:

- Chasing or fighting a target (see [Combat](combat.md)).
- Standing in a defensive stance with monsters nearby.

It resumes automatically once the fight or threat ends.

## Head Tracking

Every mannequin turns its head toward the nearest living entity within 8 blocks — players,
animals, monsters. Monsters are prioritized over other entities, so a mannequin keeps a wary eye
on the zombie behind you.

Invisible entities and other mannequins are ignored.

## Notes

- Movement never carries a mannequin through walls; only the teleport fallbacks reposition it.
- The anchor persists across restarts along with the rest of the mannequin's settings.
