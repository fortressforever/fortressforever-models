$modelname "buildable\sg\gibs\2a.mdl"
$model "studio" "gib01.smd"
$cdmaterials "models\buildable\sg"
$cdmaterials "models\buildable\dispenser\"

$surfaceprop "metal"

$sequence idle "gib01.smd"
$autocenter
$collisionmodel "gib01.smd"{

	$mass 5
}
$texturegroup skinfamilies
{
    { "sg_lvl2_blue" }
    { "sg_lvl2_red" }
    { "sg_lvl2_yellow" }
    { "sg_lvl2_green" }
}
$keyvalues
{ 
	prop_data
	{
		base			Metal.Small 
		physicsmode 		2
	}
}