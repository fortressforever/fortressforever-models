/*
*****************************
Sentry Gun, Level 1

Compile	- FooleyCooley

*****************************
*/

$modelname 		"buildable/sg/sg_lvl1.mdl"
$cdmaterials 		"models/buildable/sg"
$surfaceprop		"metal"

$attachment "barrel01" 	"bone_sgMuzzle1" 0 0 0
$attachment "eyes" 	"bone_sgTripod"  21 0 0
$attachment "ffAtt_fl" 	"bone_sgTripod_FL" 0 0 0
$attachment "ffAtt_fr" 	"bone_sgTripod_FR" 0 0 0
$attachment "ffAtt_bm" 	"bone_sgTripod_BK" 0 0 0

$poseparameter aim_yaw -180 180 wrap
$poseparameter aim_pitch -60 30

$bodygroup base { 
  "studio" "reference_SG_Level1"
}

$bodygroup specialFX {
  blank
  "studio" "specialFX_SG_Level1"
}

$texturegroup skinfamilies {
  { "sg_lvl1_blue.vmt" "sg_fx_blue.vmt"}
  { "sg_lvl1_red.vmt" "sg_fx_red.vmt"}
  { "sg_lvl1_yellow.vmt" "sg_fx_yellow.vmt"}
  { "sg_lvl1_green.vmt" "sg_fx_green.vmt"}
}
$lod 25 { 
	replacemodel "reference_SG_Level1.smd" "LOD1_SG_Level1.smd"
}
$lod 50 { 
	replacemodel "reference_SG_Level1.smd" "LOD2_SG_Level1.smd"
}
$sequence aim_yaw   "anim_SG_Level1" fps 30
$sequence aim_pitch "anim_SG_Level1" fps 30

$weightlist sg_yaw   { "bone_sgYaw" 1.0 }
$weightlist sg_pitch { "bone_sgPitch" 1.0 }

$animation neutral  "anim_SG_Level1" frame 0 0

$animation sg_yaw0   "anim_SG_Level1" frame 0 0 subtract neutral 0 weightlist sg_yaw
$animation sg_yaw120 "anim_SG_Level1" frame 3 3 subtract neutral 0 weightlist sg_yaw
$animation sg_yaw240 "anim_SG_Level1" frame 6 6 subtract neutral 0 weightlist sg_yaw

$animation sg_Up   "anim_SG_Level1" frame 12 12 subtract neutral 0 weightlist sg_pitch
$animation sg_Down "anim_SG_Level1" frame 15 15 subtract neutral 0 weightlist sg_pitch

$sequence auto_leftright { sg_yaw0 sg_yaw120 sg_yaw240 sg_yaw0 blendwidth 4 blend "aim_yaw" -180 180 } weightlist sg_yaw delta autoplay
$sequence auto_updown    { sg_Up sg_Down sg_Up blendwidth 3 blend "aim_pitch" -60 30 } weightlist sg_pitch delta autoplay


$collisionmodel "physmodel"
{
  $mass 90.0
  $concave
}