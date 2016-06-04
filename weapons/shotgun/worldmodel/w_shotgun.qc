$modelname "weapons/shotgun/w_shotgun.mdl"
$model "Body" "shotgun_reference.smd"
$cdmaterials "models\weapons\shotgun\"
$cdmaterials "models\weapons\shotgun\"
$hboxset "default"
$hbox 0 "ffSkel_att_righthand" -0.175  0.000  -4.750  3.741  24.818  2.647
// Model uses material "w_shotgun.vmt"
$attachment "muzzle" "ffSkel_gunEnd" 0.00 -0.00 0.00 rotate 0.00 -0.00 0.00
$surfaceprop "default"
$keyvalues  { prop_data { "base" "Wooden.Large"  } } 
$illumposition -0.870 -29.004 28.037

$sequence idle "idle" loop ACT_VM_IDLE 1 fps 15
$sequence attack1 "attack" ACT_VM_PRIMARYATTACK 1 fps 30.00 {
{ event AE_NPC_MUZZLEFLASH 0 "SMG1 muzzle" }
}

$collisionmodel "shotgun_reference.smd" {	// TEMP

	$concave
	$mass 1.0
	$inertia 1.00
	$damping 0.00
	$rotdamping 0.00
}
