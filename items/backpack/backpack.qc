$modelname "items/backpack/backpack.mdl"
$cdmaterials "models/items/backpack/"
$scale 1
$surfaceprop "default"
$keyvalues { "prop_data" { "base" "Wooden.Large" } }
$body "Body" "backpack"
$sequence idle "backpack_idle" loop fps 1
$texturegroup skinfamilies {
	{ "backpack_blue.vmt" }
	{ "backpack_red.vmt" }
	{ "backpack_green.vmt" }
}
$collisionmodel "backpack_phy.smd"
{
$mass 1
$concave
}

$cdmaterials "models/items/backpack/"