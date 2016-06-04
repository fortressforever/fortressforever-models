$modelname "weapons\grenadelauncher\w_grenadelauncher.mdl"

$cdmaterials "models\weapons\grenadelauncher"

$attachment 1 "ffSkel_gunEnd" 0 0 0

$scale 1

$keyvalues { "prop_data" { "base" "metal.medium" } }

$model "studio" "w_grenadelauncher_ref.smd"

$sequence idle "w_grenadelauncher_idle.smd" loop fps 15

$sequence attack1 "attack1" ACT_VM_PRIMARYATTACK 1 fps 30.00 {
{ event AE_NPC_MUZZLEFLASH 0 "SMG1 1" }
}

$collisionmodel "w_grenadelauncher_phy.smd"
{
	$mass 3.0 // Mass in kilograms
	$concave
}