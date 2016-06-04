$modelname "buildable\sg\gibs\2b.mdl"
$model "studio" "gib02.smd"
$cdmaterials "models\buildable\sg"
$cdmaterials "models\buildable\dispenser\"

$surfaceprop "metal"

$sequence idle "gib02.smd"
$autocenter
$collisionmodel "gib02.smd"{

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