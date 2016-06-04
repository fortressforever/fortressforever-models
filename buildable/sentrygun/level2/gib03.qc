$modelname "buildable\sg\gibs\2c.mdl"
$model "studio" "gib03.smd"
$cdmaterials "models\buildable\sg"
$cdmaterials "models\buildable\dispenser\"

$surfaceprop "metal"

$sequence idle "gib03.smd"
$autocenter
$collisionmodel "gib03.smd"{

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