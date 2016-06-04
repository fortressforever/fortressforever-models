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

$modelname 		"weapons/incendiarycannon/v_incendiarycannon.mdl"
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

$sequence Idle_with0 "anim_Idle_with0" loop ACT_VM_IDLE_WITH0 8 fps 30.00

$sequence DeepIdle_with0 "anim_DeepIdle_with0" loop ACT_VM_DEEPIDLE_WITH0 1 fps 30.00

$sequence Fire_1to0 "anim_Fire_1to0" ACT_VM_PRIMARYATTACK 1 fps 30.00 fadein 0 fadeout 0