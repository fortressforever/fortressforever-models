/*
*****************************
Grenade Launcher 40mm Shell

FooleyCooley
*****************************
*/

$modelname 	"shells/shell_40mm.mdl"
$cdmaterials 	"models/shells"
$surfaceprop 	"default"

$model "studio" "reference_LOD0_shell_40mm.smd"

$lod 5 {
  replacemodel "reference_LOD0_shell_40mm" "reference_LOD1_shell_40mm"
}
$lod 15 {
  replacemodel "reference_LOD0_shell_40mm" "reference_LOD2_shell_40mm"
}
$lod 30 {
  replacemodel "reference_LOD0_shell_40mm" "reference_LOD3_shell_40mm"
}

$sequence Idle "anim_Idle" fps 30.00