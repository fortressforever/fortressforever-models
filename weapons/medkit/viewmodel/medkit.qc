$modelname "weapons\medkit\v_medkit"
$model studio "F:\MyDocuments\Modelling\Steamwork\models\weapons\medkit\v\compile\medkit_ref.smd"

$cdmaterials "models\weapons\medkit"
$cdmaterials "models\v_arms"



$surfaceprop "default"
$illumposition 0 0 0

// v_models: left/right front/back up/down
$origin 0 10.5 1

$hboxset "default" 

// sequences (movement animations)
// ie. $sequence (sequence name) (sequence .smd) [smd name]  [event <#> <frame> [options]]  [fps <#>] [origin <X> <Y> <Z>] [rotate <angle>] [scale <#>] [loop] [frame <start> <end>] [blend <axis> <start> <end>] [node <#>] [transition <start> <end>] [rtransition <start> <end>]
// $skiptransition draw hit1 miss1 idle1 idle2 idle3 idle4



$sequence hit1 "F:\MyDocuments\Modelling\Steamwork\models\weapons\medkit\v\compile\medkit_hitcenter1.smd" fps 35 activity ACT_VM_HITCENTER 1 fadein 0.5 fadeout 0.5 node "hit"
$sequence hit2 "F:\MyDocuments\Modelling\Steamwork\models\weapons\medkit\v\compile\medkit_hitcenter2.smd" fps 35 activity ACT_VM_HITCENTER 1 fadein 0.5 fadeout 0.5 node "hit"
$sequence miss1 "F:\MyDocuments\Modelling\Steamwork\models\weapons\medkit\v\compile\medkit_misscenter1.smd" fps 35 activity ACT_VM_MISSCENTER 1 fadein 0.5 fadeout 0.5 node "miss"
$sequence miss2 "F:\MyDocuments\Modelling\Steamwork\models\weapons\medkit\v\compile\medkit_misscenter2.smd" fps 35 activity ACT_VM_MISSCENTER 1 fadein 0.5 fadeout 0.5 node "miss"
$sequence miss3 "F:\MyDocuments\Modelling\Steamwork\models\weapons\medkit\v\compile\medkit_misscenter3.smd" fps 35 activity ACT_VM_MISSCENTER 1 fadein 0.5 fadeout 0.5 node "miss"
$sequence idle1 "F:\MyDocuments\Modelling\Steamwork\models\weapons\medkit\v\compile\medkit_idle1.smd" loop fps 30 activity ACT_VM_IDLE 5 fadein 2 fadeout 3
$sequence idle2 "F:\MyDocuments\Modelling\Steamwork\models\weapons\medkit\v\compile\medkit_idle5.smd" loop fps 30 activity ACT_VM_IDLE 5 fadein 2 fadeout 3
$sequence idle3 "F:\MyDocuments\Modelling\Steamwork\models\weapons\medkit\v\compile\medkit_idle3.smd" loop fps 30 activity ACT_VM_IDLE 5 fadein 3 fadeout 2
$sequence deepidle "F:\MyDocuments\Modelling\Steamwork\models\weapons\medkit\v\compile\medkit_idle4.smd" fps 40 activity ACT_VM_IDLE 3 fadein 1 fadeout 2
$sequence deepestidle "F:\MyDocuments\Modelling\Steamwork\models\weapons\medkit\v\compile\medkit_idle2.smd" fps 40 activity ACT_VM_IDLE 2 fadein 0.5 fadeout 1.5 {
  { event AE_CL_PLAYSOUND 63 "medkit.button1" }
  { event AE_CL_PLAYSOUND 84 "medkit.button1" }
  { event AE_CL_PLAYSOUND 146 "medkit.button2" }
 }
$sequence draw "F:\MyDocuments\Modelling\Steamwork\models\weapons\medkit\v\compile\medkit_draw.smd" fps 22 activity ACT_VM_DRAW -1 fadein 0.5 fadeout 1 node "draw"



