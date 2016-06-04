/*
*****************************
Rocket Propelled Grenade Launcher (v_model)

Model	- FooleyCooley
Skin	- Decs/FooleyCooley
Anims	- FooleyCooley

-NOTES-

Uses a special animation tree so that remaining ammo is reflected in the
model itself, e.g. the amount of rockets left in the magazine. The name
of each activity references the ammo at the START of each animation, and
at the END of each animation.

Animations with 0 and 1 ammo are shared because when ammo = 1 the rocket 
would be 'hidden' inside the RPG. These animations have been left open 
for future modification.
*****************************
*/

$modelname 		"weapons/rpg/v_rpg.mdl"
$cdmaterials 		"models/weapons/rpg"
$cdmaterials 		"models/v_arms"
$origin 		0 0 0
$scale 			1.0

$body "studio" "reference_RPG.smd"

/*
***Bodygroups for different arms (to be added later [maybe! :P])***
$bodygroup heavyArms 	{"studio" "reference_RPG_heavyArms.smd"}
$bodygroup scoutArms 	{"studio" "reference_RPG_scoutArms.smd"}
$bodygroup engineerArms {"studio" "reference_RPG_engineerArms.smd"}
$bodygroup civilianArms {"studio" "reference_RPG_civilianArms.smd"}
*/

$sequence Draw_with0 "anim_Draw_with0" ACT_VM_DRAW_WITH0 1 fps 30.00 fadein 0
$sequence Draw_with1 "anim_Draw_with0" ACT_VM_DRAW_WITH1 1 fps 30.00 fadein 0
$sequence Draw_with2 "anim_Draw_with2" ACT_VM_DRAW_WITH2 1 fps 30.00 fadein 0
$sequence Draw_with3 "anim_Draw_with3" ACT_VM_DRAW_WITH3 1 fps 30.00 fadein 0
$sequence Draw_with4 "anim_Draw_with4" ACT_VM_DRAW_WITH4 1 fps 30.00 fadein 0

$sequence Idle_with0 "anim_Idle_with0" loop ACT_VM_IDLE_WITH0 8 fps 30.00
$sequence Idle_with1 "anim_Idle_with0" loop ACT_VM_IDLE_WITH1 8 fps 30.00
$sequence Idle_with2 "anim_Idle_with2" loop ACT_VM_IDLE_WITH2 8 fps 30.00
$sequence Idle_with3 "anim_Idle_with3" loop ACT_VM_IDLE_WITH3 8 fps 30.00
$sequence Idle_with4 "anim_Idle_with4" loop ACT_VM_IDLE_WITH4 8 fps 30.00

$sequence DeepIdle_with0 "anim_DeepIdle_with0" loop ACT_VM_DEEPIDLE_WITH0 1 fps 30.00
$sequence DeepIdle_with1 "anim_DeepIdle_with0" loop ACT_VM_DEEPIDLE_WITH1 1 fps 30.00
$sequence DeepIdle_with2 "anim_DeepIdle_with2" loop ACT_VM_DEEPIDLE_WITH2 1 fps 30.00
$sequence DeepIdle_with3 "anim_DeepIdle_with3" loop ACT_VM_DEEPIDLE_WITH3 1 fps 30.00
$sequence DeepIdle_with4 "anim_DeepIdle_with4" loop ACT_VM_DEEPIDLE_WITH4 1 fps 30.00

$sequence Fire_1to0 "anim_Fire_1to0" ACT_VM_PRIMARYATTACK_1TO0 1 fps 30.00 fadein 0 fadeout 0
$sequence Fire_2to1 "anim_Fire_2to1" ACT_VM_PRIMARYATTACK_2TO1 1 fps 30.00 fadein 0 fadeout 0
$sequence Fire_3to2 "anim_Fire_3to2" ACT_VM_PRIMARYATTACK_3TO2 1 fps 30.00 fadein 0 fadeout 0
$sequence Fire_4to3 "anim_Fire_4to3" ACT_VM_PRIMARYATTACK_4TO3 1 fps 30.00 fadein 0 fadeout 0

$sequence StartReload_with0 "anim_StartReload_with0" ACT_VM_STARTRELOAD_WITH0 1 fps 30.00 fadein 0 fadeout 0
$sequence StartReload_with1 "anim_StartReload_with0" ACT_VM_STARTRELOAD_WITH1 1 fps 30.00 fadein 0 fadeout 0
$sequence StartReload_with2 "anim_StartReload_with2" ACT_VM_STARTRELOAD_WITH2 1 fps 30.00 fadein 0 fadeout 0
$sequence StartReload_with3 "anim_StartReload_with3" ACT_VM_STARTRELOAD_WITH3 1 fps 30.00 fadein 0 fadeout 0

$sequence InitReload_0to1 "anim_InitReload_0to1" ACT_VM_InitReload_0TO1 1 fps 30.00 fadein 0 fadeout 0 {
  { event AE_CL_PLAYSOUND 17 "rpg.Reload1" }
}
$sequence InitReload_1to2 "anim_InitReload_1to2" ACT_VM_InitReload_1TO2 1 fps 30.00 fadein 0 fadeout 0 {
  { event AE_CL_PLAYSOUND 17 "rpg.Reload2" }
}
$sequence InitReload_2to3 "anim_InitReload_2to3" ACT_VM_InitReload_2TO3 1 fps 30.00 fadein 0 fadeout 0 {
  { event AE_CL_PLAYSOUND 17 "rpg.Reload3" }
}
$sequence InitReload_3to4 "anim_InitReload_3to4" ACT_VM_InitReload_3TO4 1 fps 30.00 fadein 0 fadeout 0 {
  { event AE_CL_PLAYSOUND 17 "rpg.Reload4" }
}

$sequence Reload_1to2 "anim_Reload_1to2" ACT_VM_RELOAD_1TO2 1 fps 30.00 fadein 0 fadeout 0 {
  { event AE_CL_PLAYSOUND 0 "rpg.slide1" }
  { event AE_CL_PLAYSOUND 10 "rpg.reload2" }
}
$sequence Reload_2to3 "anim_Reload_2to3" ACT_VM_RELOAD_2TO3 1 fps 30.00 fadein 0 fadeout 0 {
  { event AE_CL_PLAYSOUND 0 "rpg.slide2" }
  { event AE_CL_PLAYSOUND 10 "rpg.reload3" }
}
$sequence Reload_3to4 "anim_Reload_3to4" ACT_VM_RELOAD_3TO4 1 fps 30.00 fadein 0 fadeout 0 {
  { event AE_CL_PLAYSOUND 0 "rpg.slide3" }
  { event AE_CL_PLAYSOUND 10 "rpg.reload4" }
}

$sequence FinishReload_with1 "anim_FinishReload_with1" ACT_VM_FINISHRELOAD_WITH1 1 fps 30.00 fadein 0 {
  { event AE_CL_PLAYSOUND 0 "rpg.slide1" }
}
$sequence FinishReload_with2 "anim_FinishReload_with2" ACT_VM_FINISHRELOAD_WITH2 1 fps 30.00 fadein 0 {
  { event AE_CL_PLAYSOUND 0 "rpg.slide2" }
}
$sequence FinishReload_with3 "anim_FinishReload_with3" ACT_VM_FINISHRELOAD_WITH3 1 fps 30.00 fadein 0 {
  { event AE_CL_PLAYSOUND 0 "rpg.slide3" }
}
$sequence FinishReload_with4 "anim_FinishReload_with4" ACT_VM_FINISHRELOAD_WITH4 1 fps 30.00 fadein 0