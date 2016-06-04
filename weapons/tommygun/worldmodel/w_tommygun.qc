$modelname "weapons\tommygun\w_tommygun.mdl"

$cdmaterials "models\weapons\tommygun"

$attachment 1 "ffSkel_gunEnd" 0 0 0

$scale 1

$keyvalues { "prop_data" { "base" "metal.medium" } }

$model w_tommygun "w_tommyREF.smd"

$sequence idle "w_tommyIDLE.smd" loop fps 15

$sequence attack1 "attack1" ACT_VM_PRIMARYATTACK 1 fps 30.00 {
{ event AE_NPC_MUZZLEFLASH 0 "SMG1 1" }
}

$collisionmodel "w_tommyPHY.smd"
{
	$mass 3.0 // Mass in kilograms
	$concave
}