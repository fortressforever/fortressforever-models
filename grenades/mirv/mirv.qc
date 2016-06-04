$modelname "grenades/mirv/mirv.mdl"

$cdmaterials "models/grenades/mirv"

$scale 1

$surfaceprop "metal"


$keyvalues { "prop_data" { "base" "metal.medium" } }

$body mirv "mirv_ref.smd"

$sequence idle "mirv_ref.smd"

$lod 10 {
 replacemodel "mirv_ref.smd" "mirv_lod1.smd"
 }
$lod 50 {
 replacemodel "mirv_ref.smd" "mirv_lod2.smd"
 }
$collisionmodel "mirv_lod2.smd" {
	mass 10
}