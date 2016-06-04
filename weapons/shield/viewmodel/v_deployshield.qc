$modelname "weapons/shield/v_deployshield.mdl"

$model studio "v_shield_ref.smd"

$cdmaterials "models\weapons\shield"
$cdmaterials "models\v_arms\"

$surfaceprop "default"
// $illumposition 0 0 0

// v_models: left/right front/back up/down
$origin 0 0 0

// sequences (movement animations)
// ie. $sequence (sequence name) (sequence .smd) [smd name]  [event <#> <frame> [options]]  [fps <#>] [origin <X> <Y> <Z>] [rotate <angle>] [scale <#>] [loop] [frame <start> <end>] [blend <axis> <start> <end>] [node <#>] [transition <start> <end>] [rtransition <start> <end>]
// $skiptransition draw hit1 miss1 idle1 idle2 idle3 idle4

$sequence up "v_shield_raise" ACT_VM_DRAW 1 fps 30.00
$sequence Idle_up "v_shield_idle_hi" loop ACT_VM_IDLE 1
