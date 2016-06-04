/*
*****************************
Shotgun 12 Gauge Shell

FooleyCooley
*****************************
*/

$modelname 	"shells/shell_12gauge.mdl"
$cdmaterials 	"models/shells"
$surfaceprop 	"default"

$model "studio" "reference_LOD0_shell_12Gauge.smd"

$lod 5 {
  replacemodel "reference_LOD0_shell_12Gauge" "reference_LOD1_shell_12Gauge"
}
$lod 20 {
  replacemodel "reference_LOD0_shell_12Gauge" "reference_LOD2_shell_12Gauge"
}

$sequence Idle "anim_Idle" fps 30.00