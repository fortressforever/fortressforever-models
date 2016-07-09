//  events on movements use the attachments lfoot and rfoot on the players feet to create water effects as the player walks
//  formatting for this is { event, generic event number, frame number of the animation to play the event on, name of the event to play, which attachment to play the event from

$modelname player/ff_player_shared.mdl
$cd ".."
//$include "/reference/bones1.qci"

// $definebone "ffSkel_Hips" "" 0.000000 1.161500 38.741299 0.000000 0.000000 89.999641 0.000000 -0.000000 0.000000 0.000000 0.000000 0.000000
// $definebone "ffSkel_LeftUpLeg" "ffSkel_Hips" 4.552000 -1.290301 -0.309300 -3.764333 -85.784393 179.999863 0.000001 -0.000000 -0.000000 -0.000000 0.000000 0.000000
// $definebone "ffSkel_LeftLeg" "ffSkel_LeftUpLeg" 17.607502 0.000000 -0.000000 -18.591908 -1.110965 0.075057 -0.000001 -0.000000 -0.000000 0.000001 0.000000 0.000000
// $definebone "ffSkel_LeftFoot" "ffSkel_LeftLeg" 15.634301 -0.000000 -0.000000 76.858276 -52.760815 33.622883 0.000000 -0.000000 -0.000000 0.000002 0.000001 0.000001
// $definebone "ffSkel_LeftToeBase" "ffSkel_LeftFoot" 6.003701 0.000000 -0.000000 3.734540 -18.479033 84.979385 0.000000 -0.000000 0.000000 0.000003 -0.000001 -0.000002
// $definebone "ffSkel_Spine" "ffSkel_Hips" 0.000000 3.448898 0.021600 12.640022 89.999641 89.999641 -0.000002 0.000000 0.000000 0.000000 -0.000000 0.000000
// $definebone "ffSkel_Spine1" "ffSkel_Spine" 4.080899 0.000000 0.000000 0.000000 10.251362 0.000000 -0.000002 0.000000 0.000000 0.000000 -0.000000 0.000000
// $definebone "ffSkel_Spine2" "ffSkel_Spine1" 5.263198 0.000000 0.000000 0.000000 2.102755 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000
// $definebone "ffSkel_Spine3" "ffSkel_Spine2" 4.413702 0.000000 -0.000000 0.000000 -5.944438 89.999641 -0.000001 -0.000000 -0.000000 -0.000000 -0.000000 -0.000000
// $definebone "ffSkel_Neck" "ffSkel_Spine3" 6.152599 -0.000000 -0.000000 25.116751 -0.000000 -0.000000 -0.000000 0.000000 0.000000 0.000000 -0.000000 -0.000000
// $definebone "ffSkel_Head" "ffSkel_Neck" 2.228598 0.000000 -0.000000 42.240742 -0.880063 0.589574 0.000001 -0.000000 0.000001 0.000002 0.000000 -0.000000
// $definebone "ffSkel_RightShoulder" "ffSkel_Spine3" 2.056299 -1.937600 -1.050800 -12.832536 -109.000641 -5.055207 0.000000 -0.000000 0.000000 -0.000000 -0.000002 0.000000
// $definebone "ffSkel_RightArm" "ffSkel_RightShoulder" 4.646599 0.000001 0.000000 9.177638 -29.141787 173.983231 -0.000001 0.000000 0.000000 -0.000000 0.000005 -0.000000
// $definebone "ffSkel_RightForeArm" "ffSkel_RightArm" 10.631200 0.000002 0.000000 0.164439 179.955734 0.000000 -0.000001 0.000002 -0.000000 0.000000 0.000008 0.000000
// $definebone "ffSkel_RightForeArmRoll" "ffSkel_RightForeArm" -4.965601 0.000000 0.000000 0.000000 0.000008 0.000000 0.000000 0.000000 0.000000 0.000000 0.000008 0.000000
// $definebone "ffSkel_RightHand" "ffSkel_RightForeArmRoll" -4.965601 -0.000001 0.000000 0.255539 174.965866 -90.032867 -0.000000 0.000000 0.000000 -0.000007 -0.000000 -0.000000
// $definebone "ffSkel_RightHandMiddle1" "ffSkel_RightHand" 4.651401 -0.000000 0.000001 -36.946037 1.926284 88.915031 -0.000002 -0.000001 0.000000 -0.000000 -0.000001 -0.000000
// $definebone "ffSkel_RightHandMiddle2" "ffSkel_RightHandMiddle1" 1.346999 -0.000001 -0.000000 -2.455697 15.643461 -0.388465 -0.000001 -0.000001 -0.000000 0.000000 -0.000005 0.000000
// $definebone "ffSkel_RightHandMiddle3" "ffSkel_RightHandMiddle2" 0.901600 -0.000000 0.000000 0.531132 -6.299101 -0.116883 0.000000 -0.000000 0.000000 -0.000000 -0.000003 0.000000
// $definebone "ffSkel_RightHandIndex1" "ffSkel_RightHand" 4.378500 -1.116700 0.113402 -30.166801 -16.493734 98.528694 0.000001 -0.000000 0.000000 -0.000000 -0.000000 -0.000000
// $definebone "ffSkel_RightHandIndex2" "ffSkel_RightHandIndex1" 1.693200 -0.000000 0.000000 1.868415 20.474070 5.063228 -0.000002 -0.000000 0.000000 -0.000001 -0.000003 0.000000
// $definebone "ffSkel_RightHandIndex3" "ffSkel_RightHandIndex2" 0.954700 -0.000001 -0.000000 2.955889 -5.794325 -1.168834 0.000002 -0.000000 -0.000000 -0.000001 -0.000003 -0.000000
// $definebone "ffSkel_RightHandThumb1" "ffSkel_RightHand" 1.298298 -1.309800 0.295299 -27.958052 -36.526058 109.228683 -0.000000 -0.000001 0.000000 -0.000000 -0.000001 0.000002
// $definebone "ffSkel_RightHandThumb2" "ffSkel_RightHandThumb1" 2.374298 -0.000001 0.000001 17.486673 -0.922463 -0.501909 -0.000001 0.000000 -0.000000 0.000000 -0.000001 0.000002
// $definebone "ffSkel_RightHandThumb3" "ffSkel_RightHandThumb2" 1.225800 0.000001 -0.000001 12.417142 14.043765 3.444051 -0.000002 0.000001 -0.000000 -0.000000 -0.000004 0.000001
// $definebone "ffSkel_att_righthand" "ffSkel_RightHand" 3.285700 -0.280500 0.628002 -0.000007 -0.000000 89.999641 -0.000000 0.000000 0.000000 -0.000000 0.000006 0.000000
// $definebone "ffSkel_LeftShoulder" "ffSkel_Spine3" 2.056300 1.937600 -1.050800 12.832534 -70.999207 174.944641 -0.000000 0.000001 -0.000000 0.000001 0.000002 0.000000
// $definebone "ffSkel_LeftArm" "ffSkel_LeftShoulder" -4.646701 0.000002 0.000000 -9.177639 150.857498 -173.983231 0.000002 0.000001 -0.000000 -0.000000 -0.000006 -0.000001
// $definebone "ffSkel_LeftForeArm" "ffSkel_LeftArm" 10.631201 -0.000001 -0.000000 0.164439 -0.044124 -0.000001 0.000001 -0.000001 0.000000 -0.000000 -0.000006 -0.000001
// $definebone "ffSkel_LeftForeArmRoll" "ffSkel_LeftForeArm" 4.965600 -0.000003 0.000000 -0.000000 -0.000006 -0.000001 0.000000 0.000001 0.000000 -0.000000 -0.000006 -0.000001
// $definebone "ffSkel_LeftHand" "ffSkel_LeftForeArmRoll" 4.965600 -0.000001 0.000000 -0.255539 -5.034012 90.033447 0.000000 -0.000000 -0.000002 -0.000006 0.000000 0.000001
// $definebone "ffSkel_LeftHandMiddle1" "ffSkel_LeftHand" 4.651500 -0.000000 -0.000000 36.944893 1.926283 -88.915031 0.000000 0.000000 -0.000000 0.000001 -0.000002 -0.000001
// $definebone "ffSkel_LeftHandMiddle2" "ffSkel_LeftHandMiddle1" 1.346999 0.000001 -0.000000 2.455698 15.650341 0.388465 -0.000000 0.000001 -0.000000 0.000000 -0.000002 -0.000001
// $definebone "ffSkel_LeftHandMiddle3" "ffSkel_LeftHandMiddle2" 0.901601 0.000002 0.000000 -0.531131 -6.304257 0.116883 0.000002 -0.000000 -0.000000 0.000000 -0.000003 -0.000001
// $definebone "ffSkel_LeftHandIndex1" "ffSkel_LeftHand" 4.378600 -1.116700 -0.113400 30.165655 -16.494879 -98.528687 -0.000001 0.000001 0.000000 -0.000001 -0.000002 -0.000001
// $definebone "ffSkel_LeftHandIndex2" "ffSkel_LeftHandIndex1" 1.693097 0.000001 -0.000000 -1.869561 20.476942 -5.064376 -0.000000 -0.000001 -0.000000 -0.000001 0.000004 -0.000000
// $definebone "ffSkel_LeftHandIndex3" "ffSkel_LeftHandIndex2" 0.954798 -0.000000 -0.000000 -2.954744 -5.795466 1.169407 -0.000001 0.000001 -0.000000 -0.000000 0.000002 -0.000001
// $definebone "ffSkel_LeftHandThumb1" "ffSkel_LeftHand" 1.298301 -1.309800 -0.295203 27.957474 -36.525482 -109.227531 -0.000001 -0.000001 0.000000 -0.000001 -0.000004 -0.000003
// $definebone "ffSkel_LeftHandThumb2" "ffSkel_LeftHandThumb1" 2.374299 -0.000002 0.000000 -17.486673 -0.922467 0.501908 0.000000 -0.000001 0.000000 0.000000 -0.000004 -0.000002
// $definebone "ffSkel_LeftHandThumb3" "ffSkel_LeftHandThumb2" 1.225802 -0.000001 0.000001 -12.416568 14.044914 -3.444051 0.000002 0.000001 -0.000000 0.000001 -0.000001 -0.000000
// $definebone "ffSkel_att_lefthand" "ffSkel_LeftHand" 3.286500 -0.280500 -0.627401 -0.000006 0.000000 -89.999641 -0.000000 -0.000002 0.000000 -0.000000 -0.000007 -0.000001
// $definebone "ffSkel_RightUpLeg" "ffSkel_Hips" -4.552000 -1.290301 -0.309300 3.764333 85.784393 -0.000000 -0.000001 0.000000 -0.000000 -0.000000 -0.000000 0.000000
// $definebone "ffSkel_RightLeg" "ffSkel_RightUpLeg" -17.607502 0.000000 0.000000 -18.591909 -1.110965 0.075057 -0.000001 -0.000000 -0.000000 -0.000001 -0.000000 0.000000
// $definebone "ffSkel_RightFoot" "ffSkel_RightLeg" -15.634301 0.000000 -0.000001 -77.230125 129.626541 59.419155 -0.000000 -0.000000 -0.000000 -0.000002 0.000001 -0.000000
// $definebone "ffSkel_RightToeBase" "ffSkel_RightFoot" 6.003700 0.000000 0.000000 -17.971968 5.747912 -99.880295 -0.000000 0.000000 0.000000 -0.000000 -0.000000 0.000001

$definebone "ffSkel_Hips" "" 0.000000 0.000000 38.741299 -89.639244 -90.000786 0.000000 0.000002 0.000000 -0.000000 0.000000 0.000000 0.000000
$definebone "ffSkel_LeftUpLeg" "ffSkel_Hips" -1.292299 4.552000 0.301200 4.123577 175.782318 89.973284 -0.000001 0.000000 -0.000000 0.000000 0.000000 -0.000000
$definebone "ffSkel_LeftLeg" "ffSkel_LeftUpLeg" 17.607500 0.000000 -0.000000 -0.508214 17.459169 -0.123759 -0.000001 0.000000 -0.000000 0.000000 -0.000000 0.000000
$definebone "ffSkel_Spine" "ffSkel_Hips" 3.449003 0.000000 0.000000 -71.943451 135.088547 43.465152 0.000000 -0.000000 -0.000002 -0.000001 -0.000001 0.000001
$definebone "ffSkel_Spine1" "ffSkel_Spine" 0.000000 0.000000 4.080896 -89.999641 -77.359619 0.000000 0.000002 0.000000 -0.000000 -0.000001 0.000001 -0.000002
$definebone "ffSkel_Spine2" "ffSkel_Spine1" 5.179100 -0.936700 0.000000 -0.000001 -10.251363 -0.000002 0.000002 -0.000000 0.000000 -0.000001 -0.000001 -0.000002
$definebone "ffSkel_Spine3" "ffSkel_Spine2" 4.410702 -0.161900 0.000000 -0.000001 3.841109 -0.000002 -0.000001 0.000000 0.000000 -0.000001 -0.000000 -0.000002
$definebone "ffSkel_Necks" "ffSkel_Spine3" 6.481197 -1.955300 0.000000 -0.000002 -25.116755 -0.000001 0.000002 0.000001 0.000000 -0.000002 -0.000005 -0.000001
$definebone "ffSkel_Heads" "ffSkel_Necks" 2.359202 -0.006799 0.000000 -0.769484 -71.634048 -89.992770 0.000000 0.000000 -0.000003 -0.000002 -0.000001 -0.000001
$definebone "ffSkel_LeftShoulder" "ffSkel_Spine3" 2.056298 -1.050800 -1.937600 0.810737 164.810165 95.607760 0.000002 0.000000 -0.000000 -0.000004 -0.000001 -0.000001
$definebone "ffSkel_LeftArm" "ffSkel_LeftShoulder" 1.754402 -4.179399 1.022800 3.262992 -41.152691 79.815317 -0.000001 -0.000000 0.000000 0.000002 0.000003 0.000001
$definebone "ffSkel_LeftForeArm" "ffSkel_LeftArm" 10.631197 0.000000 0.000001 -0.044116 -0.164436 0.000001 -0.000001 -0.000000 0.000001 0.000000 0.000003 0.000001
$definebone "ffSkel_LeftForeArmRoll" "ffSkel_LeftForeArm" 4.965600 0.000000 -0.000000 0.000000 0.000003 0.000001 0.000000 -0.000000 -0.000000 0.000000 0.000003 0.000001
$definebone "ffSkel_LeftHand" "ffSkel_LeftForeArmRoll" 4.965600 0.000000 -0.000002 -5.034008 0.256688 0.010887 -0.000000 -0.000000 0.000002 -0.000001 0.000003 0.000001
$definebone "ffSkel_RightShoulder" "ffSkel_Spine3" 2.056298 -1.050800 1.937600 -67.204514 145.020767 -153.171679 0.000000 -0.000000 -0.000002 0.000005 0.000001 0.000003
$definebone "ffSkel_RightArm" "ffSkel_RightShoulder" 4.646699 0.000000 -0.000004 -28.558500 -10.984173 0.116886 0.000001 0.000000 -0.000000 0.000007 0.000001 0.000002
$definebone "ffSkel_RightForeArm" "ffSkel_RightArm" 10.631200 0.000000 -0.000001 0.043550 -0.164438 0.000002 -0.000000 -0.000000 0.000001 0.000006 0.000001 0.000002
$definebone "ffSkel_RightForeArmRoll" "ffSkel_RightForeArm" 4.965600 0.000000 0.000001 0.000006 0.000001 0.000002 -0.000000 0.000000 0.000001 0.000006 0.000001 0.000002
$definebone "ffSkel_RightHand" "ffSkel_RightForeArmRoll" 4.965499 0.000000 0.000001 5.032867 0.256686 -0.010884 -0.000000 -0.000000 0.000001 0.000006 0.000001 0.000002
$definebone "ffSkel_att_righthand" "ffSkel_RightHand" 3.286500 -0.280500 0.627401 -87.411591 -177.163757 87.289498 -0.000002 0.000000 0.000000 -0.000002 -0.000005 0.000001
$definebone "ffSkel_RightUpLeg" "ffSkel_Hips" -1.292299 -4.552000 0.301200 4.123577 -175.782318 90.025992 -0.000001 -0.000000 -0.000000 -0.000001 0.000000 0.000000
$definebone "ffSkel_RightLeg" "ffSkel_RightUpLeg" 17.607597 -0.000000 -0.000000 0.508213 17.459169 0.123759 0.000000 0.000000 -0.000000 -0.000001 -0.000002 -0.000000
$definebone "ffSkel_LeftHandMiddle1" "ffSkel_LeftHand" 4.651501 0.000000 0.000000 36.944893 1.926287 1.084037 0.000002 0.000000 -0.000000 -0.000002 0.000002 0.000002
$definebone "ffSkel_LeftHandMiddle2" "ffSkel_LeftHandMiddle1" 1.347002 0.000000 -0.000001 15.635446 -2.549661 -0.298509 0.000001 0.000000 0.000000 -0.000000 0.000001 0.000003
$definebone "ffSkel_LeftHandMiddle3" "ffSkel_LeftHandMiddle2" 0.901601 0.000000 0.000001 -6.304256 0.534571 0.058444 0.000001 0.000000 0.000000 -0.000001 0.000002 0.000002
$definebone "ffSkel_LeftHandIndex1" "ffSkel_LeftHand" 4.378601 -1.116700 -0.113399 30.165653 -16.494884 -8.528476 -0.000001 -0.000000 0.000001 0.000003 -0.000004 0.000001
$definebone "ffSkel_LeftHandIndex2" "ffSkel_LeftHandIndex1" 1.693098 -0.000001 0.000001 20.465483 1.995608 -4.365937 0.000001 0.000000 -0.000000 0.000001 -0.000003 0.000002
$definebone "ffSkel_LeftHandIndex3" "ffSkel_LeftHandIndex2" 0.954802 0.000001 -0.000000 -5.788019 2.969639 0.869179 -0.000001 0.000000 0.000001 0.000001 -0.000002 0.000002
$definebone "ffSkel_LeftHandThumb1" "ffSkel_LeftHand" 1.298301 -1.309800 -0.295198 27.957474 -36.525494 -19.227891 -0.000001 -0.000000 0.000001 -0.000000 -0.000010 0.000003
$definebone "ffSkel_LeftHandThumb2" "ffSkel_LeftHandThumb1" 2.374299 -0.000001 0.000002 -0.880064 17.488962 0.224602 0.000000 -0.000000 -0.000000 -0.000001 -0.000000 0.000003
$definebone "ffSkel_LeftHandThumb3" "ffSkel_LeftHandThumb2" 1.225800 -0.000001 -0.000001 13.709733 12.786704 -0.364972 0.000001 -0.000000 0.000000 -0.000002 0.000005 0.000004
$definebone "ffSkel_LeftFoots" "ffSkel_LeftLeg" 17.409899 -0.000000 -0.000000 -10.647275 -80.921700 178.830446 0.000000 0.000000 0.000000 0.000001 -0.000002 -0.000001
$definebone "ffSkel_LeftToeBases" "ffSkel_LeftFoots" 6.003699 -0.000000 -0.000000 -2.891145 18.624567 -119.944708 -0.000000 0.000000 0.000000 -0.000001 0.000000 0.000002
$definebone "ffSkel_RightHandMiddle1" "ffSkel_RightHand" 4.651499 0.000000 -0.000000 -36.944889 1.926287 -1.084034 0.000002 0.000000 -0.000001 0.000005 0.000002 0.000001
$definebone "ffSkel_RightHandMiddle2" "ffSkel_RightHandMiddle1" 1.347001 0.000000 -0.000000 -15.634871 -2.549087 0.298512 0.000001 0.000000 0.000000 0.000003 0.000002 0.000000
$definebone "ffSkel_RightHandMiddle3" "ffSkel_RightHandMiddle2" 0.901702 0.000000 -0.000001 6.303685 0.533999 -0.058441 0.000002 0.000000 0.000001 0.000003 0.000002 0.000001
$definebone "ffSkel_RightHandIndex1" "ffSkel_RightHand" 4.378700 -1.116700 0.113500 -30.165077 -16.494883 8.528477 -0.000000 0.000000 -0.000001 0.000004 -0.000002 -0.000001
$definebone "ffSkel_RightHandIndex2" "ffSkel_RightHandIndex1" 1.692999 0.000000 -0.000001 -20.465481 1.996182 4.365938 -0.000001 0.000000 0.000001 0.000000 -0.000003 -0.000000
$definebone "ffSkel_RightHandIndex3" "ffSkel_RightHandIndex2" 0.954801 0.000000 -0.000000 5.787448 2.969640 -0.869177 -0.000001 0.000000 0.000001 0.000002 -0.000001 -0.000000
$definebone "ffSkel_RightHandThumb1" "ffSkel_RightHand" 1.298300 -1.309800 0.295301 -27.957470 -36.525490 19.227889 0.000001 -0.000001 -0.000000 0.000004 -0.000007 -0.000001
$definebone "ffSkel_RightHandThumb2" "ffSkel_RightHandThumb1" 2.374300 -0.000001 -0.000001 0.879495 17.489538 -0.224600 -0.000000 0.000000 0.000000 0.000004 0.000001 -0.000000
$definebone "ffSkel_RightHandThumb3" "ffSkel_RightHandThumb2" 1.225801 0.000001 0.000001 -13.709161 12.786135 0.364975 -0.000002 -0.000000 -0.000000 0.000001 0.000008 -0.000001
$definebone "ffSkel_RightFoots" "ffSkel_RightLeg" 17.409798 -0.000000 0.000000 10.647276 -80.921692 -178.829886 -0.000000 0.000000 0.000000 -0.000002 -0.000003 0.000001
$definebone "ffSkel_RightToeBases" "ffSkel_RightFoots" 6.003698 -0.000000 0.000000 2.891143 18.624565 119.944134 -0.000000 -0.000000 0.000000 -0.000000 0.000003 -0.000004
$definebone "ffSkel_LeftFoot" "ffSkel_LeftLeg" 15.634298 -0.000000 -0.000000 -9.047578 -79.982040 14.430513 0.000000 0.000000 -0.000000 -0.000001 0.000002 0.000002
$definebone "ffSkel_Neck" "ffSkel_Spine3" 6.152599 -0.000000 0.000000 0.974027 -30.840029 -0.837665 -0.000001 -0.000001 -0.000000 -0.000002 -0.000005 -0.000001
$definebone "ffSkel_Head" "ffSkel_Neck" 2.228599 -0.000001 0.000000 -0.696718 -47.936516 -0.156990 0.000000 0.000001 0.000000 -0.000002 -0.000002 0.000001
$definebone "ffSkel_RightFoot" "ffSkel_RightLeg" 15.634299 -0.000000 0.000000 10.499452 -73.815872 -23.564033 0.000000 0.000000 -0.000000 0.000001 0.000004 -0.000002



$bonemerge ffSkel_RightHand

$ikchain rfoot "ffSkel_RightFoot" Z 0 knee 0.707 0.707 0
$ikchain lfoot "ffSkel_LeftFoot" Z 0 knee 0.707 0.707 0 
//$ikchain rhand "ffSkel_RightHand" Z 0 knee 0.707 0.707 0
//$ikchain lhand "ffSkel_LeftHand" Z 0 knee 0.707 0.707 0

$weightlist armsonly "ffSkel_LeftShoulder" 1.0 "ffSkel_RightShoulder" 1.0 "ffSkel_Hips" 0.0 "ffSkel_LeftUpLeg" 0.0 "ffSkel_RightUpLeg" 0.0 
$weightlist upperbody "ffSkel_Spine" 1.0 "ffSkel_Hips" 0.0 "ffSkel_LeftUpLeg" 0.0 "ffSkel_RightUpLeg" 0.0 
$weightlist upperbodynoarms "ffSkel_LeftShoulder" 0.0 "ffSkel_RightShoulder" 0.0 "ffSkel_Spine" 1.0 "ffSkel_Hips" 0.0 "ffSkel_LeftUpLeg" 0.0 "ffSkel_RightUpLeg" 0.0 
$weightlist nolowerbody "ffSkel_Hips" 1.0 "ffSkel_LeftUpLeg" 0.0 "ffSkel_RightUpLeg" 0.0 
$weightlist lowerbody "ffSkel_Hips" 1.0 "ffSkel_Spine" 0.0

$heirarchy "ffSkel_Hips" ""

//$poseparameter "move_yaw" -180 180 wrap
$poseparameter "body_pitch" -90 90 loop 360
$poseparameter "body_yaw" -90 90 loop 360

//$include "\ff\qc_files\ruleshierarchy.qci"
//====================================================
//
//	LOWER BODY MOVEMENT ANIMATION
//
//====================================================

	//-----------------
	//	Idles
	//-----------------
		$sequence ragdoll "ragdoll" loop FPS 30 activity ACT_DIERAGDOLL 1
		$sequence ragdoll_i "ragdoll_i" loop FPS 30
		$sequence ragdoll_r "ragdoll_r" loop FPS 30
		$sequence ragdoll_w "ragdoll_w" loop FPS 30
		$sequence ragdoll_cw "ragdoll_cw" loop FPS 30 
		$sequence ragdoll_cwi "ragdoll_cwi" loop FPS 30
		$sequence ragdoll_si "ragdoll_si" loop FPS 30
		$sequence Idle_lower "Idle01" align ragdoll_i X Y Z 0 0 loop FPS 30 fadein 0 fadeout 0 activity ACT_IDLE 1
		$sequence Crouch_Idle_Lower "Crouch_idle01" align ragdoll_cwi X Y Z 0 0 loop FPS 30 activity ACT_CROUCHIDLE 1
		$sequence Swim_Idle_Lower "Swim_idle01" align ragdoll_si X Y Z 0 0 loop FPS 30 activity ACT_HOVER 1



	//-----------------
	//   Airstate
	//-----------------

	//	$sequence Airstate "Airstate" loop FPS 30 activity ACT_AIRBORNE 1
	


	
// 		$sequence menu_pose "menu_pose" loop fps 30  origin 0 0 -115 activity ACT_MENUPOSE 1
	//	$sequence ragdoll "ragdoll" loop FPS 30 activity ACT_DIERAGDOLL 1

	//-----------------
	//	Run
	//-----------------

		$animation a_RunS RunS startloop 0  LX LY  align ragdoll_r X Y Z 0 0 rotateto -180
		$animation a_RunSE RunSE startloop 0  LX LY align ragdoll_r X Y Z 0 0 rotateto -135
		$animation a_RunE RunE startloop 0 LX LY align ragdoll_r X Y Z 0 0 rotateto -90
		$animation a_RunNE RunNE startloop 0  LX LY align ragdoll_r X Y Z 0 0 rotateto -45
		$animation a_RunN RunN startloop 0  LX LY align ragdoll_r X Y Z 0 0 rotateto 0

 
            $animation a_RunNW RunNW startloop 0 LX LY align ragdoll_r X Y Z 0 0 rotateto 45
		$animation a_RunW RunW startloop 0  LX LY  align ragdoll_r X Y Z 0 0 rotateto 90
		$animation a_RunSW RunSW startloop 0  LX LY  align ragdoll_r X Y Z 0 0 rotateto 135
		$animation a_RunZero "9run_idle" loop align ragdoll X Y Z 0 0

    //	$sequence Run_Lower2 { a_RunN } loop ACT_RUN 1

/*		$sequence Run_lower {
//			a_RunS a_RunSE a_RunE
//			a_RunNE a_RunN a_RunNW
//			a_RunW a_RunSW a_RunS
//			blendwidth 9 blend move_yaw -180 180
//			loop 
//			ACT_RUN 1
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

		$animation a_WalkS WalkS startloop 0 LX LY loop align ragdoll_w X Y Z 0 0 rotateto -180
		$animation a_WalkSE WalkSE startloop 0 LX LY loop align ragdoll_w X Y Z 0 0 rotateto -135
		$animation a_WalkE WalkE startloop 0 LX LY loop align ragdoll_w X Y Z 0 0 rotateto -90
		$animation a_WalkNE WalkNE startloop 0 LX LY loop align ragdoll_w X Y Z 0 0 rotateto -45
		$animation a_WalkN WalkN startloop 0 LX LY loop align ragdoll_w X Y Z 0 0 rotateto 0
		$animation a_WalkNW WalkNW startloop 0 LX LY loop align ragdoll_w X Y Z 0 0 rotateto 45
		$animation a_WalkW WalkW startloop 0 LX LY loop align ragdoll_w X Y Z 0 0 rotateto 90
		$animation a_WalkSW WalkSW startloop 0 LX LY loop align ragdoll_w X Y Z 0 0 rotateto 135
		$animation a_walkZero "9walk_idle" loop align ragdoll X Y Z 0 0

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

		$animation a_Crouch_walkS Crouch_walkS startloop 0 LX LY loop align ragdoll_cw X Y Z 0 0 rotateto -180
		$animation a_Crouch_walkSE Crouch_walkSE startloop 0 LX LY loop align ragdoll_cw X Y Z 0 0 rotateto -135
		$animation a_Crouch_walkE Crouch_walkE startloop 0 LX LY loop align ragdoll_cw X Y Z 0 0 rotateto -90
		$animation a_Crouch_walkNE Crouch_walkNE startloop 0 LX LY loop align ragdoll_cw X Y Z 0 0 rotateto -45
		$animation a_Crouch_walkN Crouch_walkN startloop 0 LX LY loop align ragdoll_cw X Y Z 0 0 rotateto 0
		$animation a_Crouch_walkNW Crouch_walkNW startloop 0 LX LY loop align ragdoll_cw X Y Z 0 0 rotateto 45
		$animation a_Crouch_walkW Crouch_walkW startloop 0 LX LY loop align ragdoll_cw X Y Z 0 0 rotateto 90
		$animation a_Crouch_walkSW Crouch_walkSW startloop 0 LX LY loop align ragdoll_cw X Y Z 0 0 rotateto 135
		$animation a_Crouch_walkZero "9Crouch_Walk_idle" loop align ragdoll_cw X Y Z 0 0


		$sequence Crouch_walk_lower {
			a_Crouch_walkNW a_Crouch_walkN a_Crouch_walkNE 
			a_Crouch_walkW a_Crouch_walkZero a_Crouch_walkE 
			a_Crouch_walkSW a_Crouch_walkS a_Crouch_walkSE 
			blendwidth 3 blend move_y -1 1 blend move_x 1 -1 loop
			weightlist lowerbody
			ACT_RUN_CROUCH 1
			{ event 7002 17 "lfoot" }
			{ event 7002 5 "rfoot" }

		}


	//-----------------------
	//	Swim
	//-----------------------

		$animation a_SwimS SwimS startloop 0 LX LY loop align ragdoll_si X Y Z 0 0 rotateto -180
		$animation a_SwimSE SwimSE startloop 0 LX LY loop align ragdoll_si X Y Z 0 0 rotateto -135
		$animation a_SwimE SwimE startloop 0 LX LY loop align ragdoll_si X Y Z 0 0 rotateto -90
		$animation a_SwimNE SwimNE startloop 0 LX LY loop align ragdoll_si X Y Z 0 0 rotateto -45
		$animation a_SwimN SwimN startloop 0 LX LY loop align ragdoll_si X Y Z 0 0 rotateto 0
		$animation a_SwimNW SwimNW startloop 0 LX LY loop align ragdoll_si X Y Z 0 0 rotateto 45
		$animation a_SwimW SwimW startloop 0 LX LY loop align ragdoll_si X Y Z 0 0 rotateto 90
		$animation a_SwimSW SwimSW startloop 0 LX LY loop align ragdoll_si X Y Z 0 0 rotateto 135
		$animation a_SwimZero "9Swim_idle" loop align ragdoll_si X Y Z 0 0


		$sequence Swim_lower {
			a_SwimNW a_SwimN a_SwimNE 
			a_SwimW a_SwimZero a_SwimE 
			a_SwimSW a_SwimS a_SwimSE 
			blendwidth 3 blend move_y -1 1 blend move_x 1 -1 loop
			ACT_SWIM 1
			{ event 7002 17 "lfoot" }
			{ event 7002 5 "rfoot" }
		}


	//---------------
	//	jump
	//---------------
		$sequence Jump "jump" fps 30 align ragdoll X Y Z 0 0 activity ACT_HOP 1 weightlist lowerbody
//{ event 7001 23 "lfoot" } { event 7001 23 "rfoot" }
//		$sequence Jump1 "jump1" fps 30 align ragdoll X Y Z 0 0 activity ACT_HOP1 1 { event 7001 23 "lfoot" } { event 7001 23 "rfoot" }
	//	$sequence Jump2 "jump2" fps 30 align ragdoll X Y Z 0 0 activity ACT_HOP2 1 { event 7001 23 "lfoot" } { event 7001 23 "rfoot" }
	//	$sequence Jump3 "jump3" fps 30 align ragdoll X Y Z 0 0 activity ACT_HOP3 1 { event 7001 23 "lfoot" } { event 7001 23 "rfoot" }


	//-----------------
// 	//	SHOTGUN
// 	//-----------------
		

		$sequence Jump_Upper_shotgun "shotgun/jump_shotgun" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_shotgun_aim_neutral shotgun/swim_9aims_shotgun frame 4 4
		$animation Swim_shotgun_aim_up_left shotgun/swim_9aims_shotgun frame 0 0 subtract Swim_shotgun_aim_neutral 0
		$animation Swim_shotgun_aim_up_center shotgun/swim_9aims_shotgun frame 1 1 subtract Swim_shotgun_aim_neutral 0
		$animation Swim_shotgun_aim_up_right shotgun/swim_9aims_shotgun frame 2 2 subtract Swim_shotgun_aim_neutral 0
		$animation Swim_shotgun_aim_mid_left shotgun/swim_9aims_shotgun frame 3 3 subtract Swim_shotgun_aim_neutral 0
		$animation Swim_shotgun_aim_mid_center shotgun/swim_9aims_shotgun frame 4 4 subtract Swim_shotgun_aim_neutral 0
		$animation Swim_shotgun_aim_mid_right shotgun/swim_9aims_shotgun frame 5 5 subtract Swim_shotgun_aim_neutral 0
		$animation Swim_shotgun_aim_down_left shotgun/swim_9aims_shotgun frame 6 6 subtract Swim_shotgun_aim_neutral 0
		$animation Swim_shotgun_aim_down_center shotgun/swim_9aims_shotgun frame 7 7 subtract Swim_shotgun_aim_neutral 0
		$animation Swim_shotgun_aim_down_right shotgun/swim_9aims_shotgun frame 8 8 subtract Swim_shotgun_aim_neutral 0


		$sequence Swim_Aim_shotgun  { 
			Swim_shotgun_aim_up_right Swim_shotgun_aim_up_center Swim_shotgun_aim_up_left 
			Swim_shotgun_aim_mid_right Swim_shotgun_aim_mid_center Swim_shotgun_aim_mid_left 
			Swim_shotgun_aim_down_right Swim_shotgun_aim_down_center Swim_shotgun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_shotgun_aim_neutral shotgun/crouch_9aims_shotgun frame 4 4
		$animation Crouch_shotgun_aim_up_left shotgun/crouch_9aims_shotgun frame 0 0 subtract Crouch_shotgun_aim_neutral 0
		$animation Crouch_shotgun_aim_up_center shotgun/crouch_9aims_shotgun frame 1 1 subtract Crouch_shotgun_aim_neutral 0
		$animation Crouch_shotgun_aim_up_right shotgun/crouch_9aims_shotgun frame 2 2 subtract Crouch_shotgun_aim_neutral 0
		$animation Crouch_shotgun_aim_mid_left shotgun/crouch_9aims_shotgun frame 3 3 subtract Crouch_shotgun_aim_neutral 0
		$animation Crouch_shotgun_aim_mid_center shotgun/crouch_9aims_shotgun frame 4 4 subtract Crouch_shotgun_aim_neutral 0
		$animation Crouch_shotgun_aim_mid_right shotgun/crouch_9aims_shotgun frame 5 5 subtract Crouch_shotgun_aim_neutral 0
		$animation Crouch_shotgun_aim_down_left shotgun/crouch_9aims_shotgun frame 6 6 subtract Crouch_shotgun_aim_neutral 0
		$animation Crouch_shotgun_aim_down_center shotgun/crouch_9aims_shotgun frame 7 7 subtract Crouch_shotgun_aim_neutral 0
		$animation Crouch_shotgun_aim_down_right shotgun/crouch_9aims_shotgun frame 8 8 subtract Crouch_shotgun_aim_neutral 0


		$sequence Crouch_Aim_shotgun  { 
			Crouch_shotgun_aim_up_right Crouch_shotgun_aim_up_center Crouch_shotgun_aim_up_left 
			Crouch_shotgun_aim_mid_right Crouch_shotgun_aim_mid_center Crouch_shotgun_aim_mid_left 
			Crouch_shotgun_aim_down_right Crouch_shotgun_aim_down_center Crouch_shotgun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_shotgun_aim_neutral shotgun/run_9aims_shotgun frame 4 4
		$animation Run_shotgun_aim_up_left shotgun/run_9aims_shotgun frame 0 0 subtract Run_shotgun_aim_neutral 0
		$animation Run_shotgun_aim_up_center shotgun/run_9aims_shotgun frame 1 1 subtract Run_shotgun_aim_neutral 0
		$animation Run_shotgun_aim_up_right shotgun/run_9aims_shotgun frame 2 2 subtract Run_shotgun_aim_neutral 0
		$animation Run_shotgun_aim_mid_left shotgun/run_9aims_shotgun frame 3 3 subtract Run_shotgun_aim_neutral 0
		$animation Run_shotgun_aim_mid_center shotgun/run_9aims_shotgun frame 4 4 subtract Run_shotgun_aim_neutral 0
		$animation Run_shotgun_aim_mid_right shotgun/run_9aims_shotgun frame 5 5 subtract Run_shotgun_aim_neutral 0
		$animation Run_shotgun_aim_down_left shotgun/run_9aims_shotgun frame 6 6 subtract Run_shotgun_aim_neutral 0
		$animation Run_shotgun_aim_down_center shotgun/run_9aims_shotgun frame 7 7 subtract Run_shotgun_aim_neutral 0
		$animation Run_shotgun_aim_down_right shotgun/run_9aims_shotgun frame 8 8 subtract Run_shotgun_aim_neutral 0

		$sequence Run_Aim_shotgun  { 
			Run_shotgun_aim_up_right Run_shotgun_aim_up_center Run_shotgun_aim_up_left 
			Run_shotgun_aim_mid_right Run_shotgun_aim_mid_center Run_shotgun_aim_mid_left 
			Run_shotgun_aim_down_right Run_shotgun_aim_down_center Run_shotgun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_shotgun "shotgun/idle_shotgun" FPS 30 weightlist upperbody addlayer Run_Aim_shotgun
		$sequence Walk_Upper_shotgun "shotgun/walk_shotgun" FPS 30 weightlist upperbody addlayer Run_Aim_shotgun
		$sequence Run_Upper_shotgun "shotgun/run_shotgun" FPS 30 weightlist upperbody addlayer Run_Aim_shotgun
		$sequence Crouch_Idle_Upper_shotgun "shotgun/crouch_idle_shotgun" FPS 30 weightlist upperbody addlayer Crouch_Aim_shotgun
		$sequence Crouch_Walk_Upper_shotgun "shotgun/crouch_walk_shotgun" FPS 30 weightlist upperbody addlayer Crouch_Aim_shotgun


		$animation Idle_Shoot_shotgun_layer "shotgun/shoot_shotgun" FPS 30 subtract Idle_Shoot_shotgun_layer 0 weightlist upperbody
		$sequence Idle_Shoot_shotgun "Idle_Shoot_shotgun_layer" delta
		$sequence Walk_Shoot_shotgun "Idle_Shoot_shotgun_layer" delta
		$sequence Run_Shoot_shotgun "Idle_Shoot_shotgun_layer" delta
		$sequence Crouch_Idle_Shoot_shotgun "Idle_Shoot_shotgun_layer" delta
		$sequence Crouch_Walk_Shoot_shotgun "Idle_Shoot_shotgun_layer" delta

		$sequence Swim_Idle_Upper_shotgun "shotgun/swim_idle_shotgun" FPS 30 weightlist upperbody addlayer Swim_Aim_shotgun		
		$animation Swim_Shoot_shotgun_layer "shotgun/swim_shoot_shotgun" FPS 30 subtract Swim_Shoot_shotgun_layer 0 weightlist upperbody
		$sequence Swim_Upper_shotgun "shotgun/swim_shotgun" FPS 30 weightlist upperbody addlayer Swim_Aim_shotgun


		$animation Reload_shotgun_layer "shotgun/reload_shotgun" FPS 30 subtract Reload_shotgun_layer 0 weightlist upperbody
		$sequence Reload_shotgun "Reload_shotgun_layer" delta

	//-----------------
	//    SUPER SHOTGUN
	//-----------------

		$sequence Jump_Upper_supershotgun "supershotgun/jump_supershotgun" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_supershotgun_aim_neutral supershotgun/swim_9aims_supershotgun frame 4 4
		$animation Swim_supershotgun_aim_up_left supershotgun/swim_9aims_supershotgun frame 0 0 subtract Swim_supershotgun_aim_neutral 0
		$animation Swim_supershotgun_aim_up_center supershotgun/swim_9aims_supershotgun frame 1 1 subtract Swim_supershotgun_aim_neutral 0
		$animation Swim_supershotgun_aim_up_right supershotgun/swim_9aims_supershotgun frame 2 2 subtract Swim_supershotgun_aim_neutral 0
		$animation Swim_supershotgun_aim_mid_left supershotgun/swim_9aims_supershotgun frame 3 3 subtract Swim_supershotgun_aim_neutral 0
		$animation Swim_supershotgun_aim_mid_center supershotgun/swim_9aims_supershotgun frame 4 4 subtract Swim_supershotgun_aim_neutral 0
		$animation Swim_supershotgun_aim_mid_right supershotgun/swim_9aims_supershotgun frame 5 5 subtract Swim_supershotgun_aim_neutral 0
		$animation Swim_supershotgun_aim_down_left supershotgun/swim_9aims_supershotgun frame 6 6 subtract Swim_supershotgun_aim_neutral 0
		$animation Swim_supershotgun_aim_down_center supershotgun/swim_9aims_supershotgun frame 7 7 subtract Swim_supershotgun_aim_neutral 0
		$animation Swim_supershotgun_aim_down_right supershotgun/swim_9aims_supershotgun frame 8 8 subtract Swim_supershotgun_aim_neutral 0


		$sequence Swim_Aim_supershotgun  { 
			Swim_supershotgun_aim_up_right Swim_supershotgun_aim_up_center Swim_supershotgun_aim_up_left 
			Swim_supershotgun_aim_mid_right Swim_supershotgun_aim_mid_center Swim_supershotgun_aim_mid_left 
			Swim_supershotgun_aim_down_right Swim_supershotgun_aim_down_center Swim_supershotgun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_supershotgun_aim_neutral supershotgun/crouch_9aims_supershotgun frame 4 4
		$animation Crouch_supershotgun_aim_up_left supershotgun/crouch_9aims_supershotgun frame 0 0 subtract Crouch_supershotgun_aim_neutral 0
		$animation Crouch_supershotgun_aim_up_center supershotgun/crouch_9aims_supershotgun frame 1 1 subtract Crouch_supershotgun_aim_neutral 0
		$animation Crouch_supershotgun_aim_up_right supershotgun/crouch_9aims_supershotgun frame 2 2 subtract Crouch_supershotgun_aim_neutral 0
		$animation Crouch_supershotgun_aim_mid_left supershotgun/crouch_9aims_supershotgun frame 3 3 subtract Crouch_supershotgun_aim_neutral 0
		$animation Crouch_supershotgun_aim_mid_center supershotgun/crouch_9aims_supershotgun frame 4 4 subtract Crouch_supershotgun_aim_neutral 0
		$animation Crouch_supershotgun_aim_mid_right supershotgun/crouch_9aims_supershotgun frame 5 5 subtract Crouch_supershotgun_aim_neutral 0
		$animation Crouch_supershotgun_aim_down_left supershotgun/crouch_9aims_supershotgun frame 6 6 subtract Crouch_supershotgun_aim_neutral 0
		$animation Crouch_supershotgun_aim_down_center supershotgun/crouch_9aims_supershotgun frame 7 7 subtract Crouch_supershotgun_aim_neutral 0
		$animation Crouch_supershotgun_aim_down_right supershotgun/crouch_9aims_supershotgun frame 8 8 subtract Crouch_supershotgun_aim_neutral 0


		$sequence Crouch_Aim_supershotgun  { 
			Crouch_supershotgun_aim_up_right Crouch_supershotgun_aim_up_center Crouch_supershotgun_aim_up_left 
			Crouch_supershotgun_aim_mid_right Crouch_supershotgun_aim_mid_center Crouch_supershotgun_aim_mid_left 
			Crouch_supershotgun_aim_down_right Crouch_supershotgun_aim_down_center Crouch_supershotgun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_supershotgun_aim_neutral supershotgun/run_9aims_supershotgun frame 4 4
		$animation Run_supershotgun_aim_up_left supershotgun/run_9aims_supershotgun frame 0 0 subtract Run_supershotgun_aim_neutral 0
		$animation Run_supershotgun_aim_up_center supershotgun/run_9aims_supershotgun frame 1 1 subtract Run_supershotgun_aim_neutral 0
		$animation Run_supershotgun_aim_up_right supershotgun/run_9aims_supershotgun frame 2 2 subtract Run_supershotgun_aim_neutral 0
		$animation Run_supershotgun_aim_mid_left supershotgun/run_9aims_supershotgun frame 3 3 subtract Run_supershotgun_aim_neutral 0
		$animation Run_supershotgun_aim_mid_center supershotgun/run_9aims_supershotgun frame 4 4 subtract Run_supershotgun_aim_neutral 0
		$animation Run_supershotgun_aim_mid_right supershotgun/run_9aims_supershotgun frame 5 5 subtract Run_supershotgun_aim_neutral 0
		$animation Run_supershotgun_aim_down_left supershotgun/run_9aims_supershotgun frame 6 6 subtract Run_supershotgun_aim_neutral 0
		$animation Run_supershotgun_aim_down_center supershotgun/run_9aims_supershotgun frame 7 7 subtract Run_supershotgun_aim_neutral 0
		$animation Run_supershotgun_aim_down_right supershotgun/run_9aims_supershotgun frame 8 8 subtract Run_supershotgun_aim_neutral 0

		$sequence Run_Aim_supershotgun  { 
			Run_supershotgun_aim_up_right Run_supershotgun_aim_up_center Run_supershotgun_aim_up_left 
			Run_supershotgun_aim_mid_right Run_supershotgun_aim_mid_center Run_supershotgun_aim_mid_left 
			Run_supershotgun_aim_down_right Run_supershotgun_aim_down_center Run_supershotgun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_supershotgun "supershotgun/idle_supershotgun" FPS 30 weightlist upperbody addlayer Run_Aim_supershotgun
		$sequence Walk_Upper_supershotgun "supershotgun/walk_supershotgun" FPS 30 weightlist upperbody addlayer Run_Aim_supershotgun
		$sequence Run_Upper_supershotgun "supershotgun/run_supershotgun" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_supershotgun
		$sequence Crouch_Idle_Upper_supershotgun "supershotgun/crouch_idle_supershotgun" FPS 30 weightlist upperbody addlayer Crouch_Aim_supershotgun
		$sequence Crouch_Walk_Upper_supershotgun "supershotgun/crouch_walk_supershotgun" FPS 30 weightlist upperbody addlayer Crouch_Aim_supershotgun


		$animation Idle_Shoot_supershotgun_layer "supershotgun/shoot_supershotgun" FPS 30 subtract Idle_Shoot_supershotgun_layer 0 weightlist upperbody
		$sequence Idle_Shoot_supershotgun "Idle_Shoot_supershotgun_layer" delta
		$sequence Walk_Shoot_supershotgun "Idle_Shoot_supershotgun_layer" delta
		$sequence Run_Shoot_supershotgun "Idle_Shoot_supershotgun_layer" delta
		$sequence Crouch_Idle_Shoot_supershotgun "Idle_Shoot_supershotgun_layer" delta
		$sequence Crouch_Walk_Shoot_supershotgun "Idle_Shoot_supershotgun_layer" delta

		$sequence Swim_Idle_Upper_supershotgun "supershotgun/swim_idle_supershotgun" FPS 30 weightlist upperbody addlayer Swim_Aim_supershotgun		
		$animation Swim_Shoot_supershotgun_layer "supershotgun/swim_shoot_supershotgun" FPS 30 subtract Swim_Shoot_supershotgun_layer 0 weightlist upperbody
		$sequence Swim_Upper_supershotgun "supershotgun/swim_supershotgun" FPS 30 weightlist upperbody addlayer Swim_Aim_supershotgun


		$animation Reload_supershotgun_layer "supershotgun/reload_supershotgun" FPS 30 subtract Reload_supershotgun_layer 0 weightlist upperbody
		$sequence Reload_supershotgun "Reload_supershotgun_layer" delta

	//-----------------
 	//	GRENADE LAUNCHER
 	//-----------------

		$sequence Jump_Upper_grenadelauncher "grenadelauncher/jump_grenadelauncher" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_grenadelauncher_aim_neutral grenadelauncher/swim_9aims_grenadelauncher frame 4 4
		$animation Swim_grenadelauncher_aim_up_left grenadelauncher/swim_9aims_grenadelauncher frame 0 0 subtract Swim_grenadelauncher_aim_neutral 0
		$animation Swim_grenadelauncher_aim_up_center grenadelauncher/swim_9aims_grenadelauncher frame 1 1 subtract Swim_grenadelauncher_aim_neutral 0
		$animation Swim_grenadelauncher_aim_up_right grenadelauncher/swim_9aims_grenadelauncher frame 2 2 subtract Swim_grenadelauncher_aim_neutral 0
		$animation Swim_grenadelauncher_aim_mid_left grenadelauncher/swim_9aims_grenadelauncher frame 3 3 subtract Swim_grenadelauncher_aim_neutral 0
		$animation Swim_grenadelauncher_aim_mid_center grenadelauncher/swim_9aims_grenadelauncher frame 4 4 subtract Swim_grenadelauncher_aim_neutral 0
		$animation Swim_grenadelauncher_aim_mid_right grenadelauncher/swim_9aims_grenadelauncher frame 5 5 subtract Swim_grenadelauncher_aim_neutral 0
		$animation Swim_grenadelauncher_aim_down_left grenadelauncher/swim_9aims_grenadelauncher frame 6 6 subtract Swim_grenadelauncher_aim_neutral 0
		$animation Swim_grenadelauncher_aim_down_center grenadelauncher/swim_9aims_grenadelauncher frame 7 7 subtract Swim_grenadelauncher_aim_neutral 0
		$animation Swim_grenadelauncher_aim_down_right grenadelauncher/swim_9aims_grenadelauncher frame 8 8 subtract Swim_grenadelauncher_aim_neutral 0


		$sequence Swim_Aim_grenadelauncher  { 
			Swim_grenadelauncher_aim_up_right Swim_grenadelauncher_aim_up_center Swim_grenadelauncher_aim_up_left 
			Swim_grenadelauncher_aim_mid_right Swim_grenadelauncher_aim_mid_center Swim_grenadelauncher_aim_mid_left 
			Swim_grenadelauncher_aim_down_right Swim_grenadelauncher_aim_down_center Swim_grenadelauncher_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_grenadelauncher_aim_neutral grenadelauncher/crouch_9aims_grenadelauncher frame 4 4
		$animation Crouch_grenadelauncher_aim_up_left grenadelauncher/crouch_9aims_grenadelauncher frame 0 0 subtract Crouch_grenadelauncher_aim_neutral 0
		$animation Crouch_grenadelauncher_aim_up_center grenadelauncher/crouch_9aims_grenadelauncher frame 1 1 subtract Crouch_grenadelauncher_aim_neutral 0
		$animation Crouch_grenadelauncher_aim_up_right grenadelauncher/crouch_9aims_grenadelauncher frame 2 2 subtract Crouch_grenadelauncher_aim_neutral 0
		$animation Crouch_grenadelauncher_aim_mid_left grenadelauncher/crouch_9aims_grenadelauncher frame 3 3 subtract Crouch_grenadelauncher_aim_neutral 0
		$animation Crouch_grenadelauncher_aim_mid_center grenadelauncher/crouch_9aims_grenadelauncher frame 4 4 subtract Crouch_grenadelauncher_aim_neutral 0
		$animation Crouch_grenadelauncher_aim_mid_right grenadelauncher/crouch_9aims_grenadelauncher frame 5 5 subtract Crouch_grenadelauncher_aim_neutral 0
		$animation Crouch_grenadelauncher_aim_down_left grenadelauncher/crouch_9aims_grenadelauncher frame 6 6 subtract Crouch_grenadelauncher_aim_neutral 0
		$animation Crouch_grenadelauncher_aim_down_center grenadelauncher/crouch_9aims_grenadelauncher frame 7 7 subtract Crouch_grenadelauncher_aim_neutral 0
		$animation Crouch_grenadelauncher_aim_down_right grenadelauncher/crouch_9aims_grenadelauncher frame 8 8 subtract Crouch_grenadelauncher_aim_neutral 0


		$sequence Crouch_Aim_grenadelauncher  { 
			Crouch_grenadelauncher_aim_up_right Crouch_grenadelauncher_aim_up_center Crouch_grenadelauncher_aim_up_left 
			Crouch_grenadelauncher_aim_mid_right Crouch_grenadelauncher_aim_mid_center Crouch_grenadelauncher_aim_mid_left 
			Crouch_grenadelauncher_aim_down_right Crouch_grenadelauncher_aim_down_center Crouch_grenadelauncher_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_grenadelauncher_aim_neutral grenadelauncher/run_9aims_grenadelauncher frame 4 4
		$animation Run_grenadelauncher_aim_up_left grenadelauncher/run_9aims_grenadelauncher frame 0 0 subtract Run_grenadelauncher_aim_neutral 0
		$animation Run_grenadelauncher_aim_up_center grenadelauncher/run_9aims_grenadelauncher frame 1 1 subtract Run_grenadelauncher_aim_neutral 0
		$animation Run_grenadelauncher_aim_up_right grenadelauncher/run_9aims_grenadelauncher frame 2 2 subtract Run_grenadelauncher_aim_neutral 0
		$animation Run_grenadelauncher_aim_mid_left grenadelauncher/run_9aims_grenadelauncher frame 3 3 subtract Run_grenadelauncher_aim_neutral 0
		$animation Run_grenadelauncher_aim_mid_center grenadelauncher/run_9aims_grenadelauncher frame 4 4 subtract Run_grenadelauncher_aim_neutral 0
		$animation Run_grenadelauncher_aim_mid_right grenadelauncher/run_9aims_grenadelauncher frame 5 5 subtract Run_grenadelauncher_aim_neutral 0
		$animation Run_grenadelauncher_aim_down_left grenadelauncher/run_9aims_grenadelauncher frame 6 6 subtract Run_grenadelauncher_aim_neutral 0
		$animation Run_grenadelauncher_aim_down_center grenadelauncher/run_9aims_grenadelauncher frame 7 7 subtract Run_grenadelauncher_aim_neutral 0
		$animation Run_grenadelauncher_aim_down_right grenadelauncher/run_9aims_grenadelauncher frame 8 8 subtract Run_grenadelauncher_aim_neutral 0

		$sequence Run_Aim_grenadelauncher  { 
			Run_grenadelauncher_aim_up_right Run_grenadelauncher_aim_up_center Run_grenadelauncher_aim_up_left 
			Run_grenadelauncher_aim_mid_right Run_grenadelauncher_aim_mid_center Run_grenadelauncher_aim_mid_left 
			Run_grenadelauncher_aim_down_right Run_grenadelauncher_aim_down_center Run_grenadelauncher_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_grenadelauncher "grenadelauncher/idle_grenadelauncher" FPS 30 weightlist upperbody addlayer Run_Aim_grenadelauncher
		$sequence Walk_Upper_grenadelauncher "grenadelauncher/walk_grenadelauncher" FPS 30 weightlist upperbody addlayer Run_Aim_grenadelauncher
		$sequence Run_Upper_grenadelauncher "grenadelauncher/run_grenadelauncher" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_grenadelauncher
		$sequence Crouch_Idle_Upper_grenadelauncher "grenadelauncher/crouch_idle_grenadelauncher" FPS 30 weightlist upperbody addlayer Crouch_Aim_grenadelauncher
		$sequence Crouch_Walk_Upper_grenadelauncher "grenadelauncher/crouch_walk_grenadelauncher" FPS 30 weightlist upperbody addlayer Crouch_Aim_grenadelauncher


		$animation Idle_Shoot_grenadelauncher_layer "grenadelauncher/shoot_grenadelauncher" FPS 30 subtract Idle_Shoot_grenadelauncher_layer 0 weightlist upperbody
		$sequence Idle_Shoot_grenadelauncher "Idle_Shoot_grenadelauncher_layer" delta
		$sequence Walk_Shoot_grenadelauncher "Idle_Shoot_grenadelauncher_layer" delta
		$sequence Run_Shoot_grenadelauncher "Idle_Shoot_grenadelauncher_layer" delta
		$sequence Crouch_Idle_Shoot_grenadelauncher "Idle_Shoot_grenadelauncher_layer" delta
		$sequence Crouch_Walk_Shoot_grenadelauncher "Idle_Shoot_grenadelauncher_layer" delta

		$sequence Swim_Idle_Upper_grenadelauncher "grenadelauncher/swim_idle_grenadelauncher" FPS 30 weightlist upperbody addlayer Swim_Aim_grenadelauncher		
		$animation Swim_Shoot_grenadelauncher_layer "grenadelauncher/swim_shoot_grenadelauncher" FPS 30 subtract Swim_Shoot_grenadelauncher_layer 0 weightlist upperbody
		$sequence Swim_Upper_grenadelauncher "grenadelauncher/swim_grenadelauncher" FPS 30 weightlist upperbody addlayer Swim_Aim_grenadelauncher


		$animation Reload_grenadelauncher_layer "grenadelauncher/reload_grenadelauncher" FPS 30 subtract Reload_grenadelauncher_layer 0 weightlist upperbody
		$sequence Reload_grenadelauncher "Reload_grenadelauncher_layer" delta



	//-----------------
 	//	PIPE LAUNCHER
 	//-----------------

		$sequence Jump_Upper_pipelauncher "grenadelauncher/jump_grenadelauncher" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_pipelauncher_aim_neutral grenadelauncher/swim_9aims_grenadelauncher frame 4 4
		$animation Swim_pipelauncher_aim_up_left grenadelauncher/swim_9aims_grenadelauncher frame 0 0 subtract Swim_pipelauncher_aim_neutral 0
		$animation Swim_pipelauncher_aim_up_center grenadelauncher/swim_9aims_grenadelauncher frame 1 1 subtract Swim_pipelauncher_aim_neutral 0
		$animation Swim_pipelauncher_aim_up_right grenadelauncher/swim_9aims_grenadelauncher frame 2 2 subtract Swim_pipelauncher_aim_neutral 0
		$animation Swim_pipelauncher_aim_mid_left grenadelauncher/swim_9aims_grenadelauncher frame 3 3 subtract Swim_pipelauncher_aim_neutral 0
		$animation Swim_pipelauncher_aim_mid_center grenadelauncher/swim_9aims_grenadelauncher frame 4 4 subtract Swim_pipelauncher_aim_neutral 0
		$animation Swim_pipelauncher_aim_mid_right grenadelauncher/swim_9aims_grenadelauncher frame 5 5 subtract Swim_pipelauncher_aim_neutral 0
		$animation Swim_pipelauncher_aim_down_left grenadelauncher/swim_9aims_grenadelauncher frame 6 6 subtract Swim_pipelauncher_aim_neutral 0
		$animation Swim_pipelauncher_aim_down_center grenadelauncher/swim_9aims_grenadelauncher frame 7 7 subtract Swim_pipelauncher_aim_neutral 0
		$animation Swim_pipelauncher_aim_down_right grenadelauncher/swim_9aims_grenadelauncher frame 8 8 subtract Swim_pipelauncher_aim_neutral 0


		$sequence Swim_Aim_pipelauncher  { 
			Swim_pipelauncher_aim_up_right Swim_pipelauncher_aim_up_center Swim_pipelauncher_aim_up_left 
			Swim_pipelauncher_aim_mid_right Swim_pipelauncher_aim_mid_center Swim_pipelauncher_aim_mid_left 
			Swim_pipelauncher_aim_down_right Swim_pipelauncher_aim_down_center Swim_pipelauncher_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_pipelauncher_aim_neutral grenadelauncher/crouch_9aims_grenadelauncher frame 4 4
		$animation Crouch_pipelauncher_aim_up_left grenadelauncher/crouch_9aims_grenadelauncher frame 0 0 subtract Crouch_pipelauncher_aim_neutral 0
		$animation Crouch_pipelauncher_aim_up_center grenadelauncher/crouch_9aims_grenadelauncher frame 1 1 subtract Crouch_pipelauncher_aim_neutral 0
		$animation Crouch_pipelauncher_aim_up_right grenadelauncher/crouch_9aims_grenadelauncher frame 2 2 subtract Crouch_pipelauncher_aim_neutral 0
		$animation Crouch_pipelauncher_aim_mid_left grenadelauncher/crouch_9aims_grenadelauncher frame 3 3 subtract Crouch_pipelauncher_aim_neutral 0
		$animation Crouch_pipelauncher_aim_mid_center grenadelauncher/crouch_9aims_grenadelauncher frame 4 4 subtract Crouch_pipelauncher_aim_neutral 0
		$animation Crouch_pipelauncher_aim_mid_right grenadelauncher/crouch_9aims_grenadelauncher frame 5 5 subtract Crouch_pipelauncher_aim_neutral 0
		$animation Crouch_pipelauncher_aim_down_left grenadelauncher/crouch_9aims_grenadelauncher frame 6 6 subtract Crouch_pipelauncher_aim_neutral 0
		$animation Crouch_pipelauncher_aim_down_center grenadelauncher/crouch_9aims_grenadelauncher frame 7 7 subtract Crouch_pipelauncher_aim_neutral 0
		$animation Crouch_pipelauncher_aim_down_right grenadelauncher/crouch_9aims_grenadelauncher frame 8 8 subtract Crouch_pipelauncher_aim_neutral 0


		$sequence Crouch_Aim_pipelauncher  { 
			Crouch_pipelauncher_aim_up_right Crouch_pipelauncher_aim_up_center Crouch_pipelauncher_aim_up_left 
			Crouch_pipelauncher_aim_mid_right Crouch_pipelauncher_aim_mid_center Crouch_pipelauncher_aim_mid_left 
			Crouch_pipelauncher_aim_down_right Crouch_pipelauncher_aim_down_center Crouch_pipelauncher_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_pipelauncher_aim_neutral grenadelauncher/run_9aims_grenadelauncher frame 4 4
		$animation Run_pipelauncher_aim_up_left grenadelauncher/run_9aims_grenadelauncher frame 0 0 subtract Run_pipelauncher_aim_neutral 0
		$animation Run_pipelauncher_aim_up_center grenadelauncher/run_9aims_grenadelauncher frame 1 1 subtract Run_pipelauncher_aim_neutral 0
		$animation Run_pipelauncher_aim_up_right grenadelauncher/run_9aims_grenadelauncher frame 2 2 subtract Run_pipelauncher_aim_neutral 0
		$animation Run_pipelauncher_aim_mid_left grenadelauncher/run_9aims_grenadelauncher frame 3 3 subtract Run_pipelauncher_aim_neutral 0
		$animation Run_pipelauncher_aim_mid_center grenadelauncher/run_9aims_grenadelauncher frame 4 4 subtract Run_pipelauncher_aim_neutral 0
		$animation Run_pipelauncher_aim_mid_right grenadelauncher/run_9aims_grenadelauncher frame 5 5 subtract Run_pipelauncher_aim_neutral 0
		$animation Run_pipelauncher_aim_down_left grenadelauncher/run_9aims_grenadelauncher frame 6 6 subtract Run_pipelauncher_aim_neutral 0
		$animation Run_pipelauncher_aim_down_center grenadelauncher/run_9aims_grenadelauncher frame 7 7 subtract Run_pipelauncher_aim_neutral 0
		$animation Run_pipelauncher_aim_down_right grenadelauncher/run_9aims_grenadelauncher frame 8 8 subtract Run_pipelauncher_aim_neutral 0

		$sequence Run_Aim_pipelauncher  { 
			Run_pipelauncher_aim_up_right Run_pipelauncher_aim_up_center Run_pipelauncher_aim_up_left 
			Run_pipelauncher_aim_mid_right Run_pipelauncher_aim_mid_center Run_pipelauncher_aim_mid_left 
			Run_pipelauncher_aim_down_right Run_pipelauncher_aim_down_center Run_pipelauncher_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_pipelauncher "grenadelauncher/idle_grenadelauncher" FPS 30 weightlist upperbody addlayer Run_Aim_pipelauncher
		$sequence Walk_Upper_pipelauncher "grenadelauncher/walk_grenadelauncher" FPS 30 weightlist upperbody addlayer Run_Aim_pipelauncher
		$sequence Run_Upper_pipelauncher "grenadelauncher/run_grenadelauncher" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_pipelauncher
		$sequence Crouch_Idle_Upper_pipelauncher "grenadelauncher/crouch_idle_grenadelauncher" FPS 30 weightlist upperbody addlayer Crouch_Aim_pipelauncher
		$sequence Crouch_Walk_Upper_pipelauncher "grenadelauncher/crouch_walk_grenadelauncher" FPS 30 weightlist upperbody addlayer Crouch_Aim_pipelauncher


		$animation Idle_Shoot_pipelauncher_layer "grenadelauncher/shoot_grenadelauncher" FPS 30 subtract Idle_Shoot_pipelauncher_layer 0 weightlist upperbody
		$sequence Idle_Shoot_pipelauncher "Idle_Shoot_pipelauncher_layer" delta
		$sequence Walk_Shoot_pipelauncher "Idle_Shoot_pipelauncher_layer" delta
		$sequence Run_Shoot_pipelauncher "Idle_Shoot_pipelauncher_layer" delta
		$sequence Crouch_Idle_Shoot_pipelauncher "Idle_Shoot_pipelauncher_layer" delta
		$sequence Crouch_Walk_Shoot_pipelauncher "Idle_Shoot_pipelauncher_layer" delta

		$sequence Swim_Idle_Upper_pipelauncher "grenadelauncher/swim_idle_grenadelauncher" FPS 30 weightlist upperbody addlayer Swim_Aim_pipelauncher		
		$animation Swim_Shoot_pipelauncher_layer "grenadelauncher/swim_shoot_grenadelauncher" FPS 30 subtract Swim_Shoot_pipelauncher_layer 0 weightlist upperbody
		$sequence Swim_Upper_pipelauncher "grenadelauncher/swim_grenadelauncher" FPS 30 weightlist upperbody addlayer Swim_Aim_pipelauncher


		$animation Reload_pipelauncher_layer "grenadelauncher/reload_grenadelauncher" FPS 30 subtract Reload_pipelauncher_layer 0 weightlist upperbody
		$sequence Reload_pipelauncher "Reload_pipelauncher_layer" delta


	//-----------------
	//	NAILGUN
	//-----------------
$sequence Jump_Upper_nailgun "nailgun/jump_nailgun" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_nailgun_aim_neutral nailgun/swim_9aims_nailgun frame 4 4
		$animation Swim_nailgun_aim_up_left nailgun/swim_9aims_nailgun frame 0 0 subtract Swim_nailgun_aim_neutral 0
		$animation Swim_nailgun_aim_up_center nailgun/swim_9aims_nailgun frame 1 1 subtract Swim_nailgun_aim_neutral 0
		$animation Swim_nailgun_aim_up_right nailgun/swim_9aims_nailgun frame 2 2 subtract Swim_nailgun_aim_neutral 0
		$animation Swim_nailgun_aim_mid_left nailgun/swim_9aims_nailgun frame 3 3 subtract Swim_nailgun_aim_neutral 0
		$animation Swim_nailgun_aim_mid_center nailgun/swim_9aims_nailgun frame 4 4 subtract Swim_nailgun_aim_neutral 0
		$animation Swim_nailgun_aim_mid_right nailgun/swim_9aims_nailgun frame 5 5 subtract Swim_nailgun_aim_neutral 0
		$animation Swim_nailgun_aim_down_left nailgun/swim_9aims_nailgun frame 6 6 subtract Swim_nailgun_aim_neutral 0
		$animation Swim_nailgun_aim_down_center nailgun/swim_9aims_nailgun frame 7 7 subtract Swim_nailgun_aim_neutral 0
		$animation Swim_nailgun_aim_down_right nailgun/swim_9aims_nailgun frame 8 8 subtract Swim_nailgun_aim_neutral 0


		$sequence Swim_Aim_nailgun  { 
			Swim_nailgun_aim_up_right Swim_nailgun_aim_up_center Swim_nailgun_aim_up_left 
			Swim_nailgun_aim_mid_right Swim_nailgun_aim_mid_center Swim_nailgun_aim_mid_left 
			Swim_nailgun_aim_down_right Swim_nailgun_aim_down_center Swim_nailgun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_nailgun_aim_neutral nailgun/crouch_9aims_nailgun frame 4 4
		$animation Crouch_nailgun_aim_up_left nailgun/crouch_9aims_nailgun frame 0 0 subtract Crouch_nailgun_aim_neutral 0
		$animation Crouch_nailgun_aim_up_center nailgun/crouch_9aims_nailgun frame 1 1 subtract Crouch_nailgun_aim_neutral 0
		$animation Crouch_nailgun_aim_up_right nailgun/crouch_9aims_nailgun frame 2 2 subtract Crouch_nailgun_aim_neutral 0
		$animation Crouch_nailgun_aim_mid_left nailgun/crouch_9aims_nailgun frame 3 3 subtract Crouch_nailgun_aim_neutral 0
		$animation Crouch_nailgun_aim_mid_center nailgun/crouch_9aims_nailgun frame 4 4 subtract Crouch_nailgun_aim_neutral 0
		$animation Crouch_nailgun_aim_mid_right nailgun/crouch_9aims_nailgun frame 5 5 subtract Crouch_nailgun_aim_neutral 0
		$animation Crouch_nailgun_aim_down_left nailgun/crouch_9aims_nailgun frame 6 6 subtract Crouch_nailgun_aim_neutral 0
		$animation Crouch_nailgun_aim_down_center nailgun/crouch_9aims_nailgun frame 7 7 subtract Crouch_nailgun_aim_neutral 0
		$animation Crouch_nailgun_aim_down_right nailgun/crouch_9aims_nailgun frame 8 8 subtract Crouch_nailgun_aim_neutral 0


		$sequence Crouch_Aim_nailgun  { 
			Crouch_nailgun_aim_up_right Crouch_nailgun_aim_up_center Crouch_nailgun_aim_up_left 
			Crouch_nailgun_aim_mid_right Crouch_nailgun_aim_mid_center Crouch_nailgun_aim_mid_left 
			Crouch_nailgun_aim_down_right Crouch_nailgun_aim_down_center Crouch_nailgun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_nailgun_aim_neutral nailgun/run_9aims_nailgun frame 4 4
		$animation Run_nailgun_aim_up_left nailgun/run_9aims_nailgun frame 0 0 subtract Run_nailgun_aim_neutral 0
		$animation Run_nailgun_aim_up_center nailgun/run_9aims_nailgun frame 1 1 subtract Run_nailgun_aim_neutral 0
		$animation Run_nailgun_aim_up_right nailgun/run_9aims_nailgun frame 2 2 subtract Run_nailgun_aim_neutral 0
		$animation Run_nailgun_aim_mid_left nailgun/run_9aims_nailgun frame 3 3 subtract Run_nailgun_aim_neutral 0
		$animation Run_nailgun_aim_mid_center nailgun/run_9aims_nailgun frame 4 4 subtract Run_nailgun_aim_neutral 0
		$animation Run_nailgun_aim_mid_right nailgun/run_9aims_nailgun frame 5 5 subtract Run_nailgun_aim_neutral 0
		$animation Run_nailgun_aim_down_left nailgun/run_9aims_nailgun frame 6 6 subtract Run_nailgun_aim_neutral 0
		$animation Run_nailgun_aim_down_center nailgun/run_9aims_nailgun frame 7 7 subtract Run_nailgun_aim_neutral 0
		$animation Run_nailgun_aim_down_right nailgun/run_9aims_nailgun frame 8 8 subtract Run_nailgun_aim_neutral 0

		$sequence Run_Aim_nailgun  { 
			Run_nailgun_aim_up_right Run_nailgun_aim_up_center Run_nailgun_aim_up_left 
			Run_nailgun_aim_mid_right Run_nailgun_aim_mid_center Run_nailgun_aim_mid_left 
			Run_nailgun_aim_down_right Run_nailgun_aim_down_center Run_nailgun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_nailgun "nailgun/idle_nailgun" FPS 30 weightlist upperbody addlayer Run_Aim_nailgun
		$sequence Walk_Upper_nailgun "nailgun/walk_nailgun" FPS 30 weightlist upperbody addlayer Run_Aim_nailgun
		$sequence Run_Upper_nailgun "nailgun/run_nailgun" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_nailgun
		$sequence Crouch_Idle_Upper_nailgun "nailgun/crouch_idle_nailgun" FPS 30 weightlist upperbody addlayer Crouch_Aim_nailgun
		$sequence Crouch_Walk_Upper_nailgun "nailgun/crouch_walk_nailgun" FPS 30 weightlist upperbody addlayer Crouch_Aim_nailgun


		$animation Idle_Shoot_nailgun_layer "nailgun/shoot_nailgun" FPS 30 subtract Idle_Shoot_nailgun_layer 0 weightlist upperbody
		$sequence Idle_Shoot_nailgun "Idle_Shoot_nailgun_layer" delta
		$sequence Walk_Shoot_nailgun "Idle_Shoot_nailgun_layer" delta
		$sequence Run_Shoot_nailgun "Idle_Shoot_nailgun_layer" delta
		$sequence Crouch_Idle_Shoot_nailgun "Idle_Shoot_nailgun_layer" delta
		$sequence Crouch_Walk_Shoot_nailgun "Idle_Shoot_nailgun_layer" delta

		$sequence Swim_Idle_Upper_nailgun "nailgun/swim_idle_nailgun" FPS 30 weightlist upperbody addlayer Swim_Aim_nailgun		
		$animation Swim_Shoot_nailgun_layer "nailgun/swim_shoot_nailgun" FPS 30 subtract Swim_Shoot_nailgun_layer 0 weightlist upperbody
		$sequence Swim_Upper_nailgun "nailgun/swim_nailgun" FPS 30 weightlist upperbody addlayer Swim_Aim_nailgun


		$animation Reload_nailgun_layer "nailgun/reload_nailgun" FPS 30 subtract Reload_nailgun_layer 0 weightlist upperbody
		$sequence Reload_nailgun "Reload_nailgun_layer" delta


	//-----------------
	//	SUPER NAILGUN
	//-----------------

		$sequence Jump_Upper_supernailgun "supernailgun/jump_supernailgun" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_supernailgun_aim_neutral supernailgun/swim_9aims_supernailgun frame 4 4
		$animation Swim_supernailgun_aim_up_left supernailgun/swim_9aims_supernailgun frame 0 0 subtract Swim_supernailgun_aim_neutral 0
		$animation Swim_supernailgun_aim_up_center supernailgun/swim_9aims_supernailgun frame 1 1 subtract Swim_supernailgun_aim_neutral 0
		$animation Swim_supernailgun_aim_up_right supernailgun/swim_9aims_supernailgun frame 2 2 subtract Swim_supernailgun_aim_neutral 0
		$animation Swim_supernailgun_aim_mid_left supernailgun/swim_9aims_supernailgun frame 3 3 subtract Swim_supernailgun_aim_neutral 0
		$animation Swim_supernailgun_aim_mid_center supernailgun/swim_9aims_supernailgun frame 4 4 subtract Swim_supernailgun_aim_neutral 0
		$animation Swim_supernailgun_aim_mid_right supernailgun/swim_9aims_supernailgun frame 5 5 subtract Swim_supernailgun_aim_neutral 0
		$animation Swim_supernailgun_aim_down_left supernailgun/swim_9aims_supernailgun frame 6 6 subtract Swim_supernailgun_aim_neutral 0
		$animation Swim_supernailgun_aim_down_center supernailgun/swim_9aims_supernailgun frame 7 7 subtract Swim_supernailgun_aim_neutral 0
		$animation Swim_supernailgun_aim_down_right supernailgun/swim_9aims_supernailgun frame 8 8 subtract Swim_supernailgun_aim_neutral 0


		$sequence Swim_Aim_supernailgun  { 
			Swim_supernailgun_aim_up_right Swim_supernailgun_aim_up_center Swim_supernailgun_aim_up_left 
			Swim_supernailgun_aim_mid_right Swim_supernailgun_aim_mid_center Swim_supernailgun_aim_mid_left 
			Swim_supernailgun_aim_down_right Swim_supernailgun_aim_down_center Swim_supernailgun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_supernailgun_aim_neutral supernailgun/crouch_9aims_supernailgun frame 4 4
		$animation Crouch_supernailgun_aim_up_left supernailgun/crouch_9aims_supernailgun frame 0 0 subtract Crouch_supernailgun_aim_neutral 0
		$animation Crouch_supernailgun_aim_up_center supernailgun/crouch_9aims_supernailgun frame 1 1 subtract Crouch_supernailgun_aim_neutral 0
		$animation Crouch_supernailgun_aim_up_right supernailgun/crouch_9aims_supernailgun frame 2 2 subtract Crouch_supernailgun_aim_neutral 0
		$animation Crouch_supernailgun_aim_mid_left supernailgun/crouch_9aims_supernailgun frame 3 3 subtract Crouch_supernailgun_aim_neutral 0
		$animation Crouch_supernailgun_aim_mid_center supernailgun/crouch_9aims_supernailgun frame 4 4 subtract Crouch_supernailgun_aim_neutral 0
		$animation Crouch_supernailgun_aim_mid_right supernailgun/crouch_9aims_supernailgun frame 5 5 subtract Crouch_supernailgun_aim_neutral 0
		$animation Crouch_supernailgun_aim_down_left supernailgun/crouch_9aims_supernailgun frame 6 6 subtract Crouch_supernailgun_aim_neutral 0
		$animation Crouch_supernailgun_aim_down_center supernailgun/crouch_9aims_supernailgun frame 7 7 subtract Crouch_supernailgun_aim_neutral 0
		$animation Crouch_supernailgun_aim_down_right supernailgun/crouch_9aims_supernailgun frame 8 8 subtract Crouch_supernailgun_aim_neutral 0


		$sequence Crouch_Aim_supernailgun  { 
			Crouch_supernailgun_aim_up_right Crouch_supernailgun_aim_up_center Crouch_supernailgun_aim_up_left 
			Crouch_supernailgun_aim_mid_right Crouch_supernailgun_aim_mid_center Crouch_supernailgun_aim_mid_left 
			Crouch_supernailgun_aim_down_right Crouch_supernailgun_aim_down_center Crouch_supernailgun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_supernailgun_aim_neutral supernailgun/run_9aims_supernailgun frame 4 4
		$animation Run_supernailgun_aim_up_left supernailgun/run_9aims_supernailgun frame 0 0 subtract Run_supernailgun_aim_neutral 0
		$animation Run_supernailgun_aim_up_center supernailgun/run_9aims_supernailgun frame 1 1 subtract Run_supernailgun_aim_neutral 0
		$animation Run_supernailgun_aim_up_right supernailgun/run_9aims_supernailgun frame 2 2 subtract Run_supernailgun_aim_neutral 0
		$animation Run_supernailgun_aim_mid_left supernailgun/run_9aims_supernailgun frame 3 3 subtract Run_supernailgun_aim_neutral 0
		$animation Run_supernailgun_aim_mid_center supernailgun/run_9aims_supernailgun frame 4 4 subtract Run_supernailgun_aim_neutral 0
		$animation Run_supernailgun_aim_mid_right supernailgun/run_9aims_supernailgun frame 5 5 subtract Run_supernailgun_aim_neutral 0
		$animation Run_supernailgun_aim_down_left supernailgun/run_9aims_supernailgun frame 6 6 subtract Run_supernailgun_aim_neutral 0
		$animation Run_supernailgun_aim_down_center supernailgun/run_9aims_supernailgun frame 7 7 subtract Run_supernailgun_aim_neutral 0
		$animation Run_supernailgun_aim_down_right supernailgun/run_9aims_supernailgun frame 8 8 subtract Run_supernailgun_aim_neutral 0

		$sequence Run_Aim_supernailgun  { 
			Run_supernailgun_aim_up_right Run_supernailgun_aim_up_center Run_supernailgun_aim_up_left 
			Run_supernailgun_aim_mid_right Run_supernailgun_aim_mid_center Run_supernailgun_aim_mid_left 
			Run_supernailgun_aim_down_right Run_supernailgun_aim_down_center Run_supernailgun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_supernailgun "supernailgun/idle_supernailgun" FPS 30 weightlist upperbody addlayer Run_Aim_supernailgun
		$sequence Walk_Upper_supernailgun "supernailgun/walk_supernailgun" FPS 30 weightlist upperbody addlayer Run_Aim_supernailgun
		$sequence Run_Upper_supernailgun "supernailgun/run_supernailgun" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_supernailgun
		$sequence Crouch_Idle_Upper_supernailgun "supernailgun/crouch_idle_supernailgun" FPS 30 weightlist upperbody addlayer Crouch_Aim_supernailgun
		$sequence Crouch_Walk_Upper_supernailgun "supernailgun/crouch_walk_supernailgun" FPS 30 weightlist upperbody addlayer Crouch_Aim_supernailgun


		$animation Idle_Shoot_supernailgun_layer "supernailgun/shoot_supernailgun" FPS 30 subtract Idle_Shoot_supernailgun_layer 0 weightlist upperbody
		$sequence Idle_Shoot_supernailgun "Idle_Shoot_supernailgun_layer" delta
		$sequence Walk_Shoot_supernailgun "Idle_Shoot_supernailgun_layer" delta
		$sequence Run_Shoot_supernailgun "Idle_Shoot_supernailgun_layer" delta
		$sequence Crouch_Idle_Shoot_supernailgun "Idle_Shoot_supernailgun_layer" delta
		$sequence Crouch_Walk_Shoot_supernailgun "Idle_Shoot_supernailgun_layer" delta

		$sequence Swim_Idle_Upper_supernailgun "supernailgun/swim_idle_supernailgun" FPS 30 weightlist upperbody addlayer Swim_Aim_supernailgun		
		$animation Swim_Shoot_supernailgun_layer "supernailgun/swim_shoot_supernailgun" FPS 30 subtract Swim_Shoot_supernailgun_layer 0 weightlist upperbody
		$sequence Swim_Upper_supernailgun "supernailgun/swim_supernailgun" FPS 30 weightlist upperbody addlayer Swim_Aim_supernailgun


		$animation Reload_supernailgun_layer "supernailgun/reload_supernailgun" FPS 30 subtract Reload_supernailgun_layer 0 weightlist upperbody
		$sequence Reload_supernailgun "Reload_supernailgun_layer" delta



	//-----------------
	//	RAILGUN
	//-----------------
		

		$sequence Jump_Upper_railgun "railgun/jump_railgun" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_railgun_aim_neutral railgun/swim_9aims_railgun frame 4 4
		$animation Swim_railgun_aim_up_left railgun/swim_9aims_railgun frame 0 0 subtract Swim_railgun_aim_neutral 0
		$animation Swim_railgun_aim_up_center railgun/swim_9aims_railgun frame 1 1 subtract Swim_railgun_aim_neutral 0
		$animation Swim_railgun_aim_up_right railgun/swim_9aims_railgun frame 2 2 subtract Swim_railgun_aim_neutral 0
		$animation Swim_railgun_aim_mid_left railgun/swim_9aims_railgun frame 3 3 subtract Swim_railgun_aim_neutral 0
		$animation Swim_railgun_aim_mid_center railgun/swim_9aims_railgun frame 4 4 subtract Swim_railgun_aim_neutral 0
		$animation Swim_railgun_aim_mid_right railgun/swim_9aims_railgun frame 5 5 subtract Swim_railgun_aim_neutral 0
		$animation Swim_railgun_aim_down_left railgun/swim_9aims_railgun frame 6 6 subtract Swim_railgun_aim_neutral 0
		$animation Swim_railgun_aim_down_center railgun/swim_9aims_railgun frame 7 7 subtract Swim_railgun_aim_neutral 0
		$animation Swim_railgun_aim_down_right railgun/swim_9aims_railgun frame 8 8 subtract Swim_railgun_aim_neutral 0


		$sequence Swim_Aim_railgun  { 
			Swim_railgun_aim_up_right Swim_railgun_aim_up_center Swim_railgun_aim_up_left 
			Swim_railgun_aim_mid_right Swim_railgun_aim_mid_center Swim_railgun_aim_mid_left 
			Swim_railgun_aim_down_right Swim_railgun_aim_down_center Swim_railgun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_railgun_aim_neutral railgun/crouch_9aims_railgun frame 4 4
		$animation Crouch_railgun_aim_up_left railgun/crouch_9aims_railgun frame 0 0 subtract Crouch_railgun_aim_neutral 0
		$animation Crouch_railgun_aim_up_center railgun/crouch_9aims_railgun frame 1 1 subtract Crouch_railgun_aim_neutral 0
		$animation Crouch_railgun_aim_up_right railgun/crouch_9aims_railgun frame 2 2 subtract Crouch_railgun_aim_neutral 0
		$animation Crouch_railgun_aim_mid_left railgun/crouch_9aims_railgun frame 3 3 subtract Crouch_railgun_aim_neutral 0
		$animation Crouch_railgun_aim_mid_center railgun/crouch_9aims_railgun frame 4 4 subtract Crouch_railgun_aim_neutral 0
		$animation Crouch_railgun_aim_mid_right railgun/crouch_9aims_railgun frame 5 5 subtract Crouch_railgun_aim_neutral 0
		$animation Crouch_railgun_aim_down_left railgun/crouch_9aims_railgun frame 6 6 subtract Crouch_railgun_aim_neutral 0
		$animation Crouch_railgun_aim_down_center railgun/crouch_9aims_railgun frame 7 7 subtract Crouch_railgun_aim_neutral 0
		$animation Crouch_railgun_aim_down_right railgun/crouch_9aims_railgun frame 8 8 subtract Crouch_railgun_aim_neutral 0


		$sequence Crouch_Aim_railgun  { 
			Crouch_railgun_aim_up_right Crouch_railgun_aim_up_center Crouch_railgun_aim_up_left 
			Crouch_railgun_aim_mid_right Crouch_railgun_aim_mid_center Crouch_railgun_aim_mid_left 
			Crouch_railgun_aim_down_right Crouch_railgun_aim_down_center Crouch_railgun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_railgun_aim_neutral railgun/run_9aims_railgun frame 4 4
		$animation Run_railgun_aim_up_left railgun/run_9aims_railgun frame 0 0 subtract Run_railgun_aim_neutral 0
		$animation Run_railgun_aim_up_center railgun/run_9aims_railgun frame 1 1 subtract Run_railgun_aim_neutral 0
		$animation Run_railgun_aim_up_right railgun/run_9aims_railgun frame 2 2 subtract Run_railgun_aim_neutral 0
		$animation Run_railgun_aim_mid_left railgun/run_9aims_railgun frame 3 3 subtract Run_railgun_aim_neutral 0
		$animation Run_railgun_aim_mid_center railgun/run_9aims_railgun frame 4 4 subtract Run_railgun_aim_neutral 0
		$animation Run_railgun_aim_mid_right railgun/run_9aims_railgun frame 5 5 subtract Run_railgun_aim_neutral 0
		$animation Run_railgun_aim_down_left railgun/run_9aims_railgun frame 6 6 subtract Run_railgun_aim_neutral 0
		$animation Run_railgun_aim_down_center railgun/run_9aims_railgun frame 7 7 subtract Run_railgun_aim_neutral 0
		$animation Run_railgun_aim_down_right railgun/run_9aims_railgun frame 8 8 subtract Run_railgun_aim_neutral 0

		$sequence Run_Aim_railgun  { 
			Run_railgun_aim_up_right Run_railgun_aim_up_center Run_railgun_aim_up_left 
			Run_railgun_aim_mid_right Run_railgun_aim_mid_center Run_railgun_aim_mid_left 
			Run_railgun_aim_down_right Run_railgun_aim_down_center Run_railgun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_railgun "railgun/idle_railgun" FPS 30 weightlist upperbody addlayer Run_Aim_railgun
		$sequence Walk_Upper_railgun "railgun/walk_railgun" FPS 30 weightlist upperbody addlayer Run_Aim_railgun
		$sequence Run_Upper_railgun "railgun/run_railgun" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_railgun
		$sequence Crouch_Idle_Upper_railgun "railgun/crouch_idle_railgun" FPS 30 weightlist upperbody addlayer Crouch_Aim_railgun
		$sequence Crouch_Walk_Upper_railgun "railgun/crouch_walk_railgun" FPS 30 weightlist upperbody addlayer Crouch_Aim_railgun


		$animation Idle_Shoot_railgun_layer "railgun/shoot_railgun" FPS 30 subtract Idle_Shoot_railgun_layer 0 weightlist upperbody
		$sequence Idle_Shoot_railgun "Idle_Shoot_railgun_layer" delta
		$sequence Walk_Shoot_railgun "Idle_Shoot_railgun_layer" delta
		$sequence Run_Shoot_railgun "Idle_Shoot_railgun_layer" delta
		$sequence Crouch_Idle_Shoot_railgun "Idle_Shoot_railgun_layer" delta
		$sequence Crouch_Walk_Shoot_railgun "Idle_Shoot_railgun_layer" delta

		$sequence Swim_Idle_Upper_railgun "railgun/swim_idle_railgun" FPS 30 weightlist upperbody addlayer Swim_Aim_railgun		
		$animation Swim_Shoot_railgun_layer "railgun/swim_shoot_railgun" FPS 30 subtract Swim_Shoot_railgun_layer 0 weightlist upperbody
		$sequence Swim_Upper_railgun "railgun/swim_railgun" FPS 30 weightlist upperbody addlayer Swim_Aim_railgun


		$animation Reload_railgun_layer "railgun/reload_railgun" FPS 30 subtract Reload_railgun_layer 0 weightlist upperbody
		$sequence Reload_railgun "Reload_railgun_layer" delta

		
	//-----------------
	//	CROWBAR
	//-----------------

			$sequence Jump_Upper_crowbar "crowbar/jump_crowbar" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_crowbar_aim_neutral crowbar/swim_9aims_crowbar frame 4 4
		$animation Swim_crowbar_aim_up_left crowbar/swim_9aims_crowbar frame 0 0 subtract Swim_crowbar_aim_neutral 0
		$animation Swim_crowbar_aim_up_center crowbar/swim_9aims_crowbar frame 1 1 subtract Swim_crowbar_aim_neutral 0
		$animation Swim_crowbar_aim_up_right crowbar/swim_9aims_crowbar frame 2 2 subtract Swim_crowbar_aim_neutral 0
		$animation Swim_crowbar_aim_mid_left crowbar/swim_9aims_crowbar frame 3 3 subtract Swim_crowbar_aim_neutral 0
		$animation Swim_crowbar_aim_mid_center crowbar/swim_9aims_crowbar frame 4 4 subtract Swim_crowbar_aim_neutral 0
		$animation Swim_crowbar_aim_mid_right crowbar/swim_9aims_crowbar frame 5 5 subtract Swim_crowbar_aim_neutral 0
		$animation Swim_crowbar_aim_down_left crowbar/swim_9aims_crowbar frame 6 6 subtract Swim_crowbar_aim_neutral 0
		$animation Swim_crowbar_aim_down_center crowbar/swim_9aims_crowbar frame 7 7 subtract Swim_crowbar_aim_neutral 0
		$animation Swim_crowbar_aim_down_right crowbar/swim_9aims_crowbar frame 8 8 subtract Swim_crowbar_aim_neutral 0


		$sequence Swim_Aim_crowbar  { 
			Swim_crowbar_aim_up_right Swim_crowbar_aim_up_center Swim_crowbar_aim_up_left 
			Swim_crowbar_aim_mid_right Swim_crowbar_aim_mid_center Swim_crowbar_aim_mid_left 
			Swim_crowbar_aim_down_right Swim_crowbar_aim_down_center Swim_crowbar_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_crowbar_aim_neutral crowbar/crouch_9aims_crowbar frame 4 4
		$animation Crouch_crowbar_aim_up_left crowbar/crouch_9aims_crowbar frame 0 0 subtract Crouch_crowbar_aim_neutral 0
		$animation Crouch_crowbar_aim_up_center crowbar/crouch_9aims_crowbar frame 1 1 subtract Crouch_crowbar_aim_neutral 0
		$animation Crouch_crowbar_aim_up_right crowbar/crouch_9aims_crowbar frame 2 2 subtract Crouch_crowbar_aim_neutral 0
		$animation Crouch_crowbar_aim_mid_left crowbar/crouch_9aims_crowbar frame 3 3 subtract Crouch_crowbar_aim_neutral 0
		$animation Crouch_crowbar_aim_mid_center crowbar/crouch_9aims_crowbar frame 4 4 subtract Crouch_crowbar_aim_neutral 0
		$animation Crouch_crowbar_aim_mid_right crowbar/crouch_9aims_crowbar frame 5 5 subtract Crouch_crowbar_aim_neutral 0
		$animation Crouch_crowbar_aim_down_left crowbar/crouch_9aims_crowbar frame 6 6 subtract Crouch_crowbar_aim_neutral 0
		$animation Crouch_crowbar_aim_down_center crowbar/crouch_9aims_crowbar frame 7 7 subtract Crouch_crowbar_aim_neutral 0
		$animation Crouch_crowbar_aim_down_right crowbar/crouch_9aims_crowbar frame 8 8 subtract Crouch_crowbar_aim_neutral 0


		$sequence Crouch_Aim_crowbar  { 
			Crouch_crowbar_aim_up_right Crouch_crowbar_aim_up_center Crouch_crowbar_aim_up_left 
			Crouch_crowbar_aim_mid_right Crouch_crowbar_aim_mid_center Crouch_crowbar_aim_mid_left 
			Crouch_crowbar_aim_down_right Crouch_crowbar_aim_down_center Crouch_crowbar_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_crowbar_aim_neutral crowbar/run_9aims_crowbar frame 4 4
		$animation Run_crowbar_aim_up_left crowbar/run_9aims_crowbar frame 0 0 subtract Run_crowbar_aim_neutral 0
		$animation Run_crowbar_aim_up_center crowbar/run_9aims_crowbar frame 1 1 subtract Run_crowbar_aim_neutral 0
		$animation Run_crowbar_aim_up_right crowbar/run_9aims_crowbar frame 2 2 subtract Run_crowbar_aim_neutral 0
		$animation Run_crowbar_aim_mid_left crowbar/run_9aims_crowbar frame 3 3 subtract Run_crowbar_aim_neutral 0
		$animation Run_crowbar_aim_mid_center crowbar/run_9aims_crowbar frame 4 4 subtract Run_crowbar_aim_neutral 0
		$animation Run_crowbar_aim_mid_right crowbar/run_9aims_crowbar frame 5 5 subtract Run_crowbar_aim_neutral 0
		$animation Run_crowbar_aim_down_left crowbar/run_9aims_crowbar frame 6 6 subtract Run_crowbar_aim_neutral 0
		$animation Run_crowbar_aim_down_center crowbar/run_9aims_crowbar frame 7 7 subtract Run_crowbar_aim_neutral 0
		$animation Run_crowbar_aim_down_right crowbar/run_9aims_crowbar frame 8 8 subtract Run_crowbar_aim_neutral 0

		$sequence Run_Aim_crowbar  { 
			Run_crowbar_aim_up_right Run_crowbar_aim_up_center Run_crowbar_aim_up_left 
			Run_crowbar_aim_mid_right Run_crowbar_aim_mid_center Run_crowbar_aim_mid_left 
			Run_crowbar_aim_down_right Run_crowbar_aim_down_center Run_crowbar_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_crowbar "crowbar/idle_crowbar" FPS 30 weightlist upperbody addlayer Run_Aim_crowbar
		$sequence Walk_Upper_crowbar "crowbar/walk_crowbar" FPS 30 weightlist upperbody addlayer Run_Aim_crowbar
		$sequence Run_Upper_crowbar "crowbar/run_crowbar" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_crowbar
		$sequence Crouch_Idle_Upper_crowbar "crowbar/crouch_idle_crowbar" FPS 30 weightlist upperbody addlayer Crouch_Aim_crowbar
		$sequence Crouch_Walk_Upper_crowbar "crowbar/crouch_walk_crowbar" FPS 30 weightlist upperbody addlayer Crouch_Aim_crowbar


		$animation Idle_Shoot_crowbar_layer "crowbar/shoot_crowbar" FPS 30 subtract Idle_Shoot_crowbar_layer 0 weightlist upperbody
		$sequence Idle_Shoot_crowbar "Idle_Shoot_crowbar_layer" delta
		$sequence Walk_Shoot_crowbar "Idle_Shoot_crowbar_layer" delta
		$sequence Run_Shoot_crowbar "Idle_Shoot_crowbar_layer" delta
		$sequence Crouch_Idle_Shoot_crowbar "Idle_Shoot_crowbar_layer" delta
		$sequence Crouch_Walk_Shoot_crowbar "Idle_Shoot_crowbar_layer" delta

		$sequence Swim_Idle_Upper_crowbar "crowbar/swim_idle_crowbar" FPS 30 weightlist upperbody addlayer Swim_Aim_crowbar		
		$animation Swim_Shoot_crowbar_layer "crowbar/swim_shoot_crowbar" FPS 30 subtract Swim_Shoot_crowbar_layer 0 weightlist upperbody
		$sequence Swim_Upper_crowbar "crowbar/swim_crowbar" FPS 30 weightlist upperbody addlayer Swim_Aim_crowbar


		$animation Reload_crowbar_layer "crowbar/reload_crowbar" FPS 30 subtract Reload_crowbar_layer 0 weightlist upperbody
		$sequence Reload_crowbar "Reload_crowbar_layer" delta


	//-----------------
	//	DEMO SHIELD
	//-----------------

			$sequence Jump_Upper_shield "shield/jump_shield" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_shield_aim_neutral shield/swim_9aims_shield frame 4 4
		$animation Swim_shield_aim_up_left shield/swim_9aims_shield frame 0 0 subtract Swim_shield_aim_neutral 0
		$animation Swim_shield_aim_up_center shield/swim_9aims_shield frame 1 1 subtract Swim_shield_aim_neutral 0
		$animation Swim_shield_aim_up_right shield/swim_9aims_shield frame 2 2 subtract Swim_shield_aim_neutral 0
		$animation Swim_shield_aim_mid_left shield/swim_9aims_shield frame 3 3 subtract Swim_shield_aim_neutral 0
		$animation Swim_shield_aim_mid_center shield/swim_9aims_shield frame 4 4 subtract Swim_shield_aim_neutral 0
		$animation Swim_shield_aim_mid_right shield/swim_9aims_shield frame 5 5 subtract Swim_shield_aim_neutral 0
		$animation Swim_shield_aim_down_left shield/swim_9aims_shield frame 6 6 subtract Swim_shield_aim_neutral 0
		$animation Swim_shield_aim_down_center shield/swim_9aims_shield frame 7 7 subtract Swim_shield_aim_neutral 0
		$animation Swim_shield_aim_down_right shield/swim_9aims_shield frame 8 8 subtract Swim_shield_aim_neutral 0


		$sequence Swim_Aim_shield  { 
			Swim_shield_aim_up_right Swim_shield_aim_up_center Swim_shield_aim_up_left 
			Swim_shield_aim_mid_right Swim_shield_aim_mid_center Swim_shield_aim_mid_left 
			Swim_shield_aim_down_right Swim_shield_aim_down_center Swim_shield_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_shield_aim_neutral shield/crouch_9aims_shield frame 4 4
		$animation Crouch_shield_aim_up_left shield/crouch_9aims_shield frame 0 0 subtract Crouch_shield_aim_neutral 0
		$animation Crouch_shield_aim_up_center shield/crouch_9aims_shield frame 1 1 subtract Crouch_shield_aim_neutral 0
		$animation Crouch_shield_aim_up_right shield/crouch_9aims_shield frame 2 2 subtract Crouch_shield_aim_neutral 0
		$animation Crouch_shield_aim_mid_left shield/crouch_9aims_shield frame 3 3 subtract Crouch_shield_aim_neutral 0
		$animation Crouch_shield_aim_mid_center shield/crouch_9aims_shield frame 4 4 subtract Crouch_shield_aim_neutral 0
		$animation Crouch_shield_aim_mid_right shield/crouch_9aims_shield frame 5 5 subtract Crouch_shield_aim_neutral 0
		$animation Crouch_shield_aim_down_left shield/crouch_9aims_shield frame 6 6 subtract Crouch_shield_aim_neutral 0
		$animation Crouch_shield_aim_down_center shield/crouch_9aims_shield frame 7 7 subtract Crouch_shield_aim_neutral 0
		$animation Crouch_shield_aim_down_right shield/crouch_9aims_shield frame 8 8 subtract Crouch_shield_aim_neutral 0


		$sequence Crouch_Aim_shield  { 
			Crouch_shield_aim_up_right Crouch_shield_aim_up_center Crouch_shield_aim_up_left 
			Crouch_shield_aim_mid_right Crouch_shield_aim_mid_center Crouch_shield_aim_mid_left 
			Crouch_shield_aim_down_right Crouch_shield_aim_down_center Crouch_shield_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}

		$animation Run_shield_aim_neutral shield/run_9aims_shield frame 4 4
		$animation Run_shield_aim_up_left shield/run_9aims_shield frame 0 0 subtract Run_shield_aim_neutral 0
		$animation Run_shield_aim_up_center shield/run_9aims_shield frame 1 1 subtract Run_shield_aim_neutral 0
		$animation Run_shield_aim_up_right shield/run_9aims_shield frame 2 2 subtract Run_shield_aim_neutral 0
		$animation Run_shield_aim_mid_left shield/run_9aims_shield frame 3 3 subtract Run_shield_aim_neutral 0
		$animation Run_shield_aim_mid_center shield/run_9aims_shield frame 4 4 subtract Run_shield_aim_neutral 0
		$animation Run_shield_aim_mid_right shield/run_9aims_shield frame 5 5 subtract Run_shield_aim_neutral 0
		$animation Run_shield_aim_down_left shield/run_9aims_shield frame 6 6 subtract Run_shield_aim_neutral 0
		$animation Run_shield_aim_down_center shield/run_9aims_shield frame 7 7 subtract Run_shield_aim_neutral 0
		$animation Run_shield_aim_down_right shield/run_9aims_shield frame 8 8 subtract Run_shield_aim_neutral 0

		$sequence Run_Aim_shield  { 
			Run_shield_aim_up_right Run_shield_aim_up_center Run_shield_aim_up_left 
			Run_shield_aim_mid_right Run_shield_aim_mid_center Run_shield_aim_mid_left 
			Run_shield_aim_down_right Run_shield_aim_down_center Run_shield_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}

		$sequence Idle_Upper_shield "shield/idle_shield" FPS 30 weightlist upperbody addlayer Run_Aim_shield
		$sequence Walk_Upper_shield "shield/idle_shield" FPS 30 weightlist upperbody addlayer Run_Aim_shield
		$sequence Run_Upper_shield "shield/idle_shield" FPS 30 weightlist upperbody addlayer Run_Aim_shield
		$sequence Crouch_Idle_Upper_shield "shield/crouch_idle_shield" FPS 30 weightlist upperbody addlayer Crouch_Aim_shield
		$sequence Crouch_Walk_Upper_shield "shield/crouch_walk_shield" FPS 30 weightlist upperbody addlayer Crouch_Aim_shield
//shieldDeploy


		$animation Swim_shielddeploy_aim_neutral shield/swim_9aims_shield frame 4 4
		$animation Swim_shielddeploy_aim_up_left shield/swim_9aims_shield frame 0 0 subtract Swim_shielddeploy_aim_neutral 0
		$animation Swim_shielddeploy_aim_up_center shield/swim_9aims_shield frame 1 1 subtract Swim_shielddeploy_aim_neutral 0
		$animation Swim_shielddeploy_aim_up_right shield/swim_9aims_shield frame 2 2 subtract Swim_shielddeploy_aim_neutral 0
		$animation Swim_shielddeploy_aim_mid_left shield/swim_9aims_shield frame 3 3 subtract Swim_shielddeploy_aim_neutral 0
		$animation Swim_shielddeploy_aim_mid_center shield/swim_9aims_shield frame 4 4 subtract Swim_shielddeploy_aim_neutral 0
		$animation Swim_shielddeploy_aim_mid_right shield/swim_9aims_shield frame 5 5 subtract Swim_shielddeploy_aim_neutral 0
		$animation Swim_shielddeploy_aim_down_left shield/swim_9aims_shield frame 6 6 subtract Swim_shielddeploy_aim_neutral 0
		$animation Swim_shielddeploy_aim_down_center shield/swim_9aims_shield frame 7 7 subtract Swim_shielddeploy_aim_neutral 0
		$animation Swim_shielddeploy_aim_down_right shield/swim_9aims_shield frame 8 8 subtract Swim_shielddeploy_aim_neutral 0


		$sequence Swim_Aim_shielddeploy  { 
			Swim_shielddeploy_aim_up_right Swim_shielddeploy_aim_up_center Swim_shielddeploy_aim_up_left 
			Swim_shielddeploy_aim_mid_right Swim_shielddeploy_aim_mid_center Swim_shielddeploy_aim_mid_left 
			Swim_shielddeploy_aim_down_right Swim_shielddeploy_aim_down_center Swim_shielddeploy_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_shielddeploy_aim_neutral shield/crouch_9aims_shield frame 4 4
		$animation Crouch_shielddeploy_aim_up_left shield/crouch_9aims_shield frame 0 0 subtract Crouch_shielddeploy_aim_neutral 0
		$animation Crouch_shielddeploy_aim_up_center shield/crouch_9aims_shield frame 1 1 subtract Crouch_shielddeploy_aim_neutral 0
		$animation Crouch_shielddeploy_aim_up_right shield/crouch_9aims_shield frame 2 2 subtract Crouch_shielddeploy_aim_neutral 0
		$animation Crouch_shielddeploy_aim_mid_left shield/crouch_9aims_shield frame 3 3 subtract Crouch_shielddeploy_aim_neutral 0
		$animation Crouch_shielddeploy_aim_mid_center shield/crouch_9aims_shield frame 4 4 subtract Crouch_shielddeploy_aim_neutral 0
		$animation Crouch_shielddeploy_aim_mid_right shield/crouch_9aims_shield frame 5 5 subtract Crouch_shielddeploy_aim_neutral 0
		$animation Crouch_shielddeploy_aim_down_left shield/crouch_9aims_shield frame 6 6 subtract Crouch_shielddeploy_aim_neutral 0
		$animation Crouch_shielddeploy_aim_down_center shield/crouch_9aims_shield frame 7 7 subtract Crouch_shielddeploy_aim_neutral 0
		$animation Crouch_shielddeploy_aim_down_right shield/crouch_9aims_shield frame 8 8 subtract Crouch_shielddeploy_aim_neutral 0


		$sequence Crouch_Aim_shielddeploy  { 
			Crouch_shielddeploy_aim_up_right Crouch_shielddeploy_aim_up_center Crouch_shielddeploy_aim_up_left 
			Crouch_shielddeploy_aim_mid_right Crouch_shielddeploy_aim_mid_center Crouch_shielddeploy_aim_mid_left 
			Crouch_shielddeploy_aim_down_right Crouch_shielddeploy_aim_down_center Crouch_shielddeploy_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}

		$animation Run_shielddeploy_aim_neutral shield/run_9aims_shield frame 4 4
		$animation Run_shielddeploy_aim_up_left shield/run_9aims_shield frame 0 0 subtract Run_shielddeploy_aim_neutral 0
		$animation Run_shielddeploy_aim_up_center shield/run_9aims_shield frame 1 1 subtract Run_shielddeploy_aim_neutral 0
		$animation Run_shielddeploy_aim_up_right shield/run_9aims_shield frame 2 2 subtract Run_shielddeploy_aim_neutral 0
		$animation Run_shielddeploy_aim_mid_left shield/run_9aims_shield frame 3 3 subtract Run_shielddeploy_aim_neutral 0
		$animation Run_shielddeploy_aim_mid_center shield/run_9aims_shield frame 4 4 subtract Run_shielddeploy_aim_neutral 0
		$animation Run_shielddeploy_aim_mid_right shield/run_9aims_shield frame 5 5 subtract Run_shielddeploy_aim_neutral 0
		$animation Run_shielddeploy_aim_down_left shield/run_9aims_shield frame 6 6 subtract Run_shielddeploy_aim_neutral 0
		$animation Run_shielddeploy_aim_down_center shield/run_9aims_shield frame 7 7 subtract Run_shielddeploy_aim_neutral 0
		$animation Run_shielddeploy_aim_down_right shield/run_9aims_shield frame 8 8 subtract Run_shielddeploy_aim_neutral 0

		$sequence Run_Aim_shielddeploy  { 
			Run_shielddeploy_aim_up_right Run_shielddeploy_aim_up_center Run_shielddeploy_aim_up_left 
			Run_shielddeploy_aim_mid_right Run_shielddeploy_aim_mid_center Run_shielddeploy_aim_mid_left 
			Run_shielddeploy_aim_down_right Run_shielddeploy_aim_down_center Run_shielddeploy_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Idle_shielddeploy_layer "shield/shoot_shield" FPS 30 frames 12 12 weightlist upperbody
		$sequence Idle_Upper_shielddeploy Idle_shielddeploy_layer
		$sequence Walk_Upper_shielddeploy Idle_shielddeploy_layer
		$sequence Run_Upper_shielddeploy Idle_shielddeploy_layer
		$sequence Crouch_Idle_Upper_shielddeploy Idle_shielddeploy_layer
		$sequence Crouch_Walk_Upper_shielddeploy Idle_shielddeploy_layer

		$animation Idle_Shoot_shield_trans_a "shield/shoot_shield" FPS 60 weightlist upperbody
		$sequence Idle_Shoot_shield_trans "Idle_Shoot_shield_trans_a" rtransition Idle_Upper_shield Idle_Upper_shielddeploy 
		$sequence Walk_Shoot_shield_trans "Idle_Shoot_shield_trans_a"  rtransition Walk_Upper_shield Walk_Upper_shielddeploy 
		$sequence Run_Shoot_shield_trans "Idle_Shoot_shield_trans_a"  rtransition Run_Upper_shield Run_Upper_shielddeploy 
		$sequence Crouch_Idle_Shoot_shield_trans "Idle_Shoot_shield_trans_a"  rtransition Crouch_Idle_Upper_shield Crouch_Idle_Upper_shielddeploy 
		$sequence Crouch_Walk_Shoot_shield_trans "Idle_Shoot_shield_trans_a"  rtransition Crouch_Walk_Upper_shield Crouch_Walk_Upper_shielddeploy 

		$sequence Swim_Idle_Upper_shield "shield/swim_idle_shield" FPS 30 weightlist upperbody addlayer Swim_Aim_shield		
		$animation Swim_Shoot_shield_layer "shield/swim_shoot_shield" FPS 30 subtract Swim_Shoot_shield_layer 0 weightlist upperbody
		$sequence Swim_Upper_shield "shield/swim_shield" FPS 30 weightlist upperbody addlayer Swim_Aim_shield


//		$animation Reload_shield_layer "shield/reload_shield" FPS 30 subtract Reload_shield_layer 0 weightlist upperbody
//		$sequence Reload_shield "Reload_shield_layer" delta

	//-----------------
	//	FLAMETHROWER
	//-----------------

			$sequence Jump_Upper_flamethrower "flamethrower/jump_flamethrower" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_flamethrower_aim_neutral flamethrower/swim_9aims_flamethrower frame 4 4
		$animation Swim_flamethrower_aim_up_left flamethrower/swim_9aims_flamethrower frame 0 0 subtract Swim_flamethrower_aim_neutral 0
		$animation Swim_flamethrower_aim_up_center flamethrower/swim_9aims_flamethrower frame 1 1 subtract Swim_flamethrower_aim_neutral 0
		$animation Swim_flamethrower_aim_up_right flamethrower/swim_9aims_flamethrower frame 2 2 subtract Swim_flamethrower_aim_neutral 0
		$animation Swim_flamethrower_aim_mid_left flamethrower/swim_9aims_flamethrower frame 3 3 subtract Swim_flamethrower_aim_neutral 0
		$animation Swim_flamethrower_aim_mid_center flamethrower/swim_9aims_flamethrower frame 4 4 subtract Swim_flamethrower_aim_neutral 0
		$animation Swim_flamethrower_aim_mid_right flamethrower/swim_9aims_flamethrower frame 5 5 subtract Swim_flamethrower_aim_neutral 0
		$animation Swim_flamethrower_aim_down_left flamethrower/swim_9aims_flamethrower frame 6 6 subtract Swim_flamethrower_aim_neutral 0
		$animation Swim_flamethrower_aim_down_center flamethrower/swim_9aims_flamethrower frame 7 7 subtract Swim_flamethrower_aim_neutral 0
		$animation Swim_flamethrower_aim_down_right flamethrower/swim_9aims_flamethrower frame 8 8 subtract Swim_flamethrower_aim_neutral 0


		$sequence Swim_Aim_flamethrower  { 
			Swim_flamethrower_aim_up_right Swim_flamethrower_aim_up_center Swim_flamethrower_aim_up_left 
			Swim_flamethrower_aim_mid_right Swim_flamethrower_aim_mid_center Swim_flamethrower_aim_mid_left 
			Swim_flamethrower_aim_down_right Swim_flamethrower_aim_down_center Swim_flamethrower_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_flamethrower_aim_neutral flamethrower/crouch_9aims_flamethrower frame 4 4
		$animation Crouch_flamethrower_aim_up_left flamethrower/crouch_9aims_flamethrower frame 0 0 subtract Crouch_flamethrower_aim_neutral 0
		$animation Crouch_flamethrower_aim_up_center flamethrower/crouch_9aims_flamethrower frame 1 1 subtract Crouch_flamethrower_aim_neutral 0
		$animation Crouch_flamethrower_aim_up_right flamethrower/crouch_9aims_flamethrower frame 2 2 subtract Crouch_flamethrower_aim_neutral 0
		$animation Crouch_flamethrower_aim_mid_left flamethrower/crouch_9aims_flamethrower frame 3 3 subtract Crouch_flamethrower_aim_neutral 0
		$animation Crouch_flamethrower_aim_mid_center flamethrower/crouch_9aims_flamethrower frame 4 4 subtract Crouch_flamethrower_aim_neutral 0
		$animation Crouch_flamethrower_aim_mid_right flamethrower/crouch_9aims_flamethrower frame 5 5 subtract Crouch_flamethrower_aim_neutral 0
		$animation Crouch_flamethrower_aim_down_left flamethrower/crouch_9aims_flamethrower frame 6 6 subtract Crouch_flamethrower_aim_neutral 0
		$animation Crouch_flamethrower_aim_down_center flamethrower/crouch_9aims_flamethrower frame 7 7 subtract Crouch_flamethrower_aim_neutral 0
		$animation Crouch_flamethrower_aim_down_right flamethrower/crouch_9aims_flamethrower frame 8 8 subtract Crouch_flamethrower_aim_neutral 0


		$sequence Crouch_Aim_flamethrower  { 
			Crouch_flamethrower_aim_up_right Crouch_flamethrower_aim_up_center Crouch_flamethrower_aim_up_left 
			Crouch_flamethrower_aim_mid_right Crouch_flamethrower_aim_mid_center Crouch_flamethrower_aim_mid_left 
			Crouch_flamethrower_aim_down_right Crouch_flamethrower_aim_down_center Crouch_flamethrower_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_flamethrower_aim_neutral flamethrower/run_9aims_flamethrower frame 4 4
		$animation Run_flamethrower_aim_up_left flamethrower/run_9aims_flamethrower frame 0 0 subtract Run_flamethrower_aim_neutral 0
		$animation Run_flamethrower_aim_up_center flamethrower/run_9aims_flamethrower frame 1 1 subtract Run_flamethrower_aim_neutral 0
		$animation Run_flamethrower_aim_up_right flamethrower/run_9aims_flamethrower frame 2 2 subtract Run_flamethrower_aim_neutral 0
		$animation Run_flamethrower_aim_mid_left flamethrower/run_9aims_flamethrower frame 3 3 subtract Run_flamethrower_aim_neutral 0
		$animation Run_flamethrower_aim_mid_center flamethrower/run_9aims_flamethrower frame 4 4 subtract Run_flamethrower_aim_neutral 0
		$animation Run_flamethrower_aim_mid_right flamethrower/run_9aims_flamethrower frame 5 5 subtract Run_flamethrower_aim_neutral 0
		$animation Run_flamethrower_aim_down_left flamethrower/run_9aims_flamethrower frame 6 6 subtract Run_flamethrower_aim_neutral 0
		$animation Run_flamethrower_aim_down_center flamethrower/run_9aims_flamethrower frame 7 7 subtract Run_flamethrower_aim_neutral 0
		$animation Run_flamethrower_aim_down_right flamethrower/run_9aims_flamethrower frame 8 8 subtract Run_flamethrower_aim_neutral 0

		$sequence Run_Aim_flamethrower  { 
			Run_flamethrower_aim_up_right Run_flamethrower_aim_up_center Run_flamethrower_aim_up_left 
			Run_flamethrower_aim_mid_right Run_flamethrower_aim_mid_center Run_flamethrower_aim_mid_left 
			Run_flamethrower_aim_down_right Run_flamethrower_aim_down_center Run_flamethrower_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_flamethrower "flamethrower/idle_flamethrower" FPS 30 weightlist upperbody addlayer Run_Aim_flamethrower
		$sequence Walk_Upper_flamethrower "flamethrower/walk_flamethrower" FPS 30 weightlist upperbody addlayer Run_Aim_flamethrower
		$sequence Run_Upper_flamethrower "flamethrower/run_flamethrower" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_flamethrower
		$sequence Crouch_Idle_Upper_flamethrower "flamethrower/crouch_idle_flamethrower" FPS 30 weightlist upperbody addlayer Crouch_Aim_flamethrower
		$sequence Crouch_Walk_Upper_flamethrower "flamethrower/crouch_walk_flamethrower" FPS 30 weightlist upperbody addlayer Crouch_Aim_flamethrower


		$animation Idle_Shoot_flamethrower_layer "flamethrower/shoot_flamethrower" FPS 30 subtract Idle_Shoot_flamethrower_layer 0 weightlist upperbody
		$sequence Idle_Shoot_flamethrower "Idle_Shoot_flamethrower_layer" delta
		$sequence Walk_Shoot_flamethrower "Idle_Shoot_flamethrower_layer" delta
		$sequence Run_Shoot_flamethrower "Idle_Shoot_flamethrower_layer" delta
		$sequence Crouch_Idle_Shoot_flamethrower "Idle_Shoot_flamethrower_layer" delta
		$sequence Crouch_Walk_Shoot_flamethrower "Idle_Shoot_flamethrower_layer" delta

		$sequence Swim_Idle_Upper_flamethrower "flamethrower/swim_idle_flamethrower" FPS 30 weightlist upperbody addlayer Swim_Aim_flamethrower		
		$animation Swim_Shoot_flamethrower_layer "flamethrower/swim_shoot_flamethrower" FPS 30 subtract Swim_Shoot_flamethrower_layer 0 weightlist upperbody
		$sequence Swim_Upper_flamethrower "flamethrower/swim_flamethrower" FPS 30 weightlist upperbody addlayer Swim_Aim_flamethrower


		$animation Reload_flamethrower_layer "flamethrower/reload_flamethrower" FPS 30 subtract Reload_flamethrower_layer 0 weightlist upperbody
		$sequence Reload_flamethrower "Reload_flamethrower_layer" delta



	//-----------------
	//	SPANNER
	//-----------------
		$sequence Jump_Upper_spanner "spanner/jump_spanner" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_spanner_aim_neutral spanner/swim_9aims_spanner frame 4 4
		$animation Swim_spanner_aim_up_left spanner/swim_9aims_spanner frame 0 0 subtract Swim_spanner_aim_neutral 0
		$animation Swim_spanner_aim_up_center spanner/swim_9aims_spanner frame 1 1 subtract Swim_spanner_aim_neutral 0
		$animation Swim_spanner_aim_up_right spanner/swim_9aims_spanner frame 2 2 subtract Swim_spanner_aim_neutral 0
		$animation Swim_spanner_aim_mid_left spanner/swim_9aims_spanner frame 3 3 subtract Swim_spanner_aim_neutral 0
		$animation Swim_spanner_aim_mid_center spanner/swim_9aims_spanner frame 4 4 subtract Swim_spanner_aim_neutral 0
		$animation Swim_spanner_aim_mid_right spanner/swim_9aims_spanner frame 5 5 subtract Swim_spanner_aim_neutral 0
		$animation Swim_spanner_aim_down_left spanner/swim_9aims_spanner frame 6 6 subtract Swim_spanner_aim_neutral 0
		$animation Swim_spanner_aim_down_center spanner/swim_9aims_spanner frame 7 7 subtract Swim_spanner_aim_neutral 0
		$animation Swim_spanner_aim_down_right spanner/swim_9aims_spanner frame 8 8 subtract Swim_spanner_aim_neutral 0


		$sequence Swim_Aim_spanner  { 
			Swim_spanner_aim_up_right Swim_spanner_aim_up_center Swim_spanner_aim_up_left 
			Swim_spanner_aim_mid_right Swim_spanner_aim_mid_center Swim_spanner_aim_mid_left 
			Swim_spanner_aim_down_right Swim_spanner_aim_down_center Swim_spanner_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_spanner_aim_neutral spanner/crouch_9aims_spanner frame 4 4
		$animation Crouch_spanner_aim_up_left spanner/crouch_9aims_spanner frame 0 0 subtract Crouch_spanner_aim_neutral 0
		$animation Crouch_spanner_aim_up_center spanner/crouch_9aims_spanner frame 1 1 subtract Crouch_spanner_aim_neutral 0
		$animation Crouch_spanner_aim_up_right spanner/crouch_9aims_spanner frame 2 2 subtract Crouch_spanner_aim_neutral 0
		$animation Crouch_spanner_aim_mid_left spanner/crouch_9aims_spanner frame 3 3 subtract Crouch_spanner_aim_neutral 0
		$animation Crouch_spanner_aim_mid_center spanner/crouch_9aims_spanner frame 4 4 subtract Crouch_spanner_aim_neutral 0
		$animation Crouch_spanner_aim_mid_right spanner/crouch_9aims_spanner frame 5 5 subtract Crouch_spanner_aim_neutral 0
		$animation Crouch_spanner_aim_down_left spanner/crouch_9aims_spanner frame 6 6 subtract Crouch_spanner_aim_neutral 0
		$animation Crouch_spanner_aim_down_center spanner/crouch_9aims_spanner frame 7 7 subtract Crouch_spanner_aim_neutral 0
		$animation Crouch_spanner_aim_down_right spanner/crouch_9aims_spanner frame 8 8 subtract Crouch_spanner_aim_neutral 0


		$sequence Crouch_Aim_spanner  { 
			Crouch_spanner_aim_up_right Crouch_spanner_aim_up_center Crouch_spanner_aim_up_left 
			Crouch_spanner_aim_mid_right Crouch_spanner_aim_mid_center Crouch_spanner_aim_mid_left 
			Crouch_spanner_aim_down_right Crouch_spanner_aim_down_center Crouch_spanner_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_spanner_aim_neutral spanner/run_9aims_spanner frame 4 4
		$animation Run_spanner_aim_up_left spanner/run_9aims_spanner frame 0 0 subtract Run_spanner_aim_neutral 0
		$animation Run_spanner_aim_up_center spanner/run_9aims_spanner frame 1 1 subtract Run_spanner_aim_neutral 0
		$animation Run_spanner_aim_up_right spanner/run_9aims_spanner frame 2 2 subtract Run_spanner_aim_neutral 0
		$animation Run_spanner_aim_mid_left spanner/run_9aims_spanner frame 3 3 subtract Run_spanner_aim_neutral 0
		$animation Run_spanner_aim_mid_center spanner/run_9aims_spanner frame 4 4 subtract Run_spanner_aim_neutral 0
		$animation Run_spanner_aim_mid_right spanner/run_9aims_spanner frame 5 5 subtract Run_spanner_aim_neutral 0
		$animation Run_spanner_aim_down_left spanner/run_9aims_spanner frame 6 6 subtract Run_spanner_aim_neutral 0
		$animation Run_spanner_aim_down_center spanner/run_9aims_spanner frame 7 7 subtract Run_spanner_aim_neutral 0
		$animation Run_spanner_aim_down_right spanner/run_9aims_spanner frame 8 8 subtract Run_spanner_aim_neutral 0

		$sequence Run_Aim_spanner  { 
			Run_spanner_aim_up_right Run_spanner_aim_up_center Run_spanner_aim_up_left 
			Run_spanner_aim_mid_right Run_spanner_aim_mid_center Run_spanner_aim_mid_left 
			Run_spanner_aim_down_right Run_spanner_aim_down_center Run_spanner_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_spanner "spanner/idle_spanner" FPS 30 weightlist upperbody addlayer Run_Aim_spanner
		$sequence Walk_Upper_spanner "spanner/walk_spanner" FPS 30 weightlist upperbody addlayer Run_Aim_spanner
		$sequence Run_Upper_spanner "spanner/run_spanner" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_spanner
		$sequence Crouch_Idle_Upper_spanner "spanner/crouch_idle_spanner" FPS 30 weightlist upperbody addlayer Crouch_Aim_spanner
		$sequence Crouch_Walk_Upper_spanner "spanner/crouch_walk_spanner" FPS 30 weightlist upperbody addlayer Crouch_Aim_spanner


		$animation Idle_Shoot_spanner_layer "spanner/shoot_spanner" FPS 30 subtract Idle_Shoot_spanner_layer 0 weightlist upperbody
		$sequence Idle_Shoot_spanner "Idle_Shoot_spanner_layer" delta
		$sequence Walk_Shoot_spanner "Idle_Shoot_spanner_layer" delta
		$sequence Run_Shoot_spanner "Idle_Shoot_spanner_layer" delta
		$sequence Crouch_Idle_Shoot_spanner "Idle_Shoot_spanner_layer" delta
		$sequence Crouch_Walk_Shoot_spanner "Idle_Shoot_spanner_layer" delta

		$sequence Swim_Idle_Upper_spanner "spanner/swim_idle_spanner" FPS 30 weightlist upperbody addlayer Swim_Aim_spanner		
		$animation Swim_Shoot_spanner_layer "spanner/swim_shoot_spanner" FPS 30 subtract Swim_Shoot_spanner_layer 0 weightlist upperbody
		$sequence Swim_Upper_spanner "spanner/swim_spanner" FPS 30 weightlist upperbody addlayer Swim_Aim_spanner


		$animation Reload_spanner_layer "spanner/reload_spanner" FPS 30 subtract Reload_spanner_layer 0 weightlist upperbody
		$sequence Reload_spanner "Reload_spanner_layer" delta



	//-----------------
	//	KNIFE
	//-----------------

		$sequence Jump_Upper_knife "knife/jump_knife" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_knife_aim_neutral knife/swim_9aims_knife frame 4 4
		$animation Swim_knife_aim_up_left knife/swim_9aims_knife frame 0 0 subtract Swim_knife_aim_neutral 0
		$animation Swim_knife_aim_up_center knife/swim_9aims_knife frame 1 1 subtract Swim_knife_aim_neutral 0
		$animation Swim_knife_aim_up_right knife/swim_9aims_knife frame 2 2 subtract Swim_knife_aim_neutral 0
		$animation Swim_knife_aim_mid_left knife/swim_9aims_knife frame 3 3 subtract Swim_knife_aim_neutral 0
		$animation Swim_knife_aim_mid_center knife/swim_9aims_knife frame 4 4 subtract Swim_knife_aim_neutral 0
		$animation Swim_knife_aim_mid_right knife/swim_9aims_knife frame 5 5 subtract Swim_knife_aim_neutral 0
		$animation Swim_knife_aim_down_left knife/swim_9aims_knife frame 6 6 subtract Swim_knife_aim_neutral 0
		$animation Swim_knife_aim_down_center knife/swim_9aims_knife frame 7 7 subtract Swim_knife_aim_neutral 0
		$animation Swim_knife_aim_down_right knife/swim_9aims_knife frame 8 8 subtract Swim_knife_aim_neutral 0


		$sequence Swim_Aim_knife  { 
			Swim_knife_aim_up_right Swim_knife_aim_up_center Swim_knife_aim_up_left 
			Swim_knife_aim_mid_right Swim_knife_aim_mid_center Swim_knife_aim_mid_left 
			Swim_knife_aim_down_right Swim_knife_aim_down_center Swim_knife_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_knife_aim_neutral knife/crouch_9aims_knife frame 4 4
		$animation Crouch_knife_aim_up_left knife/crouch_9aims_knife frame 0 0 subtract Crouch_knife_aim_neutral 0
		$animation Crouch_knife_aim_up_center knife/crouch_9aims_knife frame 1 1 subtract Crouch_knife_aim_neutral 0
		$animation Crouch_knife_aim_up_right knife/crouch_9aims_knife frame 2 2 subtract Crouch_knife_aim_neutral 0
		$animation Crouch_knife_aim_mid_left knife/crouch_9aims_knife frame 3 3 subtract Crouch_knife_aim_neutral 0
		$animation Crouch_knife_aim_mid_center knife/crouch_9aims_knife frame 4 4 subtract Crouch_knife_aim_neutral 0
		$animation Crouch_knife_aim_mid_right knife/crouch_9aims_knife frame 5 5 subtract Crouch_knife_aim_neutral 0
		$animation Crouch_knife_aim_down_left knife/crouch_9aims_knife frame 6 6 subtract Crouch_knife_aim_neutral 0
		$animation Crouch_knife_aim_down_center knife/crouch_9aims_knife frame 7 7 subtract Crouch_knife_aim_neutral 0
		$animation Crouch_knife_aim_down_right knife/crouch_9aims_knife frame 8 8 subtract Crouch_knife_aim_neutral 0


		$sequence Crouch_Aim_knife  { 
			Crouch_knife_aim_up_right Crouch_knife_aim_up_center Crouch_knife_aim_up_left 
			Crouch_knife_aim_mid_right Crouch_knife_aim_mid_center Crouch_knife_aim_mid_left 
			Crouch_knife_aim_down_right Crouch_knife_aim_down_center Crouch_knife_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_knife_aim_neutral knife/run_9aims_knife frame 4 4
		$animation Run_knife_aim_up_left knife/run_9aims_knife frame 0 0 subtract Run_knife_aim_neutral 0
		$animation Run_knife_aim_up_center knife/run_9aims_knife frame 1 1 subtract Run_knife_aim_neutral 0
		$animation Run_knife_aim_up_right knife/run_9aims_knife frame 2 2 subtract Run_knife_aim_neutral 0
		$animation Run_knife_aim_mid_left knife/run_9aims_knife frame 3 3 subtract Run_knife_aim_neutral 0
		$animation Run_knife_aim_mid_center knife/run_9aims_knife frame 4 4 subtract Run_knife_aim_neutral 0
		$animation Run_knife_aim_mid_right knife/run_9aims_knife frame 5 5 subtract Run_knife_aim_neutral 0
		$animation Run_knife_aim_down_left knife/run_9aims_knife frame 6 6 subtract Run_knife_aim_neutral 0
		$animation Run_knife_aim_down_center knife/run_9aims_knife frame 7 7 subtract Run_knife_aim_neutral 0
		$animation Run_knife_aim_down_right knife/run_9aims_knife frame 8 8 subtract Run_knife_aim_neutral 0

		$sequence Run_Aim_knife  { 
			Run_knife_aim_up_right Run_knife_aim_up_center Run_knife_aim_up_left 
			Run_knife_aim_mid_right Run_knife_aim_mid_center Run_knife_aim_mid_left 
			Run_knife_aim_down_right Run_knife_aim_down_center Run_knife_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_knife "knife/idle_knife" FPS 30 weightlist upperbody addlayer Run_Aim_knife
		$sequence Walk_Upper_knife "knife/walk_knife" FPS 30 weightlist upperbody addlayer Run_Aim_knife
		$sequence Run_Upper_knife "knife/run_knife" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_knife
		$sequence Crouch_Idle_Upper_knife "knife/crouch_idle_knife" FPS 30 weightlist upperbody addlayer Crouch_Aim_knife
		$sequence Crouch_Walk_Upper_knife "knife/crouch_walk_knife" FPS 30 weightlist upperbody addlayer Crouch_Aim_knife


		$animation Idle_Shoot_knife_layer "knife/shoot_knife" FPS 30 subtract Idle_Shoot_knife_layer 0 weightlist upperbody
		$sequence Idle_Shoot_knife "Idle_Shoot_knife_layer" delta
		$sequence Walk_Shoot_knife "Idle_Shoot_knife_layer" delta
		$sequence Run_Shoot_knife "Idle_Shoot_knife_layer" delta
		$sequence Crouch_Idle_Shoot_knife "Idle_Shoot_knife_layer" delta
		$sequence Crouch_Walk_Shoot_knife "Idle_Shoot_knife_layer" delta

		$sequence Swim_Idle_Upper_knife "knife/swim_idle_knife" FPS 30 weightlist upperbody addlayer Swim_Aim_knife		
		$animation Swim_Shoot_knife_layer "knife/swim_shoot_knife" FPS 30 subtract Swim_Shoot_knife_layer 0 weightlist upperbody
		$sequence Swim_Upper_knife "knife/swim_knife" FPS 30 weightlist upperbody addlayer Swim_Aim_knife


		$animation Reload_knife_layer "knife/reload_knife" FPS 30 subtract Reload_knife_layer 0 weightlist upperbody
		$sequence Reload_knife "Reload_knife_layer" delta


	//-----------------
	//	UMBRELLA
	//-----------------

		$sequence Jump_Upper_umbrella "umbrella/jump_umbrella" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_umbrella_aim_neutral umbrella/swim_9aims_umbrella frame 4 4
		$animation Swim_umbrella_aim_up_left umbrella/swim_9aims_umbrella frame 0 0 subtract Swim_umbrella_aim_neutral 0
		$animation Swim_umbrella_aim_up_center umbrella/swim_9aims_umbrella frame 1 1 subtract Swim_umbrella_aim_neutral 0
		$animation Swim_umbrella_aim_up_right umbrella/swim_9aims_umbrella frame 2 2 subtract Swim_umbrella_aim_neutral 0
		$animation Swim_umbrella_aim_mid_left umbrella/swim_9aims_umbrella frame 3 3 subtract Swim_umbrella_aim_neutral 0
		$animation Swim_umbrella_aim_mid_center umbrella/swim_9aims_umbrella frame 4 4 subtract Swim_umbrella_aim_neutral 0
		$animation Swim_umbrella_aim_mid_right umbrella/swim_9aims_umbrella frame 5 5 subtract Swim_umbrella_aim_neutral 0
		$animation Swim_umbrella_aim_down_left umbrella/swim_9aims_umbrella frame 6 6 subtract Swim_umbrella_aim_neutral 0
		$animation Swim_umbrella_aim_down_center umbrella/swim_9aims_umbrella frame 7 7 subtract Swim_umbrella_aim_neutral 0
		$animation Swim_umbrella_aim_down_right umbrella/swim_9aims_umbrella frame 8 8 subtract Swim_umbrella_aim_neutral 0


		$sequence Swim_Aim_umbrella  { 
			Swim_umbrella_aim_up_right Swim_umbrella_aim_up_center Swim_umbrella_aim_up_left 
			Swim_umbrella_aim_mid_right Swim_umbrella_aim_mid_center Swim_umbrella_aim_mid_left 
			Swim_umbrella_aim_down_right Swim_umbrella_aim_down_center Swim_umbrella_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_umbrella_aim_neutral umbrella/crouch_9aims_umbrella frame 4 4
		$animation Crouch_umbrella_aim_up_left umbrella/crouch_9aims_umbrella frame 0 0 subtract Crouch_umbrella_aim_neutral 0
		$animation Crouch_umbrella_aim_up_center umbrella/crouch_9aims_umbrella frame 1 1 subtract Crouch_umbrella_aim_neutral 0
		$animation Crouch_umbrella_aim_up_right umbrella/crouch_9aims_umbrella frame 2 2 subtract Crouch_umbrella_aim_neutral 0
		$animation Crouch_umbrella_aim_mid_left umbrella/crouch_9aims_umbrella frame 3 3 subtract Crouch_umbrella_aim_neutral 0
		$animation Crouch_umbrella_aim_mid_center umbrella/crouch_9aims_umbrella frame 4 4 subtract Crouch_umbrella_aim_neutral 0
		$animation Crouch_umbrella_aim_mid_right umbrella/crouch_9aims_umbrella frame 5 5 subtract Crouch_umbrella_aim_neutral 0
		$animation Crouch_umbrella_aim_down_left umbrella/crouch_9aims_umbrella frame 6 6 subtract Crouch_umbrella_aim_neutral 0
		$animation Crouch_umbrella_aim_down_center umbrella/crouch_9aims_umbrella frame 7 7 subtract Crouch_umbrella_aim_neutral 0
		$animation Crouch_umbrella_aim_down_right umbrella/crouch_9aims_umbrella frame 8 8 subtract Crouch_umbrella_aim_neutral 0


		$sequence Crouch_Aim_umbrella  { 
			Crouch_umbrella_aim_up_right Crouch_umbrella_aim_up_center Crouch_umbrella_aim_up_left 
			Crouch_umbrella_aim_mid_right Crouch_umbrella_aim_mid_center Crouch_umbrella_aim_mid_left 
			Crouch_umbrella_aim_down_right Crouch_umbrella_aim_down_center Crouch_umbrella_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_umbrella_aim_neutral umbrella/run_9aims_umbrella frame 4 4
		$animation Run_umbrella_aim_up_left umbrella/run_9aims_umbrella frame 0 0 subtract Run_umbrella_aim_neutral 0
		$animation Run_umbrella_aim_up_center umbrella/run_9aims_umbrella frame 1 1 subtract Run_umbrella_aim_neutral 0
		$animation Run_umbrella_aim_up_right umbrella/run_9aims_umbrella frame 2 2 subtract Run_umbrella_aim_neutral 0
		$animation Run_umbrella_aim_mid_left umbrella/run_9aims_umbrella frame 3 3 subtract Run_umbrella_aim_neutral 0
		$animation Run_umbrella_aim_mid_center umbrella/run_9aims_umbrella frame 4 4 subtract Run_umbrella_aim_neutral 0
		$animation Run_umbrella_aim_mid_right umbrella/run_9aims_umbrella frame 5 5 subtract Run_umbrella_aim_neutral 0
		$animation Run_umbrella_aim_down_left umbrella/run_9aims_umbrella frame 6 6 subtract Run_umbrella_aim_neutral 0
		$animation Run_umbrella_aim_down_center umbrella/run_9aims_umbrella frame 7 7 subtract Run_umbrella_aim_neutral 0
		$animation Run_umbrella_aim_down_right umbrella/run_9aims_umbrella frame 8 8 subtract Run_umbrella_aim_neutral 0

		$sequence Run_Aim_umbrella  { 
			Run_umbrella_aim_up_right Run_umbrella_aim_up_center Run_umbrella_aim_up_left 
			Run_umbrella_aim_mid_right Run_umbrella_aim_mid_center Run_umbrella_aim_mid_left 
			Run_umbrella_aim_down_right Run_umbrella_aim_down_center Run_umbrella_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_umbrella "umbrella/idle_umbrella" FPS 30 weightlist upperbody addlayer Run_Aim_umbrella
		$sequence Walk_Upper_umbrella "umbrella/walk_umbrella" FPS 30 weightlist upperbody addlayer Run_Aim_umbrella
		$sequence Run_Upper_umbrella "umbrella/run_umbrella" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_umbrella
		$sequence Crouch_Idle_Upper_umbrella "umbrella/crouch_idle_umbrella" FPS 30 weightlist upperbody addlayer Crouch_Aim_umbrella
		$sequence Crouch_Walk_Upper_umbrella "umbrella/crouch_walk_umbrella" FPS 30 weightlist upperbody addlayer Crouch_Aim_umbrella


		$animation Idle_Shoot_umbrella_layer "umbrella/shoot_umbrella" FPS 30 subtract Idle_Shoot_umbrella_layer 0 weightlist upperbody
		$sequence Idle_Shoot_umbrella "Idle_Shoot_umbrella_layer" delta
		$sequence Walk_Shoot_umbrella "Idle_Shoot_umbrella_layer" delta
		$sequence Run_Shoot_umbrella "Idle_Shoot_umbrella_layer" delta
		$sequence Crouch_Idle_Shoot_umbrella "Idle_Shoot_umbrella_layer" delta
		$sequence Crouch_Walk_Shoot_umbrella "Idle_Shoot_umbrella_layer" delta

		$sequence Swim_Idle_Upper_umbrella "umbrella/swim_idle_umbrella" FPS 30 weightlist upperbody addlayer Swim_Aim_umbrella		
		$animation Swim_Shoot_umbrella_layer "umbrella/swim_shoot_umbrella" FPS 30 subtract Swim_Shoot_umbrella_layer 0 weightlist upperbody
		$sequence Swim_Upper_umbrella "umbrella/swim_umbrella" FPS 30 weightlist upperbody addlayer Swim_Aim_umbrella


		$animation Reload_umbrella_layer "umbrella/reload_umbrella" FPS 30 subtract Reload_umbrella_layer 0 weightlist upperbody
		$sequence Reload_umbrella "Reload_umbrella_layer" delta


	//-----------------
	//	TRANQUILISER
	//-----------------

		$sequence Jump_Upper_tranq "tranq/jump_tranq" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_tranq_aim_neutral tranq/swim_9aims_tranq frame 4 4
		$animation Swim_tranq_aim_up_left tranq/swim_9aims_tranq frame 0 0 subtract Swim_tranq_aim_neutral 0
		$animation Swim_tranq_aim_up_center tranq/swim_9aims_tranq frame 1 1 subtract Swim_tranq_aim_neutral 0
		$animation Swim_tranq_aim_up_right tranq/swim_9aims_tranq frame 2 2 subtract Swim_tranq_aim_neutral 0
		$animation Swim_tranq_aim_mid_left tranq/swim_9aims_tranq frame 3 3 subtract Swim_tranq_aim_neutral 0
		$animation Swim_tranq_aim_mid_center tranq/swim_9aims_tranq frame 4 4 subtract Swim_tranq_aim_neutral 0
		$animation Swim_tranq_aim_mid_right tranq/swim_9aims_tranq frame 5 5 subtract Swim_tranq_aim_neutral 0
		$animation Swim_tranq_aim_down_left tranq/swim_9aims_tranq frame 6 6 subtract Swim_tranq_aim_neutral 0
		$animation Swim_tranq_aim_down_center tranq/swim_9aims_tranq frame 7 7 subtract Swim_tranq_aim_neutral 0
		$animation Swim_tranq_aim_down_right tranq/swim_9aims_tranq frame 8 8 subtract Swim_tranq_aim_neutral 0


		$sequence Swim_Aim_tranq  { 
			Swim_tranq_aim_up_right Swim_tranq_aim_up_center Swim_tranq_aim_up_left 
			Swim_tranq_aim_mid_right Swim_tranq_aim_mid_center Swim_tranq_aim_mid_left 
			Swim_tranq_aim_down_right Swim_tranq_aim_down_center Swim_tranq_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_tranq_aim_neutral tranq/crouch_9aims_tranq frame 4 4
		$animation Crouch_tranq_aim_up_left tranq/crouch_9aims_tranq frame 0 0 subtract Crouch_tranq_aim_neutral 0
		$animation Crouch_tranq_aim_up_center tranq/crouch_9aims_tranq frame 1 1 subtract Crouch_tranq_aim_neutral 0
		$animation Crouch_tranq_aim_up_right tranq/crouch_9aims_tranq frame 2 2 subtract Crouch_tranq_aim_neutral 0
		$animation Crouch_tranq_aim_mid_left tranq/crouch_9aims_tranq frame 3 3 subtract Crouch_tranq_aim_neutral 0
		$animation Crouch_tranq_aim_mid_center tranq/crouch_9aims_tranq frame 4 4 subtract Crouch_tranq_aim_neutral 0
		$animation Crouch_tranq_aim_mid_right tranq/crouch_9aims_tranq frame 5 5 subtract Crouch_tranq_aim_neutral 0
		$animation Crouch_tranq_aim_down_left tranq/crouch_9aims_tranq frame 6 6 subtract Crouch_tranq_aim_neutral 0
		$animation Crouch_tranq_aim_down_center tranq/crouch_9aims_tranq frame 7 7 subtract Crouch_tranq_aim_neutral 0
		$animation Crouch_tranq_aim_down_right tranq/crouch_9aims_tranq frame 8 8 subtract Crouch_tranq_aim_neutral 0


		$sequence Crouch_Aim_tranq  { 
			Crouch_tranq_aim_up_right Crouch_tranq_aim_up_center Crouch_tranq_aim_up_left 
			Crouch_tranq_aim_mid_right Crouch_tranq_aim_mid_center Crouch_tranq_aim_mid_left 
			Crouch_tranq_aim_down_right Crouch_tranq_aim_down_center Crouch_tranq_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_tranq_aim_neutral tranq/run_9aims_tranq frame 4 4
		$animation Run_tranq_aim_up_left tranq/run_9aims_tranq frame 0 0 subtract Run_tranq_aim_neutral 0
		$animation Run_tranq_aim_up_center tranq/run_9aims_tranq frame 1 1 subtract Run_tranq_aim_neutral 0
		$animation Run_tranq_aim_up_right tranq/run_9aims_tranq frame 2 2 subtract Run_tranq_aim_neutral 0
		$animation Run_tranq_aim_mid_left tranq/run_9aims_tranq frame 3 3 subtract Run_tranq_aim_neutral 0
		$animation Run_tranq_aim_mid_center tranq/run_9aims_tranq frame 4 4 subtract Run_tranq_aim_neutral 0
		$animation Run_tranq_aim_mid_right tranq/run_9aims_tranq frame 5 5 subtract Run_tranq_aim_neutral 0
		$animation Run_tranq_aim_down_left tranq/run_9aims_tranq frame 6 6 subtract Run_tranq_aim_neutral 0
		$animation Run_tranq_aim_down_center tranq/run_9aims_tranq frame 7 7 subtract Run_tranq_aim_neutral 0
		$animation Run_tranq_aim_down_right tranq/run_9aims_tranq frame 8 8 subtract Run_tranq_aim_neutral 0

		$sequence Run_Aim_tranq  { 
			Run_tranq_aim_up_right Run_tranq_aim_up_center Run_tranq_aim_up_left 
			Run_tranq_aim_mid_right Run_tranq_aim_mid_center Run_tranq_aim_mid_left 
			Run_tranq_aim_down_right Run_tranq_aim_down_center Run_tranq_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_tranq "tranq/idle_tranq" FPS 30 weightlist upperbody addlayer Run_Aim_tranq
		$sequence Walk_Upper_tranq "tranq/walk_tranq" FPS 30 weightlist upperbody addlayer Run_Aim_tranq
		$sequence Run_Upper_tranq "tranq/run_tranq" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_tranq
		$sequence Crouch_Idle_Upper_tranq "tranq/crouch_idle_tranq" FPS 30 weightlist upperbody addlayer Crouch_Aim_tranq
		$sequence Crouch_Walk_Upper_tranq "tranq/crouch_walk_tranq" FPS 30 weightlist upperbody addlayer Crouch_Aim_tranq


		$animation Idle_Shoot_tranq_layer "tranq/shoot_tranq" FPS 30 subtract Idle_Shoot_tranq_layer 0 weightlist upperbody
		$sequence Idle_Shoot_tranq "Idle_Shoot_tranq_layer" delta
		$sequence Walk_Shoot_tranq "Idle_Shoot_tranq_layer" delta
		$sequence Run_Shoot_tranq "Idle_Shoot_tranq_layer" delta
		$sequence Crouch_Idle_Shoot_tranq "Idle_Shoot_tranq_layer" delta
		$sequence Crouch_Walk_Shoot_tranq "Idle_Shoot_tranq_layer" delta

		$sequence Swim_Idle_Upper_tranq "tranq/swim_idle_tranq" FPS 30 weightlist upperbody addlayer Swim_Aim_tranq		
		$animation Swim_Shoot_tranq_layer "tranq/swim_shoot_tranq" FPS 30 subtract Swim_Shoot_tranq_layer 0 weightlist upperbody
		$sequence Swim_Upper_tranq "tranq/swim_tranq" FPS 30 weightlist upperbody addlayer Swim_Aim_tranq





		$animation Reload_tranq_layer "tranq/reload_tranq" FPS 30 subtract Reload_tranq_layer 0 weightlist upperbody
		$sequence Reload_tranq "Reload_tranq_layer" delta

		
	//-----------------
	//	RPG
	//-----------------

		$sequence Jump_Upper_rpg "rpg/jump_rpg" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_rpg_aim_neutral rpg/swim_9aims_rpg frame 4 4
		$animation Swim_rpg_aim_up_left rpg/swim_9aims_rpg frame 0 0 subtract Swim_rpg_aim_neutral 0
		$animation Swim_rpg_aim_up_center rpg/swim_9aims_rpg frame 1 1 subtract Swim_rpg_aim_neutral 0
		$animation Swim_rpg_aim_up_right rpg/swim_9aims_rpg frame 2 2 subtract Swim_rpg_aim_neutral 0
		$animation Swim_rpg_aim_mid_left rpg/swim_9aims_rpg frame 3 3 subtract Swim_rpg_aim_neutral 0
		$animation Swim_rpg_aim_mid_center rpg/swim_9aims_rpg frame 4 4 subtract Swim_rpg_aim_neutral 0
		$animation Swim_rpg_aim_mid_right rpg/swim_9aims_rpg frame 5 5 subtract Swim_rpg_aim_neutral 0
		$animation Swim_rpg_aim_down_left rpg/swim_9aims_rpg frame 6 6 subtract Swim_rpg_aim_neutral 0
		$animation Swim_rpg_aim_down_center rpg/swim_9aims_rpg frame 7 7 subtract Swim_rpg_aim_neutral 0
		$animation Swim_rpg_aim_down_right rpg/swim_9aims_rpg frame 8 8 subtract Swim_rpg_aim_neutral 0


		$sequence Swim_Aim_rpg  { 
			Swim_rpg_aim_up_right Swim_rpg_aim_up_center Swim_rpg_aim_up_left 
			Swim_rpg_aim_mid_right Swim_rpg_aim_mid_center Swim_rpg_aim_mid_left 
			Swim_rpg_aim_down_right Swim_rpg_aim_down_center Swim_rpg_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_rpg_aim_neutral rpg/crouch_9aims_rpg frame 4 4
		$animation Crouch_rpg_aim_up_left rpg/crouch_9aims_rpg frame 0 0 subtract Crouch_rpg_aim_neutral 0
		$animation Crouch_rpg_aim_up_center rpg/crouch_9aims_rpg frame 1 1 subtract Crouch_rpg_aim_neutral 0
		$animation Crouch_rpg_aim_up_right rpg/crouch_9aims_rpg frame 2 2 subtract Crouch_rpg_aim_neutral 0
		$animation Crouch_rpg_aim_mid_left rpg/crouch_9aims_rpg frame 3 3 subtract Crouch_rpg_aim_neutral 0
		$animation Crouch_rpg_aim_mid_center rpg/crouch_9aims_rpg frame 4 4 subtract Crouch_rpg_aim_neutral 0
		$animation Crouch_rpg_aim_mid_right rpg/crouch_9aims_rpg frame 5 5 subtract Crouch_rpg_aim_neutral 0
		$animation Crouch_rpg_aim_down_left rpg/crouch_9aims_rpg frame 6 6 subtract Crouch_rpg_aim_neutral 0
		$animation Crouch_rpg_aim_down_center rpg/crouch_9aims_rpg frame 7 7 subtract Crouch_rpg_aim_neutral 0
		$animation Crouch_rpg_aim_down_right rpg/crouch_9aims_rpg frame 8 8 subtract Crouch_rpg_aim_neutral 0


		$sequence Crouch_Aim_rpg  { 
			Crouch_rpg_aim_up_right Crouch_rpg_aim_up_center Crouch_rpg_aim_up_left 
			Crouch_rpg_aim_mid_right Crouch_rpg_aim_mid_center Crouch_rpg_aim_mid_left 
			Crouch_rpg_aim_down_right Crouch_rpg_aim_down_center Crouch_rpg_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_rpg_aim_neutral rpg/run_9aims_rpg frame 4 4
		$animation Run_rpg_aim_up_left rpg/run_9aims_rpg frame 0 0 subtract Run_rpg_aim_neutral 0
		$animation Run_rpg_aim_up_center rpg/run_9aims_rpg frame 1 1 subtract Run_rpg_aim_neutral 0
		$animation Run_rpg_aim_up_right rpg/run_9aims_rpg frame 2 2 subtract Run_rpg_aim_neutral 0
		$animation Run_rpg_aim_mid_left rpg/run_9aims_rpg frame 3 3 subtract Run_rpg_aim_neutral 0
		$animation Run_rpg_aim_mid_center rpg/run_9aims_rpg frame 4 4 subtract Run_rpg_aim_neutral 0
		$animation Run_rpg_aim_mid_right rpg/run_9aims_rpg frame 5 5 subtract Run_rpg_aim_neutral 0
		$animation Run_rpg_aim_down_left rpg/run_9aims_rpg frame 6 6 subtract Run_rpg_aim_neutral 0
		$animation Run_rpg_aim_down_center rpg/run_9aims_rpg frame 7 7 subtract Run_rpg_aim_neutral 0
		$animation Run_rpg_aim_down_right rpg/run_9aims_rpg frame 8 8 subtract Run_rpg_aim_neutral 0

		$sequence Run_Aim_rpg  { 
			Run_rpg_aim_up_right Run_rpg_aim_up_center Run_rpg_aim_up_left 
			Run_rpg_aim_mid_right Run_rpg_aim_mid_center Run_rpg_aim_mid_left 
			Run_rpg_aim_down_right Run_rpg_aim_down_center Run_rpg_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65 //was -65 65, tried -80 65, didn't help
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}

		$animation Idle_rpg_aim_neutral rpg/idle_9aims_rpg frame 4 4
		$animation Idle_rpg_aim_up_left rpg/idle_9aims_rpg frame 0 0 subtract Idle_rpg_aim_neutral 0
		$animation Idle_rpg_aim_up_center rpg/idle_9aims_rpg frame 1 1 subtract Idle_rpg_aim_neutral 0
		$animation Idle_rpg_aim_up_right rpg/idle_9aims_rpg frame 2 2 subtract Idle_rpg_aim_neutral 0
		$animation Idle_rpg_aim_mid_left rpg/idle_9aims_rpg frame 3 3 subtract Idle_rpg_aim_neutral 0
		$animation Idle_rpg_aim_mid_center rpg/idle_9aims_rpg frame 4 4 subtract Idle_rpg_aim_neutral 0
		$animation Idle_rpg_aim_mid_right rpg/idle_9aims_rpg frame 5 5 subtract Idle_rpg_aim_neutral 0
		$animation Idle_rpg_aim_down_left rpg/idle_9aims_rpg frame 6 6 subtract Idle_rpg_aim_neutral 0
		$animation Idle_rpg_aim_down_center rpg/idle_9aims_rpg frame 7 7 subtract Idle_rpg_aim_neutral 0
		$animation Idle_rpg_aim_down_right rpg/idle_9aims_rpg frame 8 8 subtract Idle_rpg_aim_neutral 0

		$sequence Idle_Aim_rpg  { 
			Idle_rpg_aim_up_right Idle_rpg_aim_up_center Idle_rpg_aim_up_left 
			Idle_rpg_aim_mid_right Idle_rpg_aim_mid_center Idle_rpg_aim_mid_left 
			Idle_rpg_aim_down_right Idle_rpg_aim_down_center Idle_rpg_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65 //was -65 65, tried -80 65, didn't help
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}
		
		$sequence Idle_Upper_rpg "rpg/idle_rpg" {
			FPS 30
			weightlist upperbody
			addlayer Run_Aim_rpg
				}
		$sequence Walk_Upper_rpg "rpg/walk_rpg" {
			FPS 30
			weightlist upperbody
			addlayer Run_Aim_rpg
				}
		$sequence Run_Upper_rpg "rpg/run_rpg" {
			FPS 30
			startloop 0
			weightlist upperbody
			addlayer Run_Aim_rpg
				}
		$sequence Crouch_Idle_Upper_rpg "rpg/crouch_idle_rpg" {
			FPS 30
			weightlist upperbody
			addlayer Crouch_Aim_rpg
				}
		$sequence Crouch_Walk_Upper_rpg "rpg/crouch_walk_rpg" {
			FPS 30
			weightlist upperbody
			addlayer Crouch_Aim_rpg
				}

		$animation Idle_Shoot_rpg_layer "rpg/shoot_rpg" FPS 30 subtract Idle_Shoot_rpg_layer 0 weightlist upperbody
		$sequence Idle_Shoot_rpg "Idle_Shoot_rpg_layer" delta
		$sequence Walk_Shoot_rpg "Idle_Shoot_rpg_layer" delta
		$sequence Run_Shoot_rpg "Idle_Shoot_rpg_layer" delta
		$sequence Crouch_Idle_Shoot_rpg "Idle_Shoot_rpg_layer" delta
		$sequence Crouch_Walk_Shoot_rpg "Idle_Shoot_rpg_layer" delta

		$sequence Swim_Idle_Upper_rpg "rpg/swim_idle_rpg" FPS 30 weightlist upperbody addlayer Swim_Aim_rpg		
		$animation Swim_Shoot_rpg_layer "rpg/swim_shoot_rpg" FPS 30 subtract Swim_Shoot_rpg_layer 0 weightlist upperbody
		$sequence Swim_Upper_rpg "rpg/swim_rpg" FPS 30 weightlist upperbody addlayer Swim_Aim_rpg


		$animation Reload_rpg_layer "rpg/reload_rpg" FPS 30 subtract Reload_rpg_layer 0 weightlist upperbody
		$sequence Reload_rpg "Reload_rpg_layer" delta


//	//-----------------
//	//	INCENDIARY CANNON
//	//-----------------
//
//		$sequence Jump_Upper_incendiarycannon "incendiarycannon/jump_ic" FPS 30 startloop 0 weightlist upperbody 
//
//		$animation Swim_incendiarycannon_aim_neutral incendiarycannon/swim_9aims_ic frame 4 4
//		$animation Swim_incendiarycannon_aim_up_left incendiarycannon/swim_9aims_ic frame 0 0 subtract Swim_incendiarycannon_aim_neutral 0
//		$animation Swim_incendiarycannon_aim_up_center incendiarycannon/swim_9aims_ic frame 1 1 subtract Swim_incendiarycannon_aim_neutral 0
//		$animation Swim_incendiarycannon_aim_up_right incendiarycannon/swim_9aims_ic frame 2 2 subtract Swim_incendiarycannon_aim_neutral 0
//		$animation Swim_incendiarycannon_aim_mid_left incendiarycannon/swim_9aims_ic frame 3 3 subtract Swim_incendiarycannon_aim_neutral 0
//		$animation Swim_incendiarycannon_aim_mid_center incendiarycannon/swim_9aims_ic frame 4 4 subtract Swim_incendiarycannon_aim_neutral 0
//		$animation Swim_incendiarycannon_aim_mid_right incendiarycannon/swim_9aims_ic frame 5 5 subtract Swim_incendiarycannon_aim_neutral 0
//		$animation Swim_incendiarycannon_aim_down_left incendiarycannon/swim_9aims_ic frame 6 6 subtract Swim_incendiarycannon_aim_neutral 0
//		$animation Swim_incendiarycannon_aim_down_center incendiarycannon/swim_9aims_ic frame 7 7 subtract Swim_incendiarycannon_aim_neutral 0
//		$animation Swim_incendiarycannon_aim_down_right incendiarycannon/swim_9aims_ic frame 8 8 subtract Swim_incendiarycannon_aim_neutral 0
//
//
//		$sequence Swim_Aim_incendiarycannon  { 
//			Swim_incendiarycannon_aim_up_right Swim_incendiarycannon_aim_up_center Swim_incendiarycannon_aim_up_left 
//			Swim_incendiarycannon_aim_mid_right Swim_incendiarycannon_aim_mid_center Swim_incendiarycannon_aim_mid_left 
//			Swim_incendiarycannon_aim_down_right Swim_incendiarycannon_aim_down_center Swim_incendiarycannon_aim_down_left 
//			weightlist upperbody
//			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
//			iklock lfoot 1 0 iklock rfoot 1 0
//			delta
//		}
//
//
//		$animation Crouch_incendiarycannon_aim_neutral incendiarycannon/crouch_9aims_ic frame 4 4
//		$animation Crouch_incendiarycannon_aim_up_left incendiarycannon/crouch_9aims_ic frame 0 0 subtract Crouch_incendiarycannon_aim_neutral 0
//		$animation Crouch_incendiarycannon_aim_up_center incendiarycannon/crouch_9aims_ic frame 1 1 subtract Crouch_incendiarycannon_aim_neutral 0
//		$animation Crouch_incendiarycannon_aim_up_right incendiarycannon/crouch_9aims_ic frame 2 2 subtract Crouch_incendiarycannon_aim_neutral 0
//		$animation Crouch_incendiarycannon_aim_mid_left incendiarycannon/crouch_9aims_ic frame 3 3 subtract Crouch_incendiarycannon_aim_neutral 0
//		$animation Crouch_incendiarycannon_aim_mid_center incendiarycannon/crouch_9aims_ic frame 4 4 subtract Crouch_incendiarycannon_aim_neutral 0
//		$animation Crouch_incendiarycannon_aim_mid_right incendiarycannon/crouch_9aims_ic frame 5 5 subtract Crouch_incendiarycannon_aim_neutral 0
//		$animation Crouch_incendiarycannon_aim_down_left incendiarycannon/crouch_9aims_ic frame 6 6 subtract Crouch_incendiarycannon_aim_neutral 0
//		$animation Crouch_incendiarycannon_aim_down_center incendiarycannon/crouch_9aims_ic frame 7 7 subtract Crouch_incendiarycannon_aim_neutral 0
//		$animation Crouch_incendiarycannon_aim_down_right incendiarycannon/crouch_9aims_ic frame 8 8 subtract Crouch_incendiarycannon_aim_neutral 0
//
//
//		$sequence Crouch_Aim_incendiarycannon  { 
//			Crouch_incendiarycannon_aim_up_right Crouch_incendiarycannon_aim_up_center Crouch_incendiarycannon_aim_up_left 
//			Crouch_incendiarycannon_aim_mid_right Crouch_incendiarycannon_aim_mid_center Crouch_incendiarycannon_aim_mid_left 
//			Crouch_incendiarycannon_aim_down_right Crouch_incendiarycannon_aim_down_center Crouch_incendiarycannon_aim_down_left 
//			weightlist upperbody
//			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
//			iklock lfoot 1 0 iklock rfoot 1 0
//			delta
//		}
//
//
//		$animation Run_incendiarycannon_aim_neutral incendiarycannon/run_9aims_ic frame 4 4
//		$animation Run_incendiarycannon_aim_up_left incendiarycannon/run_9aims_ic frame 0 0 subtract Run_incendiarycannon_aim_neutral 0
//		$animation Run_incendiarycannon_aim_up_center incendiarycannon/run_9aims_ic frame 1 1 subtract Run_incendiarycannon_aim_neutral 0
//		$animation Run_incendiarycannon_aim_up_right incendiarycannon/run_9aims_ic frame 2 2 subtract Run_incendiarycannon_aim_neutral 0
//		$animation Run_incendiarycannon_aim_mid_left incendiarycannon/run_9aims_ic frame 3 3 subtract Run_incendiarycannon_aim_neutral 0
//		$animation Run_incendiarycannon_aim_mid_center incendiarycannon/run_9aims_ic frame 4 4 subtract Run_incendiarycannon_aim_neutral 0
//		$animation Run_incendiarycannon_aim_mid_right incendiarycannon/run_9aims_ic frame 5 5 subtract Run_incendiarycannon_aim_neutral 0
//		$animation Run_incendiarycannon_aim_down_left incendiarycannon/run_9aims_ic frame 6 6 subtract Run_incendiarycannon_aim_neutral 0
//		$animation Run_incendiarycannon_aim_down_center incendiarycannon/run_9aims_ic frame 7 7 subtract Run_incendiarycannon_aim_neutral 0
//		$animation Run_incendiarycannon_aim_down_right incendiarycannon/run_9aims_ic frame 8 8 subtract Run_incendiarycannon_aim_neutral 0
//
//		$sequence Run_Aim_incendiarycannon  { 
//			Run_incendiarycannon_aim_up_right Run_incendiarycannon_aim_up_center Run_incendiarycannon_aim_up_left 
//			Run_incendiarycannon_aim_mid_right Run_incendiarycannon_aim_mid_center Run_incendiarycannon_aim_mid_left 
//			Run_incendiarycannon_aim_down_right Run_incendiarycannon_aim_down_center Run_incendiarycannon_aim_down_left 
//			weightlist upperbody
//			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
//			iklock lfoot 1 0 iklock rfoot 1 0
//			delta
//				}
//
//
//
//		$sequence Idle_Upper_incendiarycannon "incendiarycannon/idle_ic" FPS 30 weightlist upperbody addlayer Run_Aim_incendiarycannon
//		$sequence Walk_Upper_incendiarycannon "incendiarycannon/walk_ic" FPS 30 weightlist upperbody addlayer Run_Aim_incendiarycannon
//		$sequence Run_Upper_incendiarycannon "incendiarycannon/run_ic" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_incendiarycannon
//		$sequence Crouch_Idle_Upper_incendiarycannon "incendiarycannon/crouch_idle_ic" FPS 30 weightlist upperbody addlayer Crouch_Aim_incendiarycannon
//		$sequence Crouch_Walk_Upper_incendiarycannon "incendiarycannon/crouch_walk_ic" FPS 30 weightlist upperbody addlayer Crouch_Aim_incendiarycannon
//
//
//		$animation Idle_Shoot_incendiarycannon_layer "incendiarycannon/shoot_ic" FPS 30 subtract Idle_Shoot_incendiarycannon_layer 0 weightlist upperbody
//		$sequence Idle_Shoot_incendiarycannon "Idle_Shoot_incendiarycannon_layer" delta
//		$sequence Walk_Shoot_incendiarycannon "Idle_Shoot_incendiarycannon_layer" delta
//		$sequence Run_Shoot_incendiarycannon "Idle_Shoot_incendiarycannon_layer" delta
//		$sequence Crouch_Idle_Shoot_incendiarycannon "Idle_Shoot_incendiarycannon_layer" delta
//		$sequence Crouch_Walk_Shoot_incendiarycannon "Idle_Shoot_incendiarycannon_layer" delta
//
//		$sequence Swim_Idle_Upper_incendiarycannon "incendiarycannon/swim_idle_ic" FPS 30 weightlist upperbody addlayer Swim_Aim_incendiarycannon		
//		$animation Swim_Shoot_incendiarycannon_layer "incendiarycannon/swim_shoot_ic" FPS 30 subtract Swim_Shoot_incendiarycannon_layer 0 weightlist upperbody
//		$sequence Swim_Upper_incendiarycannon "incendiarycannon/swim_ic" FPS 30 weightlist upperbody addlayer Swim_Aim_incendiarycannon
//
//
//		$animation Reload_incendiarycannon_layer "incendiarycannon/reload_ic" FPS 30 subtract Reload_incendiarycannon_layer 0 weightlist upperbody
//		$sequence Reload_incendiarycannon "Reload_incendiarycannon_layer" delta
//
//

	//-----------------
	//    NEW INCENDIARY CANNON (USES SUPERSHOTGUN ANIMS - COPIED/PASTED)
	//-----------------

		$sequence Jump_Upper_incendiarycannon "incendiarycannon/jump_incendiarycannon" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_incendiarycannon_aim_neutral incendiarycannon/swim_9aims_incendiarycannon frame 4 4
		$animation Swim_incendiarycannon_aim_up_left incendiarycannon/swim_9aims_incendiarycannon frame 0 0 subtract Swim_incendiarycannon_aim_neutral 0
		$animation Swim_incendiarycannon_aim_up_center incendiarycannon/swim_9aims_incendiarycannon frame 1 1 subtract Swim_incendiarycannon_aim_neutral 0
		$animation Swim_incendiarycannon_aim_up_right incendiarycannon/swim_9aims_incendiarycannon frame 2 2 subtract Swim_incendiarycannon_aim_neutral 0
		$animation Swim_incendiarycannon_aim_mid_left incendiarycannon/swim_9aims_incendiarycannon frame 3 3 subtract Swim_incendiarycannon_aim_neutral 0
		$animation Swim_incendiarycannon_aim_mid_center incendiarycannon/swim_9aims_incendiarycannon frame 4 4 subtract Swim_incendiarycannon_aim_neutral 0
		$animation Swim_incendiarycannon_aim_mid_right incendiarycannon/swim_9aims_incendiarycannon frame 5 5 subtract Swim_incendiarycannon_aim_neutral 0
		$animation Swim_incendiarycannon_aim_down_left incendiarycannon/swim_9aims_incendiarycannon frame 6 6 subtract Swim_incendiarycannon_aim_neutral 0
		$animation Swim_incendiarycannon_aim_down_center incendiarycannon/swim_9aims_incendiarycannon frame 7 7 subtract Swim_incendiarycannon_aim_neutral 0
		$animation Swim_incendiarycannon_aim_down_right incendiarycannon/swim_9aims_incendiarycannon frame 8 8 subtract Swim_incendiarycannon_aim_neutral 0


		$sequence Swim_Aim_incendiarycannon  { 
			Swim_incendiarycannon_aim_up_right Swim_incendiarycannon_aim_up_center Swim_incendiarycannon_aim_up_left 
			Swim_incendiarycannon_aim_mid_right Swim_incendiarycannon_aim_mid_center Swim_incendiarycannon_aim_mid_left 
			Swim_incendiarycannon_aim_down_right Swim_incendiarycannon_aim_down_center Swim_incendiarycannon_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_incendiarycannon_aim_neutral incendiarycannon/crouch_9aims_incendiarycannon frame 4 4
		$animation Crouch_incendiarycannon_aim_up_left incendiarycannon/crouch_9aims_incendiarycannon frame 0 0 subtract Crouch_incendiarycannon_aim_neutral 0
		$animation Crouch_incendiarycannon_aim_up_center incendiarycannon/crouch_9aims_incendiarycannon frame 1 1 subtract Crouch_incendiarycannon_aim_neutral 0
		$animation Crouch_incendiarycannon_aim_up_right incendiarycannon/crouch_9aims_incendiarycannon frame 2 2 subtract Crouch_incendiarycannon_aim_neutral 0
		$animation Crouch_incendiarycannon_aim_mid_left incendiarycannon/crouch_9aims_incendiarycannon frame 3 3 subtract Crouch_incendiarycannon_aim_neutral 0
		$animation Crouch_incendiarycannon_aim_mid_center incendiarycannon/crouch_9aims_incendiarycannon frame 4 4 subtract Crouch_incendiarycannon_aim_neutral 0
		$animation Crouch_incendiarycannon_aim_mid_right incendiarycannon/crouch_9aims_incendiarycannon frame 5 5 subtract Crouch_incendiarycannon_aim_neutral 0
		$animation Crouch_incendiarycannon_aim_down_left incendiarycannon/crouch_9aims_incendiarycannon frame 6 6 subtract Crouch_incendiarycannon_aim_neutral 0
		$animation Crouch_incendiarycannon_aim_down_center incendiarycannon/crouch_9aims_incendiarycannon frame 7 7 subtract Crouch_incendiarycannon_aim_neutral 0
		$animation Crouch_incendiarycannon_aim_down_right incendiarycannon/crouch_9aims_incendiarycannon frame 8 8 subtract Crouch_incendiarycannon_aim_neutral 0


		$sequence Crouch_Aim_incendiarycannon  { 
			Crouch_incendiarycannon_aim_up_right Crouch_incendiarycannon_aim_up_center Crouch_incendiarycannon_aim_up_left 
			Crouch_incendiarycannon_aim_mid_right Crouch_incendiarycannon_aim_mid_center Crouch_incendiarycannon_aim_mid_left 
			Crouch_incendiarycannon_aim_down_right Crouch_incendiarycannon_aim_down_center Crouch_incendiarycannon_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_incendiarycannon_aim_neutral incendiarycannon/run_9aims_incendiarycannon frame 4 4
		$animation Run_incendiarycannon_aim_up_left incendiarycannon/run_9aims_incendiarycannon frame 0 0 subtract Run_incendiarycannon_aim_neutral 0
		$animation Run_incendiarycannon_aim_up_center incendiarycannon/run_9aims_incendiarycannon frame 1 1 subtract Run_incendiarycannon_aim_neutral 0
		$animation Run_incendiarycannon_aim_up_right incendiarycannon/run_9aims_incendiarycannon frame 2 2 subtract Run_incendiarycannon_aim_neutral 0
		$animation Run_incendiarycannon_aim_mid_left incendiarycannon/run_9aims_incendiarycannon frame 3 3 subtract Run_incendiarycannon_aim_neutral 0
		$animation Run_incendiarycannon_aim_mid_center incendiarycannon/run_9aims_incendiarycannon frame 4 4 subtract Run_incendiarycannon_aim_neutral 0
		$animation Run_incendiarycannon_aim_mid_right incendiarycannon/run_9aims_incendiarycannon frame 5 5 subtract Run_incendiarycannon_aim_neutral 0
		$animation Run_incendiarycannon_aim_down_left incendiarycannon/run_9aims_incendiarycannon frame 6 6 subtract Run_incendiarycannon_aim_neutral 0
		$animation Run_incendiarycannon_aim_down_center incendiarycannon/run_9aims_incendiarycannon frame 7 7 subtract Run_incendiarycannon_aim_neutral 0
		$animation Run_incendiarycannon_aim_down_right incendiarycannon/run_9aims_incendiarycannon frame 8 8 subtract Run_incendiarycannon_aim_neutral 0

		$sequence Run_Aim_incendiarycannon  { 
			Run_incendiarycannon_aim_up_right Run_incendiarycannon_aim_up_center Run_incendiarycannon_aim_up_left 
			Run_incendiarycannon_aim_mid_right Run_incendiarycannon_aim_mid_center Run_incendiarycannon_aim_mid_left 
			Run_incendiarycannon_aim_down_right Run_incendiarycannon_aim_down_center Run_incendiarycannon_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_incendiarycannon "incendiarycannon/idle_incendiarycannon" FPS 30 weightlist upperbody addlayer Run_Aim_incendiarycannon
		$sequence Walk_Upper_incendiarycannon "incendiarycannon/walk_incendiarycannon" FPS 30 weightlist upperbody addlayer Run_Aim_incendiarycannon
		$sequence Run_Upper_incendiarycannon "incendiarycannon/run_incendiarycannon" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_incendiarycannon
		$sequence Crouch_Idle_Upper_incendiarycannon "incendiarycannon/crouch_idle_incendiarycannon" FPS 30 weightlist upperbody addlayer Crouch_Aim_incendiarycannon
		$sequence Crouch_Walk_Upper_incendiarycannon "incendiarycannon/crouch_walk_incendiarycannon" FPS 30 weightlist upperbody addlayer Crouch_Aim_incendiarycannon


		$animation Idle_Shoot_incendiarycannon_layer "incendiarycannon/shoot_incendiarycannon" FPS 30 subtract Idle_Shoot_incendiarycannon_layer 0 weightlist upperbody
		$sequence Idle_Shoot_incendiarycannon "Idle_Shoot_incendiarycannon_layer" delta
		$sequence Walk_Shoot_incendiarycannon "Idle_Shoot_incendiarycannon_layer" delta
		$sequence Run_Shoot_incendiarycannon "Idle_Shoot_incendiarycannon_layer" delta
		$sequence Crouch_Idle_Shoot_incendiarycannon "Idle_Shoot_incendiarycannon_layer" delta
		$sequence Crouch_Walk_Shoot_incendiarycannon "Idle_Shoot_incendiarycannon_layer" delta

		$sequence Swim_Idle_Upper_incendiarycannon "incendiarycannon/swim_idle_incendiarycannon" FPS 30 weightlist upperbody addlayer Swim_Aim_incendiarycannon		
		$animation Swim_Shoot_incendiarycannon_layer "incendiarycannon/swim_shoot_incendiarycannon" FPS 30 subtract Swim_Shoot_incendiarycannon_layer 0 weightlist upperbody
		$sequence Swim_Upper_incendiarycannon "incendiarycannon/swim_incendiarycannon" FPS 30 weightlist upperbody addlayer Swim_Aim_incendiarycannon


		$animation Reload_incendiarycannon_layer "incendiarycannon/reload_incendiarycannon" FPS 30 subtract Reload_incendiarycannon_layer 0 weightlist upperbody
		$sequence Reload_incendiarycannon "Reload_incendiarycannon_layer" delta



	//-----------------
	//	MEDKIT
	//-----------------

		$sequence Jump_Upper_medkit "medkit/jump_medkit" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_medkit_aim_neutral medkit/swim_9aims_medkit frame 4 4
		$animation Swim_medkit_aim_up_left medkit/swim_9aims_medkit frame 0 0 subtract Swim_medkit_aim_neutral 0
		$animation Swim_medkit_aim_up_center medkit/swim_9aims_medkit frame 1 1 subtract Swim_medkit_aim_neutral 0
		$animation Swim_medkit_aim_up_right medkit/swim_9aims_medkit frame 2 2 subtract Swim_medkit_aim_neutral 0
		$animation Swim_medkit_aim_mid_left medkit/swim_9aims_medkit frame 3 3 subtract Swim_medkit_aim_neutral 0
		$animation Swim_medkit_aim_mid_center medkit/swim_9aims_medkit frame 4 4 subtract Swim_medkit_aim_neutral 0
		$animation Swim_medkit_aim_mid_right medkit/swim_9aims_medkit frame 5 5 subtract Swim_medkit_aim_neutral 0
		$animation Swim_medkit_aim_down_left medkit/swim_9aims_medkit frame 6 6 subtract Swim_medkit_aim_neutral 0
		$animation Swim_medkit_aim_down_center medkit/swim_9aims_medkit frame 7 7 subtract Swim_medkit_aim_neutral 0
		$animation Swim_medkit_aim_down_right medkit/swim_9aims_medkit frame 8 8 subtract Swim_medkit_aim_neutral 0


		$sequence Swim_Aim_medkit  { 
			Swim_medkit_aim_up_right Swim_medkit_aim_up_center Swim_medkit_aim_up_left 
			Swim_medkit_aim_mid_right Swim_medkit_aim_mid_center Swim_medkit_aim_mid_left 
			Swim_medkit_aim_down_right Swim_medkit_aim_down_center Swim_medkit_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_medkit_aim_neutral medkit/crouch_9aims_medkit frame 4 4
		$animation Crouch_medkit_aim_up_left medkit/crouch_9aims_medkit frame 0 0 subtract Crouch_medkit_aim_neutral 0
		$animation Crouch_medkit_aim_up_center medkit/crouch_9aims_medkit frame 1 1 subtract Crouch_medkit_aim_neutral 0
		$animation Crouch_medkit_aim_up_right medkit/crouch_9aims_medkit frame 2 2 subtract Crouch_medkit_aim_neutral 0
		$animation Crouch_medkit_aim_mid_left medkit/crouch_9aims_medkit frame 3 3 subtract Crouch_medkit_aim_neutral 0
		$animation Crouch_medkit_aim_mid_center medkit/crouch_9aims_medkit frame 4 4 subtract Crouch_medkit_aim_neutral 0
		$animation Crouch_medkit_aim_mid_right medkit/crouch_9aims_medkit frame 5 5 subtract Crouch_medkit_aim_neutral 0
		$animation Crouch_medkit_aim_down_left medkit/crouch_9aims_medkit frame 6 6 subtract Crouch_medkit_aim_neutral 0
		$animation Crouch_medkit_aim_down_center medkit/crouch_9aims_medkit frame 7 7 subtract Crouch_medkit_aim_neutral 0
		$animation Crouch_medkit_aim_down_right medkit/crouch_9aims_medkit frame 8 8 subtract Crouch_medkit_aim_neutral 0


		$sequence Crouch_Aim_medkit  { 
			Crouch_medkit_aim_up_right Crouch_medkit_aim_up_center Crouch_medkit_aim_up_left 
			Crouch_medkit_aim_mid_right Crouch_medkit_aim_mid_center Crouch_medkit_aim_mid_left 
			Crouch_medkit_aim_down_right Crouch_medkit_aim_down_center Crouch_medkit_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_medkit_aim_neutral medkit/run_9aims_medkit frame 4 4
		$animation Run_medkit_aim_up_left medkit/run_9aims_medkit frame 0 0 subtract Run_medkit_aim_neutral 0
		$animation Run_medkit_aim_up_center medkit/run_9aims_medkit frame 1 1 subtract Run_medkit_aim_neutral 0
		$animation Run_medkit_aim_up_right medkit/run_9aims_medkit frame 2 2 subtract Run_medkit_aim_neutral 0
		$animation Run_medkit_aim_mid_left medkit/run_9aims_medkit frame 3 3 subtract Run_medkit_aim_neutral 0
		$animation Run_medkit_aim_mid_center medkit/run_9aims_medkit frame 4 4 subtract Run_medkit_aim_neutral 0
		$animation Run_medkit_aim_mid_right medkit/run_9aims_medkit frame 5 5 subtract Run_medkit_aim_neutral 0
		$animation Run_medkit_aim_down_left medkit/run_9aims_medkit frame 6 6 subtract Run_medkit_aim_neutral 0
		$animation Run_medkit_aim_down_center medkit/run_9aims_medkit frame 7 7 subtract Run_medkit_aim_neutral 0
		$animation Run_medkit_aim_down_right medkit/run_9aims_medkit frame 8 8 subtract Run_medkit_aim_neutral 0

		$sequence Run_Aim_medkit  { 
			Run_medkit_aim_up_right Run_medkit_aim_up_center Run_medkit_aim_up_left 
			Run_medkit_aim_mid_right Run_medkit_aim_mid_center Run_medkit_aim_mid_left 
			Run_medkit_aim_down_right Run_medkit_aim_down_center Run_medkit_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_medkit "medkit/idle_medkit" FPS 30 weightlist upperbody addlayer Run_Aim_medkit
		$sequence Walk_Upper_medkit "medkit/walk_medkit" FPS 30 weightlist upperbody addlayer Run_Aim_medkit
		$sequence Run_Upper_medkit "medkit/run_medkit" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_medkit
		$sequence Crouch_Idle_Upper_medkit "medkit/crouch_idle_medkit" FPS 30 weightlist upperbody addlayer Crouch_Aim_medkit
		$sequence Crouch_Walk_Upper_medkit "medkit/crouch_walk_medkit" FPS 30 weightlist upperbody addlayer Crouch_Aim_medkit


		$animation Idle_Shoot_medkit_layer "medkit/shoot_medkit" FPS 30 subtract Idle_Shoot_medkit_layer 0 weightlist upperbody
		$sequence Idle_Shoot_medkit "Idle_Shoot_medkit_layer" delta
		$sequence Walk_Shoot_medkit "Idle_Shoot_medkit_layer" delta
		$sequence Run_Shoot_medkit "Idle_Shoot_medkit_layer" delta
		$sequence Crouch_Idle_Shoot_medkit "Idle_Shoot_medkit_layer" delta
		$sequence Crouch_Walk_Shoot_medkit "Idle_Shoot_medkit_layer" delta

		$sequence Swim_Idle_Upper_medkit "medkit/swim_idle_medkit" FPS 30 weightlist upperbody addlayer Swim_Aim_medkit		
		$animation Swim_Shoot_medkit_layer "medkit/swim_shoot_medkit" FPS 30 subtract Swim_Shoot_medkit_layer 0 weightlist upperbody
		$sequence Swim_Upper_medkit "medkit/swim_medkit" FPS 30 weightlist upperbody addlayer Swim_Aim_medkit


		$animation Reload_medkit_layer "medkit/reload_medkit" FPS 30 subtract Reload_medkit_layer 0 weightlist upperbody
		$sequence Reload_medkit "Reload_medkit_layer" delta

	//-----------------
	//	SNIPER RIFLE
	//-----------------

		$sequence Jump_Upper_sniperrifle "sniperrifle/jump_sniperrifle" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_sniperrifle_aim_neutral sniperrifle/swim_9aims_sniperrifle frame 4 4
		$animation Swim_sniperrifle_aim_up_left sniperrifle/swim_9aims_sniperrifle frame 0 0 subtract Swim_sniperrifle_aim_neutral 0
		$animation Swim_sniperrifle_aim_up_center sniperrifle/swim_9aims_sniperrifle frame 1 1 subtract Swim_sniperrifle_aim_neutral 0
		$animation Swim_sniperrifle_aim_up_right sniperrifle/swim_9aims_sniperrifle frame 2 2 subtract Swim_sniperrifle_aim_neutral 0
		$animation Swim_sniperrifle_aim_mid_left sniperrifle/swim_9aims_sniperrifle frame 3 3 subtract Swim_sniperrifle_aim_neutral 0
		$animation Swim_sniperrifle_aim_mid_center sniperrifle/swim_9aims_sniperrifle frame 4 4 subtract Swim_sniperrifle_aim_neutral 0
		$animation Swim_sniperrifle_aim_mid_right sniperrifle/swim_9aims_sniperrifle frame 5 5 subtract Swim_sniperrifle_aim_neutral 0
		$animation Swim_sniperrifle_aim_down_left sniperrifle/swim_9aims_sniperrifle frame 6 6 subtract Swim_sniperrifle_aim_neutral 0
		$animation Swim_sniperrifle_aim_down_center sniperrifle/swim_9aims_sniperrifle frame 7 7 subtract Swim_sniperrifle_aim_neutral 0
		$animation Swim_sniperrifle_aim_down_right sniperrifle/swim_9aims_sniperrifle frame 8 8 subtract Swim_sniperrifle_aim_neutral 0


		$sequence Swim_Aim_sniperrifle  { 
			Swim_sniperrifle_aim_up_right Swim_sniperrifle_aim_up_center Swim_sniperrifle_aim_up_left 
			Swim_sniperrifle_aim_mid_right Swim_sniperrifle_aim_mid_center Swim_sniperrifle_aim_mid_left 
			Swim_sniperrifle_aim_down_right Swim_sniperrifle_aim_down_center Swim_sniperrifle_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_sniperrifle_aim_neutral sniperrifle/crouch_9aims_sniperrifle frame 4 4
		$animation Crouch_sniperrifle_aim_up_left sniperrifle/crouch_9aims_sniperrifle frame 0 0 subtract Crouch_sniperrifle_aim_neutral 0
		$animation Crouch_sniperrifle_aim_up_center sniperrifle/crouch_9aims_sniperrifle frame 1 1 subtract Crouch_sniperrifle_aim_neutral 0
		$animation Crouch_sniperrifle_aim_up_right sniperrifle/crouch_9aims_sniperrifle frame 2 2 subtract Crouch_sniperrifle_aim_neutral 0
		$animation Crouch_sniperrifle_aim_mid_left sniperrifle/crouch_9aims_sniperrifle frame 3 3 subtract Crouch_sniperrifle_aim_neutral 0
		$animation Crouch_sniperrifle_aim_mid_center sniperrifle/crouch_9aims_sniperrifle frame 4 4 subtract Crouch_sniperrifle_aim_neutral 0
		$animation Crouch_sniperrifle_aim_mid_right sniperrifle/crouch_9aims_sniperrifle frame 5 5 subtract Crouch_sniperrifle_aim_neutral 0
		$animation Crouch_sniperrifle_aim_down_left sniperrifle/crouch_9aims_sniperrifle frame 6 6 subtract Crouch_sniperrifle_aim_neutral 0
		$animation Crouch_sniperrifle_aim_down_center sniperrifle/crouch_9aims_sniperrifle frame 7 7 subtract Crouch_sniperrifle_aim_neutral 0
		$animation Crouch_sniperrifle_aim_down_right sniperrifle/crouch_9aims_sniperrifle frame 8 8 subtract Crouch_sniperrifle_aim_neutral 0


		$sequence Crouch_Aim_sniperrifle  { 
			Crouch_sniperrifle_aim_up_right Crouch_sniperrifle_aim_up_center Crouch_sniperrifle_aim_up_left 
			Crouch_sniperrifle_aim_mid_right Crouch_sniperrifle_aim_mid_center Crouch_sniperrifle_aim_mid_left 
			Crouch_sniperrifle_aim_down_right Crouch_sniperrifle_aim_down_center Crouch_sniperrifle_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_sniperrifle_aim_neutral sniperrifle/run_9aims_sniperrifle frame 4 4
		$animation Run_sniperrifle_aim_up_left sniperrifle/run_9aims_sniperrifle frame 0 0 subtract Run_sniperrifle_aim_neutral 0
		$animation Run_sniperrifle_aim_up_center sniperrifle/run_9aims_sniperrifle frame 1 1 subtract Run_sniperrifle_aim_neutral 0
		$animation Run_sniperrifle_aim_up_right sniperrifle/run_9aims_sniperrifle frame 2 2 subtract Run_sniperrifle_aim_neutral 0
		$animation Run_sniperrifle_aim_mid_left sniperrifle/run_9aims_sniperrifle frame 3 3 subtract Run_sniperrifle_aim_neutral 0
		$animation Run_sniperrifle_aim_mid_center sniperrifle/run_9aims_sniperrifle frame 4 4 subtract Run_sniperrifle_aim_neutral 0
		$animation Run_sniperrifle_aim_mid_right sniperrifle/run_9aims_sniperrifle frame 5 5 subtract Run_sniperrifle_aim_neutral 0
		$animation Run_sniperrifle_aim_down_left sniperrifle/run_9aims_sniperrifle frame 6 6 subtract Run_sniperrifle_aim_neutral 0
		$animation Run_sniperrifle_aim_down_center sniperrifle/run_9aims_sniperrifle frame 7 7 subtract Run_sniperrifle_aim_neutral 0
		$animation Run_sniperrifle_aim_down_right sniperrifle/run_9aims_sniperrifle frame 8 8 subtract Run_sniperrifle_aim_neutral 0

		$sequence Run_Aim_sniperrifle  { 
			Run_sniperrifle_aim_up_right Run_sniperrifle_aim_up_center Run_sniperrifle_aim_up_left 
			Run_sniperrifle_aim_mid_right Run_sniperrifle_aim_mid_center Run_sniperrifle_aim_mid_left 
			Run_sniperrifle_aim_down_right Run_sniperrifle_aim_down_center Run_sniperrifle_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_sniperrifle "sniperrifle/idle_sniperrifle" FPS 30 weightlist upperbody addlayer Run_Aim_sniperrifle
		$sequence Walk_Upper_sniperrifle "sniperrifle/walk_sniperrifle" FPS 30 weightlist upperbody addlayer Run_Aim_sniperrifle
		$sequence Run_Upper_sniperrifle "sniperrifle/run_sniperrifle" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_sniperrifle
		$sequence Crouch_Idle_Upper_sniperrifle "sniperrifle/crouch_idle_sniperrifle" FPS 30 weightlist upperbody addlayer Crouch_Aim_sniperrifle
		$sequence Crouch_Walk_Upper_sniperrifle "sniperrifle/crouch_walk_sniperrifle" FPS 30 weightlist upperbody addlayer Crouch_Aim_sniperrifle


		$animation Idle_Shoot_sniperrifle_layer "sniperrifle/shoot_sniperrifle" FPS 30 subtract Idle_Shoot_sniperrifle_layer 0 weightlist upperbody
		$sequence Idle_Shoot_sniperrifle "Idle_Shoot_sniperrifle_layer" delta
		$sequence Walk_Shoot_sniperrifle "Idle_Shoot_sniperrifle_layer" delta
		$sequence Run_Shoot_sniperrifle "Idle_Shoot_sniperrifle_layer" delta
		$sequence Crouch_Idle_Shoot_sniperrifle "Idle_Shoot_sniperrifle_layer" delta
		$sequence Crouch_Walk_Shoot_sniperrifle "Idle_Shoot_sniperrifle_layer" delta

		$sequence Swim_Idle_Upper_sniperrifle "sniperrifle/swim_idle_sniperrifle" FPS 30 weightlist upperbody addlayer Swim_Aim_sniperrifle		
		$animation Swim_Shoot_sniperrifle_layer "sniperrifle/swim_shoot_sniperrifle" FPS 30 subtract Swim_Shoot_sniperrifle_layer 0 weightlist upperbody
		$sequence Swim_Upper_sniperrifle "sniperrifle/swim_sniperrifle" FPS 30 weightlist upperbody addlayer Swim_Aim_sniperrifle


		$animation Reload_sniperrifle_layer "sniperrifle/reload_sniperrifle" FPS 30 subtract Reload_sniperrifle_layer 0 weightlist upperbody
		$sequence Reload_sniperrifle "Reload_sniperrifle_layer" delta


	//-----------------
	//	AUTO RIFLE
	//-----------------

		$sequence Jump_Upper_autorifle "autorifle/jump_autorifle" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_autorifle_aim_neutral autorifle/swim_9aims_autorifle frame 4 4
		$animation Swim_autorifle_aim_up_left autorifle/swim_9aims_autorifle frame 0 0 subtract Swim_autorifle_aim_neutral 0
		$animation Swim_autorifle_aim_up_center autorifle/swim_9aims_autorifle frame 1 1 subtract Swim_autorifle_aim_neutral 0
		$animation Swim_autorifle_aim_up_right autorifle/swim_9aims_autorifle frame 2 2 subtract Swim_autorifle_aim_neutral 0
		$animation Swim_autorifle_aim_mid_left autorifle/swim_9aims_autorifle frame 3 3 subtract Swim_autorifle_aim_neutral 0
		$animation Swim_autorifle_aim_mid_center autorifle/swim_9aims_autorifle frame 4 4 subtract Swim_autorifle_aim_neutral 0
		$animation Swim_autorifle_aim_mid_right autorifle/swim_9aims_autorifle frame 5 5 subtract Swim_autorifle_aim_neutral 0
		$animation Swim_autorifle_aim_down_left autorifle/swim_9aims_autorifle frame 6 6 subtract Swim_autorifle_aim_neutral 0
		$animation Swim_autorifle_aim_down_center autorifle/swim_9aims_autorifle frame 7 7 subtract Swim_autorifle_aim_neutral 0
		$animation Swim_autorifle_aim_down_right autorifle/swim_9aims_autorifle frame 8 8 subtract Swim_autorifle_aim_neutral 0


		$sequence Swim_Aim_autorifle  { 
			Swim_autorifle_aim_up_right Swim_autorifle_aim_up_center Swim_autorifle_aim_up_left 
			Swim_autorifle_aim_mid_right Swim_autorifle_aim_mid_center Swim_autorifle_aim_mid_left 
			Swim_autorifle_aim_down_right Swim_autorifle_aim_down_center Swim_autorifle_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_autorifle_aim_neutral autorifle/crouch_9aims_autorifle frame 4 4
		$animation Crouch_autorifle_aim_up_left autorifle/crouch_9aims_autorifle frame 0 0 subtract Crouch_autorifle_aim_neutral 0
		$animation Crouch_autorifle_aim_up_center autorifle/crouch_9aims_autorifle frame 1 1 subtract Crouch_autorifle_aim_neutral 0
		$animation Crouch_autorifle_aim_up_right autorifle/crouch_9aims_autorifle frame 2 2 subtract Crouch_autorifle_aim_neutral 0
		$animation Crouch_autorifle_aim_mid_left autorifle/crouch_9aims_autorifle frame 3 3 subtract Crouch_autorifle_aim_neutral 0
		$animation Crouch_autorifle_aim_mid_center autorifle/crouch_9aims_autorifle frame 4 4 subtract Crouch_autorifle_aim_neutral 0
		$animation Crouch_autorifle_aim_mid_right autorifle/crouch_9aims_autorifle frame 5 5 subtract Crouch_autorifle_aim_neutral 0
		$animation Crouch_autorifle_aim_down_left autorifle/crouch_9aims_autorifle frame 6 6 subtract Crouch_autorifle_aim_neutral 0
		$animation Crouch_autorifle_aim_down_center autorifle/crouch_9aims_autorifle frame 7 7 subtract Crouch_autorifle_aim_neutral 0
		$animation Crouch_autorifle_aim_down_right autorifle/crouch_9aims_autorifle frame 8 8 subtract Crouch_autorifle_aim_neutral 0


		$sequence Crouch_Aim_autorifle  { 
			Crouch_autorifle_aim_up_right Crouch_autorifle_aim_up_center Crouch_autorifle_aim_up_left 
			Crouch_autorifle_aim_mid_right Crouch_autorifle_aim_mid_center Crouch_autorifle_aim_mid_left 
			Crouch_autorifle_aim_down_right Crouch_autorifle_aim_down_center Crouch_autorifle_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_autorifle_aim_neutral autorifle/run_9aims_autorifle frame 4 4
		$animation Run_autorifle_aim_up_left autorifle/run_9aims_autorifle frame 0 0 subtract Run_autorifle_aim_neutral 0
		$animation Run_autorifle_aim_up_center autorifle/run_9aims_autorifle frame 1 1 subtract Run_autorifle_aim_neutral 0
		$animation Run_autorifle_aim_up_right autorifle/run_9aims_autorifle frame 2 2 subtract Run_autorifle_aim_neutral 0
		$animation Run_autorifle_aim_mid_left autorifle/run_9aims_autorifle frame 3 3 subtract Run_autorifle_aim_neutral 0
		$animation Run_autorifle_aim_mid_center autorifle/run_9aims_autorifle frame 4 4 subtract Run_autorifle_aim_neutral 0
		$animation Run_autorifle_aim_mid_right autorifle/run_9aims_autorifle frame 5 5 subtract Run_autorifle_aim_neutral 0
		$animation Run_autorifle_aim_down_left autorifle/run_9aims_autorifle frame 6 6 subtract Run_autorifle_aim_neutral 0
		$animation Run_autorifle_aim_down_center autorifle/run_9aims_autorifle frame 7 7 subtract Run_autorifle_aim_neutral 0
		$animation Run_autorifle_aim_down_right autorifle/run_9aims_autorifle frame 8 8 subtract Run_autorifle_aim_neutral 0

		$sequence Run_Aim_autorifle  { 
			Run_autorifle_aim_up_right Run_autorifle_aim_up_center Run_autorifle_aim_up_left 
			Run_autorifle_aim_mid_right Run_autorifle_aim_mid_center Run_autorifle_aim_mid_left 
			Run_autorifle_aim_down_right Run_autorifle_aim_down_center Run_autorifle_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_autorifle "autorifle/idle_autorifle" FPS 30 weightlist upperbody addlayer Run_Aim_autorifle
		$sequence Walk_Upper_autorifle "autorifle/walk_autorifle" FPS 30 weightlist upperbody addlayer Run_Aim_autorifle
		$sequence Run_Upper_autorifle "autorifle/run_autorifle" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_autorifle
		$sequence Crouch_Idle_Upper_autorifle "autorifle/crouch_idle_autorifle" FPS 30 weightlist upperbody addlayer Crouch_Aim_autorifle
		$sequence Crouch_Walk_Upper_autorifle "autorifle/crouch_walk_autorifle" FPS 30 weightlist upperbody addlayer Crouch_Aim_autorifle


		$animation Idle_Shoot_autorifle_layer "autorifle/shoot_autorifle" FPS 30 subtract Idle_Shoot_autorifle_layer 0 weightlist upperbody
		$sequence Idle_Shoot_autorifle "Idle_Shoot_autorifle_layer" delta
		$sequence Walk_Shoot_autorifle "Idle_Shoot_autorifle_layer" delta
		$sequence Run_Shoot_autorifle "Idle_Shoot_autorifle_layer" delta
		$sequence Crouch_Idle_Shoot_autorifle "Idle_Shoot_autorifle_layer" delta
		$sequence Crouch_Walk_Shoot_autorifle "Idle_Shoot_autorifle_layer" delta

		$sequence Swim_Idle_Upper_autorifle "autorifle/swim_idle_autorifle" FPS 30 weightlist upperbody addlayer Swim_Aim_autorifle		
		$animation Swim_Shoot_autorifle_layer "autorifle/swim_shoot_autorifle" FPS 30 subtract Swim_Shoot_autorifle_layer 0 weightlist upperbody
		$sequence Swim_Upper_autorifle "autorifle/swim_autorifle" FPS 30 weightlist upperbody addlayer Swim_Aim_autorifle


		$animation Reload_autorifle_layer "autorifle/reload_autorifle" FPS 30 subtract Reload_autorifle_layer 0 weightlist upperbody
		$sequence Reload_autorifle "Reload_autorifle_layer" delta


	//-----------------
	//	DET PACK
	//-----------------
		
		$sequence Jump_Upper_detpack "detpack/jump_detpack" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_detpack_aim_neutral detpack/swim_9aims_detpack frame 4 4
		$animation Swim_detpack_aim_up_left detpack/swim_9aims_detpack frame 0 0 subtract Swim_detpack_aim_neutral 0
		$animation Swim_detpack_aim_up_center detpack/swim_9aims_detpack frame 1 1 subtract Swim_detpack_aim_neutral 0
		$animation Swim_detpack_aim_up_right detpack/swim_9aims_detpack frame 2 2 subtract Swim_detpack_aim_neutral 0
		$animation Swim_detpack_aim_mid_left detpack/swim_9aims_detpack frame 3 3 subtract Swim_detpack_aim_neutral 0
		$animation Swim_detpack_aim_mid_center detpack/swim_9aims_detpack frame 4 4 subtract Swim_detpack_aim_neutral 0
		$animation Swim_detpack_aim_mid_right detpack/swim_9aims_detpack frame 5 5 subtract Swim_detpack_aim_neutral 0
		$animation Swim_detpack_aim_down_left detpack/swim_9aims_detpack frame 6 6 subtract Swim_detpack_aim_neutral 0
		$animation Swim_detpack_aim_down_center detpack/swim_9aims_detpack frame 7 7 subtract Swim_detpack_aim_neutral 0
		$animation Swim_detpack_aim_down_right detpack/swim_9aims_detpack frame 8 8 subtract Swim_detpack_aim_neutral 0


		$sequence Swim_Aim_detpack  { 
			Swim_detpack_aim_up_right Swim_detpack_aim_up_center Swim_detpack_aim_up_left 
			Swim_detpack_aim_mid_right Swim_detpack_aim_mid_center Swim_detpack_aim_mid_left 
			Swim_detpack_aim_down_right Swim_detpack_aim_down_center Swim_detpack_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_detpack_aim_neutral detpack/crouch_9aims_detpack frame 4 4
		$animation Crouch_detpack_aim_up_left detpack/crouch_9aims_detpack frame 0 0 subtract Crouch_detpack_aim_neutral 0
		$animation Crouch_detpack_aim_up_center detpack/crouch_9aims_detpack frame 1 1 subtract Crouch_detpack_aim_neutral 0
		$animation Crouch_detpack_aim_up_right detpack/crouch_9aims_detpack frame 2 2 subtract Crouch_detpack_aim_neutral 0
		$animation Crouch_detpack_aim_mid_left detpack/crouch_9aims_detpack frame 3 3 subtract Crouch_detpack_aim_neutral 0
		$animation Crouch_detpack_aim_mid_center detpack/crouch_9aims_detpack frame 4 4 subtract Crouch_detpack_aim_neutral 0
		$animation Crouch_detpack_aim_mid_right detpack/crouch_9aims_detpack frame 5 5 subtract Crouch_detpack_aim_neutral 0
		$animation Crouch_detpack_aim_down_left detpack/crouch_9aims_detpack frame 6 6 subtract Crouch_detpack_aim_neutral 0
		$animation Crouch_detpack_aim_down_center detpack/crouch_9aims_detpack frame 7 7 subtract Crouch_detpack_aim_neutral 0
		$animation Crouch_detpack_aim_down_right detpack/crouch_9aims_detpack frame 8 8 subtract Crouch_detpack_aim_neutral 0


		$sequence Crouch_Aim_detpack  { 
			Crouch_detpack_aim_up_right Crouch_detpack_aim_up_center Crouch_detpack_aim_up_left 
			Crouch_detpack_aim_mid_right Crouch_detpack_aim_mid_center Crouch_detpack_aim_mid_left 
			Crouch_detpack_aim_down_right Crouch_detpack_aim_down_center Crouch_detpack_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_detpack_aim_neutral detpack/run_9aims_detpack frame 4 4
		$animation Run_detpack_aim_up_left detpack/run_9aims_detpack frame 0 0 subtract Run_detpack_aim_neutral 0
		$animation Run_detpack_aim_up_center detpack/run_9aims_detpack frame 1 1 subtract Run_detpack_aim_neutral 0
		$animation Run_detpack_aim_up_right detpack/run_9aims_detpack frame 2 2 subtract Run_detpack_aim_neutral 0
		$animation Run_detpack_aim_mid_left detpack/run_9aims_detpack frame 3 3 subtract Run_detpack_aim_neutral 0
		$animation Run_detpack_aim_mid_center detpack/run_9aims_detpack frame 4 4 subtract Run_detpack_aim_neutral 0
		$animation Run_detpack_aim_mid_right detpack/run_9aims_detpack frame 5 5 subtract Run_detpack_aim_neutral 0
		$animation Run_detpack_aim_down_left detpack/run_9aims_detpack frame 6 6 subtract Run_detpack_aim_neutral 0
		$animation Run_detpack_aim_down_center detpack/run_9aims_detpack frame 7 7 subtract Run_detpack_aim_neutral 0
		$animation Run_detpack_aim_down_right detpack/run_9aims_detpack frame 8 8 subtract Run_detpack_aim_neutral 0

		$sequence Run_Aim_detpack  { 
			Run_detpack_aim_up_right Run_detpack_aim_up_center Run_detpack_aim_up_left 
			Run_detpack_aim_mid_right Run_detpack_aim_mid_center Run_detpack_aim_mid_left 
			Run_detpack_aim_down_right Run_detpack_aim_down_center Run_detpack_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_detpack "detpack/idle_detpack" FPS 30 weightlist upperbody addlayer Run_Aim_detpack
		$sequence Walk_Upper_detpack "detpack/walk_detpack" FPS 30 weightlist upperbody addlayer Run_Aim_detpack
		$sequence Run_Upper_detpack "detpack/run_detpack" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_detpack
		$sequence Crouch_Idle_Upper_detpack "detpack/crouch_idle_detpack" FPS 30 weightlist upperbody addlayer Crouch_Aim_detpack
		$sequence Crouch_Walk_Upper_detpack "detpack/crouch_walk_detpack" FPS 30 weightlist upperbody addlayer Crouch_Aim_detpack


		$animation Idle_Shoot_detpack_layer "detpack/shoot_detpack" FPS 30 subtract Idle_Shoot_detpack_layer 0 weightlist upperbody
		$sequence Idle_Shoot_detpack "Idle_Shoot_detpack_layer" delta
		$sequence Walk_Shoot_detpack "Idle_Shoot_detpack_layer" delta
		$sequence Run_Shoot_detpack "Idle_Shoot_detpack_layer" delta
		$sequence Crouch_Idle_Shoot_detpack "Idle_Shoot_detpack_layer" delta
		$sequence Crouch_Walk_Shoot_detpack "Idle_Shoot_detpack_layer" delta

		$sequence Swim_Idle_Upper_detpack "detpack/swim_idle_detpack" FPS 30 weightlist upperbody addlayer Swim_Aim_detpack		
		$animation Swim_Shoot_detpack_layer "detpack/swim_shoot_detpack" FPS 30 subtract Swim_Shoot_detpack_layer 0 weightlist upperbody
		$sequence Swim_Upper_detpack "detpack/swim_detpack" FPS 30 weightlist upperbody addlayer Swim_Aim_detpack


		$animation Reload_detpack_layer "detpack/reload_detpack" FPS 30 subtract Reload_detpack_layer 0 weightlist upperbody
		$sequence Reload_detpack "Reload_detpack_layer" delta




	//-----------------
	//	ASSAULT CANNON
	//-----------------

		$sequence Jump_Upper_assaultcannon "assaultcannon/jump_assaultcannon" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_assaultcannon_aim_neutral assaultcannon/swim_9aims_assaultcannon frame 4 4
		$animation Swim_assaultcannon_aim_up_left assaultcannon/swim_9aims_assaultcannon frame 0 0 subtract Swim_assaultcannon_aim_neutral 0
		$animation Swim_assaultcannon_aim_up_center assaultcannon/swim_9aims_assaultcannon frame 1 1 subtract Swim_assaultcannon_aim_neutral 0
		$animation Swim_assaultcannon_aim_up_right assaultcannon/swim_9aims_assaultcannon frame 2 2 subtract Swim_assaultcannon_aim_neutral 0
		$animation Swim_assaultcannon_aim_mid_left assaultcannon/swim_9aims_assaultcannon frame 3 3 subtract Swim_assaultcannon_aim_neutral 0
		$animation Swim_assaultcannon_aim_mid_center assaultcannon/swim_9aims_assaultcannon frame 4 4 subtract Swim_assaultcannon_aim_neutral 0
		$animation Swim_assaultcannon_aim_mid_right assaultcannon/swim_9aims_assaultcannon frame 5 5 subtract Swim_assaultcannon_aim_neutral 0
		$animation Swim_assaultcannon_aim_down_left assaultcannon/swim_9aims_assaultcannon frame 6 6 subtract Swim_assaultcannon_aim_neutral 0
		$animation Swim_assaultcannon_aim_down_center assaultcannon/swim_9aims_assaultcannon frame 7 7 subtract Swim_assaultcannon_aim_neutral 0
		$animation Swim_assaultcannon_aim_down_right assaultcannon/swim_9aims_assaultcannon frame 8 8 subtract Swim_assaultcannon_aim_neutral 0


		$sequence Swim_Aim_assaultcannon  { 
			Swim_assaultcannon_aim_up_right Swim_assaultcannon_aim_up_center Swim_assaultcannon_aim_up_left 
			Swim_assaultcannon_aim_mid_right Swim_assaultcannon_aim_mid_center Swim_assaultcannon_aim_mid_left 
			Swim_assaultcannon_aim_down_right Swim_assaultcannon_aim_down_center Swim_assaultcannon_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_assaultcannon_aim_neutral assaultcannon/crouch_9aims_assaultcannon frame 4 4
		$animation Crouch_assaultcannon_aim_up_left assaultcannon/crouch_9aims_assaultcannon frame 0 0 subtract Crouch_assaultcannon_aim_neutral 0
		$animation Crouch_assaultcannon_aim_up_center assaultcannon/crouch_9aims_assaultcannon frame 1 1 subtract Crouch_assaultcannon_aim_neutral 0
		$animation Crouch_assaultcannon_aim_up_right assaultcannon/crouch_9aims_assaultcannon frame 2 2 subtract Crouch_assaultcannon_aim_neutral 0
		$animation Crouch_assaultcannon_aim_mid_left assaultcannon/crouch_9aims_assaultcannon frame 3 3 subtract Crouch_assaultcannon_aim_neutral 0
		$animation Crouch_assaultcannon_aim_mid_center assaultcannon/crouch_9aims_assaultcannon frame 4 4 subtract Crouch_assaultcannon_aim_neutral 0
		$animation Crouch_assaultcannon_aim_mid_right assaultcannon/crouch_9aims_assaultcannon frame 5 5 subtract Crouch_assaultcannon_aim_neutral 0
		$animation Crouch_assaultcannon_aim_down_left assaultcannon/crouch_9aims_assaultcannon frame 6 6 subtract Crouch_assaultcannon_aim_neutral 0
		$animation Crouch_assaultcannon_aim_down_center assaultcannon/crouch_9aims_assaultcannon frame 7 7 subtract Crouch_assaultcannon_aim_neutral 0
		$animation Crouch_assaultcannon_aim_down_right assaultcannon/crouch_9aims_assaultcannon frame 8 8 subtract Crouch_assaultcannon_aim_neutral 0


		$sequence Crouch_Aim_assaultcannon  { 
			Crouch_assaultcannon_aim_up_right Crouch_assaultcannon_aim_up_center Crouch_assaultcannon_aim_up_left 
			Crouch_assaultcannon_aim_mid_right Crouch_assaultcannon_aim_mid_center Crouch_assaultcannon_aim_mid_left 
			Crouch_assaultcannon_aim_down_right Crouch_assaultcannon_aim_down_center Crouch_assaultcannon_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_assaultcannon_aim_neutral assaultcannon/run_9aims_assaultcannon frame 4 4
		$animation Run_assaultcannon_aim_up_left assaultcannon/run_9aims_assaultcannon frame 0 0 subtract Run_assaultcannon_aim_neutral 0
		$animation Run_assaultcannon_aim_up_center assaultcannon/run_9aims_assaultcannon frame 1 1 subtract Run_assaultcannon_aim_neutral 0
		$animation Run_assaultcannon_aim_up_right assaultcannon/run_9aims_assaultcannon frame 2 2 subtract Run_assaultcannon_aim_neutral 0
		$animation Run_assaultcannon_aim_mid_left assaultcannon/run_9aims_assaultcannon frame 3 3 subtract Run_assaultcannon_aim_neutral 0
		$animation Run_assaultcannon_aim_mid_center assaultcannon/run_9aims_assaultcannon frame 4 4 subtract Run_assaultcannon_aim_neutral 0
		$animation Run_assaultcannon_aim_mid_right assaultcannon/run_9aims_assaultcannon frame 5 5 subtract Run_assaultcannon_aim_neutral 0
		$animation Run_assaultcannon_aim_down_left assaultcannon/run_9aims_assaultcannon frame 6 6 subtract Run_assaultcannon_aim_neutral 0
		$animation Run_assaultcannon_aim_down_center assaultcannon/run_9aims_assaultcannon frame 7 7 subtract Run_assaultcannon_aim_neutral 0
		$animation Run_assaultcannon_aim_down_right assaultcannon/run_9aims_assaultcannon frame 8 8 subtract Run_assaultcannon_aim_neutral 0

		$sequence Run_Aim_assaultcannon  { 
			Run_assaultcannon_aim_up_right Run_assaultcannon_aim_up_center Run_assaultcannon_aim_up_left 
			Run_assaultcannon_aim_mid_right Run_assaultcannon_aim_mid_center Run_assaultcannon_aim_mid_left 
			Run_assaultcannon_aim_down_right Run_assaultcannon_aim_down_center Run_assaultcannon_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_assaultcannon "assaultcannon/idle_assaultcannon" FPS 30 weightlist upperbody addlayer Run_Aim_assaultcannon
		$sequence Walk_Upper_assaultcannon "assaultcannon/walk_assaultcannon" FPS 30 weightlist upperbody addlayer Run_Aim_assaultcannon
		$sequence Run_Upper_assaultcannon "assaultcannon/run_assaultcannon" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_assaultcannon
		$sequence Crouch_Idle_Upper_assaultcannon "assaultcannon/crouch_idle_assaultcannon" FPS 30 weightlist upperbody addlayer Crouch_Aim_assaultcannon
		$sequence Crouch_Walk_Upper_assaultcannon "assaultcannon/crouch_walk_assaultcannon" FPS 30 weightlist upperbody addlayer Crouch_Aim_assaultcannon


		$animation Idle_Shoot_assaultcannon_layer "assaultcannon/shoot_assaultcannon" FPS 30 subtract Idle_Shoot_assaultcannon_layer 0 weightlist upperbody
		$sequence Idle_Shoot_assaultcannon "Idle_Shoot_assaultcannon_layer" delta
		$sequence Walk_Shoot_assaultcannon "Idle_Shoot_assaultcannon_layer" delta
		$sequence Run_Shoot_assaultcannon "Idle_Shoot_assaultcannon_layer" delta
		$sequence Crouch_Idle_Shoot_assaultcannon "Idle_Shoot_assaultcannon_layer" delta
		$sequence Crouch_Walk_Shoot_assaultcannon "Idle_Shoot_assaultcannon_layer" delta

		$sequence Swim_Idle_Upper_assaultcannon "assaultcannon/swim_idle_assaultcannon" FPS 30 weightlist upperbody addlayer Swim_Aim_assaultcannon		
		$animation Swim_Shoot_assaultcannon_layer "assaultcannon/swim_shoot_assaultcannon" FPS 30 subtract Swim_Shoot_assaultcannon_layer 0 weightlist upperbody
		$sequence Swim_Upper_assaultcannon "assaultcannon/swim_assaultcannon" FPS 30 weightlist upperbody addlayer Swim_Aim_assaultcannon


		$animation Reload_assaultcannon_layer "assaultcannon/reload_assaultcannon" FPS 30 subtract Reload_assaultcannon_layer 0 weightlist upperbody
		$sequence Reload_assaultcannon "Reload_assaultcannon_layer" delta



	//-----------------
	//	DISPENSER
	//-----------------

		$sequence Jump_Upper_dispenser "dispenser/jump_dispenser" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_dispenser_aim_neutral dispenser/swim_9aims_dispenser frame 4 4
		$animation Swim_dispenser_aim_up_left dispenser/swim_9aims_dispenser frame 0 0 subtract Swim_dispenser_aim_neutral 0
		$animation Swim_dispenser_aim_up_center dispenser/swim_9aims_dispenser frame 1 1 subtract Swim_dispenser_aim_neutral 0
		$animation Swim_dispenser_aim_up_right dispenser/swim_9aims_dispenser frame 2 2 subtract Swim_dispenser_aim_neutral 0
		$animation Swim_dispenser_aim_mid_left dispenser/swim_9aims_dispenser frame 3 3 subtract Swim_dispenser_aim_neutral 0
		$animation Swim_dispenser_aim_mid_center dispenser/swim_9aims_dispenser frame 4 4 subtract Swim_dispenser_aim_neutral 0
		$animation Swim_dispenser_aim_mid_right dispenser/swim_9aims_dispenser frame 5 5 subtract Swim_dispenser_aim_neutral 0
		$animation Swim_dispenser_aim_down_left dispenser/swim_9aims_dispenser frame 6 6 subtract Swim_dispenser_aim_neutral 0
		$animation Swim_dispenser_aim_down_center dispenser/swim_9aims_dispenser frame 7 7 subtract Swim_dispenser_aim_neutral 0
		$animation Swim_dispenser_aim_down_right dispenser/swim_9aims_dispenser frame 8 8 subtract Swim_dispenser_aim_neutral 0


		$sequence Swim_Aim_dispenser  { 
			Swim_dispenser_aim_up_right Swim_dispenser_aim_up_center Swim_dispenser_aim_up_left 
			Swim_dispenser_aim_mid_right Swim_dispenser_aim_mid_center Swim_dispenser_aim_mid_left 
			Swim_dispenser_aim_down_right Swim_dispenser_aim_down_center Swim_dispenser_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_dispenser_aim_neutral dispenser/crouch_9aims_dispenser frame 4 4
		$animation Crouch_dispenser_aim_up_left dispenser/crouch_9aims_dispenser frame 0 0 subtract Crouch_dispenser_aim_neutral 0
		$animation Crouch_dispenser_aim_up_center dispenser/crouch_9aims_dispenser frame 1 1 subtract Crouch_dispenser_aim_neutral 0
		$animation Crouch_dispenser_aim_up_right dispenser/crouch_9aims_dispenser frame 2 2 subtract Crouch_dispenser_aim_neutral 0
		$animation Crouch_dispenser_aim_mid_left dispenser/crouch_9aims_dispenser frame 3 3 subtract Crouch_dispenser_aim_neutral 0
		$animation Crouch_dispenser_aim_mid_center dispenser/crouch_9aims_dispenser frame 4 4 subtract Crouch_dispenser_aim_neutral 0
		$animation Crouch_dispenser_aim_mid_right dispenser/crouch_9aims_dispenser frame 5 5 subtract Crouch_dispenser_aim_neutral 0
		$animation Crouch_dispenser_aim_down_left dispenser/crouch_9aims_dispenser frame 6 6 subtract Crouch_dispenser_aim_neutral 0
		$animation Crouch_dispenser_aim_down_center dispenser/crouch_9aims_dispenser frame 7 7 subtract Crouch_dispenser_aim_neutral 0
		$animation Crouch_dispenser_aim_down_right dispenser/crouch_9aims_dispenser frame 8 8 subtract Crouch_dispenser_aim_neutral 0


		$sequence Crouch_Aim_dispenser  { 
			Crouch_dispenser_aim_up_right Crouch_dispenser_aim_up_center Crouch_dispenser_aim_up_left 
			Crouch_dispenser_aim_mid_right Crouch_dispenser_aim_mid_center Crouch_dispenser_aim_mid_left 
			Crouch_dispenser_aim_down_right Crouch_dispenser_aim_down_center Crouch_dispenser_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_dispenser_aim_neutral dispenser/run_9aims_dispenser frame 4 4
		$animation Run_dispenser_aim_up_left dispenser/run_9aims_dispenser frame 0 0 subtract Run_dispenser_aim_neutral 0
		$animation Run_dispenser_aim_up_center dispenser/run_9aims_dispenser frame 1 1 subtract Run_dispenser_aim_neutral 0
		$animation Run_dispenser_aim_up_right dispenser/run_9aims_dispenser frame 2 2 subtract Run_dispenser_aim_neutral 0
		$animation Run_dispenser_aim_mid_left dispenser/run_9aims_dispenser frame 3 3 subtract Run_dispenser_aim_neutral 0
		$animation Run_dispenser_aim_mid_center dispenser/run_9aims_dispenser frame 4 4 subtract Run_dispenser_aim_neutral 0
		$animation Run_dispenser_aim_mid_right dispenser/run_9aims_dispenser frame 5 5 subtract Run_dispenser_aim_neutral 0
		$animation Run_dispenser_aim_down_left dispenser/run_9aims_dispenser frame 6 6 subtract Run_dispenser_aim_neutral 0
		$animation Run_dispenser_aim_down_center dispenser/run_9aims_dispenser frame 7 7 subtract Run_dispenser_aim_neutral 0
		$animation Run_dispenser_aim_down_right dispenser/run_9aims_dispenser frame 8 8 subtract Run_dispenser_aim_neutral 0

		$sequence Run_Aim_dispenser  { 
			Run_dispenser_aim_up_right Run_dispenser_aim_up_center Run_dispenser_aim_up_left 
			Run_dispenser_aim_mid_right Run_dispenser_aim_mid_center Run_dispenser_aim_mid_left 
			Run_dispenser_aim_down_right Run_dispenser_aim_down_center Run_dispenser_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_dispenser "dispenser/idle_dispenser" FPS 30 weightlist upperbody addlayer Run_Aim_dispenser
		$sequence Walk_Upper_dispenser "dispenser/walk_dispenser" FPS 30 weightlist upperbody addlayer Run_Aim_dispenser
		$sequence Run_Upper_dispenser "dispenser/run_dispenser" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_dispenser
		$sequence Crouch_Idle_Upper_dispenser "dispenser/crouch_idle_dispenser" FPS 30 weightlist upperbody addlayer Crouch_Aim_dispenser
		$sequence Crouch_Walk_Upper_dispenser "dispenser/crouch_walk_dispenser" FPS 30 weightlist upperbody addlayer Crouch_Aim_dispenser


		$animation Idle_Shoot_dispenser_layer "dispenser/shoot_dispenser" FPS 30 subtract Idle_Shoot_dispenser_layer 0 weightlist upperbody
		$sequence Idle_Shoot_dispenser "Idle_Shoot_dispenser_layer" delta
		$sequence Walk_Shoot_dispenser "Idle_Shoot_dispenser_layer" delta
		$sequence Run_Shoot_dispenser "Idle_Shoot_dispenser_layer" delta
		$sequence Crouch_Idle_Shoot_dispenser "Idle_Shoot_dispenser_layer" delta
		$sequence Crouch_Walk_Shoot_dispenser "Idle_Shoot_dispenser_layer" delta

		$sequence Swim_Idle_Upper_dispenser "dispenser/swim_idle_dispenser" FPS 30 weightlist upperbody addlayer Swim_Aim_dispenser		
		$animation Swim_Shoot_dispenser_layer "dispenser/swim_shoot_dispenser" FPS 30 subtract Swim_Shoot_dispenser_layer 0 weightlist upperbody
		$sequence Swim_Upper_dispenser "dispenser/swim_dispenser" FPS 30 weightlist upperbody addlayer Swim_Aim_dispenser


		$animation Reload_dispenser_layer "dispenser/reload_dispenser" FPS 30 subtract Reload_dispenser_layer 0 weightlist upperbody
		$sequence Reload_dispenser "Reload_dispenser_layer" delta





	//-----------------
	//	TOMMYGUN
	//-----------------

		$sequence Jump_Upper_tommygun "tommygun/jump_tommygun" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_tommygun_aim_neutral tommygun/swim_9aims_tommygun frame 4 4
		$animation Swim_tommygun_aim_up_left tommygun/swim_9aims_tommygun frame 0 0 subtract Swim_tommygun_aim_neutral 0
		$animation Swim_tommygun_aim_up_center tommygun/swim_9aims_tommygun frame 1 1 subtract Swim_tommygun_aim_neutral 0
		$animation Swim_tommygun_aim_up_right tommygun/swim_9aims_tommygun frame 2 2 subtract Swim_tommygun_aim_neutral 0
		$animation Swim_tommygun_aim_mid_left tommygun/swim_9aims_tommygun frame 3 3 subtract Swim_tommygun_aim_neutral 0
		$animation Swim_tommygun_aim_mid_center tommygun/swim_9aims_tommygun frame 4 4 subtract Swim_tommygun_aim_neutral 0
		$animation Swim_tommygun_aim_mid_right tommygun/swim_9aims_tommygun frame 5 5 subtract Swim_tommygun_aim_neutral 0
		$animation Swim_tommygun_aim_down_left tommygun/swim_9aims_tommygun frame 6 6 subtract Swim_tommygun_aim_neutral 0
		$animation Swim_tommygun_aim_down_center tommygun/swim_9aims_tommygun frame 7 7 subtract Swim_tommygun_aim_neutral 0
		$animation Swim_tommygun_aim_down_right tommygun/swim_9aims_tommygun frame 8 8 subtract Swim_tommygun_aim_neutral 0


		$sequence Swim_Aim_tommygun  { 
			Swim_tommygun_aim_up_right Swim_tommygun_aim_up_center Swim_tommygun_aim_up_left 
			Swim_tommygun_aim_mid_right Swim_tommygun_aim_mid_center Swim_tommygun_aim_mid_left 
			Swim_tommygun_aim_down_right Swim_tommygun_aim_down_center Swim_tommygun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_tommygun_aim_neutral tommygun/crouch_9aims_tommygun frame 4 4
		$animation Crouch_tommygun_aim_up_left tommygun/crouch_9aims_tommygun frame 0 0 subtract Crouch_tommygun_aim_neutral 0
		$animation Crouch_tommygun_aim_up_center tommygun/crouch_9aims_tommygun frame 1 1 subtract Crouch_tommygun_aim_neutral 0
		$animation Crouch_tommygun_aim_up_right tommygun/crouch_9aims_tommygun frame 2 2 subtract Crouch_tommygun_aim_neutral 0
		$animation Crouch_tommygun_aim_mid_left tommygun/crouch_9aims_tommygun frame 3 3 subtract Crouch_tommygun_aim_neutral 0
		$animation Crouch_tommygun_aim_mid_center tommygun/crouch_9aims_tommygun frame 4 4 subtract Crouch_tommygun_aim_neutral 0
		$animation Crouch_tommygun_aim_mid_right tommygun/crouch_9aims_tommygun frame 5 5 subtract Crouch_tommygun_aim_neutral 0
		$animation Crouch_tommygun_aim_down_left tommygun/crouch_9aims_tommygun frame 6 6 subtract Crouch_tommygun_aim_neutral 0
		$animation Crouch_tommygun_aim_down_center tommygun/crouch_9aims_tommygun frame 7 7 subtract Crouch_tommygun_aim_neutral 0
		$animation Crouch_tommygun_aim_down_right tommygun/crouch_9aims_tommygun frame 8 8 subtract Crouch_tommygun_aim_neutral 0


		$sequence Crouch_Aim_tommygun  { 
			Crouch_tommygun_aim_up_right Crouch_tommygun_aim_up_center Crouch_tommygun_aim_up_left 
			Crouch_tommygun_aim_mid_right Crouch_tommygun_aim_mid_center Crouch_tommygun_aim_mid_left 
			Crouch_tommygun_aim_down_right Crouch_tommygun_aim_down_center Crouch_tommygun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_tommygun_aim_neutral tommygun/run_9aims_tommygun frame 4 4
		$animation Run_tommygun_aim_up_left tommygun/run_9aims_tommygun frame 0 0 subtract Run_tommygun_aim_neutral 0
		$animation Run_tommygun_aim_up_center tommygun/run_9aims_tommygun frame 1 1 subtract Run_tommygun_aim_neutral 0
		$animation Run_tommygun_aim_up_right tommygun/run_9aims_tommygun frame 2 2 subtract Run_tommygun_aim_neutral 0
		$animation Run_tommygun_aim_mid_left tommygun/run_9aims_tommygun frame 3 3 subtract Run_tommygun_aim_neutral 0
		$animation Run_tommygun_aim_mid_center tommygun/run_9aims_tommygun frame 4 4 subtract Run_tommygun_aim_neutral 0
		$animation Run_tommygun_aim_mid_right tommygun/run_9aims_tommygun frame 5 5 subtract Run_tommygun_aim_neutral 0
		$animation Run_tommygun_aim_down_left tommygun/run_9aims_tommygun frame 6 6 subtract Run_tommygun_aim_neutral 0
		$animation Run_tommygun_aim_down_center tommygun/run_9aims_tommygun frame 7 7 subtract Run_tommygun_aim_neutral 0
		$animation Run_tommygun_aim_down_right tommygun/run_9aims_tommygun frame 8 8 subtract Run_tommygun_aim_neutral 0

		$sequence Run_Aim_tommygun  { 
			Run_tommygun_aim_up_right Run_tommygun_aim_up_center Run_tommygun_aim_up_left 
			Run_tommygun_aim_mid_right Run_tommygun_aim_mid_center Run_tommygun_aim_mid_left 
			Run_tommygun_aim_down_right Run_tommygun_aim_down_center Run_tommygun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_tommygun "tommygun/idle_tommygun" FPS 30 weightlist upperbody addlayer Run_Aim_tommygun
		$sequence Walk_Upper_tommygun "tommygun/walk_tommygun" FPS 30 weightlist upperbody addlayer Run_Aim_tommygun
		$sequence Run_Upper_tommygun "tommygun/run_tommygun" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_tommygun
		$sequence Crouch_Idle_Upper_tommygun "tommygun/crouch_idle_tommygun" FPS 30 weightlist upperbody addlayer Crouch_Aim_tommygun
		$sequence Crouch_Walk_Upper_tommygun "tommygun/crouch_walk_tommygun" FPS 30 weightlist upperbody addlayer Crouch_Aim_tommygun


		$animation Idle_Shoot_tommygun_layer "tommygun/shoot_tommygun" FPS 30 subtract Idle_Shoot_tommygun_layer 0 weightlist upperbody
		$sequence Idle_Shoot_tommygun "Idle_Shoot_tommygun_layer" delta
		$sequence Walk_Shoot_tommygun "Idle_Shoot_tommygun_layer" delta
		$sequence Run_Shoot_tommygun "Idle_Shoot_tommygun_layer" delta
		$sequence Crouch_Idle_Shoot_tommygun "Idle_Shoot_tommygun_layer" delta
		$sequence Crouch_Walk_Shoot_tommygun "Idle_Shoot_tommygun_layer" delta

		$sequence Swim_Idle_Upper_tommygun "tommygun/swim_idle_tommygun" FPS 30 weightlist upperbody addlayer Swim_Aim_tommygun		
		$animation Swim_Shoot_tommygun_layer "tommygun/swim_shoot_tommygun" FPS 30 subtract Swim_Shoot_tommygun_layer 0 weightlist upperbody
		$sequence Swim_Upper_tommygun "tommygun/swim_tommygun" FPS 30 weightlist upperbody addlayer Swim_Aim_tommygun


		$animation Reload_tommygun_layer "tommygun/reload_tommygun" FPS 30 subtract Reload_tommygun_layer 0 weightlist upperbody
		$sequence Reload_tommygun "Reload_tommygun_layer" delta





	//-----------------
	//	SENTRY GUN
	//-----------------

		$sequence Jump_Upper_sentrygun "sentrygun/jump_sentrygun" FPS 30 startloop 0 weightlist upperbody 

		$animation Swim_sentrygun_aim_neutral sentrygun/swim_9aims_sentrygun frame 4 4
		$animation Swim_sentrygun_aim_up_left sentrygun/swim_9aims_sentrygun frame 0 0 subtract Swim_sentrygun_aim_neutral 0
		$animation Swim_sentrygun_aim_up_center sentrygun/swim_9aims_sentrygun frame 1 1 subtract Swim_sentrygun_aim_neutral 0
		$animation Swim_sentrygun_aim_up_right sentrygun/swim_9aims_sentrygun frame 2 2 subtract Swim_sentrygun_aim_neutral 0
		$animation Swim_sentrygun_aim_mid_left sentrygun/swim_9aims_sentrygun frame 3 3 subtract Swim_sentrygun_aim_neutral 0
		$animation Swim_sentrygun_aim_mid_center sentrygun/swim_9aims_sentrygun frame 4 4 subtract Swim_sentrygun_aim_neutral 0
		$animation Swim_sentrygun_aim_mid_right sentrygun/swim_9aims_sentrygun frame 5 5 subtract Swim_sentrygun_aim_neutral 0
		$animation Swim_sentrygun_aim_down_left sentrygun/swim_9aims_sentrygun frame 6 6 subtract Swim_sentrygun_aim_neutral 0
		$animation Swim_sentrygun_aim_down_center sentrygun/swim_9aims_sentrygun frame 7 7 subtract Swim_sentrygun_aim_neutral 0
		$animation Swim_sentrygun_aim_down_right sentrygun/swim_9aims_sentrygun frame 8 8 subtract Swim_sentrygun_aim_neutral 0


		$sequence Swim_Aim_sentrygun  { 
			Swim_sentrygun_aim_up_right Swim_sentrygun_aim_up_center Swim_sentrygun_aim_up_left 
			Swim_sentrygun_aim_mid_right Swim_sentrygun_aim_mid_center Swim_sentrygun_aim_mid_left 
			Swim_sentrygun_aim_down_right Swim_sentrygun_aim_down_center Swim_sentrygun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Crouch_sentrygun_aim_neutral sentrygun/crouch_9aims_sentrygun frame 4 4
		$animation Crouch_sentrygun_aim_up_left sentrygun/crouch_9aims_sentrygun frame 0 0 subtract Crouch_sentrygun_aim_neutral 0
		$animation Crouch_sentrygun_aim_up_center sentrygun/crouch_9aims_sentrygun frame 1 1 subtract Crouch_sentrygun_aim_neutral 0
		$animation Crouch_sentrygun_aim_up_right sentrygun/crouch_9aims_sentrygun frame 2 2 subtract Crouch_sentrygun_aim_neutral 0
		$animation Crouch_sentrygun_aim_mid_left sentrygun/crouch_9aims_sentrygun frame 3 3 subtract Crouch_sentrygun_aim_neutral 0
		$animation Crouch_sentrygun_aim_mid_center sentrygun/crouch_9aims_sentrygun frame 4 4 subtract Crouch_sentrygun_aim_neutral 0
		$animation Crouch_sentrygun_aim_mid_right sentrygun/crouch_9aims_sentrygun frame 5 5 subtract Crouch_sentrygun_aim_neutral 0
		$animation Crouch_sentrygun_aim_down_left sentrygun/crouch_9aims_sentrygun frame 6 6 subtract Crouch_sentrygun_aim_neutral 0
		$animation Crouch_sentrygun_aim_down_center sentrygun/crouch_9aims_sentrygun frame 7 7 subtract Crouch_sentrygun_aim_neutral 0
		$animation Crouch_sentrygun_aim_down_right sentrygun/crouch_9aims_sentrygun frame 8 8 subtract Crouch_sentrygun_aim_neutral 0


		$sequence Crouch_Aim_sentrygun  { 
			Crouch_sentrygun_aim_up_right Crouch_sentrygun_aim_up_center Crouch_sentrygun_aim_up_left 
			Crouch_sentrygun_aim_mid_right Crouch_sentrygun_aim_mid_center Crouch_sentrygun_aim_mid_left 
			Crouch_sentrygun_aim_down_right Crouch_sentrygun_aim_down_center Crouch_sentrygun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
		}


		$animation Run_sentrygun_aim_neutral sentrygun/run_9aims_sentrygun frame 4 4
		$animation Run_sentrygun_aim_up_left sentrygun/run_9aims_sentrygun frame 0 0 subtract Run_sentrygun_aim_neutral 0
		$animation Run_sentrygun_aim_up_center sentrygun/run_9aims_sentrygun frame 1 1 subtract Run_sentrygun_aim_neutral 0
		$animation Run_sentrygun_aim_up_right sentrygun/run_9aims_sentrygun frame 2 2 subtract Run_sentrygun_aim_neutral 0
		$animation Run_sentrygun_aim_mid_left sentrygun/run_9aims_sentrygun frame 3 3 subtract Run_sentrygun_aim_neutral 0
		$animation Run_sentrygun_aim_mid_center sentrygun/run_9aims_sentrygun frame 4 4 subtract Run_sentrygun_aim_neutral 0
		$animation Run_sentrygun_aim_mid_right sentrygun/run_9aims_sentrygun frame 5 5 subtract Run_sentrygun_aim_neutral 0
		$animation Run_sentrygun_aim_down_left sentrygun/run_9aims_sentrygun frame 6 6 subtract Run_sentrygun_aim_neutral 0
		$animation Run_sentrygun_aim_down_center sentrygun/run_9aims_sentrygun frame 7 7 subtract Run_sentrygun_aim_neutral 0
		$animation Run_sentrygun_aim_down_right sentrygun/run_9aims_sentrygun frame 8 8 subtract Run_sentrygun_aim_neutral 0

		$sequence Run_Aim_sentrygun  { 
			Run_sentrygun_aim_up_right Run_sentrygun_aim_up_center Run_sentrygun_aim_up_left 
			Run_sentrygun_aim_mid_right Run_sentrygun_aim_mid_center Run_sentrygun_aim_mid_left 
			Run_sentrygun_aim_down_right Run_sentrygun_aim_down_center Run_sentrygun_aim_down_left 
			weightlist upperbody
			blendwidth 3 blend body_yaw -90 90 blend body_pitch -65 65
			iklock lfoot 1 0 iklock rfoot 1 0
			delta
				}



		$sequence Idle_Upper_sentrygun "sentrygun/idle_sentrygun" FPS 30 weightlist upperbody addlayer Run_Aim_sentrygun
		$sequence Walk_Upper_sentrygun "sentrygun/walk_sentrygun" FPS 30 weightlist upperbody addlayer Run_Aim_sentrygun
		$sequence Run_Upper_sentrygun "sentrygun/run_sentrygun" FPS 30 startloop 0 weightlist upperbody addlayer Run_Aim_sentrygun
		$sequence Crouch_Idle_Upper_sentrygun "sentrygun/crouch_idle_sentrygun" FPS 30 weightlist upperbody addlayer Crouch_Aim_sentrygun
		$sequence Crouch_Walk_Upper_sentrygun "sentrygun/crouch_walk_sentrygun" FPS 30 weightlist upperbody addlayer Crouch_Aim_sentrygun


		$animation Idle_Shoot_sentrygun_layer "sentrygun/shoot_sentrygun" FPS 30 subtract Idle_Shoot_sentrygun_layer 0 weightlist upperbody
		$sequence Idle_Shoot_sentrygun "Idle_Shoot_sentrygun_layer" delta
		$sequence Walk_Shoot_sentrygun "Idle_Shoot_sentrygun_layer" delta
		$sequence Run_Shoot_sentrygun "Idle_Shoot_sentrygun_layer" delta
		$sequence Crouch_Idle_Shoot_sentrygun "Idle_Shoot_sentrygun_layer" delta
		$sequence Crouch_Walk_Shoot_sentrygun "Idle_Shoot_sentrygun_layer" delta

		$sequence Swim_Idle_Upper_sentrygun "sentrygun/swim_idle_sentrygun" FPS 30 weightlist upperbody addlayer Swim_Aim_sentrygun		
		$animation Swim_Shoot_sentrygun_layer "sentrygun/swim_shoot_sentrygun" FPS 30 subtract Swim_Shoot_sentrygun_layer 0 weightlist upperbody
		$sequence Swim_Upper_sentrygun "sentrygun/swim_sentrygun" FPS 30 weightlist upperbody addlayer Swim_Aim_sentrygun


		$animation Reload_sentrygun_layer "sentrygun/reload_sentrygun" FPS 30 subtract Reload_sentrygun_layer 0 weightlist upperbody
		$sequence Reload_sentrygun "Reload_sentrygun_layer" delta



