/*
*****************************
Sentry Gun, Level 2

Compile	- FooleyCooley

*****************************
*/

$modelname 		"buildable/sg/sg_lvl2.mdl"
$cdmaterials 		"models/buildable/sg"
$surfaceprop		"metal"

$attachment "barrel01" 	"bone_sgMuzzle1" 0 0 0
$attachment "eyes" 	"bone_sgTripod" 21 0 0
$attachment "ffAtt_fl" 	"bone_sgTripod_FL" 0 0 0
$attachment "ffAtt_fr" 	"bone_sgTripod_FR" 0 0 0
$attachment "ffAtt_bm" 	"bone_sgTripod_BK" 0 0 0

$poseparameter aim_yaw -180 180 wrap
$poseparameter aim_pitch -60 30

$bodygroup base { 
  "studio" "reference_SG_Level2"
}

$bodygroup specialFX {
  blank
  "studio" "specialFX_SG_Level2"
}

$texturegroup skinfamilies {
  { "sg_lvl2_blue.vmt" "sg_lvl2_hood_blue.vmt" "sg_fx_blue.vmt" }
  { "sg_lvl2_red.vmt" "sg_lvl2_hood_red.vmt" "sg_fx_red.vmt" }
  { "sg_lvl2_yellow.vmt" "sg_lvl2_hood_yellow.vmt" "sg_fx_yellow.vmt" }
  { "sg_lvl2_green.vmt" "sg_lvl2_hood_green.vmt" "sg_fx_green.vmt" }
}
$lod 25 { 
	replacemodel "reference_SG_Level2.smd" "LOD1_SG_Level2.smd"
}
$lod 60 { 
	replacemodel "reference_SG_Level2.smd" "LOD2_SG_Level2.smd"
}
$sequence aim_yaw   "anim_SG_Level2" fps 30
$sequence aim_pitch "anim_SG_Level2" fps 30

$weightlist sg_yaw   { "bone_sgYaw" 1.0 }
$weightlist sg_pitch { "bone_sgPitch" 1.0 }

$animation neutral  "anim_SG_Level2" frame 0 0

$animation sg_yaw0   "anim_SG_Level2" frame 0 0 subtract neutral 0 weightlist sg_yaw
$animation sg_yaw120 "anim_SG_Level2" frame 3 3 subtract neutral 0 weightlist sg_yaw
$animation sg_yaw240 "anim_SG_Level2" frame 6 6 subtract neutral 0 weightlist sg_yaw

$animation sg_Up   "anim_SG_Level2" frame 12 12 subtract neutral 0 weightlist sg_pitch
$animation sg_Down "anim_SG_Level2" frame 15 15 subtract neutral 0 weightlist sg_pitch

$sequence auto_leftright { sg_yaw0 sg_yaw120 sg_yaw240 sg_yaw0 blendwidth 4 blend "aim_yaw" -180 180 } weightlist sg_yaw delta autoplay
$sequence auto_updown    { sg_Up sg_Down sg_Up blendwidth 3 blend "aim_pitch" -60 30 } weightlist sg_pitch delta autoplay

$poseparameter barrel_rotate -180 180 wrap
$sequence barrel_rotate   "anim_Fire" fps 60

$weightlist ac_rot   { "bone_sgBarrels1" 1.0 }

//$animation neutral   "anim_Fire" frame 0 0
$animation ac_rot0   "anim_Fire" frame 0 0 subtract neutral 0 weightlist ac_rot
$animation ac_rot120 "anim_Fire" frame 10 10 subtract neutral 0 weightlist ac_rot
$animation ac_rot240 "anim_Fire" frame 20 20 subtract neutral 0 weightlist ac_rot

$sequence auto_rotate { ac_rot0 ac_rot120 ac_rot240 ac_rot0 blendwidth 4 blend "barrel_rotate" -180 180 } weightlist ac_rot delta autoplay


$collisionmodel "physmodel"
{
  $mass 90.0
  $concave
}