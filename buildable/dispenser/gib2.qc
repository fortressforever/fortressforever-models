$modelname "buildable\dispenser\gib2.mdl"
$model "studio" "dispgib2.smd"
$cdmaterials "models\buildable\dispenser\"

$surfaceprop "metal"

$sequence idle "dispenser.smd"
$autocenter
$collisionmodel "dispgib2.smd"{

	$mass 15
}
$texturegroup skinfamilies
{
    { "disp_map" }
    { "disp_blue" }
    { "disp_red" }
    { "disp_yellow" }
    { "disp_green" }
}
$keyvalues
{ 
	prop_data
	{
		base			Metal.Small 
		physicsmode 		2
	}
}