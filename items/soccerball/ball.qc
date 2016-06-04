/*
*****************************
Ball

Model 	- Decs
Skin	- Decs
Anims	- Decs
*****************************
*/

//$cd 			".."
$modelname 		"items/ball/ball.mdl"
$cdmaterials 	"models\items\ball\"
$scale 			0.4

$bodygroup studio { 
  studio "reference_ball.smd" 
}

$sequence Idle "anim_idle" loop ACT_INFO_RETURNED 1 loop fps 30.00
$sequence Drop "anim_roll" ACT_INFO_DROPPED 1 loop fps 30.00
$sequence Carry "anim_roll" ACT_INFO_CARRIED 1 loop fps 30.00

$collisionmodel "reference_ball.smd"
{
$concave
$mass 5.0
$inertia 1.0
$damping 0.0
$rotdamping 0.0
}