$cd ".."
$modelname "player/hwguy/hwguy.mdl"
//$model studio "/reference/hwguy_reference.smd"
$bodygroup torso {
studio "/reference/hwguy_reference_torsoShape.smd"
blank
}
$bodygroup head {
studio "/reference/hwguy_reference_headShape.smd"
blank
}
$bodygroup leftArm {
studio "/reference/hwguy_reference_leftArmShape.smd"
blank
}
$bodygroup leftLeg {
studio "/reference/hwguy_reference_leftLegShape.smd"
blank
}
$bodygroup rightArm {
studio "/reference/hwguy_reference_rightArmShape.smd"
blank
}
$bodygroup rightLeg {
studio "/reference/hwguy_reference_rightLegShape.smd"
blank
}

$texturegroup skinfamilies {	//Where is textures for non-body? -BreakinBenny
	{ "hwguy_body_blue.vmt" }
	{ "hwguy_body_red.vmt"  }
	{ "hwguy_body_yellow.vmt" }
	{ "hwguy_body_green.vmt" }
}

$lod 10 {
	replacemodel "/reference/hwguy_reference_torsoShape.smd" "/reference/LOD/hwguy_reference_torsoShape_lod1.smd"
	replacemodel "/reference/hwguy_reference_headShape.smd" "/reference/LOD/hwguy_reference_headShape_lod1.smd"
	replacemodel "/reference/hwguy_reference_leftArmShape.smd" "/reference/LOD/hwguy_reference_leftArmShape_lod1.smd"
	replacemodel "/reference/hwguy_reference_rightArmShape.smd" "/reference/LOD/hwguy_reference_rightArmShape_lod1.smd"
	replacemodel "/reference/hwguy_reference_leftLegShape.smd" "/reference/LOD/hwguy_reference_leftLegShape_lod1.smd"
	replacemodel "/reference/hwguy_reference_rightLegShape.smd" "/reference/LOD/hwguy_reference_rightLegShape_lod1.smd"
}
$lod 30 {
	replacemodel "/reference/hwguy_reference_torsoShape.smd" "/reference/LOD/hwguy_reference_torsoShape_lod2.smd"
	replacemodel "/reference/hwguy_reference_headShape.smd" "/reference/LOD/hwguy_reference_headShape_lod2.smd"
	replacemodel "/reference/hwguy_reference_leftArmShape.smd" "/reference/LOD/hwguy_reference_leftArmShape_lod2.smd"
	replacemodel "/reference/hwguy_reference_rightArmShape.smd" "/reference/LOD/hwguy_reference_rightArmShape_lod2.smd"
	replacemodel "/reference/hwguy_reference_leftLegShape.smd" "/reference/LOD/hwguy_reference_leftLegShape_lod2.smd"
	replacemodel "/reference/hwguy_reference_rightLegShape.smd" "/reference/LOD/hwguy_reference_rightLegShape_lod2.smd"

	bonetreecollapse "ffSkel_neck"
	bonetreecollapse "ffSkel_leftForeArm"
	bonetreecollapse "ffSkel_rightForeArm"
	bonetreecollapse "ffSkel_leftLeg"
	bonetreecollapse "ffSkel_rightLeg"

	// simplify spine
	replacebone "ffSkel_Neck" "ffSkel_Spine2"
	replacebone "ffSkel_Spine3" "ffSkel_spine2"
	replacebone "ffSkel_spine1" "ffSkel_spine"
	replacebone "ffSkel_Spine" "ffSkel_spine2"
}

$shadowlod {
	replacemodel "/reference/hwguy_reference_torsoShape.smd" "/reference/LOD/hwguy_reference_torsoShape_lod2.smd"
	replacemodel "/reference/hwguy_reference_headShape.smd" "/reference/LOD/hwguy_reference_headShape_lod2.smd"
	replacemodel "/reference/hwguy_reference_leftArmShape.smd" "/reference/LOD/hwguy_reference_leftArmShape_lod2.smd"
	replacemodel "/reference/hwguy_reference_rightArmShape.smd" "/reference/LOD/hwguy_reference_rightArmShape_lod2.smd"
	replacemodel "/reference/hwguy_reference_leftLegShape.smd" "/reference/LOD/hwguy_reference_leftLegShape_lod2.smd"
	replacemodel "/reference/hwguy_reference_rightLegShape.smd" "/reference/LOD/hwguy_reference_rightLegShape_lod2.smd"
}

$attachment "attach_head" "ffSkel_Heads" 0 0 0 rotate 0 0 0
$attachment "attach_leftArm" "ffSkel_LeftArm" 0 0 0 rotate 0 0 0
$attachment "attach_leftLeg" "ffSkel_LeftUpLeg" 0 0 0 rotate 0 0 0
$attachment "attach_rightArm" "ffSkel_RightArm" 0 0 0 rotate 0 0 0
$attachment "attach_rightLeg" "ffSkel_RightUpLeg" 0 0 0 rotate 0 0 0
$attachment "anim_attachment_RH" "ffSkel_RightHand" 0 0 0 rotate 0 0 0
$attachment "anim_attachment_LH" "ffSkel_LeftHand" 0 0 0 rotate 0 0 0
$attachment "ffAtt_flag" "ffSkel_Spine3" 5 3 0 rotate 0 0 0

/* {
	flexfile "/reference/hwguy_decap.vta"
	flex "decap" frame 10
	flexcontroller "phoneme" "decap" "_range" 0 1
	flexfile "/reference/hwguy_bighead.vta"
	flex "bighead" frame 10
	flexcontroller "phoneme" "bighead" "range" 0 1
	%decap = decap
	%bighead = bighead
}
*/

$cdmaterials "models/player/hwguy/"
/* Model uses material "bmouth.vmt"
Model uses material "eyeball_l.vmt"
Model uses material "barneyface.vmt"
Model uses material "eyeball_r.vmt"
Model uses material "metrocop_sheet.vmt"
Model uses material "pupil_r.vmt"
Model uses material "glint.vmt"
Model uses material "pupil_l.vmt"
*/
$attachment "eyes" "ffSkel_Heads" 5.00 0.00 0.05 rotate 0 -20 -90
$attachment "mouth" "ffSkel_Heads" 0.30 -5.70 -0.00 rotate 0.00 -80.00 -90.00
$attachment "chest" "ffSkel_Spine2" 5.00 4.00 -0.00 rotate -0.00 90.00 90.00
$attachment "helmet_attachment" "ffSkel_Heads" 2.66 -1.60 -0.00 rotate 0.00 -82.95 -90.00
//$attachment "faceplate_attachment" "ValveBiped.faceplate_attachment" 0.00 -0.00 0.00 rotate -90.00 -90.00 0.00
//$attachment "forward" "ValveBiped.forward" 0.00 0.00 0.00 rotate 0.00 0.00 -0.00
//$attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" -0.00 -0.00 -0.00 rotate -90.00 -90.00 0.00
//$attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" -0.00 -0.00 0.00 rotate -90.00 -90.00 0.00
$attachment "anim_attachment_head" "ffSkel_Heads" -0.00 0.00 0.00 rotate -90.00 -90.00 0.00
$includemodel "player/ff_player_shared.mdl"
$surfaceprop "flesh"

$bbox -16 -16 0 16 16 72 
//$bbox -10 -18 0 26 18 72
// $bbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000

// .qc block generated by HLMV begins.

$hboxset "fortressforever"

$hbox 3 "ffSkel_Hips"	    -5.00   -7.95   -7.25     5.00    7.55    4.25
$hbox 6 "ffSkel_LeftUpLeg"	     3.00   -4.50   -4.00    17.00    4.50    4.00
$hbox 6 "ffSkel_LeftLeg"	    -4.00   -3.00   -2.50    16.00    4.00    3.50
$hbox 6 "ffSkel_LeftFoots"	     0.00   -1.50   -3.10    10.00    3.50    1.10
$hbox 7 "ffSkel_RightUpLeg"	     3.00   -4.50   -4.00    17.00    4.50    4.00
$hbox 7 "ffSkel_RightLeg"	    -4.00   -3.00   -4.00    16.00    4.00    2.00
$hbox 7 "ffSkel_RightFoots"	     0.00   -1.50   -0.90    10.00    3.50    3.30
$hbox 3 "ffSkel_Spine1"	    -5.00   -7.50   -7.50     3.00    3.50    7.50
$hbox 2 "ffSkel_Spine2"	    -5.00   -7.50   -7.50     5.00    3.50    7.50
$hbox 4 "ffSkel_LeftArm"	    -1.50   -1.50   -2.50    11.50    4.50    3.50
$hbox 4 "ffSkel_LeftForeArm"	     0.00   -2.50   -1.50    10.00    2.50    2.50
$hbox 4 "ffSkel_LeftHand"	    -0.50   -2.75   -1.75     6.50    1.75    1.75
$hbox 5 "ffSkel_RightArm"	    -1.50   -3.00   -3.50    11.50    3.00    2.50
$hbox 5 "ffSkel_RightForeArm"	     0.00   -2.50   -2.50    10.00    2.50    1.50
$hbox 5 "ffSkel_RightHand"	    -0.50   -3.22   -1.75     6.50    1.22    1.75
$hbox 1 "ffSkel_Heads"	    -4.00   -3.25   -2.25     4.00    3.25    6.25
$hbox 2 "ffSkel_Spine3"	    -1.00   -6.00   -8.00     5.00    3.00    8.00
$hbox 1 "ffSkel_Necks"	    -3.90   -4.00   -3.50     1.10    3.00    3.50

// .qc block generated by HLMV ends.

//$ikchain rhand ffSkel_RightHand 
//$ikchain lhand ffSkel_LeftHand 
$ikchain rfoot ffSkel_RightFoots
$ikchain lfoot ffSkel_LeftFoots

$sequence ragdoll "/reference/ragdoll" ACT_DIERAGDOLL 1 fps 30.00
$bonemerge ffSkel_att_righthand
$collisionjoints "/reference/hwguy_reference_phy.smd" {
	$mass 90.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "ffSkel_Hips"
	$jointmerge "ffSkel_Hips" "ffSkel_ffSkel_Spine1"

 	$jointconstrain "ffSkel_spine2" x limit -48.00 48.00 0.00
 	$jointconstrain "ffSkel_spine2" y limit -25.00 25.00 0.00
 	$jointconstrain "ffSkel_spine2" z limit -25.00 50.00 0.00

 	$jointconstrain "ffSkel_rightarm" x limit -39.00 39.00 0.00
 	$jointconstrain "ffSkel_rightarm" y limit -79.00 95.00 0.00
 	$jointconstrain "ffSkel_rightarm" z limit -93.00 23.00 0.00

 	$jointconstrain "ffSkel_leftarm" x limit -30.00 30.00 0.00
 	$jointconstrain "ffSkel_leftarm" y limit -95.00 84.00 0.00
	$jointconstrain "ffSkel_leftarm" z limit -86.00 26.00 0.00

	$jointconstrain "ffSkel_leftforearm" x limit 0.00 0.00 0.00
 	$jointconstrain "ffSkel_leftforearm" y limit 0.00 0.00 0.00
 	$jointconstrain "ffSkel_leftforearm" z limit -149.00 4.00 0.00

 	$jointconstrain "ffSkel_lefthand" x limit -37.00 37.00 0.00
 	$jointconstrain "ffSkel_lefthand" y limit 0.00 0.00 0.00
 	$jointconstrain "ffSkel_lefthand" z limit -57.00 59.00 0.00

	$jointconstrain "ffSkel_rightforearm" x limit 0.00 0.00 0.00
	$jointconstrain "ffSkel_rightforearm" y limit 0.00 0.00 0.00
	$jointconstrain "ffSkel_rightforearm" z limit -149.00 4.00 0.00

	$jointconstrain "ffSkel_righthand" x limit -60.00 60.00 0.00
	$jointconstrain "ffSkel_righthand" y limit 0.00 0.00 0.00
	$jointconstrain "ffSkel_righthand" z limit -57.00 70.00 0.00

	$jointconstrain "ffSkel_rightupleg" x limit -12.00 12.00 0.00
	$jointconstrain "ffSkel_rightupleg" y limit -8.00 75.00 0.00
	$jointconstrain "ffSkel_rightupleg" z limit -97.00 32.00 0.00

	$jointconstrain "ffSkel_rightleg" x limit 0.00 0.00 0.00
	$jointconstrain "ffSkel_rightleg" y limit 0.00 0.00 0.00
	$jointconstrain "ffSkel_rightleg" z limit -12.00 126.00 0.00

	$jointconstrain "ffSkel_heads" x limit -20.00 20.00 0.00
	$jointconstrain "ffSkel_heads" y limit -25.00 25.00 0.00
	$jointconstrain "ffSkel_heads" z limit -13.00 30.00 0.00

	$jointconstrain "ffSkel_leftupleg" x limit -12.00 12.00 0.00
	$jointconstrain "ffSkel_leftupleg" y limit -73.00 6.00 0.00
	$jointconstrain "ffSkel_leftupleg" z limit -93.00 30.00 0.00

	$jointconstrain "ffSkel_leftleg" x limit 0.00 0.00 0.00
	$jointconstrain "ffSkel_leftleg" y limit 0.00 0.00 0.00
	$jointconstrain "ffSkel_leftleg" z limit -8.00 126.00 0.00

	$jointconstrain "ffSkel_leftfoots" x limit 0.00 0.00 0.00
	$jointconstrain "ffSkel_leftfoots" y limit -10.00 10.00 0.00
	$jointconstrain "ffSkel_leftfoots" z limit -5.00 15.00 0.00

	$jointconstrain "ffSkel_rightfoots" x limit 0.00 0.00 0.00
	$jointconstrain "ffSkel_rightfoots" y limit -10.00 6.00 0.00
	$jointconstrain "ffSkel_rightfoots" z limit -5.00 15.00 0.00
}
