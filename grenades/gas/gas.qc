$modelname "grenades\gas\gas"
$cdmaterials "models\grenades\gas\"
$cliptotextures

$scale 0.1

//$poseparameter aim_yaw -180.00 180.00 wrap
//$poseparameter aim_pitch -60 0

$bodygroup studio { 
  studio "GASGRENADE_REF.smd" 
}


$sequence idle "gas_idle" ACT_GAS_IDLE 1 loop fps 1.00
$sequence deploy "gas_deploy" ACT_GAS_DEPLOY 1 fps 30.00
$sequence deploy_idle "gas_deploy_idle" ACT_GAS_DEPLOY_IDLE 1 loop fps 1.00


//$surfaceprop "metal"
//$jointsurfaceprop "main01"	 "metal"
//$jointsurfaceprop "h4p01"	 "metal"
//$jointsurfaceprop "l5p01"	 "metal"
//$jointsurfaceprop "l1p01"	 "metal"
//$jointsurfaceprop "l3p01"	 "metal"
//$jointsurfaceprop "h1p01"	 "metal"
//$jointsurfaceprop "l4p01"	 "metal"
//$jointsurfaceprop "h5p01"	 "metal"
//$jointsurfaceprop "h3p01"	 "metal"
//$jointsurfaceprop "h2p01"	 "metal"
//$jointsurfaceprop "bp01"	 "metal"
//$jointsurfaceprop "l2p01"	 "metal"
//$hboxset "default"
//$hbox 0 "main01"	    -45 -45 -45 45 45 45

$collisionmodel "gasgrenade_phy.smd"
{
$mass 90.0
$concave
}
