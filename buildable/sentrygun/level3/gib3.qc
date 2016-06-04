$modelname "buildable\sg\gibs\3b.mdl"
$model "studio" "sg_gib3.smd"
$cdmaterials "models\buildable\sg"
$cdmaterials "models\buildable\dispenser\"

$surfaceprop "metal"

$sequence idle "sg_gib3.smd"
$autocenter
$collisionmodel "sg_gib3_phy.smd"{

	$mass 20
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