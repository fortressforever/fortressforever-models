$modelname "buildable\sg\gibs\1d.mdl"
$model "studio" "gib_04.smd"
$cdmaterials "models\buildable\sg"
$cdmaterials "models\buildable\dispenser\"

$surfaceprop "metal"

$sequence idle "gib_04.smd"
$autocenter
$collisionmodel "gib_04.smd"{

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