$modelname "flag/flag.mdl"
$model "Body" "flag_reference.smd"
$cdmaterials "models\flag\"
$texturegroup skinfamilies
{
	{ "flag_blue.vmt" }
	{ "flag_red.vmt" }
	{ "flag_yellow.vmt" }
	{ "flag_green.vmt" }
}

$surfaceprop "carpet"
$sequence "Idle" "flag_reference" fps 30 ACT_IDLE 1
$collisionmodel "phymodel.smd" {

	$concave
	$mass 10.0
	$inertia 1.00
	$damping 0.00
	$rotdamping 0.00
}
