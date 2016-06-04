$modelname "buildable/detpack/detpack.mdl"
$model "studio" "detpack_ref.smd"
$cdmaterials "models\buildable\detpack"
// Model uses material "detpack.vmt"
// Model uses material "detpack_UVmap.vmt"
$surfaceprop "metal"
$illumposition 4.876 -2.116 8.708
$sequence idle "detpack_idle" loop fps 15.00
$collisionmodel "detpack_phy.smd" {

	//$mass 100.0
	$mass 2000.0
	$inertia 1.00
	$damping 0.00
	$rotdamping 0.00
	//$concave
}
