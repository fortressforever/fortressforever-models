$cd "D:\mancannon"
$modelname "items/jumppad/jumppad.mdl"
$model "Body" "jumppad_ref.smd"
$cdmaterials "models\items\jumppad\"
$hboxset "default"
$hbox 0 "smdimport" -71.900  -71.900  0.000  71.900  71.900  8.000
// Model uses material "jumppad.vmt"
// Model uses material "jumppad_light.vmt"
$surfaceprop "metal"
$keyvalues  { prop_data {"base" metal.small } 
$illumposition 0.000 0.000 4.000
$sequence Idle "Idle" ACT_IDLE 1 fps 30.00
$collisionmodel "phymodel.smd" {

	$concave
	$mass 100.0
	$inertia 1.00
	$damping 0.00
	$rotdamping 0.00
}
