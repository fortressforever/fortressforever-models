/*
*****************************
Flamethrower

Model	- FooleyCooley
Skin	- Decs
Anims	- FooleyCooley
*****************************
*/

$modelname 		"weapons/flamethrower/v_flamethrower.mdl"
$cdmaterials 		"models/weapons/flamethrower"
$cdmaterials 		"models/v_arms"
$origin 		0 0 0
$scale 			1.0

$attachment "1" "bone_muzzle" 0 0 0 rotate 0 0 0
$attachment "pilotLight" "bone_pilotLight" 0 0 0 rotate 0 0 0

$body "studio" "reference_Flamethrower.smd"

/*
***Bodygroups for different arms (to be added later [maybe! :P])***
$bodygroup heavyArms 	{"studio" "reference_Flamethrower_heavyArms.smd"}
$bodygroup scoutArms 	{"studio" "reference_Flamethrower_scoutArms.smd"}
$bodygroup engineerArms {"studio" "reference_Flamethrower_engineerArms.smd"}
$bodygroup civilianArms {"studio" "reference_Flamethrower_civilianArms.smd"}
*/

$sequence Draw "anim_Draw" ACT_VM_DRAW 1 fps 30.00 fadein 0

$sequence Idle1 "anim_Idle1" loop ACT_VM_IDLE 1 fps 30.00
$sequence Idle2 "anim_Idle2" loop ACT_VM_IDLE 1 fps 30.00
$sequence Idle3 "anim_Idle3" loop ACT_VM_IDLE 1 fps 30.00

$sequence Fire "anim_Fire" ACT_VM_PRIMARYATTACK 1 fps 30.00 fadein 0.3 fadeout 0.3