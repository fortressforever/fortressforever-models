/*
*****************************
Grenade Launcher (v_model)

Model	- FooleyCooley
Skin	- Decs/FooleyCooley
Anims	- FooleyCooley

-NOTES-

All animation .SMD files are shared between the Grenade Launcher and the 
Pipe Launcher. Only the reference .SMDs are different.

Uses a special animation tree so that remaining ammo is reflected in the
model itself, e.g. the amount of grenades left in the magazine. The name
of each activity references the ammo at the START of each animation, and
at the END of each animation.
*****************************
*/

$modelname 		"weapons/grenadelauncher/v_grenadelauncher.mdl"
$cdmaterials 		"models/weapons/grenadelauncher"
$cdmaterials 		"models/v_arms"
$origin 		0 0 0
$scale 			1.0

$attachment "1" "bone_muzzle" 0 0 0 rotate 0 0 0
$attachment "2" "bone_ejectionPort" 0 0 0 rotate 0 0 0

$model 	"studio" "reference_GrenadeLauncher.smd"

/*
***Bodygroups for different arms (to be added later [maybe! :P])***
$bodygroup heavyArms 	{"studio" "reference_GrenadeLauncher_heavyArms.smd"}
$bodygroup scoutArms 	{"studio" "reference_GrenadeLauncher_scoutArms.smd"}
$bodygroup engineerArms {"studio" "reference_GrenadeLauncher_engineerArms.smd"}
$bodygroup civilianArms {"studio" "reference_GrenadeLauncher_civilianArms.smd"}
*/

$sequence Draw_with0 "anim_Draw_with0" ACT_VM_DRAW_WITH0 1 fps 30.00 fadein 0
$sequence Draw_with1 "anim_Draw_with1" ACT_VM_DRAW_WITH1 1 fps 30.00 fadein 0
$sequence Draw_with2 "anim_Draw_with2" ACT_VM_DRAW_WITH2 1 fps 30.00 fadein 0
$sequence Draw_with3 "anim_Draw_with3" ACT_VM_DRAW_WITH3 1 fps 30.00 fadein 0
$sequence Draw_with4 "anim_Draw_with4" ACT_VM_DRAW_WITH4 1 fps 30.00 fadein 0
$sequence Draw_with5 "anim_Draw_with5" ACT_VM_DRAW_WITH5 1 fps 30.00 fadein 0
$sequence Draw_with6 "anim_Draw_with6" ACT_VM_DRAW_WITH6 1 fps 30.00 fadein 0

$sequence SwitchDraw_with0 "anim_SwitchDraw_with0" ACT_VM_SWITCHDRAW_WITH0 1 fps 30.00
$sequence SwitchDraw_with1 "anim_SwitchDraw_with1" ACT_VM_SWITCHDRAW_WITH1 1 fps 30.00
$sequence SwitchDraw_with2 "anim_SwitchDraw_with2" ACT_VM_SWITCHDRAW_WITH2 1 fps 30.00
$sequence SwitchDraw_with3 "anim_SwitchDraw_with3" ACT_VM_SWITCHDRAW_WITH3 1 fps 30.00
$sequence SwitchDraw_with4 "anim_SwitchDraw_with4" ACT_VM_SWITCHDRAW_WITH4 1 fps 30.00
$sequence SwitchDraw_with5 "anim_SwitchDraw_with5" ACT_VM_SWITCHDRAW_WITH5 1 fps 30.00
$sequence SwitchDraw_with6 "anim_SwitchDraw_with6" ACT_VM_SWITCHDRAW_WITH6 1 fps 30.00

$sequence Idle_with0 "anim_Idle_with0" loop ACT_VM_IDLE_WITH0 1 fps 30.00
$sequence Idle_with1 "anim_Idle_with1" loop ACT_VM_IDLE_WITH1 1 fps 30.00
$sequence Idle_with2 "anim_Idle_with2" loop ACT_VM_IDLE_WITH2 1 fps 30.00
$sequence Idle_with3 "anim_Idle_with3" loop ACT_VM_IDLE_WITH3 1 fps 30.00
$sequence Idle_with4 "anim_Idle_with4" loop ACT_VM_IDLE_WITH4 1 fps 30.00
$sequence Idle_with5 "anim_Idle_with5" loop ACT_VM_IDLE_WITH5 1 fps 30.00
$sequence Idle_with6 "anim_Idle_with6" loop ACT_VM_IDLE_WITH6 1 fps 30.00

$sequence Fire_1to0 "anim_Fire_1to0" ACT_VM_PRIMARYATTACK_1TO0 1 fps 30.00 fadein 0 fadeout 0 {
  { event AE_MUZZLEFLASH 0 "SHOTGUN 1" }
  { event AE_CLIENT_EFFECT_ATTACH 16 "EjectBrass_40mm 2 0" }
}
$sequence Fire_2to1 "anim_Fire_2to1" ACT_VM_PRIMARYATTACK_2TO1 1 fps 30.00 fadein 0 fadeout 0 {
  { event AE_MUZZLEFLASH 0 "SHOTGUN 1" }
  { event AE_CLIENT_EFFECT_ATTACH 16 "EjectBrass_40mm 2 0" }
}
$sequence Fire_3to2 "anim_Fire_3to2" ACT_VM_PRIMARYATTACK_3TO2 1 fps 30.00 fadein 0 fadeout 0 {
  { event AE_MUZZLEFLASH 0 "SHOTGUN 1" }
  { event AE_CLIENT_EFFECT_ATTACH 16 "EjectBrass_40mm 2 0" }
}
$sequence Fire_4to3 "anim_Fire_4to3" ACT_VM_PRIMARYATTACK_4TO3 1 fps 30.00 fadein 0 fadeout 0 {
  { event AE_MUZZLEFLASH 0 "SHOTGUN 1" }
  { event AE_CLIENT_EFFECT_ATTACH 16 "EjectBrass_40mm 2 0" }
}
$sequence Fire_5to4 "anim_Fire_5to4" ACT_VM_PRIMARYATTACK_5TO4 1 fps 30.00 fadein 0 fadeout 0 {
  { event AE_MUZZLEFLASH 0 "SHOTGUN 1" }
  { event AE_CLIENT_EFFECT_ATTACH 16 "EjectBrass_40mm 2 0" }
}
$sequence Fire_6to5 "anim_Fire_6to5" ACT_VM_PRIMARYATTACK_6TO5 1 fps 30.00 fadein 0 fadeout 0 {
  { event AE_MUZZLEFLASH 0 "SHOTGUN 1" }
  { event AE_CLIENT_EFFECT_ATTACH 16 "EjectBrass_40mm 2 0" }
}

$sequence StartReload_with0 "anim_StartReload_with0" ACT_VM_STARTRELOAD_WITH0 1 fps 30.00 fadein 0 fadeout 0 {
  { event AE_CL_PLAYSOUND 1 "GLPL.reload_open" }
}
$sequence StartReload_with1 "anim_StartReload_with1" ACT_VM_STARTRELOAD_WITH1 1 fps 30.00 fadein 0 fadeout 0 {
  { event AE_CL_PLAYSOUND 1 "GLPL.reload_open" }
}
$sequence StartReload_with2 "anim_StartReload_with2" ACT_VM_STARTRELOAD_WITH2 1 fps 30.00 fadein 0 fadeout 0 {
  { event AE_CL_PLAYSOUND 1 "GLPL.reload_open" }
}
$sequence StartReload_with3 "anim_StartReload_with3" ACT_VM_STARTRELOAD_WITH3 1 fps 30.00 fadein 0 fadeout 0 {
  { event AE_CL_PLAYSOUND 1 "GLPL.reload_open" }
}
$sequence StartReload_with4 "anim_StartReload_with4" ACT_VM_STARTRELOAD_WITH4 1 fps 30.00 fadein 0 fadeout 0 {
  { event AE_CL_PLAYSOUND 1 "GLPL.reload_open" }
}
$sequence StartReload_with5 "anim_StartReload_with5" ACT_VM_STARTRELOAD_WITH5 1 fps 30.00 fadein 0 fadeout 0 {
  { event AE_CL_PLAYSOUND 1 "GLPL.reload_open" }
}

$sequence Reload_0to1 "anim_Reload_0to1" ACT_VM_RELOAD_0TO1 1 fps 30.00 fadein 0 fadeout 0
$sequence Reload_1to2 "anim_Reload_1to2" ACT_VM_RELOAD_1TO2 1 fps 30.00 fadein 0 fadeout 0
$sequence Reload_2to3 "anim_Reload_2to3" ACT_VM_RELOAD_2TO3 1 fps 30.00 fadein 0 fadeout 0
$sequence Reload_3to4 "anim_Reload_3to4" ACT_VM_RELOAD_3TO4 1 fps 30.00 fadein 0 fadeout 0
$sequence Reload_4to5 "anim_Reload_4to5" ACT_VM_RELOAD_4TO5 1 fps 30.00 fadein 0 fadeout 0
$sequence Reload_5to6 "anim_Reload_5to6" ACT_VM_RELOAD_5TO6 1 fps 30.00 fadein 0 fadeout 0

$sequence FinishReload_with1 "anim_FinishReload_with1" ACT_VM_FINISHRELOAD_WITH1 1 fps 30.00 fadein 0 {
  { event AE_CL_PLAYSOUND 1 "GLPL.reload_close" }
}
$sequence FinishReload_with2 "anim_FinishReload_with2" ACT_VM_FINISHRELOAD_WITH2 1 fps 30.00 fadein 0 {
  { event AE_CL_PLAYSOUND 1 "GLPL.reload_close" }
}
$sequence FinishReload_with3 "anim_FinishReload_with3" ACT_VM_FINISHRELOAD_WITH3 1 fps 30.00 fadein 0 {
  { event AE_CL_PLAYSOUND 1 "GLPL.reload_close" }
}
$sequence FinishReload_with4 "anim_FinishReload_with4" ACT_VM_FINISHRELOAD_WITH4 1 fps 30.00 fadein 0 {
  { event AE_CL_PLAYSOUND 1 "GLPL.reload_close" }
}
$sequence FinishReload_with5 "anim_FinishReload_with5" ACT_VM_FINISHRELOAD_WITH5 1 fps 30.00 fadein 0 {
  { event AE_CL_PLAYSOUND 1 "GLPL.reload_close" }
}
$sequence FinishReload_with6 "anim_FinishReload_with6" ACT_VM_FINISHRELOAD_WITH6 1 fps 30.00 fadein 0 {
  { event AE_CL_PLAYSOUND 1 "GLPL.reload_close" }
}