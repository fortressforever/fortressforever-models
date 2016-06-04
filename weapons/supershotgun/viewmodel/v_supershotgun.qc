/*
*****************************
Super Shotgun

Model	- Sev/FooleyCooley
Skin	- Decs
Anims	- FooleyCooley
*****************************
*/

$modelname 		"weapons/supershotgun/v_supershotgun.mdl"
$cdmaterials 		"models/weapons/supershotgun"
$cdmaterials 		"models/v_arms"
$cdmaterials 		"models/shells"
$origin 		0 0 0
$scale 			1.0

$attachment "1" "bone_muzzle" 0 0 0 rotate 0 0 0
$attachment "2" "bone_ejectionPort" 0 0 0 rotate 0 270 0

$body "studio" "reference_SuperShotgun.smd"

/*
***Bodygroups for different arms (to be added later [maybe! :P])***
$bodygroup heavyArms 	{"studio" "reference_SuperShotgun_heavyArms.smd"}
$bodygroup scoutArms 	{"studio" "reference_SuperShotgun_scoutArms.smd"}
$bodygroup engineerArms {"studio" "reference_SuperShotgun_engineerArms.smd"}
$bodygroup civilianArms {"studio" "reference_SuperShotgun_civilianArms.smd"}
*/

$sequence Draw "anim_Draw" ACT_VM_DRAW 1 fps 30.00 fadein 0

$sequence Idle1 "anim_Idle1" loop ACT_VM_IDLE 1 fps 30.00
$sequence Idle2 "anim_Idle2" loop ACT_VM_IDLE 1 fps 30.00
$sequence Idle3 "anim_Idle3" loop ACT_VM_IDLE 1 fps 30.00

$sequence Fire "anim_Fire" ACT_VM_PRIMARYATTACK 1 fps 30.00 fadein 0 {
  { event AE_MUZZLEFLASH 0 "SHOTGUN 1" }
  { event AE_CLIENT_EFFECT_ATTACH 19 "EjectBrass_12gauge 2 70" }
//  { event AE_CLIENT_EFFECT_ATTACH 18 "EjectBrass_12gauge 2 70" }
  { event AE_CL_PLAYSOUND 11 "SuperShotgun.cock" }
}

$sequence StartReload "anim_StartReload" ACT_SHOTGUN_RELOAD_START 1 fps 30.00 fadeout 0
$sequence Reload "anim_Reload" ACT_VM_RELOAD 1 fps 30.00 fadein 0 fadeout 0
$sequence FinishReload "anim_FinishReload" ACT_SHOTGUN_RELOAD_FINISH 1 fps 30.00 fadein 0 {
  { event AE_CL_PLAYSOUND 6 "SuperShotgun.cock" }
}