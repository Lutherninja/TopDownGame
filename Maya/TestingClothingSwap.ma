//Maya ASCII 2018 scene
//Name: TestingClothingSwap.ma
//Last modified: Tue, Nov 12, 2019 11:50:29 PM
//Codeset: 1252
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "678CA327-4987-A3F9-ECAC-E092BDFBDBF6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.1807478932603743 3.2629521617215751 -4.2465061491153104 ;
	setAttr ".r" -type "double3" 348.86164727008918 -581.79999999983124 -360.00000000003888 ;
	setAttr ".rp" -type "double3" -3.6082248300317588e-15 3.7747582837255322e-14 1.1368683772161603e-13 ;
	setAttr ".rpt" -type "double3" 8.8966597693114685e-14 4.6223285266955023e-14 -1.1873043362263537e-13 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "A57B1AF8-4791-E5A7-FD60-5D8F835A3001";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 5.678749573329104;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.10348769204882657 2.2619882841114456 -0.41781653558304488 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "49BEB658-44DD-5571-8468-1097B2A00493";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "849D5DBF-4904-D36B-62DA-32AE1EB3D5F0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "B87FA01B-46D6-EC46-7311-74A20AF7106E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "6881F73D-4D48-C778-A9E5-DC9824C25058";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "0ADBFC68-43F7-5D54-EEBF-27B47383CE34";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 1.5995427337123005 -0.1340794159628601 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "31E517E5-4181-17CB-BEFE-7BACB137AD85";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 5.2586891469080363;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "TestClothes";
	rename -uid "9719DA8E-494D-6AA9-61BF-F8B5788F1AF2";
createNode joint -n "Chest_01_Jnt" -p "TestClothes";
	rename -uid "BA213D6E-4D05-F4E1-AE52-19BE2E4E0ECD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".bps" -type "matrix" -2.2204460492503131e-16 1 0 0 1 2.2204460492503131e-16 1.2246467991473532e-16 0
		 1.2246467991473532e-16 2.4651903288156619e-32 -1 0 3.1052023909136932e-16 1.3984588330628882 0 1;
	setAttr ".radi" 0.1;
createNode joint -n "Chest_02_Jnt" -p "Chest_01_Jnt";
	rename -uid "8551E95A-4FDB-B466-9F58-A0B017557393";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".bps" -type "matrix" -2.2204460492503131e-16 1 0 0 1 2.2204460492503131e-16 1.2246467991473532e-16 0
		 1.2246467991473532e-16 2.4651903288156619e-32 -1 0 2.2184887689813285e-16 1.9991185193309937 1.300032754988844e-47 1;
	setAttr ".radi" 0.1;
createNode joint -n "Chest_03_Jnt" -p "Chest_02_Jnt";
	rename -uid "3D353242-42B3-E185-58C6-0EB3C1CD0A33";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".bps" -type "matrix" -2.2204460492503131e-16 1 0 0 1 2.2204460492503131e-16 1.2246467991473532e-16 0
		 1.2246467991473532e-16 2.4651903288156619e-32 -1 0 -1.2714350973019778e-16 2.5708405017054838 2.0526832973508063e-48 1;
	setAttr ".radi" 0.1;
createNode joint -n "Chest_04_Jnt" -p "Chest_03_Jnt";
	rename -uid "74E4AB9D-46B1-849D-22FB-5FB39BE4E940";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" -2.2204460492503131e-16 1 0 0 1 2.2204460492503131e-16 1.2246467991473532e-16 0
		 1.2246467991473532e-16 2.4651903288156619e-32 -1 0 -4.9798246385541293e-16 3.2409506773182675 7.5265054236196229e-48 1;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "Chest_04_Jnt_parentConstraint1" -p "Chest_04_Jnt";
	rename -uid "F95997B1-42FF-E78B-ABED-4D8D1708353E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Chest_04_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.135709259902372e-23 9.2906646376178514e-08 
		5.2771213580038136e-48 ;
	setAttr ".tg[0].tor" -type "double3" 180 -7.016709298534876e-15 90.000000000000014 ;
	setAttr ".lr" -type "double3" -7.0167092985348752e-15 -7.0167092985348752e-15 4.2964952914991011e-31 ;
	setAttr ".rst" -type "double3" 0.67011017561278363 -2.2204460492503126e-16 -2.7192621468937821e-32 ;
	setAttr ".rsrr" -type "double3" -7.0167092985348752e-15 -7.0167092985348752e-15 
		4.2964952914991011e-31 ;
	setAttr -k on ".w0";
createNode joint -n "L_Arm_01_Jnt" -p "Chest_03_Jnt";
	rename -uid "F36067B8-4F7E-9484-4709-83AD067D4E39";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -89.999999999999986 -89.999999999999929 0 ;
	setAttr ".bps" -type "matrix" 1.2246467991473507e-16 1.1102230246251565e-15 -1 0
		 -1.3596310734468911e-31 1 1.1102230246251565e-15 0 1 0 1.2246467991473532e-16 0 8.5816288639164757e-17 2.5736464888173165 -0.49339682338236651 1;
	setAttr ".radi" 0.1;
createNode joint -n "L_Arm_02_Jnt" -p "L_Arm_01_Jnt";
	rename -uid "0C8C6474-478C-5BF0-065F-42857CF80944";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1.2246467991473507e-16 1.1102230246251565e-15 -1 0
		 -1.3596310734468911e-31 1 1.1102230246251565e-15 0 1 0 1.2246467991473532e-16 0 -1.0554829065410005e-15 2.5736464888173183 -1.1675574172478833 1;
	setAttr ".radi" 0.1;
createNode joint -n "L_Arm_03_Jnt" -p "L_Arm_02_Jnt";
	rename -uid "B878F2BC-48A9-D65B-DA1C-3CA2A5D4E626";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1.2246467991473507e-16 1.1102230246251565e-15 -1 0
		 -1.3596310734468911e-31 1 1.1102230246251565e-15 0 1 0 1.2246467991473532e-16 0 -1.2561942833175792e-15 2.5736464888173187 -1.7453853362232508 1;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "L_Arm_02_Jnt_parentConstraint1" -p "L_Arm_02_Jnt";
	rename -uid "1A125330-40C6-79DF-18A2-05BC20B02335";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_02_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -6.7479941227179708e-23 -1.7839518307027902e-07 
		-1.8442635019155773e-07 ;
	setAttr ".tg[0].tor" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".lr" -type "double3" 0 -51.592170564151338 0 ;
	setAttr ".rst" -type "double3" 0.67416059386551686 8.8817841970012523e-16 -1.2238600565190336e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Arm_01_Jnt_parentConstraint1" -p "L_Arm_01_Jnt";
	rename -uid "79390584-4041-F745-B107-538555B343FA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_01_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.4004832242040032e-24 -1.7839518839934954e-07 
		-1.495594315059634e-08 ;
	setAttr ".tg[0].tor" -type "double3" 0 89.999999999999929 0 ;
	setAttr ".lr" -type "double3" -1.2805310845582185e-13 23.219997846422796 -67.140420728212888 ;
	setAttr ".rst" -type "double3" 0.002805987111832664 1.5315916862256545e-16 0.49339682338236651 ;
	setAttr ".rsrr" -type "double3" -6.3611093629269965e-15 -6.6791648310733855e-14 
		-6.3611093629270335e-14 ;
	setAttr -k on ".w0";
createNode joint -n "R_Arm_01_Jnt" -p "Chest_03_Jnt";
	rename -uid "48A4EA0A-4EAC-FB7A-1B11-55B6551DD13C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 89.999999999999986 89.999999999999716 0 ;
	setAttr ".bps" -type "matrix" -6.6953528683478578e-17 4.8849813083506888e-15 1 0
		 -1.1102230246251505e-16 1 -4.8849813083506888e-15 0 -1 -1.6653345369377348e-16 -1.2246467991473532e-16 0
		 -1.3619302787469761e-15 2.5736464888173165 0.46912968966233348 1;
	setAttr ".radi" 0.1;
createNode joint -n "R_Arm_02_Jnt" -p "R_Arm_01_Jnt";
	rename -uid "2871BDF6-4631-4730-A2A2-CAB0953AEAC8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" -6.6953528683478578e-17 4.8849813083506888e-15 1 0
		 -1.1102230246251505e-16 1 -4.8849813083506888e-15 0 -1 -1.6653345369377348e-16 -1.2246467991473532e-16 0
		 -4.8763336067380533e-15 2.5736464888173161 1.1432902835278504 1;
	setAttr ".radi" 0.1;
createNode joint -n "R_Arm_03_Jnt" -p "R_Arm_02_Jnt";
	rename -uid "80841C43-4053-25C9-59F2-7E886CB66C3C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" -6.6953528683478578e-17 4.8849813083506888e-15 1 0
		 -1.1102230246251505e-16 1 -4.8849813083506888e-15 0 -1 -1.6653345369377348e-16 -1.2246467991473532e-16 0
		 -6.982746120574518e-15 2.5736464888173169 1.7211182025032179 1;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "R_Arm_02_Jnt_parentConstraint1" -p "R_Arm_02_Jnt";
	rename -uid "100CC2A1-4E23-7CED-4266-0BBD464E1DFB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_02_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.5615985346556598e-22 -1.7839518839934954e-07 
		7.0360717252526683e-09 ;
	setAttr ".tg[0].tor" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".lr" -type "double3" 0 63.977276066096032 0 ;
	setAttr ".rst" -type "double3" 0.67416059386551708 -3.5527136788005009e-15 3.4692658973324318e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Arm_01_Jnt_parentConstraint1" -p "R_Arm_01_Jnt";
	rename -uid "501E49E1-4241-B82D-69CF-30AB7AAE53B9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_01_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 6.6511315487737837e-23 -1.7839518839934954e-07 
		2.5454837349059289e-08 ;
	setAttr ".tg[0].tor" -type "double3" 9.5416640443905503e-15 -89.99999999999973 0 ;
	setAttr ".lr" -type "double3" 2.257732092186624 -11.684664172668409 -68.449137573606293 ;
	setAttr ".rst" -type "double3" 0.002805987111832664 -1.1767118974341098e-15 -0.46912968966233348 ;
	setAttr ".rsrr" -type "double3" -6.3772118194228688e-28 2.6716659324293542e-13 -2.7352770260586246e-13 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Chest_03_Jnt_parentConstraint1" -p "Chest_03_Jnt";
	rename -uid "B4FC0BA6-4FA1-16EC-AD2C-CAB1CC90E4FF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Chest_03_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.404945514521999e-25 -9.5447226122757911e-08 
		1.0942819184147749e-47 ;
	setAttr ".tg[0].tor" -type "double3" 180 -7.016709298534876e-15 90.000000000000014 ;
	setAttr ".lr" -type "double3" -7.0167092985348752e-15 -7.0167092985348752e-15 4.2964952914991011e-31 ;
	setAttr ".rst" -type "double3" 0.57172198237449012 -2.2204460492503126e-16 -2.7192621468937805e-32 ;
	setAttr ".rsrr" -type "double3" -7.0167092985348752e-15 -7.0167092985348752e-15 
		4.2964952914991011e-31 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Chest_02_Jnt_parentConstraint1" -p "Chest_02_Jnt";
	rename -uid "D20CD750-46AE-93B4-D8BF-5A8C9F3DA22C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Chest_02_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.7583662441136854e-24 -4.7182067808293482e-08 
		1.1076053732013717e-47 ;
	setAttr ".tg[0].tor" -type "double3" 180 -7.016709298534876e-15 90.000000000000014 ;
	setAttr ".lr" -type "double3" -7.0167092985348752e-15 -7.0167092985348752e-15 4.2964952914991011e-31 ;
	setAttr ".rst" -type "double3" 0.60065968626810551 4.4701880538558272e-17 5.4744014917412621e-33 ;
	setAttr ".rsrr" -type "double3" -7.0167092985348752e-15 -7.0167092985348752e-15 
		4.2964952914991011e-31 ;
	setAttr -k on ".w0";
createNode joint -n "R_Leg_01_Jnt" -p "Chest_01_Jnt";
	rename -uid "16E9D190-4CC6-3EC4-DCDA-DDA083AF922A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 180 2.5444437451708134e-14 ;
	setAttr ".bps" -type "matrix" 2.2204460492503128e-16 -1 1.2246467991473532e-16 0
		 1 2.2204460492503131e-16 1.2246467991473532e-16 0 -1.2246467991473535e-16 1.224646799147353e-16 1 0
		 3.1052024029039708e-16 1.3984588384628298 0.32473948089342841 1;
	setAttr ".radi" 0.1;
createNode joint -n "R_Leg_02_Jnt" -p "R_Leg_01_Jnt";
	rename -uid "CF5F29B9-46D0-C132-6CBA-D4892CCC68DF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 2.2204460492503128e-16 -1 1.2246467991473532e-16 0
		 1 2.2204460492503131e-16 1.2246467991473532e-16 0 -1.2246467991473535e-16 1.224646799147353e-16 1 0
		 6.2397556525263521e-16 0.59456641023041867 0.32473948089342852 1;
	setAttr ".radi" 0.1;
createNode joint -n "R_Leg_03_Jnt" -p "R_Leg_02_Jnt";
	rename -uid "4B4CC6A7-48FB-B69F-5E15-4DAFF825BCFE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 2.2204460492503128e-16 -1 1.2246467991473532e-16 0
		 1 2.2204460492503131e-16 1.2246467991473532e-16 0 -1.2246467991473535e-16 1.224646799147353e-16 1 0
		 6.2397556525263521e-16 -0.050219874869797732 0.32473948089342858 1;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "R_Leg_02_Jnt_parentConstraint1" -p "R_Leg_02_Jnt";
	rename -uid "E9160B96-42A2-580B-A53F-5488CD4F73EC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_02_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.8728746308900536e-23 -9.8902461775907113e-09 
		-1.0522826832115584e-08 ;
	setAttr ".tg[0].tor" -type "double3" -90 -89.999999999999972 0 ;
	setAttr ".lr" -type "double3" -4.0868651789632452e-15 1.8640572522136744e-14 -24.732376865166511 ;
	setAttr ".rst" -type "double3" 0.80389242823241114 1.3495534833314832e-16 0 ;
	setAttr ".rsrr" -type "double3" 5.649800061504203e-30 2.5444437451708134e-14 2.5444437451708134e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg_01_Jnt_parentConstraint1" -p "R_Leg_01_Jnt";
	rename -uid "1CA8245B-4F41-126F-DAB1-F883FECD9210";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_01_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -9.8607613152626476e-32 -9.8902463996353163e-09 
		-4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" -90 -89.999999999999972 0 ;
	setAttr ".lr" -type "double3" -5.0778960600028342e-15 2.2276407075109884e-14 -19.668732701093962 ;
	setAttr ".rst" -type "double3" 5.3999416049776983e-09 3.9769118981346688e-17 -0.32473948089342841 ;
	setAttr ".rsrr" -type "double3" 8.0596199419501192e-30 2.9280592068779498e-14 2.5444437451708134e-14 ;
	setAttr -k on ".w0";
createNode joint -n "L_Leg_01_Jnt1" -p "Chest_01_Jnt";
	rename -uid "EDD37547-4EBD-336F-AE3D-3B82DC67766A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 180 2.5444437451708134e-14 ;
	setAttr ".bps" -type "matrix" 2.2204460492503128e-16 -1 1.2246467991473532e-16 0
		 1 2.2204460492503131e-16 1.2246467991473532e-16 0 -1.2246467991473535e-16 1.224646799147353e-16 1 0
		 3.1052024029039732e-16 1.39845883846283 -0.33018580595304808 1;
	setAttr ".radi" 0.1;
createNode joint -n "L_Leg_02_Jnt" -p "L_Leg_01_Jnt1";
	rename -uid "5333FF26-4535-BDA4-EE2F-AD884100CA99";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 2.2204460492503128e-16 -1 1.2246467991473532e-16 0
		 1 2.2204460492503131e-16 1.2246467991473532e-16 0 -1.2246467991473535e-16 1.224646799147353e-16 1 0
		 6.2397556525263512e-16 0.59456641023041901 -0.33018580595304803 1;
	setAttr ".radi" 0.1;
createNode joint -n "L_Leg_03_Jnt" -p "L_Leg_02_Jnt";
	rename -uid "0515292E-4FDB-8D34-2768-AEA709AAC7A5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 2.2204460492503128e-16 -1 1.2246467991473532e-16 0
		 1 2.2204460492503131e-16 1.2246467991473532e-16 0 -1.2246467991473535e-16 1.224646799147353e-16 1 0
		 6.2397556525263512e-16 -0.050219874869797398 -0.33018580595304797 1;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "L_Leg_02_Jnt_parentConstraint1" -p "L_Leg_02_Jnt";
	rename -uid "35F91100-40AD-6EB9-A134-9A985DF0AB4E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_01_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.8728746308900536e-23 -1.0039231557179562e-08 
		-1.0522826832115584e-08 ;
	setAttr ".tg[0].tor" -type "double3" -90 -89.999999999999972 0 ;
	setAttr ".lr" -type "double3" -1.3472547521930491e-14 2.2502745895341975e-14 -33.746002875990193 ;
	setAttr ".rst" -type "double3" 0.80389242823241114 1.3495534833314803e-16 -5.5511151231257827e-17 ;
	setAttr ".rsrr" -type "double3" 5.649800061504203e-30 2.5444437451708134e-14 2.5444437451708134e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg_01_Jnt1_parentConstraint1" -p "L_Leg_01_Jnt1";
	rename -uid "91377582-4386-0856-66A0-C595D4E5BC37";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_02_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.9164567891575885e-31 -1.0039231668201865e-08 
		-8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" -90 -89.999999999999972 0 ;
	setAttr ".lr" -type "double3" 1.5116005472748907e-14 2.2526050565747326e-14 32.092326080186453 ;
	setAttr ".rst" -type "double3" 5.3999418270223032e-09 -4.0436096640372981e-17 0.33018580595304808 ;
	setAttr ".rsrr" -type "double3" 8.0596199419501192e-30 2.9280592068779498e-14 2.5444437451708134e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Chest_01_Jnt_parentConstraint1" -p "Chest_01_Jnt";
	rename -uid "4189F072-4200-720A-2CA6-5691C886FD53";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Chest_01_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.1990278509917059e-24 -5.3999413829330933e-09 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".rst" -type "double3" 3.1052023909136932e-16 1.3984588330628882 0 ;
	setAttr -k on ".w0";
createNode transform -n "Chest_01_Ctrl_Grp" -p "TestClothes";
	rename -uid "03435612-406B-C376-FBE7-CEBCDB7C307B";
	setAttr ".t" -type "double3" 3.1052024029039717e-16 1.3984588384628296 0 ;
createNode transform -n "Chest_01_ctrl" -p "Chest_01_Ctrl_Grp";
	rename -uid "86E8E1F6-4999-BE4A-5FF0-A894545964B9";
createNode nurbsCurve -n "Chest_01_ctrlShape" -p "Chest_01_ctrl";
	rename -uid "429D93BA-4ADF-2C25-D063-F992CFB5369C";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Chest_02_Ctrl_Grp" -p "Chest_01_ctrl";
	rename -uid "1B5400E5-4C71-C85C-A7C3-E98218FFF5E8";
	setAttr ".t" -type "double3" -8.8671366150630613e-17 0.60065972805023193 0 ;
createNode transform -n "Chest_02_ctrl" -p "Chest_02_Ctrl_Grp";
	rename -uid "F7C197E3-4936-F3E0-740C-3290F9347832";
createNode nurbsCurve -n "Chest_02_ctrlShape" -p "Chest_02_ctrl";
	rename -uid "871D7C36-4876-1CC3-43BA-9E9DD075B4F0";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode transform -n "Chest_03_Ctrl_Grp" -p "Chest_02_ctrl";
	rename -uid "E3CDAB1E-48C9-BDCD-13C0-7A889FA44DF4";
	setAttr ".t" -type "double3" -3.4899238411045889e-16 0.57172203063964844 0 ;
createNode transform -n "Chest_03_ctrl" -p "Chest_03_Ctrl_Grp";
	rename -uid "9D57B2BF-48F0-E2E9-DD0B-29AB359CCEB4";
createNode nurbsCurve -n "Chest_03_ctrlShape" -p "Chest_03_ctrl";
	rename -uid "247D1C55-4AA1-C0D4-014D-A8B3210B82D6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode transform -n "Chest_04_Ctrl_Grp" -p "Chest_03_ctrl";
	rename -uid "AFB902B4-46D4-1CF4-2647-C2AAE1F7AAB4";
	setAttr ".t" -type "double3" -3.708389652418132e-16 0.67010998725891113 0 ;
createNode transform -n "Chest_04_ctrl" -p "Chest_04_Ctrl_Grp";
	rename -uid "17440994-41C4-C36E-8F01-598994417D8C";
createNode nurbsCurve -n "Chest_04_ctrlShape" -p "Chest_04_ctrl";
	rename -uid "7AC83637-4B17-BEA2-7CFA-12BC4A75AD84";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode transform -n "L_Arm_01_Ctrl_grp" -p "Chest_03_ctrl";
	rename -uid "2D6418F2-4BDE-CD19-FC11-508534CEEAEC";
	setAttr ".t" -type "double3" 2.1295979937136961e-16 0.0028059482574462891 -0.4933968186378479 ;
	setAttr ".s" -type "double3" 0.31723299332736388 0.31723299332736388 0.31723299332736388 ;
createNode transform -n "L_Arm_01_Ctrl" -p "L_Arm_01_Ctrl_grp";
	rename -uid "7A34A3B9-4E29-1E17-CE12-FEB3C619CA7A";
createNode nurbsCurve -n "L_Arm_01_CtrlShape" -p "L_Arm_01_Ctrl";
	rename -uid "78D1165A-458C-1507-9996-D0A2960344E3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode transform -n "L_Arm_02_Ctrl_grp" -p "L_Arm_01_Ctrl";
	rename -uid "4D1B3DD4-4369-8D4F-25D5-919F0E19D014";
	setAttr ".t" -type "double3" -3.5976685859943554e-15 0 -2.1251274435008796 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "L_Arm_02_Ctrl" -p "L_Arm_02_Ctrl_grp";
	rename -uid "AD263E71-4A61-D3CE-F050-8C82A7D065A2";
createNode nurbsCurve -n "L_Arm_02_CtrlShape" -p "L_Arm_02_Ctrl";
	rename -uid "0941D6C7-44B5-B99C-77DB-208B97014C66";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode transform -n "R_Arm_01_Ctrl_grp" -p "Chest_03_ctrl";
	rename -uid "FB478A53-4F2E-5B3C-9F41-06834B80408B";
	setAttr ".t" -type "double3" -1.2347867898758675e-15 0.0028059482574462891 0.46912968158721924 ;
	setAttr ".s" -type "double3" 0.31723299332736388 0.31723299332736388 0.31723299332736388 ;
createNode transform -n "R_Arm_01_Ctrl" -p "R_Arm_01_Ctrl_grp";
	rename -uid "55D3F4D2-4BCA-DFFC-A4FD-ACAC85C5B1AE";
createNode nurbsCurve -n "R_Arm_01_CtrlShape" -p "R_Arm_01_Ctrl";
	rename -uid "532D68DC-4587-F4DB-AC6A-DEA309A856AB";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode transform -n "R_Arm_02_Ctrl_grp" -p "R_Arm_01_Ctrl";
	rename -uid "ABBE8C98-4FEE-04CB-CA95-A196F6670B9E";
	setAttr ".t" -type "double3" -1.1078303012456525e-14 0 2.1251276313900522 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "R_Arm_02_Ctrl" -p "R_Arm_02_Ctrl_grp";
	rename -uid "4260212B-4BE1-8FD3-E920-C1AF541BAE02";
createNode nurbsCurve -n "R_Arm_02_CtrlShape" -p "R_Arm_02_Ctrl";
	rename -uid "7BD2D890-479D-8ED5-22A6-02B137788C52";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode transform -n "R_Leg_01_Ctrl_Grp" -p "Chest_01_ctrl";
	rename -uid "CBB9B0AD-4D04-0576-9C83-46BD0FEBEE7F";
	setAttr ".t" -type "double3" 0 0 0.3247394859790802 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 0.51420880783884315 0.51420880783884315 0.51420880783884315 ;
createNode transform -n "R_Leg_01_Ctrl" -p "R_Leg_01_Ctrl_Grp";
	rename -uid "1A31DBF8-4102-B166-AFF7-21994286B1E8";
createNode nurbsCurve -n "R_Leg_01_CtrlShape" -p "R_Leg_01_Ctrl";
	rename -uid "DF6D4D41-4495-F162-D98F-BBAB8A3F75A3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode transform -n "R_Leg_02_Ctrl_Grp" -p "R_Leg_01_Ctrl";
	rename -uid "F868E3A3-4AF5-E23C-FE7E-63909F25457E";
	setAttr ".t" -type "double3" 6.0958760439978872e-16 6.6613381477509392e-16 1.5633579615681865 ;
createNode transform -n "R_Leg_02_Ctrl" -p "R_Leg_02_Ctrl_Grp";
	rename -uid "BB298168-4FC9-F10F-E0C0-4A897D0498B9";
createNode nurbsCurve -n "R_Leg_02_CtrlShape" -p "R_Leg_02_Ctrl";
	rename -uid "49F789EF-48B9-EC42-EA3E-009634511F1A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode transform -n "L_Leg_02_Ctrl_Grp" -p "Chest_01_ctrl";
	rename -uid "C8F22F52-4E56-9E1D-7918-ABAA75F8A577";
	setAttr ".t" -type "double3" -9.8607613152626476e-32 0 -0.33018580079078674 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 0.51420880783884315 0.51420880783884315 0.51420880783884315 ;
createNode transform -n "L_Leg_02_Ctrl" -p "L_Leg_02_Ctrl_Grp";
	rename -uid "A5C82591-4C2D-9187-D78E-89979BFECC4B";
createNode nurbsCurve -n "L_Leg_02_CtrlShape" -p "L_Leg_02_Ctrl";
	rename -uid "D69A407C-4C9E-B519-DE80-5887047EC402";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode transform -n "L_Leg_01_Ctrl_Grp" -p "L_Leg_02_Ctrl";
	rename -uid "1461D607-43B9-B878-369F-519C0DCC3E79";
	setAttr ".t" -type "double3" 6.0958760439978892e-16 6.6613381477509392e-16 1.5633579615681858 ;
createNode transform -n "L_Leg_01_Ctrl" -p "L_Leg_01_Ctrl_Grp";
	rename -uid "2C8A6DD8-4AA0-5210-F58A-C1A572107B1A";
createNode nurbsCurve -n "L_Leg_01_CtrlShape" -p "L_Leg_01_Ctrl";
	rename -uid "704A4F9A-4EFC-C63E-06BB-74AD78CBA73A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode transform -n "Geometry" -p "TestClothes";
	rename -uid "4D895C08-49F9-7906-82D3-A58B4EEAC534";
createNode transform -n "Base" -p "Geometry";
	rename -uid "1C1C017E-47D6-E734-EB1B-2692AB6BB255";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 1.7127045773122929 -0.0082439907936293633 ;
	setAttr ".sp" -type "double3" 0 1.7127045773122929 -0.0082439907936293633 ;
createNode mesh -n "BaseShape" -p "Base";
	rename -uid "C8261F25-44D4-044A-C5B3-96B37C7A5DD3";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "BaseShapeOrig" -p "Base";
	rename -uid "5B7FDFB8-4514-CEED-FD84-288999B89927";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 442 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.625 0 0.375 0.25
		 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.375 0.22727273 0.625 0.22727273 0.625 0.25 0.375 0.25 0.625
		 0.5 0.375 0.5 0.625 0.52272731 0.375 0.52272731 0.375 0.75 0.625 0.75 0.625 1 0.375
		 1 0.875 0.22727273 0.875 0.25 0.125 0.22727273 0.125 0.25 0.375 0.72727269 0.625
		 0.72727269 0.125 0 0.375 0 0.375 0.022727281 0.125 0.022727281 0.625 0 0.625 0.022727281
		 0.875 0 0.875 0.022727281 0.375 0.70454544 0.625 0.70454544 0.375 0.045454558 0.125
		 0.045454558 0.625 0.045454558 0.875 0.045454558 0.375 0.68181813 0.625 0.68181813
		 0.375 0.068181828 0.125 0.068181828 0.625 0.068181828 0.875 0.068181828 0.375 0.65909088
		 0.625 0.65909088 0.375 0.090909101 0.125 0.090909101 0.625 0.090909101 0.875 0.090909101
		 0.375 0.63636363 0.625 0.63636363 0.375 0.11363637 0.125 0.11363637 0.625 0.11363637
		 0.875 0.11363637 0.375 0.61363637 0.625 0.61363637 0.375 0.13636366 0.125 0.13636366
		 0.625 0.13636366 0.875 0.13636366 0.375 0.59090912 0.625 0.59090912 0.375 0.15909092
		 0.125 0.15909092 0.625 0.15909092 0.875 0.15909092 0.375 0.56818187 0.625 0.56818187
		 0.375 0.18181819 0.125 0.18181819 0.625 0.18181819 0.875 0.18181819 0.375 0.54545462
		 0.625 0.54545462 0.375 0.20454547 0.125 0.20454547 0.625 0.20454547 0.875 0.20454547
		 0.375 0.22727273 0.625 0.22727273 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625
		 0.52272731 0.375 0.52272731 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875 0.22727273
		 0.875 0.25 0.125 0.22727273 0.125 0.25 0.375 0.72727269 0.625 0.72727269 0.125 0
		 0.375 0 0.375 0.022727281 0.125 0.022727281 0.625 0 0.625 0.022727281 0.875 0 0.875
		 0.022727281 0.375 0.70454544 0.625 0.70454544 0.375 0.045454558 0.125 0.045454558
		 0.625 0.045454558 0.875 0.045454558 0.375 0.68181813 0.625 0.68181813 0.375 0.068181828
		 0.125 0.068181828 0.625 0.068181828 0.875 0.068181828 0.375 0.65909088 0.625 0.65909088
		 0.375 0.090909101 0.125 0.090909101 0.625 0.090909101 0.875 0.090909101 0.375 0.63636363
		 0.625 0.63636363 0.375 0.11363637 0.125 0.11363637 0.625 0.11363637 0.875 0.11363637
		 0.375 0.61363637 0.625 0.61363637 0.375 0.13636366 0.125 0.13636366 0.625 0.13636366
		 0.875 0.13636366 0.375 0.59090912 0.625 0.59090912 0.375 0.15909092 0.125 0.15909092
		 0.625 0.15909092 0.875 0.15909092 0.375 0.56818187 0.625 0.56818187 0.375 0.18181819
		 0.125 0.18181819 0.625 0.18181819 0.875 0.18181819 0.375 0.54545462 0.625 0.54545462
		 0.375 0.20454547 0.125 0.20454547 0.625 0.20454547 0.875 0.20454547 0.375 0 0.625
		 0 0.625 0.041666664 0.375 0.041666664 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375
		 0.70833331 0.625 0.70833331 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.041666664
		 0.125 0 0.125 0.041666664 0.375 0.20833333 0.625 0.20833333 0.125 0.20833333 0.125
		 0.25 0.625 0.54166669 0.375 0.54166669 0.875 0.20833333 0.875 0.25 0.375 0.16666667
		 0.625 0.16666667 0.125 0.16666667 0.625 0.58333337 0.375 0.58333337 0.875 0.16666667
		 0.375 0.125 0.625 0.125 0.125 0.125 0.625 0.625 0.375 0.625 0.875 0.125 0.375 0.083333328
		 0.625 0.083333328 0.125 0.083333328 0.625 0.66666663 0.375 0.66666663 0.875 0.083333328
		 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625
		 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375
		 0.25 0.625 0.27272728 0.375 0.27272728 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75
		 0.375 0.97727275 0.625 0.97727275 0.625 1 0.375 1 0.64772725 0 0.64772725 0.25 0.35227275
		 0 0.35227275 0.25 0.375 0.47727272 0.625 0.47727272 0.125 0 0.14772728 0 0.14772728
		 0.25 0.125 0.25 0.625 0.77272725 0.375 0.77272725 0.85227269 0.25 0.85227269 0 0.875
		 0 0.875 0.25;
	setAttr ".uvst[0].uvsp[250:441]" 0.375 0.45454544 0.625 0.45454544 0.17045456
		 0 0.17045456 0.25 0.625 0.7954545 0.375 0.7954545 0.82954538 0.25 0.82954538 0 0.375
		 0.43181819 0.625 0.43181819 0.19318184 0 0.19318184 0.25 0.625 0.81818175 0.375 0.81818175
		 0.80681807 0.25 0.80681807 0 0.375 0.40909091 0.625 0.40909091 0.21590911 0 0.21590911
		 0.25 0.625 0.840909 0.375 0.840909 0.78409082 0.25 0.78409082 0 0.375 0.38636363
		 0.625 0.38636363 0.23863637 0 0.23863637 0.25 0.625 0.86363631 0.375 0.86363631 0.76136357
		 0.25 0.76136357 0 0.375 0.36363637 0.625 0.36363637 0.26136366 0 0.26136366 0.25
		 0.625 0.88636363 0.375 0.88636363 0.73863631 0.25 0.73863631 0 0.375 0.34090912 0.625
		 0.34090912 0.28409094 0 0.28409094 0.25 0.625 0.90909088 0.375 0.90909088 0.71590906
		 0.25 0.71590906 0 0.375 0.31818184 0.625 0.31818184 0.30681819 0 0.30681819 0.25
		 0.625 0.93181813 0.375 0.93181813 0.69318181 0.25 0.69318181 0 0.375 0.29545456 0.625
		 0.29545456 0.32954547 0 0.32954547 0.25 0.625 0.95454544 0.375 0.95454544 0.67045456
		 0.25 0.67045456 0 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.27272728 0.375 0.27272728
		 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.97727275 0.625 0.97727275 0.625
		 1 0.375 1 0.64772725 0 0.64772725 0.25 0.35227275 0 0.35227275 0.25 0.375 0.47727272
		 0.625 0.47727272 0.125 0 0.14772728 0 0.14772728 0.25 0.125 0.25 0.625 0.77272725
		 0.375 0.77272725 0.85227269 0.25 0.85227269 0 0.875 0 0.875 0.25 0.375 0.45454544
		 0.625 0.45454544 0.17045456 0 0.17045456 0.25 0.625 0.7954545 0.375 0.7954545 0.82954538
		 0.25 0.82954538 0 0.375 0.43181819 0.625 0.43181819 0.19318184 0 0.19318184 0.25
		 0.625 0.81818175 0.375 0.81818175 0.80681807 0.25 0.80681807 0 0.375 0.40909091 0.625
		 0.40909091 0.21590911 0 0.21590911 0.25 0.625 0.840909 0.375 0.840909 0.78409082
		 0.25 0.78409082 0 0.375 0.38636363 0.625 0.38636363 0.23863637 0 0.23863637 0.25
		 0.625 0.86363631 0.375 0.86363631 0.76136357 0.25 0.76136357 0 0.375 0.36363637 0.625
		 0.36363637 0.26136366 0 0.26136366 0.25 0.625 0.88636363 0.375 0.88636363 0.73863631
		 0.25 0.73863631 0 0.375 0.34090912 0.625 0.34090912 0.28409094 0 0.28409094 0.25
		 0.625 0.90909088 0.375 0.90909088 0.71590906 0.25 0.71590906 0 0.375 0.31818184 0.625
		 0.31818184 0.30681819 0 0.30681819 0.25 0.625 0.93181813 0.375 0.93181813 0.69318181
		 0.25 0.69318181 0 0.375 0.29545456 0.625 0.29545456 0.32954547 0 0.32954547 0.25
		 0.625 0.95454544 0.375 0.95454544 0.67045456 0.25 0.67045456 0 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.625
		 0.1875 0.375 0.1875 0.125 0.1875 0.375 0.5625 0.625 0.5625 0.875 0.1875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 252 ".vt";
	setAttr ".vt[0:165]"  -0.28190088 1.13259792 0.5 0.28190088 1.13259792 0.5
		 -0.28190088 1.6241684 0.5 0.28190088 1.6241684 0.5 -0.28190088 1.6241684 -0.5 0.28190088 1.6241684 -0.5
		 -0.28190088 1.13259792 -0.5 0.28190088 1.13259792 -0.5 -0.17339425 -0.052614808 -0.15782554
		 0.17339425 -0.052614808 -0.15782554 -0.17339425 1.12655282 -0.15782554 0.17339425 1.12655282 -0.15782554
		 -0.17339425 1.12655282 -0.50461406 0.17339425 1.12655282 -0.50461406 -0.17339425 -0.052614808 -0.50461406
		 0.17339425 -0.052614808 -0.50461406 0.17339425 0.054582298 -0.50461406 -0.17339425 0.054582298 -0.50461406
		 -0.17339425 0.054582298 -0.15782554 0.17339425 0.054582298 -0.15782554 0.17339425 0.16177937 -0.50461406
		 -0.17339425 0.16177937 -0.50461406 -0.17339425 0.16177937 -0.15782554 0.17339425 0.16177937 -0.15782554
		 0.17339425 0.26897642 -0.50461406 -0.17339425 0.26897642 -0.50461406 -0.17339425 0.26897642 -0.15782554
		 0.17339425 0.26897642 -0.15782554 0.17339425 0.37617347 -0.50461406 -0.17339425 0.37617347 -0.50461406
		 -0.17339425 0.37617347 -0.15782554 0.17339425 0.37617347 -0.15782554 0.17339425 0.48337051 -0.50461406
		 -0.17339425 0.48337051 -0.50461406 -0.17339425 0.48337051 -0.15782554 0.17339425 0.48337051 -0.15782554
		 0.17339425 0.59056759 -0.50461406 -0.17339425 0.59056759 -0.50461406 -0.17339425 0.59056759 -0.15782554
		 0.17339425 0.59056759 -0.15782554 0.17339425 0.69776464 -0.50461406 -0.17339425 0.69776464 -0.50461406
		 -0.17339425 0.69776464 -0.15782554 0.17339425 0.69776464 -0.15782554 0.17339425 0.80496168 -0.50461406
		 -0.17339425 0.80496168 -0.50461406 -0.17339425 0.80496168 -0.15782554 0.17339425 0.80496168 -0.15782554
		 0.17339425 0.91215873 -0.50461406 -0.17339425 0.91215873 -0.50461406 -0.17339425 0.91215873 -0.15782554
		 0.17339425 0.91215873 -0.15782554 0.17339425 1.019355774 -0.50461406 -0.17339425 1.019355774 -0.50461406
		 -0.17339425 1.019355774 -0.15782554 0.17339425 1.019355774 -0.15782554 -0.17339425 -0.052614808 0.50126243
		 0.17339425 -0.052614808 0.50126243 -0.17339425 1.12655282 0.50126243 0.17339425 1.12655282 0.50126243
		 -0.17339425 1.12655282 0.15447392 0.17339425 1.12655282 0.15447392 -0.17339425 -0.052614808 0.15447392
		 0.17339425 -0.052614808 0.15447392 0.17339425 0.054582298 0.15447392 -0.17339425 0.054582298 0.15447392
		 -0.17339425 0.054582298 0.50126243 0.17339425 0.054582298 0.50126243 0.17339425 0.16177937 0.15447392
		 -0.17339425 0.16177937 0.15447392 -0.17339425 0.16177937 0.50126243 0.17339425 0.16177937 0.50126243
		 0.17339425 0.26897642 0.15447392 -0.17339425 0.26897642 0.15447392 -0.17339425 0.26897642 0.50126243
		 0.17339425 0.26897642 0.50126243 0.17339425 0.37617347 0.15447392 -0.17339425 0.37617347 0.15447392
		 -0.17339425 0.37617347 0.50126243 0.17339425 0.37617347 0.50126243 0.17339425 0.48337051 0.15447392
		 -0.17339425 0.48337051 0.15447392 -0.17339425 0.48337051 0.50126243 0.17339425 0.48337051 0.50126243
		 0.17339425 0.59056759 0.15447392 -0.17339425 0.59056759 0.15447392 -0.17339425 0.59056759 0.50126243
		 0.17339425 0.59056759 0.50126243 0.17339425 0.69776464 0.15447392 -0.17339425 0.69776464 0.15447392
		 -0.17339425 0.69776464 0.50126243 0.17339425 0.69776464 0.50126243 0.17339425 0.80496168 0.15447392
		 -0.17339425 0.80496168 0.15447392 -0.17339425 0.80496168 0.50126243 0.17339425 0.80496168 0.50126243
		 0.17339425 0.91215873 0.15447392 -0.17339425 0.91215873 0.15447392 -0.17339425 0.91215873 0.50126243
		 0.17339425 0.91215873 0.50126243 0.17339425 1.019355774 0.15447392 -0.17339425 1.019355774 0.15447392
		 -0.17339425 1.019355774 0.50126243 0.17339425 1.019355774 0.50126243 -0.21748064 1.6213758 0.21748064
		 0.21748064 1.6213758 0.21748064 -0.21748064 2.37143993 0.21748064 0.21748064 2.37143993 0.21748064
		 -0.21748064 2.37143993 -0.21748064 0.21748064 2.37143993 -0.21748064 -0.21748064 1.6213758 -0.21748064
		 0.21748064 1.6213758 -0.21748064 0.21748064 2.2464292 0.21748064 -0.21748064 2.2464292 0.21748064
		 -0.21748064 2.2464292 -0.21748064 0.21748064 2.2464292 -0.21748064 0.21748064 2.12141848 0.21748064
		 -0.21748064 2.12141848 0.21748064 -0.21748064 2.12141848 -0.21748064 0.21748064 2.12141848 -0.21748064
		 0.21748064 1.99640787 0.21748064 -0.21748064 1.99640787 0.21748064 -0.21748064 1.99640787 -0.21748064
		 0.21748064 1.99640787 -0.21748064 0.21748064 1.87139714 0.21748064 -0.21748064 1.87139714 0.21748064
		 -0.21748064 1.87139714 -0.21748064 0.21748064 1.87139714 -0.21748064 0.21748064 1.74638653 0.21748064
		 -0.21748064 1.74638653 0.21748064 -0.21748064 1.74638653 -0.21748064 0.21748064 1.74638653 -0.21748064
		 -0.27150357 2.35591912 0.5 0.27150357 2.35591912 0.5 -0.27150357 2.74554086 0.5 0.27150357 2.74554086 0.5
		 -0.27150357 2.74554086 -0.5 0.27150357 2.74554086 -0.5 -0.27150357 2.35591912 -0.5
		 0.27150357 2.35591912 -0.5 -0.11966167 2.45369101 1.73130965 0.11966167 2.45369101 1.73130965
		 -0.11966167 2.69301414 1.73130965 0.11966167 2.69301414 1.73130965 -0.11966167 2.69301414 0.46806693
		 0.11966167 2.69301414 0.46806693 -0.11966167 2.45369101 0.46806693 0.11966167 2.45369101 0.46806693
		 0.11966167 2.69301414 0.5829072 -0.11966167 2.69301414 0.5829072 -0.11966167 2.45369101 0.5829072
		 0.11966167 2.45369101 0.5829072 0.11966167 2.69301414 0.69774747 -0.11966167 2.69301414 0.69774747
		 -0.11966167 2.45369101 0.69774747 0.11966167 2.45369101 0.69774747 0.11966167 2.69301414 0.81258774
		 -0.11966167 2.69301414 0.81258774 -0.11966167 2.45369101 0.81258774 0.11966167 2.45369101 0.81258774
		 0.11966167 2.69301414 0.92742801 -0.11966167 2.69301414 0.92742801 -0.11966167 2.45369101 0.92742801
		 0.11966167 2.45369101 0.92742801 0.11966167 2.69301414 1.042268157 -0.11966167 2.69301414 1.042268157;
	setAttr ".vt[166:251]" -0.11966167 2.45369101 1.042268157 0.11966167 2.45369101 1.042268157
		 0.11966167 2.69301414 1.15710843 -0.11966167 2.69301414 1.15710843 -0.11966167 2.45369101 1.15710843
		 0.11966167 2.45369101 1.15710843 0.11966167 2.69301414 1.2719487 -0.11966167 2.69301414 1.2719487
		 -0.11966167 2.45369101 1.2719487 0.11966167 2.45369101 1.2719487 0.11966167 2.69301414 1.38678896
		 -0.11966167 2.69301414 1.38678896 -0.11966167 2.45369101 1.38678896 0.11966167 2.45369101 1.38678896
		 0.11966167 2.69301414 1.50162911 -0.11966167 2.69301414 1.50162911 -0.11966167 2.45369101 1.50162911
		 0.11966167 2.45369101 1.50162911 0.11966167 2.69301414 1.61646938 -0.11966167 2.69301414 1.61646938
		 -0.11966167 2.45369101 1.61646938 0.11966167 2.45369101 1.61646938 -0.11966167 2.45369101 -0.48455489
		 0.11966167 2.45369101 -0.48455489 -0.11966167 2.69301414 -0.48455489 0.11966167 2.69301414 -0.48455489
		 -0.11966167 2.69301414 -1.74779761 0.11966167 2.69301414 -1.74779761 -0.11966167 2.45369101 -1.74779761
		 0.11966167 2.45369101 -1.74779761 0.11966167 2.69301414 -1.63295734 -0.11966167 2.69301414 -1.63295734
		 -0.11966167 2.45369101 -1.63295734 0.11966167 2.45369101 -1.63295734 0.11966167 2.69301414 -1.51811707
		 -0.11966167 2.69301414 -1.51811707 -0.11966167 2.45369101 -1.51811707 0.11966167 2.45369101 -1.51811707
		 0.11966167 2.69301414 -1.4032768 -0.11966167 2.69301414 -1.4032768 -0.11966167 2.45369101 -1.4032768
		 0.11966167 2.45369101 -1.4032768 0.11966167 2.69301414 -1.28843653 -0.11966167 2.69301414 -1.28843653
		 -0.11966167 2.45369101 -1.28843653 0.11966167 2.45369101 -1.28843653 0.11966167 2.69301414 -1.17359638
		 -0.11966167 2.69301414 -1.17359638 -0.11966167 2.45369101 -1.17359638 0.11966167 2.45369101 -1.17359638
		 0.11966167 2.69301414 -1.058756113 -0.11966167 2.69301414 -1.058756113 -0.11966167 2.45369101 -1.058756113
		 0.11966167 2.45369101 -1.058756113 0.11966167 2.69301414 -0.94391584 -0.11966167 2.69301414 -0.94391584
		 -0.11966167 2.45369101 -0.94391584 0.11966167 2.45369101 -0.94391584 0.11966167 2.69301414 -0.82907557
		 -0.11966167 2.69301414 -0.82907557 -0.11966167 2.45369101 -0.82907557 0.11966167 2.45369101 -0.82907557
		 0.11966167 2.69301414 -0.71423537 -0.11966167 2.69301414 -0.71423537 -0.11966167 2.45369101 -0.71423537
		 0.11966167 2.45369101 -0.71423537 0.11966167 2.69301414 -0.5993951 -0.11966167 2.69301414 -0.5993951
		 -0.11966167 2.45369101 -0.5993951 0.11966167 2.45369101 -0.5993951 -0.11662649 2.71678543 0.11662649
		 0.11662649 2.71678543 0.11662649 -0.11662649 3.022573471 0.11662649 0.11662649 3.022573471 0.11662649
		 -0.11662649 3.022573471 -0.11662649 0.11662649 3.022573471 -0.11662649 -0.11662649 2.71678543 -0.11662649
		 0.11662649 2.71678543 -0.11662649 -0.25568905 2.96664572 0.25568905 0.25568905 2.96664572 0.25568905
		 -0.25568905 3.47802401 0.25568905 0.25568905 3.47802401 0.25568905 -0.25568905 3.47802401 -0.25568905
		 0.25568905 3.47802401 -0.25568905 -0.25568905 2.96664572 -0.25568905 0.25568905 2.96664572 -0.25568905;
	setAttr -s 468 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 18 0 9 19 0 10 12 0 11 13 0 12 53 0
		 13 52 0 14 8 0 15 9 0 16 15 0 17 14 0 16 17 1 18 22 0 17 18 1 19 23 0 18 19 1 19 16 1
		 20 16 0 21 17 0 20 21 1 22 26 0 21 22 1 23 27 0 22 23 1 23 20 1 24 20 0 25 21 0 24 25 1
		 26 30 0 25 26 1 27 31 0 26 27 1 27 24 1 28 24 0 29 25 0 28 29 1 30 34 0 29 30 1 31 35 0
		 30 31 1 31 28 1 32 28 0 33 29 0 32 33 1 34 38 0 33 34 1 35 39 0 34 35 1 35 32 1 36 32 0
		 37 33 0 36 37 1 38 42 0 37 38 1 39 43 0 38 39 1 39 36 1 40 36 0 41 37 0 40 41 1 42 46 0
		 41 42 1 43 47 0 42 43 1 43 40 1 44 40 0 45 41 0 44 45 1 46 50 0 45 46 1 47 51 0 46 47 1
		 47 44 1 48 44 0 49 45 0 48 49 1 50 54 0 49 50 1 51 55 0 50 51 1 51 48 1 52 48 0 53 49 0
		 52 53 1 54 10 0 53 54 1 55 11 0 54 55 1 55 52 1 56 57 0 58 59 0 60 61 0 62 63 0 56 66 0
		 57 67 0 58 60 0 59 61 0 60 101 0 61 100 0 62 56 0 63 57 0 64 63 0 65 62 0 64 65 1
		 66 70 0 65 66 1 67 71 0 66 67 1 67 64 1 68 64 0 69 65 0 68 69 1 70 74 0 69 70 1 71 75 0
		 70 71 1 71 68 1 72 68 0 73 69 0 72 73 1 74 78 0 73 74 1 75 79 0 74 75 1 75 72 1 76 72 0
		 77 73 0 76 77 1 78 82 0 77 78 1 79 83 0 78 79 1 79 76 1 80 76 0 81 77 0 80 81 1 82 86 0
		 81 82 1 83 87 0 82 83 1 83 80 1 84 80 0 85 81 0 84 85 1 86 90 0 85 86 1 87 91 0 86 87 1
		 87 84 1 88 84 0 89 85 0;
	setAttr ".ed[166:331]" 88 89 1 90 94 0 89 90 1 91 95 0 90 91 1 91 88 1 92 88 0
		 93 89 0 92 93 1 94 98 0 93 94 1 95 99 0 94 95 1 95 92 1 96 92 0 97 93 0 96 97 1 98 102 0
		 97 98 1 99 103 0 98 99 1 99 96 1 100 96 0 101 97 0 100 101 1 102 58 0 101 102 1 103 59 0
		 102 103 1 103 100 1 104 105 0 106 107 0 108 109 0 110 111 0 104 129 0 105 128 0 106 108 0
		 107 109 0 108 114 0 109 115 0 110 104 0 111 105 0 112 107 0 113 106 0 112 113 1 114 118 0
		 113 114 1 115 119 0 114 115 1 115 112 1 116 112 0 117 113 0 116 117 1 118 122 0 117 118 1
		 119 123 0 118 119 1 119 116 1 120 116 0 121 117 0 120 121 1 122 126 0 121 122 1 123 127 0
		 122 123 1 123 120 1 124 120 0 125 121 0 124 125 1 126 130 0 125 126 1 127 131 0 126 127 1
		 127 124 1 128 124 0 129 125 0 128 129 1 130 110 0 129 130 1 131 111 0 130 131 1 131 128 1
		 132 133 0 134 135 0 136 137 0 138 139 0 132 134 0 133 135 0 134 136 0 135 137 0 136 138 0
		 137 139 0 138 132 0 139 133 0 140 141 0 142 143 0 144 145 0 146 147 0 140 142 0 141 143 0
		 142 185 0 143 184 0 144 146 0 145 147 0 146 150 0 147 151 0 148 145 0 149 144 0 148 149 1
		 150 154 0 149 150 1 151 155 0 150 151 1 151 148 1 152 148 0 153 149 0 152 153 1 154 158 0
		 153 154 1 155 159 0 154 155 1 155 152 1 156 152 0 157 153 0 156 157 1 158 162 0 157 158 1
		 159 163 0 158 159 1 159 156 1 160 156 0 161 157 0 160 161 1 162 166 0 161 162 1 163 167 0
		 162 163 1 163 160 1 164 160 0 165 161 0 164 165 1 166 170 0 165 166 1 167 171 0 166 167 1
		 167 164 1 168 164 0 169 165 0 168 169 1 170 174 0 169 170 1 171 175 0 170 171 1 171 168 1
		 172 168 0 173 169 0 172 173 1 174 178 0 173 174 1 175 179 0 174 175 1 175 172 1 176 172 0
		 177 173 0 176 177 1 178 182 0;
	setAttr ".ed[332:467]" 177 178 1 179 183 0 178 179 1 179 176 1 180 176 0 181 177 0
		 180 181 1 182 186 0 181 182 1 183 187 0 182 183 1 183 180 1 184 180 0 185 181 0 184 185 1
		 186 140 0 185 186 1 187 141 0 186 187 1 187 184 1 188 189 0 190 191 0 192 193 0 194 195 0
		 188 190 0 189 191 0 190 233 0 191 232 0 192 194 0 193 195 0 194 198 0 195 199 0 196 193 0
		 197 192 0 196 197 1 198 202 0 197 198 1 199 203 0 198 199 1 199 196 1 200 196 0 201 197 0
		 200 201 1 202 206 0 201 202 1 203 207 0 202 203 1 203 200 1 204 200 0 205 201 0 204 205 1
		 206 210 0 205 206 1 207 211 0 206 207 1 207 204 1 208 204 0 209 205 0 208 209 1 210 214 0
		 209 210 1 211 215 0 210 211 1 211 208 1 212 208 0 213 209 0 212 213 1 214 218 0 213 214 1
		 215 219 0 214 215 1 215 212 1 216 212 0 217 213 0 216 217 1 218 222 0 217 218 1 219 223 0
		 218 219 1 219 216 1 220 216 0 221 217 0 220 221 1 222 226 0 221 222 1 223 227 0 222 223 1
		 223 220 1 224 220 0 225 221 0 224 225 1 226 230 0 225 226 1 227 231 0 226 227 1 227 224 1
		 228 224 0 229 225 0 228 229 1 230 234 0 229 230 1 231 235 0 230 231 1 231 228 1 232 228 0
		 233 229 0 232 233 1 234 188 0 233 234 1 235 189 0 234 235 1 235 232 1 236 237 0 238 239 0
		 240 241 0 242 243 0 236 238 0 237 239 0 238 240 0 239 241 0 240 242 0 241 243 0 242 236 0
		 243 237 0 244 245 0 246 247 0 248 249 0 250 251 0 244 246 0 245 247 0 246 248 0 247 249 0
		 248 250 0 249 251 0 250 244 0 251 245 0;
	setAttr -s 234 -ch 936 ".fc[0:233]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 102 101 -14 -100
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 98 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 22 23 24 25
		f 4 103 -22 -20 -102
		mu 0 4 15 26 27 16
		f 4 100 99 18 20
		mu 0 4 28 14 17 29
		f 4 -27 24 -16 -26
		mu 0 4 30 31 23 22
		f 4 22 16 -29 25
		mu 0 4 32 33 34 35
		f 4 12 17 -31 -17
		mu 0 4 33 36 37 34
		f 4 -24 -25 -32 -18
		mu 0 4 36 38 39 37
		f 4 -35 32 26 -34
		mu 0 4 40 41 31 30
		f 4 28 27 -37 33
		mu 0 4 35 34 42 43
		f 4 30 29 -39 -28
		mu 0 4 34 37 44 42
		f 4 31 -33 -40 -30
		mu 0 4 37 39 45 44
		f 4 -43 40 34 -42
		mu 0 4 46 47 41 40
		f 4 36 35 -45 41
		mu 0 4 43 42 48 49
		f 4 38 37 -47 -36
		mu 0 4 42 44 50 48
		f 4 39 -41 -48 -38
		mu 0 4 44 45 51 50
		f 4 -51 48 42 -50
		mu 0 4 52 53 47 46
		f 4 44 43 -53 49
		mu 0 4 49 48 54 55
		f 4 46 45 -55 -44
		mu 0 4 48 50 56 54
		f 4 47 -49 -56 -46
		mu 0 4 50 51 57 56
		f 4 -59 56 50 -58
		mu 0 4 58 59 53 52
		f 4 52 51 -61 57
		mu 0 4 55 54 60 61
		f 4 54 53 -63 -52
		mu 0 4 54 56 62 60
		f 4 55 -57 -64 -54
		mu 0 4 56 57 63 62
		f 4 -67 64 58 -66
		mu 0 4 64 65 59 58
		f 4 60 59 -69 65
		mu 0 4 61 60 66 67
		f 4 62 61 -71 -60
		mu 0 4 60 62 68 66
		f 4 63 -65 -72 -62
		mu 0 4 62 63 69 68
		f 4 -75 72 66 -74
		mu 0 4 70 71 65 64
		f 4 68 67 -77 73
		mu 0 4 67 66 72 73
		f 4 70 69 -79 -68
		mu 0 4 66 68 74 72
		f 4 71 -73 -80 -70
		mu 0 4 68 69 75 74
		f 4 -83 80 74 -82
		mu 0 4 76 77 71 70
		f 4 76 75 -85 81
		mu 0 4 73 72 78 79
		f 4 78 77 -87 -76
		mu 0 4 72 74 80 78
		f 4 79 -81 -88 -78
		mu 0 4 74 75 81 80
		f 4 -91 88 82 -90
		mu 0 4 82 83 77 76
		f 4 84 83 -93 89
		mu 0 4 79 78 84 85
		f 4 86 85 -95 -84
		mu 0 4 78 80 86 84
		f 4 87 -89 -96 -86
		mu 0 4 80 81 87 86
		f 4 -99 96 90 -98
		mu 0 4 21 20 83 82
		f 4 92 91 -101 97
		mu 0 4 85 84 14 28
		f 4 94 93 -103 -92
		mu 0 4 84 86 15 14
		f 4 95 -97 -104 -94
		mu 0 4 86 87 26 15
		f 4 194 193 -106 -192
		mu 0 4 88 89 90 91
		f 4 105 111 -107 -111
		mu 0 4 91 90 92 93
		f 4 106 113 190 -113
		mu 0 4 93 92 94 95
		f 4 107 115 -105 -115
		mu 0 4 96 97 98 99
		f 4 195 -114 -112 -194
		mu 0 4 89 100 101 90
		f 4 192 191 110 112
		mu 0 4 102 88 91 103
		f 4 -119 116 -108 -118
		mu 0 4 104 105 97 96
		f 4 114 108 -121 117
		mu 0 4 106 107 108 109
		f 4 104 109 -123 -109
		mu 0 4 107 110 111 108
		f 4 -116 -117 -124 -110
		mu 0 4 110 112 113 111
		f 4 -127 124 118 -126
		mu 0 4 114 115 105 104
		f 4 120 119 -129 125
		mu 0 4 109 108 116 117
		f 4 122 121 -131 -120
		mu 0 4 108 111 118 116
		f 4 123 -125 -132 -122
		mu 0 4 111 113 119 118
		f 4 -135 132 126 -134
		mu 0 4 120 121 115 114
		f 4 128 127 -137 133
		mu 0 4 117 116 122 123
		f 4 130 129 -139 -128
		mu 0 4 116 118 124 122
		f 4 131 -133 -140 -130
		mu 0 4 118 119 125 124
		f 4 -143 140 134 -142
		mu 0 4 126 127 121 120
		f 4 136 135 -145 141
		mu 0 4 123 122 128 129
		f 4 138 137 -147 -136
		mu 0 4 122 124 130 128
		f 4 139 -141 -148 -138
		mu 0 4 124 125 131 130
		f 4 -151 148 142 -150
		mu 0 4 132 133 127 126
		f 4 144 143 -153 149
		mu 0 4 129 128 134 135
		f 4 146 145 -155 -144
		mu 0 4 128 130 136 134
		f 4 147 -149 -156 -146
		mu 0 4 130 131 137 136
		f 4 -159 156 150 -158
		mu 0 4 138 139 133 132
		f 4 152 151 -161 157
		mu 0 4 135 134 140 141
		f 4 154 153 -163 -152
		mu 0 4 134 136 142 140
		f 4 155 -157 -164 -154
		mu 0 4 136 137 143 142
		f 4 -167 164 158 -166
		mu 0 4 144 145 139 138
		f 4 160 159 -169 165
		mu 0 4 141 140 146 147
		f 4 162 161 -171 -160
		mu 0 4 140 142 148 146
		f 4 163 -165 -172 -162
		mu 0 4 142 143 149 148
		f 4 -175 172 166 -174
		mu 0 4 150 151 145 144
		f 4 168 167 -177 173
		mu 0 4 147 146 152 153
		f 4 170 169 -179 -168
		mu 0 4 146 148 154 152
		f 4 171 -173 -180 -170
		mu 0 4 148 149 155 154
		f 4 -183 180 174 -182
		mu 0 4 156 157 151 150
		f 4 176 175 -185 181
		mu 0 4 153 152 158 159
		f 4 178 177 -187 -176
		mu 0 4 152 154 160 158
		f 4 179 -181 -188 -178
		mu 0 4 154 155 161 160
		f 4 -191 188 182 -190
		mu 0 4 95 94 157 156
		f 4 184 183 -193 189
		mu 0 4 159 158 88 102
		f 4 186 185 -195 -184
		mu 0 4 158 160 89 88
		f 4 187 -189 -196 -186
		mu 0 4 160 161 100 89
		f 4 196 201 242 -201
		mu 0 4 162 163 164 165
		f 4 197 203 -199 -203
		mu 0 4 166 167 168 169
		f 4 246 245 -200 -244
		mu 0 4 170 171 172 173
		f 4 199 207 -197 -207
		mu 0 4 173 172 174 175
		f 4 -208 -246 247 -202
		mu 0 4 163 176 177 164
		f 4 206 200 244 243
		mu 0 4 178 162 165 179
		f 4 -211 208 -198 -210
		mu 0 4 180 181 167 166
		f 4 -213 209 202 204
		mu 0 4 182 180 166 183
		f 4 198 205 -215 -205
		mu 0 4 169 168 184 185
		f 4 -216 -206 -204 -209
		mu 0 4 181 186 187 167
		f 4 -219 216 210 -218
		mu 0 4 188 189 181 180
		f 4 -221 217 212 211
		mu 0 4 190 188 180 182
		f 4 214 213 -223 -212
		mu 0 4 185 184 191 192
		f 4 -224 -214 215 -217
		mu 0 4 189 193 186 181
		f 4 -227 224 218 -226
		mu 0 4 194 195 189 188
		f 4 -229 225 220 219
		mu 0 4 196 194 188 190
		f 4 222 221 -231 -220
		mu 0 4 192 191 197 198
		f 4 -232 -222 223 -225
		mu 0 4 195 199 193 189
		f 4 -235 232 226 -234
		mu 0 4 200 201 195 194
		f 4 -237 233 228 227
		mu 0 4 202 200 194 196
		f 4 230 229 -239 -228
		mu 0 4 198 197 203 204
		f 4 -240 -230 231 -233
		mu 0 4 201 205 199 195
		f 4 -243 240 234 -242
		mu 0 4 165 164 201 200
		f 4 -245 241 236 235
		mu 0 4 179 165 200 202
		f 4 238 237 -247 -236
		mu 0 4 204 203 171 170
		f 4 -248 -238 239 -241
		mu 0 4 164 177 205 201
		f 4 248 253 -250 -253
		mu 0 4 206 207 208 209
		f 4 249 255 -251 -255
		mu 0 4 209 208 210 211
		f 4 250 257 -252 -257
		mu 0 4 211 210 212 213
		f 4 251 259 -249 -259
		mu 0 4 213 212 214 215
		f 4 -260 -258 -256 -254
		mu 0 4 207 216 217 208
		f 4 258 252 254 256
		mu 0 4 218 206 209 219
		f 4 260 265 -262 -265
		mu 0 4 220 221 222 223
		f 4 261 267 346 -267
		mu 0 4 223 222 224 225
		f 4 262 269 -264 -269
		mu 0 4 226 227 228 229
		f 4 350 349 -261 -348
		mu 0 4 230 231 232 233
		f 4 -350 351 -268 -266
		mu 0 4 221 234 235 222
		f 4 347 264 266 348
		mu 0 4 236 220 223 237
		f 4 -275 272 -263 -274
		mu 0 4 238 239 227 226
		f 4 270 -277 273 268
		mu 0 4 240 241 242 243
		f 4 263 271 -279 -271
		mu 0 4 229 228 244 245
		f 4 -280 -272 -270 -273
		mu 0 4 246 247 248 249
		f 4 -283 280 274 -282
		mu 0 4 250 251 239 238
		f 4 275 -285 281 276
		mu 0 4 241 252 253 242
		f 4 278 277 -287 -276
		mu 0 4 245 244 254 255
		f 4 -288 -278 279 -281
		mu 0 4 256 257 247 246
		f 4 -291 288 282 -290
		mu 0 4 258 259 251 250
		f 4 283 -293 289 284
		mu 0 4 252 260 261 253
		f 4 286 285 -295 -284
		mu 0 4 255 254 262 263
		f 4 -296 -286 287 -289
		mu 0 4 264 265 257 256
		f 4 -299 296 290 -298
		mu 0 4 266 267 259 258
		f 4 291 -301 297 292
		mu 0 4 260 268 269 261
		f 4 294 293 -303 -292
		mu 0 4 263 262 270 271
		f 4 -304 -294 295 -297
		mu 0 4 272 273 265 264
		f 4 -307 304 298 -306
		mu 0 4 274 275 267 266
		f 4 299 -309 305 300
		mu 0 4 268 276 277 269
		f 4 302 301 -311 -300
		mu 0 4 271 270 278 279
		f 4 -312 -302 303 -305
		mu 0 4 280 281 273 272
		f 4 -315 312 306 -314
		mu 0 4 282 283 275 274
		f 4 307 -317 313 308
		mu 0 4 276 284 285 277
		f 4 310 309 -319 -308
		mu 0 4 279 278 286 287
		f 4 -320 -310 311 -313
		mu 0 4 288 289 281 280
		f 4 -323 320 314 -322
		mu 0 4 290 291 283 282
		f 4 315 -325 321 316
		mu 0 4 284 292 293 285
		f 4 318 317 -327 -316
		mu 0 4 287 286 294 295
		f 4 -328 -318 319 -321
		mu 0 4 296 297 289 288
		f 4 -331 328 322 -330
		mu 0 4 298 299 291 290
		f 4 323 -333 329 324
		mu 0 4 292 300 301 293
		f 4 326 325 -335 -324
		mu 0 4 295 294 302 303
		f 4 -336 -326 327 -329
		mu 0 4 304 305 297 296
		f 4 -339 336 330 -338
		mu 0 4 306 307 299 298
		f 4 331 -341 337 332
		mu 0 4 300 308 309 301
		f 4 334 333 -343 -332
		mu 0 4 303 302 310 311
		f 4 -344 -334 335 -337
		mu 0 4 312 313 305 304
		f 4 -347 344 338 -346
		mu 0 4 225 224 307 306
		f 4 339 -349 345 340
		mu 0 4 308 236 237 309
		f 4 342 341 -351 -340
		mu 0 4 311 310 231 230
		f 4 -352 -342 343 -345
		mu 0 4 235 234 313 312
		f 4 352 357 -354 -357
		mu 0 4 314 315 316 317
		f 4 353 359 438 -359
		mu 0 4 317 316 318 319
		f 4 354 361 -356 -361
		mu 0 4 320 321 322 323
		f 4 442 441 -353 -440
		mu 0 4 324 325 326 327
		f 4 -442 443 -360 -358
		mu 0 4 315 328 329 316
		f 4 439 356 358 440
		mu 0 4 330 314 317 331
		f 4 -367 364 -355 -366
		mu 0 4 332 333 321 320
		f 4 362 -369 365 360
		mu 0 4 334 335 336 337
		f 4 355 363 -371 -363
		mu 0 4 323 322 338 339
		f 4 -372 -364 -362 -365
		mu 0 4 340 341 342 343
		f 4 -375 372 366 -374
		mu 0 4 344 345 333 332
		f 4 367 -377 373 368
		mu 0 4 335 346 347 336
		f 4 370 369 -379 -368
		mu 0 4 339 338 348 349
		f 4 -380 -370 371 -373
		mu 0 4 350 351 341 340
		f 4 -383 380 374 -382
		mu 0 4 352 353 345 344
		f 4 375 -385 381 376
		mu 0 4 346 354 355 347
		f 4 378 377 -387 -376
		mu 0 4 349 348 356 357
		f 4 -388 -378 379 -381
		mu 0 4 358 359 351 350
		f 4 -391 388 382 -390
		mu 0 4 360 361 353 352
		f 4 383 -393 389 384
		mu 0 4 354 362 363 355
		f 4 386 385 -395 -384
		mu 0 4 357 356 364 365
		f 4 -396 -386 387 -389
		mu 0 4 366 367 359 358
		f 4 -399 396 390 -398
		mu 0 4 368 369 361 360
		f 4 391 -401 397 392
		mu 0 4 362 370 371 363
		f 4 394 393 -403 -392
		mu 0 4 365 364 372 373
		f 4 -404 -394 395 -397
		mu 0 4 374 375 367 366
		f 4 -407 404 398 -406
		mu 0 4 376 377 369 368
		f 4 399 -409 405 400
		mu 0 4 370 378 379 371
		f 4 402 401 -411 -400
		mu 0 4 373 372 380 381
		f 4 -412 -402 403 -405
		mu 0 4 382 383 375 374
		f 4 -415 412 406 -414
		mu 0 4 384 385 377 376
		f 4 407 -417 413 408
		mu 0 4 378 386 387 379
		f 4 410 409 -419 -408
		mu 0 4 381 380 388 389
		f 4 -420 -410 411 -413
		mu 0 4 390 391 383 382
		f 4 -423 420 414 -422
		mu 0 4 392 393 385 384
		f 4 415 -425 421 416
		mu 0 4 386 394 395 387
		f 4 418 417 -427 -416
		mu 0 4 389 388 396 397
		f 4 -428 -418 419 -421
		mu 0 4 398 399 391 390
		f 4 -431 428 422 -430
		mu 0 4 400 401 393 392
		f 4 423 -433 429 424
		mu 0 4 394 402 403 395
		f 4 426 425 -435 -424
		mu 0 4 397 396 404 405
		f 4 -436 -426 427 -429
		mu 0 4 406 407 399 398
		f 4 -439 436 430 -438
		mu 0 4 319 318 401 400
		f 4 431 -441 437 432
		mu 0 4 402 330 331 403
		f 4 434 433 -443 -432
		mu 0 4 405 404 325 324
		f 4 -444 -434 435 -437
		mu 0 4 329 328 407 406
		f 4 444 449 -446 -449
		mu 0 4 408 409 410 411
		f 4 445 451 -447 -451
		mu 0 4 411 410 412 413
		f 4 446 453 -448 -453
		mu 0 4 413 412 414 415
		f 4 447 455 -445 -455
		mu 0 4 415 414 416 417
		f 4 -456 -454 -452 -450
		mu 0 4 409 418 419 410
		f 4 454 448 450 452
		mu 0 4 420 408 411 421
		f 4 456 461 -458 -461
		mu 0 4 422 423 424 425
		f 4 457 463 -459 -463
		mu 0 4 425 424 426 427
		f 4 458 465 -460 -465
		mu 0 4 427 426 428 429
		f 4 459 467 -457 -467
		mu 0 4 429 428 430 431
		f 4 -468 -466 -464 -462
		mu 0 4 423 432 433 424
		f 4 466 460 462 464
		mu 0 4 434 422 425 435;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Shirt_01" -p "Geometry";
	rename -uid "DD1712DD-45C6-4F94-9046-F38F13722009";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 2.181901157997034 0 ;
	setAttr ".sp" -type "double3" 0 2.181901157997034 0 ;
createNode mesh -n "Shirt_01Shape" -p "Shirt_01";
	rename -uid "43B14234-492B-93F6-590C-FBA935010172";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.4375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "Shirt_01ShapeOrig" -p "Shirt_01";
	rename -uid "2C9725CA-41D0-8B7B-D036-4EA1EE922798";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 112 ".uvst[0].uvsp[0:111]" -type "float2" 0.375 0.5 0.625 0.5
		 0.625 0.75 0.375 0.75 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5
		 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.625 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.375
		 0.5 0.625 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5
		 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.375 0.375 0.375 0.375 0.375
		 0.125 0 0.25 0 0.25 0.25 0.125 0.25 0.625 0.875 0.375 0.875 0.75 0.25 0.75 0 0.875
		 0 0.875 0.25 0.625 0.375 0.625 0.375 0.625 0.375 0.625 0.375 0.625 0.375 0.625 0.375
		 0.625 0.375 0.375 0.375 0.375 0.375 0.375 0.375 0.375 0.375 0.375 0.5 0.375 0.75
		 0.625 0.75 0.625 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5
		 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.625 0.5 0.375 0.5 0.375 0.5 0.625
		 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.375 0.5 0.375 0.5
		 0.625 0.5 0.625 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.375 0.375 0.375 0.375 0.375 0.375
		 0.125 0 0.125 0.25 0.25 0.25 0.25 0 0.375 0.875 0.625 0.875 0.75 0.25 0.875 0.25
		 0.875 0 0.75 0 0.625 0.375 0.625 0.375 0.625 0.375 0.625 0.375 0.625 0.375 0.625
		 0.375 0.625 0.375 0.375 0.375 0.375 0.375 0.375 0.375 0.375 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 80 ".vt[0:79]"  -0.31044137 1.74985242 -0.53292972 0.31044137 1.74985242 -0.53292972
		 -0.31044137 1.60776198 -0.53292972 0.31044137 1.60776198 -0.53292972 0.31044137 1.87888229 -0.53292972
		 -0.31044137 1.87888229 -0.53292972 0.31044137 1.99837375 -0.53292972 -0.31044137 1.99837375 -0.53292972
		 0.31044137 2.12372279 -0.53292972 -0.31044137 2.12372279 -0.53292972 0.31044137 2.24753857 -0.53292972
		 -0.31044137 2.24753857 -0.53292972 0.31044137 2.35681367 -0.53292972 -0.31044137 2.35681367 -0.53292972
		 0.31044137 2.75604057 -0.53292972 -0.31044137 2.75604057 -0.53292972 -0.23467457 2.39533949 -0.53292972
		 0.23467457 2.39533949 -0.53292972 -0.23467457 2.71751451 -0.53292972 0.23467457 2.71751451 -0.53292972
		 -0.23467457 2.39533949 -0.60263014 0.23467457 2.39533949 -0.60263014 -0.23467457 2.71751451 -0.60263014
		 0.23467457 2.71751451 -0.60263014 -0.23467457 2.39533949 -0.71576756 0.23467457 2.39533949 -0.71576756
		 -0.23467457 2.71751451 -0.71576756 0.23467457 2.71751451 -0.71576756 -0.23467457 2.39533949 -0.83016771
		 0.23467457 2.39533949 -0.83016771 -0.23467457 2.71751451 -0.83016771 0.23467457 2.71751451 -0.83016771
		 -0.31044137 1.99837375 0 -0.31044137 1.87888229 0 -0.31044137 1.74985242 0 -0.31044137 1.60776198 0
		 0.31044137 1.60776198 0 0.31044137 1.74985242 0 0.31044137 1.87888229 0 0.31044137 1.99837375 0
		 0.31044137 2.12372279 0 0.31044137 2.24753857 0 0.31044137 2.35681367 0 0.31044137 2.75604057 0
		 -0.31044137 2.75604057 0 -0.31044137 2.35681367 0 -0.31044137 2.24753857 0 -0.31044137 2.12372279 0
		 -0.31044137 1.74985242 0.53292972 0.31044137 1.74985242 0.53292972 -0.31044137 1.60776198 0.53292972
		 0.31044137 1.60776198 0.53292972 0.31044137 1.87888229 0.53292972 -0.31044137 1.87888229 0.53292972
		 0.31044137 1.99837375 0.53292972 -0.31044137 1.99837375 0.53292972 0.31044137 2.12372279 0.53292972
		 -0.31044137 2.12372279 0.53292972 0.31044137 2.24753857 0.53292972 -0.31044137 2.24753857 0.53292972
		 0.31044137 2.35681367 0.53292972 -0.31044137 2.35681367 0.53292972 0.31044137 2.75604057 0.53292972
		 -0.31044137 2.75604057 0.53292972 -0.23467457 2.39533949 0.53292972 0.23467457 2.39533949 0.53292972
		 -0.23467457 2.71751451 0.53292972 0.23467457 2.71751451 0.53292972 -0.23467457 2.39533949 0.60263014
		 0.23467457 2.39533949 0.60263014 -0.23467457 2.71751451 0.60263014 0.23467457 2.71751451 0.60263014
		 -0.23467457 2.39533949 0.71576756 0.23467457 2.39533949 0.71576756 -0.23467457 2.71751451 0.71576756
		 0.23467457 2.71751451 0.71576756 -0.23467457 2.39533949 0.83016771 0.23467457 2.39533949 0.83016771
		 -0.23467457 2.71751451 0.83016771 0.23467457 2.71751451 0.83016771;
	setAttr -s 156 ".ed[0:155]"  0 1 0 2 3 0 0 2 0 1 3 0 2 35 0 3 36 0 1 4 0
		 0 5 0 5 4 0 4 6 0 5 7 0 7 6 0 6 8 0 7 9 0 9 8 0 8 10 0 9 11 0 11 10 0 10 12 0 11 13 0
		 13 12 0 12 14 0 13 15 0 15 14 0 13 16 0 12 17 0 16 17 0 15 18 0 16 18 0 14 19 0 18 19 0
		 17 19 0 16 20 0 17 21 0 20 21 0 18 22 0 20 22 0 19 23 0 22 23 0 21 23 0 20 24 0 21 25 0
		 24 25 0 22 26 0 24 26 0 23 27 0 26 27 0 25 27 0 24 28 0 25 29 0 28 29 0 26 30 0 28 30 0
		 27 31 0 30 31 0 29 31 0 32 7 0 33 5 0 32 33 1 34 0 0 33 34 1 34 35 1 35 36 1 37 1 0
		 36 37 1 38 4 0 37 38 1 39 6 0 38 39 1 40 8 0 39 40 1 41 10 0 40 41 1 42 12 0 41 42 1
		 43 14 0 42 43 1 44 15 0 43 44 1 45 13 0 44 45 1 46 11 0 45 46 1 47 9 0 46 47 1 47 32 1
		 48 49 0 49 51 0 50 51 0 48 50 0 48 53 0 53 52 0 49 52 0 53 55 0 55 54 0 52 54 0 55 57 0
		 57 56 0 54 56 0 57 59 0 59 58 0 56 58 0 59 61 0 61 60 0 58 60 0 76 77 0 76 78 0 78 79 0
		 77 79 0 61 64 0 64 65 0 60 65 0 61 63 0 63 66 0 64 66 0 63 62 0 62 67 0 66 67 0 60 62 0
		 65 67 0 64 68 0 68 69 0 65 69 0 66 70 0 68 70 0 67 71 0 70 71 0 69 71 0 68 72 0 72 73 0
		 69 73 0 70 74 0 72 74 0 71 75 0 74 75 0 73 75 0 72 76 0 73 77 0 74 78 0 75 79 0 33 53 0
		 32 55 0 34 48 0 50 35 0 51 36 0 37 49 0 38 52 0 39 54 0 40 56 0 41 58 0 42 60 0 43 62 0
		 44 63 0 45 61 0 46 59 0 47 57 0;
	setAttr -s 78 -ch 312 ".fc[0:77]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 2 3
		f 4 -1 7 8 -7
		mu 0 4 1 0 4 5
		f 4 -9 10 11 -10
		mu 0 4 5 4 6 7
		f 4 -12 13 14 -13
		mu 0 4 7 6 8 9
		f 4 -15 16 17 -16
		mu 0 4 9 8 10 11
		f 4 -18 19 20 -19
		mu 0 4 11 10 12 13
		f 4 -51 52 54 -56
		mu 0 4 14 15 16 17
		f 4 -21 24 26 -26
		mu 0 4 13 12 18 19
		f 4 22 27 -29 -25
		mu 0 4 12 20 21 18
		f 4 23 29 -31 -28
		mu 0 4 20 22 23 21
		f 4 -22 25 31 -30
		mu 0 4 22 13 19 23
		f 4 -27 32 34 -34
		mu 0 4 19 18 24 25
		f 4 28 35 -37 -33
		mu 0 4 18 21 26 24
		f 4 30 37 -39 -36
		mu 0 4 21 23 27 26
		f 4 -32 33 39 -38
		mu 0 4 23 19 25 27
		f 4 -35 40 42 -42
		mu 0 4 25 24 28 29
		f 4 36 43 -45 -41
		mu 0 4 24 26 30 28
		f 4 38 45 -47 -44
		mu 0 4 26 27 31 30
		f 4 -40 41 47 -46
		mu 0 4 27 25 29 31
		f 4 -43 48 50 -50
		mu 0 4 29 28 15 14
		f 4 44 51 -53 -49
		mu 0 4 28 30 16 15
		f 4 46 53 -55 -52
		mu 0 4 30 31 17 16
		f 4 -48 49 55 -54
		mu 0 4 31 29 14 17
		f 4 -58 -59 56 -11
		mu 0 4 4 32 33 6
		f 4 -60 -61 57 -8
		mu 0 4 0 34 32 4
		f 4 4 -62 59 2
		mu 0 4 35 36 37 38
		f 4 1 5 -63 -5
		mu 0 4 3 2 39 40
		f 4 -65 -6 -4 -64
		mu 0 4 41 42 43 44
		f 4 -67 63 6 -66
		mu 0 4 45 46 1 5
		f 4 -69 65 9 -68
		mu 0 4 47 45 5 7
		f 4 -71 67 12 -70
		mu 0 4 48 47 7 9
		f 4 -73 69 15 -72
		mu 0 4 49 48 9 11
		f 4 -75 71 18 -74
		mu 0 4 50 49 11 13
		f 4 -77 73 21 -76
		mu 0 4 51 50 13 22
		f 4 -79 75 -24 -78
		mu 0 4 52 51 22 20
		f 4 -80 -81 77 -23
		mu 0 4 12 53 52 20
		f 4 -82 -83 79 -20
		mu 0 4 10 54 53 12
		f 4 -84 -85 81 -17
		mu 0 4 8 55 54 10
		f 4 -57 -86 83 -14
		mu 0 4 6 33 55 8
		f 4 89 88 -88 -87
		mu 0 4 56 57 58 59
		f 4 92 -92 -91 86
		mu 0 4 59 60 61 56
		f 4 95 -95 -94 91
		mu 0 4 60 62 63 61
		f 4 98 -98 -97 94
		mu 0 4 62 64 65 63
		f 4 101 -101 -100 97
		mu 0 4 64 66 67 65
		f 4 104 -104 -103 100
		mu 0 4 66 68 69 67
		f 4 108 -108 -107 105
		mu 0 4 70 71 72 73
		f 4 111 -111 -110 103
		mu 0 4 68 74 75 69
		f 4 109 114 -114 -113
		mu 0 4 69 75 76 77
		f 4 113 117 -117 -116
		mu 0 4 77 76 78 79
		f 4 116 -120 -112 118
		mu 0 4 79 78 74 68
		f 4 122 -122 -121 110
		mu 0 4 74 80 81 75
		f 4 120 124 -124 -115
		mu 0 4 75 81 82 76
		f 4 123 126 -126 -118
		mu 0 4 76 82 83 78
		f 4 125 -128 -123 119
		mu 0 4 78 83 80 74
		f 4 130 -130 -129 121
		mu 0 4 80 84 85 81
		f 4 128 132 -132 -125
		mu 0 4 81 85 86 82
		f 4 131 134 -134 -127
		mu 0 4 82 86 87 83
		f 4 133 -136 -131 127
		mu 0 4 83 87 84 80
		f 4 137 -106 -137 129
		mu 0 4 84 70 73 85
		f 4 136 106 -139 -133
		mu 0 4 85 73 72 86
		f 4 138 107 -140 -135
		mu 0 4 86 72 71 87
		f 4 139 -109 -138 135
		mu 0 4 87 71 70 84
		f 4 93 -142 58 140
		mu 0 4 61 63 88 89
		f 4 90 -141 60 142
		mu 0 4 56 61 89 90
		f 4 -90 -143 61 -144
		mu 0 4 91 92 93 94
		f 4 143 62 -145 -89
		mu 0 4 57 95 96 58
		f 4 145 87 144 64
		mu 0 4 97 98 99 100
		f 4 146 -93 -146 66
		mu 0 4 101 60 59 102
		f 4 147 -96 -147 68
		mu 0 4 103 62 60 101
		f 4 148 -99 -148 70
		mu 0 4 104 64 62 103
		f 4 149 -102 -149 72
		mu 0 4 105 66 64 104
		f 4 150 -105 -150 74
		mu 0 4 106 68 66 105
		f 4 151 -119 -151 76
		mu 0 4 107 79 68 106
		f 4 152 115 -152 78
		mu 0 4 108 77 79 107
		f 4 112 -153 80 153
		mu 0 4 69 77 108 109
		f 4 102 -154 82 154
		mu 0 4 67 69 109 110
		f 4 99 -155 84 155
		mu 0 4 65 67 110 111
		f 4 96 -156 85 141
		mu 0 4 63 65 111 88;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Shirt_02" -p "Geometry";
	rename -uid "93015DCC-4BC1-C22E-C5BF-1DAC207425F4";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 2.1819012761116028 0 ;
	setAttr ".sp" -type "double3" 0 2.1819012761116028 0 ;
createNode mesh -n "Shirt_02Shape" -p "Shirt_02";
	rename -uid "8B63A2D1-4DED-7032-5409-7ABE8E81694A";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "Shirt_02ShapeOrig" -p "Shirt_02";
	rename -uid "AEACB7E0-4303-208B-8E2A-E9AE0B9EF806";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 160 ".uvst[0].uvsp[0:159]" -type "float2" 0.375 0.5 0.625 0.5
		 0.625 0.75 0.375 0.75 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5
		 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.625 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.375
		 0.5 0.625 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5
		 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.625
		 0.5 0.375 0.375 0.375 0.375 0.375 0.375 0.125 0 0.25 0 0.25 0.25 0.125 0.25 0.625
		 0.875 0.375 0.875 0.75 0.25 0.75 0 0.875 0 0.875 0.25 0.625 0.375 0.625 0.375 0.625
		 0.375 0.625 0.375 0.625 0.375 0.625 0.375 0.625 0.375 0.375 0.375 0.375 0.375 0.375
		 0.375 0.375 0.375 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375
		 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5
		 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75
		 0.625 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375
		 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.625 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.375 0.5
		 0.375 0.5 0.375 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.625
		 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.625 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.375 0.375
		 0.375 0.375 0.375 0.375 0.125 0 0.125 0.25 0.25 0.25 0.25 0 0.375 0.875 0.625 0.875
		 0.75 0.25 0.875 0.25 0.875 0 0.75 0 0.625 0.375 0.625 0.375 0.625 0.375 0.625 0.375
		 0.625 0.375 0.625 0.375 0.625 0.375 0.375 0.375 0.375 0.375 0.375 0.375 0.375 0.375
		 0.625 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.625 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.625
		 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.625 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.625 0.5
		 0.375 0.5 0.375 0.5 0.625 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 144 ".vt[0:143]"  -0.31044137 1.74985242 -0.53292972 0.31044137 1.74985242 -0.53292972
		 -0.31044137 1.60776198 -0.53292972 0.31044137 1.60776198 -0.53292972 0.31044137 1.87888229 -0.53292972
		 -0.31044137 1.87888229 -0.53292972 0.31044137 1.99837375 -0.53292972 -0.31044137 1.99837375 -0.53292972
		 0.31044137 2.12372279 -0.53292972 -0.31044137 2.12372279 -0.53292972 0.31044137 2.24753857 -0.53292972
		 -0.31044137 2.24753857 -0.53292972 0.31044137 2.35681367 -0.53292972 -0.31044137 2.35681367 -0.53292972
		 0.31044137 2.75604057 -0.53292972 -0.31044137 2.75604057 -0.53292972 -0.23467457 2.39533949 -0.53292972
		 0.23467457 2.39533949 -0.53292972 -0.23467457 2.71751451 -0.53292972 0.23467457 2.71751451 -0.53292972
		 -0.23467457 2.39533949 -0.60263014 0.23467457 2.39533949 -0.60263014 -0.23467457 2.71751451 -0.60263014
		 0.23467457 2.71751451 -0.60263014 -0.23467457 2.39533949 -0.71576756 0.23467457 2.39533949 -0.71576756
		 -0.23467457 2.71751451 -0.71576756 0.23467457 2.71751451 -0.71576756 -0.23467457 2.39533949 -0.83016771
		 0.23467457 2.39533949 -0.83016771 -0.23467457 2.71751451 -0.83016771 0.23467457 2.71751451 -0.83016771
		 -0.31044137 1.99837375 0 -0.31044137 1.87888229 0 -0.31044137 1.74985242 0 -0.31044137 1.60776198 0
		 0.31044137 1.60776198 0 0.31044137 1.74985242 0 0.31044137 1.87888229 0 0.31044137 1.99837375 0
		 0.31044137 2.12372279 0 0.31044137 2.24753857 0 0.31044137 2.35681367 0 0.31044137 2.75604057 0
		 -0.31044137 2.75604057 0 -0.31044137 2.35681367 0 -0.31044137 2.24753857 0 -0.31044137 2.12372279 0
		 -0.23467457 2.39533949 -0.94183981 0.23467457 2.39533949 -0.94183981 -0.23467457 2.71751451 -0.94183981
		 0.23467457 2.71751451 -0.94183981 -0.23467457 2.39533949 -1.064385772 0.23467457 2.39533949 -1.064385772
		 -0.23467457 2.71751451 -1.064385772 0.23467457 2.71751451 -1.064385772 -0.23467457 2.39533949 -1.18542421
		 0.23467457 2.39533949 -1.18542421 -0.23467457 2.71751451 -1.18542421 0.23467457 2.71751451 -1.18542421
		 -0.23467457 2.39533949 -1.29771543 0.23467457 2.39533949 -1.29771543 -0.23467457 2.71751451 -1.29771543
		 0.23467457 2.71751451 -1.29771543 -0.23467457 2.39533949 -1.40369308 0.23467457 2.39533949 -1.40369308
		 -0.23467457 2.71751451 -1.40369308 0.23467457 2.71751451 -1.40369308 -0.23467457 2.39533949 -1.51401019
		 0.23467457 2.39533949 -1.51401019 -0.23467457 2.71751451 -1.51401019 0.23467457 2.71751451 -1.51401019
		 -0.31044137 1.74985242 0.53292972 0.31044137 1.74985242 0.53292972 -0.31044137 1.60776198 0.53292972
		 0.31044137 1.60776198 0.53292972 0.31044137 1.87888229 0.53292972 -0.31044137 1.87888229 0.53292972
		 0.31044137 1.99837375 0.53292972 -0.31044137 1.99837375 0.53292972 0.31044137 2.12372279 0.53292972
		 -0.31044137 2.12372279 0.53292972 0.31044137 2.24753857 0.53292972 -0.31044137 2.24753857 0.53292972
		 0.31044137 2.35681367 0.53292972 -0.31044137 2.35681367 0.53292972 0.31044137 2.75604057 0.53292972
		 -0.31044137 2.75604057 0.53292972 -0.23467457 2.39533949 0.53292972 0.23467457 2.39533949 0.53292972
		 -0.23467457 2.71751451 0.53292972 0.23467457 2.71751451 0.53292972 -0.23467457 2.39533949 0.60263014
		 0.23467457 2.39533949 0.60263014 -0.23467457 2.71751451 0.60263014 0.23467457 2.71751451 0.60263014
		 -0.23467457 2.39533949 0.71576756 0.23467457 2.39533949 0.71576756 -0.23467457 2.71751451 0.71576756
		 0.23467457 2.71751451 0.71576756 -0.23467457 2.39533949 0.83016771 0.23467457 2.39533949 0.83016771
		 -0.23467457 2.71751451 0.83016771 0.23467457 2.71751451 0.83016771 -0.31044137 1.99837375 0
		 -0.31044137 1.87888229 0 -0.31044137 1.74985242 0 -0.31044137 1.60776198 0 0.31044137 1.60776198 0
		 0.31044137 1.74985242 0 0.31044137 1.87888229 0 0.31044137 1.99837375 0 0.31044137 2.12372279 0
		 0.31044137 2.24753857 0 0.31044137 2.35681367 0 0.31044137 2.75604057 0 -0.31044137 2.75604057 0
		 -0.31044137 2.35681367 0 -0.31044137 2.24753857 0 -0.31044137 2.12372279 0 -0.23467457 2.39533949 0.94183981
		 0.23467457 2.39533949 0.94183981 -0.23467457 2.71751451 0.94183981 0.23467457 2.71751451 0.94183981
		 -0.23467457 2.39533949 1.064385772 0.23467457 2.39533949 1.064385772 -0.23467457 2.71751451 1.064385772
		 0.23467457 2.71751451 1.064385772 -0.23467457 2.39533949 1.18542421 0.23467457 2.39533949 1.18542421
		 -0.23467457 2.71751451 1.18542421 0.23467457 2.71751451 1.18542421 -0.23467457 2.39533949 1.29771543
		 0.23467457 2.39533949 1.29771543 -0.23467457 2.71751451 1.29771543 0.23467457 2.71751451 1.29771543
		 -0.23467457 2.39533949 1.40369308 0.23467457 2.39533949 1.40369308 -0.23467457 2.71751451 1.40369308
		 0.23467457 2.71751451 1.40369308 -0.23467457 2.39533949 1.51401019 0.23467457 2.39533949 1.51401019
		 -0.23467457 2.71751451 1.51401019 0.23467457 2.71751451 1.51401019;
	setAttr -s 268 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 0 2 0 1 3 0 2 35 0 3 36 0 1 4 0 0 5 0 5 4 0
		 4 6 0 5 7 0 7 6 0 6 8 0 7 9 0 9 8 0 8 10 0 9 11 0 11 10 0 10 12 0 11 13 0 13 12 0
		 12 14 0 13 15 0 15 14 0 13 16 0 12 17 0 16 17 0 15 18 0 16 18 0 14 19 0 18 19 0 17 19 0
		 16 20 0 17 21 0 20 21 0 18 22 0 20 22 0 19 23 0 22 23 0 21 23 0 20 24 0 21 25 0 24 25 0
		 22 26 0 24 26 0 23 27 0 26 27 0 25 27 0 24 28 0 25 29 0 28 29 0 26 30 0 28 30 0 27 31 0
		 30 31 0 29 31 0 32 7 0 33 5 0 32 33 0 34 0 0 33 34 0 34 35 0 35 36 0 37 1 0 36 37 0
		 38 4 0 37 38 0 39 6 0 38 39 0 40 8 0 39 40 0 41 10 0 40 41 0 42 12 0 41 42 0 43 14 0
		 42 43 0 44 15 0 43 44 0 45 13 0 44 45 0 46 11 0 45 46 0 47 9 0 46 47 0 47 32 0 28 48 0
		 29 49 0 48 49 0 30 50 0 48 50 0 31 51 0 50 51 0 49 51 0 48 52 0 49 53 0 52 53 0 50 54 0
		 52 54 0 51 55 0 54 55 0 53 55 0 52 56 0 53 57 0 56 57 0 54 58 0 56 58 0 55 59 0 58 59 0
		 57 59 0 56 60 0 57 61 0 60 61 0 58 62 0 60 62 0 59 63 0 62 63 0 61 63 0 60 64 0 61 65 0
		 64 65 0 62 66 0 64 66 0 63 67 0 66 67 0 65 67 0 64 68 0 65 69 0 68 69 0 66 70 0 68 70 0
		 67 71 0 70 71 0 69 71 0 72 73 0 73 75 0 74 75 0 72 74 0 72 77 0 77 76 0 73 76 0 77 79 0
		 79 78 0 76 78 0 79 81 0 81 80 0 78 80 0 81 83 0 83 82 0 80 82 0 83 85 0 85 84 0 82 84 0
		 140 141 0 140 142 0 142 143 0 141 143 0 85 88 0 88 89 0 84 89 0 85 87 0 87 90 0 88 90 0
		 87 86 0 86 91 0 90 91 0;
	setAttr ".ed[166:267]" 84 86 0 89 91 0 88 92 0 92 93 0 89 93 0 90 94 0 92 94 0
		 91 95 0 94 95 0 93 95 0 92 96 0 96 97 0 93 97 0 94 98 0 96 98 0 95 99 0 98 99 0 97 99 0
		 96 100 0 100 101 0 97 101 0 98 102 0 100 102 0 99 103 0 102 103 0 101 103 0 105 77 0
		 104 105 0 104 79 0 106 72 0 105 106 0 74 107 0 106 107 0 75 108 0 107 108 0 108 109 0
		 109 73 0 109 110 0 110 76 0 110 111 0 111 78 0 111 112 0 112 80 0 112 113 0 113 82 0
		 113 114 0 114 84 0 114 115 0 115 86 0 115 116 0 116 87 0 117 85 0 116 117 0 118 83 0
		 117 118 0 119 81 0 118 119 0 119 104 0 100 120 0 120 121 0 101 121 0 102 122 0 120 122 0
		 103 123 0 122 123 0 121 123 0 120 124 0 124 125 0 121 125 0 122 126 0 124 126 0 123 127 0
		 126 127 0 125 127 0 124 128 0 128 129 0 125 129 0 126 130 0 128 130 0 127 131 0 130 131 0
		 129 131 0 128 132 0 132 133 0 129 133 0 130 134 0 132 134 0 131 135 0 134 135 0 133 135 0
		 132 136 0 136 137 0 133 137 0 134 138 0 136 138 0 135 139 0 138 139 0 137 139 0 136 140 0
		 137 141 0 138 142 0 139 143 0;
	setAttr -s 126 -ch 504 ".fc[0:125]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 2 3
		f 4 -1 7 8 -7
		mu 0 4 1 0 4 5
		f 4 -9 10 11 -10
		mu 0 4 5 4 6 7
		f 4 -12 13 14 -13
		mu 0 4 7 6 8 9
		f 4 -15 16 17 -16
		mu 0 4 9 8 10 11
		f 4 -18 19 20 -19
		mu 0 4 11 10 12 13
		f 4 -129 130 132 -134
		mu 0 4 14 15 16 17
		f 4 -21 24 26 -26
		mu 0 4 13 12 18 19
		f 4 22 27 -29 -25
		mu 0 4 12 20 21 18
		f 4 23 29 -31 -28
		mu 0 4 20 22 23 21
		f 4 -22 25 31 -30
		mu 0 4 22 13 19 23
		f 4 -27 32 34 -34
		mu 0 4 19 18 24 25
		f 4 28 35 -37 -33
		mu 0 4 18 21 26 24
		f 4 30 37 -39 -36
		mu 0 4 21 23 27 26
		f 4 -32 33 39 -38
		mu 0 4 23 19 25 27
		f 4 -35 40 42 -42
		mu 0 4 25 24 28 29
		f 4 36 43 -45 -41
		mu 0 4 24 26 30 28
		f 4 38 45 -47 -44
		mu 0 4 26 27 31 30
		f 4 -40 41 47 -46
		mu 0 4 27 25 29 31
		f 4 -43 48 50 -50
		mu 0 4 29 28 32 33
		f 4 44 51 -53 -49
		mu 0 4 28 30 34 32
		f 4 46 53 -55 -52
		mu 0 4 30 31 35 34
		f 4 -48 49 55 -54
		mu 0 4 31 29 33 35
		f 4 -58 -59 56 -11
		mu 0 4 4 36 37 6
		f 4 -60 -61 57 -8
		mu 0 4 0 38 36 4
		f 4 4 -62 59 2
		mu 0 4 39 40 41 42
		f 4 1 5 -63 -5
		mu 0 4 3 2 43 44
		f 4 -65 -6 -4 -64
		mu 0 4 45 46 47 48
		f 4 -67 63 6 -66
		mu 0 4 49 50 1 5
		f 4 -69 65 9 -68
		mu 0 4 51 49 5 7
		f 4 -71 67 12 -70
		mu 0 4 52 51 7 9
		f 4 -73 69 15 -72
		mu 0 4 53 52 9 11
		f 4 -75 71 18 -74
		mu 0 4 54 53 11 13
		f 4 -77 73 21 -76
		mu 0 4 55 54 13 22
		f 4 -79 75 -24 -78
		mu 0 4 56 55 22 20
		f 4 -80 -81 77 -23
		mu 0 4 12 57 56 20
		f 4 -82 -83 79 -20
		mu 0 4 10 58 57 12
		f 4 -84 -85 81 -17
		mu 0 4 8 59 58 10
		f 4 -57 -86 83 -14
		mu 0 4 6 37 59 8
		f 4 -51 86 88 -88
		mu 0 4 33 32 60 61
		f 4 52 89 -91 -87
		mu 0 4 32 34 62 60
		f 4 54 91 -93 -90
		mu 0 4 34 35 63 62
		f 4 -56 87 93 -92
		mu 0 4 35 33 61 63
		f 4 -89 94 96 -96
		mu 0 4 61 60 64 65
		f 4 90 97 -99 -95
		mu 0 4 60 62 66 64
		f 4 92 99 -101 -98
		mu 0 4 62 63 67 66
		f 4 -94 95 101 -100
		mu 0 4 63 61 65 67
		f 4 -97 102 104 -104
		mu 0 4 65 64 68 69
		f 4 98 105 -107 -103
		mu 0 4 64 66 70 68
		f 4 100 107 -109 -106
		mu 0 4 66 67 71 70
		f 4 -102 103 109 -108
		mu 0 4 67 65 69 71
		f 4 -105 110 112 -112
		mu 0 4 69 68 72 73
		f 4 106 113 -115 -111
		mu 0 4 68 70 74 72
		f 4 108 115 -117 -114
		mu 0 4 70 71 75 74
		f 4 -110 111 117 -116
		mu 0 4 71 69 73 75
		f 4 -113 118 120 -120
		mu 0 4 73 72 76 77
		f 4 114 121 -123 -119
		mu 0 4 72 74 78 76
		f 4 116 123 -125 -122
		mu 0 4 74 75 79 78
		f 4 -118 119 125 -124
		mu 0 4 75 73 77 79
		f 4 -121 126 128 -128
		mu 0 4 77 76 15 14
		f 4 122 129 -131 -127
		mu 0 4 76 78 16 15
		f 4 124 131 -133 -130
		mu 0 4 78 79 17 16
		f 4 -126 127 133 -132
		mu 0 4 79 77 14 17
		f 4 137 136 -136 -135
		mu 0 4 80 81 82 83
		f 4 140 -140 -139 134
		mu 0 4 83 84 85 80
		f 4 143 -143 -142 139
		mu 0 4 84 86 87 85
		f 4 146 -146 -145 142
		mu 0 4 86 88 89 87
		f 4 149 -149 -148 145
		mu 0 4 88 90 91 89
		f 4 152 -152 -151 148
		mu 0 4 90 92 93 91
		f 4 156 -156 -155 153
		mu 0 4 94 95 96 97
		f 4 159 -159 -158 151
		mu 0 4 92 98 99 93
		f 4 157 162 -162 -161
		mu 0 4 93 99 100 101
		f 4 161 165 -165 -164
		mu 0 4 101 100 102 103
		f 4 164 -168 -160 166
		mu 0 4 103 102 98 92
		f 4 170 -170 -169 158
		mu 0 4 98 104 105 99
		f 4 168 172 -172 -163
		mu 0 4 99 105 106 100
		f 4 171 174 -174 -166
		mu 0 4 100 106 107 102
		f 4 173 -176 -171 167
		mu 0 4 102 107 104 98
		f 4 178 -178 -177 169
		mu 0 4 104 108 109 105
		f 4 176 180 -180 -173
		mu 0 4 105 109 110 106
		f 4 179 182 -182 -175
		mu 0 4 106 110 111 107
		f 4 181 -184 -179 175
		mu 0 4 107 111 108 104
		f 4 186 -186 -185 177
		mu 0 4 108 112 113 109
		f 4 184 188 -188 -181
		mu 0 4 109 113 114 110
		f 4 187 190 -190 -183
		mu 0 4 110 114 115 111
		f 4 189 -192 -187 183
		mu 0 4 111 115 112 108
		f 4 141 -195 193 192
		mu 0 4 85 87 116 117
		f 4 138 -193 196 195
		mu 0 4 80 85 117 118
		f 4 -138 -196 198 -198
		mu 0 4 119 120 121 122
		f 4 197 200 -200 -137
		mu 0 4 81 123 124 82
		f 4 202 135 199 201
		mu 0 4 125 126 127 128
		f 4 204 -141 -203 203
		mu 0 4 129 84 83 130
		f 4 206 -144 -205 205
		mu 0 4 131 86 84 129
		f 4 208 -147 -207 207
		mu 0 4 132 88 86 131
		f 4 210 -150 -209 209
		mu 0 4 133 90 88 132
		f 4 212 -153 -211 211
		mu 0 4 134 92 90 133
		f 4 214 -167 -213 213
		mu 0 4 135 103 92 134
		f 4 216 163 -215 215
		mu 0 4 136 101 103 135
		f 4 160 -217 218 217
		mu 0 4 93 101 136 137
		f 4 150 -218 220 219
		mu 0 4 91 93 137 138
		f 4 147 -220 222 221
		mu 0 4 89 91 138 139
		f 4 144 -222 223 194
		mu 0 4 87 89 139 116
		f 4 226 -226 -225 185
		mu 0 4 112 140 141 113
		f 4 224 228 -228 -189
		mu 0 4 113 141 142 114
		f 4 227 230 -230 -191
		mu 0 4 114 142 143 115
		f 4 229 -232 -227 191
		mu 0 4 115 143 140 112
		f 4 234 -234 -233 225
		mu 0 4 140 144 145 141
		f 4 232 236 -236 -229
		mu 0 4 141 145 146 142
		f 4 235 238 -238 -231
		mu 0 4 142 146 147 143
		f 4 237 -240 -235 231
		mu 0 4 143 147 144 140
		f 4 242 -242 -241 233
		mu 0 4 144 148 149 145
		f 4 240 244 -244 -237
		mu 0 4 145 149 150 146
		f 4 243 246 -246 -239
		mu 0 4 146 150 151 147
		f 4 245 -248 -243 239
		mu 0 4 147 151 148 144
		f 4 250 -250 -249 241
		mu 0 4 148 152 153 149
		f 4 248 252 -252 -245
		mu 0 4 149 153 154 150
		f 4 251 254 -254 -247
		mu 0 4 150 154 155 151
		f 4 253 -256 -251 247
		mu 0 4 151 155 152 148
		f 4 258 -258 -257 249
		mu 0 4 152 156 157 153
		f 4 256 260 -260 -253
		mu 0 4 153 157 158 154
		f 4 259 262 -262 -255
		mu 0 4 154 158 159 155
		f 4 261 -264 -259 255
		mu 0 4 155 159 156 152
		f 4 265 -154 -265 257
		mu 0 4 156 94 97 157
		f 4 264 154 -267 -261
		mu 0 4 157 97 96 158
		f 4 266 155 -268 -263
		mu 0 4 158 96 95 159
		f 4 267 -157 -266 263
		mu 0 4 159 95 94 156;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Shirt_03" -p "Geometry";
	rename -uid "93C29CAE-4493-AE72-8B6A-4D914FE9DCAC";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 2.1819012761116028 0 ;
	setAttr ".sp" -type "double3" 0 2.1819012761116028 0 ;
createNode mesh -n "Shirt_03Shape" -p "Shirt_03";
	rename -uid "20724647-40C6-E37A-02AE-6E8FEE30D671";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "polySurfaceShape1" -p "Shirt_03";
	rename -uid "057C0896-4596-0C85-2C71-308973188077";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 88 ".uvst[0].uvsp[0:87]" -type "float2" 0.375 0.5 0.625 0.5
		 0.625 0.75 0.375 0.75 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5
		 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.375 0.5 0.625
		 0.5 0.625 0.5 0.375 0.375 0.375 0.375 0.375 0.375 0.125 0 0.25 0 0.25 0.25 0.125
		 0.25 0.625 0.875 0.375 0.875 0.75 0.25 0.75 0 0.875 0 0.875 0.25 0.625 0.375 0.625
		 0.375 0.625 0.375 0.625 0.375 0.625 0.375 0.625 0.375 0.625 0.375 0.375 0.375 0.375
		 0.375 0.375 0.375 0.375 0.375 0.375 0.5 0.375 0.75 0.625 0.75 0.625 0.5 0.625 0.5
		 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.625 0.5 0.375
		 0.5 0.625 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.625 0.5 0.375 0.375 0.375
		 0.375 0.375 0.375 0.125 0 0.125 0.25 0.25 0.25 0.25 0 0.375 0.875 0.625 0.875 0.75
		 0.25 0.875 0.25 0.875 0 0.75 0 0.625 0.375 0.625 0.375 0.625 0.375 0.625 0.375 0.625
		 0.375 0.625 0.375 0.625 0.375 0.375 0.375 0.375 0.375 0.375 0.375 0.375 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 72 ".vt[0:71]"  -0.31044137 1.74985242 -0.53292972 0.31044137 1.74985242 -0.53292972
		 -0.31044137 1.60776198 -0.53292972 0.31044137 1.60776198 -0.53292972 0.31044137 1.87888229 -0.53292972
		 -0.31044137 1.87888229 -0.53292972 0.31044137 1.99837375 -0.53292972 -0.31044137 1.99837375 -0.53292972
		 0.31044137 2.12372279 -0.53292972 -0.31044137 2.12372279 -0.53292972 0.31044137 2.24753857 -0.53292972
		 -0.31044137 2.24753857 -0.53292972 0.31044137 2.35681367 -0.53292972 -0.31044137 2.35681367 -0.53292972
		 0.31044137 2.75604057 -0.53292972 -0.31044137 2.75604057 -0.53292972 -0.23467457 2.39533949 -0.53292972
		 0.23467457 2.39533949 -0.53292972 -0.23467457 2.71751451 -0.53292972 0.23467457 2.71751451 -0.53292972
		 -0.31044137 1.99837375 0 -0.31044137 1.87888229 0 -0.31044137 1.74985242 0 -0.31044137 1.60776198 0
		 0.31044137 1.60776198 0 0.31044137 1.74985242 0 0.31044137 1.87888229 0 0.31044137 1.99837375 0
		 0.31044137 2.12372279 0 0.31044137 2.24753857 0 0.31044137 2.35681367 0 0.31044137 2.75604057 0
		 -0.31044137 2.75604057 0 -0.31044137 2.35681367 0 -0.31044137 2.24753857 0 -0.31044137 2.12372279 0
		 -0.31044137 1.74985242 0.53292972 0.31044137 1.74985242 0.53292972 -0.31044137 1.60776198 0.53292972
		 0.31044137 1.60776198 0.53292972 0.31044137 1.87888229 0.53292972 -0.31044137 1.87888229 0.53292972
		 0.31044137 1.99837375 0.53292972 -0.31044137 1.99837375 0.53292972 0.31044137 2.12372279 0.53292972
		 -0.31044137 2.12372279 0.53292972 0.31044137 2.24753857 0.53292972 -0.31044137 2.24753857 0.53292972
		 0.31044137 2.35681367 0.53292972 -0.31044137 2.35681367 0.53292972 0.31044137 2.75604057 0.53292972
		 -0.31044137 2.75604057 0.53292972 -0.23467457 2.39533949 0.53292972 0.23467457 2.39533949 0.53292972
		 -0.23467457 2.71751451 0.53292972 0.23467457 2.71751451 0.53292972 -0.31044137 1.99837375 0
		 -0.31044137 1.87888229 0 -0.31044137 1.74985242 0 -0.31044137 1.60776198 0 0.31044137 1.60776198 0
		 0.31044137 1.74985242 0 0.31044137 1.87888229 0 0.31044137 1.99837375 0 0.31044137 2.12372279 0
		 0.31044137 2.24753857 0 0.31044137 2.35681367 0 0.31044137 2.75604057 0 -0.31044137 2.75604057 0
		 -0.31044137 2.35681367 0 -0.31044137 2.24753857 0 -0.31044137 2.12372279 0;
	setAttr -s 124 ".ed[0:123]"  0 1 0 2 3 0 0 2 0 1 3 0 2 23 0 3 24 0 1 4 0
		 0 5 0 5 4 0 4 6 0 5 7 0 7 6 0 6 8 0 7 9 0 9 8 0 8 10 0 9 11 0 11 10 0 10 12 0 11 13 0
		 13 12 0 12 14 0 13 15 0 15 14 0 13 16 0 12 17 0 16 17 0 15 18 0 16 18 0 14 19 0 18 19 0
		 17 19 0 20 7 0 21 5 0 20 21 0 22 0 0 21 22 0 22 23 0 23 24 0 25 1 0 24 25 0 26 4 0
		 25 26 0 27 6 0 26 27 0 28 8 0 27 28 0 29 10 0 28 29 0 30 12 0 29 30 0 31 14 0 30 31 0
		 32 15 0 31 32 0 33 13 0 32 33 0 34 11 0 33 34 0 35 9 0 34 35 0 35 20 0 36 37 0 37 39 0
		 38 39 0 36 38 0 36 41 0 41 40 0 37 40 0 41 43 0 43 42 0 40 42 0 43 45 0 45 44 0 42 44 0
		 45 47 0 47 46 0 44 46 0 47 49 0 49 48 0 46 48 0 49 52 0 52 53 0 48 53 0 49 51 0 51 54 0
		 52 54 0 51 50 0 50 55 0 54 55 0 48 50 0 53 55 0 57 41 0 56 57 0 56 43 0 58 36 0 57 58 0
		 38 59 0 58 59 0 39 60 0 59 60 0 60 61 0 61 37 0 61 62 0 62 40 0 62 63 0 63 42 0 63 64 0
		 64 44 0 64 65 0 65 46 0 65 66 0 66 48 0 66 67 0 67 50 0 67 68 0 68 51 0 69 49 0 68 69 0
		 70 47 0 69 70 0 71 45 0 70 71 0 71 56 0;
	setAttr -s 52 -ch 208 ".fc[0:51]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 2 3
		f 4 -1 7 8 -7
		mu 0 4 1 0 4 5
		f 4 -9 10 11 -10
		mu 0 4 5 4 6 7
		f 4 -12 13 14 -13
		mu 0 4 7 6 8 9
		f 4 -15 16 17 -16
		mu 0 4 9 8 10 11
		f 4 -18 19 20 -19
		mu 0 4 11 10 12 13
		f 4 -21 24 26 -26
		mu 0 4 13 12 14 15
		f 4 22 27 -29 -25
		mu 0 4 12 16 17 14
		f 4 23 29 -31 -28
		mu 0 4 16 18 19 17
		f 4 -22 25 31 -30
		mu 0 4 18 13 15 19
		f 4 -34 -35 32 -11
		mu 0 4 4 20 21 6
		f 4 -36 -37 33 -8
		mu 0 4 0 22 20 4
		f 4 4 -38 35 2
		mu 0 4 23 24 25 26
		f 4 1 5 -39 -5
		mu 0 4 3 2 27 28
		f 4 -41 -6 -4 -40
		mu 0 4 29 30 31 32
		f 4 -43 39 6 -42
		mu 0 4 33 34 1 5
		f 4 -45 41 9 -44
		mu 0 4 35 33 5 7
		f 4 -47 43 12 -46
		mu 0 4 36 35 7 9
		f 4 -49 45 15 -48
		mu 0 4 37 36 9 11
		f 4 -51 47 18 -50
		mu 0 4 38 37 11 13
		f 4 -53 49 21 -52
		mu 0 4 39 38 13 18
		f 4 -55 51 -24 -54
		mu 0 4 40 39 18 16
		f 4 -56 -57 53 -23
		mu 0 4 12 41 40 16
		f 4 -58 -59 55 -20
		mu 0 4 10 42 41 12
		f 4 -60 -61 57 -17
		mu 0 4 8 43 42 10
		f 4 -33 -62 59 -14
		mu 0 4 6 21 43 8
		f 4 65 64 -64 -63
		mu 0 4 44 45 46 47
		f 4 68 -68 -67 62
		mu 0 4 47 48 49 44
		f 4 71 -71 -70 67
		mu 0 4 48 50 51 49
		f 4 74 -74 -73 70
		mu 0 4 50 52 53 51
		f 4 77 -77 -76 73
		mu 0 4 52 54 55 53
		f 4 80 -80 -79 76
		mu 0 4 54 56 57 55
		f 4 83 -83 -82 79
		mu 0 4 56 58 59 57
		f 4 81 86 -86 -85
		mu 0 4 57 59 60 61
		f 4 85 89 -89 -88
		mu 0 4 61 60 62 63
		f 4 88 -92 -84 90
		mu 0 4 63 62 58 56
		f 4 69 -95 93 92
		mu 0 4 49 51 64 65
		f 4 66 -93 96 95
		mu 0 4 44 49 65 66
		f 4 -66 -96 98 -98
		mu 0 4 67 68 69 70
		f 4 97 100 -100 -65
		mu 0 4 45 71 72 46
		f 4 102 63 99 101
		mu 0 4 73 74 75 76
		f 4 104 -69 -103 103
		mu 0 4 77 48 47 78
		f 4 106 -72 -105 105
		mu 0 4 79 50 48 77
		f 4 108 -75 -107 107
		mu 0 4 80 52 50 79
		f 4 110 -78 -109 109
		mu 0 4 81 54 52 80
		f 4 112 -81 -111 111
		mu 0 4 82 56 54 81
		f 4 114 -91 -113 113
		mu 0 4 83 63 56 82
		f 4 116 87 -115 115
		mu 0 4 84 61 63 83
		f 4 84 -117 118 117
		mu 0 4 57 61 84 85
		f 4 78 -118 120 119
		mu 0 4 55 57 85 86
		f 4 75 -120 122 121
		mu 0 4 53 55 86 87
		f 4 72 -122 123 94
		mu 0 4 51 53 87 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "Shirt_03ShapeOrig" -p "Shirt_03";
	rename -uid "014C618C-44E0-58A2-0A4B-FBB71644670A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Pants_01" -p "Geometry";
	rename -uid "CC185A66-46A9-8EB7-05E6-149275FDB468";
	setAttr ".t" -type "double3" 0 1.1381617373753339 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.62132063084326494 1 1.0669107396571254 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "Pants_0Shape1" -p "Pants_01";
	rename -uid "9E85D44F-46FC-9D7D-0581-BE9A756C5C3F";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.8010890781879425 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "Pants_0Shape1Orig" -p "Pants_01";
	rename -uid "B6B7BFB2-4298-F09A-453C-1AB82605DF24";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Pants_02" -p "Geometry";
	rename -uid "FD6EBC36-4489-17CE-4027-579AA70663BC";
	setAttr ".t" -type "double3" 0 1.1381617373753339 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.62132063084326494 1 1.0669107396571254 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "Pants_0Shape2" -p "Pants_02";
	rename -uid "47C83BFE-4094-221F-11F2-44A1FB42EC41";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.8010890781879425 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "polySurfaceShape2" -p "Pants_02";
	rename -uid "0F30BCAE-494F-EC2E-788C-BEB8B6EA3595";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.8010890781879425 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 80 ".uvst[0].uvsp[0:79]" -type "float2" 0.375 0.5 0.625 0.5
		 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.625 0.875 0.75 0 0.25
		 0 0.375 0.875 0.25 0.25 0.375 0.375 0.625 0.375 0.75 0.25 0.625 0.85217816 0.7728219
		 0 0.22717813 0 0.375 0.85217816 0.22717813 0.25 0.375 0.39782187 0.625 0.39782187
		 0.7728219 0.25 0.375 0.75 0.625 0.75 0.625 0.85217816 0.375 0.85217816 0.375 0.75
		 0.625 0.75 0.625 0.85217816 0.375 0.85217816 0.375 0.75 0.625 0.75 0.625 0.85217816
		 0.375 0.85217816 0.375 0.75 0.625 0.75 0.625 0.85217816 0.375 0.85217816 0.375 0.39782187
		 0.625 0.39782187 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.375 0.75 0.625 0.75
		 0.625 0.85217816 0.375 0.85217816 0.7728219 0.25 0.7728219 0 0.875 0 0.875 0.25 0.125
		 0 0.22717813 0 0.22717813 0.25 0.125 0.25 0.375 0.85217816 0.625 0.85217816 0.625
		 0.875 0.375 0.875 0.25 0 0.25 0.25 0.375 0.375 0.625 0.375 0.75 0.25 0.75 0 0.625
		 0.75 0.375 0.75 0.625 0.85217816 0.375 0.85217816 0.625 0.75 0.375 0.75 0.625 0.85217816
		 0.375 0.85217816 0.625 0.75 0.375 0.75 0.625 0.85217816 0.375 0.85217816;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -0.5 0.49964893 -0.5 0.5 0.49964893 -0.5
		 -0.5 -0.033119559 -0.5 0.5 -0.033119559 -0.5 0.5 -0.033119559 0 -0.5 -0.033119559 0
		 -0.5 0.49964893 0 0.5 0.49964893 0 0.5 -0.033119559 -0.091287524 -0.5 -0.033119559 -0.091287524
		 -0.5 0.49964893 -0.091287524 0.5 0.49964893 -0.091287524 -0.5 -0.12701952 -0.5 0.5 -0.12701952 -0.5
		 0.5 -0.12701952 -0.091287524 -0.5 -0.12701952 -0.091287524 -0.5 -0.2344082 -0.5 0.5 -0.2344082 -0.5
		 0.5 -0.2344082 -0.091287524 -0.5 -0.2344082 -0.091287524 -0.5 -0.33412987 -0.5 0.5 -0.33412987 -0.5
		 0.5 -0.33412987 -0.091287524 -0.5 -0.33412987 -0.091287524 -0.5 -0.44243598 -0.5
		 0.5 -0.44243598 -0.5 0.5 -0.44243598 -0.091287524 -0.5 -0.44243598 -0.091287524 -0.5 0.49964893 0.5
		 0.5 0.49964893 0.5 -0.5 -0.033119559 0.5 0.5 -0.033119559 0.5 0.5 -0.033119559 0
		 -0.5 -0.033119559 0 -0.5 0.49964893 0 0.5 0.49964893 0 0.5 -0.033119559 0.091287524
		 -0.5 -0.033119559 0.091287524 -0.5 0.49964893 0.091287524 0.5 0.49964893 0.091287524
		 -0.5 -0.12701952 0.5 0.5 -0.12701952 0.5 0.5 -0.12701952 0.091287524 -0.5 -0.12701952 0.091287524
		 -0.5 -0.2344082 0.5 0.5 -0.2344082 0.5 0.5 -0.2344082 0.091287524 -0.5 -0.2344082 0.091287524
		 -0.5 -0.33412987 0.5 0.5 -0.33412987 0.5 0.5 -0.33412987 0.091287524 -0.5 -0.33412987 0.091287524
		 -0.5 -0.44243598 0.5 0.5 -0.44243598 0.5 0.5 -0.44243598 0.091287524 -0.5 -0.44243598 0.091287524;
	setAttr -s 104 ".ed[0:103]"  0 1 0 2 3 0 0 2 0 1 3 0 2 9 0 3 8 0 4 5 0
		 6 10 0 5 6 0 7 11 0 6 7 0 7 4 0 8 4 0 9 5 0 8 9 0 10 0 0 9 10 1 11 1 0 10 11 1 11 8 1
		 2 12 0 3 13 0 12 13 0 8 14 0 13 14 0 9 15 0 14 15 0 12 15 0 12 16 0 13 17 0 16 17 0
		 14 18 0 17 18 0 15 19 0 18 19 0 16 19 0 16 20 0 17 21 0 20 21 0 18 22 0 21 22 0 19 23 0
		 22 23 0 20 23 0 20 24 0 21 25 0 24 25 0 22 26 0 25 26 0 23 27 0 26 27 0 24 27 0 38 39 1
		 39 29 0 28 29 0 38 28 0 29 31 0 30 31 0 28 30 0 52 53 0 53 54 0 54 55 0 52 55 0 39 36 1
		 31 36 0 30 37 0 37 38 1 36 37 0 36 32 0 32 33 0 37 33 0 33 34 0 34 38 0 34 35 0 35 39 0
		 35 32 0 31 41 0 40 41 0 30 40 0 36 42 0 41 42 0 37 43 0 42 43 0 40 43 0 41 45 0 44 45 0
		 40 44 0 42 46 0 45 46 0 43 47 0 46 47 0 44 47 0 45 49 0 48 49 0 44 48 0 46 50 0 49 50 0
		 47 51 0 50 51 0 48 51 0 49 53 0 48 52 0 50 54 0 51 55 0;
	setAttr -s 50 -ch 200 ".fc[0:49]" -type "polyFaces" 
		f 4 18 17 -1 -16
		mu 0 4 21 22 1 0
		f 4 0 3 -2 -3
		mu 0 4 0 1 3 2
		f 4 46 48 50 -52
		mu 0 4 36 37 38 39
		f 4 19 -6 -4 -18
		mu 0 4 23 17 4 5
		f 4 4 16 15 2
		mu 0 4 6 18 20 7
		f 4 -15 12 6 -14
		mu 0 4 19 16 8 11
		f 4 -17 13 8 7
		mu 0 4 20 18 10 12
		f 4 10 9 -19 -8
		mu 0 4 13 14 22 21
		f 4 11 -13 -20 -10
		mu 0 4 15 9 17 23
		f 4 1 21 -23 -21
		mu 0 4 2 3 25 24
		f 4 5 23 -25 -22
		mu 0 4 3 16 26 25
		f 4 14 25 -27 -24
		mu 0 4 16 19 27 26
		f 4 -5 20 27 -26
		mu 0 4 19 2 24 27
		f 4 22 29 -31 -29
		mu 0 4 24 25 29 28
		f 4 24 31 -33 -30
		mu 0 4 25 26 30 29
		f 4 26 33 -35 -32
		mu 0 4 26 27 31 30
		f 4 -28 28 35 -34
		mu 0 4 27 24 28 31
		f 4 30 37 -39 -37
		mu 0 4 28 29 33 32
		f 4 32 39 -41 -38
		mu 0 4 29 30 34 33
		f 4 34 41 -43 -40
		mu 0 4 30 31 35 34
		f 4 -36 36 43 -42
		mu 0 4 31 28 32 35
		f 4 38 45 -47 -45
		mu 0 4 32 33 37 36
		f 4 40 47 -49 -46
		mu 0 4 33 34 38 37
		f 4 42 49 -51 -48
		mu 0 4 34 35 39 38
		f 4 -44 44 51 -50
		mu 0 4 35 32 36 39
		f 4 55 54 -54 -53
		mu 0 4 40 43 42 41
		f 4 58 57 -57 -55
		mu 0 4 43 45 44 42
		f 4 62 -62 -61 -60
		mu 0 4 46 49 48 47
		f 4 53 56 64 -64
		mu 0 4 50 53 52 51
		f 4 -59 -56 -67 -66
		mu 0 4 54 57 56 55
		f 4 70 -70 -69 67
		mu 0 4 58 61 60 59
		f 4 -73 -72 -71 66
		mu 0 4 56 63 62 55
		f 4 72 52 -75 -74
		mu 0 4 64 40 41 65
		f 4 74 63 68 -76
		mu 0 4 66 50 51 67
		f 4 78 77 -77 -58
		mu 0 4 45 69 68 44
		f 4 76 80 -80 -65
		mu 0 4 44 68 70 59
		f 4 79 82 -82 -68
		mu 0 4 59 70 71 58
		f 4 81 -84 -79 65
		mu 0 4 58 71 69 45
		f 4 86 85 -85 -78
		mu 0 4 69 73 72 68
		f 4 84 88 -88 -81
		mu 0 4 68 72 74 70
		f 4 87 90 -90 -83
		mu 0 4 70 74 75 71
		f 4 89 -92 -87 83
		mu 0 4 71 75 73 69
		f 4 94 93 -93 -86
		mu 0 4 73 77 76 72
		f 4 92 96 -96 -89
		mu 0 4 72 76 78 74
		f 4 95 98 -98 -91
		mu 0 4 74 78 79 75
		f 4 97 -100 -95 91
		mu 0 4 75 79 77 73
		f 4 101 59 -101 -94
		mu 0 4 77 46 47 76
		f 4 100 60 -103 -97
		mu 0 4 76 47 48 78
		f 4 102 61 -104 -99
		mu 0 4 78 48 49 79
		f 4 103 -63 -102 99
		mu 0 4 79 49 46 77;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "Pants_0Shape2Orig" -p "Pants_02";
	rename -uid "5BC24F4E-463D-05EA-8514-D3A47FE4E750";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "HeadPiece_01" -p "Geometry";
	rename -uid "8B643452-4BB3-6C98-D571-EE8DB3B4B706";
	setAttr ".t" -type "double3" 0 3.8310056161373645 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.56213523112493435 0.56213523112493435 0.56213523112493435 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "HeadPiece_0Shape1" -p "HeadPiece_01";
	rename -uid "61496499-48E4-D434-CE0E-928CF0C828A8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "HeadPiece_0Shape1Orig" -p "HeadPiece_01";
	rename -uid "56B91EF4-4CBC-5108-097D-388AC0ABDE84";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "HeadPiece_02" -p "Geometry";
	rename -uid "D38F6088-4CB7-376C-D55B-26B9460F0BEB";
	setAttr ".t" -type "double3" 0 3.82324324266976 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.65149809331140052 1 0.65149809331140052 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "HeadPiece_0Shape2" -p "HeadPiece_02";
	rename -uid "F635F60C-41DC-2C64-9188-83890713E0F1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.036895476281642914 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "HeadPiece_0Shape2Orig" -p "HeadPiece_02";
	rename -uid "AFFDDB85-4724-D20C-06F7-5FAC4D1AA0A6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "HeadPiece_03" -p "Geometry";
	rename -uid "A03A74D1-4E91-573A-D0B8-50A0665ADB9D";
	setAttr ".t" -type "double3" 0 3.7749167834086084 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.42485385950274585 0.34483203663231327 0.42485385950274585 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "HeadPiece_0Shape3" -p "HeadPiece_03";
	rename -uid "613DEA8F-491C-3D74-B8EB-8290CF518823";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "HeadPiece_0Shape3Orig" -p "HeadPiece_03";
	rename -uid "B5CBCD69-432F-7C10-65C2-1F83E8C9F24A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A6305BF8-4AC5-D6D4-B444-B8BF47CB4764";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "77B9EF98-4C04-E95F-ED0C-59B0A22BF336";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "1B149C58-4898-335D-EB2E-2BBB8DB3EA94";
createNode displayLayerManager -n "layerManager";
	rename -uid "79A252DE-43F5-08A6-F6D0-F2B58F3376F4";
createNode displayLayer -n "defaultLayer";
	rename -uid "C5FDCB48-4B81-4AE0-DE97-FB8F7F635288";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "27E4AE82-4996-9B2B-89CF-20A882EC653D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "374FDA33-4D2C-98B4-72B9-AAB1909F29F6";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "1A60359B-4D3C-2327-D851-679FFFAF094E";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 251\n            -height 283\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 250\n            -height 282\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 251\n            -height 282\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 508\n            -height 611\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n"
		+ "            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -clipTime \"on\" \n                -stackedCurves 1\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 1\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 508\\n    -height 611\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 508\\n    -height 611\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "419E1319-46A5-E6C3-301E-B992CB7C37B6";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 40 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "8A9A3983-44C0-EA44-8809-9D9AC87CD0A6";
	setAttr ".ics" -type "componentList" 3 "e[26]" "e[28]" "e[30:31]";
createNode groupParts -n "groupParts1";
	rename -uid "77830955-4CF8-9DF3-B9E7-2DABAC6A72C5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:52]";
	setAttr ".gi" 43;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "8E14727F-451B-832B-7303-77A7631DC313";
	setAttr ".ics" -type "componentList" 1 "e[24:31]";
	setAttr ".cv" yes;
createNode polyCloseBorder -n "polyCloseBorder2";
	rename -uid "98D3D6AB-4C2F-E3DA-3BCE-CEBF8944E102";
	setAttr ".ics" -type "componentList" 4 "e[74]" "e[78]" "e[81]" "e[83]";
createNode groupId -n "groupId4";
	rename -uid "D1B240A2-423D-9894-6DE5-76B4EFB7F9B2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "35EEB455-484B-644A-D38F-EBB3BED67B45";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:49]";
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "1378CF20-48B8-34FC-4A41-56B07CB0D324";
	setAttr ".ics" -type "componentList" 4 "e[74]" "e[78]" "e[81]" "e[83]";
	setAttr ".cv" yes;
createNode polyCube -n "polyCube1";
	rename -uid "7C9CB41A-45BF-7D1E-560C-AA9B31D517FB";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "2C2CEA39-443E-2809-3344-F6B752F1734D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 0.62132063084326494 0 0 0 0 1 0 0 0 0 1.0669107396571254 0
		 0 1.1381617373753339 0 1;
	setAttr ".wt" 0.48307618498802185;
	setAttr ".re" 11;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "501D2A90-4C46-BB19-2A86-AB80EADCED59";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0 0.46688047 0 0 0.46688047
		 0 0 -0.00035101175 0 0 -0.00035101175 0 0 -0.00035101175 0 0 -0.00035101175 0 0 0.46688047
		 0 0 0.46688047 0;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "202A54AA-485E-1F25-C54D-009690769333";
	setAttr ".dc" -type "componentList" 2 "f[0]" "f[6:9]";
createNode polySplitRing -n "polySplitRing2";
	rename -uid "F55E6AAE-4B2D-BFE5-009A-71B20371E642";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[7]" "e[9]";
	setAttr ".ix" -type "matrix" 0.62132063084326494 0 0 0 0 1 0 0 0 0 1.0669107396571254 0
		 0 1.1381617373753339 0 1;
	setAttr ".wt" 0.8174249529838562;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "1865FBA4-4343-47E6-7078-6BB0D9711ABE";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.62132063084326494 0 0 0 0 1 0 0 0 0 1.0669107396571254 0
		 0 1.1381617373753339 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.1050422 -0.31542552 ;
	setAttr ".rs" 65024;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.31066031542163247 1.1050422078896314 -0.53345536982856268 ;
	setAttr ".cbx" -type "double3" 0.31066031542163247 1.1050422078896314 -0.097395639227464206 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "2C179A4D-4673-2519-E09F-4A80DF3AB751";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.62132063084326494 0 0 0 0 1 0 0 0 0 1.0669107396571254 0
		 0 1.1381617373753339 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.0111423 -0.31542552 ;
	setAttr ".rs" 57591;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.31066031542163247 1.0111422724056989 -0.53345536982856268 ;
	setAttr ".cbx" -type "double3" 0.31066031542163247 1.0111422724056989 -0.097395639227464206 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak2";
	rename -uid "3523FF1C-4E22-D13D-D668-C7B0E2C4B5E4";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[12]" -type "float3" 0 -0.093899898 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.093899898 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.093899898 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.093899898 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "2E054E7E-438E-ADF1-F25A-F59E2D04EEBC";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.62132063084326494 0 0 0 0 1 0 0 0 0 1.0669107396571254 0
		 0 1.1381617373753339 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.90375352 -0.31542552 ;
	setAttr ".rs" 62752;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.31066031542163247 0.90375353758819399 -0.53345536982856268 ;
	setAttr ".cbx" -type "double3" 0.31066031542163247 0.90375353758819399 -0.097395639227464206 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak3";
	rename -uid "C5A05BB0-4163-2C6A-E205-009BF44CB4BD";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[16]" -type "float3" 0 -0.10738867 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.10738867 0 ;
	setAttr ".tk[18]" -type "float3" 0 -0.10738867 0 ;
	setAttr ".tk[19]" -type "float3" 0 -0.10738867 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "F8A47311-4A62-4108-8C25-BE8ADFAEDAB6";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.62132063084326494 0 0 0 0 1 0 0 0 0 1.0669107396571254 0
		 0 1.1381617373753339 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.80403185 -0.31542552 ;
	setAttr ".rs" 45748;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.31066031542163247 0.80403186743743715 -0.53345536982856268 ;
	setAttr ".cbx" -type "double3" 0.31066031542163247 0.80403186743743715 -0.097395639227464206 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak4";
	rename -uid "5AC968C9-4049-9761-4BB2-ADB5C366CA27";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[20]" -type "float3" 0 -0.099721685 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.099721685 0 ;
	setAttr ".tk[22]" -type "float3" 0 -0.099721685 0 ;
	setAttr ".tk[23]" -type "float3" 0 -0.099721685 0 ;
createNode polyMirror -n "polyMirror1";
	rename -uid "A69848D9-4292-164D-0924-53AEABE68D3F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0.62132063084326494 0 0 0 0 1 0 0 0 0 1.0669107396571254 0
		 0 1.1381617373753339 0 1;
	setAttr ".ws" yes;
	setAttr ".a" 2;
	setAttr ".ad" 0;
	setAttr ".mm" 0;
	setAttr ".fnf" 25;
	setAttr ".lnf" 49;
createNode polyTweak -n "polyTweak5";
	rename -uid "974B3F8B-4502-447E-E3C1-23B83A0819CD";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[24]" -type "float3" 0 -0.10830612 0 ;
	setAttr ".tk[25]" -type "float3" 0 -0.10830612 0 ;
	setAttr ".tk[26]" -type "float3" 0 -0.10830612 0 ;
	setAttr ".tk[27]" -type "float3" 0 -0.10830612 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "F5A99D31-49A2-271F-ACF1-15875871ADB8";
	setAttr ".ics" -type "componentList" 2 "f[2]" "f[27]";
	setAttr ".ix" -type "matrix" 0.62132063084326494 0 0 0 0 1 0 0 0 0 1.0669107396571254 0
		 0 1.1381617373753339 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.69572574 0 ;
	setAttr ".rs" 34159;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.31066031542163247 0.69572575753219423 -0.53345536982856268 ;
	setAttr ".cbx" -type "double3" 0.31066031542163247 0.69572575753219423 0.53345536982856268 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "80748E87-44B0-2AAB-D7FA-88992954A134";
	setAttr ".ics" -type "componentList" 2 "f[2]" "f[27]";
	setAttr ".ix" -type "matrix" 0.62132063084326494 0 0 0 0 1 0 0 0 0 1.0669107396571254 0
		 0 1.1381617373753339 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.58179736 0 ;
	setAttr ".rs" 56287;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.31066031542163247 0.58179737990386782 -0.53345536982856268 ;
	setAttr ".cbx" -type "double3" 0.31066031542163247 0.58179737990386782 0.53345536982856268 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak6";
	rename -uid "BDE8B1ED-40BF-806D-FBC7-7FB106678469";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[56]" -type "float3" 0 -0.1139284 0 ;
	setAttr ".tk[57]" -type "float3" 0 -0.1139284 0 ;
	setAttr ".tk[58]" -type "float3" 0 -0.1139284 0 ;
	setAttr ".tk[59]" -type "float3" 0 -0.1139284 0 ;
	setAttr ".tk[60]" -type "float3" 0 -0.1139284 0 ;
	setAttr ".tk[61]" -type "float3" 0 -0.1139284 0 ;
	setAttr ".tk[62]" -type "float3" 0 -0.1139284 0 ;
	setAttr ".tk[63]" -type "float3" 0 -0.1139284 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "A0510674-4682-AA3A-9FD7-729778901707";
	setAttr ".ics" -type "componentList" 2 "f[2]" "f[27]";
	setAttr ".ix" -type "matrix" 0.62132063084326494 0 0 0 0 1 0 0 0 0 1.0669107396571254 0
		 0 1.1381617373753339 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.48378047 0 ;
	setAttr ".rs" 45071;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.31066031542163247 0.48378046219833193 -0.53345536982856268 ;
	setAttr ".cbx" -type "double3" 0.31066031542163247 0.48378046219833193 0.53345536982856268 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak7";
	rename -uid "357C3233-4A3D-7782-5ABE-B6837356AA21";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[64]" -type "float3" 0 -0.098016888 0 ;
	setAttr ".tk[65]" -type "float3" 0 -0.098016888 0 ;
	setAttr ".tk[66]" -type "float3" 0 -0.098016888 0 ;
	setAttr ".tk[67]" -type "float3" 0 -0.098016888 0 ;
	setAttr ".tk[68]" -type "float3" 0 -0.098016888 0 ;
	setAttr ".tk[69]" -type "float3" 0 -0.098016888 0 ;
	setAttr ".tk[70]" -type "float3" 0 -0.098016888 0 ;
	setAttr ".tk[71]" -type "float3" 0 -0.098016888 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "FA3A815E-4126-3577-D4F1-41BFFD133089";
	setAttr ".ics" -type "componentList" 2 "f[2]" "f[27]";
	setAttr ".ix" -type "matrix" 0.62132063084326494 0 0 0 0 1 0 0 0 0 1.0669107396571254 0
		 0 1.1381617373753339 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.37023649 0 ;
	setAttr ".rs" 44403;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.31066031542163247 0.37023647492416201 -0.53345536982856268 ;
	setAttr ".cbx" -type "double3" 0.31066031542163247 0.37023647492416201 0.53345536982856268 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak8";
	rename -uid "AE126150-4EEB-4156-F8F9-119E68EE8401";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[72]" -type "float3" 0 -0.11354399 0 ;
	setAttr ".tk[73]" -type "float3" 0 -0.11354399 0 ;
	setAttr ".tk[74]" -type "float3" 0 -0.11354399 0 ;
	setAttr ".tk[75]" -type "float3" 0 -0.11354399 0 ;
	setAttr ".tk[76]" -type "float3" 0 -0.11354399 0 ;
	setAttr ".tk[77]" -type "float3" 0 -0.11354399 0 ;
	setAttr ".tk[78]" -type "float3" 0 -0.11354399 0 ;
	setAttr ".tk[79]" -type "float3" 0 -0.11354399 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "28FB97C7-4066-3135-39D3-6D833E995CFF";
	setAttr ".ics" -type "componentList" 2 "f[2]" "f[27]";
	setAttr ".ix" -type "matrix" 0.62132063084326494 0 0 0 0 1 0 0 0 0 1.0669107396571254 0
		 0 1.1381617373753339 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.27028772 0 ;
	setAttr ".rs" 51711;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.31066031542163247 0.27028771107681093 -0.53345536982856268 ;
	setAttr ".cbx" -type "double3" 0.31066031542163247 0.27028771107681093 0.53345536982856268 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak9";
	rename -uid "DD070963-418D-7F5C-23ED-D8A50E16A33B";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[80]" -type "float3" 0 -0.099948786 0 ;
	setAttr ".tk[81]" -type "float3" 0 -0.099948786 0 ;
	setAttr ".tk[82]" -type "float3" 0 -0.099948786 0 ;
	setAttr ".tk[83]" -type "float3" 0 -0.099948786 0 ;
	setAttr ".tk[84]" -type "float3" 0 -0.099948786 0 ;
	setAttr ".tk[85]" -type "float3" 0 -0.099948786 0 ;
	setAttr ".tk[86]" -type "float3" 0 -0.099948786 0 ;
	setAttr ".tk[87]" -type "float3" 0 -0.099948786 0 ;
createNode polySphere -n "polySphere1";
	rename -uid "428AA043-462F-FB4C-FC49-19B19857EA5C";
createNode polyCube -n "polyCube2";
	rename -uid "F55BF146-44D1-8A66-7E88-50AC67879D03";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "127921A0-4FF3-802F-02FA-89A28DE62002";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 0.65149809331140052 0 0 0 0 1 0 0 0 0 0.65149809331140052 0
		 0 3.82324324266976 0 1;
	setAttr ".wt" 0.29516381025314331;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak10";
	rename -uid "252033C5-4B68-CFB2-93EF-4D8F98C6A1B3";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk[2:5]" -type "float3"  0 -0.5695799 0 0 -0.5695799
		 0 0 -0.5695799 0 0 -0.5695799 0;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "9C717405-4AF8-7D3F-55BA-E493393BD547";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.65149809331140052 0 0 0 0 1 0 0 0 0 0.65149809331140052 0
		 0 3.82324324266976 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.32574904 3.3867655 0 ;
	setAttr ".rs" 56800;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.32574904665570026 3.32324324266976 -0.32574904665570026 ;
	setAttr ".cbx" -type "double3" 0.32574904665570026 3.4502876819855559 0.32574904665570026 ;
	setAttr ".raf" no;
createNode polyCone -n "polyCone1";
	rename -uid "D492D635-41B0-FBFC-AFCC-EEBF0E85A8E1";
	setAttr ".cuv" 3;
createNode groupId -n "groupId5";
	rename -uid "42F45F91-4665-FF07-8243-8B82C631755E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "C78E5775-46F0-AB1D-FB26-7D838A5062AB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:233]";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "16FFEDD4-4225-48B2-9615-F2B173C7EAB5";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode animCurveTU -n "Chest_01_ctrl_visibility";
	rename -uid "5BE6C7AF-469C-304F-2B92-2B9220CC4950";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 29 1 40 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 9 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTL -n "Chest_01_ctrl_translateX";
	rename -uid "ABE26046-435F-1AFD-43A9-7AAD5651E299";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "Chest_01_ctrl_translateY";
	rename -uid "F8CFF7AC-4AA0-2516-F99E-D186CC039350";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 -0.076552996926099404 10 0.063220319078304943
		 20 -0.076552996926099404 29 0.063220319078304943 40 -0.076552996926099404;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "Chest_01_ctrl_translateZ";
	rename -uid "DF7E4747-4A29-F522-87E1-F4AB985E278E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "Chest_01_ctrl_rotateX";
	rename -uid "C3399067-4583-8DA3-1BA9-0286676BB7CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "Chest_01_ctrl_rotateY";
	rename -uid "08DBAA94-451E-7139-EDC5-9BA1AEE52A63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "Chest_01_ctrl_rotateZ";
	rename -uid "5EF70E89-45AB-047A-480B-32842DC5F3A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTU -n "Chest_01_ctrl_scaleX";
	rename -uid "C8854E8A-4747-0A5F-E228-A19D6212ED6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 29 1 40 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "Chest_01_ctrl_scaleY";
	rename -uid "143525F8-437F-C944-10D1-BCAD16788884";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 29 1 40 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "Chest_01_ctrl_scaleZ";
	rename -uid "22EC65A1-45F4-F21C-11C3-2FAA702DDEE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 29 1 40 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "Chest_02_ctrl_visibility";
	rename -uid "C13649B9-4FD8-2729-355B-40A017A7817E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 40 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "Chest_02_ctrl_translateX";
	rename -uid "184E3ED8-4523-5EDF-878E-B6AE56714C87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "Chest_02_ctrl_translateY";
	rename -uid "EF2A3A74-4C5D-B49A-16E7-B19C8DB8DA7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "Chest_02_ctrl_translateZ";
	rename -uid "FA0FB52D-413A-1ED5-E495-25975C2D5111";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "Chest_02_ctrl_rotateX";
	rename -uid "598A666A-4A77-65B2-7117-AF85711E5CA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "Chest_02_ctrl_rotateY";
	rename -uid "C51BED6C-4184-B5D2-6C0E-9E93FBC42892";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "Chest_02_ctrl_rotateZ";
	rename -uid "C9A15514-484A-D031-69E5-F58B74107012";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "Chest_02_ctrl_scaleX";
	rename -uid "EAC72E67-456C-823B-B20B-B68C3D2690BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 40 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Chest_02_ctrl_scaleY";
	rename -uid "F29C195E-4887-8A7D-5E74-9CB316A24D8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 40 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Chest_02_ctrl_scaleZ";
	rename -uid "0EC170BE-47CA-7D43-DA45-AEAA86B2C223";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 40 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Chest_03_ctrl_visibility";
	rename -uid "1108D6B1-4DAB-CA4A-CE39-0B8477C10A52";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 40 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "Chest_03_ctrl_translateX";
	rename -uid "2EBD7638-4134-BA90-41A6-97BB12109A3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "Chest_03_ctrl_translateY";
	rename -uid "FDBEAEEA-49EA-212C-12FA-8CA267B59059";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "Chest_03_ctrl_translateZ";
	rename -uid "72D9A1B9-4F78-D92E-8B81-5EB4387A6882";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "Chest_03_ctrl_rotateX";
	rename -uid "F8FBB6D9-4F58-5C62-DE81-E192C274E723";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "Chest_03_ctrl_rotateY";
	rename -uid "364F3D4B-4A3E-F337-FB27-D6915B63EA69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "Chest_03_ctrl_rotateZ";
	rename -uid "E2FF38BF-40A8-2109-EB86-F883B6DC7964";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "Chest_03_ctrl_scaleX";
	rename -uid "09600508-4278-9A53-DC3D-FC835447BF81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 40 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Chest_03_ctrl_scaleY";
	rename -uid "9677B140-4062-4667-AF2D-B680A441C924";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 40 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Chest_03_ctrl_scaleZ";
	rename -uid "A3D561B7-403D-FAF4-72BF-C28FEB972B83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 40 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Chest_04_ctrl_visibility";
	rename -uid "C37569ED-4120-4250-2802-FBA1FAC5375A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 40 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "Chest_04_ctrl_translateX";
	rename -uid "A88EF1A8-4303-1D6B-55B1-06A98D8EE0A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "Chest_04_ctrl_translateY";
	rename -uid "861C4206-4967-264D-5E0E-6BA42363F40E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "Chest_04_ctrl_translateZ";
	rename -uid "4509C572-4B51-692E-A347-D6B33768987F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "Chest_04_ctrl_rotateX";
	rename -uid "564E3236-4BC9-157F-249D-D7ADD1E4D60D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "Chest_04_ctrl_rotateY";
	rename -uid "4D6EE82B-48AA-526A-87A0-3E8EF09CBE13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "Chest_04_ctrl_rotateZ";
	rename -uid "ADA69FA8-4978-C159-9BF2-77B7D5858340";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "Chest_04_ctrl_scaleX";
	rename -uid "BF6D3D24-47BF-13D3-8BF7-F5A485F68318";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 40 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Chest_04_ctrl_scaleY";
	rename -uid "6C91846E-45C7-7F5F-A85C-23851A1AB93B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 40 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Chest_04_ctrl_scaleZ";
	rename -uid "ACBE8213-45C2-5DC6-13F0-32AB157B481B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 40 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_01_Ctrl_visibility";
	rename -uid "43890E52-42FF-CA3D-BD12-79BF34D44A8C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 30 1 40 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 9 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTL -n "L_Arm_01_Ctrl_translateX";
	rename -uid "C6F34E03-41A7-CD66-20F8-B7BDB5A6BAE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 30 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "L_Arm_01_Ctrl_translateY";
	rename -uid "1CA21E9E-42FC-4E17-F2E8-719A1B4AEAAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 30 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "L_Arm_01_Ctrl_translateZ";
	rename -uid "9F741DD9-44C8-5504-3B99-FBB865A48017";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 30 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "L_Arm_01_Ctrl_rotateX";
	rename -uid "7DA4C218-4290-D2AF-1B19-ACA0F3012979";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 -68.821834976629034 10 -69.925157684940942
		 20 -67.171315593900147 30 -70.752989945302303 40 -68.821834976629034;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "L_Arm_01_Ctrl_rotateY";
	rename -uid "9AE4CDE4-4DAB-769E-04B4-1A93ADB980F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 8.8101440242077977 10 -11.167790241902235
		 20 -1.2211871823964067 30 12.574768784444144 40 8.8101440242077977;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "L_Arm_01_Ctrl_rotateZ";
	rename -uid "D117AE5B-4FB1-75D7-095F-DA871DD7539D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 -21.569822856463237 10 27.922884694616155
		 20 2.8983287763382961 30 -31.945195328647159 40 -21.569822856463237;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTU -n "L_Arm_01_Ctrl_scaleX";
	rename -uid "4F380AF7-4950-028F-D387-3199575E641B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 30 1 40 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "L_Arm_01_Ctrl_scaleY";
	rename -uid "3150D2F9-49A0-7445-DB77-C0A5C154E961";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 30 1 40 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "L_Arm_01_Ctrl_scaleZ";
	rename -uid "621E3CC6-4E98-947B-7C89-56BBC368ACEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 30 1 40 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "L_Arm_02_Ctrl_visibility";
	rename -uid "A10005C8-4F7D-8979-E5B0-2EAEEC2678DF";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 40 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "L_Arm_02_Ctrl_translateX";
	rename -uid "C5589A97-4B1F-52E1-D814-5B9C56936F80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "L_Arm_02_Ctrl_translateY";
	rename -uid "EA5E1B73-44C9-1B29-3F83-608B49EA37CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "L_Arm_02_Ctrl_translateZ";
	rename -uid "17867A1F-4130-E22F-B5A1-FC91A5FD9882";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "L_Arm_02_Ctrl_rotateX";
	rename -uid "637413AA-4379-8274-ECA8-4C892CCF826C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "L_Arm_02_Ctrl_rotateY";
	rename -uid "C44151B3-4BF8-15BB-8DF2-6E841E3E7371";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 -51.592170564151488 10 -51.592170564151488
		 40 -51.592170564151488;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "L_Arm_02_Ctrl_rotateZ";
	rename -uid "6AE3DC3B-408F-2A90-8060-07A79F753EB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "L_Arm_02_Ctrl_scaleX";
	rename -uid "EE218142-4027-6E8C-CB1E-4D9B67FF57A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 40 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_02_Ctrl_scaleY";
	rename -uid "B390A770-4085-B268-B503-B6A2F311C0F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 40 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_02_Ctrl_scaleZ";
	rename -uid "7C94D059-4216-3915-DC4A-7A897DE59CC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 40 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_01_Ctrl_visibility";
	rename -uid "35DAF2C7-4316-2E0E-D005-1B94ED16524B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 30 1 40 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 9 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTL -n "R_Arm_01_Ctrl_translateX";
	rename -uid "84FC87E0-4AC8-2883-FD52-818E753D71B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 30 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "R_Arm_01_Ctrl_translateY";
	rename -uid "5C4FA7AF-484C-42A1-3AE9-F999BA2D4A80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 30 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "R_Arm_01_Ctrl_translateZ";
	rename -uid "A02E7293-4A47-30F4-2070-14AE1CD72870";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 30 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "R_Arm_01_Ctrl_rotateX";
	rename -uid "52824564-4CCE-B74A-2232-D5A99A3EDAF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 68.779958581473608 10 75.340268800149261
		 20 68.326893193503778 30 68.797182273119063 40 68.779958581473608;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "R_Arm_01_Ctrl_rotateY";
	rename -uid "F33AEC01-4B77-CE2C-1E74-20B9DF61A0F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 -6.3715738675431322 10 -16.741631484225451
		 20 -4.5016624715325033 30 6.4311554498570276 40 -6.3715738675431322;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "R_Arm_01_Ctrl_rotateZ";
	rename -uid "3A4C294D-4382-E798-5BDD-8DB80F22621B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 -10.068764569410515 10 -41.874283132467802
		 20 -5.2901811471416194 30 21.98732072303002 40 -10.068764569410515;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTU -n "R_Arm_01_Ctrl_scaleX";
	rename -uid "603C4D6C-41D8-6156-8925-A7906BB42D7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 30 1 40 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "R_Arm_01_Ctrl_scaleY";
	rename -uid "DF4CC306-4FC0-A335-E48D-2199544E2742";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 30 1 40 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "R_Arm_01_Ctrl_scaleZ";
	rename -uid "18247EB8-492E-C162-06C7-E4A6C451E7A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 30 1 40 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "R_Arm_02_Ctrl_visibility";
	rename -uid "6138E028-40DA-8C00-A3A3-E084FF05CF88";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 40 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "R_Arm_02_Ctrl_translateX";
	rename -uid "1845EA77-428A-DA7D-5492-ADB4BE6EDA13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "R_Arm_02_Ctrl_translateY";
	rename -uid "F2CAAFEC-45B6-5A53-1C40-8A8E18BA7AA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "R_Arm_02_Ctrl_translateZ";
	rename -uid "B59BA3EA-459C-6B63-A3D5-5FB26B71DB59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "R_Arm_02_Ctrl_rotateX";
	rename -uid "D9DC9784-4D25-2811-BE73-1EA3F88C8DA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "R_Arm_02_Ctrl_rotateY";
	rename -uid "054018AB-4858-F705-8AA1-66B93E24A581";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 63.977276066096287 10 63.977276066096287
		 40 63.977276066096287;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "R_Arm_02_Ctrl_rotateZ";
	rename -uid "5AE67124-4C45-B363-689F-4182D0C22CF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 1 0 10 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "R_Arm_02_Ctrl_scaleX";
	rename -uid "30F3FAC2-4114-A289-71EE-60B78E05A57D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 40 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_02_Ctrl_scaleY";
	rename -uid "D7E70226-46E3-363C-A724-2C926DCDE6DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 40 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_02_Ctrl_scaleZ";
	rename -uid "35A36BA0-4F9C-B139-0C30-D19D72A8A911";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 40 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_01_Ctrl_visibility";
	rename -uid "F01962BB-41F1-986C-4830-2587D0FEF6FA";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 29 1 40 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 1 1;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTL -n "R_Leg_01_Ctrl_translateX";
	rename -uid "BAF4D78B-4C2C-5E07-B43C-DCB93CA7C9EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[4:5]"  1 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTL -n "R_Leg_01_Ctrl_translateY";
	rename -uid "7FC3C2F6-4023-3484-B772-6FB74694291B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[4:5]"  1 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTL -n "R_Leg_01_Ctrl_translateZ";
	rename -uid "CB8DEC15-4D67-3113-B9A2-AC8C674DEBF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[4:5]"  1 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTA -n "R_Leg_01_Ctrl_rotateX";
	rename -uid "FA1EF491-48BF-A81F-8824-8194F97C0DCA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[4:5]"  1 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTA -n "R_Leg_01_Ctrl_rotateY";
	rename -uid "853E1A47-4979-F557-ED4C-C3B2DA461A2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 -19.668732701093994 10 23.805153967407811
		 20 32.092326080186417 29 0 40 -19.668732701093994;
	setAttr -s 6 ".kit[4:5]"  1 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[4:5]"  0.65906593227787202 1;
	setAttr -s 6 ".kiy[4:5]"  -0.75208516599564657 0;
	setAttr -s 6 ".kox[3:5]"  1 0.6780273761442065 1;
	setAttr -s 6 ".koy[3:5]"  0 -0.73503665024201525 0;
createNode animCurveTA -n "R_Leg_01_Ctrl_rotateZ";
	rename -uid "EC47288C-4D02-BDC3-D6FE-DC97CDBF96A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[4:5]"  1 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTU -n "R_Leg_01_Ctrl_scaleX";
	rename -uid "F30F0CCE-41F3-9233-2AB6-54A4C19FB82F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 29 1 40 1;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "R_Leg_01_Ctrl_scaleY";
	rename -uid "E02CEE8F-4AAD-F9A7-9160-E9BB89C4E1E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 29 1 40 1;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "R_Leg_01_Ctrl_scaleZ";
	rename -uid "35A405A0-4AD7-C62D-D61C-D398BE4083D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 29 1 40 1;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "R_Leg_02_Ctrl_visibility";
	rename -uid "B700D363-450F-7DA7-CEDB-BD9C79B236E3";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 29 1 40 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 1 1;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTL -n "R_Leg_02_Ctrl_translateX";
	rename -uid "407951DC-4FF8-2FD0-24C5-A28178FDB42C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[4:5]"  1 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTL -n "R_Leg_02_Ctrl_translateY";
	rename -uid "B15C7174-4D87-9BDC-3287-B695E149F630";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[4:5]"  1 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTL -n "R_Leg_02_Ctrl_translateZ";
	rename -uid "29284B58-45D4-E69D-3764-EA8AB478940D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[4:5]"  1 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTA -n "R_Leg_02_Ctrl_rotateX";
	rename -uid "D095BEF7-4AAE-8A4E-F261-AC925CDE3403";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[4:5]"  1 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTA -n "R_Leg_02_Ctrl_rotateY";
	rename -uid "52AE220D-491A-5F6A-95AA-C7BECF5EC486";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 -24.73237686516649 10 -63.780095157586331
		 20 -33.746002875990179 29 0 40 -24.73237686516649;
	setAttr -s 6 ".kit[4:5]"  1 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTA -n "R_Leg_02_Ctrl_rotateZ";
	rename -uid "441C0FB8-4066-D057-5C1B-4B82359CCE6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[4:5]"  1 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTU -n "R_Leg_02_Ctrl_scaleX";
	rename -uid "547F8D2F-47DC-37C5-2820-5285CCA9CEB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 29 1 40 1;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "R_Leg_02_Ctrl_scaleY";
	rename -uid "ACF270D9-4124-DC1F-E7CD-318DC4019D31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 29 1 40 1;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "R_Leg_02_Ctrl_scaleZ";
	rename -uid "DD8C7D62-4335-1050-53B8-6AB072D7B970";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 29 1 40 1;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "L_Leg_02_Ctrl_visibility";
	rename -uid "ADDC76AA-49AD-C45C-54E5-9EB322EBF90C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 29 1 40 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 9 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTL -n "L_Leg_02_Ctrl_translateX";
	rename -uid "73A60BDF-4EB7-53E5-8DB2-9B9EB07E9E4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "L_Leg_02_Ctrl_translateY";
	rename -uid "92EDE67D-4556-F6FD-6770-D2BE0CAD35DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "L_Leg_02_Ctrl_translateZ";
	rename -uid "734E5F8B-4208-B328-EF0D-628D5C846B0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "L_Leg_02_Ctrl_rotateX";
	rename -uid "BC68C1F2-4745-5E73-125F-B7A0AD6A7507";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "L_Leg_02_Ctrl_rotateY";
	rename -uid "07768596-44BD-F5E6-321C-67A08D95A9CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 32.092326080186417 10 0 20 -19.668732701093994
		 29 23.805153967407811 40 32.092326080186417;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "L_Leg_02_Ctrl_rotateZ";
	rename -uid "5A468D9D-42D6-A5D2-7E0F-C995F948A791";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTU -n "L_Leg_02_Ctrl_scaleX";
	rename -uid "52058F72-4FC3-5C42-D5B5-8BBFD4DCECD2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 29 1 40 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "L_Leg_02_Ctrl_scaleY";
	rename -uid "C81CF525-4F52-6F3D-E076-B2B48E2DEE15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 29 1 40 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "L_Leg_02_Ctrl_scaleZ";
	rename -uid "9C2E47D2-44FB-B9BE-FC02-4BAA427678EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 29 1 40 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "L_Leg_01_Ctrl_visibility";
	rename -uid "65E287EF-40A4-9E88-B7E6-2D95DC7B4BA2";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 29 1 40 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 9 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTL -n "L_Leg_01_Ctrl_translateX";
	rename -uid "F803066A-438B-4205-02CA-6A996E97ED99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "L_Leg_01_Ctrl_translateY";
	rename -uid "B9BCA67A-48C7-4B72-F348-3CAA3FAEC6C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "L_Leg_01_Ctrl_translateZ";
	rename -uid "B4D37EBF-445C-056F-4146-A584F0353E91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "L_Leg_01_Ctrl_rotateX";
	rename -uid "AD990361-41A3-EFF3-9F32-DFA2D57DB493";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "L_Leg_01_Ctrl_rotateY";
	rename -uid "CEA99AC4-4E27-7042-33D2-1AB8865B6EA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 -33.746002875990179 10 0 20 -24.73237686516649
		 29 -63.780095157586331 40 -33.746002875990179;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "L_Leg_01_Ctrl_rotateZ";
	rename -uid "170630F2-4C66-9722-588A-5FB12E1D9703";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0 1 0 10 0 20 0 29 0 40 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTU -n "L_Leg_01_Ctrl_scaleX";
	rename -uid "F67801ED-4464-4C6D-2729-FAA2A5D9C00E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 29 1 40 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "L_Leg_01_Ctrl_scaleY";
	rename -uid "4697E8EB-4716-BA3A-561C-A4A62D7641FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 29 1 40 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "L_Leg_01_Ctrl_scaleZ";
	rename -uid "64932AC5-43EB-F100-03FE-1AB9FE553A31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 29 1 40 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode renderLayerManager -n "pasted__renderLayerManager";
	rename -uid "AE7FA8F9-4ADB-C66F-E52E-AE9384C48D33";
createNode renderLayer -n "pasted__defaultRenderLayer";
	rename -uid "D3C890F0-44E3-A56A-BEBA-04B425A38C59";
	setAttr ".g" yes;
createNode groupId -n "groupId11";
	rename -uid "AEF98C71-470E-AA2E-2582-FAB5E541E560";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "667E2136-4880-2A85-6D0C-AF95A2AAEF24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:125]";
createNode tweak -n "tweak6";
	rename -uid "BDE482DE-4A2E-01C0-CADE-3CA4EA1476CE";
	setAttr -s 9 ".vl[0].vt";
	setAttr ".vl[0].vt[88]" -type "float3" 0 -0.11023552 0 ;
	setAttr ".vl[0].vt[89]" -type "float3" 0 -0.11023552 0 ;
	setAttr ".vl[0].vt[90]" -type "float3" 0 -0.11023552 0 ;
	setAttr ".vl[0].vt[91]" -type "float3" 0 -0.11023552 0 ;
	setAttr ".vl[0].vt[92]" -type "float3" 0 -0.11023552 0 ;
	setAttr ".vl[0].vt[93]" -type "float3" 0 -0.11023552 0 ;
	setAttr ".vl[0].vt[94]" -type "float3" 0 -0.11023552 0 ;
	setAttr ".vl[0].vt[95]" -type "float3" 0 -0.11023552 0 ;
createNode objectSet -n "tweakSet6";
	rename -uid "7FBC9F3B-4C03-A704-3260-3FAC46A19BBF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId19";
	rename -uid "BF3E3259-4BBB-5F62-8790-14ADC6A9048E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	rename -uid "28BC7D7E-4307-D454-687A-9DB7290BE5AD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak8";
	rename -uid "D251EC94-4655-055C-C431-A7B577C3DE79";
	setAttr -s 6 ".vl[0].vt";
	setAttr ".vl[0].vt[12]" -type "float3" 0.40564257 0 0 ;
	setAttr ".vl[0].vt[13]" -type "float3" 0.40564257 0 0 ;
	setAttr ".vl[0].vt[14]" -type "float3" 0.40564257 0 0 ;
	setAttr ".vl[0].vt[15]" -type "float3" 0.40564257 0 0 ;
createNode objectSet -n "tweakSet8";
	rename -uid "C76AE853-438D-859A-F9F7-2EA598BCC89B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId23";
	rename -uid "AAF5D84E-4FF0-BD8E-E222-7BA55B6F5010";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	rename -uid "B37C879F-43E8-C9EF-4243-F599A9ACCBC9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId26";
	rename -uid "6733B435-4A26-A4E8-3B5F-0DB0BC1A2206";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "9ED39D0A-4F80-8034-4538-3A99D557646E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:77]";
createNode skinCluster -n "skinCluster1";
	rename -uid "89245A44-4A24-407F-B658-3EAE217461DC";
	setAttr -s 252 ".wl";
	setAttr ".wl[0:251].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 14 1
		1 14 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 11 1
		1 11 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 0 1
		1 0 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 0 1
		1 0 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 2 1
		1 2 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 2 1
		1 2 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1;
	setAttr -s 16 ".pm";
	setAttr ".pm[0]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -1.3984588330628882 -6.2104047818273865e-16 -7.6055523374743248e-32 1;
	setAttr ".pm[1]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -1.9991185193309937 -6.6574235872129692e-16 -8.152992486648451e-32 1;
	setAttr ".pm[2]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -2.5708405017054838 -4.4369775379626566e-16 -5.4337303397546705e-32 1;
	setAttr ".pm[3]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -3.2409506773182675 -2.216531488712344e-16 -2.7144681928608879e-32 1;
	setAttr ".pm[4]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -0.49339682338236934 -2.5736464888173161 -2.5392604592696167e-17 1;
	setAttr ".pm[5]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -1.1675574172478862 -2.5736464888173169 1.1984674519263374e-15 1;
	setAttr ".pm[6]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -1.7453853362232536 -2.5736464888173169 1.4699423398460319e-15 1;
	setAttr ".pm[7]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -0.46912968966234603 -2.5736464888173143 -1.0447882317008309e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -1.1432902835278631 -2.5736464888173103 -4.5140541290332629e-15 1;
	setAttr ".pm[9]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -1.7211182025032306 -2.5736464888173085 -6.5817790247224957e-15 1;
	setAttr ".pm[10]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 1.3984588384628298 -6.6080959716408533e-16 -0.32473948089342858 1;
	setAttr ".pm[11]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 0.59456641023041867 -7.9576494549723366e-16 -0.32473948089342858 1;
	setAttr ".pm[12]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 -0.050219874869797773 -6.5259362956107755e-16 -0.32473948089342858 1;
	setAttr ".pm[13]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 1.39845883846283 -5.8060438154236566e-16 0.33018580595304792 1;
	setAttr ".pm[14]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 0.59456641023041901 -7.1555972987551359e-16 0.33018580595304797 1;
	setAttr ".pm[15]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 -0.050219874869797357 -5.7238841393935749e-16 0.33018580595304797 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 16 ".ma";
	setAttr -s 16 ".dpf[0:15]"  0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 
		0.1 0.1 0.1 0.1 0.1 0.1;
	setAttr -s 16 ".lw";
	setAttr -s 16 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 16 ".ifcl";
	setAttr -s 16 ".ifcl";
createNode tweak -n "tweak9";
	rename -uid "03D1AF0C-4575-C361-66FA-8390BBB10BD2";
createNode objectSet -n "skinCluster1Set";
	rename -uid "5B9CC33A-43E4-3EF5-3BEF-54AA1BDDF6F2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "6718DC70-414D-AFF0-FC0D-4281D6DD489E";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "F33C904E-4346-B4F9-D46B-89991FC94FF5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet9";
	rename -uid "A7562229-4525-FC2A-7FDE-2CA490FD28E0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId28";
	rename -uid "9448AC63-444F-6F72-71DE-E19A342E59BC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	rename -uid "69FC5872-4346-4D6A-0164-77AB904CC307";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "4AA55F02-4D72-E92D-1524-058CAA2C879B";
	setAttr -s 17 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 17 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.1052023909136932e-16
		 1.3984588330628882 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0.70710678118654757 4.329780281177467e-17 4.3297802811774658e-17 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -1.224646799147353e-16 -1.224646799147353e-16
		 7.4987989133092853e-33 0 0.60065968626810529 4.4701880538558272e-17 5.4744014917412621e-33 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -1.224646799147353e-16 -1.224646799147353e-16
		 7.4987989133092853e-33 0 0.57172198237449012 -2.2204460492503126e-16 -2.7192621468937794e-32 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -1.224646799147353e-16 -1.224646799147353e-16
		 7.4987989133092853e-33 0 0.67011017561278363 -2.2204460492503126e-16 -2.7192621468937821e-32 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -1.1102230246251501e-16 -1.1657341758564144e-15
		 -1.1102230246251565e-15 0 0.002805987111832664 1.5315916862256545e-16 0.49339682338236651 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.50000000000000022 -0.49999999999999978 -0.49999999999999967 0.50000000000000033 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.67416059386551663 8.8817841970012523e-16
		 -1.2238600565190336e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.57782791897536789 0
		 -2.7147488791969447e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -1.1130334334602713e-29 4.6629367034256575e-15
		 -4.7739590058881731e-15 0 0.002805987111832664 -1.1767118974341098e-15 -0.46912968966233348 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.50000000000000122 0.49999999999999883 -0.49999999999999872 0.50000000000000122 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.67416059386551708 -3.9968028886505635e-15
		 3.4692658973324318e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.57782791897536745 -2.2204460492503131e-15
		 2.0677248956892336e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 1.4066690444642382e-31 5.1104273853354013e-16
		 4.4408920985006262e-16 0 5.3999416049776983e-09 3.9769118981346688e-17 -0.32473948089342841 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 6.123233995736766e-17 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 9.8607613152626476e-32 4.4408920985006262e-16
		 4.4408920985006262e-16 0 0.80389242823241114 1.3495534833314822e-16 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.64478628510021641 -1.431713159361561e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 1.4066690444642382e-31 5.1104273853354013e-16
		 4.4408920985006262e-16 0 5.3999418270223032e-09 -4.0436096640372981e-17 0.33018580595304808 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 6.123233995736766e-17 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 9.8607613152626476e-32 4.4408920985006262e-16
		 4.4408920985006262e-16 0 0.80389242823241103 1.3495534833314803e-16 -5.5511151231257827e-17 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.64478628510021641 -1.431713159361561e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 17 ".m";
	setAttr -s 17 ".p";
	setAttr -s 17 ".g[0:16]" yes no no no no no no no no no no no no no 
		no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "A4E290A5-4D91-9131-81A5-5BA7A9D6D071";
	setAttr -s 80 ".wl";
	setAttr ".wl[0:79].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 1 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 1 1
		1 1 1
		1 1 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 1 1
		1 1 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1;
	setAttr -s 16 ".pm";
	setAttr ".pm[0]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -1.3984588330628882 -6.2104047818273865e-16 -7.6055523374743248e-32 1;
	setAttr ".pm[1]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -1.9991185193309937 -6.6574235872129692e-16 -8.152992486648451e-32 1;
	setAttr ".pm[2]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -2.5708405017054838 -4.4369775379626566e-16 -5.4337303397546705e-32 1;
	setAttr ".pm[3]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -3.2409506773182675 -2.216531488712344e-16 -2.7144681928608879e-32 1;
	setAttr ".pm[4]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -0.49339682338236934 -2.5736464888173161 -2.5392604592696167e-17 1;
	setAttr ".pm[5]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -1.1675574172478862 -2.5736464888173169 1.1984674519263374e-15 1;
	setAttr ".pm[6]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -1.7453853362232536 -2.5736464888173169 1.4699423398460319e-15 1;
	setAttr ".pm[7]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -0.46912968966234603 -2.5736464888173143 -1.0447882317008309e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -1.1432902835278631 -2.5736464888173103 -4.5140541290332629e-15 1;
	setAttr ".pm[9]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -1.7211182025032306 -2.5736464888173085 -6.5817790247224957e-15 1;
	setAttr ".pm[10]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 1.3984588384628298 -6.6080959716408533e-16 -0.32473948089342858 1;
	setAttr ".pm[11]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 0.59456641023041867 -7.9576494549723366e-16 -0.32473948089342858 1;
	setAttr ".pm[12]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 -0.050219874869797773 -6.5259362956107755e-16 -0.32473948089342858 1;
	setAttr ".pm[13]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 1.39845883846283 -5.8060438154236566e-16 0.33018580595304792 1;
	setAttr ".pm[14]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 0.59456641023041901 -7.1555972987551359e-16 0.33018580595304797 1;
	setAttr ".pm[15]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 -0.050219874869797357 -5.7238841393935749e-16 0.33018580595304797 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 12 ".ma";
	setAttr -s 16 ".dpf[0:15]"  0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 
		0.1 0.1 0.1 0.1 0.1 0.1;
	setAttr -s 12 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 12 ".ifcl";
createNode tweak -n "tweak10";
	rename -uid "8298CBD2-4639-1C7E-5F61-2D8EAB4105D8";
createNode objectSet -n "skinCluster2Set";
	rename -uid "F2900F09-425E-3AA4-5FF4-6EA179DA590B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "EEBF2D60-4D81-6502-0587-259D5DB712FB";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "35454D59-42F6-8546-4A30-159DF6C1F057";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet10";
	rename -uid "102B281A-4AFF-6F17-CB7D-889702C2EACB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId30";
	rename -uid "0FE0792B-4300-6B1D-2E21-7AB623B43205";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "FDD92EE7-4B3A-68B7-4A2E-7395337C8A02";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster3";
	rename -uid "F7A6745E-4B36-D874-4684-0FB2EC16DCED";
	setAttr -s 144 ".wl";
	setAttr ".wl[0:143].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 1 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 1 1
		1 1 1
		1 1 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 1 1
		1 1 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 1 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 1 1
		1 1 1
		1 1 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 1 1
		1 1 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1;
	setAttr -s 16 ".pm";
	setAttr ".pm[0]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -1.3984588330628882 -6.2104047818273865e-16 -7.6055523374743248e-32 1;
	setAttr ".pm[1]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -1.9991185193309937 -6.6574235872129692e-16 -8.152992486648451e-32 1;
	setAttr ".pm[2]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -2.5708405017054838 -4.4369775379626566e-16 -5.4337303397546705e-32 1;
	setAttr ".pm[3]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -3.2409506773182675 -2.216531488712344e-16 -2.7144681928608879e-32 1;
	setAttr ".pm[4]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -0.49339682338236934 -2.5736464888173161 -2.5392604592696167e-17 1;
	setAttr ".pm[5]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -1.1675574172478862 -2.5736464888173169 1.1984674519263374e-15 1;
	setAttr ".pm[6]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -1.7453853362232536 -2.5736464888173169 1.4699423398460319e-15 1;
	setAttr ".pm[7]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -0.46912968966234603 -2.5736464888173143 -1.0447882317008309e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -1.1432902835278631 -2.5736464888173103 -4.5140541290332629e-15 1;
	setAttr ".pm[9]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -1.7211182025032306 -2.5736464888173085 -6.5817790247224957e-15 1;
	setAttr ".pm[10]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 1.3984588384628298 -6.6080959716408533e-16 -0.32473948089342858 1;
	setAttr ".pm[11]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 0.59456641023041867 -7.9576494549723366e-16 -0.32473948089342858 1;
	setAttr ".pm[12]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 -0.050219874869797773 -6.5259362956107755e-16 -0.32473948089342858 1;
	setAttr ".pm[13]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 1.39845883846283 -5.8060438154236566e-16 0.33018580595304792 1;
	setAttr ".pm[14]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 0.59456641023041901 -7.1555972987551359e-16 0.33018580595304797 1;
	setAttr ".pm[15]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 -0.050219874869797357 -5.7238841393935749e-16 0.33018580595304797 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 12 ".ma";
	setAttr -s 16 ".dpf[0:15]"  0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 
		0.1 0.1 0.1 0.1 0.1 0.1;
	setAttr -s 12 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 12 ".ifcl";
createNode tweak -n "tweak11";
	rename -uid "49090A4F-4455-C0AB-0C88-42B5B7116D81";
createNode objectSet -n "skinCluster3Set";
	rename -uid "A2676991-4F6A-EE3E-CB8E-388949F770FE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	rename -uid "EC9F1BC7-4ED4-029C-053E-219020A0BF44";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	rename -uid "D2A1CA58-4EF0-B2CE-D2E3-B0A360710D64";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet11";
	rename -uid "65DC7A94-4960-3465-92C5-75A9D7108E1B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId32";
	rename -uid "69483530-43CE-DE2C-8A00-088343682CCB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "18684331-42E6-5C22-47C9-CC8280B9F373";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster4";
	rename -uid "CE726A7E-4BFC-146A-CEE9-CEBCB9E42046";
	setAttr -s 64 ".wl";
	setAttr ".wl[0:63].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 1 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 1 1
		1 1 1
		1 1 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 1 1
		1 1 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 1 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 1 1
		1 1 1
		1 1 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 1 1
		1 1 1;
	setAttr -s 16 ".pm";
	setAttr ".pm[0]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -1.3984588330628882 -6.2104047818273865e-16 -7.6055523374743248e-32 1;
	setAttr ".pm[1]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -1.9991185193309937 -6.6574235872129692e-16 -8.152992486648451e-32 1;
	setAttr ".pm[2]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -2.5708405017054838 -4.4369775379626566e-16 -5.4337303397546705e-32 1;
	setAttr ".pm[3]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -3.2409506773182675 -2.216531488712344e-16 -2.7144681928608879e-32 1;
	setAttr ".pm[4]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -0.49339682338236934 -2.5736464888173161 -2.5392604592696167e-17 1;
	setAttr ".pm[5]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -1.1675574172478862 -2.5736464888173169 1.1984674519263374e-15 1;
	setAttr ".pm[6]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -1.7453853362232536 -2.5736464888173169 1.4699423398460319e-15 1;
	setAttr ".pm[7]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -0.46912968966234603 -2.5736464888173143 -1.0447882317008309e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -1.1432902835278631 -2.5736464888173103 -4.5140541290332629e-15 1;
	setAttr ".pm[9]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -1.7211182025032306 -2.5736464888173085 -6.5817790247224957e-15 1;
	setAttr ".pm[10]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 1.3984588384628298 -6.6080959716408533e-16 -0.32473948089342858 1;
	setAttr ".pm[11]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 0.59456641023041867 -7.9576494549723366e-16 -0.32473948089342858 1;
	setAttr ".pm[12]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 -0.050219874869797773 -6.5259362956107755e-16 -0.32473948089342858 1;
	setAttr ".pm[13]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 1.39845883846283 -5.8060438154236566e-16 0.33018580595304792 1;
	setAttr ".pm[14]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 0.59456641023041901 -7.1555972987551359e-16 0.33018580595304797 1;
	setAttr ".pm[15]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 -0.050219874869797357 -5.7238841393935749e-16 0.33018580595304797 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 10 ".ma";
	setAttr -s 16 ".dpf[0:15]"  0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 
		0.1 0.1 0.1 0.1 0.1 0.1;
	setAttr -s 10 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 10 ".ifcl";
createNode tweak -n "tweak12";
	rename -uid "6A6B56F5-427F-A871-FA8F-62B422BAAC72";
createNode objectSet -n "skinCluster4Set";
	rename -uid "088B785A-40DE-8844-052C-7BB5FE282A20";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster4GroupId";
	rename -uid "E7AA5E1A-4B33-9F5F-0F09-9A8176572EEC";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster4GroupParts";
	rename -uid "3ACB26D1-4A6F-43FA-1D3D-D79DDEBAF1CE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet12";
	rename -uid "0E10C79F-4867-F80A-08BF-CCBCF9638918";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId34";
	rename -uid "8FEDF6C9-4788-712F-23D4-E6A6FF70E64D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "82B60F3E-40D2-E0EE-BCBB-A0BD84A18F11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster5";
	rename -uid "7AB8C785-4A84-2631-035D-5B8043E547F1";
	setAttr -s 56 ".wl";
	setAttr ".wl[0:55].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1;
	setAttr -s 16 ".pm";
	setAttr ".pm[0]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -1.3984588330628882 -6.2104047818273865e-16 -7.6055523374743248e-32 1;
	setAttr ".pm[1]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -1.9991185193309937 -6.6574235872129692e-16 -8.152992486648451e-32 1;
	setAttr ".pm[2]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -2.5708405017054838 -4.4369775379626566e-16 -5.4337303397546705e-32 1;
	setAttr ".pm[3]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -3.2409506773182675 -2.216531488712344e-16 -2.7144681928608879e-32 1;
	setAttr ".pm[4]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -0.49339682338236934 -2.5736464888173161 -2.5392604592696167e-17 1;
	setAttr ".pm[5]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -1.1675574172478862 -2.5736464888173169 1.1984674519263374e-15 1;
	setAttr ".pm[6]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -1.7453853362232536 -2.5736464888173169 1.4699423398460319e-15 1;
	setAttr ".pm[7]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -0.46912968966234603 -2.5736464888173143 -1.0447882317008309e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -1.1432902835278631 -2.5736464888173103 -4.5140541290332629e-15 1;
	setAttr ".pm[9]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -1.7211182025032306 -2.5736464888173085 -6.5817790247224957e-15 1;
	setAttr ".pm[10]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 1.3984588384628298 -6.6080959716408533e-16 -0.32473948089342858 1;
	setAttr ".pm[11]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 0.59456641023041867 -7.9576494549723366e-16 -0.32473948089342858 1;
	setAttr ".pm[12]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 -0.050219874869797773 -6.5259362956107755e-16 -0.32473948089342858 1;
	setAttr ".pm[13]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 1.39845883846283 -5.8060438154236566e-16 0.33018580595304792 1;
	setAttr ".pm[14]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 0.59456641023041901 -7.1555972987551359e-16 0.33018580595304797 1;
	setAttr ".pm[15]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 -0.050219874869797357 -5.7238841393935749e-16 0.33018580595304797 1;
	setAttr ".gm" -type "matrix" 0.62132063084326494 0 0 0 0 1 0 0 0 0 1.0669107396571254 0
		 0 1.1381617373753339 0 1;
	setAttr -s 11 ".ma";
	setAttr -s 16 ".dpf[0:15]"  0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 
		0.1 0.1 0.1 0.1 0.1 0.1;
	setAttr -s 11 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 11 ".ifcl";
createNode tweak -n "tweak13";
	rename -uid "64738B60-4AFB-92DB-3207-C4A96DFE0BB2";
createNode objectSet -n "skinCluster5Set";
	rename -uid "08CA6367-4898-ACD8-EB54-61B14849152A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster5GroupId";
	rename -uid "53C90058-48D9-35A5-558B-80A47BE25BEE";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster5GroupParts";
	rename -uid "57601A31-44CB-58DD-73F0-18A1C0A488C0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet13";
	rename -uid "C19F99FA-43D9-A5E1-72D5-62B332890640";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId36";
	rename -uid "95564D04-478A-A49A-E30B-ECB3A075EF90";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "44750EB6-4458-FAC9-E1BF-1BA86DA50922";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster6";
	rename -uid "4338F72A-4B42-F762-0A72-0B8DC832A054";
	setAttr -s 96 ".wl";
	setAttr ".wl[0:95].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1;
	setAttr -s 16 ".pm";
	setAttr ".pm[0]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -1.3984588330628882 -6.2104047818273865e-16 -7.6055523374743248e-32 1;
	setAttr ".pm[1]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -1.9991185193309937 -6.6574235872129692e-16 -8.152992486648451e-32 1;
	setAttr ".pm[2]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -2.5708405017054838 -4.4369775379626566e-16 -5.4337303397546705e-32 1;
	setAttr ".pm[3]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -3.2409506773182675 -2.216531488712344e-16 -2.7144681928608879e-32 1;
	setAttr ".pm[4]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -0.49339682338236934 -2.5736464888173161 -2.5392604592696167e-17 1;
	setAttr ".pm[5]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -1.1675574172478862 -2.5736464888173169 1.1984674519263374e-15 1;
	setAttr ".pm[6]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -1.7453853362232536 -2.5736464888173169 1.4699423398460319e-15 1;
	setAttr ".pm[7]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -0.46912968966234603 -2.5736464888173143 -1.0447882317008309e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -1.1432902835278631 -2.5736464888173103 -4.5140541290332629e-15 1;
	setAttr ".pm[9]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -1.7211182025032306 -2.5736464888173085 -6.5817790247224957e-15 1;
	setAttr ".pm[10]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 1.3984588384628298 -6.6080959716408533e-16 -0.32473948089342858 1;
	setAttr ".pm[11]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 0.59456641023041867 -7.9576494549723366e-16 -0.32473948089342858 1;
	setAttr ".pm[12]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 -0.050219874869797773 -6.5259362956107755e-16 -0.32473948089342858 1;
	setAttr ".pm[13]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 1.39845883846283 -5.8060438154236566e-16 0.33018580595304792 1;
	setAttr ".pm[14]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 0.59456641023041901 -7.1555972987551359e-16 0.33018580595304797 1;
	setAttr ".pm[15]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 -0.050219874869797357 -5.7238841393935749e-16 0.33018580595304797 1;
	setAttr ".gm" -type "matrix" 0.62132063084326494 0 0 0 0 1 0 0 0 0 1.0669107396571254 0
		 0 1.1381617373753339 0 1;
	setAttr -s 11 ".ma";
	setAttr -s 16 ".dpf[0:15]"  0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 
		0.1 0.1 0.1 0.1 0.1 0.1;
	setAttr -s 11 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 11 ".ifcl";
createNode objectSet -n "skinCluster6Set";
	rename -uid "EFE4E38E-4B47-FB06-0258-D7B9B71FCD55";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster6GroupId";
	rename -uid "BD2CC524-4E90-E7B6-4C29-459796FBD932";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster6GroupParts";
	rename -uid "95305325-44FE-223A-0EB7-F6B8DBBFF42D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster7";
	rename -uid "2EA589FF-40FC-89E2-782B-A1AD3F7BECB4";
	setAttr -s 382 ".wl";
	setAttr ".wl[0:381].w"
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1;
	setAttr -s 16 ".pm";
	setAttr ".pm[0]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -1.3984588330628882 -6.2104047818273865e-16 -7.6055523374743248e-32 1;
	setAttr ".pm[1]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -1.9991185193309937 -6.6574235872129692e-16 -8.152992486648451e-32 1;
	setAttr ".pm[2]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -2.5708405017054838 -4.4369775379626566e-16 -5.4337303397546705e-32 1;
	setAttr ".pm[3]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -3.2409506773182675 -2.216531488712344e-16 -2.7144681928608879e-32 1;
	setAttr ".pm[4]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -0.49339682338236934 -2.5736464888173161 -2.5392604592696167e-17 1;
	setAttr ".pm[5]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -1.1675574172478862 -2.5736464888173169 1.1984674519263374e-15 1;
	setAttr ".pm[6]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -1.7453853362232536 -2.5736464888173169 1.4699423398460319e-15 1;
	setAttr ".pm[7]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -0.46912968966234603 -2.5736464888173143 -1.0447882317008309e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -1.1432902835278631 -2.5736464888173103 -4.5140541290332629e-15 1;
	setAttr ".pm[9]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -1.7211182025032306 -2.5736464888173085 -6.5817790247224957e-15 1;
	setAttr ".pm[10]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 1.3984588384628298 -6.6080959716408533e-16 -0.32473948089342858 1;
	setAttr ".pm[11]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 0.59456641023041867 -7.9576494549723366e-16 -0.32473948089342858 1;
	setAttr ".pm[12]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 -0.050219874869797773 -6.5259362956107755e-16 -0.32473948089342858 1;
	setAttr ".pm[13]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 1.39845883846283 -5.8060438154236566e-16 0.33018580595304792 1;
	setAttr ".pm[14]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 0.59456641023041901 -7.1555972987551359e-16 0.33018580595304797 1;
	setAttr ".pm[15]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 -0.050219874869797357 -5.7238841393935749e-16 0.33018580595304797 1;
	setAttr ".gm" -type "matrix" 0.56213523112493435 0 0 0 0 0.56213523112493435 0 0
		 0 0 0.56213523112493435 0 0 3.8310056161373645 0 1;
	setAttr -s 7 ".ma";
	setAttr -s 16 ".dpf[0:15]"  0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 
		0.1 0.1 0.1 0.1 0.1 0.1;
	setAttr -s 7 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 7 ".ifcl";
createNode tweak -n "tweak14";
	rename -uid "C897BE50-4FC2-0B16-9866-4597E0112E81";
createNode objectSet -n "skinCluster7Set";
	rename -uid "C9BADF56-4621-7959-5FED-B2AF0A1F8B8B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster7GroupId";
	rename -uid "27BBA321-4E61-7969-1023-B0A625048D13";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster7GroupParts";
	rename -uid "D058B80A-4250-FAE2-B0D4-BD853602836A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet14";
	rename -uid "9124A0E3-448F-C705-1008-CD92222FD945";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId38";
	rename -uid "3C434C63-4127-90C3-1E52-779C1BEAD3A3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	rename -uid "DACE1AC1-4CEB-7B19-3DAF-80B42C775BD8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster8";
	rename -uid "E30BA67F-44AB-3C08-25A3-6F94349594A4";
	setAttr -s 16 ".wl";
	setAttr ".wl[0:15].w"
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1;
	setAttr -s 16 ".pm";
	setAttr ".pm[0]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -1.3984588330628882 -6.2104047818273865e-16 -7.6055523374743248e-32 1;
	setAttr ".pm[1]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -1.9991185193309937 -6.6574235872129692e-16 -8.152992486648451e-32 1;
	setAttr ".pm[2]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -2.5708405017054838 -4.4369775379626566e-16 -5.4337303397546705e-32 1;
	setAttr ".pm[3]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -3.2409506773182675 -2.216531488712344e-16 -2.7144681928608879e-32 1;
	setAttr ".pm[4]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -0.49339682338236934 -2.5736464888173161 -2.5392604592696167e-17 1;
	setAttr ".pm[5]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -1.1675574172478862 -2.5736464888173169 1.1984674519263374e-15 1;
	setAttr ".pm[6]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -1.7453853362232536 -2.5736464888173169 1.4699423398460319e-15 1;
	setAttr ".pm[7]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -0.46912968966234603 -2.5736464888173143 -1.0447882317008309e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -1.1432902835278631 -2.5736464888173103 -4.5140541290332629e-15 1;
	setAttr ".pm[9]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -1.7211182025032306 -2.5736464888173085 -6.5817790247224957e-15 1;
	setAttr ".pm[10]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 1.3984588384628298 -6.6080959716408533e-16 -0.32473948089342858 1;
	setAttr ".pm[11]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 0.59456641023041867 -7.9576494549723366e-16 -0.32473948089342858 1;
	setAttr ".pm[12]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 -0.050219874869797773 -6.5259362956107755e-16 -0.32473948089342858 1;
	setAttr ".pm[13]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 1.39845883846283 -5.8060438154236566e-16 0.33018580595304792 1;
	setAttr ".pm[14]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 0.59456641023041901 -7.1555972987551359e-16 0.33018580595304797 1;
	setAttr ".pm[15]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 -0.050219874869797357 -5.7238841393935749e-16 0.33018580595304797 1;
	setAttr ".gm" -type "matrix" 0.65149809331140052 0 0 0 0 1 0 0 0 0 0.65149809331140052 0
		 0 3.82324324266976 0 1;
	setAttr -s 6 ".ma";
	setAttr -s 16 ".dpf[0:15]"  0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 
		0.1 0.1 0.1 0.1 0.1 0.1;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
createNode objectSet -n "skinCluster8Set";
	rename -uid "4E282C74-4995-1EBB-6456-A2A3158E66D1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster8GroupId";
	rename -uid "3E87D2B4-434D-9E91-3AC9-E1A586FC7598";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster8GroupParts";
	rename -uid "697308F6-413D-42F6-21DD-C38FD96B3BF7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster9";
	rename -uid "4693ACF3-47E7-5C80-1FBC-41B9379380E4";
	setAttr -s 21 ".wl";
	setAttr ".wl[0:20].w"
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1;
	setAttr -s 16 ".pm";
	setAttr ".pm[0]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -1.3984588330628882 -6.2104047818273865e-16 -7.6055523374743248e-32 1;
	setAttr ".pm[1]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -1.9991185193309937 -6.6574235872129692e-16 -8.152992486648451e-32 1;
	setAttr ".pm[2]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -2.5708405017054838 -4.4369775379626566e-16 -5.4337303397546705e-32 1;
	setAttr ".pm[3]" -type "matrix" -2.2204460492503131e-16 1 1.2246467991473532e-16 -0
		 1 2.2204460492503131e-16 2.7192621468937821e-32 -0 -2.5407181807812022e-33 1.2246467991473532e-16 -1 0
		 -3.2409506773182675 -2.216531488712344e-16 -2.7144681928608879e-32 1;
	setAttr ".pm[4]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -0.49339682338236934 -2.5736464888173161 -2.5392604592696167e-17 1;
	setAttr ".pm[5]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -1.1675574172478862 -2.5736464888173169 1.1984674519263374e-15 1;
	setAttr ".pm[6]" -type "matrix" 1.2246467991473532e-16 -1.3596310734468911e-31 1 -0
		 1.1102230246251565e-15 1 2.8463875056597847e-46 0 -1 1.1102230246251565e-15 1.2246467991473507e-16 -0
		 -1.7453853362232536 -2.5736464888173169 1.4699423398460319e-15 1;
	setAttr ".pm[7]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -0.46912968966234603 -2.5736464888173143 -1.0447882317008309e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -1.1432902835278631 -2.5736464888173103 -4.5140541290332629e-15 1;
	setAttr ".pm[9]" -type "matrix" -1.2246467991473613e-16 -1.6653345369377289e-16 -1 -0
		 4.8849813083506888e-15 1 -1.1102230246251538e-16 -0 1 -4.8849813083506888e-15 -6.6953528683478036e-17 -0
		 -1.7211182025032306 -2.5736464888173085 -6.5817790247224957e-15 1;
	setAttr ".pm[10]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 1.3984588384628298 -6.6080959716408533e-16 -0.32473948089342858 1;
	setAttr ".pm[11]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 0.59456641023041867 -7.9576494549723366e-16 -0.32473948089342858 1;
	setAttr ".pm[12]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 -0.050219874869797773 -6.5259362956107755e-16 -0.32473948089342858 1;
	setAttr ".pm[13]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 1.39845883846283 -5.8060438154236566e-16 0.33018580595304792 1;
	setAttr ".pm[14]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 0.59456641023041901 -7.1555972987551359e-16 0.33018580595304797 1;
	setAttr ".pm[15]" -type "matrix" 2.2204460492503128e-16 1 -1.2246467991473535e-16 -0
		 -1 2.2204460492503131e-16 1.224646799147353e-16 0 1.2246467991473532e-16 1.2246467991473532e-16 1 -0
		 -0.050219874869797357 -5.7238841393935749e-16 0.33018580595304797 1;
	setAttr ".gm" -type "matrix" 0.42485385950274585 0 0 0 0 0.34483203663231327 0 0
		 0 0 0.42485385950274585 0 0 3.7749167834086084 0 1;
	setAttr -s 7 ".ma";
	setAttr -s 16 ".dpf[0:15]"  0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 
		0.1 0.1 0.1 0.1 0.1 0.1;
	setAttr -s 7 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 7 ".ifcl";
createNode tweak -n "tweak15";
	rename -uid "61DD0C83-40D5-0EAD-CFDE-ED98F37813AB";
createNode objectSet -n "skinCluster9Set";
	rename -uid "7B9376A9-4404-EAF7-69DC-9FBC4934D42D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster9GroupId";
	rename -uid "16F386E5-44E3-A869-9F01-CAB30BF9964B";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster9GroupParts";
	rename -uid "3026E3B7-46F3-4F72-6676-C3B9AAEE9607";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet15";
	rename -uid "8C6EEC33-4061-AB31-13F0-2A96451B64FC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId40";
	rename -uid "62FDAC2C-4EDC-EB0B-0D5D-DBA8CC7A18D3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "C6FEA481-40E9-3C01-424C-98824AC035AB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode animCurveTU -n "Base_visibility";
	rename -uid "F8EB6F20-48F5-FBC9-E37E-7A956C69C3EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "Shirt_01_visibility";
	rename -uid "35E397DB-482E-947B-C960-46A9AB05B692";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "Shirt_02_visibility";
	rename -uid "503B572A-45A9-A24B-1075-3391E4DEAC7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "Shirt_03_visibility";
	rename -uid "640FF83A-4E4D-C80B-F61B-258C747CA30A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "Pants_01_visibility";
	rename -uid "A7523D06-4901-F9C0-8860-83A8637F3540";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "Pants_02_visibility";
	rename -uid "33C4A671-4899-B92A-3005-6F8F2B6359DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "HeadPiece_01_visibility";
	rename -uid "7C47961A-45AD-95A4-E8CC-378E435F3338";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "HeadPiece_02_visibility";
	rename -uid "042299C8-40B6-9F33-8650-628B612CC053";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "HeadPiece_03_visibility";
	rename -uid "92DB5112-4F19-E3FA-9150-E4A1573FB2E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "Chest_01_Jnt_visibility";
	rename -uid "EBC3B558-4E08-308D-61E7-92A7AB8F96EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTL -n "Chest_01_Jnt_translateX";
	rename -uid "BADFBA1D-4957-62D5-F1B8-00BA8FA8FB2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 3.1052023909136932e-16 2 3.1052023909136932e-16
		 3 3.1052023909136932e-16 4 3.1052023909136932e-16 5 3.1052023909136932e-16 6 3.1052023909136932e-16
		 7 3.1052023909136932e-16 8 3.1052023909136932e-16 9 3.1052023909136932e-16 10 3.1052023909136932e-16
		 11 3.1052023909136932e-16 12 3.1052023909136932e-16 13 3.1052023909136932e-16 14 3.1052023909136932e-16
		 15 3.1052023909136932e-16 16 3.1052023909136932e-16 17 3.1052023909136932e-16 18 3.1052023909136932e-16
		 19 3.1052023909136932e-16 20 3.1052023909136932e-16 21 3.1052023909136932e-16 22 3.1052023909136932e-16
		 23 3.1052023909136932e-16 24 3.1052023909136932e-16 25 3.1052023909136932e-16 26 3.1052023909136932e-16
		 27 3.1052023909136932e-16 28 3.1052023909136932e-16 29 3.1052023909136932e-16 30 3.1052023909136932e-16
		 31 3.1052023909136932e-16 32 3.1052023909136932e-16 33 3.1052023909136932e-16 34 3.1052023909136932e-16
		 35 3.1052023909136932e-16 36 3.1052023909136932e-16 37 3.1052023909136932e-16 38 3.1052023909136932e-16
		 39 3.1052023909136932e-16 40 3.1052023909136932e-16;
createNode animCurveTL -n "Chest_01_Jnt_translateY";
	rename -uid "17F7DC29-454E-7440-5E6F-CAB322319706";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1.3219058361367888 2 1.3266991597309041
		 3 1.3395452669631334 4 1.358143362508301 5 1.3801926510412317 6 1.4033923372367503
		 7 1.4254416257696809 8 1.4440397213148486 9 1.4568858285470778 10 1.4616791521411931
		 11 1.4577654992930698 12 1.4471427272767352 13 1.4314881158842419 14 1.4124789449076429
		 15 1.391792494138991 16 1.3711060433703393 17 1.3520968723937401 18 1.336442261001247
		 19 1.3258194889849122 20 1.3219058361367888 21 1.3266991597309041 22 1.3395452669631334
		 23 1.358143362508301 24 1.3801926510412317 25 1.4033923372367503 26 1.4254416257696809
		 27 1.4440397213148486 28 1.4568858285470778 29 1.4616791521411931 30 1.4584237255475518
		 31 1.4494975558553096 32 1.436160808197489 33 1.4196736477071121 34 1.4012962395172017
		 35 1.3822887487607802 36 1.3639113405708698 37 1.3474241800804929 38 1.3340874324226724
		 39 1.3251612627304301 40 1.3219058361367888;
createNode animCurveTL -n "Chest_01_Jnt_translateZ";
	rename -uid "FFFA09DD-42BC-D652-A749-A0BEA769A051";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTA -n "Chest_01_Jnt_rotateX";
	rename -uid "E609F16F-4271-951E-533D-61BAAC3321CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTA -n "Chest_01_Jnt_rotateY";
	rename -uid "BFCB8498-4238-A3AB-4913-ABA26EA284E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTA -n "Chest_01_Jnt_rotateZ";
	rename -uid "081E1DAB-433B-5DCB-6C54-7FA23045EA1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTU -n "Chest_01_Jnt_scaleX";
	rename -uid "94F8CFA9-4818-F21F-F019-D5B68B03F81E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "Chest_01_Jnt_scaleY";
	rename -uid "FA9D74E6-40F1-D07B-5862-DCACCCAFCFE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "Chest_01_Jnt_scaleZ";
	rename -uid "8E9BAF82-4C03-2661-E46B-8EA5E63A5CA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "Chest_02_Jnt_visibility";
	rename -uid "5A9DA75D-48B2-A2C7-1D61-3EA065B45F03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTL -n "Chest_02_Jnt_translateX";
	rename -uid "E8B728BC-43FE-8F80-E3C3-2595018C11C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.60065968626810551 2 0.60065968626810551
		 3 0.60065968626810551 4 0.60065968626810551 5 0.60065968626810551 6 0.60065968626810529
		 7 0.60065968626810551 8 0.60065968626810506 9 0.60065968626810573 10 0.60065968626810573
		 11 0.60065968626810529 12 0.60065968626810573 13 0.60065968626810551 14 0.60065968626810573
		 15 0.60065968626810551 16 0.60065968626810551 17 0.60065968626810551 18 0.60065968626810551
		 19 0.60065968626810551 20 0.60065968626810551 21 0.60065968626810551 22 0.60065968626810551
		 23 0.60065968626810551 24 0.60065968626810551 25 0.60065968626810529 26 0.60065968626810551
		 27 0.60065968626810506 28 0.60065968626810573 29 0.60065968626810573 30 0.60065968626810551
		 31 0.60065968626810551 32 0.60065968626810529 33 0.60065968626810506 34 0.60065968626810506
		 35 0.60065968626810551 36 0.60065968626810551 37 0.60065968626810551 38 0.60065968626810551
		 39 0.60065968626810551 40 0.60065968626810551;
createNode animCurveTL -n "Chest_02_Jnt_translateY";
	rename -uid "CDFC3615-4D04-572F-A745-959DBB6CD686";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 4.4701880538558272e-17 2 4.4701880538558272e-17
		 3 4.4701880538558272e-17 4 4.4701880538558173e-17 5 4.4701880538558173e-17 6 4.4701880538558173e-17
		 7 4.4701880538558173e-17 8 4.4701880538558173e-17 9 4.4701880538558272e-17 10 4.4701880538558272e-17
		 11 4.4701880538558173e-17 12 4.4701880538558272e-17 13 4.4701880538558173e-17 14 4.4701880538558272e-17
		 15 4.4701880538558173e-17 16 4.4701880538558272e-17 17 4.4701880538558173e-17 18 4.4701880538558272e-17
		 19 4.4701880538558173e-17 20 4.4701880538558272e-17 21 4.4701880538558272e-17 22 4.4701880538558272e-17
		 23 4.4701880538558173e-17 24 4.4701880538558173e-17 25 4.4701880538558173e-17 26 4.4701880538558173e-17
		 27 4.4701880538558173e-17 28 4.4701880538558272e-17 29 4.4701880538558272e-17 30 4.4701880538558173e-17
		 31 4.4701880538558173e-17 32 4.4701880538558173e-17 33 4.4701880538558173e-17 34 4.4701880538558173e-17
		 35 4.4701880538558272e-17 36 4.4701880538558272e-17 37 4.4701880538558173e-17 38 4.4701880538558173e-17
		 39 4.4701880538558173e-17 40 4.4701880538558272e-17;
createNode animCurveTL -n "Chest_02_Jnt_translateZ";
	rename -uid "64F4B896-405D-6B88-D850-5CA048A5B4A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 5.4744014917412512e-33 2 5.4744014917412621e-33
		 3 5.4744014917412621e-33 4 5.4744014917412512e-33 5 5.4744014917412621e-33 6 5.4744014917412512e-33
		 7 5.4744014917412512e-33 8 5.4744014917412512e-33 9 5.4744014917412621e-33 10 5.4744014917412621e-33
		 11 5.4744014917412512e-33 12 5.4744014917412621e-33 13 5.4744014917412621e-33 14 5.4744014917412621e-33
		 15 5.4744014917412512e-33 16 5.4744014917412621e-33 17 5.4744014917412621e-33 18 5.4744014917412621e-33
		 19 5.4744014917412621e-33 20 5.4744014917412512e-33 21 5.4744014917412621e-33 22 5.4744014917412621e-33
		 23 5.4744014917412512e-33 24 5.4744014917412621e-33 25 5.4744014917412512e-33 26 5.4744014917412512e-33
		 27 5.4744014917412512e-33 28 5.4744014917412621e-33 29 5.4744014917412621e-33 30 5.4744014917412621e-33
		 31 5.4744014917412512e-33 32 5.4744014917412512e-33 33 5.4744014917412402e-33 34 5.4744014917412512e-33
		 35 5.4744014917412512e-33 36 5.4744014917412621e-33 37 5.4744014917412621e-33 38 5.4744014917412512e-33
		 39 5.4744014917412621e-33 40 5.4744014917412512e-33;
createNode animCurveTA -n "Chest_02_Jnt_rotateX";
	rename -uid "90F00202-4FCE-3FF9-431D-6E90F218471B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -7.0167092985348752e-15 2 -7.0167092985348752e-15
		 3 -7.0167092985348752e-15 4 -7.0167092985348752e-15 5 -7.0167092985348752e-15 6 -7.0167092985348752e-15
		 7 -7.0167092985348752e-15 8 -7.0167092985348752e-15 9 -7.0167092985348752e-15 10 -7.0167092985348752e-15
		 11 -7.0167092985348752e-15 12 -7.0167092985348752e-15 13 -7.0167092985348752e-15
		 14 -7.0167092985348752e-15 15 -7.0167092985348752e-15 16 -7.0167092985348752e-15
		 17 -7.0167092985348752e-15 18 -7.0167092985348752e-15 19 -7.0167092985348752e-15
		 20 -7.0167092985348752e-15 21 -7.0167092985348752e-15 22 -7.0167092985348752e-15
		 23 -7.0167092985348752e-15 24 -7.0167092985348752e-15 25 -7.0167092985348752e-15
		 26 -7.0167092985348752e-15 27 -7.0167092985348752e-15 28 -7.0167092985348752e-15
		 29 -7.0167092985348752e-15 30 -7.0167092985348752e-15 31 -7.0167092985348752e-15
		 32 -7.0167092985348752e-15 33 -7.0167092985348752e-15 34 -7.0167092985348752e-15
		 35 -7.0167092985348752e-15 36 -7.0167092985348752e-15 37 -7.0167092985348752e-15
		 38 -7.0167092985348752e-15 39 -7.0167092985348752e-15 40 -7.0167092985348752e-15;
createNode animCurveTA -n "Chest_02_Jnt_rotateY";
	rename -uid "F639C049-4EC6-D36F-7031-178EA26049F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -7.0167092985348752e-15 2 -7.0167092985348752e-15
		 3 -7.0167092985348752e-15 4 -7.0167092985348752e-15 5 -7.0167092985348752e-15 6 -7.0167092985348752e-15
		 7 -7.0167092985348752e-15 8 -7.0167092985348752e-15 9 -7.0167092985348752e-15 10 -7.0167092985348752e-15
		 11 -7.0167092985348752e-15 12 -7.0167092985348752e-15 13 -7.0167092985348752e-15
		 14 -7.0167092985348752e-15 15 -7.0167092985348752e-15 16 -7.0167092985348752e-15
		 17 -7.0167092985348752e-15 18 -7.0167092985348752e-15 19 -7.0167092985348752e-15
		 20 -7.0167092985348752e-15 21 -7.0167092985348752e-15 22 -7.0167092985348752e-15
		 23 -7.0167092985348752e-15 24 -7.0167092985348752e-15 25 -7.0167092985348752e-15
		 26 -7.0167092985348752e-15 27 -7.0167092985348752e-15 28 -7.0167092985348752e-15
		 29 -7.0167092985348752e-15 30 -7.0167092985348752e-15 31 -7.0167092985348752e-15
		 32 -7.0167092985348752e-15 33 -7.0167092985348752e-15 34 -7.0167092985348752e-15
		 35 -7.0167092985348752e-15 36 -7.0167092985348752e-15 37 -7.0167092985348752e-15
		 38 -7.0167092985348752e-15 39 -7.0167092985348752e-15 40 -7.0167092985348752e-15;
createNode animCurveTA -n "Chest_02_Jnt_rotateZ";
	rename -uid "90C2119A-43EB-ED45-5EAB-3DA258D6C374";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 4.2964952914991011e-31 2 4.2964952914991011e-31
		 3 4.2964952914991011e-31 4 4.2964952914991011e-31 5 4.2964952914991011e-31 6 4.2964952914991011e-31
		 7 4.2964952914991011e-31 8 4.2964952914991011e-31 9 4.2964952914991011e-31 10 4.2964952914991011e-31
		 11 4.2964952914991011e-31 12 4.2964952914991011e-31 13 4.2964952914991011e-31 14 4.2964952914991011e-31
		 15 4.2964952914991011e-31 16 4.2964952914991011e-31 17 4.2964952914991011e-31 18 4.2964952914991011e-31
		 19 4.2964952914991011e-31 20 4.2964952914991011e-31 21 4.2964952914991011e-31 22 4.2964952914991011e-31
		 23 4.2964952914991011e-31 24 4.2964952914991011e-31 25 4.2964952914991011e-31 26 4.2964952914991011e-31
		 27 4.2964952914991011e-31 28 4.2964952914991011e-31 29 4.2964952914991011e-31 30 4.2964952914991011e-31
		 31 4.2964952914991011e-31 32 4.2964952914991011e-31 33 4.2964952914991011e-31 34 4.2964952914991011e-31
		 35 4.2964952914991011e-31 36 4.2964952914991011e-31 37 4.2964952914991011e-31 38 4.2964952914991011e-31
		 39 4.2964952914991011e-31 40 4.2964952914991011e-31;
createNode animCurveTU -n "Chest_02_Jnt_scaleX";
	rename -uid "0718B3CD-4E3B-3549-D4F2-4DA21B3F478E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "Chest_02_Jnt_scaleY";
	rename -uid "313DD477-47B7-A140-D27C-AF876354CDE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "Chest_02_Jnt_scaleZ";
	rename -uid "C29E2025-42E3-A303-D77F-37AA356A2341";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "Chest_03_Jnt_visibility";
	rename -uid "E32CC3EC-42C2-FC8C-0D58-A2A13CBB7F9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTL -n "Chest_03_Jnt_translateX";
	rename -uid "423BAD44-4685-38C4-AACD-68A30A03B12F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.57172198237449012 2 0.57172198237449012
		 3 0.5717219823744899 4 0.57172198237449035 5 0.57172198237449012 6 0.57172198237449035
		 7 0.57172198237449035 8 0.57172198237449035 9 0.5717219823744899 10 0.5717219823744899
		 11 0.57172198237449035 12 0.5717219823744899 13 0.57172198237449035 14 0.5717219823744899
		 15 0.57172198237449035 16 0.5717219823744899 17 0.57172198237449035 18 0.5717219823744899
		 19 0.57172198237449012 20 0.57172198237449012 21 0.57172198237449012 22 0.5717219823744899
		 23 0.57172198237449035 24 0.57172198237449012 25 0.57172198237449035 26 0.57172198237449035
		 27 0.57172198237449035 28 0.5717219823744899 29 0.5717219823744899 30 0.57172198237449035
		 31 0.57172198237449035 32 0.57172198237449035 33 0.57172198237449035 34 0.57172198237449035
		 35 0.5717219823744899 36 0.5717219823744899 37 0.57172198237449012 38 0.57172198237449035
		 39 0.57172198237449035 40 0.57172198237449012;
createNode animCurveTL -n "Chest_03_Jnt_translateY";
	rename -uid "4230E5B3-423D-C378-7D2E-EAA6A4BD3D09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -2.2204460492503126e-16 2 -2.2204460492503126e-16
		 3 -2.2204460492503126e-16 4 -2.2204460492503106e-16 5 -2.2204460492503116e-16 6 -2.2204460492503121e-16
		 7 -2.2204460492503111e-16 8 -2.2204460492503131e-16 9 -2.2204460492503121e-16 10 -2.2204460492503121e-16
		 11 -2.2204460492503121e-16 12 -2.2204460492503121e-16 13 -2.2204460492503111e-16
		 14 -2.2204460492503121e-16 15 -2.2204460492503106e-16 16 -2.2204460492503126e-16
		 17 -2.2204460492503106e-16 18 -2.2204460492503126e-16 19 -2.2204460492503116e-16
		 20 -2.2204460492503126e-16 21 -2.2204460492503126e-16 22 -2.2204460492503126e-16
		 23 -2.2204460492503106e-16 24 -2.2204460492503116e-16 25 -2.2204460492503121e-16
		 26 -2.2204460492503111e-16 27 -2.2204460492503131e-16 28 -2.2204460492503121e-16
		 29 -2.2204460492503121e-16 30 -2.2204460492503111e-16 31 -2.2204460492503111e-16
		 32 -2.2204460492503121e-16 33 -2.2204460492503131e-16 34 -2.2204460492503131e-16
		 35 -2.2204460492503126e-16 36 -2.2204460492503126e-16 37 -2.2204460492503116e-16
		 38 -2.2204460492503106e-16 39 -2.2204460492503106e-16 40 -2.2204460492503126e-16;
createNode animCurveTL -n "Chest_03_Jnt_translateZ";
	rename -uid "C39C253C-42CD-253C-DB4B-13A296201B88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -2.7192621468937794e-32 2 -2.7192621468937816e-32
		 3 -2.7192621468937827e-32 4 -2.7192621468937794e-32 5 -2.7192621468937805e-32 6 -2.7192621468937805e-32
		 7 -2.7192621468937783e-32 8 -2.7192621468937816e-32 9 -2.7192621468937805e-32 10 -2.7192621468937816e-32
		 11 -2.7192621468937794e-32 12 -2.7192621468937805e-32 13 -2.7192621468937805e-32
		 14 -2.7192621468937805e-32 15 -2.7192621468937783e-32 16 -2.7192621468937827e-32
		 17 -2.7192621468937816e-32 18 -2.7192621468937816e-32 19 -2.7192621468937827e-32
		 20 -2.7192621468937794e-32 21 -2.7192621468937816e-32 22 -2.7192621468937827e-32
		 23 -2.7192621468937794e-32 24 -2.7192621468937805e-32 25 -2.7192621468937805e-32
		 26 -2.7192621468937783e-32 27 -2.7192621468937816e-32 28 -2.7192621468937805e-32
		 29 -2.7192621468937816e-32 30 -2.7192621468937794e-32 31 -2.7192621468937783e-32
		 32 -2.7192621468937805e-32 33 -2.7192621468937794e-32 34 -2.7192621468937805e-32
		 35 -2.7192621468937794e-32 36 -2.7192621468937827e-32 37 -2.7192621468937827e-32
		 38 -2.7192621468937794e-32 39 -2.7192621468937805e-32 40 -2.7192621468937794e-32;
createNode animCurveTA -n "Chest_03_Jnt_rotateX";
	rename -uid "A2F8422C-41B9-EB92-60A3-5AAD5F79C870";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -7.0167092985348752e-15 2 -7.0167092985348752e-15
		 3 -7.0167092985348752e-15 4 -7.0167092985348752e-15 5 -7.0167092985348752e-15 6 -7.0167092985348752e-15
		 7 -7.0167092985348752e-15 8 -7.0167092985348752e-15 9 -7.0167092985348752e-15 10 -7.0167092985348752e-15
		 11 -7.0167092985348752e-15 12 -7.0167092985348752e-15 13 -7.0167092985348752e-15
		 14 -7.0167092985348752e-15 15 -7.0167092985348752e-15 16 -7.0167092985348752e-15
		 17 -7.0167092985348752e-15 18 -7.0167092985348752e-15 19 -7.0167092985348752e-15
		 20 -7.0167092985348752e-15 21 -7.0167092985348752e-15 22 -7.0167092985348752e-15
		 23 -7.0167092985348752e-15 24 -7.0167092985348752e-15 25 -7.0167092985348752e-15
		 26 -7.0167092985348752e-15 27 -7.0167092985348752e-15 28 -7.0167092985348752e-15
		 29 -7.0167092985348752e-15 30 -7.0167092985348752e-15 31 -7.0167092985348752e-15
		 32 -7.0167092985348752e-15 33 -7.0167092985348752e-15 34 -7.0167092985348752e-15
		 35 -7.0167092985348752e-15 36 -7.0167092985348752e-15 37 -7.0167092985348752e-15
		 38 -7.0167092985348752e-15 39 -7.0167092985348752e-15 40 -7.0167092985348752e-15;
createNode animCurveTA -n "Chest_03_Jnt_rotateY";
	rename -uid "67F63798-4F1C-C491-0557-88B24FB3D3CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -7.0167092985348752e-15 2 -7.0167092985348752e-15
		 3 -7.0167092985348752e-15 4 -7.0167092985348752e-15 5 -7.0167092985348752e-15 6 -7.0167092985348752e-15
		 7 -7.0167092985348752e-15 8 -7.0167092985348752e-15 9 -7.0167092985348752e-15 10 -7.0167092985348752e-15
		 11 -7.0167092985348752e-15 12 -7.0167092985348752e-15 13 -7.0167092985348752e-15
		 14 -7.0167092985348752e-15 15 -7.0167092985348752e-15 16 -7.0167092985348752e-15
		 17 -7.0167092985348752e-15 18 -7.0167092985348752e-15 19 -7.0167092985348752e-15
		 20 -7.0167092985348752e-15 21 -7.0167092985348752e-15 22 -7.0167092985348752e-15
		 23 -7.0167092985348752e-15 24 -7.0167092985348752e-15 25 -7.0167092985348752e-15
		 26 -7.0167092985348752e-15 27 -7.0167092985348752e-15 28 -7.0167092985348752e-15
		 29 -7.0167092985348752e-15 30 -7.0167092985348752e-15 31 -7.0167092985348752e-15
		 32 -7.0167092985348752e-15 33 -7.0167092985348752e-15 34 -7.0167092985348752e-15
		 35 -7.0167092985348752e-15 36 -7.0167092985348752e-15 37 -7.0167092985348752e-15
		 38 -7.0167092985348752e-15 39 -7.0167092985348752e-15 40 -7.0167092985348752e-15;
createNode animCurveTA -n "Chest_03_Jnt_rotateZ";
	rename -uid "F1DD4D42-4783-65A0-75F9-03A732CDBEAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 4.2964952914991011e-31 2 4.2964952914991011e-31
		 3 4.2964952914991011e-31 4 4.2964952914991011e-31 5 4.2964952914991011e-31 6 4.2964952914991011e-31
		 7 4.2964952914991011e-31 8 4.2964952914991011e-31 9 4.2964952914991011e-31 10 4.2964952914991011e-31
		 11 4.2964952914991011e-31 12 4.2964952914991011e-31 13 4.2964952914991011e-31 14 4.2964952914991011e-31
		 15 4.2964952914991011e-31 16 4.2964952914991011e-31 17 4.2964952914991011e-31 18 4.2964952914991011e-31
		 19 4.2964952914991011e-31 20 4.2964952914991011e-31 21 4.2964952914991011e-31 22 4.2964952914991011e-31
		 23 4.2964952914991011e-31 24 4.2964952914991011e-31 25 4.2964952914991011e-31 26 4.2964952914991011e-31
		 27 4.2964952914991011e-31 28 4.2964952914991011e-31 29 4.2964952914991011e-31 30 4.2964952914991011e-31
		 31 4.2964952914991011e-31 32 4.2964952914991011e-31 33 4.2964952914991011e-31 34 4.2964952914991011e-31
		 35 4.2964952914991011e-31 36 4.2964952914991011e-31 37 4.2964952914991011e-31 38 4.2964952914991011e-31
		 39 4.2964952914991011e-31 40 4.2964952914991011e-31;
createNode animCurveTU -n "Chest_03_Jnt_scaleX";
	rename -uid "8EF6E4F6-4EC5-CE8F-656B-E4871F2FA4DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "Chest_03_Jnt_scaleY";
	rename -uid "D45CB0D7-4A0D-3599-035D-5CAF38C44839";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "Chest_03_Jnt_scaleZ";
	rename -uid "ADF289AF-475D-CC69-9462-BCA0CFA1E468";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "Chest_04_Jnt_visibility";
	rename -uid "5CF65623-458B-31DD-3DDF-C196DEC58FAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTL -n "Chest_04_Jnt_translateX";
	rename -uid "B7737619-4CF3-D990-EA67-4CB05DE7C5B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.67011017561278363 2 0.67011017561278363
		 3 0.67011017561278363 4 0.67011017561278363 5 0.67011017561278363 6 0.67011017561278363
		 7 0.67011017561278363 8 0.67011017561278363 9 0.67011017561278363 10 0.67011017561278363
		 11 0.67011017561278363 12 0.67011017561278363 13 0.67011017561278363 14 0.67011017561278363
		 15 0.67011017561278363 16 0.67011017561278363 17 0.67011017561278363 18 0.67011017561278363
		 19 0.67011017561278363 20 0.67011017561278363 21 0.67011017561278363 22 0.67011017561278363
		 23 0.67011017561278363 24 0.67011017561278363 25 0.67011017561278363 26 0.67011017561278363
		 27 0.67011017561278363 28 0.67011017561278363 29 0.67011017561278363 30 0.67011017561278363
		 31 0.67011017561278363 32 0.67011017561278363 33 0.67011017561278363 34 0.67011017561278363
		 35 0.67011017561278363 36 0.67011017561278363 37 0.67011017561278363 38 0.67011017561278363
		 39 0.67011017561278363 40 0.67011017561278363;
createNode animCurveTL -n "Chest_04_Jnt_translateY";
	rename -uid "C1676975-4E6B-46A3-490C-169645ED8A0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -2.2204460492503126e-16 2 -2.2204460492503126e-16
		 3 -2.2204460492503131e-16 4 -2.2204460492503131e-16 5 -2.2204460492503126e-16 6 -2.2204460492503121e-16
		 7 -2.2204460492503121e-16 8 -2.2204460492503121e-16 9 -2.2204460492503131e-16 10 -2.2204460492503131e-16
		 11 -2.2204460492503121e-16 12 -2.2204460492503131e-16 13 -2.2204460492503121e-16
		 14 -2.2204460492503131e-16 15 -2.2204460492503131e-16 16 -2.2204460492503131e-16
		 17 -2.2204460492503131e-16 18 -2.2204460492503131e-16 19 -2.2204460492503126e-16
		 20 -2.2204460492503126e-16 21 -2.2204460492503126e-16 22 -2.2204460492503131e-16
		 23 -2.2204460492503131e-16 24 -2.2204460492503126e-16 25 -2.2204460492503121e-16
		 26 -2.2204460492503121e-16 27 -2.2204460492503121e-16 28 -2.2204460492503131e-16
		 29 -2.2204460492503131e-16 30 -2.2204460492503121e-16 31 -2.2204460492503121e-16
		 32 -2.2204460492503121e-16 33 -2.2204460492503121e-16 34 -2.2204460492503121e-16
		 35 -2.2204460492503131e-16 36 -2.2204460492503131e-16 37 -2.2204460492503126e-16
		 38 -2.2204460492503131e-16 39 -2.2204460492503131e-16 40 -2.2204460492503126e-16;
createNode animCurveTL -n "Chest_04_Jnt_translateZ";
	rename -uid "13F00CAF-4382-24BA-6DEB-C7B45CBB4032";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -2.7192621468937821e-32 2 -2.7192621468937799e-32
		 3 -2.7192621468937799e-32 4 -2.719262146893781e-32 5 -2.7192621468937832e-32 6 -2.719262146893781e-32
		 7 -2.7192621468937832e-32 8 -2.7192621468937799e-32 9 -2.7192621468937832e-32 10 -2.7192621468937799e-32
		 11 -2.7192621468937832e-32 12 -2.7192621468937832e-32 13 -2.719262146893781e-32 14 -2.7192621468937821e-32
		 15 -2.7192621468937832e-32 16 -2.7192621468937799e-32 17 -2.7192621468937799e-32
		 18 -2.719262146893781e-32 19 -2.7192621468937799e-32 20 -2.7192621468937821e-32 21 -2.7192621468937799e-32
		 22 -2.7192621468937799e-32 23 -2.719262146893781e-32 24 -2.7192621468937832e-32 25 -2.719262146893781e-32
		 26 -2.7192621468937832e-32 27 -2.7192621468937799e-32 28 -2.7192621468937832e-32
		 29 -2.7192621468937799e-32 30 -2.7192621468937832e-32 31 -2.7192621468937832e-32
		 32 -2.719262146893781e-32 33 -2.7192621468937821e-32 34 -2.719262146893781e-32 35 -2.7192621468937832e-32
		 36 -2.7192621468937799e-32 37 -2.7192621468937799e-32 38 -2.719262146893781e-32 39 -2.719262146893781e-32
		 40 -2.7192621468937821e-32;
createNode animCurveTA -n "Chest_04_Jnt_rotateX";
	rename -uid "5D799D22-4C57-5D8B-2840-A68D21EF2A3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -7.0167092985348752e-15 2 -7.0167092985348752e-15
		 3 -7.0167092985348752e-15 4 -7.0167092985348752e-15 5 -7.0167092985348752e-15 6 -7.0167092985348752e-15
		 7 -7.0167092985348752e-15 8 -7.0167092985348752e-15 9 -7.0167092985348752e-15 10 -7.0167092985348752e-15
		 11 -7.0167092985348752e-15 12 -7.0167092985348752e-15 13 -7.0167092985348752e-15
		 14 -7.0167092985348752e-15 15 -7.0167092985348752e-15 16 -7.0167092985348752e-15
		 17 -7.0167092985348752e-15 18 -7.0167092985348752e-15 19 -7.0167092985348752e-15
		 20 -7.0167092985348752e-15 21 -7.0167092985348752e-15 22 -7.0167092985348752e-15
		 23 -7.0167092985348752e-15 24 -7.0167092985348752e-15 25 -7.0167092985348752e-15
		 26 -7.0167092985348752e-15 27 -7.0167092985348752e-15 28 -7.0167092985348752e-15
		 29 -7.0167092985348752e-15 30 -7.0167092985348752e-15 31 -7.0167092985348752e-15
		 32 -7.0167092985348752e-15 33 -7.0167092985348752e-15 34 -7.0167092985348752e-15
		 35 -7.0167092985348752e-15 36 -7.0167092985348752e-15 37 -7.0167092985348752e-15
		 38 -7.0167092985348752e-15 39 -7.0167092985348752e-15 40 -7.0167092985348752e-15;
createNode animCurveTA -n "Chest_04_Jnt_rotateY";
	rename -uid "428A04AF-471B-09E6-731C-D3AAE470EB2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -7.0167092985348752e-15 2 -7.0167092985348752e-15
		 3 -7.0167092985348752e-15 4 -7.0167092985348752e-15 5 -7.0167092985348752e-15 6 -7.0167092985348752e-15
		 7 -7.0167092985348752e-15 8 -7.0167092985348752e-15 9 -7.0167092985348752e-15 10 -7.0167092985348752e-15
		 11 -7.0167092985348752e-15 12 -7.0167092985348752e-15 13 -7.0167092985348752e-15
		 14 -7.0167092985348752e-15 15 -7.0167092985348752e-15 16 -7.0167092985348752e-15
		 17 -7.0167092985348752e-15 18 -7.0167092985348752e-15 19 -7.0167092985348752e-15
		 20 -7.0167092985348752e-15 21 -7.0167092985348752e-15 22 -7.0167092985348752e-15
		 23 -7.0167092985348752e-15 24 -7.0167092985348752e-15 25 -7.0167092985348752e-15
		 26 -7.0167092985348752e-15 27 -7.0167092985348752e-15 28 -7.0167092985348752e-15
		 29 -7.0167092985348752e-15 30 -7.0167092985348752e-15 31 -7.0167092985348752e-15
		 32 -7.0167092985348752e-15 33 -7.0167092985348752e-15 34 -7.0167092985348752e-15
		 35 -7.0167092985348752e-15 36 -7.0167092985348752e-15 37 -7.0167092985348752e-15
		 38 -7.0167092985348752e-15 39 -7.0167092985348752e-15 40 -7.0167092985348752e-15;
createNode animCurveTA -n "Chest_04_Jnt_rotateZ";
	rename -uid "00945074-461F-C195-DCDE-9BB473FEC16E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 4.2964952914991011e-31 2 4.2964952914991011e-31
		 3 4.2964952914991011e-31 4 4.2964952914991011e-31 5 4.2964952914991011e-31 6 4.2964952914991011e-31
		 7 4.2964952914991011e-31 8 4.2964952914991011e-31 9 4.2964952914991011e-31 10 4.2964952914991011e-31
		 11 4.2964952914991011e-31 12 4.2964952914991011e-31 13 4.2964952914991011e-31 14 4.2964952914991011e-31
		 15 4.2964952914991011e-31 16 4.2964952914991011e-31 17 4.2964952914991011e-31 18 4.2964952914991011e-31
		 19 4.2964952914991011e-31 20 4.2964952914991011e-31 21 4.2964952914991011e-31 22 4.2964952914991011e-31
		 23 4.2964952914991011e-31 24 4.2964952914991011e-31 25 4.2964952914991011e-31 26 4.2964952914991011e-31
		 27 4.2964952914991011e-31 28 4.2964952914991011e-31 29 4.2964952914991011e-31 30 4.2964952914991011e-31
		 31 4.2964952914991011e-31 32 4.2964952914991011e-31 33 4.2964952914991011e-31 34 4.2964952914991011e-31
		 35 4.2964952914991011e-31 36 4.2964952914991011e-31 37 4.2964952914991011e-31 38 4.2964952914991011e-31
		 39 4.2964952914991011e-31 40 4.2964952914991011e-31;
createNode animCurveTU -n "Chest_04_Jnt_scaleX";
	rename -uid "447E83A3-4055-920B-4F35-46A84141C4D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "Chest_04_Jnt_scaleY";
	rename -uid "7634CA66-400F-BD11-5AE2-6983CCF87A91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "Chest_04_Jnt_scaleZ";
	rename -uid "8DAD52EE-4788-66D8-0033-61ADEE022EF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "L_Arm_01_Jnt_visibility";
	rename -uid "65AC0141-4C97-D61A-5279-058E156E3155";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTL -n "L_Arm_01_Jnt_translateX";
	rename -uid "FD722607-4833-8843-F77C-2F9599F8A7AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.0028060177020763355 2 0.0028060181321531985
		 3 0.002806018737508964 4 0.0028060193156966839 5 0.0028060196492480927 6 0.0028060196063561804
		 7 0.002806019212128863 8 0.0028060186408067622 9 0.0028060181375684223 10 0.0028060179300717358
		 11 0.0028060179242714867 12 0.0028060179077815661 13 0.0028060178768005706 14 0.0028060178251450019
		 15 0.0028060177489530602 16 0.0028060176501867318 17 0.0028060175387931707 18 0.0028060174334356702
		 19 0.0028060173608941419 20 0.0028060173545281231 21 0.0028060174632202894 22 0.0028060176636404144
		 23 0.0028060178886990528 24 0.0028060180829236891 25 0.0028060182101046216 26 0.0028060182580893489
		 27 0.0028060182384810339 28 0.0028060181809137497 29 0.0028060181232065773 30 0.0028060180990330252
		 31 0.0028060180955851166 32 0.0028060180839810656 33 0.002806018060899973 34 0.0028060180233047127
		 35 0.002806017970514052 36 0.0028060179054292256 37 0.0028060178348923159 38 0.0028060177691799915
		 39 0.0028060177207143155 40 0.0028060177020763355;
createNode animCurveTL -n "L_Arm_01_Jnt_translateY";
	rename -uid "A92E6D12-4A21-9C69-2DAE-A5A454EC5145";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -1.8705865172859762e-09 2 -1.5490338671963528e-09
		 3 -1.0138875576363448e-09 4 -4.5634393005093786e-10 5 3.942762943172811e-11 6 5.1138888498595481e-10
		 7 1.0390054830720907e-09 8 1.6273690538865429e-09 9 2.1446059504681016e-09 10 2.365491753395997e-09
		 11 2.3432504478185381e-09 12 2.2766898362425247e-09 13 2.165888408911209e-09 14 2.0105143966606033e-09
		 15 1.8099088331018137e-09 16 1.5640378195263189e-09 17 1.2753499769432699e-09 18 9.5110163466087776e-10
		 19 6.0542022120223331e-10 20 2.6028982883315949e-10 21 -1.185427493376167e-10 22 -5.4368541766094538e-10
		 23 -9.6631736785953006e-10 24 -1.357033138800348e-09 25 -1.7043492666949679e-09 26 -2.007137587571061e-09
		 27 -2.2649825977749385e-09 28 -2.4707948085618328e-09 29 -2.6088404390778621e-09
		 30 -2.6589824458359809e-09 31 -2.6381097326793074e-09 32 -2.5814067880093113e-09
		 33 -2.4975222442890848e-09 34 -2.3946813995986849e-09 35 -2.2808359342036624e-09
		 36 -2.1641750132303948e-09 37 -2.0537849999971353e-09 38 -1.960120106082152e-09 39 -1.8949507709000468e-09
		 40 -1.8705865172859762e-09;
createNode animCurveTL -n "L_Arm_01_Jnt_translateZ";
	rename -uid "5EFB8F39-4679-7C35-D72D-4E9CE13BCA12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.4933967681836523 2 0.49339676795346454
		 3 0.49339676763909557 4 0.4933967673520841 5 0.49339676719278047 6 0.49339676721538606
		 7 0.49339676740996746 8 0.49339676770245483 9 0.49339676797243748 10 0.4933967680875328
		 11 0.49339676808945476 12 0.49339676809482602 13 0.49339676810577981 14 0.49339676812579153
		 15 0.49339676815730893 16 0.49339676819999001 17 0.49339676824955353 18 0.49339676829723339
		 19 0.49339676832980922 20 0.49339676833017354 21 0.49339676827285917 22 0.49339676817173039
		 23 0.49339676806254057 24 0.49339676797282639 25 0.49339676791919096 26 0.49339676790617365
		 27 0.49339676792687365 28 0.49339676796544046 29 0.49339676800147259 30 0.49339676801630106
		 31 0.49339676801695331 32 0.4933967680199019 33 0.49339676802738197 34 0.49339676804147642
		 35 0.49339676806304361 36 0.49339676809108385 37 0.49339676812253935 38 0.4933967681525222
		 39 0.49339676817496009 40 0.4933967681836523;
createNode animCurveTA -n "L_Arm_01_Jnt_rotateX";
	rename -uid "60007B2F-4A7C-7BB3-B904-39835DA49871";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -1.2805310845582185e-13 2 -0.19857349789349751
		 3 -0.35500343723243749 4 -0.33127007301437383 5 -0.12705756154876607 6 0.13650120093158755
		 7 0.30078552710736634 8 0.27128000812796099 9 0.10380547857457167 10 9.7230550535677659e-14
		 11 -0.012322445108240909 12 -0.042850872294109915 13 -0.082464873447820636 14 -0.12235298480125047
		 15 -0.1537218396377863 16 -0.16832699226066722 17 -0.15985451640865567 18 -0.12578257440469778
		 19 -0.069200852550296232 20 9.2372750221411116e-14 21 0.077102485637660118 22 0.14294330465625235
		 23 0.17331950115616709 24 0.16314842348885664 25 0.12340767497969556 26 0.073570996527869997
		 27 0.032252028923130997 28 0.0090161136492204388 29 0.0012760169301957803 30 1.113693041437729e-13
		 31 -0.00010969034274891343 32 3.1241346328191516e-05 33 0.0011227099790304125 34 0.0032084677978352558
		 35 0.0054810015748720147 36 0.0067426498245950562 37 0.0061645284748898053 38 0.0039065045000995467
		 39 0.0012414342762968079 40 -1.2805304504886439e-13;
createNode animCurveTA -n "L_Arm_01_Jnt_rotateY";
	rename -uid "8D99C062-4AFC-D60E-B840-BDA8FFD46086";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 23.219997846422796 2 21.406174040623668
		 3 16.531772531556872 4 9.4514543068604624 5 1.0392206927112715 6 -7.8129023030308238
		 7 -16.207710368146955 8 -23.258856340571612 9 -28.104429389860854 10 -29.905673175121251
		 11 -29.449215011076468 12 -28.163691608092385 13 -26.173819861398957 14 -23.604087762628144
		 15 -20.579920213277255 16 -17.22836420059156 17 -13.678270407849991 18 -10.060034419907312
		 19 -6.5050262125578842 20 -3.1448903886555475 21 0.51191013984172262 22 4.8726593012800645
		 23 9.6774558272185338 24 14.664757666429297 25 19.57364235683114 26 24.146259297716608
		 27 28.129636444797743 28 31.276196571514586 29 33.342470390384925 30 34.08571577092674
		 31 33.783217204247578 32 32.961576991212574 33 31.749256533746902 34 30.274882219325292
		 35 28.667742584379376 36 27.057994082610882 37 25.576622531153529 38 24.355232411437235
		 39 23.525736995622534 40 23.219997846422796;
createNode animCurveTA -n "L_Arm_01_Jnt_rotateZ";
	rename -uid "98E6EA22-4C55-76D8-67BB-049490CB74A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -67.140420728212888 2 -67.762128873561693
		 3 -68.610735304680688 4 -69.348138378103215 5 -69.733233183442351 6 -69.657016858016334
		 7 -69.133172614641097 8 -68.310412751339641 9 -67.501300353554754 10 -67.140420728213229
		 11 -67.14714217287505 12 -67.167408567097169 13 -67.194216595977323 14 -67.216198669118583
		 15 -67.223020874081115 16 -67.209297103627989 17 -67.177231723607647 18 -67.138399645802807
		 19 -67.114971407797924 20 -67.140420728213257 21 -67.270703164226262 22 -67.46876551365051
		 23 -67.653576213422241 24 -67.769678512596698 25 -67.788267104552844 26 -67.706770468686301
		 27 -67.548238815523334 28 -67.359269875175585 29 -67.202685805238076 30 -67.14042072821313
		 31 -67.151165489014602 32 -67.176992329157201 33 -67.206333825009935 34 -67.228371203552427
		 35 -67.235913552865014 36 -67.226800861462536 37 -67.204091246329682 38 -67.175266284543795
		 39 -67.150562987853192 40 -67.140420728212888;
createNode animCurveTU -n "L_Arm_01_Jnt_scaleX";
	rename -uid "B0553E65-42CE-EC34-4C1C-F79A10953901";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "L_Arm_01_Jnt_scaleY";
	rename -uid "77D75D24-49D5-4D65-B277-0B8DE7023938";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "L_Arm_01_Jnt_scaleZ";
	rename -uid "779123BA-4720-3DDE-6193-CEA45A8B4BB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "L_Arm_02_Jnt_visibility";
	rename -uid "F1F191E6-46CA-AED6-A625-56B7D1CC0E07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTL -n "L_Arm_02_Jnt_translateX";
	rename -uid "805B2EDE-48B3-D5B8-E34A-A1BC49CC2E1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.67416057170660726 2 0.67416057170660704
		 3 0.67416057170660704 4 0.67416057170660704 5 0.67416057170660704 6 0.67416057170660704
		 7 0.6741605717066077 8 0.67416057170660748 9 0.67416057170660704 10 0.6741605717066077
		 11 0.67416057170660704 12 0.67416057170660726 13 0.67416057170660793 14 0.67416057170660748
		 15 0.67416057170660748 16 0.67416057170660837 17 0.67416057170660704 18 0.67416057170660748
		 19 0.6741605717066077 20 0.67416057170660748 21 0.67416057170660726 22 0.67416057170660726
		 23 0.67416057170660704 24 0.67416057170660748 25 0.67416057170660681 26 0.67416057170660726
		 27 0.67416057170660704 28 0.67416057170660748 29 0.6741605717066077 30 0.67416057170660726
		 31 0.6741605717066077 32 0.67416057170660793 33 0.67416057170660748 34 0.67416057170660681
		 35 0.67416057170660793 36 0.67416057170660793 37 0.67416057170660748 38 0.67416057170660726
		 39 0.6741605717066077 40 0.67416057170660726;
createNode animCurveTL -n "L_Arm_02_Jnt_translateY";
	rename -uid "94F2F57B-4748-EAD2-14D0-AE8B70763CDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1.3322676295501878e-15 2 1.5543122344752192e-15
		 3 2.4424906541753444e-15 4 1.9984014443252818e-15 5 1.9984014443252818e-15 6 1.9984014443252818e-15
		 7 1.9984014443252818e-15 8 1.7763568394002505e-15 9 1.9984014443252818e-15 10 1.5543122344752192e-15
		 11 1.9984014443252818e-15 12 1.7763568394002505e-15 13 1.9984014443252818e-15 14 1.7763568394002505e-15
		 15 1.3322676295501878e-15 16 1.5543122344752192e-15 17 1.9984014443252818e-15 18 1.7763568394002505e-15
		 19 1.5543122344752192e-15 20 1.1102230246251565e-15 21 1.5543122344752192e-15 22 1.7763568394002505e-15
		 23 1.9984014443252818e-15 24 1.9984014443252818e-15 25 1.5543122344752192e-15 26 1.7763568394002505e-15
		 27 1.7763568394002505e-15 28 1.9984014443252818e-15 29 1.7763568394002505e-15 30 1.9984014443252818e-15
		 31 1.3322676295501878e-15 32 1.5543122344752192e-15 33 1.7763568394002505e-15 34 1.9984014443252818e-15
		 35 1.5543122344752192e-15 36 1.9984014443252818e-15 37 1.1102230246251565e-15 38 1.7763568394002505e-15
		 39 1.5543122344752192e-15 40 1.3322676295501878e-15;
createNode animCurveTL -n "L_Arm_02_Jnt_translateZ";
	rename -uid "996E29DA-4C8B-9D55-71C0-60B874F6797E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 4.5845897744811737e-08 2 4.5845897633789434e-08
		 3 4.5845897411744829e-08 4 4.5845897411744829e-08 5 4.5845897675422798e-08 6 4.584589746725598e-08
		 7 4.5845897855834039e-08 8 4.5845897633789434e-08 9 4.5845897966856342e-08 10 4.5845897522767132e-08
		 11 4.5845897522767132e-08 12 4.5845897744811737e-08 13 4.5845897522767132e-08 14 4.5845897300722527e-08
		 15 4.5845897744811737e-08 16 4.5845897411744829e-08 17 4.5845897633789434e-08 18 4.584589746725598e-08
		 19 4.5845897578278283e-08 20 4.5845897508889344e-08 21 4.5845897481133768e-08 22 4.5845897495011556e-08
		 23 4.5845897411744829e-08 24 4.5845897744811737e-08 25 4.5845897522767132e-08 26 4.5845897633789434e-08
		 27 4.5845897300722527e-08 28 4.5845897522767132e-08 29 4.5845897300722527e-08 30 4.5845897966856342e-08
		 31 4.5845897300722527e-08 32 4.5845897522767132e-08 33 4.5845897966856342e-08 34 4.5845897744811737e-08
		 35 4.5845897522767132e-08 36 4.5845897633789434e-08 37 4.5845897744811737e-08 38 4.5845897522767132e-08
		 39 4.5845897522767132e-08 40 4.5845897744811737e-08;
createNode animCurveTA -n "L_Arm_02_Jnt_rotateX";
	rename -uid "AD0144AB-4083-1544-5367-508969829BD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTA -n "L_Arm_02_Jnt_rotateY";
	rename -uid "7CDACCCA-4B7E-B3BB-7245-1881273DDFE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -51.592170564151338 2 -51.592170564151445
		 3 -51.592170564151417 4 -51.592170564151417 5 -51.592170564151452 6 -51.592170564151445
		 7 -51.592170564151452 8 -51.592170564151445 9 -51.592170564151445 10 -51.592170564151395
		 11 -51.592170564151445 12 -51.592170564151445 13 -51.592170564151445 14 -51.592170564151445
		 15 -51.592170564151417 16 -51.592170564151452 17 -51.592170564151452 18 -51.592170564151417
		 19 -51.592170564151445 20 -51.592170564151395 21 -51.592170564151417 22 -51.592170564151417
		 23 -51.592170564151417 24 -51.592170564151445 25 -51.592170564151445 26 -51.592170564151452
		 27 -51.592170564151445 28 -51.592170564151417 29 -51.592170564151445 30 -51.592170564151367
		 31 -51.592170564151445 32 -51.592170564151395 33 -51.592170564151445 34 -51.592170564151445
		 35 -51.592170564151445 36 -51.592170564151417 37 -51.592170564151445 38 -51.592170564151445
		 39 -51.592170564151417 40 -51.592170564151338;
createNode animCurveTA -n "L_Arm_02_Jnt_rotateZ";
	rename -uid "59CDF84E-4A6C-45E2-1767-DFB42A64623B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTU -n "L_Arm_02_Jnt_scaleX";
	rename -uid "034BDCFE-432D-E24C-08EC-B287D6E098D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "L_Arm_02_Jnt_scaleY";
	rename -uid "5350D94A-428C-9C58-83BE-34801B6281C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "L_Arm_02_Jnt_scaleZ";
	rename -uid "3C930999-4863-6F69-B45F-72BCE6457B10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "L_Arm_03_Jnt_visibility";
	rename -uid "BAF49D80-41EB-0391-5210-BDB245594FEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTL -n "L_Arm_03_Jnt_translateX";
	rename -uid "BA6F892C-4AF1-F12B-C2D6-A9BFA893643C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.57782791897536745 2 0.57782791897536745
		 3 0.57782791897536745 4 0.57782791897536745 5 0.57782791897536745 6 0.57782791897536745
		 7 0.57782791897536745 8 0.57782791897536745 9 0.57782791897536745 10 0.57782791897536745
		 11 0.57782791897536745 12 0.57782791897536745 13 0.57782791897536745 14 0.57782791897536745
		 15 0.57782791897536745 16 0.57782791897536745 17 0.57782791897536745 18 0.57782791897536745
		 19 0.57782791897536745 20 0.57782791897536745 21 0.57782791897536745 22 0.57782791897536745
		 23 0.57782791897536745 24 0.57782791897536745 25 0.57782791897536745 26 0.57782791897536745
		 27 0.57782791897536745 28 0.57782791897536745 29 0.57782791897536745 30 0.57782791897536745
		 31 0.57782791897536745 32 0.57782791897536745 33 0.57782791897536745 34 0.57782791897536745
		 35 0.57782791897536745 36 0.57782791897536745 37 0.57782791897536745 38 0.57782791897536745
		 39 0.57782791897536745 40 0.57782791897536745;
createNode animCurveTL -n "L_Arm_03_Jnt_translateY";
	rename -uid "8BAD35E1-4B17-3624-D6D4-6F9126C103DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -6.0279534235195735e-32 2 -6.0279534235195735e-32
		 3 -6.0279534235195735e-32 4 -6.0279534235195735e-32 5 -6.0279534235195735e-32 6 -6.0279534235195735e-32
		 7 -6.0279534235195735e-32 8 -6.0279534235195735e-32 9 -6.0279534235195735e-32 10 -6.0279534235195735e-32
		 11 -6.0279534235195735e-32 12 -6.0279534235195735e-32 13 -6.0279534235195735e-32
		 14 -6.0279534235195735e-32 15 -6.0279534235195735e-32 16 -6.0279534235195735e-32
		 17 -6.0279534235195735e-32 18 -6.0279534235195735e-32 19 -6.0279534235195735e-32
		 20 -6.0279534235195735e-32 21 -6.0279534235195735e-32 22 -6.0279534235195735e-32
		 23 -6.0279534235195735e-32 24 -6.0279534235195735e-32 25 -6.0279534235195735e-32
		 26 -6.0279534235195735e-32 27 -6.0279534235195735e-32 28 -6.0279534235195735e-32
		 29 -6.0279534235195735e-32 30 -6.0279534235195735e-32 31 -6.0279534235195735e-32
		 32 -6.0279534235195735e-32 33 -6.0279534235195735e-32 34 -6.0279534235195735e-32
		 35 -6.0279534235195735e-32 36 -6.0279534235195735e-32 37 -6.0279534235195735e-32
		 38 -6.0279534235195735e-32 39 -6.0279534235195735e-32 40 -6.0279534235195735e-32;
createNode animCurveTL -n "L_Arm_03_Jnt_translateZ";
	rename -uid "4461A683-4A0E-E31B-CC06-C0AE50DFF700";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -2.7147488791969457e-16 2 -2.7147488791969457e-16
		 3 -2.7147488791969457e-16 4 -2.7147488791969457e-16 5 -2.7147488791969457e-16 6 -2.7147488791969457e-16
		 7 -2.7147488791969457e-16 8 -2.7147488791969457e-16 9 -2.7147488791969457e-16 10 -2.7147488791969457e-16
		 11 -2.7147488791969457e-16 12 -2.7147488791969457e-16 13 -2.7147488791969457e-16
		 14 -2.7147488791969457e-16 15 -2.7147488791969457e-16 16 -2.7147488791969457e-16
		 17 -2.7147488791969457e-16 18 -2.7147488791969457e-16 19 -2.7147488791969457e-16
		 20 -2.7147488791969457e-16 21 -2.7147488791969457e-16 22 -2.7147488791969457e-16
		 23 -2.7147488791969457e-16 24 -2.7147488791969457e-16 25 -2.7147488791969457e-16
		 26 -2.7147488791969457e-16 27 -2.7147488791969457e-16 28 -2.7147488791969457e-16
		 29 -2.7147488791969457e-16 30 -2.7147488791969457e-16 31 -2.7147488791969457e-16
		 32 -2.7147488791969457e-16 33 -2.7147488791969457e-16 34 -2.7147488791969457e-16
		 35 -2.7147488791969457e-16 36 -2.7147488791969457e-16 37 -2.7147488791969457e-16
		 38 -2.7147488791969457e-16 39 -2.7147488791969457e-16 40 -2.7147488791969457e-16;
createNode animCurveTA -n "L_Arm_03_Jnt_rotateX";
	rename -uid "3D5EBC99-488F-CC2D-9D51-D6AD7159B09C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTA -n "L_Arm_03_Jnt_rotateY";
	rename -uid "B8D2DCBF-455A-0BB1-1BC5-58A9D87F1976";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTA -n "L_Arm_03_Jnt_rotateZ";
	rename -uid "3A5A88E3-407C-8F64-91E0-628C8A883FAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTU -n "L_Arm_03_Jnt_scaleX";
	rename -uid "2C5EBFAA-44A4-0F07-3EBE-79A0E247D8C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "L_Arm_03_Jnt_scaleY";
	rename -uid "6DBA2040-4B31-ACD5-DE0B-75AF1CB69EB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "L_Arm_03_Jnt_scaleZ";
	rename -uid "F8F5F34B-4E6F-6B63-D1DC-CFB47C942979";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "R_Arm_01_Jnt_visibility";
	rename -uid "9F87E7CF-4CA1-6199-6238-AD9261CD8079";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTL -n "R_Arm_01_Jnt_translateX";
	rename -uid "262D876A-48AC-5AE3-8E9F-459AF3112FEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.0028060151578177539 2 0.0028060166148584642
		 3 0.0028060175823561018 4 0.0028060180954336822 5 0.0028060182257441113 6 0.002806018078621797
		 7 0.0028060177784747786 8 0.0028060174478192756 9 0.0028060171905073261 10 0.0028060170886399227
		 11 0.0028060170627637326 12 0.0028060169837367255 13 0.002806016837987535 14 0.0028060166110730478
		 15 0.0028060163022085582 16 0.0028060159334470924 17 0.0028060155520757135 18 0.0028060152261302207
		 19 0.0028060150353645952 20 0.0028060150620672353 21 0.0028060152323297061 22 0.0028060154004392324
		 23 0.0028060155439000312 24 0.0028060156481881648 25 0.0028060157080185277 26 0.0028060157270193287
		 27 0.0028060157159406351 28 0.0028060156898437327 29 0.0028060156647913281 30 0.0028060156543436854
		 31 0.002806015685837604 32 0.0028060157604210545 33 0.0028060158389466849 34 0.0028060158792930778
		 35 0.0028060158493925513 36 0.002806015739217127 37 0.0028060155667168907 38 0.0028060153746625183
		 39 0.0028060152197162402 40 0.0028060151578177539;
createNode animCurveTL -n "R_Arm_01_Jnt_translateY";
	rename -uid "DC9C1EB2-4F96-3FE4-626C-B289A44FEBC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 5.4783967299646014e-10 2 5.3265341299754176e-10
		 3 3.1800888850375801e-10 4 -5.1248612132411671e-11 5 -5.6878315651818937e-10 6 -1.2227937112786399e-09
		 7 -1.9632383571527236e-09 8 -2.6874400404593811e-09 9 -3.2465195686594041e-09 10 -3.4697404702697228e-09
		 11 -3.4204538194836517e-09 12 -3.2741873314527084e-09 13 -3.0298787748038258e-09
		 14 -2.6811724458526724e-09 15 -2.2186929240136955e-09 16 -1.6375087115720773e-09
		 17 -9.4813699438069086e-10 18 -1.8687077458170602e-10 19 5.7949609284337811e-10 20 1.2582900908566195e-09
		 21 1.8561645758566073e-09 22 2.4376796161856086e-09 23 2.990566492383462e-09 24 3.5071988105705808e-09
		 25 3.981559500610795e-09 26 4.4059862701506099e-09 27 4.7687416884023413e-09 28 5.0532060834764917e-09
		 29 5.2390559727487716e-09 30 5.305259795816062e-09 31 5.1545954951106427e-09 32 4.7574606045344325e-09
		 33 4.1996279212298841e-09 34 3.5560403233828546e-09 35 2.8816384236194508e-09 36 2.2153716139767046e-09
		 37 1.5933517411563464e-09 38 1.0629316709589504e-09 39 6.8904569300223192e-10 40 5.4783967299646014e-10;
createNode animCurveTL -n "R_Arm_01_Jnt_translateZ";
	rename -uid "43F68DEA-41ED-FC5E-ED8E-30A0EEBDD11E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -0.46912963206213548 2 -0.46912963125020291
		 3 -0.46912963073959951 4 -0.46912963047830375 5 -0.46912963041635181 6 -0.46912963050133799
		 7 -0.46912963067616992 8 -0.46912963087911047 9 -0.46912963104598732 10 -0.46912963111440797
		 11 -0.46912963112469691 12 -0.46912963115678935 13 -0.46912963121899459 14 -0.46912963132087698
		 15 -0.46912963146597286 16 -0.46912963164690896 17 -0.4691296318429804 18 -0.46912963202014685
		 19 -0.46912963213328163 20 -0.46912963213042164 21 -0.469129632050997 22 -0.46912963197991064
		 23 -0.46912963192854046 24 -0.46912963190331636 25 -0.46912963190531604 26 -0.46912963193044566
		 27 -0.46912963197021668 28 -0.46912963201311886 29 -0.46912963204658614 30 -0.46912963205954783
		 31 -0.46912963202582314 32 -0.46912963194406931 33 -0.46912963184969403 34 -0.4691296317769813
		 35 -0.46912963175011968 36 -0.46912963177775818 37 -0.4691296318511794 38 -0.46912963194613067
		 39 -0.46912963202827002 40 -0.46912963206213548;
createNode animCurveTA -n "R_Arm_01_Jnt_rotateX";
	rename -uid "E1BD5283-4772-5998-29E5-70A353B361D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 2.257732092186624 2 2.6755733027385644
		 3 3.0685210857212755 4 3.4311321924199429 5 3.7071204777486382 6 3.8287006719334991
		 7 3.7564053747858859 8 3.5182691548917893 9 3.2346327799341226 10 3.0968670518651402
		 11 3.0217419815336042 12 2.8302493266995841 13 2.5773618191542194 14 2.3179245627458593
		 15 2.1008431020084757 16 1.9631150253346774 17 1.9236928757740568 18 1.9782581808197766
		 19 2.0966492031911108 20 2.225577654688903 21 2.3115914864079601 22 2.3510545876868076
		 23 2.3576524831865475 24 2.3476928325645101 25 2.3365597099089661 26 2.3351873752809582
		 27 2.3473519766145419 28 2.3687821889164065 29 2.3891451635624223 30 2.3974464944930314
		 31 2.3528460719493562 32 2.2555386506608057 33 2.1661385122994301 34 2.1242319319320511
		 35 2.1351771835111562 36 2.1781369870180072 37 2.2236668903701795 38 2.2511017377560987
		 39 2.2582972393964549 40 2.257732092186624;
createNode animCurveTA -n "R_Arm_01_Jnt_rotateY";
	rename -uid "76314DFD-42FC-7292-89C3-EB8C8176D9B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -11.684664172668409 2 -14.52120654224454
		 3 -18.450773017964615 4 -23.09035907535635 5 -28.055212475942156 6 -32.961292272748345
		 7 -37.426635205200292 8 -41.073470715020058 9 -43.530440129338146 10 -44.431119487944763
		 11 -43.687785702752116 12 -41.618474696454221 13 -38.46119885013993 14 -34.454520351799104
		 15 -29.841628360379428 16 -24.872109032173459 17 -19.801476748554503 18 -14.888995536575511
		 19 -10.394759654878371 20 -6.5773795998323532 21 -3.004895897272589 22 0.82566545919881951
		 23 4.7631851461930621 24 8.6563460045646572 25 12.354410890740741 26 15.707915029623836
		 27 18.569121945492562 28 20.792070622155098 29 22.232044922038526 30 22.744390398309321
		 31 21.787764077597412 32 19.186911208771093 33 15.344297871556433 34 10.666178277333684
		 35 5.5650017394258802 36 0.45797725054755428 37 -4.236112062605061 38 -8.100061487294985
		 39 -10.71999693046976 40 -11.684664172668409;
createNode animCurveTA -n "R_Arm_01_Jnt_rotateZ";
	rename -uid "F7ADFB2C-422D-4712-FF4E-9BA2F19DCAA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -68.449137573606293 2 -70.242892379600335
		 3 -71.480308866966922 4 -72.196926449837974 5 -72.433932967765443 6 -72.249442993891492
		 7 -71.737248476371462 8 -71.052712539998211 9 -70.430536616680328 10 -70.160705553013415
		 11 -70.125559446018329 12 -70.031953997156734 13 -69.884909621670744 14 -69.68162836159982
		 15 -69.421399761979089 16 -69.113297868050054 17 -68.782384078122561 18 -68.475103572372632
		 19 -68.263529686269536 20 -68.246718172989716 21 -68.345538126140767 22 -68.385692103961176
		 23 -68.350613906608388 24 -68.235637146438194 25 -68.048213231474477 26 -67.808033230505075
		 27 -67.546588133839549 28 -67.305175169599693 29 -67.130110770082368 30 -67.064300145950909
		 31 -67.212365022871566 32 -67.576026299898317 33 -68.016799635169434 34 -68.412489768021928
		 35 -68.683233875044948 36 -68.797091693627209 37 -68.766909757804541 38 -68.644402681729773
		 39 -68.509628035199555 40 -68.449137573606293;
createNode animCurveTU -n "R_Arm_01_Jnt_scaleX";
	rename -uid "5DA3ABF2-408A-0ED2-3945-E6B465881EA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "R_Arm_01_Jnt_scaleY";
	rename -uid "39081940-423C-2D84-3EE7-7EA1B5EE71B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "R_Arm_01_Jnt_scaleZ";
	rename -uid "8DDCB1F5-44DC-FD13-859D-47A5D6FDFC6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "R_Arm_02_Jnt_visibility";
	rename -uid "F141EC1C-4879-1844-9826-A99D77DB63B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTL -n "R_Arm_02_Jnt_translateX";
	rename -uid "4238D7E8-414D-A51C-E15D-F883D1BC3323";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.67416059261271477 2 0.67416059261271544
		 3 0.67416059261271499 4 0.67416059261271544 5 0.67416059261271499 6 0.67416059261271566
		 7 0.67416059261271455 8 0.67416059261271499 9 0.67416059261271521 10 0.67416059261271588
		 11 0.67416059261271521 12 0.67416059261271455 13 0.67416059261271499 14 0.67416059261271566
		 15 0.67416059261271544 16 0.67416059261271499 17 0.67416059261271566 18 0.67416059261271499
		 19 0.67416059261271455 20 0.67416059261271499 21 0.67416059261271588 22 0.67416059261271499
		 23 0.67416059261271566 24 0.67416059261271544 25 0.67416059261271544 26 0.67416059261271499
		 27 0.67416059261271499 28 0.67416059261271499 29 0.67416059261271477 30 0.67416059261271566
		 31 0.67416059261271544 32 0.67416059261271544 33 0.67416059261271521 34 0.67416059261271588
		 35 0.67416059261271499 36 0.67416059261271544 37 0.67416059261271477 38 0.67416059261271544
		 39 0.67416059261271588 40 0.67416059261271477;
createNode animCurveTL -n "R_Arm_02_Jnt_translateY";
	rename -uid "0B39F1B3-4DA5-90FE-A316-3EB45ABE64D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 2.2204460492503131e-16 2 -2.2204460492503131e-16
		 3 4.4408920985006262e-16 4 0 5 2.2204460492503131e-16 6 0 7 2.2204460492503131e-16
		 8 0 9 -2.2204460492503131e-16 10 0 11 -2.2204460492503131e-16 12 0 13 2.2204460492503131e-16
		 14 2.2204460492503131e-16 15 0 16 0 17 0 18 4.4408920985006262e-16 19 2.2204460492503131e-16
		 20 0 21 -2.2204460492503131e-16 22 0 23 0 24 -2.2204460492503131e-16 25 2.2204460492503131e-16
		 26 2.2204460492503131e-16 27 -4.4408920985006262e-16 28 0 29 -2.2204460492503131e-16
		 30 2.2204460492503131e-16 31 -4.4408920985006262e-16 32 2.2204460492503131e-16 33 0
		 34 0 35 0 36 2.2204460492503131e-16 37 -2.2204460492503131e-16 38 0 39 -2.2204460492503131e-16
		 40 2.2204460492503131e-16;
createNode animCurveTL -n "R_Arm_02_Jnt_translateZ";
	rename -uid "4B671B37-4486-B6DA-F5D4-92836A6F9F9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -2.0057799310357893e-09 2 -2.0057799310357893e-09
		 3 -2.0057798755246381e-09 4 -2.0057798755246381e-09 5 -2.0057797645023356e-09 6 -2.0057799865469406e-09
		 7 -2.0057795424577307e-09 8 -2.0057799865469406e-09 9 -2.0057797645023356e-09 10 -2.0057802085915455e-09
		 11 -2.0057804306361504e-09 12 -2.0057797645023356e-09 13 -2.0057799865469406e-09
		 14 -2.0057797645023356e-09 15 -2.0057802085915455e-09 16 -2.0057798755246381e-09
		 17 -2.0057799865469406e-09 18 -2.0057799865469406e-09 19 -2.0057799865469406e-09
		 20 -2.0057800698136674e-09 21 -2.0057800004247284e-09 22 -2.0057801669581821e-09
		 23 -2.0057799032802137e-09 24 -2.0057799865469406e-09 25 -2.0057797645023356e-09
		 26 -2.005780097569243e-09 27 -2.0057798755246381e-09 28 -2.005780097569243e-09 29 -2.0057799865469406e-09
		 30 -2.0057806526807553e-09 31 -2.005780319613848e-09 32 -2.0057802085915455e-09 33 -2.005780097569243e-09
		 34 -2.0057799865469406e-09 35 -2.0057799865469406e-09 36 -2.0057799310357893e-09
		 37 -2.0057799449135771e-09 38 -2.005780097569243e-09 39 -2.0057799865469406e-09 40 -2.0057799310357893e-09;
createNode animCurveTA -n "R_Arm_02_Jnt_rotateX";
	rename -uid "EBE36842-4680-194C-C942-8EA14E775DCC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTA -n "R_Arm_02_Jnt_rotateY";
	rename -uid "0AD1528B-4686-FF9F-6476-8EAD68F997AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 63.977276066096032 2 63.977276066096032
		 3 63.977276066096032 4 63.977276066096032 5 63.977276066096017 6 63.977276066096032
		 7 63.977276066096032 8 63.977276066096017 9 63.977276066096032 10 63.977276066096032
		 11 63.977276066096032 12 63.977276066096017 13 63.977276066096032 14 63.977276066096017
		 15 63.977276066096032 16 63.977276066096017 17 63.977276066096032 18 63.977276066096032
		 19 63.977276066096032 20 63.977276066096032 21 63.977276066096032 22 63.977276066096032
		 23 63.977276066096017 24 63.977276066096032 25 63.977276066096017 26 63.977276066096032
		 27 63.977276066096032 28 63.977276066096032 29 63.977276066096032 30 63.977276066096032
		 31 63.977276066096032 32 63.977276066096032 33 63.977276066096017 34 63.977276066096032
		 35 63.977276066096032 36 63.977276066096032 37 63.977276066096032 38 63.977276066096032
		 39 63.977276066096032 40 63.977276066096032;
createNode animCurveTA -n "R_Arm_02_Jnt_rotateZ";
	rename -uid "F08F603D-4590-DE21-5660-6FA71393900F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTU -n "R_Arm_02_Jnt_scaleX";
	rename -uid "1DAC0B4D-4C5C-5818-876D-CA910132E267";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "R_Arm_02_Jnt_scaleY";
	rename -uid "DB08876B-4E58-60BA-96D7-84814F84CD30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "R_Arm_02_Jnt_scaleZ";
	rename -uid "19B98B83-4E51-4295-6D0B-25B41B238EAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "R_Arm_03_Jnt_visibility";
	rename -uid "9276DE87-4776-0DB8-545E-1286AD94D93A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTL -n "R_Arm_03_Jnt_translateX";
	rename -uid "4BE82A3A-4B15-A2A3-FDAF-E2A7150CA1F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.57782791897536745 2 0.57782791897536745
		 3 0.57782791897536745 4 0.57782791897536745 5 0.57782791897536745 6 0.57782791897536745
		 7 0.57782791897536745 8 0.57782791897536745 9 0.57782791897536745 10 0.57782791897536745
		 11 0.57782791897536745 12 0.57782791897536745 13 0.57782791897536745 14 0.57782791897536745
		 15 0.57782791897536745 16 0.57782791897536745 17 0.57782791897536745 18 0.57782791897536745
		 19 0.57782791897536745 20 0.57782791897536745 21 0.57782791897536745 22 0.57782791897536745
		 23 0.57782791897536745 24 0.57782791897536745 25 0.57782791897536745 26 0.57782791897536745
		 27 0.57782791897536745 28 0.57782791897536745 29 0.57782791897536745 30 0.57782791897536745
		 31 0.57782791897536745 32 0.57782791897536745 33 0.57782791897536745 34 0.57782791897536745
		 35 0.57782791897536745 36 0.57782791897536745 37 0.57782791897536745 38 0.57782791897536745
		 39 0.57782791897536745 40 0.57782791897536745;
createNode animCurveTL -n "R_Arm_03_Jnt_translateY";
	rename -uid "C6686233-4C9F-1889-0817-AEAD95A1C3E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -1.7763568394002509e-15 2 -1.7763568394002509e-15
		 3 -1.7763568394002509e-15 4 -1.7763568394002509e-15 5 -1.7763568394002509e-15 6 -1.7763568394002509e-15
		 7 -1.7763568394002509e-15 8 -1.7763568394002509e-15 9 -1.7763568394002509e-15 10 -1.7763568394002509e-15
		 11 -1.7763568394002509e-15 12 -1.7763568394002509e-15 13 -1.7763568394002509e-15
		 14 -1.7763568394002509e-15 15 -1.7763568394002509e-15 16 -1.7763568394002509e-15
		 17 -1.7763568394002509e-15 18 -1.7763568394002509e-15 19 -1.7763568394002509e-15
		 20 -1.7763568394002509e-15 21 -1.7763568394002509e-15 22 -1.7763568394002509e-15
		 23 -1.7763568394002509e-15 24 -1.7763568394002509e-15 25 -1.7763568394002509e-15
		 26 -1.7763568394002509e-15 27 -1.7763568394002509e-15 28 -1.7763568394002509e-15
		 29 -1.7763568394002509e-15 30 -1.7763568394002509e-15 31 -1.7763568394002509e-15
		 32 -1.7763568394002509e-15 33 -1.7763568394002509e-15 34 -1.7763568394002509e-15
		 35 -1.7763568394002509e-15 36 -1.7763568394002509e-15 37 -1.7763568394002509e-15
		 38 -1.7763568394002509e-15 39 -1.7763568394002509e-15 40 -1.7763568394002509e-15;
createNode animCurveTL -n "R_Arm_03_Jnt_translateZ";
	rename -uid "9025F6F2-4399-0A8E-2FBC-948B2004F633";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 2.0677248956892332e-15 2 2.0677248956892332e-15
		 3 2.0677248956892332e-15 4 2.0677248956892332e-15 5 2.0677248956892332e-15 6 2.0677248956892332e-15
		 7 2.0677248956892332e-15 8 2.0677248956892332e-15 9 2.0677248956892332e-15 10 2.0677248956892332e-15
		 11 2.0677248956892332e-15 12 2.0677248956892332e-15 13 2.0677248956892332e-15 14 2.0677248956892332e-15
		 15 2.0677248956892332e-15 16 2.0677248956892332e-15 17 2.0677248956892332e-15 18 2.0677248956892332e-15
		 19 2.0677248956892332e-15 20 2.0677248956892332e-15 21 2.0677248956892332e-15 22 2.0677248956892332e-15
		 23 2.0677248956892332e-15 24 2.0677248956892332e-15 25 2.0677248956892332e-15 26 2.0677248956892332e-15
		 27 2.0677248956892332e-15 28 2.0677248956892332e-15 29 2.0677248956892332e-15 30 2.0677248956892332e-15
		 31 2.0677248956892332e-15 32 2.0677248956892332e-15 33 2.0677248956892332e-15 34 2.0677248956892332e-15
		 35 2.0677248956892332e-15 36 2.0677248956892332e-15 37 2.0677248956892332e-15 38 2.0677248956892332e-15
		 39 2.0677248956892332e-15 40 2.0677248956892332e-15;
createNode animCurveTA -n "R_Arm_03_Jnt_rotateX";
	rename -uid "1FB71B6F-4826-FAF1-111E-0A9EA0D9832C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTA -n "R_Arm_03_Jnt_rotateY";
	rename -uid "DC0AFF9E-43ED-1BAD-73F6-2088F5481CC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTA -n "R_Arm_03_Jnt_rotateZ";
	rename -uid "D9EE20F0-451C-F14A-3837-428C5017BE72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTU -n "R_Arm_03_Jnt_scaleX";
	rename -uid "624A323F-4749-74BB-43CB-6886138CAC1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "R_Arm_03_Jnt_scaleY";
	rename -uid "6679D044-45CA-DFEC-6E1B-6CA1C70AB793";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "R_Arm_03_Jnt_scaleZ";
	rename -uid "DA942E13-4730-FB86-2E5A-B4B8A2BBAACE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "R_Leg_01_Jnt_visibility";
	rename -uid "9B1EFB2F-4754-07C1-980C-349BCC2E6A5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTL -n "R_Leg_01_Jnt_translateX";
	rename -uid "87D0D288-4734-8DF3-5017-CB9DE91F783D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 5.3999416049776983e-09 2 5.3999416049776983e-09
		 3 5.3999416049776983e-09 4 5.3999416049776983e-09 5 5.3999416049776983e-09 6 5.3999416049776983e-09
		 7 5.3999416049776983e-09 8 5.3999416049776983e-09 9 5.3999416049776983e-09 10 5.3999416049776983e-09
		 11 5.3999416049776983e-09 12 5.3999416049776983e-09 13 5.3999416049776983e-09 14 5.3999416049776983e-09
		 15 5.3999416049776983e-09 16 5.3999416049776983e-09 17 5.3999416049776983e-09 18 5.3999416049776983e-09
		 19 5.3999416049776983e-09 20 5.3999416049776983e-09 21 5.3999416049776983e-09 22 5.3999416049776983e-09
		 23 5.3999416049776983e-09 24 5.3999416049776983e-09 25 5.3999416049776983e-09 26 5.3999416049776983e-09
		 27 5.3999416049776983e-09 28 5.3999416049776983e-09 29 5.3999416049776983e-09 30 5.3999416049776983e-09
		 31 5.3999416049776983e-09 32 5.3999416049776983e-09 33 5.3999416049776983e-09 34 5.3999416049776983e-09
		 35 5.3999416049776983e-09 36 5.3999416049776983e-09 37 5.3999416049776983e-09 38 5.3999416049776983e-09
		 39 5.3999416049776983e-09 40 5.3999416049776983e-09;
createNode animCurveTL -n "R_Leg_01_Jnt_translateY";
	rename -uid "A2987F75-4395-AF49-2C33-B6BB0531A518";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1.166290314693667e-16 2 1.1193752800757761e-16
		 3 9.9032255277007957e-17 4 7.9638958167595273e-17 5 5.567909799601603e-17 6 2.9383187983375125e-17
		 7 3.1836763068979863e-18 8 -2.0529022360653183e-17 9 -3.9641772299556524e-17 10 -5.2401093082493043e-17
		 11 -6.0517512797276414e-17 12 -6.6906155874456e-17 13 -7.1809176045065205e-17 14 -7.5449980029363747e-17
		 15 -7.8034907719071615e-17 16 -7.9756263625571511e-17 17 -8.0795839896728356e-17
		 18 -8.1328336397502283e-17 19 -8.1524288993475024e-17 20 -8.1552272076188126e-17
		 21 -7.873202933881774e-17 22 -7.0883558193969744e-17 23 -5.8857482215931083e-17 24 -4.3552728389215046e-17
		 25 -2.6026934678096246e-17 26 -7.5236179581395608e-18 27 1.0571153142019261e-17 28 2.6810858939065188e-17
		 29 3.9769118981346688e-17 30 5.0115966900120438e-17 31 6.0382829614527744e-17 32 7.0355893356241828e-17
		 33 7.9827399940593185e-17 34 8.8598614856698736e-17 35 9.6481585447132822e-17 36 1.0329934480327844e-16
		 37 1.0888436576988565e-16 38 1.1307524678396597e-16 39 1.1571181193862955e-16 40 1.166290314693667e-16;
createNode animCurveTL -n "R_Leg_01_Jnt_translateZ";
	rename -uid "197E7CAB-48E0-D310-A67C-56A361DAAD6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -0.32473948089342841 2 -0.32473948089342841
		 3 -0.32473948089342841 4 -0.32473948089342841 5 -0.32473948089342841 6 -0.32473948089342841
		 7 -0.32473948089342841 8 -0.32473948089342841 9 -0.32473948089342841 10 -0.32473948089342841
		 11 -0.32473948089342841 12 -0.32473948089342841 13 -0.32473948089342841 14 -0.32473948089342841
		 15 -0.32473948089342841 16 -0.32473948089342841 17 -0.32473948089342841 18 -0.32473948089342841
		 19 -0.32473948089342841 20 -0.32473948089342841 21 -0.32473948089342841 22 -0.32473948089342841
		 23 -0.32473948089342841 24 -0.32473948089342841 25 -0.32473948089342841 26 -0.32473948089342841
		 27 -0.32473948089342841 28 -0.32473948089342841 29 -0.32473948089342841 30 -0.32473948089342841
		 31 -0.32473948089342841 32 -0.32473948089342841 33 -0.32473948089342841 34 -0.32473948089342841
		 35 -0.32473948089342841 36 -0.32473948089342841 37 -0.32473948089342841 38 -0.32473948089342841
		 39 -0.32473948089342841 40 -0.32473948089342841;
createNode animCurveTA -n "R_Leg_01_Jnt_rotateX";
	rename -uid "77EBF226-448D-4537-F418-E59C1D64819C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -5.0778960600028342e-15 2 -1.2569827718898778e-14
		 3 -7.8882440000588354e-15 4 -1.0349013802262148e-14 5 -7.7330383466888268e-15 6 1.042601853430424e-15
		 7 3.6802741361953027e-15 8 5.2423708243104463e-15 9 1.5443459449778234e-14 10 1.5616317825625542e-14
		 11 2.1211189184380604e-14 12 2.3280054542862362e-14 13 1.4401852278973138e-14 14 2.2470675245484476e-14
		 15 1.4857567720383281e-14 16 1.498395084693306e-14 17 1.0690010687251761e-14 18 1.8609025786028353e-14
		 19 1.6871789706981152e-14 20 1.5116005472748907e-14 21 1.4908729812508912e-14 22 1.4334270465111173e-14
		 23 1.4868337735895778e-14 24 1.4716026962913195e-14 25 5.7268922738064919e-15 26 4.1023736863247244e-15
		 27 2.9347255425670842e-15 28 1.3009578236942221e-15 29 8.1215875884122915e-30 30 -7.3260782405615108e-15
		 31 -1.6393172585188494e-15 32 -2.4342771127677377e-15 33 -1.0367847325610537e-14
		 34 -3.8946452992208858e-15 35 -1.1238346337155506e-14 36 -1.1825013777180479e-14
		 37 -5.5332020060226119e-15 38 -1.2668080651820075e-14 39 -1.2895932934400728e-14
		 40 -5.077896060002835e-15;
createNode animCurveTA -n "R_Leg_01_Jnt_rotateY";
	rename -uid "FDED8330-4C68-2F32-99FC-46BC67E8E0A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 2.2276407075109884e-14 2 3.0755073210754847e-14
		 3 2.8432354968528328e-14 4 3.803465514305028e-14 5 3.220690192641843e-14 6 3.8806765714984179e-14
		 7 3.8628738092942483e-14 8 3.1985326004041038e-14 9 4.3021457935907814e-14 10 3.622950227168939e-14
		 11 2.8226195912374839e-14 12 3.4013362788230093e-14 13 2.2980962316284551e-14 14 2.7292875503366539e-14
		 15 2.2694743258866865e-14 16 2.2612835162447695e-14 17 3.0425811347804462e-14 18 3.4765530711964054e-14
		 19 2.8640816489928246e-14 20 2.2526050565747326e-14 21 2.2661719950932263e-14 22 2.3022215237885371e-14
		 23 2.9732561509766072e-14 24 3.6604416848264791e-14 25 3.1892361081046088e-14 26 3.2170730653872401e-14
		 27 3.8699329631509777e-14 28 3.8798134463196421e-14 29 2.9280592068779498e-14 30 3.5482994847065891e-14
		 31 2.9229208811478686e-14 32 2.9167151331842189e-14 33 3.8029799559942654e-14 34 2.8989186223441405e-14
		 35 3.1245069022552502e-14 36 3.1038024800478948e-14 37 2.86888724924933e-14 38 3.0716036773112447e-14
		 39 3.0623952268303662e-14 40 2.2276407075109884e-14;
createNode animCurveTA -n "R_Leg_01_Jnt_rotateZ";
	rename -uid "D4256AD5-4D35-037C-3DA3-D595C915C8DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -19.668732701093962 2 -18.423404513060319
		 3 -15.041726717861998 4 -10.055159468852917 5 -3.9951629193870031 6 2.6068027771818336
		 7 9.2192774674996478 8 15.310800998212517 9 20.349913215966566 10 23.80515396740784
		 11 26.050977609970833 12 27.849293958443791 13 29.249826045503386 14 30.302296903826257
		 15 31.056429566089122 16 31.561947064968621 17 31.86857243314142 18 32.026028703284226
		 19 32.084038908073659 20 32.092326080186453 21 31.260829534389288 22 28.983987391623664
		 23 25.588270893828255 24 21.400151282941849 25 16.746099800903128 26 11.95258768965088
		 27 7.3460861911237716 28 3.2530665472605831 29 2.5444437451708134e-14 30 -2.5969864362917443
		 31 -5.1791760561524951 32 -7.6975731432524555 33 -10.103181981261907 34 -12.347006853851076
		 35 -14.380052044690188 36 -16.153321837449546 37 -17.617820515799359 38 -18.724552363409849
		 39 -19.424521663951321 40 -19.668732701093962;
createNode animCurveTU -n "R_Leg_01_Jnt_scaleX";
	rename -uid "D7E739B4-4AE7-77A8-3B1C-E6B23674F4CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "R_Leg_01_Jnt_scaleY";
	rename -uid "8FACB41C-4AB6-EEAC-B535-2399CC404D8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "R_Leg_01_Jnt_scaleZ";
	rename -uid "50371055-43FC-EA15-28AC-128E235F7471";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "R_Leg_02_Jnt_visibility";
	rename -uid "AFF201F7-4BA1-952C-96F3-04B3BE29E874";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTL -n "R_Leg_02_Jnt_translateX";
	rename -uid "26CB3CB7-4FFA-9016-E0AC-6FA117AF53DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.80389242872874567 2 0.80389242889223755
		 3 0.80389242913220849 4 0.80389242944467665 5 0.80389242981407816 6 0.8038924302122501
		 7 0.8038924306005899 8 0.80389243093416674 9 0.80389243116631925 10 0.80389243125269783
		 11 0.80389243120715292 12 0.80389243108063968 13 0.80389243088956719 14 0.80389243065139082
		 15 0.80389243038387903 16 0.80389243010428801 17 0.80389242982846643 18 0.80389242956998208
		 19 0.80389242933943339 20 0.80389242914410741 21 0.80389242908431702 22 0.80389242893331425
		 23 0.80389242873925526 24 0.80389242854827003 25 0.80389242839479746 26 0.80389242829537133
		 27 0.80389242824735163 28 0.80389242823351492 29 0.80389242823241114 30 0.80389242823268436
		 31 0.80389242823623952 32 0.80389242824920504 33 0.80389242827787666 34 0.8038924283262211
		 35 0.80389242839423358 36 0.80389242847718778 37 0.80389242856577536 38 0.80389242864707677
		 39 0.80389242870623434 40 0.80389242872874567;
createNode animCurveTL -n "R_Leg_02_Jnt_translateY";
	rename -uid "D958810E-4FE0-83E6-DE5C-A4A69811492C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 2.2638267371810628e-09 2 2.5894357214006902e-09
		 3 2.987949998534134e-09 4 3.4131188986208372e-09 5 3.8229448773297037e-09 6 4.1839904457718902e-09
		 7 4.4743519722612035e-09 8 4.6838594669473821e-09 9 4.8106678640635891e-09 10 4.8541719532835259e-09
		 11 4.8314748868349966e-09 12 4.7655768220522532e-09 13 4.6577773860079219e-09 14 4.5084805888606638e-09
		 15 4.319035462607701e-09 16 4.0930751010748168e-09 17 3.8373029198623954e-09 18 3.5617278015820375e-09
		 19 3.2794114090961557e-09 20 3.0058374678176847e-09 21 2.914354424454757e-09 22 2.6634210392728619e-09
		 23 2.2865043192155099e-09 24 1.8216508301804879e-09 25 1.3156561950999901e-09 26 8.2303225346080922e-10
		 27 4.0182027150059696e-10 28 1.0928319360559158e-10 29 1.3495534833314832e-16 30 5.4398888171824922e-11
		 31 2.0351309526489558e-10 32 4.2598422012041226e-10 33 6.9996800022842365e-10 34 1.0031938613153102e-09
		 35 1.31340555098447e-09 36 1.609043509542829e-09 37 1.8698909087788707e-09 38 2.0773796571837977e-09
		 39 2.2143033517885158e-09 40 2.2638267371810628e-09;
createNode animCurveTL -n "R_Leg_02_Jnt_translateZ";
	rename -uid "72CA91ED-4918-26FC-5F82-85B0F4F84A30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 5.5511151231257827e-17 4 1.1102230246251565e-16
		 5 5.5511151231257827e-17 6 0 7 0 8 -5.5511151231257827e-17 9 0 10 -5.5511151231257827e-17
		 11 -5.5511151231257827e-17 12 0 13 0 14 0 15 1.1102230246251565e-16 16 5.5511151231257827e-17
		 17 5.5511151231257827e-17 18 5.5511151231257827e-17 19 0 20 5.5511151231257827e-17
		 21 0 22 0 23 -5.5511151231257827e-17 24 0 25 -5.5511151231257827e-17 26 -5.5511151231257827e-17
		 27 -5.5511151231257827e-17 28 0 29 0 30 0 31 0 32 0 33 5.5511151231257827e-17 34 0
		 35 5.5511151231257827e-17 36 5.5511151231257827e-17 37 1.1102230246251565e-16 38 1.1102230246251565e-16
		 39 0 40 0;
createNode animCurveTA -n "R_Leg_02_Jnt_rotateX";
	rename -uid "3E472F46-4E9C-AE20-B6C3-C392185AB734";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -4.0868651789632452e-15 2 -1.8611123065583446e-14
		 3 -5.502695881245908e-15 4 -6.3870758954415842e-15 5 -2.1483265586066687e-14 6 -1.3912269482038493e-14
		 7 -2.314716199921617e-14 8 -1.1866888068694752e-14 9 -1.7485831708464259e-14 10 -1.7523002974469217e-14
		 11 -2.0838701787922981e-14 12 -1.7447221200515788e-14 13 -2.0506596793675992e-14
		 14 -1.722542058374289e-14 15 -1.136635070762462e-14 16 -1.3721595618469891e-14 17 -1.3202028162184527e-14
		 18 -1.2664092750994015e-14 19 -2.0192002946590945e-14 20 -1.3472547521930491e-14
		 21 -1.9350209066473577e-14 22 -1.8778795444340369e-14 23 -4.1299067730423713e-15
		 24 -9.5278310855378263e-15 25 -2.3376405458101398e-15 26 -1.9407733853268913e-15
		 27 -9.454158601909951e-16 28 6.1680640266487678e-15 29 5.649800061504203e-30 30 -1.2790510846128197e-16
		 31 -4.7858645596448678e-16 32 5.6044047599813916e-15 33 -1.6492384406669121e-15 34 5.1489748201617161e-15
		 35 -8.6469506852536729e-15 36 -9.1587983442981346e-15 37 -3.3493678096146322e-15
		 38 -3.7355301692331532e-15 39 -5.324147163753573e-15 40 -4.0868651789632452e-15;
createNode animCurveTA -n "R_Leg_02_Jnt_rotateY";
	rename -uid "4068CC80-43F2-0E2A-A315-EBB679741BBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1.8640572522136744e-14 2 2.151511898131329e-14
		 3 1.8272759752773557e-14 4 1.798273261909688e-14 5 1.8647883158709522e-14 6 1.4528794896009792e-14
		 7 1.6537325597701771e-14 8 7.841908517743629e-15 9 4.2373798602685609e-15 10 4.080939275912685e-15
		 11 9.5800192090908236e-15 12 4.3936512147889297e-15 13 1.0271696461351035e-14 14 5.1956312734941538e-15
		 15 8.5512942427957177e-15 16 1.4709008700601396e-14 17 1.5177074015635101e-14 18 1.5628751647697291e-14
		 19 2.0038893770545877e-14 20 2.2502745895341975e-14 21 2.0852905208294678e-14 22 2.1368928101380773e-14
		 23 1.8631083730959953e-14 24 1.7716025459358513e-14 25 1.8939610545696185e-14 26 2.5370313279514195e-14
		 27 2.542686740605667e-14 28 1.9146595243915852e-14 29 2.5444437451708134e-14 30 2.5444115970438372e-14
		 31 2.5439936168120685e-14 32 1.9319103772108002e-14 33 2.5390931644973455e-14 34 1.325920887296563e-14
		 35 1.8162251157771462e-14 36 1.7909593411344145e-14 37 1.8787100527222905e-14 38 1.8714145059254263e-14
		 39 2.4881174695190388e-14 40 1.8640572522136744e-14;
createNode animCurveTA -n "R_Leg_02_Jnt_rotateZ";
	rename -uid "2FF4AD27-489E-8C04-0270-0C98E7277812";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -24.732376865166511 2 -28.59116931763425
		 3 -33.51851167909269 4 -39.107865729262585 5 -44.952693247864737 6 -50.646456014619915
		 7 -55.782615809248888 8 -59.954634411472433 9 -62.755973601011306 10 -63.780095157586338
		 11 -63.241256813921758 12 -61.730740636638657 13 -59.407544906302618 14 -56.430667903479375
		 15 -52.959107908734751 16 -49.151863202634381 17 -45.167932065744026 18 -41.166312778629411
		 19 -37.30600362185622 20 -33.746002875990193 21 -32.58873254416612 22 -29.487248054877597
		 23 -24.997039167400168 24 -19.673595641009388 25 -14.072407234980817 26 -8.7489637085900487
		 27 -4.2587548211126176 28 -1.1572703318241067 29 2.5444437451708134e-14 30 -0.57603582480853111
		 31 -2.1554888928319422 32 -4.5153775944669077 33 -7.4327203201101621 34 -10.684535460158326
		 35 -14.047841405008182 36 -17.299656545056362 37 -20.216999270699578 38 -22.576887972334571
		 39 -24.156341040357951 40 -24.732376865166511;
createNode animCurveTU -n "R_Leg_02_Jnt_scaleX";
	rename -uid "6ED3279A-44BD-73BF-3B9F-F69805CE87E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "R_Leg_02_Jnt_scaleY";
	rename -uid "35A48E27-4E3F-1FBF-5E01-E18682FFEC76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "R_Leg_02_Jnt_scaleZ";
	rename -uid "0C0923C0-4DA6-3A05-0CB3-7788DDBBFFB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "R_Leg_03_Jnt_visibility";
	rename -uid "96310C8D-4C49-C9BA-19BC-878248961794";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTL -n "R_Leg_03_Jnt_translateX";
	rename -uid "ECB352D6-4621-BA82-0037-35BF348CC6B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.64478628510021641 2 0.64478628510021641
		 3 0.64478628510021641 4 0.64478628510021641 5 0.64478628510021641 6 0.64478628510021641
		 7 0.64478628510021641 8 0.64478628510021641 9 0.64478628510021641 10 0.64478628510021641
		 11 0.64478628510021641 12 0.64478628510021641 13 0.64478628510021641 14 0.64478628510021641
		 15 0.64478628510021641 16 0.64478628510021641 17 0.64478628510021641 18 0.64478628510021641
		 19 0.64478628510021641 20 0.64478628510021641 21 0.64478628510021641 22 0.64478628510021641
		 23 0.64478628510021641 24 0.64478628510021641 25 0.64478628510021641 26 0.64478628510021641
		 27 0.64478628510021641 28 0.64478628510021641 29 0.64478628510021641 30 0.64478628510021641
		 31 0.64478628510021641 32 0.64478628510021641 33 0.64478628510021641 34 0.64478628510021641
		 35 0.64478628510021641 36 0.64478628510021641 37 0.64478628510021641 38 0.64478628510021641
		 39 0.64478628510021641 40 0.64478628510021641;
createNode animCurveTL -n "R_Leg_03_Jnt_translateY";
	rename -uid "42957313-4209-85C3-9D59-B3BC9D57364A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -1.431713159361561e-16 2 -1.431713159361561e-16
		 3 -1.431713159361561e-16 4 -1.431713159361561e-16 5 -1.431713159361561e-16 6 -1.431713159361561e-16
		 7 -1.431713159361561e-16 8 -1.431713159361561e-16 9 -1.431713159361561e-16 10 -1.431713159361561e-16
		 11 -1.431713159361561e-16 12 -1.431713159361561e-16 13 -1.431713159361561e-16 14 -1.431713159361561e-16
		 15 -1.431713159361561e-16 16 -1.431713159361561e-16 17 -1.431713159361561e-16 18 -1.431713159361561e-16
		 19 -1.431713159361561e-16 20 -1.431713159361561e-16 21 -1.431713159361561e-16 22 -1.431713159361561e-16
		 23 -1.431713159361561e-16 24 -1.431713159361561e-16 25 -1.431713159361561e-16 26 -1.431713159361561e-16
		 27 -1.431713159361561e-16 28 -1.431713159361561e-16 29 -1.431713159361561e-16 30 -1.431713159361561e-16
		 31 -1.431713159361561e-16 32 -1.431713159361561e-16 33 -1.431713159361561e-16 34 -1.431713159361561e-16
		 35 -1.431713159361561e-16 36 -1.431713159361561e-16 37 -1.431713159361561e-16 38 -1.431713159361561e-16
		 39 -1.431713159361561e-16 40 -1.431713159361561e-16;
createNode animCurveTL -n "R_Leg_03_Jnt_translateZ";
	rename -uid "C4D9A331-4012-D263-FF73-AC8EB93402C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTA -n "R_Leg_03_Jnt_rotateX";
	rename -uid "2801DA8C-437B-C58B-1EF2-1F83BC821159";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTA -n "R_Leg_03_Jnt_rotateY";
	rename -uid "7F870886-4F7A-DD32-1865-D988908F39BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTA -n "R_Leg_03_Jnt_rotateZ";
	rename -uid "159A1A99-4484-46F1-9714-86BB170E0C64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTU -n "R_Leg_03_Jnt_scaleX";
	rename -uid "8A446668-41CE-89BF-57EE-ED89245CF3A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "R_Leg_03_Jnt_scaleY";
	rename -uid "368B735C-4555-8095-942B-93A4900817AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "R_Leg_03_Jnt_scaleZ";
	rename -uid "D406E4CE-4800-F7B2-4F8E-BBB7894490C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "L_Leg_01_Jnt1_visibility";
	rename -uid "EFE3178F-4E74-0969-8232-16843F3495E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTL -n "L_Leg_01_Jnt1_translateX";
	rename -uid "FA71968C-4ECC-8696-21AC-BFB27C178648";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 5.3999418270223032e-09 2 5.3999418270223032e-09
		 3 5.3999418270223032e-09 4 5.3999418270223032e-09 5 5.3999418270223032e-09 6 5.3999418270223032e-09
		 7 5.3999418270223032e-09 8 5.3999418270223032e-09 9 5.3999418270223032e-09 10 5.3999418270223032e-09
		 11 5.3999418270223032e-09 12 5.3999418270223032e-09 13 5.3999418270223032e-09 14 5.3999418270223032e-09
		 15 5.3999418270223032e-09 16 5.3999418270223032e-09 17 5.3999418270223032e-09 18 5.3999418270223032e-09
		 19 5.3999418270223032e-09 20 5.3999418270223032e-09 21 5.3999418270223032e-09 22 5.3999418270223032e-09
		 23 5.3999418270223032e-09 24 5.3999418270223032e-09 25 5.3999418270223032e-09 26 5.3999418270223032e-09
		 27 5.3999418270223032e-09 28 5.3999418270223032e-09 29 5.3999418270223032e-09 30 5.3999418270223032e-09
		 31 5.3999418270223032e-09 32 5.3999418270223032e-09 33 5.3999418270223032e-09 34 5.3999418270223032e-09
		 35 5.3999418270223032e-09 36 5.3999418270223032e-09 37 5.3999418270223032e-09 38 5.3999418270223032e-09
		 39 5.3999418270223032e-09 40 5.3999418270223032e-09;
createNode animCurveTL -n "L_Leg_01_Jnt1_translateY";
	rename -uid "DD45B12C-4B92-7CDA-C3D3-5FA1D0D7D727";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -2.8307887875544261e-16 2 -2.7743839328070184e-16
		 3 -2.617414509910058e-16 4 -2.3768929903492847e-16 5 -2.070797913814964e-16 6 -1.7202820395925895e-16
		 7 -1.3502157051934528e-16 8 -9.8832028319027834e-17 9 -6.6352616724936179e-17 10 -4.0436096640372981e-17
		 11 -1.8465285498624821e-17 12 3.5962622545873265e-18 13 2.5122892914625365e-17 14 4.5505455322533328e-17
		 15 6.4161898162668892e-17 16 8.0543267805275786e-17 17 9.413343551269972e-17 18 1.0444167186712349e-16
		 19 1.1098816580031792e-16 20 1.1328372833566714e-16 21 1.0373189687237404e-16 22 7.7488637528484734e-17
		 23 3.8120706222640615e-17 24 -1.0391383733286113e-17 25 -6.3429566930534138e-17 26 -1.1597702790067626e-16
		 27 -1.6313331760766053e-16 28 -2.0059172753415048e-16 29 -2.2477652076805239e-16
		 30 -2.3968401289450313e-16 31 -2.5169818932866222e-16 32 -2.6118680641963102e-16
		 33 -2.6849180278783338e-16 34 -2.7393087155986011e-16 35 -2.7780086741541058e-16
		 36 -2.8038206891369338e-16 37 -2.8194258581693502e-16 38 -2.8274241669291053e-16
		 39 -2.8303683102116101e-16 40 -2.8307887875544261e-16;
createNode animCurveTL -n "L_Leg_01_Jnt1_translateZ";
	rename -uid "A3F85535-4A49-9885-8607-5BAD3BB8AEAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.33018580595304808 2 0.33018580595304808
		 3 0.33018580595304808 4 0.33018580595304808 5 0.33018580595304808 6 0.33018580595304808
		 7 0.33018580595304808 8 0.33018580595304808 9 0.33018580595304808 10 0.33018580595304808
		 11 0.33018580595304808 12 0.33018580595304808 13 0.33018580595304808 14 0.33018580595304808
		 15 0.33018580595304808 16 0.33018580595304808 17 0.33018580595304808 18 0.33018580595304808
		 19 0.33018580595304808 20 0.33018580595304808 21 0.33018580595304808 22 0.33018580595304808
		 23 0.33018580595304808 24 0.33018580595304808 25 0.33018580595304808 26 0.33018580595304808
		 27 0.33018580595304808 28 0.33018580595304808 29 0.33018580595304808 30 0.33018580595304808
		 31 0.33018580595304808 32 0.33018580595304808 33 0.33018580595304808 34 0.33018580595304808
		 35 0.33018580595304808 36 0.33018580595304808 37 0.33018580595304808 38 0.33018580595304808
		 39 0.33018580595304808 40 0.33018580595304808;
createNode animCurveTA -n "L_Leg_01_Jnt1_rotateX";
	rename -uid "ECC6814A-4B79-C0F5-C3C0-30ABEDE64694";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1.5116005472748907e-14 2 1.4908729812508912e-14
		 3 2.367665399640871e-14 4 8.6651618310823923e-15 5 1.4716026962913195e-14 6 5.7268922738064935e-15
		 7 4.1023736863247157e-15 8 2.9347255425670842e-15 9 1.3009578236942239e-15 10 8.1215875884122915e-30
		 11 -7.3090215284033143e-15 12 -8.4117033076425239e-15 13 -2.609328178148112e-15 14 -3.4245531123985977e-15
		 15 -4.1736136679905367e-15 16 -4.834155041744654e-15 17 -1.2148506199974887e-14 18 -7.9206272844722386e-15
		 19 -1.2875998520419706e-14 20 -5.077896060002835e-15 21 -8.4058224086107467e-15 22 -1.1431856017881039e-14
		 23 -6.0229740039177745e-15 24 -7.865993800001386e-15 25 1.1541577611497886e-15 26 3.8000490550557954e-15
		 27 5.3348158081524264e-15 28 1.5520728448473652e-14 29 1.5616317825625542e-14 30 1.4955682422280731e-14
		 31 1.3968331075881375e-14 32 1.5901590736950388e-14 33 1.4580909518887353e-14 34 1.8152911893540037e-14
		 35 1.4922035551106206e-14 36 2.4610229458554338e-14 37 1.5074210000051568e-14 38 1.5103627520709549e-14
		 39 2.9099154999131885e-14 40 1.5116005472748907e-14;
createNode animCurveTA -n "L_Leg_01_Jnt1_rotateY";
	rename -uid "3B3EECE9-472C-38F7-9925-0EAAC184C705";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 2.2526050565747326e-14 2 2.2661719950932263e-14
		 3 3.374781226507834e-14 4 3.1141220808908551e-14 5 3.6604416848264791e-14 6 3.1892361081046088e-14
		 7 3.2170730653872401e-14 8 3.8699329631509777e-14 9 3.8798134463196427e-14 10 2.9280592068779498e-14
		 11 3.2292606244227864e-14 12 3.5268654916053026e-14 13 2.9150205701473603e-14 14 2.9055584319331006e-14
		 15 2.8945655267247507e-14 16 2.883021306055323e-14 17 3.0917926073184819e-14 18 2.1839287679053304e-14
		 19 3.0632095851556256e-14 20 2.2276407075109884e-14 21 2.4987221191878258e-14 22 3.1178295709450996e-14
		 23 2.5649658876248236e-14 24 3.858048075931891e-14 25 3.8803272529557751e-14 26 3.8615898026416406e-14
		 27 3.1968246038880463e-14 28 4.2993512152295297e-14 29 3.622950227168939e-14 30 2.9689030024074945e-14
		 31 2.3240377616121097e-14 32 2.919432955722811e-14 33 2.2870186012861537e-14 34 3.5011397113196644e-14
		 35 2.2653101646925e-14 36 3.3093024499906677e-14 37 2.2553651677138027e-14 38 2.2534237734161941e-14
		 39 2.5124539580501057e-14 40 2.2526050565747326e-14;
createNode animCurveTA -n "L_Leg_01_Jnt1_rotateZ";
	rename -uid "9DEC9D91-4BD2-8FA2-88CC-55915ECF726B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 32.092326080186453 2 31.260829534389288
		 3 28.983987391623643 4 25.588270893828255 5 21.400151282941849 6 16.746099800903131
		 7 11.952587689650858 8 7.3460861911237716 9 3.2530665472605862 10 2.5444437451708134e-14
		 11 -2.7573801794641315 12 -5.5326090030210642 13 -8.2531176533563908 14 -10.846337313155791
		 15 -13.239699165104895 16 -15.360634391889366 17 -17.136574176194856 18 -18.494949700707014
		 19 -19.363192148111516 20 -19.668732701093962 21 -18.401082163934998 22 -14.963598495923353
		 23 -9.9044836122569411 24 -3.7719394281337122 25 2.88583214124845 26 9.5206291806915662
		 27 15.58424977499781 28 20.528492008969216 29 23.80515396740784 30 25.866051014237094
		 31 27.553371557109358 32 28.904473246420348 33 29.956713732565824 34 30.747450665941386
		 35 31.31404169694277 36 31.693844475965673 37 31.924216653405828 38 32.042515879658851
		 39 32.086099805120504 40 32.092326080186453;
createNode animCurveTU -n "L_Leg_01_Jnt1_scaleX";
	rename -uid "DF3A4387-43A5-8EF6-C3A4-1CA0F0FBEFD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "L_Leg_01_Jnt1_scaleY";
	rename -uid "0A19941B-4123-33D0-B869-57BF7B3774B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "L_Leg_01_Jnt1_scaleZ";
	rename -uid "F9AD88BF-435C-1136-9BAF-9895312450C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "L_Leg_02_Jnt_visibility";
	rename -uid "AAFE489B-43B5-2E23-6EFD-E89BD692645A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTL -n "L_Leg_02_Jnt_translateX";
	rename -uid "7808AA7A-43FA-72AE-B9AB-C5A0B04054CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.80389242914410741 2 0.80389242908431702
		 3 0.80389242893331425 4 0.80389242873925471 5 0.80389242854826981 6 0.80389242839479735
		 7 0.803892428295371 8 0.80389242824735141 9 0.80389242823351481 10 0.80389242823241103
		 11 0.80389242823253659 12 0.80389242823426021 13 0.80389242824099261 14 0.80389242825717011
		 15 0.80389242828732965 16 0.80389242833532792 17 0.80389242840371389 18 0.80389242849327058
		 19 0.80389242860273935 20 0.80389242872874556 21 0.80389242889824386 22 0.80389242914282644
		 23 0.80389242945804007 24 0.80389242982792875 25 0.80389243022436951 26 0.80389243060933357
		 27 0.80389243093891127 28 0.80389243116771092 29 0.80389243125269771 30 0.80389243119361309
		 31 0.80389243103350716 32 0.80389243079979256 33 0.80389243052076309 34 0.80389243022385459
		 35 0.80389242993386367 36 0.80389242967138586 37 0.80389242945192074 38 0.80389242928607541
		 39 0.80389242918113957 40 0.80389242914410741;
createNode animCurveTL -n "L_Leg_02_Jnt_translateY";
	rename -uid "30299ACF-40AC-5F4D-D052-1EA37FB45084";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 3.0058376898622896e-09 2 2.914354424454757e-09
		 3 2.6634212613174668e-09 4 2.2865043192155099e-09 5 1.8216508301804879e-09 6 1.3156563616334438e-09
		 7 8.2303230897196045e-10 8 4.0182029925617258e-10 9 1.0928330462789404e-10 10 1.3495534833314813e-16
		 11 3.6867314756605651e-11 12 1.4145037918744663e-10 13 3.0462768418892949e-10 14 5.1703741288378069e-10
		 15 7.6896283784932962e-10 16 1.0503139469264511e-09 17 1.3507301388493431e-09 18 1.6597994090261636e-09
		 19 1.9673589424229476e-09 20 2.2638266816699115e-09 21 2.600425652588001e-09 22 3.0039195575426447e-09
		 23 3.4294923567657065e-09 24 3.8367685695206433e-09 25 4.1939000883228772e-09 26 4.4802860588166737e-09
		 27 4.6866003300394254e-09 28 4.8113842909813798e-09 29 4.8541720643058284e-09 30 4.8246237005500348e-09
		 31 4.7399293379157825e-09 32 4.6035202316829782e-09 33 4.4190122672205234e-09 34 4.1934800076859347e-09
		 35 3.9392815676109194e-09 36 3.6744707276881172e-09 37 3.422010896869665e-09 38 3.2081766132563416e-09
		 39 3.0605427081553671e-09 40 3.0058376898622896e-09;
createNode animCurveTL -n "L_Leg_02_Jnt_translateZ";
	rename -uid "46437D49-473A-6E6C-2CDC-1E82A8100BF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -5.5511151231257827e-17 2 -5.5511151231257827e-17
		 3 -5.5511151231257827e-17 4 -1.1102230246251565e-16 5 -5.5511151231257827e-17 6 -5.5511151231257827e-17
		 7 0 8 -1.1102230246251565e-16 9 0 10 -5.5511151231257827e-17 11 -5.5511151231257827e-17
		 12 0 13 0 14 0 15 5.5511151231257827e-17 16 0 17 -5.5511151231257827e-17 18 0 19 -5.5511151231257827e-17
		 20 0 21 -5.5511151231257827e-17 22 5.5511151231257827e-17 23 5.5511151231257827e-17
		 24 -5.5511151231257827e-17 25 5.5511151231257827e-17 26 -1.1102230246251565e-16 27 -1.1102230246251565e-16
		 28 -5.5511151231257827e-17 29 -5.5511151231257827e-17 30 0 31 -1.1102230246251565e-16
		 32 5.5511151231257827e-17 33 0 34 -5.5511151231257827e-17 35 0 36 -5.5511151231257827e-17
		 37 5.5511151231257827e-17 38 0 39 0 40 -5.5511151231257827e-17;
createNode animCurveTA -n "L_Leg_02_Jnt_rotateX";
	rename -uid "C17ABBAD-478A-B138-F82B-238836872FB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -1.3472547521930491e-14 2 -1.9350209066473577e-14
		 3 -3.23773255745999e-15 4 -1.034026801669569e-14 5 -9.5278310855378263e-15 6 4.7547764846919705e-15
		 7 -1.9407733853268913e-15 8 -9.454158601909951e-16 9 6.1680640266487678e-15 10 5.649800061504203e-30
		 11 6.2960595273877519e-15 12 -3.3260804207256252e-16 13 -7.1652751880734406e-16 14 -1.2170556196642481e-15
		 15 4.9855007994360955e-15 16 -1.8609999712971702e-15 17 -8.7115266049757966e-15 18 -2.9628271699746513e-15
		 19 3.8978687181114968e-15 20 -4.086865178963246e-15 21 -4.7335361472537739e-15 22 -1.3467751251144302e-14
		 23 -2.0543060251498327e-14 24 -1.3200965122201862e-14 25 -1.1204156171007975e-14
		 26 -2.5801383787832178e-14 27 -2.9250245120020796e-14 28 -2.6229666768833124e-14
		 29 -1.7523002974469217e-14 30 -2.9574130761084767e-14 31 -2.6137831916802957e-14
		 32 -1.7307743417096989e-14 33 -2.0072679452872282e-14 34 -1.3932381228788604e-14
		 35 -2.1768444864685437e-14 36 -2.4728068657723379e-14 37 -6.4061307378346578e-15
		 38 -5.9546228930962317e-15 39 -1.9685544657099128e-14 40 -1.3472547521930491e-14;
createNode animCurveTA -n "L_Leg_02_Jnt_rotateY";
	rename -uid "1D4B2E26-4FF5-317F-FD58-14BFC5248D5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 2.2502745895341975e-14 2 2.0852905208294678e-14
		 3 1.2303330329420383e-14 4 1.725444813994583e-14 5 1.7716025459358513e-14 6 1.3405620545734173e-14
		 7 2.5370313279514195e-14 8 2.542686740605667e-14 9 1.9146595243915852e-14 10 2.5444437451708134e-14
		 11 1.9104888319452952e-14 12 2.5442263443417067e-14 13 2.5434346572080034e-14 14 2.5415313746883615e-14
		 15 1.9487993869303269e-14 16 1.899236925849152e-14 17 1.8131365847116391e-14 18 1.8851924732104194e-14
		 19 1.3679370639468681e-14 20 1.8640572522136744e-14 21 1.8486942594347603e-14 22 2.2505616761117804e-14
		 23 1.9678844530247938e-14 24 1.5177998653102783e-14 25 8.7627305180094304e-15 26 7.9142540091353158e-15
		 27 1.2490635235913704e-14 28 6.3522754257112275e-15 29 4.080939275912685e-15 30 1.170314478694548e-14
		 31 6.7201610529123638e-15 32 4.9144395840095294e-15 33 1.1095755937959895e-14 34 1.4509509866528186e-14
		 35 1.8314176331888638e-14 36 1.0810617112220861e-14 37 1.797595337983028e-14 38 1.8130523355520549e-14
		 39 2.0536639893023291e-14 40 2.2502745895341975e-14;
createNode animCurveTA -n "L_Leg_02_Jnt_rotateZ";
	rename -uid "3B00AB5C-4EDB-BED0-5ACD-DC88D717063F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -33.746002875990193 2 -32.58873254416612
		 3 -29.487248054877551 4 -24.997039167400168 5 -19.673595641009388 6 -14.072407234980812
		 7 -8.7489637085900487 8 -4.2587548211126176 9 -1.1572703318241067 10 2.5444437451708134e-14
		 11 -0.39039031200453439 12 -1.4979761176390116 13 -3.2273797213349358 14 -5.4832234275237148
		 15 -8.1701295406367631 16 -11.192720365105561 17 -14.455618205361475 18 -17.863445365836
		 19 -21.320824150960508 20 -24.732376865166511 21 -28.723785499898206 22 -33.721580208184399
		 23 -39.331655536833075 24 -45.159906032652238 25 -50.812226242449889 26 -55.894510713034123
		 27 -60.012653991212893 28 -62.772550623794338 29 -63.780095157586338 30 -63.080578357639318
		 31 -61.162548422300688 32 -58.296786048324201 33 -54.754071932463525 34 -50.8051867714723
		 35 -46.720911262104238 36 -42.772026101112992 37 -39.229311985252316 38 -36.363549611275836
		 39 -34.445519675937241 40 -33.746002875990193;
createNode animCurveTU -n "L_Leg_02_Jnt_scaleX";
	rename -uid "34C8154C-4CD9-EDC6-D666-CA986F9B0CA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "L_Leg_02_Jnt_scaleY";
	rename -uid "54FFF2C5-4EF9-7CBD-6C6F-6F9812E42B82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "L_Leg_02_Jnt_scaleZ";
	rename -uid "6B894D14-4598-8D20-956B-B6AA40BC347D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "L_Leg_03_Jnt_visibility";
	rename -uid "33594A72-4DAE-B33D-3F54-36BB397A469C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTL -n "L_Leg_03_Jnt_translateX";
	rename -uid "AE46A47E-4E53-5395-7D09-71AC2E32A48E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.64478628510021641 2 0.64478628510021641
		 3 0.64478628510021641 4 0.64478628510021641 5 0.64478628510021641 6 0.64478628510021641
		 7 0.64478628510021641 8 0.64478628510021641 9 0.64478628510021641 10 0.64478628510021641
		 11 0.64478628510021641 12 0.64478628510021641 13 0.64478628510021641 14 0.64478628510021641
		 15 0.64478628510021641 16 0.64478628510021641 17 0.64478628510021641 18 0.64478628510021641
		 19 0.64478628510021641 20 0.64478628510021641 21 0.64478628510021641 22 0.64478628510021641
		 23 0.64478628510021641 24 0.64478628510021641 25 0.64478628510021641 26 0.64478628510021641
		 27 0.64478628510021641 28 0.64478628510021641 29 0.64478628510021641 30 0.64478628510021641
		 31 0.64478628510021641 32 0.64478628510021641 33 0.64478628510021641 34 0.64478628510021641
		 35 0.64478628510021641 36 0.64478628510021641 37 0.64478628510021641 38 0.64478628510021641
		 39 0.64478628510021641 40 0.64478628510021641;
createNode animCurveTL -n "L_Leg_03_Jnt_translateY";
	rename -uid "16269C16-4F50-2862-AC00-6C96139BCEB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -1.431713159361561e-16 2 -1.431713159361561e-16
		 3 -1.431713159361561e-16 4 -1.431713159361561e-16 5 -1.431713159361561e-16 6 -1.431713159361561e-16
		 7 -1.431713159361561e-16 8 -1.431713159361561e-16 9 -1.431713159361561e-16 10 -1.431713159361561e-16
		 11 -1.431713159361561e-16 12 -1.431713159361561e-16 13 -1.431713159361561e-16 14 -1.431713159361561e-16
		 15 -1.431713159361561e-16 16 -1.431713159361561e-16 17 -1.431713159361561e-16 18 -1.431713159361561e-16
		 19 -1.431713159361561e-16 20 -1.431713159361561e-16 21 -1.431713159361561e-16 22 -1.431713159361561e-16
		 23 -1.431713159361561e-16 24 -1.431713159361561e-16 25 -1.431713159361561e-16 26 -1.431713159361561e-16
		 27 -1.431713159361561e-16 28 -1.431713159361561e-16 29 -1.431713159361561e-16 30 -1.431713159361561e-16
		 31 -1.431713159361561e-16 32 -1.431713159361561e-16 33 -1.431713159361561e-16 34 -1.431713159361561e-16
		 35 -1.431713159361561e-16 36 -1.431713159361561e-16 37 -1.431713159361561e-16 38 -1.431713159361561e-16
		 39 -1.431713159361561e-16 40 -1.431713159361561e-16;
createNode animCurveTL -n "L_Leg_03_Jnt_translateZ";
	rename -uid "B4B2DB8F-4578-27A8-D445-A7B7081B5E3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTA -n "L_Leg_03_Jnt_rotateX";
	rename -uid "E4D1F1E9-4B2D-29A5-BEA3-8EB442FA17B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTA -n "L_Leg_03_Jnt_rotateY";
	rename -uid "F97E6F61-4287-B74F-FEE0-69AFF626482A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTA -n "L_Leg_03_Jnt_rotateZ";
	rename -uid "222CE705-4E76-FB8F-0CC4-D8862E678D8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0;
createNode animCurveTU -n "L_Leg_03_Jnt_scaleX";
	rename -uid "E6EA137A-4549-D839-362D-E5BF23C10F30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "L_Leg_03_Jnt_scaleY";
	rename -uid "99F0D095-47CC-A87F-43FA-1BBB88DA6642";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "L_Leg_03_Jnt_scaleZ";
	rename -uid "0ECE7855-4C40-8B7E-AF9F-6F980514FED0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1;
select -ne :time1;
	setAttr ".o" 42;
	setAttr ".unw" 42;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Chest_01_Jnt_scaleX.o" "Chest_01_Jnt.sx";
connectAttr "Chest_01_Jnt_scaleY.o" "Chest_01_Jnt.sy";
connectAttr "Chest_01_Jnt_scaleZ.o" "Chest_01_Jnt.sz";
connectAttr "Chest_01_Jnt_translateX.o" "Chest_01_Jnt.tx";
connectAttr "Chest_01_Jnt_translateY.o" "Chest_01_Jnt.ty";
connectAttr "Chest_01_Jnt_translateZ.o" "Chest_01_Jnt.tz";
connectAttr "Chest_01_Jnt_rotateX.o" "Chest_01_Jnt.rx";
connectAttr "Chest_01_Jnt_rotateY.o" "Chest_01_Jnt.ry";
connectAttr "Chest_01_Jnt_rotateZ.o" "Chest_01_Jnt.rz";
connectAttr "Chest_01_Jnt_visibility.o" "Chest_01_Jnt.v";
connectAttr "Chest_01_Jnt.s" "Chest_02_Jnt.is";
connectAttr "Chest_02_Jnt_scaleX.o" "Chest_02_Jnt.sx";
connectAttr "Chest_02_Jnt_scaleY.o" "Chest_02_Jnt.sy";
connectAttr "Chest_02_Jnt_scaleZ.o" "Chest_02_Jnt.sz";
connectAttr "Chest_02_Jnt_translateX.o" "Chest_02_Jnt.tx";
connectAttr "Chest_02_Jnt_translateY.o" "Chest_02_Jnt.ty";
connectAttr "Chest_02_Jnt_translateZ.o" "Chest_02_Jnt.tz";
connectAttr "Chest_02_Jnt_rotateX.o" "Chest_02_Jnt.rx";
connectAttr "Chest_02_Jnt_rotateY.o" "Chest_02_Jnt.ry";
connectAttr "Chest_02_Jnt_rotateZ.o" "Chest_02_Jnt.rz";
connectAttr "Chest_02_Jnt_visibility.o" "Chest_02_Jnt.v";
connectAttr "Chest_02_Jnt.s" "Chest_03_Jnt.is";
connectAttr "Chest_03_Jnt_scaleX.o" "Chest_03_Jnt.sx";
connectAttr "Chest_03_Jnt_scaleY.o" "Chest_03_Jnt.sy";
connectAttr "Chest_03_Jnt_scaleZ.o" "Chest_03_Jnt.sz";
connectAttr "Chest_03_Jnt_translateX.o" "Chest_03_Jnt.tx";
connectAttr "Chest_03_Jnt_translateY.o" "Chest_03_Jnt.ty";
connectAttr "Chest_03_Jnt_translateZ.o" "Chest_03_Jnt.tz";
connectAttr "Chest_03_Jnt_rotateX.o" "Chest_03_Jnt.rx";
connectAttr "Chest_03_Jnt_rotateY.o" "Chest_03_Jnt.ry";
connectAttr "Chest_03_Jnt_rotateZ.o" "Chest_03_Jnt.rz";
connectAttr "Chest_03_Jnt_visibility.o" "Chest_03_Jnt.v";
connectAttr "Chest_03_Jnt.s" "Chest_04_Jnt.is";
connectAttr "Chest_04_Jnt_scaleX.o" "Chest_04_Jnt.sx";
connectAttr "Chest_04_Jnt_scaleY.o" "Chest_04_Jnt.sy";
connectAttr "Chest_04_Jnt_scaleZ.o" "Chest_04_Jnt.sz";
connectAttr "Chest_04_Jnt_translateX.o" "Chest_04_Jnt.tx";
connectAttr "Chest_04_Jnt_translateY.o" "Chest_04_Jnt.ty";
connectAttr "Chest_04_Jnt_translateZ.o" "Chest_04_Jnt.tz";
connectAttr "Chest_04_Jnt_rotateX.o" "Chest_04_Jnt.rx";
connectAttr "Chest_04_Jnt_rotateY.o" "Chest_04_Jnt.ry";
connectAttr "Chest_04_Jnt_rotateZ.o" "Chest_04_Jnt.rz";
connectAttr "Chest_04_Jnt_visibility.o" "Chest_04_Jnt.v";
connectAttr "Chest_04_Jnt.ro" "Chest_04_Jnt_parentConstraint1.cro";
connectAttr "Chest_04_Jnt.pim" "Chest_04_Jnt_parentConstraint1.cpim";
connectAttr "Chest_04_Jnt.rp" "Chest_04_Jnt_parentConstraint1.crp";
connectAttr "Chest_04_Jnt.rpt" "Chest_04_Jnt_parentConstraint1.crt";
connectAttr "Chest_04_Jnt.jo" "Chest_04_Jnt_parentConstraint1.cjo";
connectAttr "Chest_04_ctrl.t" "Chest_04_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Chest_04_ctrl.rp" "Chest_04_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Chest_04_ctrl.rpt" "Chest_04_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Chest_04_ctrl.r" "Chest_04_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Chest_04_ctrl.ro" "Chest_04_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Chest_04_ctrl.s" "Chest_04_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Chest_04_ctrl.pm" "Chest_04_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Chest_04_Jnt_parentConstraint1.w0" "Chest_04_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_01_Jnt_scaleX.o" "L_Arm_01_Jnt.sx";
connectAttr "L_Arm_01_Jnt_scaleY.o" "L_Arm_01_Jnt.sy";
connectAttr "L_Arm_01_Jnt_scaleZ.o" "L_Arm_01_Jnt.sz";
connectAttr "Chest_03_Jnt.s" "L_Arm_01_Jnt.is";
connectAttr "L_Arm_01_Jnt_translateX.o" "L_Arm_01_Jnt.tx";
connectAttr "L_Arm_01_Jnt_translateY.o" "L_Arm_01_Jnt.ty";
connectAttr "L_Arm_01_Jnt_translateZ.o" "L_Arm_01_Jnt.tz";
connectAttr "L_Arm_01_Jnt_rotateX.o" "L_Arm_01_Jnt.rx";
connectAttr "L_Arm_01_Jnt_rotateY.o" "L_Arm_01_Jnt.ry";
connectAttr "L_Arm_01_Jnt_rotateZ.o" "L_Arm_01_Jnt.rz";
connectAttr "L_Arm_01_Jnt_visibility.o" "L_Arm_01_Jnt.v";
connectAttr "L_Arm_01_Jnt.s" "L_Arm_02_Jnt.is";
connectAttr "L_Arm_02_Jnt_scaleX.o" "L_Arm_02_Jnt.sx";
connectAttr "L_Arm_02_Jnt_scaleY.o" "L_Arm_02_Jnt.sy";
connectAttr "L_Arm_02_Jnt_scaleZ.o" "L_Arm_02_Jnt.sz";
connectAttr "L_Arm_02_Jnt_translateX.o" "L_Arm_02_Jnt.tx";
connectAttr "L_Arm_02_Jnt_translateY.o" "L_Arm_02_Jnt.ty";
connectAttr "L_Arm_02_Jnt_translateZ.o" "L_Arm_02_Jnt.tz";
connectAttr "L_Arm_02_Jnt_rotateX.o" "L_Arm_02_Jnt.rx";
connectAttr "L_Arm_02_Jnt_rotateY.o" "L_Arm_02_Jnt.ry";
connectAttr "L_Arm_02_Jnt_rotateZ.o" "L_Arm_02_Jnt.rz";
connectAttr "L_Arm_02_Jnt_visibility.o" "L_Arm_02_Jnt.v";
connectAttr "L_Arm_02_Jnt.s" "L_Arm_03_Jnt.is";
connectAttr "L_Arm_03_Jnt_visibility.o" "L_Arm_03_Jnt.v";
connectAttr "L_Arm_03_Jnt_translateX.o" "L_Arm_03_Jnt.tx";
connectAttr "L_Arm_03_Jnt_translateY.o" "L_Arm_03_Jnt.ty";
connectAttr "L_Arm_03_Jnt_translateZ.o" "L_Arm_03_Jnt.tz";
connectAttr "L_Arm_03_Jnt_rotateX.o" "L_Arm_03_Jnt.rx";
connectAttr "L_Arm_03_Jnt_rotateY.o" "L_Arm_03_Jnt.ry";
connectAttr "L_Arm_03_Jnt_rotateZ.o" "L_Arm_03_Jnt.rz";
connectAttr "L_Arm_03_Jnt_scaleX.o" "L_Arm_03_Jnt.sx";
connectAttr "L_Arm_03_Jnt_scaleY.o" "L_Arm_03_Jnt.sy";
connectAttr "L_Arm_03_Jnt_scaleZ.o" "L_Arm_03_Jnt.sz";
connectAttr "L_Arm_02_Jnt.ro" "L_Arm_02_Jnt_parentConstraint1.cro";
connectAttr "L_Arm_02_Jnt.pim" "L_Arm_02_Jnt_parentConstraint1.cpim";
connectAttr "L_Arm_02_Jnt.rp" "L_Arm_02_Jnt_parentConstraint1.crp";
connectAttr "L_Arm_02_Jnt.rpt" "L_Arm_02_Jnt_parentConstraint1.crt";
connectAttr "L_Arm_02_Jnt.jo" "L_Arm_02_Jnt_parentConstraint1.cjo";
connectAttr "L_Arm_02_Ctrl.t" "L_Arm_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Arm_02_Ctrl.rp" "L_Arm_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Arm_02_Ctrl.rpt" "L_Arm_02_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_Arm_02_Ctrl.r" "L_Arm_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Arm_02_Ctrl.ro" "L_Arm_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Arm_02_Ctrl.s" "L_Arm_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Arm_02_Ctrl.pm" "L_Arm_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Arm_02_Jnt_parentConstraint1.w0" "L_Arm_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_01_Jnt.ro" "L_Arm_01_Jnt_parentConstraint1.cro";
connectAttr "L_Arm_01_Jnt.pim" "L_Arm_01_Jnt_parentConstraint1.cpim";
connectAttr "L_Arm_01_Jnt.rp" "L_Arm_01_Jnt_parentConstraint1.crp";
connectAttr "L_Arm_01_Jnt.rpt" "L_Arm_01_Jnt_parentConstraint1.crt";
connectAttr "L_Arm_01_Jnt.jo" "L_Arm_01_Jnt_parentConstraint1.cjo";
connectAttr "L_Arm_01_Ctrl.t" "L_Arm_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Arm_01_Ctrl.rp" "L_Arm_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Arm_01_Ctrl.rpt" "L_Arm_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_Arm_01_Ctrl.r" "L_Arm_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Arm_01_Ctrl.ro" "L_Arm_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Arm_01_Ctrl.s" "L_Arm_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Arm_01_Ctrl.pm" "L_Arm_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Arm_01_Jnt_parentConstraint1.w0" "L_Arm_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_01_Jnt_scaleX.o" "R_Arm_01_Jnt.sx";
connectAttr "R_Arm_01_Jnt_scaleY.o" "R_Arm_01_Jnt.sy";
connectAttr "R_Arm_01_Jnt_scaleZ.o" "R_Arm_01_Jnt.sz";
connectAttr "Chest_03_Jnt.s" "R_Arm_01_Jnt.is";
connectAttr "R_Arm_01_Jnt_translateX.o" "R_Arm_01_Jnt.tx";
connectAttr "R_Arm_01_Jnt_translateY.o" "R_Arm_01_Jnt.ty";
connectAttr "R_Arm_01_Jnt_translateZ.o" "R_Arm_01_Jnt.tz";
connectAttr "R_Arm_01_Jnt_rotateX.o" "R_Arm_01_Jnt.rx";
connectAttr "R_Arm_01_Jnt_rotateY.o" "R_Arm_01_Jnt.ry";
connectAttr "R_Arm_01_Jnt_rotateZ.o" "R_Arm_01_Jnt.rz";
connectAttr "R_Arm_01_Jnt_visibility.o" "R_Arm_01_Jnt.v";
connectAttr "R_Arm_01_Jnt.s" "R_Arm_02_Jnt.is";
connectAttr "R_Arm_02_Jnt_scaleX.o" "R_Arm_02_Jnt.sx";
connectAttr "R_Arm_02_Jnt_scaleY.o" "R_Arm_02_Jnt.sy";
connectAttr "R_Arm_02_Jnt_scaleZ.o" "R_Arm_02_Jnt.sz";
connectAttr "R_Arm_02_Jnt_translateX.o" "R_Arm_02_Jnt.tx";
connectAttr "R_Arm_02_Jnt_translateY.o" "R_Arm_02_Jnt.ty";
connectAttr "R_Arm_02_Jnt_translateZ.o" "R_Arm_02_Jnt.tz";
connectAttr "R_Arm_02_Jnt_rotateX.o" "R_Arm_02_Jnt.rx";
connectAttr "R_Arm_02_Jnt_rotateY.o" "R_Arm_02_Jnt.ry";
connectAttr "R_Arm_02_Jnt_rotateZ.o" "R_Arm_02_Jnt.rz";
connectAttr "R_Arm_02_Jnt_visibility.o" "R_Arm_02_Jnt.v";
connectAttr "R_Arm_02_Jnt.s" "R_Arm_03_Jnt.is";
connectAttr "R_Arm_03_Jnt_visibility.o" "R_Arm_03_Jnt.v";
connectAttr "R_Arm_03_Jnt_translateX.o" "R_Arm_03_Jnt.tx";
connectAttr "R_Arm_03_Jnt_translateY.o" "R_Arm_03_Jnt.ty";
connectAttr "R_Arm_03_Jnt_translateZ.o" "R_Arm_03_Jnt.tz";
connectAttr "R_Arm_03_Jnt_rotateX.o" "R_Arm_03_Jnt.rx";
connectAttr "R_Arm_03_Jnt_rotateY.o" "R_Arm_03_Jnt.ry";
connectAttr "R_Arm_03_Jnt_rotateZ.o" "R_Arm_03_Jnt.rz";
connectAttr "R_Arm_03_Jnt_scaleX.o" "R_Arm_03_Jnt.sx";
connectAttr "R_Arm_03_Jnt_scaleY.o" "R_Arm_03_Jnt.sy";
connectAttr "R_Arm_03_Jnt_scaleZ.o" "R_Arm_03_Jnt.sz";
connectAttr "R_Arm_02_Jnt.ro" "R_Arm_02_Jnt_parentConstraint1.cro";
connectAttr "R_Arm_02_Jnt.pim" "R_Arm_02_Jnt_parentConstraint1.cpim";
connectAttr "R_Arm_02_Jnt.rp" "R_Arm_02_Jnt_parentConstraint1.crp";
connectAttr "R_Arm_02_Jnt.rpt" "R_Arm_02_Jnt_parentConstraint1.crt";
connectAttr "R_Arm_02_Jnt.jo" "R_Arm_02_Jnt_parentConstraint1.cjo";
connectAttr "R_Arm_02_Ctrl.t" "R_Arm_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Arm_02_Ctrl.rp" "R_Arm_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Arm_02_Ctrl.rpt" "R_Arm_02_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_Arm_02_Ctrl.r" "R_Arm_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Arm_02_Ctrl.ro" "R_Arm_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Arm_02_Ctrl.s" "R_Arm_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Arm_02_Ctrl.pm" "R_Arm_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Arm_02_Jnt_parentConstraint1.w0" "R_Arm_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_01_Jnt.ro" "R_Arm_01_Jnt_parentConstraint1.cro";
connectAttr "R_Arm_01_Jnt.pim" "R_Arm_01_Jnt_parentConstraint1.cpim";
connectAttr "R_Arm_01_Jnt.rp" "R_Arm_01_Jnt_parentConstraint1.crp";
connectAttr "R_Arm_01_Jnt.rpt" "R_Arm_01_Jnt_parentConstraint1.crt";
connectAttr "R_Arm_01_Jnt.jo" "R_Arm_01_Jnt_parentConstraint1.cjo";
connectAttr "R_Arm_01_Ctrl.t" "R_Arm_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Arm_01_Ctrl.rp" "R_Arm_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Arm_01_Ctrl.rpt" "R_Arm_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_Arm_01_Ctrl.r" "R_Arm_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Arm_01_Ctrl.ro" "R_Arm_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Arm_01_Ctrl.s" "R_Arm_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Arm_01_Ctrl.pm" "R_Arm_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Arm_01_Jnt_parentConstraint1.w0" "R_Arm_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Chest_03_Jnt.ro" "Chest_03_Jnt_parentConstraint1.cro";
connectAttr "Chest_03_Jnt.pim" "Chest_03_Jnt_parentConstraint1.cpim";
connectAttr "Chest_03_Jnt.rp" "Chest_03_Jnt_parentConstraint1.crp";
connectAttr "Chest_03_Jnt.rpt" "Chest_03_Jnt_parentConstraint1.crt";
connectAttr "Chest_03_Jnt.jo" "Chest_03_Jnt_parentConstraint1.cjo";
connectAttr "Chest_03_ctrl.t" "Chest_03_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Chest_03_ctrl.rp" "Chest_03_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Chest_03_ctrl.rpt" "Chest_03_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Chest_03_ctrl.r" "Chest_03_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Chest_03_ctrl.ro" "Chest_03_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Chest_03_ctrl.s" "Chest_03_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Chest_03_ctrl.pm" "Chest_03_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Chest_03_Jnt_parentConstraint1.w0" "Chest_03_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Chest_02_Jnt.ro" "Chest_02_Jnt_parentConstraint1.cro";
connectAttr "Chest_02_Jnt.pim" "Chest_02_Jnt_parentConstraint1.cpim";
connectAttr "Chest_02_Jnt.rp" "Chest_02_Jnt_parentConstraint1.crp";
connectAttr "Chest_02_Jnt.rpt" "Chest_02_Jnt_parentConstraint1.crt";
connectAttr "Chest_02_Jnt.jo" "Chest_02_Jnt_parentConstraint1.cjo";
connectAttr "Chest_02_ctrl.t" "Chest_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Chest_02_ctrl.rp" "Chest_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Chest_02_ctrl.rpt" "Chest_02_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Chest_02_ctrl.r" "Chest_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Chest_02_ctrl.ro" "Chest_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Chest_02_ctrl.s" "Chest_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Chest_02_ctrl.pm" "Chest_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Chest_02_Jnt_parentConstraint1.w0" "Chest_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_01_Jnt_scaleX.o" "R_Leg_01_Jnt.sx";
connectAttr "R_Leg_01_Jnt_scaleY.o" "R_Leg_01_Jnt.sy";
connectAttr "R_Leg_01_Jnt_scaleZ.o" "R_Leg_01_Jnt.sz";
connectAttr "Chest_01_Jnt.s" "R_Leg_01_Jnt.is";
connectAttr "R_Leg_01_Jnt_translateX.o" "R_Leg_01_Jnt.tx";
connectAttr "R_Leg_01_Jnt_translateY.o" "R_Leg_01_Jnt.ty";
connectAttr "R_Leg_01_Jnt_translateZ.o" "R_Leg_01_Jnt.tz";
connectAttr "R_Leg_01_Jnt_rotateX.o" "R_Leg_01_Jnt.rx";
connectAttr "R_Leg_01_Jnt_rotateY.o" "R_Leg_01_Jnt.ry";
connectAttr "R_Leg_01_Jnt_rotateZ.o" "R_Leg_01_Jnt.rz";
connectAttr "R_Leg_01_Jnt_visibility.o" "R_Leg_01_Jnt.v";
connectAttr "R_Leg_01_Jnt.s" "R_Leg_02_Jnt.is";
connectAttr "R_Leg_02_Jnt_scaleX.o" "R_Leg_02_Jnt.sx";
connectAttr "R_Leg_02_Jnt_scaleY.o" "R_Leg_02_Jnt.sy";
connectAttr "R_Leg_02_Jnt_scaleZ.o" "R_Leg_02_Jnt.sz";
connectAttr "R_Leg_02_Jnt_translateX.o" "R_Leg_02_Jnt.tx";
connectAttr "R_Leg_02_Jnt_translateY.o" "R_Leg_02_Jnt.ty";
connectAttr "R_Leg_02_Jnt_translateZ.o" "R_Leg_02_Jnt.tz";
connectAttr "R_Leg_02_Jnt_rotateX.o" "R_Leg_02_Jnt.rx";
connectAttr "R_Leg_02_Jnt_rotateY.o" "R_Leg_02_Jnt.ry";
connectAttr "R_Leg_02_Jnt_rotateZ.o" "R_Leg_02_Jnt.rz";
connectAttr "R_Leg_02_Jnt_visibility.o" "R_Leg_02_Jnt.v";
connectAttr "R_Leg_02_Jnt.s" "R_Leg_03_Jnt.is";
connectAttr "R_Leg_03_Jnt_visibility.o" "R_Leg_03_Jnt.v";
connectAttr "R_Leg_03_Jnt_translateX.o" "R_Leg_03_Jnt.tx";
connectAttr "R_Leg_03_Jnt_translateY.o" "R_Leg_03_Jnt.ty";
connectAttr "R_Leg_03_Jnt_translateZ.o" "R_Leg_03_Jnt.tz";
connectAttr "R_Leg_03_Jnt_rotateX.o" "R_Leg_03_Jnt.rx";
connectAttr "R_Leg_03_Jnt_rotateY.o" "R_Leg_03_Jnt.ry";
connectAttr "R_Leg_03_Jnt_rotateZ.o" "R_Leg_03_Jnt.rz";
connectAttr "R_Leg_03_Jnt_scaleX.o" "R_Leg_03_Jnt.sx";
connectAttr "R_Leg_03_Jnt_scaleY.o" "R_Leg_03_Jnt.sy";
connectAttr "R_Leg_03_Jnt_scaleZ.o" "R_Leg_03_Jnt.sz";
connectAttr "R_Leg_02_Jnt.ro" "R_Leg_02_Jnt_parentConstraint1.cro";
connectAttr "R_Leg_02_Jnt.pim" "R_Leg_02_Jnt_parentConstraint1.cpim";
connectAttr "R_Leg_02_Jnt.rp" "R_Leg_02_Jnt_parentConstraint1.crp";
connectAttr "R_Leg_02_Jnt.rpt" "R_Leg_02_Jnt_parentConstraint1.crt";
connectAttr "R_Leg_02_Jnt.jo" "R_Leg_02_Jnt_parentConstraint1.cjo";
connectAttr "R_Leg_02_Ctrl.t" "R_Leg_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Leg_02_Ctrl.rp" "R_Leg_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Leg_02_Ctrl.rpt" "R_Leg_02_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_Leg_02_Ctrl.r" "R_Leg_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Leg_02_Ctrl.ro" "R_Leg_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Leg_02_Ctrl.s" "R_Leg_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Leg_02_Ctrl.pm" "R_Leg_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Leg_02_Jnt_parentConstraint1.w0" "R_Leg_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_01_Jnt.ro" "R_Leg_01_Jnt_parentConstraint1.cro";
connectAttr "R_Leg_01_Jnt.pim" "R_Leg_01_Jnt_parentConstraint1.cpim";
connectAttr "R_Leg_01_Jnt.rp" "R_Leg_01_Jnt_parentConstraint1.crp";
connectAttr "R_Leg_01_Jnt.rpt" "R_Leg_01_Jnt_parentConstraint1.crt";
connectAttr "R_Leg_01_Jnt.jo" "R_Leg_01_Jnt_parentConstraint1.cjo";
connectAttr "R_Leg_01_Ctrl.t" "R_Leg_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Leg_01_Ctrl.rp" "R_Leg_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Leg_01_Ctrl.rpt" "R_Leg_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_Leg_01_Ctrl.r" "R_Leg_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Leg_01_Ctrl.ro" "R_Leg_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Leg_01_Ctrl.s" "R_Leg_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Leg_01_Ctrl.pm" "R_Leg_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Leg_01_Jnt_parentConstraint1.w0" "R_Leg_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_01_Jnt1_scaleX.o" "L_Leg_01_Jnt1.sx";
connectAttr "L_Leg_01_Jnt1_scaleY.o" "L_Leg_01_Jnt1.sy";
connectAttr "L_Leg_01_Jnt1_scaleZ.o" "L_Leg_01_Jnt1.sz";
connectAttr "Chest_01_Jnt.s" "L_Leg_01_Jnt1.is";
connectAttr "L_Leg_01_Jnt1_translateX.o" "L_Leg_01_Jnt1.tx";
connectAttr "L_Leg_01_Jnt1_translateY.o" "L_Leg_01_Jnt1.ty";
connectAttr "L_Leg_01_Jnt1_translateZ.o" "L_Leg_01_Jnt1.tz";
connectAttr "L_Leg_01_Jnt1_rotateX.o" "L_Leg_01_Jnt1.rx";
connectAttr "L_Leg_01_Jnt1_rotateY.o" "L_Leg_01_Jnt1.ry";
connectAttr "L_Leg_01_Jnt1_rotateZ.o" "L_Leg_01_Jnt1.rz";
connectAttr "L_Leg_01_Jnt1_visibility.o" "L_Leg_01_Jnt1.v";
connectAttr "L_Leg_01_Jnt1.s" "L_Leg_02_Jnt.is";
connectAttr "L_Leg_02_Jnt_scaleX.o" "L_Leg_02_Jnt.sx";
connectAttr "L_Leg_02_Jnt_scaleY.o" "L_Leg_02_Jnt.sy";
connectAttr "L_Leg_02_Jnt_scaleZ.o" "L_Leg_02_Jnt.sz";
connectAttr "L_Leg_02_Jnt_translateX.o" "L_Leg_02_Jnt.tx";
connectAttr "L_Leg_02_Jnt_translateY.o" "L_Leg_02_Jnt.ty";
connectAttr "L_Leg_02_Jnt_translateZ.o" "L_Leg_02_Jnt.tz";
connectAttr "L_Leg_02_Jnt_rotateX.o" "L_Leg_02_Jnt.rx";
connectAttr "L_Leg_02_Jnt_rotateY.o" "L_Leg_02_Jnt.ry";
connectAttr "L_Leg_02_Jnt_rotateZ.o" "L_Leg_02_Jnt.rz";
connectAttr "L_Leg_02_Jnt_visibility.o" "L_Leg_02_Jnt.v";
connectAttr "L_Leg_02_Jnt.s" "L_Leg_03_Jnt.is";
connectAttr "L_Leg_03_Jnt_visibility.o" "L_Leg_03_Jnt.v";
connectAttr "L_Leg_03_Jnt_translateX.o" "L_Leg_03_Jnt.tx";
connectAttr "L_Leg_03_Jnt_translateY.o" "L_Leg_03_Jnt.ty";
connectAttr "L_Leg_03_Jnt_translateZ.o" "L_Leg_03_Jnt.tz";
connectAttr "L_Leg_03_Jnt_rotateX.o" "L_Leg_03_Jnt.rx";
connectAttr "L_Leg_03_Jnt_rotateY.o" "L_Leg_03_Jnt.ry";
connectAttr "L_Leg_03_Jnt_rotateZ.o" "L_Leg_03_Jnt.rz";
connectAttr "L_Leg_03_Jnt_scaleX.o" "L_Leg_03_Jnt.sx";
connectAttr "L_Leg_03_Jnt_scaleY.o" "L_Leg_03_Jnt.sy";
connectAttr "L_Leg_03_Jnt_scaleZ.o" "L_Leg_03_Jnt.sz";
connectAttr "L_Leg_02_Jnt.ro" "L_Leg_02_Jnt_parentConstraint1.cro";
connectAttr "L_Leg_02_Jnt.pim" "L_Leg_02_Jnt_parentConstraint1.cpim";
connectAttr "L_Leg_02_Jnt.rp" "L_Leg_02_Jnt_parentConstraint1.crp";
connectAttr "L_Leg_02_Jnt.rpt" "L_Leg_02_Jnt_parentConstraint1.crt";
connectAttr "L_Leg_02_Jnt.jo" "L_Leg_02_Jnt_parentConstraint1.cjo";
connectAttr "L_Leg_01_Ctrl.t" "L_Leg_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Leg_01_Ctrl.rp" "L_Leg_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Leg_01_Ctrl.rpt" "L_Leg_02_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_Leg_01_Ctrl.r" "L_Leg_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Leg_01_Ctrl.ro" "L_Leg_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Leg_01_Ctrl.s" "L_Leg_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Leg_01_Ctrl.pm" "L_Leg_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Leg_02_Jnt_parentConstraint1.w0" "L_Leg_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_01_Jnt1.ro" "L_Leg_01_Jnt1_parentConstraint1.cro";
connectAttr "L_Leg_01_Jnt1.pim" "L_Leg_01_Jnt1_parentConstraint1.cpim";
connectAttr "L_Leg_01_Jnt1.rp" "L_Leg_01_Jnt1_parentConstraint1.crp";
connectAttr "L_Leg_01_Jnt1.rpt" "L_Leg_01_Jnt1_parentConstraint1.crt";
connectAttr "L_Leg_01_Jnt1.jo" "L_Leg_01_Jnt1_parentConstraint1.cjo";
connectAttr "L_Leg_02_Ctrl.t" "L_Leg_01_Jnt1_parentConstraint1.tg[0].tt";
connectAttr "L_Leg_02_Ctrl.rp" "L_Leg_01_Jnt1_parentConstraint1.tg[0].trp";
connectAttr "L_Leg_02_Ctrl.rpt" "L_Leg_01_Jnt1_parentConstraint1.tg[0].trt";
connectAttr "L_Leg_02_Ctrl.r" "L_Leg_01_Jnt1_parentConstraint1.tg[0].tr";
connectAttr "L_Leg_02_Ctrl.ro" "L_Leg_01_Jnt1_parentConstraint1.tg[0].tro";
connectAttr "L_Leg_02_Ctrl.s" "L_Leg_01_Jnt1_parentConstraint1.tg[0].ts";
connectAttr "L_Leg_02_Ctrl.pm" "L_Leg_01_Jnt1_parentConstraint1.tg[0].tpm";
connectAttr "L_Leg_01_Jnt1_parentConstraint1.w0" "L_Leg_01_Jnt1_parentConstraint1.tg[0].tw"
		;
connectAttr "Chest_01_Jnt.ro" "Chest_01_Jnt_parentConstraint1.cro";
connectAttr "Chest_01_Jnt.pim" "Chest_01_Jnt_parentConstraint1.cpim";
connectAttr "Chest_01_Jnt.rp" "Chest_01_Jnt_parentConstraint1.crp";
connectAttr "Chest_01_Jnt.rpt" "Chest_01_Jnt_parentConstraint1.crt";
connectAttr "Chest_01_Jnt.jo" "Chest_01_Jnt_parentConstraint1.cjo";
connectAttr "Chest_01_ctrl.t" "Chest_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Chest_01_ctrl.rp" "Chest_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Chest_01_ctrl.rpt" "Chest_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Chest_01_ctrl.r" "Chest_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Chest_01_ctrl.ro" "Chest_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Chest_01_ctrl.s" "Chest_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Chest_01_ctrl.pm" "Chest_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Chest_01_Jnt_parentConstraint1.w0" "Chest_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Chest_01_ctrl_translateX.o" "Chest_01_ctrl.tx";
connectAttr "Chest_01_ctrl_translateY.o" "Chest_01_ctrl.ty";
connectAttr "Chest_01_ctrl_translateZ.o" "Chest_01_ctrl.tz";
connectAttr "Chest_01_ctrl_rotateX.o" "Chest_01_ctrl.rx";
connectAttr "Chest_01_ctrl_rotateY.o" "Chest_01_ctrl.ry";
connectAttr "Chest_01_ctrl_rotateZ.o" "Chest_01_ctrl.rz";
connectAttr "Chest_01_ctrl_scaleX.o" "Chest_01_ctrl.sx";
connectAttr "Chest_01_ctrl_scaleY.o" "Chest_01_ctrl.sy";
connectAttr "Chest_01_ctrl_scaleZ.o" "Chest_01_ctrl.sz";
connectAttr "Chest_01_ctrl_visibility.o" "Chest_01_ctrl.v";
connectAttr "makeNurbCircle1.oc" "Chest_01_ctrlShape.cr";
connectAttr "Chest_02_ctrl_translateX.o" "Chest_02_ctrl.tx";
connectAttr "Chest_02_ctrl_translateY.o" "Chest_02_ctrl.ty";
connectAttr "Chest_02_ctrl_translateZ.o" "Chest_02_ctrl.tz";
connectAttr "Chest_02_ctrl_rotateX.o" "Chest_02_ctrl.rx";
connectAttr "Chest_02_ctrl_rotateY.o" "Chest_02_ctrl.ry";
connectAttr "Chest_02_ctrl_rotateZ.o" "Chest_02_ctrl.rz";
connectAttr "Chest_02_ctrl_scaleX.o" "Chest_02_ctrl.sx";
connectAttr "Chest_02_ctrl_scaleY.o" "Chest_02_ctrl.sy";
connectAttr "Chest_02_ctrl_scaleZ.o" "Chest_02_ctrl.sz";
connectAttr "Chest_02_ctrl_visibility.o" "Chest_02_ctrl.v";
connectAttr "Chest_03_ctrl_translateX.o" "Chest_03_ctrl.tx";
connectAttr "Chest_03_ctrl_translateY.o" "Chest_03_ctrl.ty";
connectAttr "Chest_03_ctrl_translateZ.o" "Chest_03_ctrl.tz";
connectAttr "Chest_03_ctrl_rotateX.o" "Chest_03_ctrl.rx";
connectAttr "Chest_03_ctrl_rotateY.o" "Chest_03_ctrl.ry";
connectAttr "Chest_03_ctrl_rotateZ.o" "Chest_03_ctrl.rz";
connectAttr "Chest_03_ctrl_scaleX.o" "Chest_03_ctrl.sx";
connectAttr "Chest_03_ctrl_scaleY.o" "Chest_03_ctrl.sy";
connectAttr "Chest_03_ctrl_scaleZ.o" "Chest_03_ctrl.sz";
connectAttr "Chest_03_ctrl_visibility.o" "Chest_03_ctrl.v";
connectAttr "Chest_04_ctrl_translateX.o" "Chest_04_ctrl.tx";
connectAttr "Chest_04_ctrl_translateY.o" "Chest_04_ctrl.ty";
connectAttr "Chest_04_ctrl_translateZ.o" "Chest_04_ctrl.tz";
connectAttr "Chest_04_ctrl_rotateX.o" "Chest_04_ctrl.rx";
connectAttr "Chest_04_ctrl_rotateY.o" "Chest_04_ctrl.ry";
connectAttr "Chest_04_ctrl_rotateZ.o" "Chest_04_ctrl.rz";
connectAttr "Chest_04_ctrl_scaleX.o" "Chest_04_ctrl.sx";
connectAttr "Chest_04_ctrl_scaleY.o" "Chest_04_ctrl.sy";
connectAttr "Chest_04_ctrl_scaleZ.o" "Chest_04_ctrl.sz";
connectAttr "Chest_04_ctrl_visibility.o" "Chest_04_ctrl.v";
connectAttr "L_Arm_01_Ctrl_translateX.o" "L_Arm_01_Ctrl.tx";
connectAttr "L_Arm_01_Ctrl_translateY.o" "L_Arm_01_Ctrl.ty";
connectAttr "L_Arm_01_Ctrl_translateZ.o" "L_Arm_01_Ctrl.tz";
connectAttr "L_Arm_01_Ctrl_rotateX.o" "L_Arm_01_Ctrl.rx";
connectAttr "L_Arm_01_Ctrl_rotateY.o" "L_Arm_01_Ctrl.ry";
connectAttr "L_Arm_01_Ctrl_rotateZ.o" "L_Arm_01_Ctrl.rz";
connectAttr "L_Arm_01_Ctrl_scaleX.o" "L_Arm_01_Ctrl.sx";
connectAttr "L_Arm_01_Ctrl_scaleY.o" "L_Arm_01_Ctrl.sy";
connectAttr "L_Arm_01_Ctrl_scaleZ.o" "L_Arm_01_Ctrl.sz";
connectAttr "L_Arm_01_Ctrl_visibility.o" "L_Arm_01_Ctrl.v";
connectAttr "L_Arm_02_Ctrl_translateX.o" "L_Arm_02_Ctrl.tx";
connectAttr "L_Arm_02_Ctrl_translateY.o" "L_Arm_02_Ctrl.ty";
connectAttr "L_Arm_02_Ctrl_translateZ.o" "L_Arm_02_Ctrl.tz";
connectAttr "L_Arm_02_Ctrl_rotateX.o" "L_Arm_02_Ctrl.rx";
connectAttr "L_Arm_02_Ctrl_rotateY.o" "L_Arm_02_Ctrl.ry";
connectAttr "L_Arm_02_Ctrl_rotateZ.o" "L_Arm_02_Ctrl.rz";
connectAttr "L_Arm_02_Ctrl_scaleX.o" "L_Arm_02_Ctrl.sx";
connectAttr "L_Arm_02_Ctrl_scaleY.o" "L_Arm_02_Ctrl.sy";
connectAttr "L_Arm_02_Ctrl_scaleZ.o" "L_Arm_02_Ctrl.sz";
connectAttr "L_Arm_02_Ctrl_visibility.o" "L_Arm_02_Ctrl.v";
connectAttr "R_Arm_01_Ctrl_translateX.o" "R_Arm_01_Ctrl.tx";
connectAttr "R_Arm_01_Ctrl_translateY.o" "R_Arm_01_Ctrl.ty";
connectAttr "R_Arm_01_Ctrl_translateZ.o" "R_Arm_01_Ctrl.tz";
connectAttr "R_Arm_01_Ctrl_rotateX.o" "R_Arm_01_Ctrl.rx";
connectAttr "R_Arm_01_Ctrl_rotateY.o" "R_Arm_01_Ctrl.ry";
connectAttr "R_Arm_01_Ctrl_rotateZ.o" "R_Arm_01_Ctrl.rz";
connectAttr "R_Arm_01_Ctrl_scaleX.o" "R_Arm_01_Ctrl.sx";
connectAttr "R_Arm_01_Ctrl_scaleY.o" "R_Arm_01_Ctrl.sy";
connectAttr "R_Arm_01_Ctrl_scaleZ.o" "R_Arm_01_Ctrl.sz";
connectAttr "R_Arm_01_Ctrl_visibility.o" "R_Arm_01_Ctrl.v";
connectAttr "R_Arm_02_Ctrl_translateX.o" "R_Arm_02_Ctrl.tx";
connectAttr "R_Arm_02_Ctrl_translateY.o" "R_Arm_02_Ctrl.ty";
connectAttr "R_Arm_02_Ctrl_translateZ.o" "R_Arm_02_Ctrl.tz";
connectAttr "R_Arm_02_Ctrl_rotateX.o" "R_Arm_02_Ctrl.rx";
connectAttr "R_Arm_02_Ctrl_rotateY.o" "R_Arm_02_Ctrl.ry";
connectAttr "R_Arm_02_Ctrl_rotateZ.o" "R_Arm_02_Ctrl.rz";
connectAttr "R_Arm_02_Ctrl_scaleX.o" "R_Arm_02_Ctrl.sx";
connectAttr "R_Arm_02_Ctrl_scaleY.o" "R_Arm_02_Ctrl.sy";
connectAttr "R_Arm_02_Ctrl_scaleZ.o" "R_Arm_02_Ctrl.sz";
connectAttr "R_Arm_02_Ctrl_visibility.o" "R_Arm_02_Ctrl.v";
connectAttr "R_Leg_01_Ctrl_translateX.o" "R_Leg_01_Ctrl.tx";
connectAttr "R_Leg_01_Ctrl_translateY.o" "R_Leg_01_Ctrl.ty";
connectAttr "R_Leg_01_Ctrl_translateZ.o" "R_Leg_01_Ctrl.tz";
connectAttr "R_Leg_01_Ctrl_rotateX.o" "R_Leg_01_Ctrl.rx";
connectAttr "R_Leg_01_Ctrl_rotateY.o" "R_Leg_01_Ctrl.ry";
connectAttr "R_Leg_01_Ctrl_rotateZ.o" "R_Leg_01_Ctrl.rz";
connectAttr "R_Leg_01_Ctrl_scaleX.o" "R_Leg_01_Ctrl.sx";
connectAttr "R_Leg_01_Ctrl_scaleY.o" "R_Leg_01_Ctrl.sy";
connectAttr "R_Leg_01_Ctrl_scaleZ.o" "R_Leg_01_Ctrl.sz";
connectAttr "R_Leg_01_Ctrl_visibility.o" "R_Leg_01_Ctrl.v";
connectAttr "R_Leg_02_Ctrl_translateX.o" "R_Leg_02_Ctrl.tx";
connectAttr "R_Leg_02_Ctrl_translateY.o" "R_Leg_02_Ctrl.ty";
connectAttr "R_Leg_02_Ctrl_translateZ.o" "R_Leg_02_Ctrl.tz";
connectAttr "R_Leg_02_Ctrl_rotateX.o" "R_Leg_02_Ctrl.rx";
connectAttr "R_Leg_02_Ctrl_rotateY.o" "R_Leg_02_Ctrl.ry";
connectAttr "R_Leg_02_Ctrl_rotateZ.o" "R_Leg_02_Ctrl.rz";
connectAttr "R_Leg_02_Ctrl_scaleX.o" "R_Leg_02_Ctrl.sx";
connectAttr "R_Leg_02_Ctrl_scaleY.o" "R_Leg_02_Ctrl.sy";
connectAttr "R_Leg_02_Ctrl_scaleZ.o" "R_Leg_02_Ctrl.sz";
connectAttr "R_Leg_02_Ctrl_visibility.o" "R_Leg_02_Ctrl.v";
connectAttr "L_Leg_02_Ctrl_translateX.o" "L_Leg_02_Ctrl.tx";
connectAttr "L_Leg_02_Ctrl_translateY.o" "L_Leg_02_Ctrl.ty";
connectAttr "L_Leg_02_Ctrl_translateZ.o" "L_Leg_02_Ctrl.tz";
connectAttr "L_Leg_02_Ctrl_rotateX.o" "L_Leg_02_Ctrl.rx";
connectAttr "L_Leg_02_Ctrl_rotateY.o" "L_Leg_02_Ctrl.ry";
connectAttr "L_Leg_02_Ctrl_rotateZ.o" "L_Leg_02_Ctrl.rz";
connectAttr "L_Leg_02_Ctrl_scaleX.o" "L_Leg_02_Ctrl.sx";
connectAttr "L_Leg_02_Ctrl_scaleY.o" "L_Leg_02_Ctrl.sy";
connectAttr "L_Leg_02_Ctrl_scaleZ.o" "L_Leg_02_Ctrl.sz";
connectAttr "L_Leg_02_Ctrl_visibility.o" "L_Leg_02_Ctrl.v";
connectAttr "L_Leg_01_Ctrl_translateX.o" "L_Leg_01_Ctrl.tx";
connectAttr "L_Leg_01_Ctrl_translateY.o" "L_Leg_01_Ctrl.ty";
connectAttr "L_Leg_01_Ctrl_translateZ.o" "L_Leg_01_Ctrl.tz";
connectAttr "L_Leg_01_Ctrl_rotateX.o" "L_Leg_01_Ctrl.rx";
connectAttr "L_Leg_01_Ctrl_rotateY.o" "L_Leg_01_Ctrl.ry";
connectAttr "L_Leg_01_Ctrl_rotateZ.o" "L_Leg_01_Ctrl.rz";
connectAttr "L_Leg_01_Ctrl_scaleX.o" "L_Leg_01_Ctrl.sx";
connectAttr "L_Leg_01_Ctrl_scaleY.o" "L_Leg_01_Ctrl.sy";
connectAttr "L_Leg_01_Ctrl_scaleZ.o" "L_Leg_01_Ctrl.sz";
connectAttr "L_Leg_01_Ctrl_visibility.o" "L_Leg_01_Ctrl.v";
connectAttr "Base_visibility.o" "Base.v";
connectAttr "skinCluster1.og[0]" "BaseShape.i";
connectAttr "groupId5.id" "BaseShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "BaseShape.iog.og[0].gco";
connectAttr "skinCluster1GroupId.id" "BaseShape.iog.og[5].gid";
connectAttr "skinCluster1Set.mwc" "BaseShape.iog.og[5].gco";
connectAttr "groupId28.id" "BaseShape.iog.og[6].gid";
connectAttr "tweakSet9.mwc" "BaseShape.iog.og[6].gco";
connectAttr "tweak9.vl[0].vt[0]" "BaseShape.twl";
connectAttr "Shirt_01_visibility.o" "Shirt_01.v";
connectAttr "skinCluster2.og[0]" "Shirt_01Shape.i";
connectAttr "groupId26.id" "Shirt_01Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Shirt_01Shape.iog.og[0].gco";
connectAttr "skinCluster2GroupId.id" "Shirt_01Shape.iog.og[5].gid";
connectAttr "skinCluster2Set.mwc" "Shirt_01Shape.iog.og[5].gco";
connectAttr "groupId30.id" "Shirt_01Shape.iog.og[6].gid";
connectAttr "tweakSet10.mwc" "Shirt_01Shape.iog.og[6].gco";
connectAttr "tweak10.vl[0].vt[0]" "Shirt_01Shape.twl";
connectAttr "Shirt_02_visibility.o" "Shirt_02.v";
connectAttr "skinCluster3.og[0]" "Shirt_02Shape.i";
connectAttr "groupId11.id" "Shirt_02Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Shirt_02Shape.iog.og[0].gco";
connectAttr "skinCluster3GroupId.id" "Shirt_02Shape.iog.og[5].gid";
connectAttr "skinCluster3Set.mwc" "Shirt_02Shape.iog.og[5].gco";
connectAttr "groupId32.id" "Shirt_02Shape.iog.og[6].gid";
connectAttr "tweakSet11.mwc" "Shirt_02Shape.iog.og[6].gco";
connectAttr "tweak11.vl[0].vt[0]" "Shirt_02Shape.twl";
connectAttr "Shirt_03_visibility.o" "Shirt_03.v";
connectAttr "skinCluster4.og[0]" "Shirt_03Shape.i";
connectAttr "groupId4.id" "Shirt_03Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Shirt_03Shape.iog.og[0].gco";
connectAttr "skinCluster4GroupId.id" "Shirt_03Shape.iog.og[5].gid";
connectAttr "skinCluster4Set.mwc" "Shirt_03Shape.iog.og[5].gco";
connectAttr "groupId34.id" "Shirt_03Shape.iog.og[6].gid";
connectAttr "tweakSet12.mwc" "Shirt_03Shape.iog.og[6].gco";
connectAttr "tweak12.vl[0].vt[0]" "Shirt_03Shape.twl";
connectAttr "polyDelEdge2.out" "Shirt_03ShapeOrig.i";
connectAttr "Pants_01_visibility.o" "Pants_01.v";
connectAttr "skinCluster5GroupId.id" "Pants_0Shape1.iog.og[4].gid";
connectAttr "skinCluster5Set.mwc" "Pants_0Shape1.iog.og[4].gco";
connectAttr "groupId36.id" "Pants_0Shape1.iog.og[5].gid";
connectAttr "tweakSet13.mwc" "Pants_0Shape1.iog.og[5].gco";
connectAttr "skinCluster5.og[0]" "Pants_0Shape1.i";
connectAttr "tweak13.vl[0].vt[0]" "Pants_0Shape1.twl";
connectAttr "polyMirror1.out" "Pants_0Shape1Orig.i";
connectAttr "Pants_02_visibility.o" "Pants_02.v";
connectAttr "groupId19.id" "Pants_0Shape2.iog.og[1].gid";
connectAttr "tweakSet6.mwc" "Pants_0Shape2.iog.og[1].gco";
connectAttr "skinCluster6GroupId.id" "Pants_0Shape2.iog.og[3].gid";
connectAttr "skinCluster6Set.mwc" "Pants_0Shape2.iog.og[3].gco";
connectAttr "skinCluster6.og[0]" "Pants_0Shape2.i";
connectAttr "tweak6.vl[0].vt[0]" "Pants_0Shape2.twl";
connectAttr "polyExtrudeFace9.out" "Pants_0Shape2Orig.i";
connectAttr "HeadPiece_01_visibility.o" "HeadPiece_01.v";
connectAttr "skinCluster7GroupId.id" "HeadPiece_0Shape1.iog.og[4].gid";
connectAttr "skinCluster7Set.mwc" "HeadPiece_0Shape1.iog.og[4].gco";
connectAttr "groupId38.id" "HeadPiece_0Shape1.iog.og[5].gid";
connectAttr "tweakSet14.mwc" "HeadPiece_0Shape1.iog.og[5].gco";
connectAttr "skinCluster7.og[0]" "HeadPiece_0Shape1.i";
connectAttr "tweak14.vl[0].vt[0]" "HeadPiece_0Shape1.twl";
connectAttr "polySphere1.out" "HeadPiece_0Shape1Orig.i";
connectAttr "HeadPiece_02_visibility.o" "HeadPiece_02.v";
connectAttr "groupId23.id" "HeadPiece_0Shape2.iog.og[1].gid";
connectAttr "tweakSet8.mwc" "HeadPiece_0Shape2.iog.og[1].gco";
connectAttr "skinCluster8GroupId.id" "HeadPiece_0Shape2.iog.og[3].gid";
connectAttr "skinCluster8Set.mwc" "HeadPiece_0Shape2.iog.og[3].gco";
connectAttr "skinCluster8.og[0]" "HeadPiece_0Shape2.i";
connectAttr "tweak8.vl[0].vt[0]" "HeadPiece_0Shape2.twl";
connectAttr "polyExtrudeFace10.out" "HeadPiece_0Shape2Orig.i";
connectAttr "HeadPiece_03_visibility.o" "HeadPiece_03.v";
connectAttr "skinCluster9GroupId.id" "HeadPiece_0Shape3.iog.og[6].gid";
connectAttr "skinCluster9Set.mwc" "HeadPiece_0Shape3.iog.og[6].gco";
connectAttr "groupId40.id" "HeadPiece_0Shape3.iog.og[7].gid";
connectAttr "tweakSet15.mwc" "HeadPiece_0Shape3.iog.og[7].gco";
connectAttr "skinCluster9.og[0]" "HeadPiece_0Shape3.i";
connectAttr "tweak15.vl[0].vt[0]" "HeadPiece_0Shape3.twl";
connectAttr "polyCone1.out" "HeadPiece_0Shape3Orig.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurfaceShape1.o" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "groupParts1.ig";
connectAttr "groupParts1.og" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "polyCloseBorder2.ip";
connectAttr "polyCloseBorder2.out" "groupParts2.ig";
connectAttr "groupId4.id" "groupParts2.gi";
connectAttr "groupParts2.og" "polyDelEdge2.ip";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "Pants_0Shape1.wm" "polySplitRing1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polySplitRing1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polySplitRing2.ip";
connectAttr "Pants_0Shape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polyExtrudeFace1.ip";
connectAttr "Pants_0Shape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "Pants_0Shape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace3.ip";
connectAttr "Pants_0Shape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace4.ip";
connectAttr "Pants_0Shape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyMirror1.ip";
connectAttr "Pants_01.sp" "polyMirror1.sp";
connectAttr "Pants_0Shape1.wm" "polyMirror1.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak5.ip";
connectAttr "polySurfaceShape2.o" "polyExtrudeFace5.ip";
connectAttr "Pants_0Shape2.wm" "polyExtrudeFace5.mp";
connectAttr "polyTweak6.out" "polyExtrudeFace6.ip";
connectAttr "Pants_0Shape2.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace7.ip";
connectAttr "Pants_0Shape2.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace8.ip";
connectAttr "Pants_0Shape2.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace9.ip";
connectAttr "Pants_0Shape2.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polySplitRing3.ip";
connectAttr "HeadPiece_0Shape2.wm" "polySplitRing3.mp";
connectAttr "polyCube2.out" "polyTweak10.ip";
connectAttr "polySplitRing3.out" "polyExtrudeFace10.ip";
connectAttr "HeadPiece_0Shape2.wm" "polyExtrudeFace10.mp";
connectAttr "BaseShapeOrig.w" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "pasted__renderLayerManager.rlmi[0]" "pasted__defaultRenderLayer.rlid"
		;
connectAttr "Shirt_02ShapeOrig.w" "groupParts9.ig";
connectAttr "groupId11.id" "groupParts9.gi";
connectAttr "groupParts17.og" "tweak6.ip[0].ig";
connectAttr "groupId19.id" "tweak6.ip[0].gi";
connectAttr "groupId19.msg" "tweakSet6.gn" -na;
connectAttr "Pants_0Shape2.iog.og[1]" "tweakSet6.dsm" -na;
connectAttr "tweak6.msg" "tweakSet6.ub[0]";
connectAttr "Pants_0Shape2Orig.w" "groupParts17.ig";
connectAttr "groupId19.id" "groupParts17.gi";
connectAttr "groupParts21.og" "tweak8.ip[0].ig";
connectAttr "groupId23.id" "tweak8.ip[0].gi";
connectAttr "groupId23.msg" "tweakSet8.gn" -na;
connectAttr "HeadPiece_0Shape2.iog.og[1]" "tweakSet8.dsm" -na;
connectAttr "tweak8.msg" "tweakSet8.ub[0]";
connectAttr "HeadPiece_0Shape2Orig.w" "groupParts21.ig";
connectAttr "groupId23.id" "groupParts21.gi";
connectAttr "Shirt_01ShapeOrig.w" "groupParts24.ig";
connectAttr "groupId26.id" "groupParts24.gi";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Chest_01_Jnt.wm" "skinCluster1.ma[0]";
connectAttr "Chest_02_Jnt.wm" "skinCluster1.ma[1]";
connectAttr "Chest_03_Jnt.wm" "skinCluster1.ma[2]";
connectAttr "Chest_04_Jnt.wm" "skinCluster1.ma[3]";
connectAttr "L_Arm_01_Jnt.wm" "skinCluster1.ma[4]";
connectAttr "L_Arm_02_Jnt.wm" "skinCluster1.ma[5]";
connectAttr "L_Arm_03_Jnt.wm" "skinCluster1.ma[6]";
connectAttr "R_Arm_01_Jnt.wm" "skinCluster1.ma[7]";
connectAttr "R_Arm_02_Jnt.wm" "skinCluster1.ma[8]";
connectAttr "R_Arm_03_Jnt.wm" "skinCluster1.ma[9]";
connectAttr "R_Leg_01_Jnt.wm" "skinCluster1.ma[10]";
connectAttr "R_Leg_02_Jnt.wm" "skinCluster1.ma[11]";
connectAttr "R_Leg_03_Jnt.wm" "skinCluster1.ma[12]";
connectAttr "L_Leg_01_Jnt1.wm" "skinCluster1.ma[13]";
connectAttr "L_Leg_02_Jnt.wm" "skinCluster1.ma[14]";
connectAttr "L_Leg_03_Jnt.wm" "skinCluster1.ma[15]";
connectAttr "Chest_01_Jnt.liw" "skinCluster1.lw[0]";
connectAttr "Chest_02_Jnt.liw" "skinCluster1.lw[1]";
connectAttr "Chest_03_Jnt.liw" "skinCluster1.lw[2]";
connectAttr "Chest_04_Jnt.liw" "skinCluster1.lw[3]";
connectAttr "L_Arm_01_Jnt.liw" "skinCluster1.lw[4]";
connectAttr "L_Arm_02_Jnt.liw" "skinCluster1.lw[5]";
connectAttr "L_Arm_03_Jnt.liw" "skinCluster1.lw[6]";
connectAttr "R_Arm_01_Jnt.liw" "skinCluster1.lw[7]";
connectAttr "R_Arm_02_Jnt.liw" "skinCluster1.lw[8]";
connectAttr "R_Arm_03_Jnt.liw" "skinCluster1.lw[9]";
connectAttr "R_Leg_01_Jnt.liw" "skinCluster1.lw[10]";
connectAttr "R_Leg_02_Jnt.liw" "skinCluster1.lw[11]";
connectAttr "R_Leg_03_Jnt.liw" "skinCluster1.lw[12]";
connectAttr "L_Leg_01_Jnt1.liw" "skinCluster1.lw[13]";
connectAttr "L_Leg_02_Jnt.liw" "skinCluster1.lw[14]";
connectAttr "L_Leg_03_Jnt.liw" "skinCluster1.lw[15]";
connectAttr "Chest_01_Jnt.obcc" "skinCluster1.ifcl[0]";
connectAttr "Chest_02_Jnt.obcc" "skinCluster1.ifcl[1]";
connectAttr "Chest_03_Jnt.obcc" "skinCluster1.ifcl[2]";
connectAttr "Chest_04_Jnt.obcc" "skinCluster1.ifcl[3]";
connectAttr "L_Arm_01_Jnt.obcc" "skinCluster1.ifcl[4]";
connectAttr "L_Arm_02_Jnt.obcc" "skinCluster1.ifcl[5]";
connectAttr "L_Arm_03_Jnt.obcc" "skinCluster1.ifcl[6]";
connectAttr "R_Arm_01_Jnt.obcc" "skinCluster1.ifcl[7]";
connectAttr "R_Arm_02_Jnt.obcc" "skinCluster1.ifcl[8]";
connectAttr "R_Arm_03_Jnt.obcc" "skinCluster1.ifcl[9]";
connectAttr "R_Leg_01_Jnt.obcc" "skinCluster1.ifcl[10]";
connectAttr "R_Leg_02_Jnt.obcc" "skinCluster1.ifcl[11]";
connectAttr "R_Leg_03_Jnt.obcc" "skinCluster1.ifcl[12]";
connectAttr "L_Leg_01_Jnt1.obcc" "skinCluster1.ifcl[13]";
connectAttr "L_Leg_02_Jnt.obcc" "skinCluster1.ifcl[14]";
connectAttr "L_Leg_03_Jnt.obcc" "skinCluster1.ifcl[15]";
connectAttr "L_Leg_02_Jnt.msg" "skinCluster1.ptt";
connectAttr "groupParts26.og" "tweak9.ip[0].ig";
connectAttr "groupId28.id" "tweak9.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "BaseShape.iog.og[5]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak9.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId28.msg" "tweakSet9.gn" -na;
connectAttr "BaseShape.iog.og[6]" "tweakSet9.dsm" -na;
connectAttr "tweak9.msg" "tweakSet9.ub[0]";
connectAttr "groupParts3.og" "groupParts26.ig";
connectAttr "groupId28.id" "groupParts26.gi";
connectAttr "TestClothes.msg" "bindPose1.m[0]";
connectAttr "Chest_01_Jnt.msg" "bindPose1.m[1]";
connectAttr "Chest_02_Jnt.msg" "bindPose1.m[2]";
connectAttr "Chest_03_Jnt.msg" "bindPose1.m[3]";
connectAttr "Chest_04_Jnt.msg" "bindPose1.m[4]";
connectAttr "L_Arm_01_Jnt.msg" "bindPose1.m[5]";
connectAttr "L_Arm_02_Jnt.msg" "bindPose1.m[6]";
connectAttr "L_Arm_03_Jnt.msg" "bindPose1.m[7]";
connectAttr "R_Arm_01_Jnt.msg" "bindPose1.m[8]";
connectAttr "R_Arm_02_Jnt.msg" "bindPose1.m[9]";
connectAttr "R_Arm_03_Jnt.msg" "bindPose1.m[10]";
connectAttr "R_Leg_01_Jnt.msg" "bindPose1.m[11]";
connectAttr "R_Leg_02_Jnt.msg" "bindPose1.m[12]";
connectAttr "R_Leg_03_Jnt.msg" "bindPose1.m[13]";
connectAttr "L_Leg_01_Jnt1.msg" "bindPose1.m[14]";
connectAttr "L_Leg_02_Jnt.msg" "bindPose1.m[15]";
connectAttr "L_Leg_03_Jnt.msg" "bindPose1.m[16]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[3]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[3]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[1]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[1]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "Chest_01_Jnt.bps" "bindPose1.wm[1]";
connectAttr "Chest_02_Jnt.bps" "bindPose1.wm[2]";
connectAttr "Chest_03_Jnt.bps" "bindPose1.wm[3]";
connectAttr "Chest_04_Jnt.bps" "bindPose1.wm[4]";
connectAttr "L_Arm_01_Jnt.bps" "bindPose1.wm[5]";
connectAttr "L_Arm_02_Jnt.bps" "bindPose1.wm[6]";
connectAttr "L_Arm_03_Jnt.bps" "bindPose1.wm[7]";
connectAttr "R_Arm_01_Jnt.bps" "bindPose1.wm[8]";
connectAttr "R_Arm_02_Jnt.bps" "bindPose1.wm[9]";
connectAttr "R_Arm_03_Jnt.bps" "bindPose1.wm[10]";
connectAttr "R_Leg_01_Jnt.bps" "bindPose1.wm[11]";
connectAttr "R_Leg_02_Jnt.bps" "bindPose1.wm[12]";
connectAttr "R_Leg_03_Jnt.bps" "bindPose1.wm[13]";
connectAttr "L_Leg_01_Jnt1.bps" "bindPose1.wm[14]";
connectAttr "L_Leg_02_Jnt.bps" "bindPose1.wm[15]";
connectAttr "L_Leg_03_Jnt.bps" "bindPose1.wm[16]";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "Chest_01_Jnt.wm" "skinCluster2.ma[0]";
connectAttr "Chest_02_Jnt.wm" "skinCluster2.ma[1]";
connectAttr "Chest_03_Jnt.wm" "skinCluster2.ma[2]";
connectAttr "Chest_04_Jnt.wm" "skinCluster2.ma[3]";
connectAttr "L_Arm_01_Jnt.wm" "skinCluster2.ma[4]";
connectAttr "L_Arm_02_Jnt.wm" "skinCluster2.ma[5]";
connectAttr "L_Arm_03_Jnt.wm" "skinCluster2.ma[6]";
connectAttr "R_Arm_01_Jnt.wm" "skinCluster2.ma[7]";
connectAttr "R_Arm_02_Jnt.wm" "skinCluster2.ma[8]";
connectAttr "R_Arm_03_Jnt.wm" "skinCluster2.ma[9]";
connectAttr "R_Leg_01_Jnt.wm" "skinCluster2.ma[10]";
connectAttr "L_Leg_01_Jnt1.wm" "skinCluster2.ma[13]";
connectAttr "Chest_01_Jnt.liw" "skinCluster2.lw[0]";
connectAttr "Chest_02_Jnt.liw" "skinCluster2.lw[1]";
connectAttr "Chest_03_Jnt.liw" "skinCluster2.lw[2]";
connectAttr "Chest_04_Jnt.liw" "skinCluster2.lw[3]";
connectAttr "L_Arm_01_Jnt.liw" "skinCluster2.lw[4]";
connectAttr "L_Arm_02_Jnt.liw" "skinCluster2.lw[5]";
connectAttr "L_Arm_03_Jnt.liw" "skinCluster2.lw[6]";
connectAttr "R_Arm_01_Jnt.liw" "skinCluster2.lw[7]";
connectAttr "R_Arm_02_Jnt.liw" "skinCluster2.lw[8]";
connectAttr "R_Arm_03_Jnt.liw" "skinCluster2.lw[9]";
connectAttr "R_Leg_01_Jnt.liw" "skinCluster2.lw[10]";
connectAttr "L_Leg_01_Jnt1.liw" "skinCluster2.lw[13]";
connectAttr "Chest_01_Jnt.obcc" "skinCluster2.ifcl[0]";
connectAttr "Chest_02_Jnt.obcc" "skinCluster2.ifcl[1]";
connectAttr "Chest_03_Jnt.obcc" "skinCluster2.ifcl[2]";
connectAttr "Chest_04_Jnt.obcc" "skinCluster2.ifcl[3]";
connectAttr "L_Arm_01_Jnt.obcc" "skinCluster2.ifcl[4]";
connectAttr "L_Arm_02_Jnt.obcc" "skinCluster2.ifcl[5]";
connectAttr "L_Arm_03_Jnt.obcc" "skinCluster2.ifcl[6]";
connectAttr "R_Arm_01_Jnt.obcc" "skinCluster2.ifcl[7]";
connectAttr "R_Arm_02_Jnt.obcc" "skinCluster2.ifcl[8]";
connectAttr "R_Arm_03_Jnt.obcc" "skinCluster2.ifcl[9]";
connectAttr "R_Leg_01_Jnt.obcc" "skinCluster2.ifcl[10]";
connectAttr "L_Leg_01_Jnt1.obcc" "skinCluster2.ifcl[13]";
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "L_Arm_01_Jnt.msg" "skinCluster2.ptt";
connectAttr "groupParts28.og" "tweak10.ip[0].ig";
connectAttr "groupId30.id" "tweak10.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "Shirt_01Shape.iog.og[5]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak10.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId30.msg" "tweakSet10.gn" -na;
connectAttr "Shirt_01Shape.iog.og[6]" "tweakSet10.dsm" -na;
connectAttr "tweak10.msg" "tweakSet10.ub[0]";
connectAttr "groupParts24.og" "groupParts28.ig";
connectAttr "groupId30.id" "groupParts28.gi";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "Chest_01_Jnt.wm" "skinCluster3.ma[0]";
connectAttr "Chest_02_Jnt.wm" "skinCluster3.ma[1]";
connectAttr "Chest_03_Jnt.wm" "skinCluster3.ma[2]";
connectAttr "Chest_04_Jnt.wm" "skinCluster3.ma[3]";
connectAttr "L_Arm_01_Jnt.wm" "skinCluster3.ma[4]";
connectAttr "L_Arm_02_Jnt.wm" "skinCluster3.ma[5]";
connectAttr "L_Arm_03_Jnt.wm" "skinCluster3.ma[6]";
connectAttr "R_Arm_01_Jnt.wm" "skinCluster3.ma[7]";
connectAttr "R_Arm_02_Jnt.wm" "skinCluster3.ma[8]";
connectAttr "R_Arm_03_Jnt.wm" "skinCluster3.ma[9]";
connectAttr "R_Leg_01_Jnt.wm" "skinCluster3.ma[10]";
connectAttr "L_Leg_01_Jnt1.wm" "skinCluster3.ma[13]";
connectAttr "Chest_01_Jnt.liw" "skinCluster3.lw[0]";
connectAttr "Chest_02_Jnt.liw" "skinCluster3.lw[1]";
connectAttr "Chest_03_Jnt.liw" "skinCluster3.lw[2]";
connectAttr "Chest_04_Jnt.liw" "skinCluster3.lw[3]";
connectAttr "L_Arm_01_Jnt.liw" "skinCluster3.lw[4]";
connectAttr "L_Arm_02_Jnt.liw" "skinCluster3.lw[5]";
connectAttr "L_Arm_03_Jnt.liw" "skinCluster3.lw[6]";
connectAttr "R_Arm_01_Jnt.liw" "skinCluster3.lw[7]";
connectAttr "R_Arm_02_Jnt.liw" "skinCluster3.lw[8]";
connectAttr "R_Arm_03_Jnt.liw" "skinCluster3.lw[9]";
connectAttr "R_Leg_01_Jnt.liw" "skinCluster3.lw[10]";
connectAttr "L_Leg_01_Jnt1.liw" "skinCluster3.lw[13]";
connectAttr "Chest_01_Jnt.obcc" "skinCluster3.ifcl[0]";
connectAttr "Chest_02_Jnt.obcc" "skinCluster3.ifcl[1]";
connectAttr "Chest_03_Jnt.obcc" "skinCluster3.ifcl[2]";
connectAttr "Chest_04_Jnt.obcc" "skinCluster3.ifcl[3]";
connectAttr "L_Arm_01_Jnt.obcc" "skinCluster3.ifcl[4]";
connectAttr "L_Arm_02_Jnt.obcc" "skinCluster3.ifcl[5]";
connectAttr "L_Arm_03_Jnt.obcc" "skinCluster3.ifcl[6]";
connectAttr "R_Arm_01_Jnt.obcc" "skinCluster3.ifcl[7]";
connectAttr "R_Arm_02_Jnt.obcc" "skinCluster3.ifcl[8]";
connectAttr "R_Arm_03_Jnt.obcc" "skinCluster3.ifcl[9]";
connectAttr "R_Leg_01_Jnt.obcc" "skinCluster3.ifcl[10]";
connectAttr "L_Leg_01_Jnt1.obcc" "skinCluster3.ifcl[13]";
connectAttr "bindPose1.msg" "skinCluster3.bp";
connectAttr "L_Arm_02_Jnt.msg" "skinCluster3.ptt";
connectAttr "groupParts30.og" "tweak11.ip[0].ig";
connectAttr "groupId32.id" "tweak11.ip[0].gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "Shirt_02Shape.iog.og[5]" "skinCluster3Set.dsm" -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak11.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupId32.msg" "tweakSet11.gn" -na;
connectAttr "Shirt_02Shape.iog.og[6]" "tweakSet11.dsm" -na;
connectAttr "tweak11.msg" "tweakSet11.ub[0]";
connectAttr "groupParts9.og" "groupParts30.ig";
connectAttr "groupId32.id" "groupParts30.gi";
connectAttr "skinCluster4GroupParts.og" "skinCluster4.ip[0].ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4.ip[0].gi";
connectAttr "Chest_01_Jnt.wm" "skinCluster4.ma[0]";
connectAttr "Chest_02_Jnt.wm" "skinCluster4.ma[1]";
connectAttr "Chest_03_Jnt.wm" "skinCluster4.ma[2]";
connectAttr "Chest_04_Jnt.wm" "skinCluster4.ma[3]";
connectAttr "L_Arm_01_Jnt.wm" "skinCluster4.ma[4]";
connectAttr "L_Arm_02_Jnt.wm" "skinCluster4.ma[5]";
connectAttr "R_Arm_01_Jnt.wm" "skinCluster4.ma[7]";
connectAttr "R_Arm_02_Jnt.wm" "skinCluster4.ma[8]";
connectAttr "R_Leg_01_Jnt.wm" "skinCluster4.ma[10]";
connectAttr "L_Leg_01_Jnt1.wm" "skinCluster4.ma[13]";
connectAttr "Chest_01_Jnt.liw" "skinCluster4.lw[0]";
connectAttr "Chest_02_Jnt.liw" "skinCluster4.lw[1]";
connectAttr "Chest_03_Jnt.liw" "skinCluster4.lw[2]";
connectAttr "Chest_04_Jnt.liw" "skinCluster4.lw[3]";
connectAttr "L_Arm_01_Jnt.liw" "skinCluster4.lw[4]";
connectAttr "L_Arm_02_Jnt.liw" "skinCluster4.lw[5]";
connectAttr "R_Arm_01_Jnt.liw" "skinCluster4.lw[7]";
connectAttr "R_Arm_02_Jnt.liw" "skinCluster4.lw[8]";
connectAttr "R_Leg_01_Jnt.liw" "skinCluster4.lw[10]";
connectAttr "L_Leg_01_Jnt1.liw" "skinCluster4.lw[13]";
connectAttr "Chest_01_Jnt.obcc" "skinCluster4.ifcl[0]";
connectAttr "Chest_02_Jnt.obcc" "skinCluster4.ifcl[1]";
connectAttr "Chest_03_Jnt.obcc" "skinCluster4.ifcl[2]";
connectAttr "Chest_04_Jnt.obcc" "skinCluster4.ifcl[3]";
connectAttr "L_Arm_01_Jnt.obcc" "skinCluster4.ifcl[4]";
connectAttr "L_Arm_02_Jnt.obcc" "skinCluster4.ifcl[5]";
connectAttr "R_Arm_01_Jnt.obcc" "skinCluster4.ifcl[7]";
connectAttr "R_Arm_02_Jnt.obcc" "skinCluster4.ifcl[8]";
connectAttr "R_Leg_01_Jnt.obcc" "skinCluster4.ifcl[10]";
connectAttr "L_Leg_01_Jnt1.obcc" "skinCluster4.ifcl[13]";
connectAttr "bindPose1.msg" "skinCluster4.bp";
connectAttr "Chest_01_Jnt.msg" "skinCluster4.ptt";
connectAttr "groupParts32.og" "tweak12.ip[0].ig";
connectAttr "groupId34.id" "tweak12.ip[0].gi";
connectAttr "skinCluster4GroupId.msg" "skinCluster4Set.gn" -na;
connectAttr "Shirt_03Shape.iog.og[5]" "skinCluster4Set.dsm" -na;
connectAttr "skinCluster4.msg" "skinCluster4Set.ub[0]";
connectAttr "tweak12.og[0]" "skinCluster4GroupParts.ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4GroupParts.gi";
connectAttr "groupId34.msg" "tweakSet12.gn" -na;
connectAttr "Shirt_03Shape.iog.og[6]" "tweakSet12.dsm" -na;
connectAttr "tweak12.msg" "tweakSet12.ub[0]";
connectAttr "Shirt_03ShapeOrig.w" "groupParts32.ig";
connectAttr "groupId34.id" "groupParts32.gi";
connectAttr "skinCluster5GroupParts.og" "skinCluster5.ip[0].ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5.ip[0].gi";
connectAttr "Chest_01_Jnt.wm" "skinCluster5.ma[0]";
connectAttr "Chest_02_Jnt.wm" "skinCluster5.ma[1]";
connectAttr "Chest_03_Jnt.wm" "skinCluster5.ma[2]";
connectAttr "L_Arm_01_Jnt.wm" "skinCluster5.ma[4]";
connectAttr "R_Arm_01_Jnt.wm" "skinCluster5.ma[7]";
connectAttr "R_Leg_01_Jnt.wm" "skinCluster5.ma[10]";
connectAttr "R_Leg_02_Jnt.wm" "skinCluster5.ma[11]";
connectAttr "R_Leg_03_Jnt.wm" "skinCluster5.ma[12]";
connectAttr "L_Leg_01_Jnt1.wm" "skinCluster5.ma[13]";
connectAttr "L_Leg_02_Jnt.wm" "skinCluster5.ma[14]";
connectAttr "L_Leg_03_Jnt.wm" "skinCluster5.ma[15]";
connectAttr "Chest_01_Jnt.liw" "skinCluster5.lw[0]";
connectAttr "Chest_02_Jnt.liw" "skinCluster5.lw[1]";
connectAttr "Chest_03_Jnt.liw" "skinCluster5.lw[2]";
connectAttr "L_Arm_01_Jnt.liw" "skinCluster5.lw[4]";
connectAttr "R_Arm_01_Jnt.liw" "skinCluster5.lw[7]";
connectAttr "R_Leg_01_Jnt.liw" "skinCluster5.lw[10]";
connectAttr "R_Leg_02_Jnt.liw" "skinCluster5.lw[11]";
connectAttr "R_Leg_03_Jnt.liw" "skinCluster5.lw[12]";
connectAttr "L_Leg_01_Jnt1.liw" "skinCluster5.lw[13]";
connectAttr "L_Leg_02_Jnt.liw" "skinCluster5.lw[14]";
connectAttr "L_Leg_03_Jnt.liw" "skinCluster5.lw[15]";
connectAttr "Chest_01_Jnt.obcc" "skinCluster5.ifcl[0]";
connectAttr "Chest_02_Jnt.obcc" "skinCluster5.ifcl[1]";
connectAttr "Chest_03_Jnt.obcc" "skinCluster5.ifcl[2]";
connectAttr "L_Arm_01_Jnt.obcc" "skinCluster5.ifcl[4]";
connectAttr "R_Arm_01_Jnt.obcc" "skinCluster5.ifcl[7]";
connectAttr "R_Leg_01_Jnt.obcc" "skinCluster5.ifcl[10]";
connectAttr "R_Leg_02_Jnt.obcc" "skinCluster5.ifcl[11]";
connectAttr "R_Leg_03_Jnt.obcc" "skinCluster5.ifcl[12]";
connectAttr "L_Leg_01_Jnt1.obcc" "skinCluster5.ifcl[13]";
connectAttr "L_Leg_02_Jnt.obcc" "skinCluster5.ifcl[14]";
connectAttr "L_Leg_03_Jnt.obcc" "skinCluster5.ifcl[15]";
connectAttr "bindPose1.msg" "skinCluster5.bp";
connectAttr "L_Leg_01_Jnt1.msg" "skinCluster5.ptt";
connectAttr "groupParts34.og" "tweak13.ip[0].ig";
connectAttr "groupId36.id" "tweak13.ip[0].gi";
connectAttr "skinCluster5GroupId.msg" "skinCluster5Set.gn" -na;
connectAttr "Pants_0Shape1.iog.og[4]" "skinCluster5Set.dsm" -na;
connectAttr "skinCluster5.msg" "skinCluster5Set.ub[0]";
connectAttr "tweak13.og[0]" "skinCluster5GroupParts.ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5GroupParts.gi";
connectAttr "groupId36.msg" "tweakSet13.gn" -na;
connectAttr "Pants_0Shape1.iog.og[5]" "tweakSet13.dsm" -na;
connectAttr "tweak13.msg" "tweakSet13.ub[0]";
connectAttr "Pants_0Shape1Orig.w" "groupParts34.ig";
connectAttr "groupId36.id" "groupParts34.gi";
connectAttr "skinCluster6GroupParts.og" "skinCluster6.ip[0].ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6.ip[0].gi";
connectAttr "Chest_01_Jnt.wm" "skinCluster6.ma[0]";
connectAttr "Chest_02_Jnt.wm" "skinCluster6.ma[1]";
connectAttr "Chest_03_Jnt.wm" "skinCluster6.ma[2]";
connectAttr "L_Arm_01_Jnt.wm" "skinCluster6.ma[4]";
connectAttr "R_Arm_01_Jnt.wm" "skinCluster6.ma[7]";
connectAttr "R_Leg_01_Jnt.wm" "skinCluster6.ma[10]";
connectAttr "R_Leg_02_Jnt.wm" "skinCluster6.ma[11]";
connectAttr "R_Leg_03_Jnt.wm" "skinCluster6.ma[12]";
connectAttr "L_Leg_01_Jnt1.wm" "skinCluster6.ma[13]";
connectAttr "L_Leg_02_Jnt.wm" "skinCluster6.ma[14]";
connectAttr "L_Leg_03_Jnt.wm" "skinCluster6.ma[15]";
connectAttr "Chest_01_Jnt.liw" "skinCluster6.lw[0]";
connectAttr "Chest_02_Jnt.liw" "skinCluster6.lw[1]";
connectAttr "Chest_03_Jnt.liw" "skinCluster6.lw[2]";
connectAttr "L_Arm_01_Jnt.liw" "skinCluster6.lw[4]";
connectAttr "R_Arm_01_Jnt.liw" "skinCluster6.lw[7]";
connectAttr "R_Leg_01_Jnt.liw" "skinCluster6.lw[10]";
connectAttr "R_Leg_02_Jnt.liw" "skinCluster6.lw[11]";
connectAttr "R_Leg_03_Jnt.liw" "skinCluster6.lw[12]";
connectAttr "L_Leg_01_Jnt1.liw" "skinCluster6.lw[13]";
connectAttr "L_Leg_02_Jnt.liw" "skinCluster6.lw[14]";
connectAttr "L_Leg_03_Jnt.liw" "skinCluster6.lw[15]";
connectAttr "Chest_01_Jnt.obcc" "skinCluster6.ifcl[0]";
connectAttr "Chest_02_Jnt.obcc" "skinCluster6.ifcl[1]";
connectAttr "Chest_03_Jnt.obcc" "skinCluster6.ifcl[2]";
connectAttr "L_Arm_01_Jnt.obcc" "skinCluster6.ifcl[4]";
connectAttr "R_Arm_01_Jnt.obcc" "skinCluster6.ifcl[7]";
connectAttr "R_Leg_01_Jnt.obcc" "skinCluster6.ifcl[10]";
connectAttr "R_Leg_02_Jnt.obcc" "skinCluster6.ifcl[11]";
connectAttr "R_Leg_03_Jnt.obcc" "skinCluster6.ifcl[12]";
connectAttr "L_Leg_01_Jnt1.obcc" "skinCluster6.ifcl[13]";
connectAttr "L_Leg_02_Jnt.obcc" "skinCluster6.ifcl[14]";
connectAttr "L_Leg_03_Jnt.obcc" "skinCluster6.ifcl[15]";
connectAttr "bindPose1.msg" "skinCluster6.bp";
connectAttr "L_Leg_02_Jnt.msg" "skinCluster6.ptt";
connectAttr "skinCluster6GroupId.msg" "skinCluster6Set.gn" -na;
connectAttr "Pants_0Shape2.iog.og[3]" "skinCluster6Set.dsm" -na;
connectAttr "skinCluster6.msg" "skinCluster6Set.ub[0]";
connectAttr "tweak6.og[0]" "skinCluster6GroupParts.ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6GroupParts.gi";
connectAttr "skinCluster7GroupParts.og" "skinCluster7.ip[0].ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7.ip[0].gi";
connectAttr "Chest_02_Jnt.wm" "skinCluster7.ma[1]";
connectAttr "Chest_03_Jnt.wm" "skinCluster7.ma[2]";
connectAttr "Chest_04_Jnt.wm" "skinCluster7.ma[3]";
connectAttr "L_Arm_01_Jnt.wm" "skinCluster7.ma[4]";
connectAttr "L_Arm_02_Jnt.wm" "skinCluster7.ma[5]";
connectAttr "R_Arm_01_Jnt.wm" "skinCluster7.ma[7]";
connectAttr "R_Arm_02_Jnt.wm" "skinCluster7.ma[8]";
connectAttr "Chest_02_Jnt.liw" "skinCluster7.lw[1]";
connectAttr "Chest_03_Jnt.liw" "skinCluster7.lw[2]";
connectAttr "Chest_04_Jnt.liw" "skinCluster7.lw[3]";
connectAttr "L_Arm_01_Jnt.liw" "skinCluster7.lw[4]";
connectAttr "L_Arm_02_Jnt.liw" "skinCluster7.lw[5]";
connectAttr "R_Arm_01_Jnt.liw" "skinCluster7.lw[7]";
connectAttr "R_Arm_02_Jnt.liw" "skinCluster7.lw[8]";
connectAttr "Chest_02_Jnt.obcc" "skinCluster7.ifcl[1]";
connectAttr "Chest_03_Jnt.obcc" "skinCluster7.ifcl[2]";
connectAttr "Chest_04_Jnt.obcc" "skinCluster7.ifcl[3]";
connectAttr "L_Arm_01_Jnt.obcc" "skinCluster7.ifcl[4]";
connectAttr "L_Arm_02_Jnt.obcc" "skinCluster7.ifcl[5]";
connectAttr "R_Arm_01_Jnt.obcc" "skinCluster7.ifcl[7]";
connectAttr "R_Arm_02_Jnt.obcc" "skinCluster7.ifcl[8]";
connectAttr "bindPose1.msg" "skinCluster7.bp";
connectAttr "Chest_04_Jnt.msg" "skinCluster7.ptt";
connectAttr "groupParts36.og" "tweak14.ip[0].ig";
connectAttr "groupId38.id" "tweak14.ip[0].gi";
connectAttr "skinCluster7GroupId.msg" "skinCluster7Set.gn" -na;
connectAttr "HeadPiece_0Shape1.iog.og[4]" "skinCluster7Set.dsm" -na;
connectAttr "skinCluster7.msg" "skinCluster7Set.ub[0]";
connectAttr "tweak14.og[0]" "skinCluster7GroupParts.ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7GroupParts.gi";
connectAttr "groupId38.msg" "tweakSet14.gn" -na;
connectAttr "HeadPiece_0Shape1.iog.og[5]" "tweakSet14.dsm" -na;
connectAttr "tweak14.msg" "tweakSet14.ub[0]";
connectAttr "HeadPiece_0Shape1Orig.w" "groupParts36.ig";
connectAttr "groupId38.id" "groupParts36.gi";
connectAttr "skinCluster8GroupParts.og" "skinCluster8.ip[0].ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8.ip[0].gi";
connectAttr "Chest_02_Jnt.wm" "skinCluster8.ma[1]";
connectAttr "Chest_03_Jnt.wm" "skinCluster8.ma[2]";
connectAttr "Chest_04_Jnt.wm" "skinCluster8.ma[3]";
connectAttr "L_Arm_01_Jnt.wm" "skinCluster8.ma[4]";
connectAttr "R_Arm_01_Jnt.wm" "skinCluster8.ma[7]";
connectAttr "R_Arm_02_Jnt.wm" "skinCluster8.ma[8]";
connectAttr "Chest_02_Jnt.liw" "skinCluster8.lw[1]";
connectAttr "Chest_03_Jnt.liw" "skinCluster8.lw[2]";
connectAttr "Chest_04_Jnt.liw" "skinCluster8.lw[3]";
connectAttr "L_Arm_01_Jnt.liw" "skinCluster8.lw[4]";
connectAttr "R_Arm_01_Jnt.liw" "skinCluster8.lw[7]";
connectAttr "R_Arm_02_Jnt.liw" "skinCluster8.lw[8]";
connectAttr "Chest_02_Jnt.obcc" "skinCluster8.ifcl[1]";
connectAttr "Chest_03_Jnt.obcc" "skinCluster8.ifcl[2]";
connectAttr "Chest_04_Jnt.obcc" "skinCluster8.ifcl[3]";
connectAttr "L_Arm_01_Jnt.obcc" "skinCluster8.ifcl[4]";
connectAttr "R_Arm_01_Jnt.obcc" "skinCluster8.ifcl[7]";
connectAttr "R_Arm_02_Jnt.obcc" "skinCluster8.ifcl[8]";
connectAttr "bindPose1.msg" "skinCluster8.bp";
connectAttr "Chest_04_Jnt.msg" "skinCluster8.ptt";
connectAttr "skinCluster8GroupId.msg" "skinCluster8Set.gn" -na;
connectAttr "HeadPiece_0Shape2.iog.og[3]" "skinCluster8Set.dsm" -na;
connectAttr "skinCluster8.msg" "skinCluster8Set.ub[0]";
connectAttr "tweak8.og[0]" "skinCluster8GroupParts.ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8GroupParts.gi";
connectAttr "skinCluster9GroupParts.og" "skinCluster9.ip[0].ig";
connectAttr "skinCluster9GroupId.id" "skinCluster9.ip[0].gi";
connectAttr "Chest_02_Jnt.wm" "skinCluster9.ma[1]";
connectAttr "Chest_03_Jnt.wm" "skinCluster9.ma[2]";
connectAttr "Chest_04_Jnt.wm" "skinCluster9.ma[3]";
connectAttr "L_Arm_01_Jnt.wm" "skinCluster9.ma[4]";
connectAttr "L_Arm_02_Jnt.wm" "skinCluster9.ma[5]";
connectAttr "R_Arm_01_Jnt.wm" "skinCluster9.ma[7]";
connectAttr "R_Arm_02_Jnt.wm" "skinCluster9.ma[8]";
connectAttr "Chest_02_Jnt.liw" "skinCluster9.lw[1]";
connectAttr "Chest_03_Jnt.liw" "skinCluster9.lw[2]";
connectAttr "Chest_04_Jnt.liw" "skinCluster9.lw[3]";
connectAttr "L_Arm_01_Jnt.liw" "skinCluster9.lw[4]";
connectAttr "L_Arm_02_Jnt.liw" "skinCluster9.lw[5]";
connectAttr "R_Arm_01_Jnt.liw" "skinCluster9.lw[7]";
connectAttr "R_Arm_02_Jnt.liw" "skinCluster9.lw[8]";
connectAttr "Chest_02_Jnt.obcc" "skinCluster9.ifcl[1]";
connectAttr "Chest_03_Jnt.obcc" "skinCluster9.ifcl[2]";
connectAttr "Chest_04_Jnt.obcc" "skinCluster9.ifcl[3]";
connectAttr "L_Arm_01_Jnt.obcc" "skinCluster9.ifcl[4]";
connectAttr "L_Arm_02_Jnt.obcc" "skinCluster9.ifcl[5]";
connectAttr "R_Arm_01_Jnt.obcc" "skinCluster9.ifcl[7]";
connectAttr "R_Arm_02_Jnt.obcc" "skinCluster9.ifcl[8]";
connectAttr "bindPose1.msg" "skinCluster9.bp";
connectAttr "Chest_04_Jnt.msg" "skinCluster9.ptt";
connectAttr "groupParts38.og" "tweak15.ip[0].ig";
connectAttr "groupId40.id" "tweak15.ip[0].gi";
connectAttr "skinCluster9GroupId.msg" "skinCluster9Set.gn" -na;
connectAttr "HeadPiece_0Shape3.iog.og[6]" "skinCluster9Set.dsm" -na;
connectAttr "skinCluster9.msg" "skinCluster9Set.ub[0]";
connectAttr "tweak15.og[0]" "skinCluster9GroupParts.ig";
connectAttr "skinCluster9GroupId.id" "skinCluster9GroupParts.gi";
connectAttr "groupId40.msg" "tweakSet15.gn" -na;
connectAttr "HeadPiece_0Shape3.iog.og[7]" "tweakSet15.dsm" -na;
connectAttr "tweak15.msg" "tweakSet15.ub[0]";
connectAttr "HeadPiece_0Shape3Orig.w" "groupParts38.ig";
connectAttr "groupId40.id" "groupParts38.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pasted__defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Shirt_03Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Pants_0Shape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Pants_0Shape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "HeadPiece_0Shape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "HeadPiece_0Shape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "HeadPiece_0Shape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BaseShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Shirt_02Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Shirt_01Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
// End of TestingClothingSwap.ma
