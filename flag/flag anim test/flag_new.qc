$modelname "flag/flag.mdl"
$model "Body" "flag_ref.smd"
$cdmaterials "models\flag\"
$texturegroup skinfamilies
{
	{ "flag_blue.vmt" }
	{ "flag_red.vmt" }
	{ "flag_yellow.vmt" }
	{ "flag_green.vmt" }
}

$surfaceprop "carpet"
$sequence Idle "flag_idle" loop ACT_INFO_RETURNED 1 loop fps 30.00
$sequence Drop "flag_idle" ACT_INFO_DROPPED 1 loop fps 30.00
$sequence Carry "flag_idle" ACT_INFO_CARRIED 1 loop fps 30.00
$collisionmodel "phymodel.smd" {

	$concave
	$mass 10.0
	$inertia 1.00
	$damping 0.00
	$rotdamping 0.00
}
