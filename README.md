# fortressforever-models
The model source files of Fortress Forever

*Note:* The files in this repository are **not** guaranteed to be up-to-date with the compiled models that are currently distributed with the game.

## Setting up Studiomdl

1. **Install Source SDK**
  * In Steam, go to the Library tab and select *Tools* from the dropdown
  * Find *Source SDK* in the list and install it
2. **Setup Source SDK**
  * Run Source SDK once (it will install some misc files and set the `sourcesdk` environment variable for you). Close it once it is finished.
  * Download and run [`setup.bat`](https://raw.githubusercontent.com/fortressforever/fortressforever-models/master/setup.bat)
3. **Set The Current Game**
  * Open Source SDK
  * Select *Source Engine 2006* as the *Engine Version* and *Fortress Forever* as the *Current Game*
  * You can now close Source SDK as it's no longer needed

NOTE: **Manual Setup**
  * If the batch setup file does not work, you have no SteamAppData.vdf, or you still get the "Can't find Steam app user info." error, you can always make a custom VDF instead. Fortress Forever is thus far among many mods to not have gotten ahold of Valve's update, and thus requires Steam app user info. Create that file in `%SourceSDK%/bin/ep1/bin/config` with the following contents:
```
"SteamAppData"{
"RememberPassword" "0"
"AutoLoginUser" "anythinghere"
}
```

## Compiling a Model

If compiling the player models, simply run compile.bat inside `player\ff_player_shared\compile` and check the output for where Source SDK has put the resulting file.

To compile a model, use `studiomdl.exe` found in `Steam/steamapps/common/SourceSDK/bin/ep1/bin`. When you launch Source SDK (see setup instructions), an environment variable named `SourceSDK` will get set to the `Steam/steamapps/common/SourceSDK` directory path, so you can use `%SourceSDK%/bin/ep1/bin/studiomdl` as a shortcut to studiomdl that will work across different machines.

Example commands to compile the tranquilizer viewmodel:

```
cd weapons/tranq/viewmodel
"%SourceSDK%/bin/ep1/bin/studiomdl" v_tranq.qc
```

Assuming you followed the setup instructions above, the compiled models will be output into the `Steam/steamapps/common/Fortress Forever/sdk` directory (**not** into the main mod directory), so you'll need to copy the newly compiled files into `Steam/steamapps/common/Fortress Forever/FortressForever`

For more information about studiomdl, see https://developer.valvesoftware.com/wiki/Studiomdl
