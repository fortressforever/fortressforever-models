$modelname "grenades\caltrop\caltrop_holster_gib2"
$cdmaterials "models\grenades\caltrop\"
$cliptotextures

$scale 0.14


$bodygroup studio { 
  studio "caltrop_holster_gib2.smd" 
}


$sequence idle "caltrop_holster_gib2_idle" ACT_CALTROP_HOLSTER_GIB2_IDLE 1 loop fps 1.00


$surfaceprop "metal"

// We have no collision model (?)
$collisionmodel "caltrop_holster_gib2_phy.smd"
{
$mass 5.0
$concave
}
