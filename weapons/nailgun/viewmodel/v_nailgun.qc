/*
*****************************
Nailgun

Model	- Bile
Skin	- Decs
Anims	- FooleyCooley
*****************************
*/

$modelname 		"weapons/nailgun/v_nailgun.mdl"
$cdmaterials 		"models/weapons/nailgun"
$cdmaterials 		"models/v_arms"
$origin 		0 0 0
$scale 			1.0

$attachment "1" "bone_muzzle" 0 0 0 rotate 0 0 0
$attachment "2" "bone_ejectionPort" 0 0 0 rotate 0 270 0

$body "studio" "reference_Nailgun.smd"

/*
***Bodygroups for different arms (to be added later [maybe! :P])***
$bodygroup heavyArms 	{"studio" "reference_Nailgun_heavyArms.smd"}
$bodygroup scoutArms 	{"studio" "reference_Nailgun_scoutArms.smd"}
$bodygroup engineerArms {"studio" "reference_Nailgun_engineerArms.smd"}
$bodygroup civilianArms {"studio" "reference_Nailgun_civilianArms.smd"}
*/

$sequence Draw "anim_Draw" ACT_VM_DRAW 1 fps 30.00 fadein 0

$sequence Idle1 "anim_Idle1" loop ACT_VM_IDLE 1 fps 30.00
$sequence Idle2 "anim_Idle2" loop ACT_VM_IDLE 1 fps 30.00
$sequence Idle3 "anim_Idle3" loop ACT_VM_IDLE 1 fps 30.00

$sequence Fire "anim_Fire" ACT_VM_PRIMARYATTACK 1 fps 30.00 fadein 0 {
  { event AE_MUZZLEFLASH 0 "SMG1 1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 65" }
}
$sequence Reload_pre "anim_reload" ACT_SHOTGUN_RELOAD_START 1 fps 30.00 {
  { frames 0 8 }
}
$sequence Reload_main "anim_Reload" ACT_VM_RELOAD 1 fps 30.00 fadein 0 {
  { frames 9 30 }
  { event AE_CL_PLAYSOUND 0 "Weapon_SMG1.Special1" }
  { event AE_CL_PLAYSOUND 20 "Weapon_SMG1.Special1" }
}
$sequence Reload_post "anim_reload" ACT_SHOTGUN_RELOAD_FINISH 1 fps 30.00 {
  { frames 31 39 }
}
