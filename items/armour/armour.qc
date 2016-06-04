$modelname "items/armour/armour.mdl"
$cdmaterials "models/items/armour/"
$scale 1
$surfaceprop "default"
$keyvalues { "prop_data" { "base" "Wooden.Large" } }
$body "Body" "armour_reference"
$sequence idle "armour_idle" loop fps 1
$texturegroup skinfamilies {
	{ "armour_red.vmt" }
	{ "armour_green.vmt" }
	{ "armour_yellow.vmt" }
}
$collisionmodel "armour_phy.smd"
{
$mass 1
$concave
}

$cdmaterials "models/items/armour/"