// Created by Crowbar 0.24.0.0

$modelname "weapons/flamethrower/v_flamethrower.mdl"

$bodygroup "studio"
{
	studio "v_flamethrower_reference.smd"
}


$cdmaterials "models\weapons\flamethrower\"
$cdmaterials "models\v_arms\"

$attachment "1" "bone_muzzle" 0 0 0 rotate 0 0 0
$attachment "pilotLight" "bone_pilotLight" 0 0 0 rotate 0 0 0

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "bone_base" "" -5.920469 -13.516381 -18.534498 0 -1.570796 0 0 0 0 0 0 0
// $definebone "bone_pilotLight" "bone_base" 8.5282 -30.415398 -1.079692 -1.38105 -0.514623 -0.146844 0 0 0 0 0 0
// $definebone "bone_muzzle" "bone_base" 9.087655 -29.985512 0.418373 0 0 -1.570796 0 0 0 0 0 0
// $definebone "bone_button" "bone_base" 16.960133 -18.554409 -1.327052 0 1.570796 0 0 0 0 0 0 0
// $definebone "bone_gauge" "bone_base" 19.001047 -8.263083 -1.965265 0 1.570796 0 0 0 0 0 0 0
// $definebone "bone_leftArm" "bone_base" 3.534497 -0.308943 -20.920469 -1.570797 -0.004444 -1.570797 0 0 0 0 0 0
// $definebone "bone_leftIndex1" "bone_leftArm" 11.145897 0.000002 0.000001 0 0 0.308578 0 0 0 0 0 0
// $definebone "bone_leftIndex2" "bone_leftIndex1" 4.860934 0.000002 0 -0.012509 -0.174088 -0.232035 0 0 0 0 0 0
// $definebone "bone_leftIndex3" "bone_leftIndex2" 0.90003 -0.000001 -0.000004 -0.004358 -0.087163 -0.020978 0 0 0 0 0 0
// $definebone "bone_leftIndex4" "bone_leftIndex3" 0.810905 0.000001 0.000001 -0.008784 -0.174314 0.000768 0 0 0 0 0 0
// $definebone "bone_leftMiddle1" "bone_leftArm" 11.145897 0.000001 0.000001 0 0 0.051177 0 0 0 0 0 0
// $definebone "bone_leftMiddle2" "bone_leftMiddle1" 4.792945 -0.000001 0 0 -0.087266 -0.046733 0 0 0 0 0 0
// $definebone "bone_leftMiddle3" "bone_leftMiddle2" 0.984867 0 -0.000001 0 -0.087266 0 0 0 0 0 0 0
// $definebone "bone_leftMiddle4" "bone_leftMiddle3" 0.855278 0 0 0 -0.174533 0 0 0 0 0 0 0
// $definebone "bone_leftRing1" "bone_leftArm" 11.145897 0.000002 0.000001 0 0 -0.184458 0 0 0 0 0 0
// $definebone "bone_leftRing2" "bone_leftRing1" 4.742498 -0.000027 0 0.009156 -0.086786 0.083653 0 0 0 0 0 0
// $definebone "bone_leftRing3" "bone_leftRing2" 0.990305 0.000002 0.000002 0.010354 -0.174229 0.045192 0 0 0 0 0 0
// $definebone "bone_leftRing4" "bone_leftRing3" 0.882721 0 0 0.008805 -0.174313 0.008027 0 0 0 0 0 0
// $definebone "bone_leftPinky1" "bone_leftArm" 11.145962 0 0.000001 0 0 -0.393458 0 0 0 0 0 0
// $definebone "bone_leftPinky2" "bone_leftPinky1" 4.797307 -0.000027 0 0.046858 -0.257667 0.215922 0 0 0 0 0 0
// $definebone "bone_leftPinky3" "bone_leftPinky2" 0.837616 0.000001 0.000001 0.012624 -0.086351 0.030552 0 0 0 0 0 0
// $definebone "bone_leftPinky4" "bone_leftPinky3" 0.888975 -0.000001 -0.000001 0 0 0.006805 0 0 0 0 0 0
// $definebone "bone_leftThumb1" "bone_leftArm" 11.14591 0.000002 0.000001 -0.215624 -0.149646 0.9776 0 0 0 0 0 0
// $definebone "bone_leftThumb2" "bone_leftThumb1" 3.003421 0 0 0.112059 0.13409 -0.257254 0 0 0 0 0 0
// $definebone "bone_leftThumb3" "bone_leftThumb2" 1.809052 0.000039 0.000003 0 0 0.269925 0 0 0 0 0 0




$sequence "Draw" "v_flamethrower_anims\Draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
}

$sequence "Idle1" "v_flamethrower_anims\Idle1.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	snap
}

$sequence "Idle2" "v_flamethrower_anims\Idle2.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	snap
}

$sequence "Idle3" "v_flamethrower_anims\Idle3.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	snap
}

$sequence "Fire" "v_flamethrower_anims\Fire.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 1
	snap
}

$sequence "Reload" "v_flamethrower_anims\Reload.smd" {
	fps 30
	activity "ACT_VM_RELOAD" 1
	snap
}