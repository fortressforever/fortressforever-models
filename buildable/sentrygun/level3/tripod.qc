$modelname "buildable\sg\gibs\tripod.mdl"
$model "studio" "sg_gib2.smd"
$cdmaterials "models\buildable\sg"
$cdmaterials "models\buildable\dispenser\"

$surfaceprop "metal"

$sequence idle "sg_gib2.smd"
$autocenter
$collisionmodel "sg_gib2_phy.smd"{

	$mass 15
}
$keyvalues
{ 
	prop_data
	{
		base			Metal.Small 
		physicsmode 		2
	}
}