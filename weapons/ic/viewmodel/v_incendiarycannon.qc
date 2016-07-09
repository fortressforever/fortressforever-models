$modelname "weapons\incendiarycannon\v_incendiarycannon.mdl"

$bodygroup "studio"
{
	studio "v_incendiarycannon_reference.smd"
}


$cdmaterials "models\weapons\incendiarycannon\"
$cdmaterials "models\v_arms\"
$cdmaterials "models\shells\"

$texturegroup "skinfamilies"
{
	{
		"v_pyroArms_blue.vmt"
	}
	{
		"v_pyroArms_red.vmt"
	}
}

$attachment "1" "bone_muzzle" 0 0 0 rotate 0 0 0

$surfaceprop "default"

$contents "solid"

// $hboxset "default"

// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Scene_Root" "" 0 0 0 1.570796 0 0 0 0 0 0 0 0
// $definebone "parent" "Scene_Root" -3.20894 -3.608899 -2.655137 -0.05504 0.148491 0.045293 0 0 0 0 0 0
// $definebone "bone_rightArm" "parent" -12.064398 -14.448631 2.062558 2.533902 1.496455 -0.623753 0 0 0 0 0 0
// $definebone "bone_rightwrist" "bone_rightArm" -9.428904 0.007631 0.000002 -0.009604 -0.035325 -0.004231 0 0 0 0 0 0
// $definebone "bone_rightIndex2" "bone_rightwrist" -4.252161 -1.184107 -0.123116 -0.007466 -0.373059 0.169373 0 0 0 0 0 0
// $definebone "bone_rightIndex3" "bone_rightIndex2" -1.01054 -0.001395 0.191561 -0.094052 -0.392069 0.020218 0 0 0 0 0 0
// $definebone "icendiarycannon" "bone_rightwrist" -3.461858 -0.61272 -1.261866 2.890004 1.544626 -0.290125 0 0 0 0 0 0
// $definebone "ic_grip_and_body" "icendiarycannon" 0 -0.000001 0 0 0 0 0 0 0 0 0 0
// $definebone "reload_grip" "ic_grip_and_body" 3.50532 2.079058 11.476252 0.036901 -0.035165 -0.003468 0 0 0 0 0 0
// $definebone "left_arm_constraint" "reload_grip" 0 0 0 0 0 0 0 0 0 0 0 0
// $definebone "bone_lefttArm" "left_arm_constraint" 6.659907 -0.411025 -10.837961 -0.395402 -0.097529 1.265968 0 0 0 0 0 0
// $definebone "bone_leftwrist" "left_arm_constraint" 2.926476 -0.176275 -2.182865 -0.583426 -0.231185 1.057894 0 0 0 0 0 0
// $definebone "bone_leftThumb2" "bone_leftwrist" 1.185279 0.692824 1.79463 2.226689 0.792877 -1.909529 0 0 0 0 0 0
// $definebone "bone_leftThumb3" "bone_leftThumb2" -0.924276 -0.299251 0.098677 -0.760351 0.027318 -0.47708 0 0 0 0 0 0
// $definebone "bone_leftRing2" "bone_leftwrist" -0.52029 0.089826 4.19868 2.884277 0.102701 -1.284037 0 0 0 0 0 0
// $definebone "bone_leftRing3" "bone_leftRing2" -1.372347 -0.059752 -0.168605 0.613359 0.899874 0.904564 0 0 0 0 0 0
// $definebone "bone_leftRing4" "bone_leftRing3" -0.947675 -0.03766 0.072578 1.132339 1.338124 0.831636 0 0 0 0 0 0
// $definebone "bone_leftPinky2" "bone_leftwrist" -1.514174 0.083204 4.055764 3.067857 0.491191 -1.460789 0 0 0 0 0 0
// $definebone "bone_leftPinky3" "bone_leftPinky2" -0.975707 0.063959 -0.257629 0.483649 0.870591 0.435004 0 0 0 0 0 0
// $definebone "bone_leftPinky4" "bone_leftPinky3" -1.104704 -0.02623 0.434506 0.841693 1.336895 0.728099 0 0 0 0 0 0
// $definebone "bone_leftMiddle2" "bone_leftwrist" 0.150008 0.182023 4.057541 -3.094057 -0.064715 -1.603273 0 0 0 0 0 0
// $definebone "bone_leftMiddle3" "bone_leftMiddle2" -0.995234 -0.063958 -0.168546 -0.131492 0.493123 -0.164067 0 0 0 0 0 0
// $definebone "bone_leftMiddle4" "bone_leftMiddle3" -0.960311 -0.105663 0.017679 0.708666 1.497031 0.802612 0 0 0 0 0 0
// $definebone "bone_leftIndex2" "bone_leftwrist" 1.010797 0.411722 3.764325 3.134497 0.252206 -1.537086 0 0 0 0 0 0
// $definebone "bone_leftIndex3" "bone_leftIndex2" -1.00175 0.01646 0.107824 0.18037 0.810062 -0.02915 0 0 0 0 0 0
// $definebone "bone_leftIndex4" "bone_leftIndex3" -0.721444 -0.037194 0.025409 -0.538511 1.239225 -0.607748 0 0 0 0 0 0
// $definebone "trigger" "ic_grip_and_body" -0.121839 2.102229 2.011818 0 0 0 0 0 0 0 0 0
// $definebone "ammobox" "ic_grip_and_body" -8.4612 8.879276 2.337272 0 0 0 0 0 0 0 0 0
// $definebone "shell" "ic_grip_and_body" -0.807631 3.490666 6.155513 -0.126504 -0.014727 0.034445 0 0 0 0 0 0
// $definebone "bone_muzzle" "ic_grip_and_body" -1.126832 6.922823 24.87562 2.577238 -1.500882 -2.592775 0 0 0 0 0 0
// $definebone "buttplate" "icendiarycannon" 0.413506 7.270679 -7.367413 0 0 0 0 0 0 0 0 0




$sequence "Idle1" "v_incendiarycannon_anims\Idle1.smd" {
	fps 30
	activity "ACT_VM_IDLE" 5
	loop
	node "1"
	fadeout 0.5
}

$sequence "Idle2" "v_incendiarycannon_anims\Idle2.smd" {
	fps 45
	activity "ACT_VM_IDLE" 1
	loop
	node "1"
	fadeout 0.5
}

$sequence "Draw" "v_incendiarycannon_anims\Draw.smd" {
	fps 45
	activity "ACT_VM_DRAW" -1
	fadein 0
}

$sequence "Fire" "v_incendiarycannon_anims\Fire.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	{ event AE_MUZZLEFLASH 1 "RPG 1" }
}

$sequence "Fire2" "v_incendiarycannon_anims\Fire2.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	{ event AE_MUZZLEFLASH 1 "RPG 1" }
}

//This one had a little too much recoil on it, not using this for now
//$sequence "Fire3" "v_incendiarycannon_anims\Fire3.smd" {
//	fps 30
//	activity "ACT_VM_PRIMARYATTACK" 1
//	snap
//	{ event AE_MUZZLEFLASH 1 "RPG 1" }
//}

$sequence "StartReload" "v_incendiarycannon_anims\StartReload.smd" {
	fps 30
	activity "ACT_SHOTGUN_RELOAD_START" 1
	fadeout 0
}

$sequence "Reload" "v_incendiarycannon_anims\Reload.smd" {
	fps 30
	activity "ACT_VM_RELOAD" 1
	fadein 0
	fadeout 0
	{ event AE_CL_PLAYSOUND 10 "ic.cocky" }
}

$sequence "FinishReload" "v_incendiarycannon_anims\FinishReload.smd" {
	fps 30
	activity "ACT_SHOTGUN_RELOAD_FINISH" 1
	fadein 0
}

