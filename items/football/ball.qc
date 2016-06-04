/*
*****************************
Ball

Model 	- Decs
Skin	- Decs
Anims	- Decs
*****************************
*/

$cd 			"C:\Games\Steam\SteamApps\SourceMods\FortressForever\models-dev\General Source Files\Items\football"
$modelname 		"items/ball/ball2.mdl"
$cdmaterials 	"models\items\ball\"
$scale 			1.8

$bodygroup studio { 
  studio "football.smd" 
}
$sequence idle "football.smd" fps 1
$collisionmodel "football.smd"
{
$concave
$mass 5.0
$inertia 1.0
$damping 0.0
$rotdamping 0.0
}