$modelname "weapons\incendiarycannon\v_incendiarycannon"
// $scale 0.3

$model studio "F:\MyDocuments\Modelling\Steamwork\models\weapons\IC\v\compile\ic_ref.smd"



$cdmaterials "models\weapons\incendiarycannon"
$cdmaterials "models\v_arms"
$cdmaterials "models\shells"

$texturegroup v_pyroArms
{
    { "v_pyroArms_blue" }
    { "v_pyroArms_red" }
}

$surfaceprop "default"
// $illumposition 0 0 0

// v_models: left/right front/back up/down
$origin 0 0 0

$attachment "1" "bone_muzzle" 0 0 0 rotate 0 0 0

$hboxset "default" 

// sequences (movement animations)
// ie. $sequence (sequence name) (sequence .smd) [smd name]  [event <#> <frame> [options]]  [fps <#>] [origin <X> <Y> <Z>] [rotate <angle>] [scale <#>] [loop] [frame <start> <end>] [blend <axis> <start> <end>] [node <#>] [transition <start> <end>] [rtransition <start> <end>]
// $skiptransition draw hit1 miss1 idle1 idle2 idle3 idle4


$sequence Idle1 "ic_idle1" loop ACT_VM_IDLE 5 fps 30.00 node 1 fadeout 0.5
// deep idle:
$sequence Idle2 "ic_idle2" loop ACT_VM_IDLE 1 fps 45.00 node 1 fadeout 0.5
$sequence Draw "ic_draw" ACT_VM_DRAW -1 fps 45.00 fadein 0
$sequence Fire "ic_fire1" snap ACT_VM_PRIMARYATTACK 1 fps 30.00 {
 	{ event AE_MUZZLEFLASH 1 "RPG 1" } 
	{ event AE_CL_PLAYSOUND 11 "ic.cocky" }
}
$sequence Fire2 "ic_fire2" snap ACT_VM_PRIMARYATTACK 1 fps 30.00 {
 	{ event AE_MUZZLEFLASH 1 "RPG 1" } 
	{ event AE_CL_PLAYSOUND 13 "ic.cocky" }
}
$sequence Fire3 "ic_fire3" snap ACT_VM_PRIMARYATTACK 1 fps 30.00 {
 	{ event AE_MUZZLEFLASH 1 "RPG 1" } 
	{ event AE_CL_PLAYSOUND 13 "ic.cocky" }
}
$sequence Fire4 "ic_fire4" snap ACT_VM_PRIMARYATTACK 1 fps 30.00 {
 	{ event AE_MUZZLEFLASH 1 "RPG 1" } 
	{ event AE_CL_PLAYSOUND 12 "ic.cocky" }
}

