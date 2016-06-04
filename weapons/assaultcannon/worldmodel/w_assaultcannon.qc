$modelname "weapons\assaultcannon\w_assaultcannon.mdl"
$alwayscollapse "SMDImport"
$cdmaterials "models\weapons\assaultcannon"

$attachment "1" "ffSkel_att_righthand" -3.00 39.00 2.00 rotate 0 90 0

$scale 1

$keyvalues { "prop_data" { "base" "metal.medium" } }

$model "studio" "ac_ref.SMD"

$sequence idle "ac_ref.SMD" loop ACT_VM_IDLE 1 fps 15

$poseparameter ac_rotate -180 180 wrap
$sequence ac_rotate   "ac_fire" fps 30

$weightlist ac_rot   { "ffSkel_gunEnd" 1.0 }

$animation neutral   "ac_fire" frame 0 0
$animation ac_rot0   "ac_fire" frame 0 0 subtract neutral 0 weightlist ac_rot
$animation ac_rot120 "ac_fire" frame 7 7 subtract neutral 0 weightlist ac_rot
$animation ac_rot240 "ac_fire" frame 14 14 subtract neutral 0 weightlist ac_rot

$sequence auto_rotate { ac_rot0 ac_rot120 ac_rot240 ac_rot0 blendwidth 4 blend "ac_rotate" -180 180 } weightlist ac_rot delta autoplay

$sequence attack1 "ac_fire.SMD" ACT_VM_PRIMARYATTACK 1 fps 30.00 {
{ event AE_NPC_MUZZLEFLASH 0 "SMG1 1" }
}
$lod 30 {
	replacemodel "ac_ref.SMD" "ac_lod1.smd"
}
$lod 60 {
	replacemodel "ac_ref.SMD" "ac_lod2.smd"
}
$collisionmodel "w_assaultcannon_ref.smd"	// TEMP
{
	$mass 3.0 // Mass in kilograms
	$concave
}