$modelname "weapons\knife\w_knife.mdl"

$cdmaterials "models\weapons\knife"

$scale 1

$keyvalues { "prop_data" { "base" "metal.medium" } }

$model w_knife "w_knife_ref.smd"

$sequence idle "w_knife_idle.smd" loop fps 15

$collisionmodel "w_knife_phy.smd"
{
	$mass 3.0 // Mass in kilograms
	$concave
}