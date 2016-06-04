$modelname "weapons\umbrella\w_umbrella.mdl"

$cdmaterials "models\weapons\umbrella"

$scale 1

$keyvalues { "prop_data" { "base" "metal.medium" } }

$model w_umbrella "C:\Kenneth\3D\FF\W Weapons\w_umbrella\wumb_ref.smd"

$sequence idle "C:\Kenneth\3D\FF\W Weapons\w_umbrella\wumb_idle.smd" loop fps 15

$collisionmodel "C:\Kenneth\3D\FF\W Weapons\w_umbrella\wumb_phy.smd"
{
	$mass 3.0 // Mass in kilograms
	$concave
}