$modelname "projectiles/nail/w_nail.mdl"
$cdmaterials "models/projectiles\nail\"
$cliptotextures

$scale 1.0

$bodygroup studio { 
  studio "nail" 
}



$sequence idle "nail_idle" loop  fps 1.00 
//$attachment "gun_hole" "ffSg_FireAttach" 0.0 0.0 0.0 rotate 0.0 0.0 0.0
$hboxset "nail"
$hbox 1 "ffSkel_nail" -1.5 -2 -1.5 1.5 8 1.5
