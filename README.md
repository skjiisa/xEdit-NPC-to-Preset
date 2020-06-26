# xEdit-NPC-to-Preset

xEdit script to turn an NPC into a CharGen Face Preset

SkyrimVR doesn't have support for RaceMenu preset import or export, so the only presets you get are the CharGen Face Presets included with the game.
This script allows you to turn an NPC into a character creation preset.

## Install

Merge this Edit Scripts folder with the one in your xEdit (TES5Edit, TES5VREdit, etc.) folder.

This depends on [`mteFunctions.pas`](https://github.com/matortheeternal/TES5EditScripts/blob/master/Edit%20Scripts/mteFunctions.pas). If you download a zip from the Releases tab, this will be included.

## Running

Open xEdit and load the plugins that have the NPCs you want to make into presets.
Select the NPC then right click and select "Apply Script...". In the "Script" drop-down, chose "NPC to Preset" and click "OK".
This will make an override of the NPC to a new path file named "NPC Presets.esp" with the "Is CharGen Face Preset" flag and an override of their race with that NPC added as a preset.

Note that you have to play as the same race as the NPC to be able to use them as a preset.

### Modded NPCs

This script will work with _some_ modded NPCs.
It won't work properly with mods that come with their own models or textures, such as a lot of follower mods.
The more a modded NPC uses their own models and textures, the less the preset will look like them if you use this.
For example, [Arissa - The Wandering Rogue](https://www.nexusmods.com/skyrim/mods/53754) will match whatever body and texture mods you have installed, so she works fairly well with the script.
Any NPC from the vanilla game should work perfectly.

## Applying the preset in-game

If you're making a new character, the preset should show up at the end of the presets list in character creation for that race and gender.

If you have an existing character, you will only be able to use presets of the race they already are.
**Do not try to change the race of an existing character.**
This will reset all of their stats to the base stats of that race.
I think there are ways to change an existing character's race using console commands that doesn't reset their stats, but that's not going to be covered here.

To change the appearance of an existing character, load that character in-game and open they console by pressing the \`~ key then type `showracemenu` and press enter.
This will open the character creation menu again.
This does still work in SkyrimVR.
Once here, **do not change your race. Don't even change it to something then change it back. That will reset your stats.**
Go to the "Body" tab and change the preset to the one you loaded, and you should be done once you save and exit character creation.
