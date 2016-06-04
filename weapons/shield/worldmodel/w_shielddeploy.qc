$modelname "weapons\shield\w_shielddeploy.mdl"

$cdmaterials "models\weapons\shield"

$scale 1
$mostlyopaque
$surfaceprop plastic

$keyvalues { "prop_data" { "base" "metal.medium" } }

$model "studio" "shield_ref.smd"

$sequence idle "shield_ref.smd" loop fps 15

$collisionmodel "shield_phys.smd"
{
	$mass 10.0 // Mass in kilograms
	//$concave
}