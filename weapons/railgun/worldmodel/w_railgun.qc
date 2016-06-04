$modelname "weapons\railgun\w_railgun.mdl"

$cdmaterials "models\weapons\railgun"

$attachment 1 "ffSkel_gunEnd" 0 0 0

$scale 1

$keyvalues { "prop_data" { "base" "metal.medium" } }

$model w_railgun "wrail_ref.smd"

$sequence idle "wrail_idle.smd" loop ACT_VM_IDLE 1 fps 15

$collisionmodel "wrail_phy.smd"
{
	$mass 3.0 // Mass in kilograms
	$concave
}