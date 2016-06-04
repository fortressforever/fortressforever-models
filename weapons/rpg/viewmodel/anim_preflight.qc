$modelname "ff_player/anim_preflight.mdl"

$scale 1
$surfaceprop "default"
$keyvalues { "prop_data" { "base" "Wooden.Large" } }
$body "Body" "anim_preflight"
$sequence Run_Counter_RPG "anim_preflight_Run_Counter_RPG" loop fps 30
$collisionmodel "anim_preflight_phy.smd"
{
$mass 1
$concave
}
