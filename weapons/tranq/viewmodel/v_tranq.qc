/*
*****************************
Tranq Pistol

Model	- FooleyCooley
Skin	- Decs
Anims	- FooleyCooley
*****************************
*/

$modelname 		"weapons/tranq/v_tranq.mdl"
$cdmaterials 		"models/weapons/tranq"
$cdmaterials 		"models/v_arms"
$origin 		0 0 0
$scale 			1.0

$attachment "1" "bone_muzzle" 0 0 0 rotate 0 0 0

$body "studio" "reference_Tranq.smd"

/*
***Bodygroups for different arms (to be added later [maybe! :P])***
$bodygroup heavyArms 	{"studio" "reference_Tranq_heavyArms.smd"}
$bodygroup scoutArms 	{"studio" "reference_Tranq_scoutArms.smd"}
$bodygroup engineerArms {"studio" "reference_Tranq_engineerArms.smd"}
$bodygroup civilianArms {"studio" "reference_Tranq_civilianArms.smd"}
*/

$sequence Draw "anim_Draw" ACT_VM_DRAW 1 fps 30.00 fadein 0 {
  { event AE_CL_PLAYSOUND 0 "Tranq.cock" }
}

$sequence Idle1 "anim_Idle1" loop ACT_VM_IDLE 1 fps 30.00
$sequence Idle2 "anim_Idle2" loop ACT_VM_IDLE 1 fps 30.00
$sequence Idle3 "anim_Idle3" loop ACT_VM_IDLE 1 fps 30.00

$sequence Fire "anim_Fire" ACT_VM_PRIMARYATTACK 1 fps 30.00 fadein 0 {
  { event AE_MUZZLEFLASH 0 "PISTOL 1" }
  { event AE_CL_PLAYSOUND 23 "Tranq.cock" }
}