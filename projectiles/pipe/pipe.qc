$modelname "weapons/pipelauncher/pipe.mdl"
$cdmaterials "models/weapons/pipelauncher/"
$scale 1
$surfaceprop "default"
$keyvalues { "prop_data" { "base" "Wooden.Large" } }
$body "Body" "pipe_reference"
$texturegroup skinfamilies {
	{ "pipe_green.vmt" }
	{ "pipe_blue.vmt" }
	{ "pipe_yellow.vmt" }
}

$attachment "glowsprite" "joint1" 0 0 0 rotate 0 0 0
$sequence idle "pipe_idle" loop fps 1
//$collisionmodel "conc_phy.smd"
//{
//$mass 1
//$concave
//}

$cdmaterials "models/weapons/pipelauncher/"