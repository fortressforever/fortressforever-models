/*
*****************************
Spanner (v_model)

Model 	- FooleyCooley
Skin	- Decs
Anims	- FooleyCooley
*****************************
*/

$cd 			"C:/0FF_Edit/FortressForever/modelsrc/weapons/spanner"
$modelname 		"weapons/spanner/v_spanner.mdl"
$cdmaterials 		"models/weapons/spanner"
$cdmaterials 		"models/v_arms"
$origin 		0 0 0
$scale 			1.0
$illumposition 		20 -6 7

$body "studio" "reference_Spanner.smd"

/*
***Bodygroups for different arms (to be added later [maybe! :P])***
$bodygroup heavyArms 	{"studio" "reference_Spanner_heavyArms.smd"}
$bodygroup scoutArms 	{"studio" "reference_Spanner_scoutArms.smd"}
$bodygroup engineerArms {"studio" "reference_Spanner_engineerArms.smd"}
$bodygroup civilianArms {"studio" "reference_Spanner_civilianArms.smd"}
*/

$sequence Draw "anim_Draw" ACT_VM_DRAW 1 fps 30.00 fadein 0

$sequence Idle1 "anim_Idle1" ACT_VM_IDLE 3 fps 30.00 
$sequence Idle2 "anim_Idle2" ACT_VM_IDLE 3 fps 30.00
$sequence Idle3 "anim_Idle3" ACT_VM_IDLE 3 fps 30.00

//$sequence DeepIdle "anim_DeepIdle" ACT_VM_IDLE 1 fps 30.00

$sequence MissCenter1 "anim_MissCenter1" ACT_VM_MISSCENTER 1 fps 30.00 fadein 0 fadeout 0
$sequence MissCenter2 "anim_MissCenter2" ACT_VM_MISSCENTER 1 fps 30.00 fadein 0 fadeout 0
$sequence MissCenter3 "anim_MissCenter3" ACT_VM_MISSCENTER 1 fps 30.00 fadein 0 fadeout 0

$sequence HitCenter1 "anim_HitCenter1" ACT_VM_HITCENTER 1 fps 30.00 fadein 0 fadeout 0
$sequence HitCenter2 "anim_HitCenter2" ACT_VM_HITCENTER 1 fps 30.00 fadein 0 fadeout 0
$sequence HitCenter3 "anim_HitCenter3" ACT_VM_HITCENTER 1 fps 30.00 fadein 0 fadeout 0