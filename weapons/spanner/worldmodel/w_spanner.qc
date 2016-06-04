$modelname "weapons\spanner\w_spanner.mdl"

$cdmaterials "models\weapons\spanner"

$scale 1

$keyvalues { "prop_data" { "base" "metal.medium" } }

$model w_spanner "wspanner_ref.smd"

$sequence idle "wspanner_idle.smd" loop fps 15

$collisionmodel "wspanner_phy.smd"
{
	$mass 3.0
	$concave
}