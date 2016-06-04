$modelname "buildable\sg\gibs\1c.mdl"
$model "studio" "gib_03.smd"
$cdmaterials "models\buildable\sg"
$cdmaterials "models\buildable\dispenser\"

$surfaceprop "metal"

$sequence idle "gib_03.smd"
$autocenter
$collisionmodel "gib_03.smd"{

	$mass 5
}
$texturegroup skinfamilies
{
    { "sg_lvl1_blue" }
    { "sg_lvl1_red" }
    { "sg_lvl1_yellow" }
    { "sg_lvl1_green" }
}
$keyvalues
{ 
	prop_data
	{
		base			Metal.Small 
		physicsmode 		2
	}
}