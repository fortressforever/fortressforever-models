/*
*****************************
Railgun

Model	- FooleyCooley
Skin	- Decs
Anims	- FooleyCooley
*****************************
*/

$modelname 		"weapons/railgun/v_railgun.mdl"
$cdmaterials 		"models/weapons/railgun"
$cdmaterials 		"models/v_arms"
$origin 		0 0 0
$scale 			1.0

$attachment "1" "bone_muzzle" 0 0 0 rotate 0 0 0
$attachment "railgunFX1" "bone_pistolGrip" 6.5 0 2.0 rotate 0 0 0
$attachment "railgunFX2" "bone_pistolGrip" 8.8 0 9.0 rotate 0 0 0

$body "studio" "reference_Railgun.smd"

/*
***Bodygroups for different arms (to be added later [maybe! :P])***
$bodygroup heavyArms 	{"studio" "reference_Railgun_heavyArms.smd"}
$bodygroup scoutArms 	{"studio" "reference_Railgun_scoutArms.smd"}
$bodygroup engineerArms {"studio" "reference_Railgun_engineerArms.smd"}
$bodygroup civilianArms {"studio" "reference_Railgun_civilianArms.smd"}
*/

$sequence Draw "anim_Draw" ACT_VM_DRAW 1 fps 30.00 fadein 0

$sequence Idle1 "anim_Idle1" loop ACT_VM_IDLE 1 fps 30.00
$sequence Idle2 "anim_Idle2" loop ACT_VM_IDLE 1 fps 30.00
$sequence Idle3 "anim_Idle3" loop ACT_VM_IDLE 1 fps 30.00

$sequence Reload_pre "anim_reload" ACT_SHOTGUN_RELOAD_START 1 fps 30.00 {
  { frames 0 12 }
//  { event AE_CL_PLAYSOUND 12 "Weapon_SMG1.Special1" }
}

$sequence Reload_main "anim_reload" ACT_VM_RELOAD 1 fps 30.00 {
  { frames 13 15 }
//  { event AE_CL_PLAYSOUND 8 "Weapon_SMG1.Special2" }
}

$sequence Reload_post "anim_reload" ACT_SHOTGUN_RELOAD_FINISH 1 fps 30.00 {
  { frames 16 28 }
}

$sequence Reload "anim_reload" ACT_VM_RELOAD_ALL 1 fps 30.00 {
//  { event AE_CL_PLAYSOUND 0 "Weapon_SMG1.Special1" }
//  { event AE_CL_PLAYSOUND 28 "Weapon_SMG1.Special2" }
}
$sequence Charge "anim_charge" ACT_VM_PREFIRE 1 fps 30.00


$sequence Fire "anim_Fire" ACT_VM_PRIMARYATTACK 1 fps 30.00 fadein 0 {
  { event AE_MUZZLEFLASH 0 "COMBINE 1" }
}