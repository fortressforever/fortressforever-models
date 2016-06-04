//  events on movements use the attachments lfoot and rfoot on the players feet to create water effects as the player walks
//  formatting for this is { event, generic event number, frame number of the animation to play the event on, name of the event to play, which attachment to play the event from

$modelname player/ff_player_shared.mdl
$cd "H:\Program Files\Valve\Steam\SteamApps\SourceMods\models\charpipeline\ff\ff_player_shared"
//$include "/reference/bones1.qci"

$renamebone "ffSkel_Hips" "ValveBiped.Bip01_Pelvis"
$renamebone "ffSkel_Head" "ValveBiped.Bip01_Head1" 
$renamebone "ffSkel_Neck" "ValveBiped.Bip01_Neck1" 
$renamebone "ffSkel_Spine" "ValveBiped.Bip01_Spine" 
$renamebone "ffSkel_Spine1" "ValveBiped.Bip01_Spine1" 
$renamebone "ffSkel_Spine2" "ValveBiped.Bip01_Spine2" 
$renamebone "ffSkel_Spine3" "ValveBiped.Bip01_Spine4"  
$renamebone "ffSkel_LeftShoulder" "ValveBiped.Bip01_L_Clavicle" 
$renamebone "ffSkel_LeftArm" "ValveBiped.Bip01_L_UpperArm" 
$renamebone "ffSkel_LeftHand" "ValveBiped.Bip01_L_Hand" 
$renamebone "ffSkel_LeftUpLeg" "ValveBiped.Bip01_L_Thigh" 
$renamebone "ffSkel_LeftLeg" "ValveBiped.Bip01_L_Calf" 
$renamebone "ffSkel_LeftForeArm" "ValveBiped.Bip01_L_Forearm" 
$renamebone "ffSkel_LeftFoot" "ValveBiped.Bip01_L_Foot" 
$renamebone "ffSkel_LeftToeBase" "ValveBiped.Bip01_L_Toe0" 
$renamebone "ffSkel_LeftHandPinky3" "ValveBiped.Bip01_L_Finger42" 
$renamebone "ffSkel_LeftHandPinky2" "ValveBiped.Bip01_L_Finger41"  
$renamebone "ffSkel_LeftHandPinky1" "ValveBiped.Bip01_L_Finger4" 
$renamebone "ffSkel_LeftHandRing3" "ValveBiped.Bip01_L_Finger32"  
$renamebone "ffSkel_LeftHandRing2" "ValveBiped.Bip01_L_Finger31"   
$renamebone "ffSkel_LeftHandRing1" "ValveBiped.Bip01_L_Finger3"  
$renamebone "ffSkel_LeftHandMiddle3" "ValveBiped.Bip01_L_Finger22"  
$renamebone "ffSkel_LeftHandMiddle2" "ValveBiped.Bip01_L_Finger21"  
$renamebone "ffSkel_LeftHandMiddle1" "ValveBiped.Bip01_L_Finger2" 
$renamebone "ffSkel_LeftHandIndex3" "ValveBiped.Bip01_L_Finger12" 
$renamebone "ffSkel_LeftHandIndex2" "ValveBiped.Bip01_L_Finger11"  
$renamebone "ffSkel_LeftHandIndex1" "ValveBiped.Bip01_L_Finger1"  
$renamebone "ffSkel_LeftHandThumb3" "ValveBiped.Bip01_L_Finger02" 
$renamebone "ffSkel_LeftHandThumb2" "ValveBiped.Bip01_L_Finger01"  
$renamebone "ffSkel_LeftHandThumb1" "ValveBiped.Bip01_L_Finger0" 

$renamebone "ffSkel_RightShoulder" "ValveBiped.Bip01_R_Clavicle" 
$renamebone "ffSkel_RightArm" "ValveBiped.Bip01_R_UpperArm" 
$renamebone "ffSkel_RightHand" "ValveBiped.Bip01_R_Hand" 
$renamebone "ffSkel_RightUpLeg" "ValveBiped.Bip01_R_Thigh" 
$renamebone "ffSkel_RightLeg" "ValveBiped.Bip01_R_Calf" 
$renamebone "ffSkel_RightForeArm" "ValveBiped.Bip01_R_Forearm" 
$renamebone "ffSkel_RightFoot" "ValveBiped.Bip01_R_Foot" 
$renamebone "ffSkel_RightToeBase" "ValveBiped.Bip01_R_Toe0" 
$renamebone "ffSkel_RightHandPinky3" "ValveBiped.Bip01_R_Finger42" 
$renamebone "ffSkel_RightHandPinky2" "ValveBiped.Bip01_R_Finger41"  
$renamebone "ffSkel_RightHandPinky1" "ValveBiped.Bip01_R_Finger4" 
$renamebone "ffSkel_RightHandRing3" "ValveBiped.Bip01_R_Finger32"  
$renamebone "ffSkel_RightHandRing2" "ValveBiped.Bip01_R_Finger31"  
$renamebone "ffSkel_RightHandRing1" "ValveBiped.Bip01_R_Finger3"  
$renamebone "ffSkel_RightHandMiddle3" "ValveBiped.Bip01_R_Finger22"  
$renamebone "ffSkel_RightHandMiddle2" "ValveBiped.Bip01_R_Finger21"  
$renamebone "ffSkel_RightHandMiddle1" "ValveBiped.Bip01_R_Finger2" 
$renamebone "ffSkel_RightHandIndex3" "ValveBiped.Bip01_R_Finger12" 
$renamebone "ffSkel_RightHandIndex2" "ValveBiped.Bip01_R_Finger11"  
$renamebone "ffSkel_RightHandIndex1" "ValveBiped.Bip01_R_Finger1"  
$renamebone "ffSkel_RightHandThumb3" "ValveBiped.Bip01_R_Finger02" 
$renamebone "ffSkel_RightHandThumb2" "ValveBiped.Bip01_R_Finger01"  
$renamebone "ffSkel_RightHandThumb1" "ValveBiped.Bip01_R_Finger0" 

$definebone "ValveBiped.Bip01_Pelvis" "" 0.000000 -1.132600 38.741299 0.000000 0.000000 89.999641 0.000000 0.000001 0.000000 0.000000 0.000000 0.000000
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 4.552000 0.000001 0.000000 1.999622 -84.955887 -89.999641 0.000001 -0.000000 -0.000000 0.000001 -0.000000 0.000000
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 17.847801 -0.000000 -0.000000 0.000000 9.234934 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000001 0.000000
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 16.203201 -0.000000 0.000000 -12.505948 -77.168251 -10.492576 0.000000 -0.000000 0.000000 0.000001 0.000002 0.000000
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 6.003700 0.000000 -0.000000 -1.588237 -21.924801 1.106381 -0.000000 -0.000000 0.000000 0.000002 -0.000000 -0.000000
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -4.552000 0.000001 0.000000 1.999622 -95.043388 -89.999641 -0.000001 -0.000000 -0.000000 -0.000000 -0.000000 0.000000
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 17.847801 -0.000000 -0.000000 -0.000000 9.234934 0.000000 0.000000 0.000000 -0.000000 -0.000000 -0.000001 0.000000
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 16.203203 -0.000000 -0.000000 12.505950 -77.168823 11.142882 -0.000000 0.000000 -0.000000 0.000002 0.000003 0.000000
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 6.003700 0.000001 -0.000000 1.344734 -21.940273 -6.218312 -0.000000 0.000000 0.000000 0.000002 -0.000000 0.000001
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0.000000 3.448902 -2.335500 4.766436 89.999641 89.999641 0.000000 0.000000 0.000000 0.000000 -0.000000 -0.000000
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 3.995800 0.000000 0.000000 -0.000000 -2.833277 -0.000000 0.000001 -0.000000 0.000000 -0.000000 -0.000000 -0.000000
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 5.315601 -0.077900 -0.000000 0.000000 8.297002 -0.000000 -0.000001 -0.000000 -0.000000 0.000000 -0.000000 -0.000000
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 4.412999 -0.075600 -0.000000 0.000000 16.074903 -0.000000 -0.000001 0.000001 -0.000000 0.000000 -0.000000 -0.000000
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 5.929100 -0.144100 -0.000000 0.000000 -3.607342 179.999283 0.000001 -0.000000 -0.000000 -0.000000 0.000000 -0.000000
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 2.636299 -0.000000 -0.000000 0.000000 12.859465 -0.000000 0.000004 -0.000000 0.000000 0.000000 0.000000 -0.000000
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 2.300298 0.203101 -1.937600 70.562042 -149.190765 -55.219952 0.000000 0.000001 -0.000000 -0.000000 0.000000 -0.000001
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 4.609800 -0.471100 -0.344600 13.981888 -33.858936 90.677452 0.000001 -0.000000 0.000000 -0.000004 -7.451979 90.000000
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 10.560401 -1.381300 0.000001 0.000002 -3.773499 0.000000 -0.000000 0.000000 0.000001 0.000002 0.000001 0.000000
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 8.169798 0.034200 -0.046900 2.068381 1.510891 -84.918648 -0.000000 0.000001 -0.000000 -0.000001 0.000004 -0.000001
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 4.659098 0.273703 0.388700 -2.622429 -22.384886 -5.160058 0.000001 0.000000 -0.000000 -0.000002 -0.000000 -0.000000
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.347001 -0.000000 0.000000 2.358865 -8.782870 -0.000000 -0.000001 -0.000001 -0.000000 -0.000002 0.000000 -0.000000
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 0.901599 -0.000001 -0.000000 0.857716 -7.491996 0.000000 -0.000000 0.000001 -0.000000 -0.000002 0.000001 0.000000
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 4.412599 0.071400 -1.033700 4.973846 -25.696009 -20.172127 -0.000000 0.000001 0.000000 -0.000002 0.000002 0.000001
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.693200 0.000001 0.000000 1.310352 -2.917499 0.000000 0.000000 -0.000001 -0.000000 -0.000002 0.000002 -0.000001
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 0.954699 -0.000000 -0.000000 2.749623 -5.778280 -0.000002 -0.000001 0.000000 -0.000000 -0.000001 -0.000000 -0.000002
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 1.286499 -0.349999 -1.307900 31.793428 -22.098406 81.675140 0.000001 0.000000 0.000000 0.000002 0.000001 -0.000002
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 2.374300 0.000000 0.000001 -1.630063 17.436255 -0.000000 -0.000001 -0.000000 -0.000002 0.000001 0.000003 -0.000000
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.225801 0.000000 -0.000001 3.429727 -10.277716 -0.000001 -0.000001 0.000000 -0.000001 0.000002 0.000001 -0.000001
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 2.300298 0.203101 1.937600 70.562042 30.808514 -55.219952 0.000000 0.000000 -0.000000 0.000001 0.000002 -0.000000
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" -4.609800 0.471102 0.344600 13.981889 -33.858932 90.677452 0.000000 -0.000000 0.000001 -0.000004 172.548019 90.000000
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" -10.560400 1.381300 0.000002 0.000004 -3.773499 -0.000000 -0.000000 0.000000 0.000002 -0.329606 -179.760147 179.998627
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" -8.169801 -0.034200 0.047001 2.068381 1.510890 -84.918648 -0.000000 0.000001 -0.000000 -0.000000 0.000003 -0.000001
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" -4.659099 -0.273600 -0.388700 -2.622428 -22.384886 -5.160059 0.000001 0.000001 0.000000 -0.000001 0.000001 0.000000
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" -1.346899 0.000001 0.000000 2.358866 -8.782871 0.000000 0.000001 -0.000001 -0.000000 -0.000001 -0.000002 0.000000
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" -0.901699 -0.000002 -0.000000 0.857717 -7.491999 0.000000 -0.000001 0.000000 0.000000 -0.000001 -0.000002 0.000000
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" -4.412599 -0.071300 1.033700 4.973846 -25.696011 -20.172127 0.000001 -0.000000 -0.000000 -0.000002 0.000001 0.000003
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" -1.693099 -0.000001 -0.000000 1.310353 -2.917501 0.000003 0.000001 0.000001 -0.000000 -0.000001 -0.000001 0.000002
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" -0.954701 0.000000 -0.000000 2.749624 -5.778281 0.000001 -0.000001 0.000000 0.000000 -0.000001 -0.000002 0.000001
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" -1.286600 0.350001 1.307900 31.793425 -22.098408 81.675140 0.000001 -0.000000 -0.000001 -0.000000 0.000002 -0.000001
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" -2.374199 -0.000001 -0.000001 -1.630065 17.436253 -0.000002 0.000001 -0.000000 0.000000 0.000001 0.000002 -0.000002
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" -1.225799 -0.000000 0.000001 3.429727 -10.277715 -0.000002 0.000001 0.000000 0.000001 0.000002 0.000003 -0.000003
$definebone "ValveBiped.forward" "ValveBiped.Bip01_Head1" 2.000004 -3.000001 0.000000 -0.000000 -75.999985 -89.999985 -0.000001 -0.000000 -0.000001 0.000000 -0.000000 0.000000
$definebone "ValveBiped.Anim_Attachment_RH" "ValveBiped.Bip01_R_Hand" 2.676083 -1.712439 0.000000 -0.000001 -89.999985 -89.999985 0.000002 0.000000 0.000000 0.000001 -0.000001 -0.000001
$definebone "ValveBiped.Anim_Attachment_LH" "ValveBiped.Bip01_L_Hand" 2.676088 -1.712441 0.000000 0.000001 89.999977 90.000038 -0.000001 -0.000000 -0.000001 -0.000005 -0.000001 0.000000
$definebone "ValveBiped.faceplate_attachment" "ValveBiped.Bip01_L_Hand" 3.553241 -6.088442 -0.205132 -34.949566 168.254562 153.331299 0.000001 0.000001 0.000000 0.000001 -0.000002 0.000000

//====================================================
//
//	LOWER BODY MOVEMENT ANIMATION
//
//====================================================

	//-----------------
	//	Idles
	//-----------------

// 		$sequence Idle_lower "Idle01" loop FPS 30 activity ACT_IDLE 1
// 		$sequence Crouch_Idle_Lower "Crouch_idle01" loop FPS 30 activity ACT_CROUCHIDLE 1
// 		$sequence menu_pose "menu_pose" loop fps 30 origin 0 0 -115 activity ACT_MENUPOSE 1

	//-----------------
	//	Run
	//-----------------

		$animation a_RunS RunS startloop 0 LX LY alignto Idle_lower rotateto -180
		$animation a_RunSE RunSE startloop 0 LX LY alignto Idle_lower rotateto -135
		$animation a_RunE RunE startloop 0 LX LY alignto Idle_lower rotateto -90
		$animation a_RunNE RunNE startloop 0 LX LY alignto Idle_lower rotateto -45
		$animation a_RunN RunN startloop 0 LX LY alignto Idle_lower rotateto 0
		$animation a_RunNW RunNW startloop 0 LX LY alignto Idle_lower rotateto 45
		$animation a_RunW RunW startloop 0 LX LY alignto Idle_lower rotateto 90
		$animation a_RunSW RunSW startloop 0 LX LY alignto Idle_lower rotateto 135
		$animation a_RunZero "9run_idle" loop

/*		$sequence Run_lower {
			a_RunS a_RunSE a_RunE
			a_RunNE a_RunN a_RunNW
			a_RunW a_RunSW a_RunS
			blendwidth 9 blend move_yaw -180 180
			loop 
			ACT_RUN 1
		}
*/
		$sequence Run_lower {
			a_RunNW a_RunN a_RunNE 
			a_RunW a_RunZero a_RunE 
			a_RunSW a_RunS a_RunSE 
			blendwidth 3 blend move_y -1 1 blend move_x 1 -1 loop
			ACT_RUN 1
			{ event 7001 14 "lfoot" }
			{ event 7001 5 "rfoot" }
		}

	
	//-----------------
	//	Walk
	//-----------------

		$animation a_WalkS WalkS startloop 0 LX LY loop alignto Idle_lower rotateto -180
		$animation a_WalkSE WalkSE startloop 0 LX LY loop alignto Idle_lower rotateto -135
		$animation a_WalkE WalkE startloop 0 LX LY loop alignto Idle_lower rotateto -90
		$animation a_WalkNE WalkNE startloop 0 LX LY loop alignto Idle_lower rotateto -45
		$animation a_WalkN WalkN startloop 0 LX LY loop alignto Idle_lower rotateto 0
		$animation a_WalkNW WalkNW startloop 0 LX LY loop alignto Idle_lower rotateto 45
		$animation a_WalkW WalkW startloop 0 LX LY loop alignto Idle_lower rotateto 90
		$animation a_WalkSW WalkSW startloop 0 LX LY loop alignto Idle_lower rotateto 135
		$animation a_walkZero "9walk_idle" loop

/*		$sequence Walk_lower {
			a_WalkS a_WalkSE a_WalkE a_WalkNE a_WalkN a_WalkNW a_WalkW a_WalkSW a_WalkS
			blendwidth 9 blend move_yaw -180 180
			ACT_WALK 1
		}
*/

		$sequence walk_lower {
			a_walkNW a_walkN a_walkNE 
			a_walkW a_walkZero a_walkE 
			a_walkSW a_walkS a_walkSE 
			blendwidth 3 blend move_y -1 1 blend move_x 1 -1 loop
			ACT_WALK 1
			{ event 7002 15 "lfoot" }
			{ event 7002 4 "lfoot" }
		}


	//-----------------------
	//	Crouch_Walk
	//-----------------------

		$animation a_Crouch_walkS Crouch_walkS startloop 0 LX LY alignto Idle_lower rotateto -180
		$animation a_Crouch_walkSE Crouch_walkSE startloop 0 LX LY alignto Idle_lower rotateto -135
		$animation a_Crouch_walkE Crouch_walkE startloop 0 LX LY alignto Idle_lower rotateto -90
		$animation a_Crouch_walkNE Crouch_walkNE startloop 0 LX LY alignto Idle_lower rotateto -45
		$animation a_Crouch_walkN Crouch_walkN startloop 0 LX LY alignto Idle_lower rotateto 0
		$animation a_Crouch_walkNW Crouch_walkNW startloop 0 LX LY alignto Idle_lower rotateto 45
		$animation a_Crouch_walkW Crouch_walkW startloop 0 LX LY alignto Idle_lower rotateto 90
		$animation a_Crouch_walkSW Crouch_walkSW startloop 0 LX LY alignto Idle_lower rotateto 135
		$animation a_Crouch_walkZero "9crouchwalk_idle" loop

/*		$sequence Crouch_Walk_lower {
			a_Crouch_walkS a_Crouch_walkSE a_Crouch_walkE
			a_Crouch_walkNE a_Crouch_walkN a_Crouch_walkNW 
			a_Crouch_walkW a_Crouch_walkSW a_Crouch_walkS
			blendwidth 9 blend move_yaw -180 180
			ACT_RUN_CROUCH 1
		}
*/
		$sequence Crouch_walk_lower {
			a_Crouch_walkNW a_Crouch_walkN a_Crouch_walkNE 
			a_Crouch_walkW a_Crouch_walkZero a_Crouch_walkE 
			a_Crouch_walkSW a_Crouch_walkS a_Crouch_walkSE 
			blendwidth 3 blend move_y -1 1 blend move_x 1 -1 loop
			ACT_RUN_CROUCH 1
			{ event 7002 17 "lfoot" }
			{ event 7002 5 "rfoot" }
		}


	//---------------
	//	jump
	//---------------

// 		$sequence Jump "jump" fps 30 alignto Idle_lower activity ACT_HOP 1 { event 7001 23 "lfoot" } { event 7001 23 "rfoot" }

//====================================================
//
//		Weapon Specific Animation
//
//====================================================


	//------------------
	//	Pistols
	//------------------

/*		$sequence Crouch_Idle_Aim_Pistol  { 
			Idle_Pistol_aim_up_right Idle_Pistol_aim_up_center Idle_Pistol_aim_up_left 
			Idle_Pistol_aim_mid_right Idle_Pistol_aim_mid_center Idle_Pistol_aim_mid_left 
			Idle_Pistol_aim_down_right Idle_Pistol_aim_down_center Idle_Pistol_aim_down_left 
			weightlist nolowerbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}
*/

// 		$animation Run_Pistol_aim_neutral Run_9aims_Pistol frame 4 4
// 		$animation Run_Pistol_aim_up_left Run_9aims_Pistol frame 0 0 subtract Run_Pistol_aim_neutral 0
// 		$animation Run_Pistol_aim_up_center Run_9aims_Pistol frame 1 1 subtract Run_Pistol_aim_neutral 0
// 		$animation Run_Pistol_aim_up_right Run_9aims_Pistol frame 2 2 subtract Run_Pistol_aim_neutral 0
// 		$animation Run_Pistol_aim_mid_left Run_9aims_Pistol frame 3 3 subtract Run_Pistol_aim_neutral 0
// 		$animation Run_Pistol_aim_mid_center Run_9aims_Pistol frame 4 4 subtract Run_Pistol_aim_neutral 0
// 		$animation Run_Pistol_aim_mid_right Run_9aims_Pistol frame 5 5 subtract Run_Pistol_aim_neutral 0
// 		$animation Run_Pistol_aim_down_left Run_9aims_Pistol frame 6 6 subtract Run_Pistol_aim_neutral 0
// 		$animation Run_Pistol_aim_down_center Run_9aims_Pistol frame 7 7 subtract Run_Pistol_aim_neutral 0
// 		$animation Run_Pistol_aim_down_right Run_9aims_Pistol frame 8 8 subtract Run_Pistol_aim_neutral 0

// 		$sequence Run_Aim_Pistol  { 
// 			Run_Pistol_aim_up_right Run_Pistol_aim_up_center Run_Pistol_aim_up_left 
// 			Run_Pistol_aim_mid_right Run_Pistol_aim_mid_center Run_Pistol_aim_mid_left 
// 			Run_Pistol_aim_down_right Run_Pistol_aim_down_center Run_Pistol_aim_down_left 
// 			weightlist nolowerbody
// 			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
// 			iklock lfoot 1 0 iklock rfoot 1 0
// 			delta
// 		}


// 		$sequence Idle_Upper_Pistol "Idle_Counter_Pistol" FPS 30 loop weightlist upperbody addlayer Run_Aim_Pistol
// 		$sequence Walk_Upper_Pistol "Walk_Counter_Pistol" FPS 30 weightlist upperbody addlayer Run_Aim_Pistol
// 		$sequence Run_Upper_Pistol "Run_Counter_Pistol" FPS 30 loop weightlist upperbody addlayer Run_Aim_Pistol
// 		$sequence Crouch_Idle_Upper_Pistol "Crouch_Idle_Counter_Pistol" FPS 30 weightlist upperbody addlayer Run_Aim_Pistol
// 		$sequence Crouch_Walk_Upper_Pistol "Crouch_Walk_Counter_Pistol" FPS 30 weightlist upperbody addlayer Run_Aim_Pistol


// 		$animation Idle_Shoot_Pistol_layer "Run_Shoot_Pistol" FPS 30 subtract Idle_Shoot_Pistol_layer 0 weightlist upperbody
// 		$sequence Idle_Shoot_Pistol "Idle_Shoot_Pistol_layer" delta
// 		$sequence Walk_Shoot_Pistol "Idle_Shoot_Pistol_layer" delta
// 		$sequence Run_Shoot_Pistol "Idle_Shoot_Pistol_layer" delta
// 		$sequence Crouch_Idle_Shoot_Pistol "Idle_Shoot_Pistol_layer" delta
// 		$sequence Crouch_Walk_Shoot_Pistol "Idle_Shoot_Pistol_layer" delta


// 		$animation Reload_Pistol_layer "Idle_Reload_Pistol" FPS 30 subtract Reload_Pistol_layer 0 weightlist upperbody
// 		$sequence Reload_Pistol "Reload_Pistol_layer" delta


// 	//-----------------
// 	//	M4
// 	//-----------------

// 		$animation Crouch_M4_aim_neutral Crouch_9aims_m4 frame 4 4
// 		$animation Crouch_M4_aim_up_left Crouch_9aims_m4 frame 0 0 subtract Crouch_M4_aim_neutral 0
// 		$animation Crouch_M4_aim_up_center Crouch_9aims_m4 frame 1 1 subtract Crouch_M4_aim_neutral 0
// 		$animation Crouch_M4_aim_up_right Crouch_9aims_m4 frame 2 2 subtract Crouch_M4_aim_neutral 0
// 		$animation Crouch_M4_aim_mid_left Crouch_9aims_m4 frame 3 3 subtract Crouch_M4_aim_neutral 0
// 		$animation Crouch_M4_aim_mid_center Crouch_9aims_m4 frame 4 4 subtract Crouch_M4_aim_neutral 0
// 		$animation Crouch_M4_aim_mid_right Crouch_9aims_m4 frame 5 5 subtract Crouch_M4_aim_neutral 0
// 		$animation Crouch_M4_aim_down_left Crouch_9aims_m4 frame 6 6 subtract Crouch_M4_aim_neutral 0
// 		$animation Crouch_M4_aim_down_center Crouch_9aims_m4 frame 7 7 subtract Crouch_M4_aim_neutral 0
// 		$animation Crouch_M4_aim_down_right Crouch_9aims_m4 frame 8 8 subtract Crouch_M4_aim_neutral 0


// 		$sequence Crouch_Aim_M4  { 
// 			Crouch_M4_aim_up_right Crouch_M4_aim_up_center Crouch_M4_aim_up_left 
// 			Crouch_M4_aim_mid_right Crouch_M4_aim_mid_center Crouch_M4_aim_mid_left 
// 			Crouch_M4_aim_down_right Crouch_M4_aim_down_center Crouch_M4_aim_down_left 
// 			weightlist upperbody
// 			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
// 			iklock lfoot 1 0 iklock rfoot 1 0
// 			delta
// 		}


// 		$animation Run_M4_aim_neutral Run_9aims_M4 frame 4 4
// 		$animation Run_M4_aim_up_left Run_9aims_M4 frame 0 0 subtract Run_M4_aim_neutral 0
// 		$animation Run_M4_aim_up_center Run_9aims_M4 frame 1 1 subtract Run_M4_aim_neutral 0
// 		$animation Run_M4_aim_up_right Run_9aims_M4 frame 2 2 subtract Run_M4_aim_neutral 0
// 		$animation Run_M4_aim_mid_left Run_9aims_M4 frame 3 3 subtract Run_M4_aim_neutral 0
// 		$animation Run_M4_aim_mid_center Run_9aims_M4 frame 4 4 subtract Run_M4_aim_neutral 0
// 		$animation Run_M4_aim_mid_right Run_9aims_M4 frame 5 5 subtract Run_M4_aim_neutral 0
// 		$animation Run_M4_aim_down_left Run_9aims_M4 frame 6 6 subtract Run_M4_aim_neutral 0
// 		$animation Run_M4_aim_down_center Run_9aims_M4 frame 7 7 subtract Run_M4_aim_neutral 0
// 		$animation Run_M4_aim_down_right Run_9aims_M4 frame 8 8 subtract Run_M4_aim_neutral 0

// 		$sequence Run_Aim_M4  { 
// 			Run_M4_aim_up_right Run_M4_aim_up_center Run_M4_aim_up_left 
// 			Run_M4_aim_mid_right Run_M4_aim_mid_center Run_M4_aim_mid_left 
// 			Run_M4_aim_down_right Run_M4_aim_down_center Run_M4_aim_down_left 
// 			weightlist upperbody
// 			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
// 			iklock lfoot 1 0 iklock rfoot 1 0
// 			delta
// 		}


// 		$sequence Idle_Upper_M4 "Idle_Counter_M4" FPS 30 weightlist upperbody addlayer Run_Aim_M4
// 		$sequence Walk_Upper_M4 "Walk_Counter_M4" FPS 30 weightlist upperbody addlayer Run_Aim_m4
// 		$sequence Run_Upper_M4 "Run_Counter_M4" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_M4
// 		$sequence Crouch_Idle_Upper_M4 "Crouch_Idle_Counter_M4" FPS 30 weightlist upperbody addlayer Crouch_Aim_m4
// 		$sequence Crouch_Walk_Upper_M4 "Crouch_Walk_Counter_m4" FPS 30 weightlist upperbody addlayer Crouch_Aim_M4


// 		$animation Idle_Shoot_M4_layer "Run_shoot_m4" FPS 30 subtract Idle_Shoot_M4_layer 0 weightlist upperbody
// 		$sequence Idle_Shoot_M4 "Idle_Shoot_M4_layer" delta
// 		$sequence Walk_Shoot_M4 "Idle_Shoot_M4_layer" delta
// 		$sequence Run_Shoot_M4 "Idle_Shoot_M4_layer" delta
// 		$sequence Crouch_Idle_Shoot_M4 "Idle_Shoot_M4_layer" delta
// 		$sequence Crouch_Walk_Shoot_M4 "Idle_Shoot_M4_layer" delta


// 		$animation Reload_M4_layer "Idle_Reload_M4" FPS 30 subtract Reload_M4_layer 0 weightlist upperbody
// 		$sequence Reload_M4 "Reload_M4_layer" delta



$include "D:\Program Files\Valve\Steam\SteamApps\SourceMods\models\charpipeline\ff\qc_files\ruleshierarchy.qci"
