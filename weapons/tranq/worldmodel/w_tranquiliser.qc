$modelname "weapons\tranq\w_tranq.mdl"

$cdmaterials "models\weapons\tranq"

$attachment 1 "ffSkel_gunEnd" 0 0 0

$scale 1

$keyvalues { "prop_data" { "base" "metal.medium" } }

$model w_tranquiliser "w_tranq_ref.smd"

$sequence idle "w_tranq_idle.smd" loop fps 15

$sequence attack1 "attack1" ACT_VM_PRIMARYATTACK 1 fps 30.00 {
{ event AE_NPC_MUZZLEFLASH 0 "SMG1 1" }
}

$collisionmodel "w_tranq_phy.smd"
{
	$mass 3.0 // Mass in kilograms
	$concave
}