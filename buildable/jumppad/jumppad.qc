$modelname "items/jumppad/jumppad.mdl"
$model "Body" "jumppad_ref.smd"
$cdmaterials "models\items\jumppad\"
// Model uses material "jumppad.vmt"
// Model uses material "jumppad_light.vmt"
$surfaceprop "metal"
$texturegroup skinfamilies {
	{ "jumppad" }
	{ "jumppad_blue" }
	{ "jumppad_red" }
	{ "jumppad_yellow" }
	{ "jumppad_green" }
}
$sequence Idle "Idle" ACT_IDLE 1 fps 30.00
$collisionmodel "phymodel.smd" {

	$concave
	$mass 100.0
	$inertia 1.00
	$damping 0.00
	$rotdamping 0.00
}
$keyvalues
{
	prop_data
	{
		base			Metal.Small 
	}
}