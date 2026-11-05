# Spawning & Editing

Create mannequins, manage the ones you own, and kit them out.

## Commands

| Command                | Who     | Effect                                        |
| ---------------------- | ------- | --------------------------------------------- |
| `/mannequins`          | Players | Opens the list of every mannequin you own     |
| `/mannequins <player>` | Ops     | Opens the list of another player's mannequins |

The list is paginated, sorted by name, and covers all worlds. Each entry shows the mannequin's
description, location, movement mode, combat mode, and main hand.

- **Left-click** an entry to open its edit dialog.
- **Shift + right-click** an entry to teleport to it (operators only).
- Use the **nether star** button to spawn a new mannequin at your location, owned by you
  (operators only).

### Converting a Villager

Survival players can create a mannequin from a villager:

1. Hold an **Amethyst Shard** in your main hand.
2. **Sneak and right-click a villager** — the shard is consumed and the villager has a **33%**
   chance to stiffen into a mannequin.
3. The resulting mannequin is yours, standing where the villager was. A custom name on the
   villager carries over.

Failed attempts consume the shard and leave the villager alive. Conversion is blocked inside the
spawn protection zone, and the villager's profession and trades are not carried over.

Sneaking is required so that an ordinary amethyst-shard right-click can never destroy a villager
by accident.

## Edit Dialog

**Right-click** a mannequin you own to open the edit dialog.

| Setting     | Description                                                       |
| ----------- | ----------------------------------------------------------------- |
| Skin        | Player name whose skin the mannequin wears (blank = default skin) |
| Name        | Display name shown above its head (blank = hidden)                |
| Description | Text shown below the name (blank = default description)           |
| Movement    | Following (default) or Stationary                                 |
| Combat Mode | Aggressive, Defensive (default), or Fleeing                       |
| Main Hand   | Which hand is dominant — Left or Right                            |

The header line shows the mannequin's owner. Buttons along the bottom:

- **Discard** — closes the dialog without applying anything.
- **Equipment** — closes the dialog and opens the equipment GUI.
- **Save** — applies every field to the mannequin.

Setting **Movement** to Stationary re-anchors the mannequin to wherever it is standing when you
save. Switching back to Following keeps the old anchor.

## Equipment GUI

**Shift + right-click** a mannequin you own — or press **Equipment** in the edit dialog — to open
the equipment GUI. It has seven slots:

| Slot      | Accepts                                                      |
| --------- | ------------------------------------------------------------ |
| Helmet    | Helmets and any block item                                   |
| Chest     | Chestplates                                                  |
| Leggings  | Leggings                                                     |
| Boots     | Boots                                                        |
| Main Hand | Any item                                                     |
| Off Hand  | Any item (hold a shield here to enable block)                |
| Arrows    | Arrows, spectral arrows, tipped arrows, and firework rockets |

Changes apply live — whatever you place is equipped immediately; you can close the window at any
time without a save button.

## Notes

- Only the owner can open the edit dialog or equipment GUI. Right-clicking someone else's
  mannequin does nothing.
- The dialog's **Name** field accepts MiniMessage formatting, e.g. `<gradient:red:gold>Guard</gradient>`.
- The **Skin** field only stores a player name; the skin is looked up when it next renders.
