$modelname "weapons\crowbar\w_crowbar.mdl"
$model "studio" "crow_ref.smd"
$cdmaterials "models\weapons\crowbar"
$surfaceprop "crowbar"
$sequence idle "crow_idle" loop ACT_VM_IDLE 1 fps 30.00
$sequence attack1 "attack1" fps 30.00
$collisionmodel "crow_phy.smd" {

	$mass 8.0
	$inertia 1.00
	$damping 0.00
	$rotdamping 0.00
}
