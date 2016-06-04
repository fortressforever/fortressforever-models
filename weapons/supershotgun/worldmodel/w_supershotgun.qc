$modelname "weapons\supershotgun\w_supershotgun.mdl"

$cdmaterials "models\weapons\supershotgun"

$attachment 1 "ffSkel_gunEnd" 0 0 0

$scale 1

$keyvalues { "prop_data" { "base" "metal.medium" } }

$model w_supershotgun "w_supershotgun_ref.smd"

$sequence idle "w_supershotgun_idle.smd" loop ACT_VM_IDLE 1 fps 15

$sequence attack1 "attack1" ACT_VM_PRIMARYATTACK 1 fps 30.00 {
{ event AE_NPC_MUZZLEFLASH 0 "SMG1 1" }
}

$collisionmodel "w_supershotgun_phy.smd"
{
	$mass 3.0 // Mass in kilograms
	$concave
}