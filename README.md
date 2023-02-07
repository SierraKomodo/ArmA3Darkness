# ArmA 3 Darkness Script

This script for ArmA 3 missions provides a means for mission curators to trigger a 'dark' weather state, at will.

**This script makes some assumptions about the mission to function as intended.** Notably, it's assumed that the mission is operating at night, during clear skies, with a full moon to make the maximum effect of the darkness transition. The default values under these conditions will cause a visible night sky to turn to pitch blackness, with encroaching fog that limits visibility with night vision.

This script can be used under other conditions, but the effect of 'darkness' will be greatly diminished.


## Installation

1. To add this script to your mission file, first, create and save a mission file.

2. Once the mission file is saved, navigate to your ArmA 3 missions folder, typically in one of these two paths:

- `C:\Users\[WINDOWS USERNAME]\Documents\Arma 3\missions`
- `C:\Users\[WINDOWS USERNAME]\Documents\Arma 3 - Other Profiles\[ARMA PROFILE NAME]\missions`

3. Copy the `SierraKomodo` folder into a `SierraKomodo` folder in your mission folder.

4. Copy the contents of the `addActions.sqf`, `Description.ext`, `initPlayerLocal.sqf`, `initServer.sqf`, and `onPlayerRespawn.sqf` files to the existing files in your mission folder. If any of the files don't already exist, feel free to copy the entire file over, or create new files with the names. File names are case-sensitive. Your folder and file structure should look like this:

```
SierraKomodo\darkness\sk_darkness_start.sqf
SierraKomodo\darkness\sk_darkness_stop.sqf
addActions.sqf
Description.ext
initPlayerLocal.sqf
initServer.sqf
onPlayerRespawn.sqf
```

5. Open `initServer.sqf` and edit the variables defined in the `CONFIGURATION OPTIONS` section. See the `Configuration` section below for more information on this step.

6. In your mission, edit the group that your mission curators/zeuses will be a part of. Set the group's variable name to `curators`.

7. In your mission, go to Attributes > Environment and check `Manual Override` for all weather sections.


## Usage

When in the game, players that have joined in a slot under the group given the `curators` variable name and that have the Zeus interface will be given a scroll wheel menu option labeled `Darkness Start``. Using this option will trigger the darkness to begin, first setting fog with the given transition time, then setting the weather.

Once the process is complete, the action will be replaced with `Darkness Stop` which will return to the default weather options defined in the configuration.

**NOTE**: The weather transition step currently occurs instantly and may be jarring.


## Configuration

The script's functions can be configured by editing the variables defined in the `CONFIGURATION OPTIONS` section of the `initServer.sqf` file.

### General Settings

**`sk_darkness_fog_transition`**\
`integer, positive or zero`\
This variable defines how long, in seconds, the fog changes will take.

### Weather

Configuration for weather settings is divided into two sections - Normal Weather and Event Weather.

Normal weather is your default weather - What the script will revert to when stopping darkness. These are prefixed with `sk_darkness_normal_*`. It's recommended that you set these values to match the weather settings in 3den Editor.

Event weather is the darkness weather - What the script will set when darkness starts. These are prefixed with `sk_darkness_*`.

**`overcast`**\
`float`. `0.00` to `1.00`\
The overcast percentage. Corresponds to 3den Editor's Overcast values of 0% to 100%.

**`wind`**\
`float`. `0.00` to `1.00`. default `0.00`\
The wind strength percentage. Corresponds to 3den Editor's Wind values of 0% to 100%.

**`rain`**\
`float`. `0.00` to `1.00`. default `0.00`\
The rain strength percentage. Corresponds to 3den Editor's Rain values of 0% to 100%.

**`lightning`**\
`float`. `0.00` to `1.00`. default `0.00`\
The lightning strength percentage. Corresponds to 3den Editor's Lightning values of 0% to 100%.

**`waves`**\
`float`. `0.00` to `1.00`. default `0.00`\
The wave strength percentage. Corresponds to 3den Editor's Waves values of 0% to 100%.

**`fog`**\
`float`. `0.00` to `1.00`. default `0.05` for normal, `0.50` for event.\
The fog strength percentage. Corresponds to 3den Editor's Fog values of 0% to 100%.

**`fog_decay`**\
`float`. `-1.0` to `1.0`. default `0.0`.\
The fog decay percentage. Corresponds to 3den Editor's Fog Decay values of 0% to 10%. **NOTE**: A value of `0.0` corresponds to `5%` in the editor.

**`fog_height`**\
`integer`. `-1000` to `1000`. default `50` for normal, `100` for event.\
The fog height, in meters. Corresponds to 3den Editor's Fog Base values of -1000m to 1000m.


## Integration

This script's functions can be integrated into other scripts or triggers in the 3den Editor.

### Checking if darkness is active

The `sk_darkness_active` public variable will be defined as `true` while darkness is active, and `false` otherwise. This can be used to provide additional events or effects during darkness, i.e., using this variable as the condition for a trigger or a module.

### Starting darkness

To start the darkness event, call the `SK_fnc_DarknessStart` function. Be aware this function does sleep, so you may need to call it with a `spawn` call in certain cases.

It is highly recommended that you verify the public variable `sk_darkness_event_processing` is `false` before calling this function, to avoid unintended weather effects.

### Stopping darkness

To stop the darkness event, call the `SK_fnc_DarknessStop` function. Be aware this function does sleep, so you may need to call it with a `spawn` call in certain cases.

It is highly recommended that you verify the public variable `sk_darkness_event_processing` is `false` before calling this function, to avoid unintended weather effects.
