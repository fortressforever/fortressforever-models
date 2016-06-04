//$cd "D:\FortressForever\modelsrc\editor\ff_script_helper"
$modelname "editor/ff_script_helper.mdl"
$model "studio" "ff_script_helper.smd"
$cdmaterials "models\editor\"
$hboxset "default"
$hbox 0 "Box01" -8.000  -8.000  -8.000  8.000  8.000  8.000
// Model uses material "ff_script_helper.vmt"
$surfaceprop "default"

//$sequence Idle "Idle" loop fps 30.00
$sequence Idle "ff_script_helper" ACT_IDLE 1 fps 30.00
