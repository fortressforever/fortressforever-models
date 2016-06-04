$modelname "weapons/shotgun/v_shotgun.mdl"
$model "studio" "v_shotgun_ref.smd"
$cdmaterials "models\weapons\shotgun\"
$cdmaterials "models\v_arms\"

$origin -2 -9 -2

$texturegroup skinfamilies
{
	{"v_shotgun.vmt"
 "v_shotty_shell.vmt"
}
 	{"v_shotgun.vmt"
 "v_shotty_shell.vmt"
}
 	{"v_shotgun.vmt"
 "v_shotty_shell.vmt"
}
 	{"v_shotgun.vmt"
 "v_shotty_shell.vmt"
}
 }

$attachment "1" "bone_muzzle" -0.00 0.00 0.00 rotate -0.00 0.00 0.00
$attachment "2" "bone_ejection" 0.00 0.00 0.00 rotate 0.00 -90.00 0.00

$sequence Draw "Draw" ACT_VM_DRAW 1 fps 30.00 {
  { event AE_CL_PLAYSOUND 5 "shotgun.cock" }
}

$sequence Idle "idle" loop ACT_VM_IDLE 1 fps 30.00

$sequence Fire "Fire" ACT_VM_PRIMARYATTACK 1 fps 30.00 snap {
  { event AE_MUZZLEFLASH 0 "SHOTGUN 1" }
  { event AE_CLIENT_EFFECT_ATTACH 8 "EjectBrass_12gauge 2 70" }
  { event AE_CL_PLAYSOUND 3 "shotgun.cock" }
}

$sequence StartReload "StartReload" ACT_SHOTGUN_RELOAD_START 1 fps 60.00
$sequence Reload "Reload" ACT_VM_RELOAD 1 fps 60.00
$sequence FinishReload "FinishReload" ACT_SHOTGUN_RELOAD_FINISH 1 fps 30.00 {
  { event AE_CL_PLAYSOUND 16 "shotgun.cock" }
}

