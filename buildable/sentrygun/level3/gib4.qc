$modelname "buildable\sg\gibs\3c.mdl"
$model "studio" "sg_gib4.smd"
$cdmaterials "models\buildable\sg"
$cdmaterials "models\buildable\dispenser\"

$surfaceprop "metal"

$sequence idle "sg_gib4.smd"
$autocenter
$collisionmodel "sg_gib4_phy.smd"{

	$mass 50
}
$texturegroup skinfamilies
{
    { "sg_lvl3_blue" }
    { "sg_lvl3_red" }
    { "sg_lvl3_yellow" }
    { "sg_lvl3_green" }
}
$keyvalues
{ 
	prop_data
	{
		base			Metal.Small 
		physicsmode 		2
	}
}