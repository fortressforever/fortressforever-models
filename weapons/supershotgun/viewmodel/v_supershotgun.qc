//--------------------------------------------------
//WillWow_mc- This is the Super Shotgun .qc file.
// Reasons for comment outs:
// First one is disabled because NO MORE FAKE PARTICLES! Actual coded ones to come!
// The two after that are commented out for the time being, until the coded particles are... well, coded.
// The two after that are disabled because instead of playing the cock sounds (forward + back) on their own, they are set to play a newer, slow cock sound to avoid sounds overlapping and stopping the other mid-play.
//--------------------------------------------------
$modelname "weapons/supershotgun/v_supershotgun.mdl"

$bodygroup "studio"
{
	studio "v_supershotgun_reference.smd"
}


$cdmaterials "models\weapons\supershotgun\"
$cdmaterials "models\v_arms\"
$cdmaterials "models\shells\"
//$cdmaterials "effects\"

$attachment "1" "bone_muzzle" 0 0 0 rotate 0 0 0
$attachment "2" "bone_ejectionPort" 0 0 0 rotate 0 -90 0

$surfaceprop "default"

$contents "solid"


$sequence "Draw" "v_supershotgun_anims\Draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	fadein 0
	{ event AE_CL_PLAYSOUND 19 "SuperShotgun.stock" }
}

$sequence Idle1 "v_supershotgun_anims\Idle1.smd" fps 30.00 ACT_VM_IDLE 3 loop
$sequence Idle2 "v_supershotgun_anims\Idle2.smd" fps 30.00 ACT_VM_IDLE 3 loop
$sequence Idle3 "v_supershotgun_anims\Idle3.smd" fps 30.00 ACT_VM_IDLE 3 loop
//A little 'inspect' animation, is two-thirds as likely as the other idles to play.
//$sequence Idle4 "v_supershotgun_anims\Idle4.smd" fps 30.00 ACT_VM_IDLE 2 loop

$sequence "Fire" "v_supershotgun_anims\Fire.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0
	{ event AE_MUZZLEFLASH 0 "SHOTGUN 1" }
//	{ event AE_CLIENT_EFFECT_ATTACH 0 "SuperShotgun_muzzle 1 35" }
	{ event AE_CL_PLAYSOUND 11 "SuperShotgun.cock" }
	{ event AE_CL_PLAYSOUND 11 "SuperShotgun.stock" }
	{ event AE_CL_PLAYSOUND 14 "SuperShotgun.stock" }
	{ event AE_CL_PLAYSOUND 22 "SuperShotgun.stock" }
	{ event AE_CLIENT_EFFECT_ATTACH 16 "EjectBrass_12gauge 2 70" }
	{ event AE_CLIENT_EFFECT_ATTACH 18 "EjectBrass_12gauge 2 70" }
}

$sequence "Fire1" "v_supershotgun_anims\Fire1.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0
	{ event AE_MUZZLEFLASH 0 "SHOTGUN 1" }
//	{ event AE_CLIENT_EFFECT_ATTACH 0 "SuperShotgun_muzzle 1 35" }
	{ event AE_CL_PLAYSOUND 11 "SuperShotgun.cock" }
	{ event AE_CL_PLAYSOUND 11 "SuperShotgun.stock" }
	{ event AE_CL_PLAYSOUND 14 "SuperShotgun.stock" }
	{ event AE_CL_PLAYSOUND 22 "SuperShotgun.stock" }
	{ event AE_CLIENT_EFFECT_ATTACH 16 "EjectBrass_12gauge 2 70" }
	{ event AE_CLIENT_EFFECT_ATTACH 18 "EjectBrass_12gauge 2 70" }
}

$sequence StartReload "v_supershotgun_anims\StartReload" ACT_SHOTGUN_RELOAD_START 1 fps 30.00 fadeout 0


$sequence "Reload" "v_supershotgun_anims\Reload.smd" {
	fps 30
	activity "ACT_VM_RELOAD" 1
	fadein 0
	fadeout 0
	{ event AE_CL_PLAYSOUND 11 "SuperShotgun.stock" }
}

$sequence "FinishReload" "v_supershotgun_anims\FinishReload.smd" {
	fps 30
	activity "ACT_SHOTGUN_RELOAD_FINISH" 1
	fadein 0
	{ event AE_CL_PLAYSOUND 6 "SuperShotgun.cock3" }
//	{ event AE_CL_PLAYSOUND 6 "SuperShotgun.cock1" }
//	{ event AE_CL_PLAYSOUND 14 "SuperShotgun.cock2" }
	{ event AE_CL_PLAYSOUND 20 "SuperShotgun.stock" }
}