//Maya ASCII 2026 scene
//Name: Splash.ma
//Last modified: Sat, Nov 21, 2026 08:58:26 PM
//Codeset: 1252
requires maya "2026";
requires "stereoCamera" "10.0";
requires "mtoa" "5.5.3";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2026";
fileInfo "version" "2026";
fileInfo "cutIdentifier" "202507081222-4d6919b75c";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26300)";
fileInfo "UUID" "F01697A4-43E0-31CB-E7D3-9D9CD43B88E2";
createNode transform -s -n "persp";
	rename -uid "56F90186-4997-51B0-AF61-E9AF9E6E0DEE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -19.419895621621659 2.7602794722285799 5.4952765536488215 ;
	setAttr ".r" -type "double3" -7.5383527296182207 285.7999999999854 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "14AE5E56-4312-1D7B-7CD9-C6B01272E2C4";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 20.358380300182834;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 7.3024477853511627e-09 0.089467272261671976 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "6DD70CAD-4F2D-C316-D375-68A2D1E6AD3E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "06FFEA6C-4652-3CC3-C0AF-16B7702DADF1";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "22F04766-4173-AD3E-5894-FC8D2F0E794F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "CA65D082-4845-32C7-F8B3-FA9F951DE36D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "B6AC7D72-4386-4742-C3F3-EA9656E1DCA7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "AA2FC159-4C46-DC65-EF26-A2B1D4415545";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pTorus1";
	rename -uid "C509FAFD-4E94-F3B3-6929-99A180354BC4";
createNode mesh -n "pTorusShape1" -p "pTorus1";
	rename -uid "2ED0343D-4CE2-A36C-499E-7A9699596405";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.49999993294477463 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5B73E09F-410C-55F0-8F4B-C7A647D6C112";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D514311B-4175-D0E2-3AD2-D68E78AD999B";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2C68E1F2-4992-F970-C1AD-D38256DC91E8";
createNode displayLayerManager -n "layerManager";
	rename -uid "FA08B27A-4AD1-258F-76B5-CE9C96079EA5";
createNode displayLayer -n "defaultLayer";
	rename -uid "8C9CE6A2-4D84-8D8F-5765-07975135460F";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "FF64E766-4835-B935-3C8E-A793D887A9F5";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "64329BFD-4375-8515-3F5A-A08AE3A2A9BB";
	setAttr ".g" yes;
createNode polyTorus -n "polyTorus1";
	rename -uid "C8C98ADE-4342-AB4A-8E92-168B689D55A3";
	setAttr ".sr" 0.32052795667299616;
	setAttr ".sa" 14;
	setAttr ".sh" 14;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "E74E0C61-4747-A6AF-E3DE-94AF4E3E7791";
	setAttr ".dc" -type "componentList" 1 "f[84:153]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "BFB6CD6A-4A44-256D-C709-F0B068EE809E";
	setAttr ".dc" -type "componentList" 1 "f[84:97]";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "B80E07F7-4036-C201-0750-FF882E1C6AC5";
	setAttr ".ics" -type "componentList" 1 "f[0:111]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.9604645e-08 0.030946434 5.9604645e-08 ;
	setAttr ".rs" 43603;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2887855768203735 -0.25059878826141357 -1.2564730644226074 ;
	setAttr ".cbx" -type "double3" 1.2887856960296631 0.31249165534973145 1.256473183631897 ;
	setAttr ".raf" no;
createNode polyNormal -n "polyNormal1";
	rename -uid "B11706FC-4FA3-947F-7174-22B216C37F1E";
	setAttr ".ics" -type "componentList" 2 "f[0:111]" "f[224:251]";
	setAttr ".unm" no;
createNode polyTweak -n "polyTweak1";
	rename -uid "4598CB97-4AA3-284A-6AC2-719E49CE6D69";
	setAttr ".uopa" yes;
	setAttr -s 129 ".tk";
	setAttr ".tk[126]" -type "float3" 0.11790194 -0.041897677 -0.056778394 ;
	setAttr ".tk[127]" -type "float3" 0.081590921 -0.041897677 -0.10231165 ;
	setAttr ".tk[128]" -type "float3" 0.12340903 -0.041897677 -0.059431128 ;
	setAttr ".tk[129]" -type "float3" 0.085401729 -0.041897677 -0.10709044 ;
	setAttr ".tk[130]" -type "float3" 0.029119221 -0.041897677 -0.12758 ;
	setAttr ".tk[131]" -type "float3" 0.030479809 -0.041897677 -0.13354047 ;
	setAttr ".tk[132]" -type "float3" -0.029119238 -0.041897677 -0.12758 ;
	setAttr ".tk[133]" -type "float3" -0.030479433 -0.041897677 -0.13354035 ;
	setAttr ".tk[134]" -type "float3" -0.081590943 -0.041897677 -0.10231153 ;
	setAttr ".tk[135]" -type "float3" -0.085401535 -0.041897677 -0.10709026 ;
	setAttr ".tk[136]" -type "float3" -0.11790191 -0.041897677 -0.056778178 ;
	setAttr ".tk[137]" -type "float3" -0.12340896 -0.041897677 -0.059431218 ;
	setAttr ".tk[138]" -type "float3" -0.13086095 -0.041897677 -3.487909e-08 ;
	setAttr ".tk[139]" -type "float3" -0.13697423 -0.041897677 -3.5972295e-08 ;
	setAttr ".tk[140]" -type "float3" -0.11790179 -0.041897677 0.056778409 ;
	setAttr ".tk[141]" -type "float3" -0.12340914 -0.041897677 0.059431188 ;
	setAttr ".tk[142]" -type "float3" -0.081590846 -0.041897677 0.10231171 ;
	setAttr ".tk[143]" -type "float3" -0.085401945 -0.041897677 0.1070905 ;
	setAttr ".tk[144]" -type "float3" -0.029119208 -0.041897677 0.12758012 ;
	setAttr ".tk[145]" -type "float3" -0.030479735 -0.041897677 0.13354059 ;
	setAttr ".tk[146]" -type "float3" 0.029119272 -0.041897677 0.12757999 ;
	setAttr ".tk[147]" -type "float3" 0.030479487 -0.041897677 0.13354047 ;
	setAttr ".tk[148]" -type "float3" 0.081590958 -0.041897677 0.10231159 ;
	setAttr ".tk[149]" -type "float3" 0.085401565 -0.041897677 0.10709038 ;
	setAttr ".tk[150]" -type "float3" 0.11790194 -0.041897677 0.056778323 ;
	setAttr ".tk[151]" -type "float3" 0.123409 -0.041897677 0.059431229 ;
	setAttr ".tk[152]" -type "float3" 0.13086095 -0.041897677 -1.1479326e-08 ;
	setAttr ".tk[153]" -type "float3" 0.13697426 -0.041897677 -1.1479326e-08 ;
	setAttr ".tk[154]" -type "float3" 0.071407653 -0.041897677 -0.034387961 ;
	setAttr ".tk[155]" -type "float3" 0.049415536 -0.041897677 -0.061965991 ;
	setAttr ".tk[156]" -type "float3" 0.017636178 -0.041897677 -0.077269539 ;
	setAttr ".tk[157]" -type "float3" -0.017636355 -0.041897677 -0.077269539 ;
	setAttr ".tk[158]" -type "float3" -0.049415588 -0.041897677 -0.06196589 ;
	setAttr ".tk[159]" -type "float3" -0.071407653 -0.041897677 -0.034388453 ;
	setAttr ".tk[160]" -type "float3" -0.079256274 -0.041897677 -1.7124009e-08 ;
	setAttr ".tk[161]" -type "float3" -0.071407788 -0.041897677 0.034388032 ;
	setAttr ".tk[162]" -type "float3" -0.049415477 -0.041897677 0.061966054 ;
	setAttr ".tk[163]" -type "float3" -0.017636154 -0.041897677 0.077269532 ;
	setAttr ".tk[164]" -type "float3" 0.017636355 -0.041897677 0.077269539 ;
	setAttr ".tk[165]" -type "float3" 0.0494156 -0.041897677 0.061965935 ;
	setAttr ".tk[166]" -type "float3" 0.071407653 -0.041897677 0.034388635 ;
	setAttr ".tk[167]" -type "float3" 0.079256274 -0.041897677 -2.9519192e-09 ;
	setAttr ".tk[168]" -type "float3" -5.9604645e-07 -0.041897677 4.7683716e-07 ;
	setAttr ".tk[169]" -type "float3" 5.9604645e-07 -0.041897677 -3.5762787e-07 ;
	setAttr ".tk[170]" -type "float3" 3.7252903e-09 -0.041897677 7.301569e-07 ;
	setAttr ".tk[171]" -type "float3" -1.4901161e-07 -0.041897677 7.301569e-07 ;
	setAttr ".tk[172]" -type "float3" 5.4389238e-07 -0.041897677 -3.5762787e-07 ;
	setAttr ".tk[173]" -type "float3" 5.9604645e-07 -0.041897677 1.3411045e-07 ;
	setAttr ".tk[174]" -type "float3" -7.301569e-07 -0.041897677 -2.4868996e-14 ;
	setAttr ".tk[175]" -type "float3" 7.1525574e-07 -0.041897677 -4.2468309e-07 ;
	setAttr ".tk[176]" -type "float3" -5.8859587e-07 -0.041897677 4.7683716e-07 ;
	setAttr ".tk[177]" -type "float3" 5.5879354e-08 -0.041897677 -6.1094761e-07 ;
	setAttr ".tk[178]" -type "float3" 1.4901161e-07 -0.041897677 -7.301569e-07 ;
	setAttr ".tk[179]" -type "float3" -6.4820051e-07 -0.041897677 4.7683716e-07 ;
	setAttr ".tk[180]" -type "float3" -5.9604645e-07 -0.041897677 -7.4505806e-09 ;
	setAttr ".tk[181]" -type "float3" 7.301569e-07 -0.041897677 4.8849813e-14 ;
	setAttr ".tk[182]" -type "float3" 3.5762787e-07 -0.041897677 -3.4272671e-07 ;
	setAttr ".tk[183]" -type "float3" 2.3841858e-07 -0.041897677 3.5762787e-07 ;
	setAttr ".tk[184]" -type "float3" 1.527369e-07 -0.041897677 -5.8114529e-07 ;
	setAttr ".tk[185]" -type "float3" 2.0861626e-07 -0.041897677 -4.61936e-07 ;
	setAttr ".tk[186]" -type "float3" -2.3841858e-07 -0.041897677 4.61936e-07 ;
	setAttr ".tk[187]" -type "float3" -4.7683716e-07 -0.041897677 -7.4505806e-09 ;
	setAttr ".tk[188]" -type "float3" 1.0877848e-06 -0.041897677 1.4210855e-13 ;
	setAttr ".tk[189]" -type "float3" -3.5762787e-07 -0.041897677 2.4586916e-07 ;
	setAttr ".tk[190]" -type "float3" -3.2782555e-07 -0.041897677 -3.5762787e-07 ;
	setAttr ".tk[191]" -type "float3" -1.2293458e-07 -0.041897677 5.8114529e-07 ;
	setAttr ".tk[192]" -type "float3" -2.0861626e-07 -0.041897677 5.8114529e-07 ;
	setAttr ".tk[193]" -type "float3" 1.1920929e-07 -0.041897677 -5.9604645e-07 ;
	setAttr ".tk[194]" -type "float3" 4.7683716e-07 -0.041897677 1.7136335e-07 ;
	setAttr ".tk[195]" -type "float3" -1.0877848e-06 -0.041897677 4.8849813e-14 ;
	setAttr ".tk[196]" -type "float3" 8.3446503e-07 -0.041897677 2.9802322e-07 ;
	setAttr ".tk[197]" -type "float3" -2.3841858e-07 -0.041897677 7.0035458e-07 ;
	setAttr ".tk[198]" -type "float3" 2.9802322e-07 -0.041897677 1.3411045e-07 ;
	setAttr ".tk[199]" -type "float3" 1.1920929e-07 -0.041897677 1.3411045e-07 ;
	setAttr ".tk[200]" -type "float3" 1.0430813e-07 -0.041897677 8.3446503e-07 ;
	setAttr ".tk[201]" -type "float3" -4.7683716e-07 -0.041897677 -4.2468309e-07 ;
	setAttr ".tk[202]" -type "float3" 6.1094761e-07 -0.041897677 -8.1712415e-14 ;
	setAttr ".tk[203]" -type "float3" -7.1525574e-07 -0.041897677 -2.9802322e-07 ;
	setAttr ".tk[204]" -type "float3" 3.5762787e-07 -0.041897677 -5.9604645e-07 ;
	setAttr ".tk[205]" -type "float3" -2.9802322e-07 -0.041897677 -1.4901161e-08 ;
	setAttr ".tk[206]" -type "float3" -1.1920929e-07 -0.041897677 -1.3411045e-07 ;
	setAttr ".tk[207]" -type "float3" -1.1920929e-07 -0.041897677 -7.1525574e-07 ;
	setAttr ".tk[208]" -type "float3" 8.3446503e-07 -0.041897677 -4.8428774e-07 ;
	setAttr ".tk[209]" -type "float3" -6.1094761e-07 -0.041897677 4.8849813e-14 ;
	setAttr ".tk[210]" -type "float3" -1.0728836e-06 -0.041897677 -4.2468309e-07 ;
	setAttr ".tk[211]" -type "float3" -2.5331974e-07 -0.041897677 1.0430813e-07 ;
	setAttr ".tk[212]" -type "float3" 1.8253922e-07 -0.041897677 9.8347664e-07 ;
	setAttr ".tk[213]" -type "float3" -3.2410026e-07 -0.041897677 9.5367432e-07 ;
	setAttr ".tk[214]" -type "float3" 0 -0.041897677 3.7252903e-07 ;
	setAttr ".tk[215]" -type "float3" 1.1920929e-06 -0.041897677 -1.1920929e-07 ;
	setAttr ".tk[216]" -type "float3" 7.1525574e-07 -0.041897677 2.3092639e-13 ;
	setAttr ".tk[217]" -type "float3" 1.1920929e-06 -0.041897677 4.8428774e-07 ;
	setAttr ".tk[218]" -type "float3" 2.5331974e-07 -0.041897677 -1.0430813e-07 ;
	setAttr ".tk[219]" -type "float3" -1.527369e-07 -0.041897677 -7.1525574e-07 ;
	setAttr ".tk[220]" -type "float3" 2.9429793e-07 -0.041897677 -9.5367432e-07 ;
	setAttr ".tk[221]" -type "float3" -1.4901161e-08 -0.041897677 -2.5331974e-07 ;
	setAttr ".tk[222]" -type "float3" -1.0728836e-06 -0.041897677 2.9802322e-07 ;
	setAttr ".tk[223]" -type "float3" -7.1525574e-07 -0.041897677 4.8849813e-14 ;
	setAttr ".tk[224]" -type "float3" 0.1388422 -0.041897677 -0.066862762 ;
	setAttr ".tk[225]" -type "float3" 0.096081749 -0.041897677 -0.1204836 ;
	setAttr ".tk[226]" -type "float3" 0.12340903 -0.041897677 -0.059431128 ;
	setAttr ".tk[227]" -type "float3" 0.085401729 -0.041897677 -0.10709044 ;
	setAttr ".tk[228]" -type "float3" 0.034291185 -0.041897677 -0.15023966 ;
	setAttr ".tk[229]" -type "float3" 0.030479809 -0.041897677 -0.13354047 ;
	setAttr ".tk[230]" -type "float3" -0.034291305 -0.041897677 -0.15023966 ;
	setAttr ".tk[231]" -type "float3" -0.030479433 -0.041897677 -0.13354035 ;
	setAttr ".tk[232]" -type "float3" -0.096081711 -0.041897677 -0.12048342 ;
	setAttr ".tk[233]" -type "float3" -0.085401535 -0.041897677 -0.10709026 ;
	setAttr ".tk[234]" -type "float3" -0.13884215 -0.041897677 -0.066863343 ;
	setAttr ".tk[235]" -type "float3" -0.12340896 -0.041897677 -0.059431218 ;
	setAttr ".tk[236]" -type "float3" -0.15410291 -0.041897677 -3.9035044e-08 ;
	setAttr ".tk[237]" -type "float3" -0.13697423 -0.041897677 -3.5972295e-08 ;
	setAttr ".tk[238]" -type "float3" -0.13884218 -0.041897677 0.066862822 ;
	setAttr ".tk[239]" -type "float3" -0.12340914 -0.041897677 0.059431188 ;
	setAttr ".tk[240]" -type "float3" -0.096081614 -0.041897677 0.12048361 ;
	setAttr ".tk[241]" -type "float3" -0.085401945 -0.041897677 0.1070905 ;
	setAttr ".tk[242]" -type "float3" -0.03429113 -0.041897677 0.15023978 ;
	setAttr ".tk[243]" -type "float3" -0.030479735 -0.041897677 0.13354059 ;
	setAttr ".tk[244]" -type "float3" 0.034291357 -0.041897677 0.15023965 ;
	setAttr ".tk[245]" -type "float3" 0.030479487 -0.041897677 0.13354047 ;
	setAttr ".tk[246]" -type "float3" 0.096081734 -0.041897677 0.12048354 ;
	setAttr ".tk[247]" -type "float3" 0.085401565 -0.041897677 0.10709038 ;
	setAttr ".tk[248]" -type "float3" 0.13884217 -0.041897677 0.06686344 ;
	setAttr ".tk[249]" -type "float3" 0.123409 -0.041897677 0.059431229 ;
	setAttr ".tk[250]" -type "float3" 0.15410279 -0.041897677 -1.1479326e-08 ;
	setAttr ".tk[251]" -type "float3" 0.13697426 -0.041897677 -1.1479326e-08 ;
createNode animCurveTU -n "pTorus1_scaleX";
	rename -uid "283896CF-4B2F-918D-FD1C-7F8C768680EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.1225147438468681 4 0.25121066255037183
		 10 0.58196321180950417 14 0.90002012437357626 30 2.7123143392502462;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  0.75669148272118758 1;
	setAttr -s 5 ".kiy[3:4]"  0.65377213153912472 0;
	setAttr -s 5 ".kox[3:4]"  0.75669148272118758 1;
	setAttr -s 5 ".koy[3:4]"  0.65377213153912483 0;
createNode animCurveTU -n "pTorus1_scaleY";
	rename -uid "AF3743A3-4DBE-1B25-370D-AA80C437CBB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.64673226252531291 4 1.9553899888640283
		 10 7.9197168565582645 14 8.3317632941692441 30 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "pTorus1_scaleZ";
	rename -uid "6C71612F-4A8E-5656-9DB2-228984CC7950";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.1225147438468681 4 0.25121066255037183
		 10 0.58196321180950417 14 0.90002012437357626 30 2.7123143392502462;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  0.75669148272118758 1;
	setAttr -s 5 ".kiy[3:4]"  0.65377213153912472 0;
	setAttr -s 5 ".kox[3:4]"  0.75669148272118758 1;
	setAttr -s 5 ".koy[3:4]"  0.65377213153912483 0;
createNode animCurveTU -n "pTorus1_visibility";
	rename -uid "E7EE3D6C-46C4-5F9E-760F-A3B62648F8F4";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 4 1 10 1 14 1 30 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 1 18;
	setAttr -s 5 ".kot[4]"  18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTL -n "pTorus1_translateX";
	rename -uid "AE2EB867-4756-D463-B2C5-058D1D7CB11A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 4 0 10 0 14 0 30 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "pTorus1_translateY";
	rename -uid "993F3F6C-404D-5325-838E-06B060728200";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.082128997978749063 4 0.24874895064991365
		 10 0.99713611207314179 14 1.0460476121001416 30 -1.2240486051742367;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "pTorus1_translateZ";
	rename -uid "88B15BAA-4514-EA51-89FD-61925F2582D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 4 0 10 0 14 0 30 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "pTorus1_rotateX";
	rename -uid "3CD84D0D-4106-CB19-C091-AFBAA8C759E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 4 0 10 0 14 0 30 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "pTorus1_rotateY";
	rename -uid "B84B57A9-40CB-3808-3E9A-D5A579C63D27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 4 0 10 0 14 0 30 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "pTorus1_rotateZ";
	rename -uid "028DDAAE-4FD0-98FF-B3F6-479D225F4DF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 4 0 10 0 14 0 30 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "4C8AACFB-49E4-5711-0ACA-AD9BA795F8C9";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 636\n            -height 396\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 96\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 96\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2577\n            -height 1427\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n"
		+ "\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2577\\n    -height 1427\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2577\\n    -height 1427\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F023A149-41C8-BB33-533B-FA9B65B502AC";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 30 -ast 1 -aet 30 ";
	setAttr ".st" 6;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "4AA2573B-4D39-CFEC-55F8-C6B0211B0164";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:503]";
	setAttr ".ix" -type "matrix" 0.1225147438468681 0 0 0 0 0.64673226252531291 0 0 0 0 0.1225147438468681 0
		 0 0.082128997978749063 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak2";
	rename -uid "F31A64DB-40D0-3147-D467-108A405BCFA1";
	setAttr ".uopa" yes;
	setAttr -s 252 ".tk";
	setAttr ".tk[0:165]" -type "float3"  0.26761451 0 -0.12887622 0.18519539
		 0 -0.23222688 0.066095404 0 -0.28958142 -0.066095188 0 -0.28958142 -0.18519434 0
		 -0.23222718 -0.26761457 0 -0.12887628 -0.29702911 0 -5.3113055e-08 -0.26761451 0
		 0.12887622 -0.18519542 0 0.23222688 -0.066095442 0 0.28958142 0.066095114 0 0.28958145
		 0.18519437 0 0.23222718 0.26761451 0 0.12887628 0.29702994 0 0 0.28011623 -0.07938765
		 -0.13489659 0.19384578 -0.07938765 -0.24307567 0.069183022 -0.07938765 -0.30310971
		 -0.069183111 -0.07938765 -0.30310974 -0.19384587 -0.07938765 -0.24307618 -0.28011641
		 -0.07938765 -0.13489664 -0.31090519 -0.07938765 -5.5594242e-08 -0.28011629 -0.07938765
		 0.13489665 -0.19384578 -0.07938765 0.24307629 -0.069183059 -0.07938765 0.30310971
		 0.069183066 -0.07938765 0.30310974 0.19384584 -0.07938765 0.24307618 0.28011629 -0.07938765
		 0.13489667 0.31090522 -0.07938765 0 0.31514516 -0.14305188 -0.15176639 0.21808803
		 -0.14305188 -0.27347398 0.077834733 -0.14305188 -0.34101492 -0.077834681 -0.14305188
		 -0.34101492 -0.21808758 -0.14305188 -0.27347377 -0.31514508 -0.14305188 -0.1517662
		 -0.34978479 -0.14305188 -6.2546619e-08 -0.31514522 -0.14305188 0.15176633 -0.21808809
		 -0.14305188 0.27347392 -0.077834666 -0.14305188 0.34101492 0.077834621 -0.14305188
		 0.34101489 0.21808812 -0.14305188 0.27347377 0.31514522 -0.14305188 0.15176621 0.34978467
		 -0.14305188 0 0.36576542 -0.17838305 -0.17614253 0.25311717 -0.17838305 -0.31739861
		 0.090336435 -0.17838305 -0.39578927 -0.090336688 -0.17838305 -0.39578921 -0.25311714
		 -0.17838305 -0.31739843 -0.36576554 -0.17838305 -0.17614362 -0.40596759 -0.17838305
		 -7.2592762e-08 -0.36576548 -0.17838305 0.17614295 -0.25311723 -0.17838305 0.31739861
		 -0.090336472 -0.17838305 0.39578927 0.090336613 -0.17838305 0.39578915 0.253117 -0.17838305
		 0.31739843 0.36576548 -0.17838305 0.17614307 0.40596783 -0.17838305 0 0.42194796
		 -0.17838301 -0.2031993 0.29199678 -0.17838301 -0.36615315 0.10421266 -0.17838301
		 -0.45658511 -0.10421242 -0.17838301 -0.45658493 -0.29199705 -0.17838301 -0.36615339
		 -0.42194813 -0.17838301 -0.20319957 -0.46832681 -0.17838301 -8.3743302e-08 -0.42194802
		 -0.17838301 0.20319933 -0.29199678 -0.17838301 0.36615303 -0.10421272 -0.17838301
		 0.45658511 0.10421252 -0.17838301 0.45658493 0.29199684 -0.17838301 0.36615339 0.42194802
		 -0.17838301 0.20319963 0.46832681 -0.17838301 0 0.47256655 -0.14305186 -0.22757632
		 0.32702714 -0.14305186 -0.41007781 0.11671442 -0.14305186 -0.51135945 -0.11671457
		 -0.14305186 -0.51135933 -0.3270258 -0.14305186 -0.41007787 -0.47256672 -0.14305186
		 -0.227577 -0.52450925 -0.14305186 -9.3789652e-08 -0.47256655 -0.14305186 0.22757703
		 -0.32702714 -0.14305186 0.41007805 -0.11671449 -0.14305186 0.51135945 0.11671466
		 -0.14305186 0.51135933 0.32702559 -0.14305186 0.41007787 0.47256655 -0.14305186 0.22757691
		 0.52450913 -0.14305186 0 0.50759739 -0.079387635 -0.24444583 0.35126778 -0.079387635
		 -0.44047612 0.12536606 -0.079387635 -0.54926383 -0.12536621 -0.079387635 -0.54926372
		 -0.3512682 -0.079387635 -0.44047582 -0.50759745 -0.079387635 -0.24444553 -0.56339067
		 -0.079387635 -1.0074196e-07 -0.50759739 -0.079387635 0.24444577 -0.35126784 -0.079387635
		 0.44047606 -0.12536614 -0.079387635 0.54926383 0.12536612 -0.079387635 0.54926366
		 0.35126796 -0.079387635 0.44047582 0.50759739 -0.079387635 0.24444556 0.56339061
		 -0.079387635 0 0.14768285 0.14305182 -0.071120694 0.10220049 0.14305182 -0.12815368
		 0.036474586 0.14305182 -0.15980598 -0.036474675 0.14305182 -0.15980598 -0.10220021
		 0.14305182 -0.12815353 -0.14768302 0.14305182 -0.07112053 -0.16391596 0.14305182
		 -1.5464465e-08 -0.14768291 0.14305182 0.07112065 -0.10220052 0.14305182 0.12815365
		 -0.036474615 0.14305182 0.15980607 0.036474615 0.14305182 0.15980601 0.10220051 0.14305182
		 0.12815353 0.14768291 0.14305182 0.071120575 0.16391584 0.14305182 1.38457e-08 0.28011623
		 0.079387754 -0.13489659 0.19384578 0.079387754 -0.24307567 0.069183022 0.079387754
		 -0.30310971 -0.069183111 0.079387754 -0.30310974 -0.19384587 0.079387754 -0.24307618
		 -0.28011641 0.079387754 -0.13489664 -0.31090519 0.079387754 -5.5594242e-08 -0.28011629
		 0.079387754 0.13489665 -0.19384578 0.079387754 0.24307629 -0.069183059 0.079387754
		 0.30310971 0.069183066 0.079387754 0.30310974 0.19384584 0.079387754 0.24307618 0.28011629
		 0.079387754 0.13489667 0.31090522 0.079387754 0 0.31915542 0.023916874 -0.15369678
		 0.22086209 0.023916874 -0.27695289 0.33406484 -0.055470899 -0.16087654 0.23118013
		 -0.055470899 -0.28988963 0.078824617 0.023916874 -0.34535447 0.08250735 -0.055470899
		 -0.36148831 -0.078824647 0.023916874 -0.34535447 -0.082506843 -0.055470899 -0.36148828
		 -0.22086218 0.023916874 -0.27695283 -0.23117933 -0.055470899 -0.28988963 -0.31915548
		 0.023916874 -0.15369676 -0.33406454 -0.055470899 -0.16087739 -0.35423523 0.023916874
		 -6.8360436e-08 -0.37078297 -0.055470899 -7.1319661e-08 -0.31915548 0.023916874 0.15369673
		 -0.33406478 -0.055470899 0.16087648 -0.22086203 0.023916874 0.27695289 -0.2311801
		 -0.055470899 0.28988951 -0.078824528 0.023916874 0.34535462 -0.082507409 -0.055470899
		 0.36148822 0.07882458 0.023916874 0.34535459 0.082506903 -0.055470899 0.36148822
		 0.22086203 0.023916874 0.27695289 0.23117921 -0.055470899 0.28988951 0.31915542 0.023916874
		 0.15369672 0.33406481 -0.055470899 0.16087732 0.35423511 0.023916874 -5.0181663e-09
		 0.3707841 -0.055470899 -5.0181663e-09 0.34636191 -0.11913502 -0.16679914 0.23968971
		 -0.11913502 -0.30056193 0.085544437 -0.11913502 -0.3747946 -0.085544311 -0.11913502
		 -0.3747946 -0.2396889 -0.11913502 -0.3005619 -0.34636194 -0.11913502 -0.16679904
		 -0.38443118 -0.11913502 -7.0032243e-08 -0.34636196 -0.11913502 0.16679923 -0.2396898
		 -0.11913502 0.30056185 -0.085544333 -0.11913502 0.3747946 0.085544467 -0.11913502
		 0.37479454 0.23968977 -0.11913502 0.30056185;
	setAttr ".tk[166:251]" 0.34636188 -0.11913502 0.16679905 0.38443106 -0.11913502
		 -1.2904265e-09 0.36576581 -0.15446579 -0.17614271 0.25311738 -0.15446579 -0.31739834
		 0.090336435 -0.15446579 -0.39578909 -0.090336584 -0.15446579 -0.39578903 -0.25311732
		 -0.15446579 -0.31739858 -0.36576557 -0.15446579 -0.17614311 -0.40596932 -0.15446579
		 -7.2592734e-08 -0.36576551 -0.15446579 0.17614263 -0.25311741 -0.15446579 0.31739864
		 -0.090336516 -0.15446579 0.39578897 0.090336509 -0.15446579 0.39578897 0.25311732
		 -0.15446579 0.31739852 0.3657659 -0.15446579 0.17614307 0.4059692 -0.15446579 2.1354626e-14
		 0.4219479 -0.15446605 -0.20319963 0.29199708 -0.15446605 -0.3661516 0.10421257 -0.15446605
		 -0.45658463 -0.10421236 -0.15446605 -0.45658463 -0.29199684 -0.15446605 -0.36615142
		 -0.42194802 -0.15446605 -0.20319957 -0.46832681 -0.15446605 -8.3743387e-08 -0.42194796
		 -0.15446605 0.20319963 -0.29199696 -0.15446605 0.36615148 -0.10421263 -0.15446605
		 0.45658463 0.10421227 -0.15446605 0.45658463 0.29199678 -0.15446605 0.36615154 0.42194825
		 -0.15446605 0.20319951 0.46832675 -0.15446605 2.1354626e-14 0.47256589 -0.11913496
		 -0.2275762 0.32702565 -0.11913496 -0.41007811 0.11671442 -0.11913496 -0.51135957
		 -0.11671452 -0.11913496 -0.51135945 -0.32702559 -0.11913496 -0.41007799 -0.47256631
		 -0.11913496 -0.22757688 -0.52450931 -0.11913496 -9.3789595e-08 -0.47256601 -0.11913496
		 0.22757611 -0.3270258 -0.11913496 0.41007799 -0.11671449 -0.11913496 0.51135945 0.11671457
		 -0.11913496 0.51135945 0.32702574 -0.11913496 0.41007787 0.47256589 -0.11913496 0.22757611
		 0.52450919 -0.11913496 2.1354626e-14 0.50759608 -0.055470914 -0.24444559 0.35126796
		 -0.055470914 -0.44047624 0.12536597 -0.055470914 -0.54926401 -0.12536621 -0.055470914
		 -0.54926395 -0.3512682 -0.055470914 -0.44047612 -0.50759602 -0.055470914 -0.24444646
		 -0.56338847 -0.055470914 -1.007421e-07 -0.50759608 -0.055470914 0.2444461 -0.35126802
		 -0.055470914 0.44047612 -0.12536603 -0.055470914 0.54926383 0.12536611 -0.055470914
		 0.54926383 0.35126796 -0.055470914 0.44047606 0.50759608 -0.055470914 0.2444464 0.56339085
		 -0.055470914 2.1354626e-14 0.17612675 0.16696866 -0.084816888 0.1218819 0.16696866
		 -0.15283599 0.29427326 0.10330454 -0.14171435 0.20364276 0.10330454 -0.25535986 0.043499067
		 0.16696866 -0.19058439 0.072679475 0.10330454 -0.31843019 -0.043499142 0.16696866
		 -0.19058439 -0.07267905 0.10330454 -0.31843024 -0.12188178 0.16696866 -0.15283599
		 -0.20364264 0.10330454 -0.25535986 -0.17612603 0.16696866 -0.084817708 -0.29427347
		 0.10330454 -0.14171416 -0.19548351 0.16696866 -2.3461268e-08 -0.32661766 0.10330454
		 -5.9720819e-08 -0.17612597 0.16696866 0.084816769 -0.2942732 0.10330454 0.14171433
		 -0.12188175 0.16696866 0.15283605 -0.20364317 0.10330454 0.25535971 -0.04349912 0.16696866
		 0.19058427 -0.072679564 0.10330454 0.31843007 0.04349906 0.16696866 0.19058433 0.072679147
		 0.10330454 0.31843007 0.12188199 0.16696866 0.15283611 0.2036429 0.10330454 0.25535971
		 0.17612597 0.16696866 0.084817797 0.29427335 0.10330454 0.1417142 0.19548351 0.16696866
		 1.1494077e-08 0.32661778 0.10330454 -1.3167711e-09;
select -ne :time1;
	setAttr ".o" 30;
	setAttr ".unw" 30;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :openPBR_shader1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "openPBR_shader1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "pTorus1_scaleX.o" "pTorus1.sx";
connectAttr "pTorus1_scaleY.o" "pTorus1.sy";
connectAttr "pTorus1_scaleZ.o" "pTorus1.sz";
connectAttr "pTorus1_visibility.o" "pTorus1.v";
connectAttr "pTorus1_translateX.o" "pTorus1.tx";
connectAttr "pTorus1_translateY.o" "pTorus1.ty";
connectAttr "pTorus1_translateZ.o" "pTorus1.tz";
connectAttr "pTorus1_rotateX.o" "pTorus1.rx";
connectAttr "pTorus1_rotateY.o" "pTorus1.ry";
connectAttr "pTorus1_rotateZ.o" "pTorus1.rz";
connectAttr "polySoftEdge1.out" "pTorusShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTorus1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyExtrudeFace1.ip";
connectAttr "pTorusShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyNormal1.ip";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polySoftEdge1.ip";
connectAttr "pTorusShape1.wm" "polySoftEdge1.mp";
connectAttr "polyNormal1.out" "polyTweak2.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pTorusShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Splash.ma
