$modelname "weapons\flamethrower\w_flamethrower.mdl"

$cdmaterials "models\weapons\flamethrower"

$attachment 1 "ffSkel_gunEnd" 0.00 0.00 0.00 rotate 0 0 0

$scale 0.78

$keyvalues { "prop_data" { "base" "metal.medium" } }

$model w_flamethrower "wFlame_ref.smd"

$sequence idle "wFlame_idle.smd" loop fps 15

$sequence attack1 "attack1" ACT_VM_PRIMARYATTACK 1 fps 30.00 {
}

$collisionmodel "wFlame_phy.smd"
{
	$mass 3.0 // Mass in kilograms
	$concave
}