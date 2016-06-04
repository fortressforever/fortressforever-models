/*
*****************************
Super Nailgun

Model	- Bile
Skin	- Decs
Anims	- FooleyCooley
*****************************
*/

$modelname 		"weapons/supernailgun/v_supernailgun.mdl"
$cdmaterials 		"models/weapons/supernailgun"
$cdmaterials 		"models/v_arms"
$origin 		0 0 0
$scale 			1.0

$attachment "1" "bone_muzzle" 0 0 0 rotate 0 0 0
$attachment "2" "bone_ejectionPort" 0 0 0 rotate 0 270 0

$body "studio" "reference_SuperNailgun.smd"

/*
***Bodygroups for different arms (to be added later [maybe! :P])***
$bodygroup heavyArms 	{"studio" "reference_SuperNailgun_heavyArms.smd"}
$bodygroup scoutArms 	{"studio" "reference_SuperNailgun_scoutArms.smd"}
$bodygroup engineerArms {"studio" "reference_SuperNailgun_engineerArms.smd"}
$bodygroup civilianArms {"studio" "reference_SuperNailgun_civilianArms.smd"}
*/

$sequence Draw "anim_Draw" ACT_VM_DRAW 1 fps 30.00 fadein 0

$sequence Idle1 "anim_Idle1" loop ACT_VM_IDLE 1 fps 30.00
$sequence Idle2 "anim_Idle2" loop ACT_VM_IDLE 1 fps 30.00
$sequence Idle3 "anim_Idle3" loop ACT_VM_IDLE 1 fps 30.00

$sequence Reload_pre "anim_reload" ACT_SHOTGUN_RELOAD_START 1 fps 30.00 {
  { frames 0 20 }
  { event AE_CL_PLAYSOUND 12 "Weapon_SMG1.Special1" }
}

$sequence Reload_main "anim_reload" ACT_VM_RELOAD 1 fps 30.00 {
  { frames 21 30 }
  { event AE_CL_PLAYSOUND 8 "Weapon_SMG1.Special2" }
}

$sequence Reload_post "anim_reload" ACT_SHOTGUN_RELOAD_FINISH 1 fps 30.00 {
  { frames 31 40 }
}

$sequence Reload "anim_reload" ACT_VM_RELOAD_ALL 1 fps 30.00 {
  { event AE_CL_PLAYSOUND 0 "Weapon_SMG1.Special1" }
  { event AE_CL_PLAYSOUND 30 "Weapon_SMG1.Special2" }
}

$sequence Fire "anim_Fire" ACT_VM_PRIMARYATTACK 1 fps 30.00 fadein 0 {
  { event AE_MUZZLEFLASH 0 "SMG1 1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 65" }
}