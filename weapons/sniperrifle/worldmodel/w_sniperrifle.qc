$modelname "weapons\sniperrifle\w_sniperrifle.mdl"

$cdmaterials "models\weapons\sniperrifle"

$attachment 1 "ffSkel_gunEnd" 0 0 0

$scale 1

$keyvalues { "prop_data" { "base" "metal.medium" } }

$model w_sniperrifle "w_sniper_ref.smd"

$sequence idle "w_sniper_idle.smd" loop ACT_VM_IDLE 1 fps 15

$lod 10 {
	replacemodel "w_sniper_ref.smd" "sniper_lod1.smd"
}
$lod 50 {
	replacemodel "w_sniper_ref.smd" "sniper_lod2.smd"
}
$sequence attack1 "attack1" ACT_VM_PRIMARYATTACK 1 fps 30.00 {
{ event AE_NPC_MUZZLEFLASH 0 "SMG1 1" }
}

$collisionmodel "w_sniper_ref.smd"
{
	$mass 10.0
	$concave
}