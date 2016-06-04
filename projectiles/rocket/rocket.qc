/*
*****************************
Backpack

Model	- FooleyCooley
Skin	- Decs
Compile	- FooleyCooley
*****************************
*/

$modelname 	"projectiles/rocket/w_rocket.mdl"
$cdmaterials 	"models/projectiles/rocket"
$surfaceprop 	"metal"

$body "studio" "reference_LOD0_rocket.smd"

$lod 15 {
  replacemodel "reference_LOD0_rocket" "reference_LOD1_rocket"
}
$lod 30 {
  replacemodel "reference_LOD0_rocket" "reference_LOD2_rocket"
}
$lod 40 {
  replacemodel "reference_LOD0_rocket" "reference_LOD3_rocket"
}

$collisionmodel "reference_collision_rocket.smd" {
  $mass 4
  $inertia 1.00
  $damping 0.00
  $rotdamping 0.00
}

$sequence Idle "anim_Idle" fps 30.00