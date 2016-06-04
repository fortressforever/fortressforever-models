/*
*****************************
Assault Cannon

Model	- FooleyCooley
Skin	- Decs
Anims	- FooleyCooley
*****************************
*/

$modelname 		"weapons/assaultcannon/v_assaultcannon.mdl"
$cdmaterials 		"models/weapons/assaultcannon"
$origin 		0 0 0
$scale 			1.0

$attachment "1" "bone_muzzle" 0 0 0 rotate 0 0 0
$attachment "2" "bone_ejectionPort" 0 0 0 rotate 0 270 0

$body "studio" "reference_AssaultCannon.smd"

/*
***Bodygroups for different arms (to be added later [maybe! :P])***
$bodygroup heavyArms 	{"studio" "reference_AssaultCannon_heavyArms.smd"}
$bodygroup scoutArms 	{"studio" "reference_AssaultCannon_scoutArms.smd"}
$bodygroup engineerArms {"studio" "reference_AssaultCannon_engineerArms.smd"}
$bodygroup civilianArms {"studio" "reference_AssaultCannon_civilianArms.smd"}
*/

$poseparameter ac_rotate -180 180 wrap

$sequence ac_rotate   "anim_AC_Rotate" fps 30

$weightlist ac_rot   { "bone_barrels" 1.0 }

$animation neutral   "anim_AC_Rotate" frame 0 0
$animation ac_rot0   "anim_AC_Rotate" frame 0 0 subtract neutral 0 weightlist ac_rot
$animation ac_rot120 "anim_AC_Rotate" frame 3 3 subtract neutral 0 weightlist ac_rot
$animation ac_rot240 "anim_AC_Rotate" frame 6 6 subtract neutral 0 weightlist ac_rot

$sequence auto_rotate { ac_rot0 ac_rot120 ac_rot240 ac_rot0 blendwidth 4 blend "ac_rotate" -180 180 } weightlist ac_rot delta autoplay

$sequence Draw "anim_Draw" ACT_VM_DRAW 1 fps 30.00 fadein 0

$sequence Idle1 "anim_Idle1" loop ACT_VM_IDLE 1 fps 30.00
$sequence Idle2 "anim_Idle2" loop ACT_VM_IDLE 1 fps 30.00
$sequence Idle3 "anim_Idle3" loop ACT_VM_IDLE 1 fps 30.00

$sequence Fire "anim_Fire" loop ACT_VM_PRIMARYATTACK 1 fps 30.00 {
  { event AE_MUZZLEFLASH 0 "SMG1 1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 65" }
}