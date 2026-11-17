//Maya ASCII 2027 scene
//Name: Spear Gun.ma
//Last modified: Tue, Nov 17, 2026 02:35:02 PM
//Codeset: 1252
requires maya "2027";
requires "mtoa" "5.6.2";
requires -nodeType "UsdDefaultSettings" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.37.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2027";
fileInfo "version" "2027";
fileInfo "cutIdentifier" "202607171511-52c21617ee";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26200)";
fileInfo "UUID" "4A162B2D-45A3-3B73-E378-078EEA5C4903";
createNode transform -s -n "persp";
	rename -uid "7A2D6F0F-44D8-51E6-1A2D-E5ADA014E7E9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.1449630997390674 6.0522361426011981 11.689802778435928 ;
	setAttr ".r" -type "double3" -14.73835272392518 -2886.1999999982672 -3.9990841390232235e-16 ;
	setAttr ".rp" -type "double3" -2.7533531010703882e-14 -2.2204460492503131e-14 0 ;
	setAttr ".rpt" -type "double3" 3.405373215675777e-14 1.3563477563623454e-16 -2.5027654375412655e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "BECF2CB0-4F5F-E4E5-258D-6CB13974D22F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 11.09677605671421;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -15.501435996542707 3.5913092085153249 1.7763568394002505e-15 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "E422A17F-4786-66D7-F566-FEB605A6C273";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "DBB891B7-4080-A4E4-D5AB-D8A841E49FDF";
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
	rename -uid "FBA77C8B-4428-3E80-95EC-95B311B59CAD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.85944494180841469 0.75201432408236446 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "60ECEFC1-43BC-30C6-7E19-A5AB43640214";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 21.760707177524722;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "DB9EEE2C-4A0A-9BEA-204A-A684ED83096E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "A0A124EE-4D37-93B7-2B4B-D3B06555DE09";
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
createNode transform -n "Handle";
	rename -uid "06922563-482D-2F10-3BEC-AEA096CBE518";
	setAttr ".t" -type "double3" 4.2671977155727561 0.97119681901588706 0 ;
	setAttr ".r" -type "double3" 0 0 79.673020638728858 ;
	setAttr ".s" -type "double3" 1.9082410048460086 1.9082410048460086 1.9082410048460086 ;
createNode mesh -n "HandleShape" -p "Handle";
	rename -uid "A5103214-4026-C72E-A0F8-C4B33A54E1D4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.74689292907714844 0.95346768653911096 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Middle";
	rename -uid "1ABB250B-4620-8631-A985-4E8984590E5A";
	setAttr ".t" -type "double3" -7.2867635036981637 2.7271599008496743 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.39014535867768835 3.5230710366106659 0.49836731718510879 ;
createNode mesh -n "MiddleShape" -p "Middle";
	rename -uid "67BE2E9F-43DC-0E86-02CC-BBB8D16BA782";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.37840349865204304 0.2107137031853199 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Barrel";
	rename -uid "507C8F56-4C76-5A2E-0B43-139A0E450421";
	setAttr ".t" -type "double3" -7.4670089466995089 3.8371256456096798 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.39873419276474797 4.6006802561623878 0.49836731718510879 ;
createNode mesh -n "BarrelShape" -p "Barrel";
	rename -uid "846A0AE3-46A0-C36D-FD70-78A19E06E526";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.43959877965697458 0.53499916308168038 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "Barrel";
	rename -uid "834FDABB-432C-6C67-18AB-A79DA14FC53E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[14:27]" "f[44:45]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:6]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:7]" "vtx[16]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[8:15]" "vtx[17]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 2 "f[0:13]" "f[42:43]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 2 "f[28:41]" "f[46:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[7:13]";
	setAttr ".pv" -type "double2" 0.49999994039535522 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 70 ".uvst[0].uvsp[0:69]" -type "float2" 0.64077634 0.088455677
		 0.59742028 0.034088865 0.53476888 0.0039175451 0.46523112 0.0039175451 0.40257972
		 0.034088865 0.35922363 0.088455677 0.34375 0.15625 0.35922363 0.22404432 0.40257972
		 0.27841115 0.46523112 0.30858248 0.53476888 0.30858248 0.59742028 0.27841115 0.6407764
		 0.22404432 0.65625 0.15625 0.375 0.3125 0.39285713 0.3125 0.41071427 0.3125 0.4285714
		 0.3125 0.44642854 0.3125 0.46428567 0.3125 0.48214281 0.3125 0.49999994 0.3125 0.51785707
		 0.3125 0.53571421 0.3125 0.55357134 0.3125 0.57142848 0.3125 0.58928561 0.3125 0.60714275
		 0.3125 0.62499988 0.3125 0.375 0.6875 0.39285713 0.6875 0.41071427 0.6875 0.4285714
		 0.6875 0.44642854 0.6875 0.46428567 0.6875 0.48214281 0.6875 0.49999994 0.6875 0.51785707
		 0.6875 0.53571421 0.6875 0.55357134 0.6875 0.57142848 0.6875 0.58928561 0.6875 0.60714275
		 0.6875 0.62499988 0.6875 0.64077634 0.77595568 0.59742028 0.72158885 0.53476888 0.69141757
		 0.46523112 0.69141757 0.40257972 0.72158885 0.35922363 0.77595568 0.34375 0.84375
		 0.35922363 0.91154432 0.40257972 0.96591115 0.46523112 0.99608248 0.53476888 0.99608248
		 0.59742028 0.96591115 0.6407764 0.91154432 0.65625 0.84375 0.5 0.15625 0.5 0.84375
		 0.41071427 0.6875 0.41071427 0.3125 0.53571421 0.3125 0.53571421 0.6875 0.53476888
		 0.0039175451 0.5 0.15625 0.46523112 0.30858248 0.5 0.84375 0.53476888 0.99608248
		 0.46523112 0.69141757;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt";
	setAttr ".pt[2]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[3]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[4]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[5]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[6]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[7]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[8]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[9]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[16]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[17]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[18]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[19]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[20]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[21]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[22]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[23]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[24]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[25]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[26]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[27]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[28]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[29]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[30]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[31]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[32]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[33]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[34]" -type "float3" -0.86043411 0 -9.9586866e-24 ;
	setAttr ".pt[35]" -type "float3" -0.86043411 0 -9.9586866e-24 ;
	setAttr -s 36 ".vt[0:35]"  0.90096951 -0.99999988 -0.43388346 0.62349033 -0.99999988 -0.78183126
		 0.22252178 -0.99999988 -0.97492784 -0.22252083 -0.99999988 0.97492784 0.22252131 -0.99999988 0.97492796
		 0.62348986 -0.99999988 0.7818315 0.90096951 -0.99999988 0.43388376 1.000000476837 -0.99999988 0
		 0.90096951 1.000000238419 -0.43388346 0.62349033 1.000000238419 -0.78183126 0.22252178 1.000000238419 -0.97492784
		 -0.22252083 1.000000238419 0.97492784 0.22252131 1.000000238419 0.97492796 0.62348986 1.000000238419 0.7818315
		 0.90096951 1.000000238419 0.43388376 1.000000476837 1.000000238419 0 4.7683716e-07 -0.99999988 0
		 4.7683716e-07 1.000000238419 0 0.22252178 -0.99999988 -0.97492784 -0.22252083 -0.99999988 -0.9749279
		 -0.22252083 1.000000238419 -0.9749279 0.22252178 1.000000238419 -0.97492784 -0.62348938 -0.99999988 -0.7818315
		 -0.62348938 1.000000238419 -0.7818315 -0.90096855 -0.99999988 -0.43388385 -0.90096855 1.000000238419 -0.43388385
		 -0.99999952 -0.99999988 -1.7881393e-07 -0.99999952 1.000000238419 -1.7881393e-07
		 -0.90096855 -0.99999988 0.43388355 -0.90096855 1.000000238419 0.43388355 -0.62348938 -0.99999988 0.78183132
		 -0.62348938 1.000000238419 0.78183132 -0.22252083 -0.99999988 0.97492784 -0.22252083 1.000000238419 0.97492784
		 4.7683716e-07 -0.99999988 0 4.7683716e-07 1.000000238419 0;
	setAttr -s 82 ".ed[0:81]"  0 1 0 1 2 0 3 4 0 4 5 0 5 6 0 6 7 0 7 0 0
		 8 9 0 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 1 1 9 1 2 10 0 3 11 0 4 12 1
		 5 13 1 6 14 1 7 15 1 16 0 1 16 1 1 16 2 0 16 3 0 16 4 1 16 5 1 16 6 1 16 7 1 8 17 1
		 9 17 1 10 17 0 11 17 0 12 17 1 13 17 1 14 17 1 15 17 1 2 18 0 18 19 0 19 20 1 10 21 0
		 21 20 0 18 21 0 19 22 0 22 23 1 20 23 0 22 24 0 24 25 1 23 25 0 24 26 0 26 27 1 25 27 0
		 26 28 0 28 29 1 27 29 0 28 30 0 30 31 1 29 31 0 3 32 0 30 32 0 11 33 0 32 33 0 31 33 0
		 16 34 0 34 18 0 34 19 1 34 22 1 34 24 1 34 26 1 34 28 1 34 30 1 34 32 0 17 35 0 20 35 1
		 21 35 0 23 35 1 25 35 1 27 35 1 29 35 1 31 35 1 33 35 0;
	setAttr -s 48 -ch 164 ".fc[0:47]" -type "polyFaces" 
		f 4 0 15 -8 -15
		mu 0 4 14 15 30 29
		f 4 1 16 -9 -16
		mu 0 4 15 16 31 30
		f 4 39 40 -43 -44
		mu 0 4 61 17 32 60
		f 4 44 45 -47 -41
		mu 0 4 17 18 33 32
		f 4 47 48 -50 -46
		mu 0 4 18 19 34 33
		f 4 50 51 -53 -49
		mu 0 4 19 20 35 34
		f 4 53 54 -56 -52
		mu 0 4 20 21 36 35
		f 4 56 57 -59 -55
		mu 0 4 21 22 37 36
		f 4 60 62 -64 -58
		mu 0 4 22 62 63 37
		f 4 2 18 -10 -18
		mu 0 4 23 24 39 38
		f 4 3 19 -11 -19
		mu 0 4 24 25 40 39
		f 4 4 20 -12 -20
		mu 0 4 25 26 41 40
		f 4 5 21 -13 -21
		mu 0 4 26 27 42 41
		f 4 6 14 -14 -22
		mu 0 4 27 28 43 42
		f 3 -1 -23 23
		mu 0 3 1 0 58
		f 3 -2 -24 24
		mu 0 3 2 1 58
		f 3 -40 -66 66
		mu 0 3 3 64 65
		f 3 -45 -67 67
		mu 0 3 4 3 65
		f 3 -48 -68 68
		mu 0 3 5 4 65
		f 3 -51 -69 69
		mu 0 3 6 5 65
		f 3 -54 -70 70
		mu 0 3 7 6 65
		f 3 -57 -71 71
		mu 0 3 8 7 65
		f 3 -61 -72 72
		mu 0 3 66 8 65
		f 3 -3 -26 26
		mu 0 3 10 9 58
		f 3 -4 -27 27
		mu 0 3 11 10 58
		f 3 -5 -28 28
		mu 0 3 12 11 58
		f 3 -6 -29 29
		mu 0 3 13 12 58
		f 3 -7 -30 22
		mu 0 3 0 13 58
		f 3 7 31 -31
		mu 0 3 56 55 59
		f 3 8 32 -32
		mu 0 3 55 54 59
		f 3 42 74 -76
		mu 0 3 68 53 67
		f 3 46 76 -75
		mu 0 3 53 52 67
		f 3 49 77 -77
		mu 0 3 52 51 67
		f 3 52 78 -78
		mu 0 3 51 50 67
		f 3 55 79 -79
		mu 0 3 50 49 67
		f 3 58 80 -80
		mu 0 3 49 48 67
		f 3 63 81 -81
		mu 0 3 48 69 67
		f 3 9 34 -34
		mu 0 3 47 46 59
		f 3 10 35 -35
		mu 0 3 46 45 59
		f 3 11 36 -36
		mu 0 3 45 44 59
		f 3 12 37 -37
		mu 0 3 44 57 59
		f 3 13 30 -38
		mu 0 3 57 56 59
		f 4 -17 38 43 -42
		mu 0 4 31 16 61 60
		f 4 17 61 -63 -60
		mu 0 4 23 38 63 62
		f 4 -25 64 65 -39
		mu 0 4 2 58 65 64
		f 4 25 59 -73 -65
		mu 0 4 58 9 66 65
		f 4 -33 41 75 -74
		mu 0 4 59 54 68 67
		f 4 33 73 -82 -62
		mu 0 4 47 59 67 69;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Bottom";
	rename -uid "83C93239-41EA-66E7-7A1F-4B956A254D7B";
	setAttr ".t" -type "double3" -4.7434966926192281 2.2340934574760483 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.39014535867768835 1.1458670246701095 0.36154543221825824 ;
createNode mesh -n "BottomShape" -p "Bottom";
	rename -uid "62C2FEE5-4D34-A9B5-7C0F-0393A588A96C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47258375485881776 0.24313078355044127 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "Bottom";
	rename -uid "BBAEFF31-44A3-40EE-26F1-6BBAD119F15C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[14:27]" "f[44:45]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:6]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:7]" "vtx[16]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[8:15]" "vtx[17]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 2 "f[0:13]" "f[42:43]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 2 "f[28:41]" "f[46:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[7:13]";
	setAttr ".pv" -type "double2" 0.49999994039535522 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 70 ".uvst[0].uvsp[0:69]" -type "float2" 0.64077634 0.088455677
		 0.59742028 0.034088865 0.53476888 0.0039175451 0.46523112 0.0039175451 0.40257972
		 0.034088865 0.35922363 0.088455677 0.34375 0.15625 0.35922363 0.22404432 0.40257972
		 0.27841115 0.46523112 0.30858248 0.53476888 0.30858248 0.59742028 0.27841115 0.6407764
		 0.22404432 0.65625 0.15625 0.375 0.3125 0.39285713 0.3125 0.41071427 0.3125 0.4285714
		 0.3125 0.44642854 0.3125 0.46428567 0.3125 0.48214281 0.3125 0.49999994 0.3125 0.51785707
		 0.3125 0.53571421 0.3125 0.55357134 0.3125 0.57142848 0.3125 0.58928561 0.3125 0.60714275
		 0.3125 0.62499988 0.3125 0.375 0.6875 0.39285713 0.6875 0.41071427 0.6875 0.4285714
		 0.6875 0.44642854 0.6875 0.46428567 0.6875 0.48214281 0.6875 0.49999994 0.6875 0.51785707
		 0.6875 0.53571421 0.6875 0.55357134 0.6875 0.57142848 0.6875 0.58928561 0.6875 0.60714275
		 0.6875 0.62499988 0.6875 0.64077634 0.77595568 0.59742028 0.72158885 0.53476888 0.69141757
		 0.46523112 0.69141757 0.40257972 0.72158885 0.35922363 0.77595568 0.34375 0.84375
		 0.35922363 0.91154432 0.40257972 0.96591115 0.46523112 0.99608248 0.53476888 0.99608248
		 0.59742028 0.96591115 0.6407764 0.91154432 0.65625 0.84375 0.5 0.15625 0.5 0.84375
		 0.41071427 0.6875 0.41071427 0.3125 0.53571421 0.3125 0.53571421 0.6875 0.53476888
		 0.0039175451 0.5 0.15625 0.46523112 0.30858248 0.5 0.84375 0.53476888 0.99608248
		 0.46523112 0.69141757;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  0.90096951 -0.99999988 -0.43388346 0.62349033 -0.99999988 -0.78183126
		 0.22252172 -0.99999988 -0.97492784 -0.22252089 -0.99999988 0.97492784 0.22252125 -0.99999988 0.97492796
		 0.6234898 -0.99999988 0.7818315 0.90096945 -0.99999988 0.43388376 1.000000476837 -0.99999988 0
		 0.90096945 1.000000238419 -0.43388346 0.62349027 1.000000238419 -0.78183126 0.22252178 1.000000238419 -0.97492784
		 -0.22252083 1.000000238419 0.97492784 0.22252131 1.000000238419 0.97492796 0.62348986 1.000000238419 0.7818315
		 0.90096951 1.000000238419 0.43388376 1.000000476837 1.000000238419 0 4.1723251e-07 -0.99999988 0
		 4.1723251e-07 1.000000238419 0 -0.63791245 -0.99999988 -0.97492784 -1.082955122 -0.99999988 -0.9749279
		 -1.082955122 1.000000238419 -0.9749279 -0.63791245 1.000000238419 -0.97492784 -1.48392367 -0.99999988 -0.7818315
		 -1.48392367 1.000000238419 -0.7818315 -1.76140261 -0.99999988 -0.43388385 -1.76140261 1.000000238419 -0.43388385
		 -1.86043358 -0.99999988 -1.7881393e-07 -1.86043358 1.000000238419 -1.7881393e-07
		 -1.76140285 -0.99999988 0.43388355 -1.76140285 1.000000238419 0.43388355 -1.48392344 -0.99999988 0.78183132
		 -1.48392344 1.000000238419 0.78183132 -1.082954884 -0.99999988 0.97492784 -1.082954884 1.000000238419 0.97492784
		 -0.86043364 -0.99999988 -9.9586866e-24 -0.86043364 1.000000238419 -9.9586866e-24;
	setAttr -s 82 ".ed[0:81]"  0 1 0 1 2 0 3 4 0 4 5 0 5 6 0 6 7 0 7 0 0
		 8 9 0 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 1 1 9 1 2 10 1 3 11 1 4 12 1
		 5 13 1 6 14 1 7 15 1 16 0 1 16 1 1 16 2 0 16 3 0 16 4 1 16 5 1 16 6 1 16 7 1 8 17 1
		 9 17 1 10 17 0 11 17 0 12 17 1 13 17 1 14 17 1 15 17 1 2 18 0 18 19 0 19 20 1 10 21 0
		 21 20 0 18 21 1 19 22 0 22 23 1 20 23 0 22 24 0 24 25 1 23 25 0 24 26 0 26 27 1 25 27 0
		 26 28 0 28 29 1 27 29 0 28 30 0 30 31 1 29 31 0 3 32 0 30 32 0 11 33 0 32 33 1 31 33 0
		 16 34 0 34 18 0 34 19 1 34 22 1 34 24 1 34 26 1 34 28 1 34 30 1 34 32 0 17 35 0 20 35 1
		 21 35 0 23 35 1 25 35 1 27 35 1 29 35 1 31 35 1 33 35 0;
	setAttr -s 48 -ch 164 ".fc[0:47]" -type "polyFaces" 
		f 4 0 15 -8 -15
		mu 0 4 14 15 30 29
		f 4 1 16 -9 -16
		mu 0 4 15 16 31 30
		f 4 39 40 -43 -44
		mu 0 4 61 17 32 60
		f 4 44 45 -47 -41
		mu 0 4 17 18 33 32
		f 4 47 48 -50 -46
		mu 0 4 18 19 34 33
		f 4 50 51 -53 -49
		mu 0 4 19 20 35 34
		f 4 53 54 -56 -52
		mu 0 4 20 21 36 35
		f 4 56 57 -59 -55
		mu 0 4 21 22 37 36
		f 4 60 62 -64 -58
		mu 0 4 22 62 63 37
		f 4 2 18 -10 -18
		mu 0 4 23 24 39 38
		f 4 3 19 -11 -19
		mu 0 4 24 25 40 39
		f 4 4 20 -12 -20
		mu 0 4 25 26 41 40
		f 4 5 21 -13 -21
		mu 0 4 26 27 42 41
		f 4 6 14 -14 -22
		mu 0 4 27 28 43 42
		f 3 -1 -23 23
		mu 0 3 1 0 58
		f 3 -2 -24 24
		mu 0 3 2 1 58
		f 3 -40 -66 66
		mu 0 3 3 64 65
		f 3 -45 -67 67
		mu 0 3 4 3 65
		f 3 -48 -68 68
		mu 0 3 5 4 65
		f 3 -51 -69 69
		mu 0 3 6 5 65
		f 3 -54 -70 70
		mu 0 3 7 6 65
		f 3 -57 -71 71
		mu 0 3 8 7 65
		f 3 -61 -72 72
		mu 0 3 66 8 65
		f 3 -3 -26 26
		mu 0 3 10 9 58
		f 3 -4 -27 27
		mu 0 3 11 10 58
		f 3 -5 -28 28
		mu 0 3 12 11 58
		f 3 -6 -29 29
		mu 0 3 13 12 58
		f 3 -7 -30 22
		mu 0 3 0 13 58
		f 3 7 31 -31
		mu 0 3 56 55 59
		f 3 8 32 -32
		mu 0 3 55 54 59
		f 3 42 74 -76
		mu 0 3 68 53 67
		f 3 46 76 -75
		mu 0 3 53 52 67
		f 3 49 77 -77
		mu 0 3 52 51 67
		f 3 52 78 -78
		mu 0 3 51 50 67
		f 3 55 79 -79
		mu 0 3 50 49 67
		f 3 58 80 -80
		mu 0 3 49 48 67
		f 3 63 81 -81
		mu 0 3 48 69 67
		f 3 9 34 -34
		mu 0 3 47 46 59
		f 3 10 35 -35
		mu 0 3 46 45 59
		f 3 11 36 -36
		mu 0 3 45 44 59
		f 3 12 37 -37
		mu 0 3 44 57 59
		f 3 13 30 -38
		mu 0 3 57 56 59
		f 4 -17 38 43 -42
		mu 0 4 31 16 61 60
		f 4 17 61 -63 -60
		mu 0 4 23 38 63 62
		f 4 -25 64 65 -39
		mu 0 4 2 58 65 64
		f 4 25 59 -73 -65
		mu 0 4 58 9 66 65
		f 4 -33 41 75 -74
		mu 0 4 59 54 68 67
		f 4 33 73 -82 -62
		mu 0 4 47 59 67 69;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Spear";
	rename -uid "6DB43166-4705-C0EF-E0FA-DF8E4142A004";
	setAttr ".t" -type "double3" -14.130174828733594 3.6880358659421284 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.3205529949364061 1.3957824290401184 0.3205529949364061 ;
createNode mesh -n "SpearShape" -p "Spear";
	rename -uid "6F75CCE1-4A30-278C-B4C1-F5A41557A670";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.63336232304573059 0.52186478674411774 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Bolts";
	rename -uid "66B6459E-42B2-51CF-1098-5CBDB3977A2A";
	setAttr ".rp" -type "double3" -7.4660744097815517 2.7965890564268516 0 ;
	setAttr ".sp" -type "double3" -7.4660744097815517 2.7965890564268516 0 ;
createNode transform -n "pCylinder13" -p "Bolts";
	rename -uid "6B50EDCA-4C07-E317-9E52-33B2CAB0E94A";
	setAttr ".t" -type "double3" -5.1585952581567431 1.9043091120006044 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.094412423909159715 0.56853894773965818 0.094412423909159715 ;
createNode mesh -n "pCylinderShape13" -p "pCylinder13";
	rename -uid "00148F20-4461-903B-04EF-709B74432B04";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape3" -p "pCylinder13";
	rename -uid "306D83E2-46AA-67C4-85A2-76A6EFBD1477";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6:11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:5]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:5]" "vtx[12]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:5]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[6:11]" "vtx[13]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[6:11]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:5]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[12:17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[6:11]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.6875 0.41666666 0.6875 0.45833331
		 0.6875 0.49999997 0.6875 0.54166663 0.6875 0.58333331 0.6875 0.625 0.6875 0.57812506
		 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649
		 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  0.50000024 -1 -0.86602533 -0.49999985 -1 -0.86602551
		 -1 -1 -1.4901161e-07 -0.50000012 -1 0.86602539 0.49999997 -1 0.86602545 1 -1 0 0.50000024 1 -0.86602533
		 -0.49999985 1 -0.86602551 -1 1 -1.4901161e-07 -0.50000012 1 0.86602539 0.49999997 1 0.86602545
		 1 1 0 0 -1 0 0 1 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder12" -p "Bolts";
	rename -uid "BAD46968-48EE-F10A-D2C1-A389CD89042A";
	setAttr ".t" -type "double3" -9.7735535614063593 2.7029788099158814 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.094412423909159715 0.56853894773965818 0.094412423909159715 ;
createNode mesh -n "pCylinderShape12" -p "pCylinder12";
	rename -uid "81652108-4BAA-4B71-11F4-AD885EC66257";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape4" -p "pCylinder12";
	rename -uid "75C52A43-4681-AD1F-45B9-30A71CA7A74D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6:11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:5]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:5]" "vtx[12]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:5]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[6:11]" "vtx[13]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[6:11]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:5]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[12:17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[6:11]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.6875 0.41666666 0.6875 0.45833331
		 0.6875 0.49999997 0.6875 0.54166663 0.6875 0.58333331 0.6875 0.625 0.6875 0.57812506
		 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649
		 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  0.50000024 -1 -0.86602533 -0.49999985 -1 -0.86602551
		 -1 -1 -1.4901161e-07 -0.50000012 -1 0.86602539 0.49999997 -1 0.86602545 1 -1 0 0.50000024 1 -0.86602533
		 -0.49999985 1 -0.86602551 -1 1 -1.4901161e-07 -0.50000012 1 0.86602539 0.49999997 1 0.86602545
		 1 1 0 0 -1 0 0 1 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder11" -p "Bolts";
	rename -uid "B2C5647F-4670-84C6-4174-17A6BBCADBED";
	setAttr ".t" -type "double3" -9.7735535614063593 3.6888689952256803 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.094412423909159715 0.56853894773965818 0.094412423909159715 ;
createNode mesh -n "pCylinderShape11" -p "pCylinder11";
	rename -uid "E50BC08C-499E-F1AD-9ADD-CD959022FE58";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape5" -p "pCylinder11";
	rename -uid "3B8B5F4D-4314-1A20-FCEA-1D8A16364D00";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6:11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:5]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:5]" "vtx[12]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:5]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[6:11]" "vtx[13]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[6:11]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:5]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[12:17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[6:11]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.6875 0.41666666 0.6875 0.45833331
		 0.6875 0.49999997 0.6875 0.54166663 0.6875 0.58333331 0.6875 0.625 0.6875 0.57812506
		 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649
		 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  0.50000024 -1 -0.86602533 -0.49999985 -1 -0.86602551
		 -1 -1 -1.4901161e-07 -0.50000012 -1 0.86602539 0.49999997 -1 0.86602545 1 -1 0 0.50000024 1 -0.86602533
		 -0.49999985 1 -0.86602551 -1 1 -1.4901161e-07 -0.50000012 1 0.86602539 0.49999997 1 0.86602545
		 1 1 0 0 -1 0 0 1 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder10" -p "Bolts";
	rename -uid "C061C13F-4AF0-D2C6-CC2C-6F900E9918CD";
	setAttr ".t" -type "double3" -5.1585952581567431 2.7029788099158814 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.094412423909159715 0.56853894773965818 0.094412423909159715 ;
createNode mesh -n "pCylinderShape10" -p "pCylinder10";
	rename -uid "46048DFD-4C4A-FCB0-94A3-0692E2B53EF4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape6" -p "pCylinder10";
	rename -uid "9C3C3052-4AC3-AC9D-7856-92AACFEF4CF1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6:11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:5]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:5]" "vtx[12]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:5]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[6:11]" "vtx[13]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[6:11]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:5]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[12:17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[6:11]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.6875 0.41666666 0.6875 0.45833331
		 0.6875 0.49999997 0.6875 0.54166663 0.6875 0.58333331 0.6875 0.625 0.6875 0.57812506
		 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649
		 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  0.50000024 -1 -0.86602533 -0.49999985 -1 -0.86602551
		 -1 -1 -1.4901161e-07 -0.50000012 -1 0.86602539 0.49999997 -1 0.86602545 1 -1 0 0.50000024 1 -0.86602533
		 -0.49999985 1 -0.86602551 -1 1 -1.4901161e-07 -0.50000012 1 0.86602539 0.49999997 1 0.86602545
		 1 1 0 0 -1 0 0 1 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder9" -p "Bolts";
	rename -uid "6641DBFE-4431-A49D-559D-C597A912ADD9";
	setAttr ".t" -type "double3" -5.1585952581567431 3.6888689952256803 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.094412423909159715 0.56853894773965818 0.094412423909159715 ;
createNode mesh -n "pCylinderShape9" -p "pCylinder9";
	rename -uid "83C3BF72-425F-A7D4-38DB-7B83004EEF41";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape7" -p "pCylinder9";
	rename -uid "9F354F17-442D-DE49-270F-17A6CD240CC0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6:11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:5]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:5]" "vtx[12]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:5]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[6:11]" "vtx[13]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[6:11]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:5]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[12:17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[6:11]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.6875 0.41666666 0.6875 0.45833331
		 0.6875 0.49999997 0.6875 0.54166663 0.6875 0.58333331 0.6875 0.625 0.6875 0.57812506
		 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649
		 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  0.50000024 -1 -0.86602533 -0.49999985 -1 -0.86602551
		 -1 -1 -1.4901161e-07 -0.50000012 -1 0.86602539 0.49999997 -1 0.86602545 1 -1 0 0.50000024 1 -0.86602533
		 -0.49999985 1 -0.86602551 -1 1 -1.4901161e-07 -0.50000012 1 0.86602539 0.49999997 1 0.86602545
		 1 1 0 0 -1 0 0 1 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder8" -p "Bolts";
	rename -uid "2541F830-44E1-85C9-FDC1-178197E652CA";
	setAttr ".t" -type "double3" -7.01754405219119 3.6888689952256803 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.094412423909159715 0.56853894773965818 0.094412423909159715 ;
createNode mesh -n "pCylinderShape8" -p "pCylinder8";
	rename -uid "EFE83BC8-4653-5CE6-C9E1-899309B5FE71";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape8" -p "pCylinder8";
	rename -uid "CE4AE7F5-4442-8A5C-7F67-FCBBCF7A9B1E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6:11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:5]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:5]" "vtx[12]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:5]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[6:11]" "vtx[13]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[6:11]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:5]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[12:17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[6:11]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.6875 0.41666666 0.6875 0.45833331
		 0.6875 0.49999997 0.6875 0.54166663 0.6875 0.58333331 0.6875 0.625 0.6875 0.57812506
		 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649
		 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  0.50000024 -1 -0.86602533 -0.49999985 -1 -0.86602551
		 -1 -1 -1.4901161e-07 -0.50000012 -1 0.86602539 0.49999997 -1 0.86602545 1 -1 0 0.50000024 1 -0.86602533
		 -0.49999985 1 -0.86602551 -1 1 -1.4901161e-07 -0.50000012 1 0.86602539 0.49999997 1 0.86602545
		 1 1 0 0 -1 0 0 1 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder7" -p "Bolts";
	rename -uid "4D10B3CE-4606-C4DF-EC58-04BBA81EFBBD";
	setAttr ".t" -type "double3" -7.01754405219119 2.7029788099158814 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.094412423909159715 0.56853894773965818 0.094412423909159715 ;
createNode mesh -n "pCylinderShape7" -p "pCylinder7";
	rename -uid "863E2997-4C50-6CF0-360A-E7949CD8DB2E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder14" -p "Bolts";
	rename -uid "2EE7EA28-4584-B2C6-904A-74ABB7FCD6BD";
	setAttr ".t" -type "double3" -1.918939944652708 2.7091177973893483 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.094412423909159715 0.65808236874006532 0.094412423909159715 ;
createNode mesh -n "pCylinderShape14" -p "pCylinder14";
	rename -uid "5323BB74-4E42-2B29-40B7-678E1B278BBA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape9" -p "pCylinder14";
	rename -uid "096FFBBD-473F-DE55-603E-D2B4707A8C2F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6:11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:5]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:5]" "vtx[12]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:5]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[6:11]" "vtx[13]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[6:11]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:5]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[12:17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[6:11]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.6875 0.41666666 0.6875 0.45833331
		 0.6875 0.49999997 0.6875 0.54166663 0.6875 0.58333331 0.6875 0.625 0.6875 0.57812506
		 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649
		 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  0.50000024 -1 -0.86602533 -0.49999985 -1 -0.86602551
		 -1 -1 -1.4901161e-07 -0.50000012 -1 0.86602539 0.49999997 -1 0.86602545 1 -1 0 0.50000024 1 -0.86602533
		 -0.49999985 1 -0.86602551 -1 1 -1.4901161e-07 -0.50000012 1 0.86602539 0.49999997 1 0.86602545
		 1 1 0 0 -1 0 0 1 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder15" -p "Bolts";
	rename -uid "EC2038D4-47E0-0B99-7741-8D98F21078D4";
	setAttr ".t" -type "double3" -2.831991952176319 3.237119891437604 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.094412423909159715 0.65808236874006532 0.094412423909159715 ;
createNode mesh -n "pCylinderShape15" -p "pCylinder15";
	rename -uid "7342504E-4439-3412-9779-25B19208ACB4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape10" -p "pCylinder15";
	rename -uid "2C02CA86-4069-DCC8-3008-6983EDB3ED2C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6:11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:5]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:5]" "vtx[12]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:5]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[6:11]" "vtx[13]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[6:11]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:5]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[12:17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[6:11]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.6875 0.41666666 0.6875 0.45833331
		 0.6875 0.49999997 0.6875 0.54166663 0.6875 0.58333331 0.6875 0.625 0.6875 0.57812506
		 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649
		 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  0.50000024 -1 -0.86602533 -0.49999985 -1 -0.86602551
		 -1 -1 -1.4901161e-07 -0.50000012 -1 0.86602539 0.49999997 -1 0.86602545 1 -1 0 0.50000024 1 -0.86602533
		 -0.49999985 1 -0.86602551 -1 1 -1.4901161e-07 -0.50000012 1 0.86602539 0.49999997 1 0.86602545
		 1 1 0 0 -1 0 0 1 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder16" -p "Bolts";
	rename -uid "0FBE57FE-42A4-3EAC-D968-59B43EC50E47";
	setAttr ".t" -type "double3" -4.1266681004387618 3.237119891437604 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.094412423909159715 0.65808236874006532 0.094412423909159715 ;
createNode mesh -n "pCylinderShape16" -p "pCylinder16";
	rename -uid "B64F94C8-490A-1361-906A-C48095283FF6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape11" -p "pCylinder16";
	rename -uid "BFDE2E64-448F-5C60-391A-AA981240F01B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6:11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:5]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:5]" "vtx[12]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:5]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[6:11]" "vtx[13]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[6:11]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:5]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[12:17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[6:11]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.6875 0.41666666 0.6875 0.45833331
		 0.6875 0.49999997 0.6875 0.54166663 0.6875 0.58333331 0.6875 0.625 0.6875 0.57812506
		 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649
		 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  0.50000024 -1 -0.86602533 -0.49999985 -1 -0.86602551
		 -1 -1 -1.4901161e-07 -0.50000012 -1 0.86602539 0.49999997 -1 0.86602545 1 -1 0 0.50000024 1 -0.86602533
		 -0.49999985 1 -0.86602551 -1 1 -1.4901161e-07 -0.50000012 1 0.86602539 0.49999997 1 0.86602545
		 1 1 0 0 -1 0 0 1 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Barrel_Holders";
	rename -uid "DDE7FB91-4741-C1B6-A4FF-EC9F960EEBDE";
createNode transform -n "pCylinder4" -p "Barrel_Holders";
	rename -uid "2DE91F19-48A2-7BFE-04FF-CCA47ED99AC1";
	setAttr ".t" -type "double3" -9.7256731711521223 4.6448589264614641 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.39873419276474797 0.12429339457440051 0.55227999140717965 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	rename -uid "94D8A9D4-46E9-457A-29E0-B69E93A868F6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pCylinder4";
	rename -uid "7A90954D-49F2-02CA-A242-ECA6D60DBB3E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[14:27]" "f[44:45]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:6]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:7]" "vtx[16]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[8:15]" "vtx[17]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 2 "f[0:13]" "f[42:43]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 2 "f[28:41]" "f[46:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[7:13]";
	setAttr ".pv" -type "double2" 0.49999994039535522 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 70 ".uvst[0].uvsp[0:69]" -type "float2" 0.64077634 0.088455677
		 0.59742028 0.034088865 0.53476888 0.0039175451 0.46523112 0.0039175451 0.40257972
		 0.034088865 0.35922363 0.088455677 0.34375 0.15625 0.35922363 0.22404432 0.40257972
		 0.27841115 0.46523112 0.30858248 0.53476888 0.30858248 0.59742028 0.27841115 0.6407764
		 0.22404432 0.65625 0.15625 0.375 0.3125 0.39285713 0.3125 0.41071427 0.3125 0.4285714
		 0.3125 0.44642854 0.3125 0.46428567 0.3125 0.48214281 0.3125 0.49999994 0.3125 0.51785707
		 0.3125 0.53571421 0.3125 0.55357134 0.3125 0.57142848 0.3125 0.58928561 0.3125 0.60714275
		 0.3125 0.62499988 0.3125 0.375 0.6875 0.39285713 0.6875 0.41071427 0.6875 0.4285714
		 0.6875 0.44642854 0.6875 0.46428567 0.6875 0.48214281 0.6875 0.49999994 0.6875 0.51785707
		 0.6875 0.53571421 0.6875 0.55357134 0.6875 0.57142848 0.6875 0.58928561 0.6875 0.60714275
		 0.6875 0.62499988 0.6875 0.64077634 0.77595568 0.59742028 0.72158885 0.53476888 0.69141757
		 0.46523112 0.69141757 0.40257972 0.72158885 0.35922363 0.77595568 0.34375 0.84375
		 0.35922363 0.91154432 0.40257972 0.96591115 0.46523112 0.99608248 0.53476888 0.99608248
		 0.59742028 0.96591115 0.6407764 0.91154432 0.65625 0.84375 0.5 0.15625 0.5 0.84375
		 0.41071427 0.6875 0.41071427 0.3125 0.53571421 0.3125 0.53571421 0.6875 0.53476888
		 0.0039175451 0.5 0.15625 0.46523112 0.30858248 0.5 0.84375 0.53476888 0.99608248
		 0.46523112 0.69141757;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt";
	setAttr ".pt[2]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[3]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[4]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[5]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[6]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[7]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[8]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[9]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[16]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[17]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[18]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[19]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[20]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[21]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[22]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[23]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[24]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[25]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[26]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[27]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[28]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[29]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[30]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[31]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[32]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[33]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[34]" -type "float3" -0.86043411 0 -9.9586866e-24 ;
	setAttr ".pt[35]" -type "float3" -0.86043411 0 -9.9586866e-24 ;
	setAttr -s 36 ".vt[0:35]"  0.90096951 -0.99999988 -0.43388346 0.62349033 -0.99999988 -0.78183126
		 0.22252178 -0.99999988 -0.97492784 -0.22252083 -0.99999988 0.97492784 0.22252131 -0.99999988 0.97492796
		 0.62348986 -0.99999988 0.7818315 0.90096951 -0.99999988 0.43388376 1.000000476837 -0.99999988 0
		 0.90096951 1.000000238419 -0.43388346 0.62349033 1.000000238419 -0.78183126 0.22252178 1.000000238419 -0.97492784
		 -0.22252083 1.000000238419 0.97492784 0.22252131 1.000000238419 0.97492796 0.62348986 1.000000238419 0.7818315
		 0.90096951 1.000000238419 0.43388376 1.000000476837 1.000000238419 0 4.7683716e-07 -0.99999988 0
		 4.7683716e-07 1.000000238419 0 0.22252178 -0.99999988 -0.97492784 -0.22252083 -0.99999988 -0.9749279
		 -0.22252083 1.000000238419 -0.9749279 0.22252178 1.000000238419 -0.97492784 -0.62348938 -0.99999988 -0.7818315
		 -0.62348938 1.000000238419 -0.7818315 -0.90096855 -0.99999988 -0.43388385 -0.90096855 1.000000238419 -0.43388385
		 -0.99999952 -0.99999988 -1.7881393e-07 -0.99999952 1.000000238419 -1.7881393e-07
		 -0.90096855 -0.99999988 0.43388355 -0.90096855 1.000000238419 0.43388355 -0.62348938 -0.99999988 0.78183132
		 -0.62348938 1.000000238419 0.78183132 -0.22252083 -0.99999988 0.97492784 -0.22252083 1.000000238419 0.97492784
		 4.7683716e-07 -0.99999988 0 4.7683716e-07 1.000000238419 0;
	setAttr -s 82 ".ed[0:81]"  0 1 0 1 2 0 3 4 0 4 5 0 5 6 0 6 7 0 7 0 0
		 8 9 0 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 1 1 9 1 2 10 0 3 11 0 4 12 1
		 5 13 1 6 14 1 7 15 1 16 0 1 16 1 1 16 2 0 16 3 0 16 4 1 16 5 1 16 6 1 16 7 1 8 17 1
		 9 17 1 10 17 0 11 17 0 12 17 1 13 17 1 14 17 1 15 17 1 2 18 0 18 19 0 19 20 1 10 21 0
		 21 20 0 18 21 0 19 22 0 22 23 1 20 23 0 22 24 0 24 25 1 23 25 0 24 26 0 26 27 1 25 27 0
		 26 28 0 28 29 1 27 29 0 28 30 0 30 31 1 29 31 0 3 32 0 30 32 0 11 33 0 32 33 0 31 33 0
		 16 34 0 34 18 0 34 19 1 34 22 1 34 24 1 34 26 1 34 28 1 34 30 1 34 32 0 17 35 0 20 35 1
		 21 35 0 23 35 1 25 35 1 27 35 1 29 35 1 31 35 1 33 35 0;
	setAttr -s 48 -ch 164 ".fc[0:47]" -type "polyFaces" 
		f 4 0 15 -8 -15
		mu 0 4 14 15 30 29
		f 4 1 16 -9 -16
		mu 0 4 15 16 31 30
		f 4 39 40 -43 -44
		mu 0 4 61 17 32 60
		f 4 44 45 -47 -41
		mu 0 4 17 18 33 32
		f 4 47 48 -50 -46
		mu 0 4 18 19 34 33
		f 4 50 51 -53 -49
		mu 0 4 19 20 35 34
		f 4 53 54 -56 -52
		mu 0 4 20 21 36 35
		f 4 56 57 -59 -55
		mu 0 4 21 22 37 36
		f 4 60 62 -64 -58
		mu 0 4 22 62 63 37
		f 4 2 18 -10 -18
		mu 0 4 23 24 39 38
		f 4 3 19 -11 -19
		mu 0 4 24 25 40 39
		f 4 4 20 -12 -20
		mu 0 4 25 26 41 40
		f 4 5 21 -13 -21
		mu 0 4 26 27 42 41
		f 4 6 14 -14 -22
		mu 0 4 27 28 43 42
		f 3 -1 -23 23
		mu 0 3 1 0 58
		f 3 -2 -24 24
		mu 0 3 2 1 58
		f 3 -40 -66 66
		mu 0 3 3 64 65
		f 3 -45 -67 67
		mu 0 3 4 3 65
		f 3 -48 -68 68
		mu 0 3 5 4 65
		f 3 -51 -69 69
		mu 0 3 6 5 65
		f 3 -54 -70 70
		mu 0 3 7 6 65
		f 3 -57 -71 71
		mu 0 3 8 7 65
		f 3 -61 -72 72
		mu 0 3 66 8 65
		f 3 -3 -26 26
		mu 0 3 10 9 58
		f 3 -4 -27 27
		mu 0 3 11 10 58
		f 3 -5 -28 28
		mu 0 3 12 11 58
		f 3 -6 -29 29
		mu 0 3 13 12 58
		f 3 -7 -30 22
		mu 0 3 0 13 58
		f 3 7 31 -31
		mu 0 3 56 55 59
		f 3 8 32 -32
		mu 0 3 55 54 59
		f 3 42 74 -76
		mu 0 3 68 53 67
		f 3 46 76 -75
		mu 0 3 53 52 67
		f 3 49 77 -77
		mu 0 3 52 51 67
		f 3 52 78 -78
		mu 0 3 51 50 67
		f 3 55 79 -79
		mu 0 3 50 49 67
		f 3 58 80 -80
		mu 0 3 49 48 67
		f 3 63 81 -81
		mu 0 3 48 69 67
		f 3 9 34 -34
		mu 0 3 47 46 59
		f 3 10 35 -35
		mu 0 3 46 45 59
		f 3 11 36 -36
		mu 0 3 45 44 59
		f 3 12 37 -37
		mu 0 3 44 57 59
		f 3 13 30 -38
		mu 0 3 57 56 59
		f 4 -17 38 43 -42
		mu 0 4 31 16 61 60
		f 4 17 61 -63 -60
		mu 0 4 23 38 63 62
		f 4 -25 64 65 -39
		mu 0 4 2 58 65 64
		f 4 25 59 -73 -65
		mu 0 4 58 9 66 65
		f 4 -33 41 75 -74
		mu 0 4 59 54 68 67
		f 4 33 73 -82 -62
		mu 0 4 47 59 67 69;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape12" -p "pCylinder4";
	rename -uid "E85256C0-4CBD-EDC4-B470-509FAC39FAA0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[14:27]" "f[44:45]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:6]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:7]" "vtx[16]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[8:15]" "vtx[17]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 2 "f[0:13]" "f[42:43]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 2 "f[28:41]" "f[46:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[7:13]";
	setAttr ".pv" -type "double2" 0.5 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 70 ".uvst[0].uvsp[0:69]" -type "float2" 0.64077634 0.088455677
		 0.59742028 0.034088865 0.53476888 0.0039175451 0.46523112 0.0039175451 0.40257972
		 0.034088865 0.35922363 0.088455677 0.34375 0.15625 0.35922363 0.22404432 0.40257972
		 0.27841115 0.46523112 0.30858248 0.53476888 0.30858248 0.59742028 0.27841115 0.6407764
		 0.22404432 0.65625 0.15625 0.375 0.3125 0.39285713 0.3125 0.41071427 0.3125 0.4285714
		 0.3125 0.44642854 0.3125 0.46428567 0.3125 0.48214281 0.3125 0.49999994 0.3125 0.51785707
		 0.3125 0.53571421 0.3125 0.55357134 0.3125 0.57142848 0.3125 0.58928561 0.3125 0.60714275
		 0.3125 0.62499988 0.3125 0.375 0.6875 0.39285713 0.6875 0.41071427 0.6875 0.4285714
		 0.6875 0.44642854 0.6875 0.46428567 0.6875 0.48214281 0.6875 0.49999994 0.6875 0.51785707
		 0.6875 0.53571421 0.6875 0.55357134 0.6875 0.57142848 0.6875 0.58928561 0.6875 0.60714275
		 0.6875 0.62499988 0.6875 0.64077634 0.77595568 0.59742028 0.72158885 0.53476888 0.69141757
		 0.46523112 0.69141757 0.40257972 0.72158885 0.35922363 0.77595568 0.34375 0.84375
		 0.35922363 0.91154432 0.40257972 0.96591115 0.46523112 0.99608248 0.53476888 0.99608248
		 0.59742028 0.96591115 0.6407764 0.91154432 0.65625 0.84375 0.5 0.15625 0.5 0.84375
		 0.41071427 0.6875 0.41071427 0.3125 0.53571421 0.3125 0.53571421 0.6875 0.53476888
		 0.0039175451 0.5 0.15625 0.46523112 0.30858248 0.5 0.84375 0.53476888 0.99608248
		 0.46523112 0.69141757;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".pt[0:35]" -type "float3"  -1.8728119 0 0 -1.8728119 
		0 0 -1.8728119 0 0 -1.8728119 0 0 -1.8728119 0 0 -1.8728119 0 0 -1.8728119 0 0 -1.8728119 
		0 6.6391244e-24 -1.8728119 0.74844724 0 -1.8728119 0.74844724 0 -1.8728119 0.74844724 
		0 -1.8728119 0.74844724 0 -1.8728119 0.74844724 0 -1.8728119 0.74844724 0 -1.8728119 
		0.74844724 0 -1.8728119 0.74844724 3.3195622e-24 -1.8728119 0 6.6391244e-24 -1.8728119 
		0.74844724 3.3195622e-24 -4.9556913 0 0 -4.9556913 0 0 -4.9556913 0.74844724 0 -4.9556913 
		0.74844724 0 -4.9556913 0 0 -4.9556913 0.74844724 0 -4.9556913 0 0 -4.9556913 0.74844724 
		0 -4.9556913 0 0 -4.9556913 0.74844724 0 -4.9556913 0 0 -4.9556913 0.74844724 0 -4.9556913 
		0 0 -4.9556913 0.74844724 0 -4.9556913 0 0 -4.9556913 0.74844724 0 -4.9556913 0 -6.6391244e-24 
		-4.9556913 0.74844724 -9.9586866e-24;
	setAttr -s 36 ".vt[0:35]"  0.90096951 -0.99999988 -0.43388346 0.62349033 -0.99999988 -0.78183126
		 0.22252172 -0.99999988 -0.97492784 -0.22252089 -0.99999988 0.97492784 0.22252125 -0.99999988 0.97492796
		 0.6234898 -0.99999988 0.7818315 0.90096945 -0.99999988 0.43388376 1.000000476837 -0.99999988 0
		 0.90096945 1.000000238419 -0.43388346 0.62349027 1.000000238419 -0.78183126 0.22252178 1.000000238419 -0.97492784
		 -0.22252083 1.000000238419 0.97492784 0.22252131 1.000000238419 0.97492796 0.62348986 1.000000238419 0.7818315
		 0.90096951 1.000000238419 0.43388376 1.000000476837 1.000000238419 0 4.1723251e-07 -0.99999988 0
		 4.1723251e-07 1.000000238419 0 -0.63791245 -0.99999988 -0.97492784 -1.082955122 -0.99999988 -0.9749279
		 -1.082955122 1.000000238419 -0.9749279 -0.63791245 1.000000238419 -0.97492784 -1.48392367 -0.99999988 -0.7818315
		 -1.48392367 1.000000238419 -0.7818315 -1.76140261 -0.99999988 -0.43388385 -1.76140261 1.000000238419 -0.43388385
		 -1.86043358 -0.99999988 -1.7881393e-07 -1.86043358 1.000000238419 -1.7881393e-07
		 -1.76140285 -0.99999988 0.43388355 -1.76140285 1.000000238419 0.43388355 -1.48392344 -0.99999988 0.78183132
		 -1.48392344 1.000000238419 0.78183132 -1.082954884 -0.99999988 0.97492784 -1.082954884 1.000000238419 0.97492784
		 -0.86043364 -0.99999988 -9.9586866e-24 -0.86043364 1.000000238419 -9.9586866e-24;
	setAttr -s 82 ".ed[0:81]"  0 1 0 1 2 0 3 4 0 4 5 0 5 6 0 6 7 0 7 0 0
		 8 9 0 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 1 1 9 1 2 10 1 3 11 1 4 12 1
		 5 13 1 6 14 1 7 15 1 16 0 1 16 1 1 16 2 0 16 3 0 16 4 1 16 5 1 16 6 1 16 7 1 8 17 1
		 9 17 1 10 17 0 11 17 0 12 17 1 13 17 1 14 17 1 15 17 1 2 18 0 18 19 0 19 20 1 10 21 0
		 21 20 0 18 21 1 19 22 0 22 23 1 20 23 0 22 24 0 24 25 1 23 25 0 24 26 0 26 27 1 25 27 0
		 26 28 0 28 29 1 27 29 0 28 30 0 30 31 1 29 31 0 3 32 0 30 32 0 11 33 0 32 33 1 31 33 0
		 16 34 0 34 18 0 34 19 1 34 22 1 34 24 1 34 26 1 34 28 1 34 30 1 34 32 0 17 35 0 20 35 1
		 21 35 0 23 35 1 25 35 1 27 35 1 29 35 1 31 35 1 33 35 0;
	setAttr -s 48 -ch 164 ".fc[0:47]" -type "polyFaces" 
		f 4 0 15 -8 -15
		mu 0 4 14 15 30 29
		f 4 1 16 -9 -16
		mu 0 4 15 16 31 30
		f 4 39 40 -43 -44
		mu 0 4 61 17 32 60
		f 4 44 45 -47 -41
		mu 0 4 17 18 33 32
		f 4 47 48 -50 -46
		mu 0 4 18 19 34 33
		f 4 50 51 -53 -49
		mu 0 4 19 20 35 34
		f 4 53 54 -56 -52
		mu 0 4 20 21 36 35
		f 4 56 57 -59 -55
		mu 0 4 21 22 37 36
		f 4 60 62 -64 -58
		mu 0 4 22 62 63 37
		f 4 2 18 -10 -18
		mu 0 4 23 24 39 38
		f 4 3 19 -11 -19
		mu 0 4 24 25 40 39
		f 4 4 20 -12 -20
		mu 0 4 25 26 41 40
		f 4 5 21 -13 -21
		mu 0 4 26 27 42 41
		f 4 6 14 -14 -22
		mu 0 4 27 28 43 42
		f 3 -1 -23 23
		mu 0 3 1 0 58
		f 3 -2 -24 24
		mu 0 3 2 1 58
		f 3 -40 -66 66
		mu 0 3 3 64 65
		f 3 -45 -67 67
		mu 0 3 4 3 65
		f 3 -48 -68 68
		mu 0 3 5 4 65
		f 3 -51 -69 69
		mu 0 3 6 5 65
		f 3 -54 -70 70
		mu 0 3 7 6 65
		f 3 -57 -71 71
		mu 0 3 8 7 65
		f 3 -61 -72 72
		mu 0 3 66 8 65
		f 3 -3 -26 26
		mu 0 3 10 9 58
		f 3 -4 -27 27
		mu 0 3 11 10 58
		f 3 -5 -28 28
		mu 0 3 12 11 58
		f 3 -6 -29 29
		mu 0 3 13 12 58
		f 3 -7 -30 22
		mu 0 3 0 13 58
		f 3 7 31 -31
		mu 0 3 56 55 59
		f 3 8 32 -32
		mu 0 3 55 54 59
		f 3 42 74 -76
		mu 0 3 68 53 67
		f 3 46 76 -75
		mu 0 3 53 52 67
		f 3 49 77 -77
		mu 0 3 52 51 67
		f 3 52 78 -78
		mu 0 3 51 50 67
		f 3 55 79 -79
		mu 0 3 50 49 67
		f 3 58 80 -80
		mu 0 3 49 48 67
		f 3 63 81 -81
		mu 0 3 48 69 67
		f 3 9 34 -34
		mu 0 3 47 46 59
		f 3 10 35 -35
		mu 0 3 46 45 59
		f 3 11 36 -36
		mu 0 3 45 44 59
		f 3 12 37 -37
		mu 0 3 44 57 59
		f 3 13 30 -38
		mu 0 3 57 56 59
		f 4 -17 38 43 -42
		mu 0 4 31 16 61 60
		f 4 17 61 -63 -60
		mu 0 4 23 38 63 62
		f 4 -25 64 65 -39
		mu 0 4 2 58 65 64
		f 4 25 59 -73 -65
		mu 0 4 58 9 66 65
		f 4 -33 41 75 -74
		mu 0 4 59 54 68 67
		f 4 33 73 -82 -62
		mu 0 4 47 59 67 69;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder5" -p "Barrel_Holders";
	rename -uid "BADA5404-440D-3858-243A-87AA421AAA90";
	setAttr ".t" -type "double3" -6.9595080252423234 4.6448589264614641 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.39873419276474797 0.12429339457440051 0.55227999140717965 ;
createNode mesh -n "pCylinderShape5" -p "pCylinder5";
	rename -uid "360439A0-4D84-E351-36E9-A5B0541AD69C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.515625 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pCylinder5";
	rename -uid "04A11CCB-40F2-E95B-8A1C-108F7EA7F04D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[14:27]" "f[44:45]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:6]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:7]" "vtx[16]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[8:15]" "vtx[17]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 2 "f[0:13]" "f[42:43]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 2 "f[28:41]" "f[46:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[7:13]";
	setAttr ".pv" -type "double2" 0.49999994039535522 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 70 ".uvst[0].uvsp[0:69]" -type "float2" 0.64077634 0.088455677
		 0.59742028 0.034088865 0.53476888 0.0039175451 0.46523112 0.0039175451 0.40257972
		 0.034088865 0.35922363 0.088455677 0.34375 0.15625 0.35922363 0.22404432 0.40257972
		 0.27841115 0.46523112 0.30858248 0.53476888 0.30858248 0.59742028 0.27841115 0.6407764
		 0.22404432 0.65625 0.15625 0.375 0.3125 0.39285713 0.3125 0.41071427 0.3125 0.4285714
		 0.3125 0.44642854 0.3125 0.46428567 0.3125 0.48214281 0.3125 0.49999994 0.3125 0.51785707
		 0.3125 0.53571421 0.3125 0.55357134 0.3125 0.57142848 0.3125 0.58928561 0.3125 0.60714275
		 0.3125 0.62499988 0.3125 0.375 0.6875 0.39285713 0.6875 0.41071427 0.6875 0.4285714
		 0.6875 0.44642854 0.6875 0.46428567 0.6875 0.48214281 0.6875 0.49999994 0.6875 0.51785707
		 0.6875 0.53571421 0.6875 0.55357134 0.6875 0.57142848 0.6875 0.58928561 0.6875 0.60714275
		 0.6875 0.62499988 0.6875 0.64077634 0.77595568 0.59742028 0.72158885 0.53476888 0.69141757
		 0.46523112 0.69141757 0.40257972 0.72158885 0.35922363 0.77595568 0.34375 0.84375
		 0.35922363 0.91154432 0.40257972 0.96591115 0.46523112 0.99608248 0.53476888 0.99608248
		 0.59742028 0.96591115 0.6407764 0.91154432 0.65625 0.84375 0.5 0.15625 0.5 0.84375
		 0.41071427 0.6875 0.41071427 0.3125 0.53571421 0.3125 0.53571421 0.6875 0.53476888
		 0.0039175451 0.5 0.15625 0.46523112 0.30858248 0.5 0.84375 0.53476888 0.99608248
		 0.46523112 0.69141757;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt";
	setAttr ".pt[2]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[3]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[4]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[5]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[6]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[7]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[8]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[9]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[16]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[17]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[18]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[19]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[20]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[21]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[22]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[23]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[24]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[25]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[26]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[27]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[28]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[29]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[30]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[31]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[32]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[33]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[34]" -type "float3" -0.86043411 0 -9.9586866e-24 ;
	setAttr ".pt[35]" -type "float3" -0.86043411 0 -9.9586866e-24 ;
	setAttr -s 36 ".vt[0:35]"  0.90096951 -0.99999988 -0.43388346 0.62349033 -0.99999988 -0.78183126
		 0.22252178 -0.99999988 -0.97492784 -0.22252083 -0.99999988 0.97492784 0.22252131 -0.99999988 0.97492796
		 0.62348986 -0.99999988 0.7818315 0.90096951 -0.99999988 0.43388376 1.000000476837 -0.99999988 0
		 0.90096951 1.000000238419 -0.43388346 0.62349033 1.000000238419 -0.78183126 0.22252178 1.000000238419 -0.97492784
		 -0.22252083 1.000000238419 0.97492784 0.22252131 1.000000238419 0.97492796 0.62348986 1.000000238419 0.7818315
		 0.90096951 1.000000238419 0.43388376 1.000000476837 1.000000238419 0 4.7683716e-07 -0.99999988 0
		 4.7683716e-07 1.000000238419 0 0.22252178 -0.99999988 -0.97492784 -0.22252083 -0.99999988 -0.9749279
		 -0.22252083 1.000000238419 -0.9749279 0.22252178 1.000000238419 -0.97492784 -0.62348938 -0.99999988 -0.7818315
		 -0.62348938 1.000000238419 -0.7818315 -0.90096855 -0.99999988 -0.43388385 -0.90096855 1.000000238419 -0.43388385
		 -0.99999952 -0.99999988 -1.7881393e-07 -0.99999952 1.000000238419 -1.7881393e-07
		 -0.90096855 -0.99999988 0.43388355 -0.90096855 1.000000238419 0.43388355 -0.62348938 -0.99999988 0.78183132
		 -0.62348938 1.000000238419 0.78183132 -0.22252083 -0.99999988 0.97492784 -0.22252083 1.000000238419 0.97492784
		 4.7683716e-07 -0.99999988 0 4.7683716e-07 1.000000238419 0;
	setAttr -s 82 ".ed[0:81]"  0 1 0 1 2 0 3 4 0 4 5 0 5 6 0 6 7 0 7 0 0
		 8 9 0 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 1 1 9 1 2 10 0 3 11 0 4 12 1
		 5 13 1 6 14 1 7 15 1 16 0 1 16 1 1 16 2 0 16 3 0 16 4 1 16 5 1 16 6 1 16 7 1 8 17 1
		 9 17 1 10 17 0 11 17 0 12 17 1 13 17 1 14 17 1 15 17 1 2 18 0 18 19 0 19 20 1 10 21 0
		 21 20 0 18 21 0 19 22 0 22 23 1 20 23 0 22 24 0 24 25 1 23 25 0 24 26 0 26 27 1 25 27 0
		 26 28 0 28 29 1 27 29 0 28 30 0 30 31 1 29 31 0 3 32 0 30 32 0 11 33 0 32 33 0 31 33 0
		 16 34 0 34 18 0 34 19 1 34 22 1 34 24 1 34 26 1 34 28 1 34 30 1 34 32 0 17 35 0 20 35 1
		 21 35 0 23 35 1 25 35 1 27 35 1 29 35 1 31 35 1 33 35 0;
	setAttr -s 48 -ch 164 ".fc[0:47]" -type "polyFaces" 
		f 4 0 15 -8 -15
		mu 0 4 14 15 30 29
		f 4 1 16 -9 -16
		mu 0 4 15 16 31 30
		f 4 39 40 -43 -44
		mu 0 4 61 17 32 60
		f 4 44 45 -47 -41
		mu 0 4 17 18 33 32
		f 4 47 48 -50 -46
		mu 0 4 18 19 34 33
		f 4 50 51 -53 -49
		mu 0 4 19 20 35 34
		f 4 53 54 -56 -52
		mu 0 4 20 21 36 35
		f 4 56 57 -59 -55
		mu 0 4 21 22 37 36
		f 4 60 62 -64 -58
		mu 0 4 22 62 63 37
		f 4 2 18 -10 -18
		mu 0 4 23 24 39 38
		f 4 3 19 -11 -19
		mu 0 4 24 25 40 39
		f 4 4 20 -12 -20
		mu 0 4 25 26 41 40
		f 4 5 21 -13 -21
		mu 0 4 26 27 42 41
		f 4 6 14 -14 -22
		mu 0 4 27 28 43 42
		f 3 -1 -23 23
		mu 0 3 1 0 58
		f 3 -2 -24 24
		mu 0 3 2 1 58
		f 3 -40 -66 66
		mu 0 3 3 64 65
		f 3 -45 -67 67
		mu 0 3 4 3 65
		f 3 -48 -68 68
		mu 0 3 5 4 65
		f 3 -51 -69 69
		mu 0 3 6 5 65
		f 3 -54 -70 70
		mu 0 3 7 6 65
		f 3 -57 -71 71
		mu 0 3 8 7 65
		f 3 -61 -72 72
		mu 0 3 66 8 65
		f 3 -3 -26 26
		mu 0 3 10 9 58
		f 3 -4 -27 27
		mu 0 3 11 10 58
		f 3 -5 -28 28
		mu 0 3 12 11 58
		f 3 -6 -29 29
		mu 0 3 13 12 58
		f 3 -7 -30 22
		mu 0 3 0 13 58
		f 3 7 31 -31
		mu 0 3 56 55 59
		f 3 8 32 -32
		mu 0 3 55 54 59
		f 3 42 74 -76
		mu 0 3 68 53 67
		f 3 46 76 -75
		mu 0 3 53 52 67
		f 3 49 77 -77
		mu 0 3 52 51 67
		f 3 52 78 -78
		mu 0 3 51 50 67
		f 3 55 79 -79
		mu 0 3 50 49 67
		f 3 58 80 -80
		mu 0 3 49 48 67
		f 3 63 81 -81
		mu 0 3 48 69 67
		f 3 9 34 -34
		mu 0 3 47 46 59
		f 3 10 35 -35
		mu 0 3 46 45 59
		f 3 11 36 -36
		mu 0 3 45 44 59
		f 3 12 37 -37
		mu 0 3 44 57 59
		f 3 13 30 -38
		mu 0 3 57 56 59
		f 4 -17 38 43 -42
		mu 0 4 31 16 61 60
		f 4 17 61 -63 -60
		mu 0 4 23 38 63 62
		f 4 -25 64 65 -39
		mu 0 4 2 58 65 64
		f 4 25 59 -73 -65
		mu 0 4 58 9 66 65
		f 4 -33 41 75 -74
		mu 0 4 59 54 68 67
		f 4 33 73 -82 -62
		mu 0 4 47 59 67 69;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape13" -p "pCylinder5";
	rename -uid "CEB02AA9-41DD-E3F4-A522-BFBB555C992D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[14:27]" "f[44:45]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:6]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:7]" "vtx[16]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[8:15]" "vtx[17]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 2 "f[0:13]" "f[42:43]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 2 "f[28:41]" "f[46:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[7:13]";
	setAttr ".pv" -type "double2" 0.515625 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 70 ".uvst[0].uvsp[0:69]" -type "float2" 0.64077634 0.088455677
		 0.59742028 0.034088865 0.53476888 0.0039175451 0.46523112 0.0039175451 0.40257972
		 0.034088865 0.35922363 0.088455677 0.34375 0.15625 0.35922363 0.22404432 0.40257972
		 0.27841115 0.46523112 0.30858248 0.53476888 0.30858248 0.59742028 0.27841115 0.6407764
		 0.22404432 0.65625 0.15625 0.375 0.3125 0.39285713 0.3125 0.41071427 0.3125 0.4285714
		 0.3125 0.44642854 0.3125 0.46428567 0.3125 0.48214281 0.3125 0.49999994 0.3125 0.51785707
		 0.3125 0.53571421 0.3125 0.55357134 0.3125 0.57142848 0.3125 0.58928561 0.3125 0.60714275
		 0.3125 0.62499988 0.3125 0.375 0.6875 0.39285713 0.6875 0.41071427 0.6875 0.4285714
		 0.6875 0.44642854 0.6875 0.46428567 0.6875 0.48214281 0.6875 0.49999994 0.6875 0.51785707
		 0.6875 0.53571421 0.6875 0.55357134 0.6875 0.57142848 0.6875 0.58928561 0.6875 0.60714275
		 0.6875 0.62499988 0.6875 0.64077634 0.77595568 0.59742028 0.72158885 0.53476888 0.69141757
		 0.46523112 0.69141757 0.40257972 0.72158885 0.35922363 0.77595568 0.34375 0.84375
		 0.35922363 0.91154432 0.40257972 0.96591115 0.46523112 0.99608248 0.53476888 0.99608248
		 0.59742028 0.96591115 0.6407764 0.91154432 0.65625 0.84375 0.5 0.15625 0.5 0.84375
		 0.41071427 0.6875 0.41071427 0.3125 0.53571421 0.3125 0.53571421 0.6875 0.53476888
		 0.0039175451 0.5 0.15625 0.46523112 0.30858248 0.5 0.84375 0.53476888 0.99608248
		 0.46523112 0.69141757;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".pt[0:35]" -type "float3"  -1.8728119 0 0 -1.8728119 
		0 0 -1.8728119 0 0 -1.8728119 0 0 -1.8728119 0 0 -1.8728119 0 0 -1.8728119 0 0 -1.8728119 
		0 6.6391244e-24 -1.8728119 0.74844724 0 -1.8728119 0.74844724 0 -1.8728119 0.74844724 
		0 -1.8728119 0.74844724 0 -1.8728119 0.74844724 0 -1.8728119 0.74844724 0 -1.8728119 
		0.74844724 0 -1.8728119 0.74844724 3.3195622e-24 -1.8728119 0 6.6391244e-24 -1.8728119 
		0.74844724 3.3195622e-24 -4.9556913 0 0 -4.9556913 0 0 -4.9556913 0.74844724 0 -4.9556913 
		0.74844724 0 -4.9556913 0 0 -4.9556913 0.74844724 0 -4.9556913 0 0 -4.9556913 0.74844724 
		0 -4.9556913 0 0 -4.9556913 0.74844724 0 -4.9556913 0 0 -4.9556913 0.74844724 0 -4.9556913 
		0 0 -4.9556913 0.74844724 0 -4.9556913 0 0 -4.9556913 0.74844724 0 -4.9556913 0 -6.6391244e-24 
		-4.9556913 0.74844724 -9.9586866e-24;
	setAttr -s 36 ".vt[0:35]"  0.90096951 -0.99999988 -0.43388346 0.62349033 -0.99999988 -0.78183126
		 0.22252172 -0.99999988 -0.97492784 -0.22252089 -0.99999988 0.97492784 0.22252125 -0.99999988 0.97492796
		 0.6234898 -0.99999988 0.7818315 0.90096945 -0.99999988 0.43388376 1.000000476837 -0.99999988 0
		 0.90096945 1.000000238419 -0.43388346 0.62349027 1.000000238419 -0.78183126 0.22252178 1.000000238419 -0.97492784
		 -0.22252083 1.000000238419 0.97492784 0.22252131 1.000000238419 0.97492796 0.62348986 1.000000238419 0.7818315
		 0.90096951 1.000000238419 0.43388376 1.000000476837 1.000000238419 0 4.1723251e-07 -0.99999988 0
		 4.1723251e-07 1.000000238419 0 -0.63791245 -0.99999988 -0.97492784 -1.082955122 -0.99999988 -0.9749279
		 -1.082955122 1.000000238419 -0.9749279 -0.63791245 1.000000238419 -0.97492784 -1.48392367 -0.99999988 -0.7818315
		 -1.48392367 1.000000238419 -0.7818315 -1.76140261 -0.99999988 -0.43388385 -1.76140261 1.000000238419 -0.43388385
		 -1.86043358 -0.99999988 -1.7881393e-07 -1.86043358 1.000000238419 -1.7881393e-07
		 -1.76140285 -0.99999988 0.43388355 -1.76140285 1.000000238419 0.43388355 -1.48392344 -0.99999988 0.78183132
		 -1.48392344 1.000000238419 0.78183132 -1.082954884 -0.99999988 0.97492784 -1.082954884 1.000000238419 0.97492784
		 -0.86043364 -0.99999988 -9.9586866e-24 -0.86043364 1.000000238419 -9.9586866e-24;
	setAttr -s 82 ".ed[0:81]"  0 1 0 1 2 0 3 4 0 4 5 0 5 6 0 6 7 0 7 0 0
		 8 9 0 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 1 1 9 1 2 10 1 3 11 1 4 12 1
		 5 13 1 6 14 1 7 15 1 16 0 1 16 1 1 16 2 0 16 3 0 16 4 1 16 5 1 16 6 1 16 7 1 8 17 1
		 9 17 1 10 17 0 11 17 0 12 17 1 13 17 1 14 17 1 15 17 1 2 18 0 18 19 0 19 20 1 10 21 0
		 21 20 0 18 21 1 19 22 0 22 23 1 20 23 0 22 24 0 24 25 1 23 25 0 24 26 0 26 27 1 25 27 0
		 26 28 0 28 29 1 27 29 0 28 30 0 30 31 1 29 31 0 3 32 0 30 32 0 11 33 0 32 33 1 31 33 0
		 16 34 0 34 18 0 34 19 1 34 22 1 34 24 1 34 26 1 34 28 1 34 30 1 34 32 0 17 35 0 20 35 1
		 21 35 0 23 35 1 25 35 1 27 35 1 29 35 1 31 35 1 33 35 0;
	setAttr -s 48 -ch 164 ".fc[0:47]" -type "polyFaces" 
		f 4 0 15 -8 -15
		mu 0 4 14 15 30 29
		f 4 1 16 -9 -16
		mu 0 4 15 16 31 30
		f 4 39 40 -43 -44
		mu 0 4 61 17 32 60
		f 4 44 45 -47 -41
		mu 0 4 17 18 33 32
		f 4 47 48 -50 -46
		mu 0 4 18 19 34 33
		f 4 50 51 -53 -49
		mu 0 4 19 20 35 34
		f 4 53 54 -56 -52
		mu 0 4 20 21 36 35
		f 4 56 57 -59 -55
		mu 0 4 21 22 37 36
		f 4 60 62 -64 -58
		mu 0 4 22 62 63 37
		f 4 2 18 -10 -18
		mu 0 4 23 24 39 38
		f 4 3 19 -11 -19
		mu 0 4 24 25 40 39
		f 4 4 20 -12 -20
		mu 0 4 25 26 41 40
		f 4 5 21 -13 -21
		mu 0 4 26 27 42 41
		f 4 6 14 -14 -22
		mu 0 4 27 28 43 42
		f 3 -1 -23 23
		mu 0 3 1 0 58
		f 3 -2 -24 24
		mu 0 3 2 1 58
		f 3 -40 -66 66
		mu 0 3 3 64 65
		f 3 -45 -67 67
		mu 0 3 4 3 65
		f 3 -48 -68 68
		mu 0 3 5 4 65
		f 3 -51 -69 69
		mu 0 3 6 5 65
		f 3 -54 -70 70
		mu 0 3 7 6 65
		f 3 -57 -71 71
		mu 0 3 8 7 65
		f 3 -61 -72 72
		mu 0 3 66 8 65
		f 3 -3 -26 26
		mu 0 3 10 9 58
		f 3 -4 -27 27
		mu 0 3 11 10 58
		f 3 -5 -28 28
		mu 0 3 12 11 58
		f 3 -6 -29 29
		mu 0 3 13 12 58
		f 3 -7 -30 22
		mu 0 3 0 13 58
		f 3 7 31 -31
		mu 0 3 56 55 59
		f 3 8 32 -32
		mu 0 3 55 54 59
		f 3 42 74 -76
		mu 0 3 68 53 67
		f 3 46 76 -75
		mu 0 3 53 52 67
		f 3 49 77 -77
		mu 0 3 52 51 67
		f 3 52 78 -78
		mu 0 3 51 50 67
		f 3 55 79 -79
		mu 0 3 50 49 67
		f 3 58 80 -80
		mu 0 3 49 48 67
		f 3 63 81 -81
		mu 0 3 48 69 67
		f 3 9 34 -34
		mu 0 3 47 46 59
		f 3 10 35 -35
		mu 0 3 46 45 59
		f 3 11 36 -36
		mu 0 3 45 44 59
		f 3 12 37 -37
		mu 0 3 44 57 59
		f 3 13 30 -38
		mu 0 3 57 56 59
		f 4 -17 38 43 -42
		mu 0 4 31 16 61 60
		f 4 17 61 -63 -60
		mu 0 4 23 38 63 62
		f 4 -25 64 65 -39
		mu 0 4 2 58 65 64
		f 4 25 59 -73 -65
		mu 0 4 58 9 66 65
		f 4 -33 41 75 -74
		mu 0 4 59 54 68 67
		f 4 33 73 -82 -62
		mu 0 4 47 59 67 69;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder6" -p "Barrel_Holders";
	rename -uid "2E9F75BD-4246-9E61-5649-D2A3322A247A";
	setAttr ".t" -type "double3" -5.0990771223526421 4.6448589264614641 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.39873419276474797 0.12429339457440051 0.55227999140717965 ;
createNode mesh -n "pCylinderShape6" -p "pCylinder6";
	rename -uid "E6595982-45B1-1C3C-359E-9981ECE51945";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.43973210453987122 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pCylinder6";
	rename -uid "2B768BEE-4714-8CC0-87D3-07BBFDD67BAD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[14:27]" "f[44:45]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:6]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:7]" "vtx[16]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[8:15]" "vtx[17]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 2 "f[0:13]" "f[42:43]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 2 "f[28:41]" "f[46:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[7:13]";
	setAttr ".pv" -type "double2" 0.49999994039535522 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 70 ".uvst[0].uvsp[0:69]" -type "float2" 0.64077634 0.088455677
		 0.59742028 0.034088865 0.53476888 0.0039175451 0.46523112 0.0039175451 0.40257972
		 0.034088865 0.35922363 0.088455677 0.34375 0.15625 0.35922363 0.22404432 0.40257972
		 0.27841115 0.46523112 0.30858248 0.53476888 0.30858248 0.59742028 0.27841115 0.6407764
		 0.22404432 0.65625 0.15625 0.375 0.3125 0.39285713 0.3125 0.41071427 0.3125 0.4285714
		 0.3125 0.44642854 0.3125 0.46428567 0.3125 0.48214281 0.3125 0.49999994 0.3125 0.51785707
		 0.3125 0.53571421 0.3125 0.55357134 0.3125 0.57142848 0.3125 0.58928561 0.3125 0.60714275
		 0.3125 0.62499988 0.3125 0.375 0.6875 0.39285713 0.6875 0.41071427 0.6875 0.4285714
		 0.6875 0.44642854 0.6875 0.46428567 0.6875 0.48214281 0.6875 0.49999994 0.6875 0.51785707
		 0.6875 0.53571421 0.6875 0.55357134 0.6875 0.57142848 0.6875 0.58928561 0.6875 0.60714275
		 0.6875 0.62499988 0.6875 0.64077634 0.77595568 0.59742028 0.72158885 0.53476888 0.69141757
		 0.46523112 0.69141757 0.40257972 0.72158885 0.35922363 0.77595568 0.34375 0.84375
		 0.35922363 0.91154432 0.40257972 0.96591115 0.46523112 0.99608248 0.53476888 0.99608248
		 0.59742028 0.96591115 0.6407764 0.91154432 0.65625 0.84375 0.5 0.15625 0.5 0.84375
		 0.41071427 0.6875 0.41071427 0.3125 0.53571421 0.3125 0.53571421 0.6875 0.53476888
		 0.0039175451 0.5 0.15625 0.46523112 0.30858248 0.5 0.84375 0.53476888 0.99608248
		 0.46523112 0.69141757;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt";
	setAttr ".pt[2]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[3]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[4]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[5]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[6]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[7]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[8]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[9]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[16]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[17]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[18]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[19]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[20]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[21]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[22]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[23]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[24]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[25]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[26]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[27]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[28]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[29]" -type "float3" -0.86043423 0 0 ;
	setAttr ".pt[30]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[31]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[32]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[33]" -type "float3" -0.86043411 0 0 ;
	setAttr ".pt[34]" -type "float3" -0.86043411 0 -9.9586866e-24 ;
	setAttr ".pt[35]" -type "float3" -0.86043411 0 -9.9586866e-24 ;
	setAttr -s 36 ".vt[0:35]"  0.90096951 -0.99999988 -0.43388346 0.62349033 -0.99999988 -0.78183126
		 0.22252178 -0.99999988 -0.97492784 -0.22252083 -0.99999988 0.97492784 0.22252131 -0.99999988 0.97492796
		 0.62348986 -0.99999988 0.7818315 0.90096951 -0.99999988 0.43388376 1.000000476837 -0.99999988 0
		 0.90096951 1.000000238419 -0.43388346 0.62349033 1.000000238419 -0.78183126 0.22252178 1.000000238419 -0.97492784
		 -0.22252083 1.000000238419 0.97492784 0.22252131 1.000000238419 0.97492796 0.62348986 1.000000238419 0.7818315
		 0.90096951 1.000000238419 0.43388376 1.000000476837 1.000000238419 0 4.7683716e-07 -0.99999988 0
		 4.7683716e-07 1.000000238419 0 0.22252178 -0.99999988 -0.97492784 -0.22252083 -0.99999988 -0.9749279
		 -0.22252083 1.000000238419 -0.9749279 0.22252178 1.000000238419 -0.97492784 -0.62348938 -0.99999988 -0.7818315
		 -0.62348938 1.000000238419 -0.7818315 -0.90096855 -0.99999988 -0.43388385 -0.90096855 1.000000238419 -0.43388385
		 -0.99999952 -0.99999988 -1.7881393e-07 -0.99999952 1.000000238419 -1.7881393e-07
		 -0.90096855 -0.99999988 0.43388355 -0.90096855 1.000000238419 0.43388355 -0.62348938 -0.99999988 0.78183132
		 -0.62348938 1.000000238419 0.78183132 -0.22252083 -0.99999988 0.97492784 -0.22252083 1.000000238419 0.97492784
		 4.7683716e-07 -0.99999988 0 4.7683716e-07 1.000000238419 0;
	setAttr -s 82 ".ed[0:81]"  0 1 0 1 2 0 3 4 0 4 5 0 5 6 0 6 7 0 7 0 0
		 8 9 0 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 1 1 9 1 2 10 0 3 11 0 4 12 1
		 5 13 1 6 14 1 7 15 1 16 0 1 16 1 1 16 2 0 16 3 0 16 4 1 16 5 1 16 6 1 16 7 1 8 17 1
		 9 17 1 10 17 0 11 17 0 12 17 1 13 17 1 14 17 1 15 17 1 2 18 0 18 19 0 19 20 1 10 21 0
		 21 20 0 18 21 0 19 22 0 22 23 1 20 23 0 22 24 0 24 25 1 23 25 0 24 26 0 26 27 1 25 27 0
		 26 28 0 28 29 1 27 29 0 28 30 0 30 31 1 29 31 0 3 32 0 30 32 0 11 33 0 32 33 0 31 33 0
		 16 34 0 34 18 0 34 19 1 34 22 1 34 24 1 34 26 1 34 28 1 34 30 1 34 32 0 17 35 0 20 35 1
		 21 35 0 23 35 1 25 35 1 27 35 1 29 35 1 31 35 1 33 35 0;
	setAttr -s 48 -ch 164 ".fc[0:47]" -type "polyFaces" 
		f 4 0 15 -8 -15
		mu 0 4 14 15 30 29
		f 4 1 16 -9 -16
		mu 0 4 15 16 31 30
		f 4 39 40 -43 -44
		mu 0 4 61 17 32 60
		f 4 44 45 -47 -41
		mu 0 4 17 18 33 32
		f 4 47 48 -50 -46
		mu 0 4 18 19 34 33
		f 4 50 51 -53 -49
		mu 0 4 19 20 35 34
		f 4 53 54 -56 -52
		mu 0 4 20 21 36 35
		f 4 56 57 -59 -55
		mu 0 4 21 22 37 36
		f 4 60 62 -64 -58
		mu 0 4 22 62 63 37
		f 4 2 18 -10 -18
		mu 0 4 23 24 39 38
		f 4 3 19 -11 -19
		mu 0 4 24 25 40 39
		f 4 4 20 -12 -20
		mu 0 4 25 26 41 40
		f 4 5 21 -13 -21
		mu 0 4 26 27 42 41
		f 4 6 14 -14 -22
		mu 0 4 27 28 43 42
		f 3 -1 -23 23
		mu 0 3 1 0 58
		f 3 -2 -24 24
		mu 0 3 2 1 58
		f 3 -40 -66 66
		mu 0 3 3 64 65
		f 3 -45 -67 67
		mu 0 3 4 3 65
		f 3 -48 -68 68
		mu 0 3 5 4 65
		f 3 -51 -69 69
		mu 0 3 6 5 65
		f 3 -54 -70 70
		mu 0 3 7 6 65
		f 3 -57 -71 71
		mu 0 3 8 7 65
		f 3 -61 -72 72
		mu 0 3 66 8 65
		f 3 -3 -26 26
		mu 0 3 10 9 58
		f 3 -4 -27 27
		mu 0 3 11 10 58
		f 3 -5 -28 28
		mu 0 3 12 11 58
		f 3 -6 -29 29
		mu 0 3 13 12 58
		f 3 -7 -30 22
		mu 0 3 0 13 58
		f 3 7 31 -31
		mu 0 3 56 55 59
		f 3 8 32 -32
		mu 0 3 55 54 59
		f 3 42 74 -76
		mu 0 3 68 53 67
		f 3 46 76 -75
		mu 0 3 53 52 67
		f 3 49 77 -77
		mu 0 3 52 51 67
		f 3 52 78 -78
		mu 0 3 51 50 67
		f 3 55 79 -79
		mu 0 3 50 49 67
		f 3 58 80 -80
		mu 0 3 49 48 67
		f 3 63 81 -81
		mu 0 3 48 69 67
		f 3 9 34 -34
		mu 0 3 47 46 59
		f 3 10 35 -35
		mu 0 3 46 45 59
		f 3 11 36 -36
		mu 0 3 45 44 59
		f 3 12 37 -37
		mu 0 3 44 57 59
		f 3 13 30 -38
		mu 0 3 57 56 59
		f 4 -17 38 43 -42
		mu 0 4 31 16 61 60
		f 4 17 61 -63 -60
		mu 0 4 23 38 63 62
		f 4 -25 64 65 -39
		mu 0 4 2 58 65 64
		f 4 25 59 -73 -65
		mu 0 4 58 9 66 65
		f 4 -33 41 75 -74
		mu 0 4 59 54 68 67
		f 4 33 73 -82 -62
		mu 0 4 47 59 67 69;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape14" -p "pCylinder6";
	rename -uid "DF890CD5-4991-703B-B6E7-5E93E09B8394";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[14:27]" "f[44:45]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:6]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:7]" "vtx[16]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[8:15]" "vtx[17]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 2 "f[0:13]" "f[42:43]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 2 "f[28:41]" "f[46:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[7:13]";
	setAttr ".pv" -type "double2" 0.43973210453987122 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 70 ".uvst[0].uvsp[0:69]" -type "float2" 0.64077634 0.088455677
		 0.59742028 0.034088865 0.53476888 0.0039175451 0.46523112 0.0039175451 0.40257972
		 0.034088865 0.35922363 0.088455677 0.34375 0.15625 0.35922363 0.22404432 0.40257972
		 0.27841115 0.46523112 0.30858248 0.53476888 0.30858248 0.59742028 0.27841115 0.6407764
		 0.22404432 0.65625 0.15625 0.375 0.3125 0.39285713 0.3125 0.41071427 0.3125 0.4285714
		 0.3125 0.44642854 0.3125 0.46428567 0.3125 0.48214281 0.3125 0.49999994 0.3125 0.51785707
		 0.3125 0.53571421 0.3125 0.55357134 0.3125 0.57142848 0.3125 0.58928561 0.3125 0.60714275
		 0.3125 0.62499988 0.3125 0.375 0.6875 0.39285713 0.6875 0.41071427 0.6875 0.4285714
		 0.6875 0.44642854 0.6875 0.46428567 0.6875 0.48214281 0.6875 0.49999994 0.6875 0.51785707
		 0.6875 0.53571421 0.6875 0.55357134 0.6875 0.57142848 0.6875 0.58928561 0.6875 0.60714275
		 0.6875 0.62499988 0.6875 0.64077634 0.77595568 0.59742028 0.72158885 0.53476888 0.69141757
		 0.46523112 0.69141757 0.40257972 0.72158885 0.35922363 0.77595568 0.34375 0.84375
		 0.35922363 0.91154432 0.40257972 0.96591115 0.46523112 0.99608248 0.53476888 0.99608248
		 0.59742028 0.96591115 0.6407764 0.91154432 0.65625 0.84375 0.5 0.15625 0.5 0.84375
		 0.41071427 0.6875 0.41071427 0.3125 0.53571421 0.3125 0.53571421 0.6875 0.53476888
		 0.0039175451 0.5 0.15625 0.46523112 0.30858248 0.5 0.84375 0.53476888 0.99608248
		 0.46523112 0.69141757;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".pt[0:35]" -type "float3"  -1.8728119 0 0 -1.8728119 
		0 0 -1.8728119 0 0 -1.8728119 0 0 -1.8728119 0 0 -1.8728119 0 0 -1.8728119 0 0 -1.8728119 
		0 6.6391244e-24 -1.8728119 0.74844724 0 -1.8728119 0.74844724 0 -1.8728119 0.74844724 
		0 -1.8728119 0.74844724 0 -1.8728119 0.74844724 0 -1.8728119 0.74844724 0 -1.8728119 
		0.74844724 0 -1.8728119 0.74844724 3.3195622e-24 -1.8728119 0 6.6391244e-24 -1.8728119 
		0.74844724 3.3195622e-24 -6.1996341 0 0 -6.1996341 0 0 -6.1996341 0.74844724 0 -6.1996341 
		0.74844724 0 -6.1996341 0 0 -6.1996341 0.74844724 0 -6.1996341 0 0 -6.1996341 0.74844724 
		0 -6.1996341 0 0 -6.1996341 0.74844724 0 -6.1996341 0 0 -6.1996341 0.74844724 0 -6.1996341 
		0 0 -6.1996341 0.74844724 0 -6.1996341 0 0 -6.1996341 0.74844724 0 -6.1996341 0 -6.6391244e-24 
		-6.1996341 0.74844724 -9.9586866e-24;
	setAttr -s 36 ".vt[0:35]"  0.90096951 -0.99999988 -0.43388346 0.62349033 -0.99999988 -0.78183126
		 0.22252172 -0.99999988 -0.97492784 -0.22252089 -0.99999988 0.97492784 0.22252125 -0.99999988 0.97492796
		 0.6234898 -0.99999988 0.7818315 0.90096945 -0.99999988 0.43388376 1.000000476837 -0.99999988 0
		 0.90096945 1.000000238419 -0.43388346 0.62349027 1.000000238419 -0.78183126 0.22252178 1.000000238419 -0.97492784
		 -0.22252083 1.000000238419 0.97492784 0.22252131 1.000000238419 0.97492796 0.62348986 1.000000238419 0.7818315
		 0.90096951 1.000000238419 0.43388376 1.000000476837 1.000000238419 0 4.1723251e-07 -0.99999988 0
		 4.1723251e-07 1.000000238419 0 -0.63791245 -0.99999988 -0.97492784 -1.082955122 -0.99999988 -0.9749279
		 -1.082955122 1.000000238419 -0.9749279 -0.63791245 1.000000238419 -0.97492784 -1.48392367 -0.99999988 -0.7818315
		 -1.48392367 1.000000238419 -0.7818315 -1.76140261 -0.99999988 -0.43388385 -1.76140261 1.000000238419 -0.43388385
		 -1.86043358 -0.99999988 -1.7881393e-07 -1.86043358 1.000000238419 -1.7881393e-07
		 -1.76140285 -0.99999988 0.43388355 -1.76140285 1.000000238419 0.43388355 -1.48392344 -0.99999988 0.78183132
		 -1.48392344 1.000000238419 0.78183132 -1.082954884 -0.99999988 0.97492784 -1.082954884 1.000000238419 0.97492784
		 -0.86043364 -0.99999988 -9.9586866e-24 -0.86043364 1.000000238419 -9.9586866e-24;
	setAttr -s 82 ".ed[0:81]"  0 1 0 1 2 0 3 4 0 4 5 0 5 6 0 6 7 0 7 0 0
		 8 9 0 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 1 1 9 1 2 10 1 3 11 1 4 12 1
		 5 13 1 6 14 1 7 15 1 16 0 1 16 1 1 16 2 0 16 3 0 16 4 1 16 5 1 16 6 1 16 7 1 8 17 1
		 9 17 1 10 17 0 11 17 0 12 17 1 13 17 1 14 17 1 15 17 1 2 18 0 18 19 0 19 20 1 10 21 0
		 21 20 0 18 21 1 19 22 0 22 23 1 20 23 0 22 24 0 24 25 1 23 25 0 24 26 0 26 27 1 25 27 0
		 26 28 0 28 29 1 27 29 0 28 30 0 30 31 1 29 31 0 3 32 0 30 32 0 11 33 0 32 33 1 31 33 0
		 16 34 0 34 18 0 34 19 1 34 22 1 34 24 1 34 26 1 34 28 1 34 30 1 34 32 0 17 35 0 20 35 1
		 21 35 0 23 35 1 25 35 1 27 35 1 29 35 1 31 35 1 33 35 0;
	setAttr -s 48 -ch 164 ".fc[0:47]" -type "polyFaces" 
		f 4 0 15 -8 -15
		mu 0 4 14 15 30 29
		f 4 1 16 -9 -16
		mu 0 4 15 16 31 30
		f 4 39 40 -43 -44
		mu 0 4 61 17 32 60
		f 4 44 45 -47 -41
		mu 0 4 17 18 33 32
		f 4 47 48 -50 -46
		mu 0 4 18 19 34 33
		f 4 50 51 -53 -49
		mu 0 4 19 20 35 34
		f 4 53 54 -56 -52
		mu 0 4 20 21 36 35
		f 4 56 57 -59 -55
		mu 0 4 21 22 37 36
		f 4 60 62 -64 -58
		mu 0 4 22 62 63 37
		f 4 2 18 -10 -18
		mu 0 4 23 24 39 38
		f 4 3 19 -11 -19
		mu 0 4 24 25 40 39
		f 4 4 20 -12 -20
		mu 0 4 25 26 41 40
		f 4 5 21 -13 -21
		mu 0 4 26 27 42 41
		f 4 6 14 -14 -22
		mu 0 4 27 28 43 42
		f 3 -1 -23 23
		mu 0 3 1 0 58
		f 3 -2 -24 24
		mu 0 3 2 1 58
		f 3 -40 -66 66
		mu 0 3 3 64 65
		f 3 -45 -67 67
		mu 0 3 4 3 65
		f 3 -48 -68 68
		mu 0 3 5 4 65
		f 3 -51 -69 69
		mu 0 3 6 5 65
		f 3 -54 -70 70
		mu 0 3 7 6 65
		f 3 -57 -71 71
		mu 0 3 8 7 65
		f 3 -61 -72 72
		mu 0 3 66 8 65
		f 3 -3 -26 26
		mu 0 3 10 9 58
		f 3 -4 -27 27
		mu 0 3 11 10 58
		f 3 -5 -28 28
		mu 0 3 12 11 58
		f 3 -6 -29 29
		mu 0 3 13 12 58
		f 3 -7 -30 22
		mu 0 3 0 13 58
		f 3 7 31 -31
		mu 0 3 56 55 59
		f 3 8 32 -32
		mu 0 3 55 54 59
		f 3 42 74 -76
		mu 0 3 68 53 67
		f 3 46 76 -75
		mu 0 3 53 52 67
		f 3 49 77 -77
		mu 0 3 52 51 67
		f 3 52 78 -78
		mu 0 3 51 50 67
		f 3 55 79 -79
		mu 0 3 50 49 67
		f 3 58 80 -80
		mu 0 3 49 48 67
		f 3 63 81 -81
		mu 0 3 48 69 67
		f 3 9 34 -34
		mu 0 3 47 46 59
		f 3 10 35 -35
		mu 0 3 46 45 59
		f 3 11 36 -36
		mu 0 3 45 44 59
		f 3 12 37 -37
		mu 0 3 44 57 59
		f 3 13 30 -38
		mu 0 3 57 56 59
		f 4 -17 38 43 -42
		mu 0 4 31 16 61 60
		f 4 17 61 -63 -60
		mu 0 4 23 38 63 62
		f 4 -25 64 65 -39
		mu 0 4 2 58 65 64
		f 4 25 59 -73 -65
		mu 0 4 58 9 66 65
		f 4 -33 41 75 -74
		mu 0 4 59 54 68 67
		f 4 33 73 -82 -62
		mu 0 4 47 59 67 69;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "EB18B1A2-4CD6-1000-2D86-D783D87D82B0";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode UsdDefaultSettings -n "UsdDefaultRenderSettings";
	rename -uid "C2D0506E-48B9-3E3C-5671-609A8E8C6E6E";
	setAttr ".srl" -type "string" "#usda 1.0\n(\n    renderSettingsPrimPath = \"/Render/SceneRenderSettings\"\n)\n\ndef Scope \"Render\"\n{\n    def RenderSettings \"SceneRenderSettings\"\n    {\n        custom string adskUsd:externalCamera = \"|persp\" (\n            displayName = \"External Camera\"\n        )\n        rel products = </Render/BeautyProduct>\n    }\n\n    def RenderVar \"color\"\n    {\n        uniform string sourceName = \"color\"\n    }\n\n    def RenderProduct \"BeautyProduct\"\n    {\n        rel orderedVars = </Render/color>\n        token productName = \"./default.png\"\n    }\n}\n\n";
	setAttr ".ssl" -type "string" "#usda 1.0\n\n";
	setAttr ".asp" -type "string" "UsdDefaultRenderSettings,/Render/SceneRenderSettings";
lockNode -l 1 ;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "493A4536-455A-01C2-B74B-D3A0F2007205";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "CCE20B4E-41D7-0ED6-798E-3384CC6AE0B9";
createNode displayLayerManager -n "layerManager";
	rename -uid "22498436-4FEA-56DE-1806-65AFB1D1DE24";
createNode displayLayer -n "defaultLayer";
	rename -uid "B22ACB6D-4D88-92A6-A7A2-7DB49FB28D8A";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "20C4358F-4A94-0EA9-1CC9-BF8A75013071";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "62864362-4B4D-16FF-F222-3B91441A0362";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "7221DDD3-4872-A8C2-B040-5E87331F4995";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "CA04B6C6-4080-5D70-FE69-2DB24A850D86";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.3285332 1.1422377 0 ;
	setAttr ".rs" 62974;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.1574923889402129 0.2035732430809023 -0.95412050242300428 ;
	setAttr ".cbx" -type "double3" 3.4995741396377715 2.0809021456484302 0.95412050242300428 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "E008EF15-4FE7-27CA-F444-9FB95337861D";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.7912483 1.5770496 0 ;
	setAttr ".rs" 58704;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.6813923908734925 0.97416620622744388 -0.61281050921242886 ;
	setAttr ".cbx" -type "double3" 1.9011041619048532 2.1799330238481227 0.61281050921242886 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak1";
	rename -uid "EA4867A9-47B0-3960-4115-9DAB0257EEB4";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.25861311 0.83340037 -0.17886111
		 -0.099109054 0.83340037 -0.17886111 -0.099109054 0.83340037 0.17886111 0.25861311
		 0.83340037 0.17886111;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "A0217445-4663-0404-8217-E38D9ADB9F82";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.3964638 2.8484352 0 ;
	setAttr ".rs" 65093;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5063197775650101 2.2455519115081937 -0.61281050921242886 ;
	setAttr ".cbx" -type "double3" -1.2866077929334354 3.4513186324007892 0.61281050921242886 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak2";
	rename -uid "BC73FA45-465C-E0CF-16E5-47A88C02A61A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0.35600504 1.76287413 0 0.35600504
		 1.76287413 0 0.35600504 1.76287413 0 0.35600504 1.76287413 0;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "56969F1B-461D-714E-7343-4EAAFC9A08C8";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.1152585 3.770437 0 ;
	setAttr ".rs" 50851;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.225114413240795 3.1675536473636345 -0.61281050921242886 ;
	setAttr ".cbx" -type "double3" -2.0054024388040501 4.3733203123074684 0.61281050921242886 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak3";
	rename -uid "16C95913-470F-DC4D-1FC4-4DAB42EA8CC1";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  0.40781572 0.45719269 0 0.40781572
		 0.45719269 0 0.40781572 0.45719269 0 0.40781572 0.45719269 0;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "338DD5D3-4D80-7A7A-AB03-B3925AC2C165";
	setAttr ".ics" -type "componentList" 2 "f[17]" "f[21]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.152565 2.7199802 0 ;
	setAttr ".rs" 58335;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.7988102210838139 2.2455520793544772 -0.61281050921242886 ;
	setAttr ".cbx" -type "double3" -1.5063197469805187 3.1944085621997478 0.61281050921242886 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak4";
	rename -uid "E284FA40-4B7E-3F84-311C-0585B7654BA7";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[20:23]" -type "float3"  -0.22793497 1.32940137 0 -0.22793497
		 1.32940137 0 -0.22793497 1.32940137 0 -0.22793497 1.32940137 0;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "982A1FB4-426A-23E3-2D34-3892484DC8D7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.79999999999999993;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak5";
	rename -uid "E1E697FE-4EF4-594B-EBC1-2C846CAB82E0";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[24:29]" -type "float3"  -0.24704707 0.15948303 0 -0.24704707
		 0.15948303 0 -0.89523423 -0.077850446 0 -0.89523423 -0.077850446 0 -0.91649115 -0.13599132
		 0 -0.91649115 -0.13599132 0;
createNode polySplit -n "polySplit1";
	rename -uid "584E5C6B-4B71-258D-F472-958ADF6F9296";
	setAttr -s 13 ".e[0:12]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5;
	setAttr -s 13 ".d[0:12]"  -2147483535 -2147483533 -2147483482 -2147483486 -2147483484 -2147483496 
		-2147483500 -2147483498 -2147483510 -2147483514 -2147483512 -2147483531 -2147483535;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "CD2E0887-41F2-729F-D714-A2ADC7F6723A";
	setAttr ".ics" -type "componentList" 6 "f[0:47]" "f[112]" "f[114:125]" "f[140:183]" "f[252:256]" "f[263]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.0078957 1.516752 0 ;
	setAttr ".rs" 33023;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3161224625189787 -0.093519372571953641 -0.95412118486316777 ;
	setAttr ".cbx" -type "double3" 5.3319139275502581 3.1270233053847951 0.95412118486316777 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "3FEC47C1-4644-CB09-65A0-D198DE32BFC1";
	setAttr ".ics" -type "componentList" 6 "f[0:47]" "f[112]" "f[114:125]" "f[140:183]" "f[252:256]" "f[263]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.0628586 1.4144737 0 ;
	setAttr ".rs" 58692;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2611597154951477 -0.19579763134264572 -0.95412118486316777 ;
	setAttr ".cbx" -type "double3" 5.3868766847689198 3.0247450262244415 0.95412118486316777 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak6";
	rename -uid "CEDA48F5-46E8-78B3-FCFF-B49821BF6283";
	setAttr ".uopa" yes;
	setAttr -s 120 ".tk[160:279]" -type "float3"  -7.4505806e-09 9.6857548e-08
		 1.8626451e-09 -0.047566596 -0.037944529 2.7939677e-09 -0.047566596 -0.037944529 2.7939677e-09
		 -0.047566604 -0.037944529 -1.8626451e-09 -0.047566596 -0.037944499 1.8626451e-09
		 -0.047566596 -0.037944499 -1.8626451e-09 -0.047566574 -0.037944499 -3.7252903e-09
		 -0.047566589 -0.037944529 9.3132257e-09 -0.047566582 -0.037944529 9.3132257e-09 -0.047566574
		 -0.037944514 -3.7252903e-09 -0.047566582 -0.037944529 5.5879354e-09 -0.047566596
		 -0.037944529 1.1175871e-08 -0.047566582 -0.037944559 9.3132257e-09 -0.047566596 -0.037944589
		 0 -0.047566596 -0.037944559 -3.7252903e-09 -0.047566559 -0.037944499 5.5879354e-09
		 -0.047566567 -0.037944514 6.519258e-09 -0.047566567 -0.037944514 -9.3132257e-10 -0.047566559
		 -0.037944499 -5.5879354e-09 -0.047566582 -0.037944529 -5.5879354e-09 -0.047566567
		 -0.037944529 9.3132257e-09 -0.047566559 -0.037944559 -1.8626451e-09 -0.047566574
		 -0.037944574 -3.7252903e-09 -0.047566559 -0.037944574 -5.5879354e-09 -0.047566574
		 -0.037944589 9.3132257e-10 -0.047566589 -0.037944589 -5.5879354e-09 -0.047566626
		 -0.037944559 0 -0.047566619 -0.037944589 1.8626451e-09 -0.047566582 -0.037944574
		 1.8626451e-09 -0.047566604 -0.037944559 3.7252903e-09 -0.047566596 -0.037944559 2.7939677e-09
		 -0.047566596 -0.037944559 7.4505806e-09 -0.047566596 -0.037944574 -5.5879354e-09
		 -0.047566574 -0.037944589 -9.3132257e-10 -0.047566582 -0.037944559 -1.8626451e-09
		 -0.047566582 -0.037944559 -5.5879354e-09 -0.047566574 -0.037944574 5.5879354e-09
		 -0.047566567 -0.037944559 0 -0.047566582 -0.037944574 9.3132257e-10 -0.047566567
		 -0.037944559 0 -0.047566559 -0.037944589 9.3132257e-10 -0.047566574 -0.037944589
		 9.3132257e-10 -0.047566559 -0.037944574 5.5879354e-09 -0.047566559 -0.037944559 -2.7939677e-09
		 -0.047566559 -0.037944589 -9.3132257e-10 -0.047566559 -0.037944589 1.8626451e-09
		 -0.047566582 -0.037944574 -1.8626451e-09 -0.047566589 -0.037944589 5.5879354e-09
		 -0.047566626 -0.037944559 9.3132257e-10 -0.047566611 -0.037944559 -7.4505806e-09
		 -0.047566611 -0.037944559 9.3132257e-10 -0.047566582 -0.037944589 3.7252903e-09 -0.047566596
		 -0.037944559 -7.4505806e-09 -0.047566574 -0.037944574 -7.4505806e-09 -0.047566582
		 -0.037944589 3.7252903e-09 -0.047566574 -0.037944574 -5.5879354e-09 -0.047566596
		 -0.037944589 3.7252903e-09 -0.047566596 -0.037944529 -1.1175871e-08 -0.047566574
		 -0.037944499 3.7252903e-09 -0.047566567 -0.037944559 0 -0.047566582 -0.037944574
		 5.5879354e-09 -0.047566574 -0.037944589 1.8626451e-09 -0.047566582 -0.037944574 2.7939677e-09
		 -0.047566567 -0.037944574 -7.4505806e-09 -0.047566567 -0.037944529 -9.3132257e-09
		 -0.047566574 -0.037944514 3.7252903e-09 -0.047566604 -0.037944529 -1.1175871e-08
		 -0.047566582 -0.037944514 -9.3132257e-09 -0.047566626 -0.037944589 -9.3132257e-10
		 -0.047566626 -0.037944574 -9.3132257e-09 -0.047566604 -0.037944604 2.7939677e-09
		 -0.047566604 -0.037944619 0 -0.047566596 -0.037944589 5.5879354e-09 -0.047566589
		 -0.037944634 5.5879354e-09 -0.047566611 -0.037944574 -6.519258e-09 -0.047566619 -0.037944559
		 2.7939677e-09 -0.047566626 -0.037944589 9.3132257e-10 -0.047566604 -0.037944559 1.8626451e-09
		 -0.047566574 -0.037944559 -1.1175871e-08 -0.047566567 -0.037944589 5.5879354e-09
		 -0.047566574 -0.037944589 0 -0.047566567 -0.037944619 -6.519258e-09 -0.047566559
		 -0.037944619 5.5879354e-09 -0.047566574 -0.037944589 -9.3132257e-10 -0.047566567
		 -0.037944619 -2.3283064e-09 -0.047566582 -0.037944559 -3.7252903e-09 -0.047566589
		 -0.037944574 9.3132257e-10 -0.047566574 -0.037944589 9.3132257e-10 -0.047566574 -0.037944589
		 0 -0.047566567 -0.037944619 4.6566129e-09 -0.047566574 -0.037944619 -4.6566129e-10
		 -0.047566567 -0.037944589 -5.5879354e-09 -0.047566567 -0.037944619 -5.5879354e-09
		 -0.047566574 -0.037944574 9.3132257e-10 -0.047566604 -0.037944559 1.8626451e-09 -0.047566596
		 -0.037944589 -5.5879354e-09 -0.047566626 -0.037944574 9.3132257e-09 -0.047566604
		 -0.037944604 9.3132257e-10 -0.047566589 -0.037944604 -5.5879354e-09 -0.047566611
		 -0.037944619 -1.3969839e-09 -0.047566596 -0.037944529 0 -0.047566559 -0.037944529
		 -5.5879354e-09 -0.047566582 -0.037944559 -1.3038516e-08 -0.047566559 -0.037944559
		 -9.3132257e-09 -0.047566596 -0.037944574 9.3132257e-09 -0.047566567 -0.037944559
		 -3.7252903e-09 -0.047566596 -0.037944529 -5.5879354e-09 -0.047566574 -0.037944529
		 -3.7252903e-09 -0.047566626 -0.037944574 7.4505806e-09 -0.047566582 -0.037944559
		 -2.7939677e-09 -0.047566582 -0.037944559 2.7939677e-09 -0.047566626 -0.037944574
		 -2.7939677e-09 -0.047566596 -0.037944604 -3.7252903e-09 -0.047566596 -0.037944604
		 -4.6566129e-10 -0.047566596 -0.037944589 1.8626451e-09 -0.047566596 -0.037944589
		 -5.5879354e-09 -0.047566589 -0.037944589 -5.5879354e-09 -0.047566567 -0.037944604
		 -5.5879354e-09 -0.047566567 -0.037944619 5.5879354e-09 -0.047566596 -0.037944589
		 5.5879354e-09;
createNode polySplit -n "polySplit2";
	rename -uid "88DA922F-4CFC-6FBE-8584-5792545EAE49";
	setAttr -s 13 ".e[0:12]"  0.89999998 0.1 0.89999998 0.89999998 0.1
		 0.89999998 0.89999998 0.1 0.89999998 0.89999998 0.1 0.89999998 0.89999998;
	setAttr -s 13 ".d[0:12]"  -2147483194 -2147483192 -2147483134 -2147483138 -2147483136 -2147483148 
		-2147483154 -2147483151 -2147483165 -2147483171 -2147483168 -2147483189 -2147483194;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "6091ECC7-476D-DFA1-2CBB-DA8C98FEEFA1";
	setAttr ".uopa" yes;
	setAttr -s 137 ".tk";
	setAttr ".tk[124]" -type "float3" 0.10787535 -0.5542329 0 ;
	setAttr ".tk[125]" -type "float3" 0.10787535 -0.5542329 0 ;
	setAttr ".tk[126]" -type "float3" 0.10787535 -0.5542329 0 ;
	setAttr ".tk[127]" -type "float3" 0.10787535 -0.5542329 0 ;
	setAttr ".tk[128]" -type "float3" 0.10787535 -0.5542329 0 ;
	setAttr ".tk[129]" -type "float3" 0.10787535 -0.5542329 0 ;
	setAttr ".tk[130]" -type "float3" 0.10787535 -0.5542329 0 ;
	setAttr ".tk[131]" -type "float3" 0.10787535 -0.5542329 0 ;
	setAttr ".tk[132]" -type "float3" 0.10787535 -0.5542329 0 ;
	setAttr ".tk[133]" -type "float3" 0.10787535 -0.5542329 0 ;
	setAttr ".tk[134]" -type "float3" 0.10787535 -0.5542329 0 ;
	setAttr ".tk[135]" -type "float3" 0.10787535 -0.5542329 0 ;
	setAttr ".tk[152]" -type "float3" 0.10787535 -0.5542329 0 ;
	setAttr ".tk[153]" -type "float3" 0.10787535 -0.5542329 0 ;
	setAttr ".tk[168]" -type "float3" 0.043135233 0.0078599844 0 ;
	setAttr ".tk[169]" -type "float3" 0.053243823 0.0097019449 0 ;
	setAttr ".tk[170]" -type "float3" 0.053243823 0.0097019449 0 ;
	setAttr ".tk[171]" -type "float3" 0.043135233 0.0078599844 0 ;
	setAttr ".tk[175]" -type "float3" 0.10788468 0.048935525 0.057435188 ;
	setAttr ".tk[176]" -type "float3" 0.11799545 0.048083778 0.057432733 ;
	setAttr ".tk[177]" -type "float3" 0.11799545 0.048083778 -0.05743096 ;
	setAttr ".tk[178]" -type "float3" 0.10788468 0.048935521 -0.057435188 ;
	setAttr ".tk[179]" -type "float3" 0.12218347 0.046027489 0.057435188 ;
	setAttr ".tk[180]" -type "float3" 0.12218347 0.046027489 -0.057435188 ;
	setAttr ".tk[181]" -type "float3" 0.10788468 0.046027489 0.077934369 ;
	setAttr ".tk[182]" -type "float3" 0.10788152 0.048083778 0.071930289 ;
	setAttr ".tk[183]" -type "float3" 0.027759979 0.048083782 0.071930289 ;
	setAttr ".tk[184]" -type "float3" 0.027759129 0.046027489 0.077934369 ;
	setAttr ".tk[185]" -type "float3" 0.027759137 0.048935525 0.057435192 ;
	setAttr ".tk[186]" -type "float3" 0.11799546 0.046027474 0.071930289 ;
	setAttr ".tk[187]" -type "float3" 0.11802178 0.028887458 0.071950935 ;
	setAttr ".tk[188]" -type "float3" 0.12218347 0.028896522 0.057505392 ;
	setAttr ".tk[189]" -type "float3" 0.10797434 0.028878726 0.077934369 ;
	setAttr ".tk[190]" -type "float3" 0.013460326 0.046027496 0.057435192 ;
	setAttr ".tk[191]" -type "float3" 0.017648377 0.048083782 0.057432927 ;
	setAttr ".tk[192]" -type "float3" 0.017648377 0.048083782 -0.057434294 ;
	setAttr ".tk[193]" -type "float3" 0.013460341 0.046027496 -0.057435192 ;
	setAttr ".tk[194]" -type "float3" 0.027759137 0.048935525 -0.057435192 ;
	setAttr ".tk[195]" -type "float3" 0.017648362 0.046027496 0.071930289 ;
	setAttr ".tk[196]" -type "float3" 0.017641313 0.028882932 0.071949385 ;
	setAttr ".tk[197]" -type "float3" 0.027735228 0.028888233 0.077934369 ;
	setAttr ".tk[198]" -type "float3" 0.013460311 0.028877214 0.057500258 ;
	setAttr ".tk[199]" -type "float3" 0.11913625 0.024826722 0.054499 ;
	setAttr ".tk[200]" -type "float3" 0.11484452 0.024807388 0.068892412 ;
	setAttr ".tk[201]" -type "float3" 0.092848547 0.010393405 0.047129489 ;
	setAttr ".tk[202]" -type "float3" 0.097075574 0.010368302 0.032675259 ;
	setAttr ".tk[203]" -type "float3" 0.10448227 0.024788508 0.074855164 ;
	setAttr ".tk[204]" -type "float3" 0.082643151 0.010419481 0.053116735 ;
	setAttr ".tk[205]" -type "float3" 0.12141547 0.026842929 0.056751832 ;
	setAttr ".tk[206]" -type "float3" 0.12141971 0.026847295 -0.056783695 ;
	setAttr ".tk[207]" -type "float3" 0.12218347 0.028891414 -0.057555698 ;
	setAttr ".tk[208]" -type "float3" 0.11913625 0.024826722 -0.054499 ;
	setAttr ".tk[209]" -type "float3" 0.10707269 0.026853926 0.077176519 ;
	setAttr ".tk[210]" -type "float3" 0.028021598 0.026829246 0.07716205 ;
	setAttr ".tk[211]" -type "float3" 0.028897861 0.02479743 0.074868634 ;
	setAttr ".tk[212]" -type "float3" 0.01883065 0.024784645 0.068772145 ;
	setAttr ".tk[213]" -type "float3" 0.027210409 0.010443842 0.047079161 ;
	setAttr ".tk[214]" -type "float3" 0.037311167 0.010423616 0.053123016 ;
	setAttr ".tk[215]" -type "float3" 0.014660652 0.02477107 0.054050215 ;
	setAttr ".tk[216]" -type "float3" 0.023026967 0.010463296 0.032484721 ;
	setAttr ".tk[217]" -type "float3" 0.013753529 0.026859701 0.056618169 ;
	setAttr ".tk[218]" -type "float3" 0.013754281 0.026856549 -0.056588747 ;
	setAttr ".tk[219]" -type "float3" 0.014660652 0.02477107 -0.054050215 ;
	setAttr ".tk[220]" -type "float3" 0.013460311 0.028881151 -0.057461116 ;
	setAttr ".tk[221]" -type "float3" 0.10448226 0.024788512 -0.074855164 ;
	setAttr ".tk[222]" -type "float3" 0.11484452 0.024807388 -0.068892412 ;
	setAttr ".tk[223]" -type "float3" 0.092856161 0.010393186 -0.047119871 ;
	setAttr ".tk[224]" -type "float3" 0.082658529 0.01041675 -0.053112615 ;
	setAttr ".tk[225]" -type "float3" 0.097078949 0.010370502 -0.032655794 ;
	setAttr ".tk[226]" -type "float3" 0.10792258 0.028886218 -0.077934369 ;
	setAttr ".tk[227]" -type "float3" 0.10703426 0.026851542 -0.077174336 ;
	setAttr ".tk[228]" -type "float3" 0.028012598 0.026831735 -0.077164315 ;
	setAttr ".tk[229]" -type "float3" 0.027720565 0.028886117 -0.077934369 ;
	setAttr ".tk[230]" -type "float3" 0.028897876 0.02479743 -0.074868634 ;
	setAttr ".tk[231]" -type "float3" 0.11800656 0.028888632 -0.071965598 ;
	setAttr ".tk[232]" -type "float3" 0.11799546 0.046027474 -0.071930289 ;
	setAttr ".tk[233]" -type "float3" 0.10788467 0.046027489 -0.077934369 ;
	setAttr ".tk[234]" -type "float3" 0.01883065 0.024784645 -0.068772145 ;
	setAttr ".tk[235]" -type "float3" 0.027214395 0.010443404 -0.04708695 ;
	setAttr ".tk[236]" -type "float3" 0.023028227 0.010461055 -0.032503825 ;
	setAttr ".tk[237]" -type "float3" 0.037320189 0.010425022 -0.053125121 ;
	setAttr ".tk[238]" -type "float3" 0.017637037 0.02888377 -0.071937889 ;
	setAttr ".tk[239]" -type "float3" 0.017648362 0.046027496 -0.071930289 ;
	setAttr ".tk[240]" -type "float3" 0.027759129 0.046027489 -0.077934369 ;
	setAttr ".tk[241]" -type "float3" 0.10788333 0.048083782 -0.071930289 ;
	setAttr ".tk[242]" -type "float3" 0.027760515 0.048083771 -0.071930289 ;
	setAttr ".tk[243]" -type "float3" 0.092070021 0.0063856211 0.029635826 ;
	setAttr ".tk[244]" -type "float3" 0.087786339 0.0063577914 0.044075411 ;
	setAttr ".tk[245]" -type "float3" 0.070671372 -0.011026466 0.044137876 ;
	setAttr ".tk[246]" -type "float3" 0.074906319 -0.010899598 0.029765243 ;
	setAttr ".tk[247]" -type "float3" 0.077443153 0.0063303676 0.050055478 ;
	setAttr ".tk[248]" -type "float3" 0.060406499 -0.0111442 0.050055478 ;
	setAttr ".tk[249]" -type "float3" 0.094315894 0.0083834697 0.030395754 ;
	setAttr ".tk[250]" -type "float3" 0.094322503 0.0083889235 -0.030394033 ;
	setAttr ".tk[251]" -type "float3" 0.092070021 0.0063856211 -0.02963583 ;
	setAttr ".tk[252]" -type "float3" 0.079760753 0.0083833449 0.050818879 ;
	setAttr ".tk[253]" -type "float3" 0.037837557 0.0083584758 0.050814491 ;
	setAttr ".tk[254]" -type "float3" 0.036726907 0.0063352757 0.050055478 ;
	setAttr ".tk[255]" -type "float3" 0.026460806 0.0063452232 0.044050518 ;
	setAttr ".tk[256]" -type "float3" 0.0091906292 -0.011074087 0.044057529 ;
	setAttr ".tk[257]" -type "float3" 0.019538775 -0.011084398 0.050055478 ;
	setAttr ".tk[258]" -type "float3" 0.022208514 0.0063543958 0.029553059 ;
	setAttr ".tk[259]" -type "float3" 0.0049037444 -0.011072906 0.029576343 ;
	setAttr ".tk[260]" -type "float3" 0.02342269 0.0084207729 0.030260215 ;
	setAttr ".tk[261]" -type "float3" 0.023422519 0.0084173568 -0.030268628 ;
	setAttr ".tk[262]" -type "float3" 0.022208529 0.0063543958 -0.029553059 ;
	setAttr ".tk[263]" -type "float3" 0.026460806 0.0063452232 -0.044050518 ;
	setAttr ".tk[264]" -type "float3" 0.0092011644 -0.011074996 -0.044063699 ;
	setAttr ".tk[265]" -type "float3" 0.0049015316 -0.011075107 -0.029597992 ;
	setAttr ".tk[266]" -type "float3" 0.036726892 0.0063352776 -0.050055478 ;
	setAttr ".tk[267]" -type "float3" 0.019582294 -0.011079004 -0.050055478 ;
	setAttr ".tk[268]" -type "float3" 0.037840366 0.0083606588 -0.050815847 ;
	setAttr ".tk[269]" -type "float3" 0.079778783 0.0083828885 -0.050818168 ;
	setAttr ".tk[270]" -type "float3" 0.077443153 0.0063303676 -0.050055478 ;
	setAttr ".tk[271]" -type "float3" 0.087786339 0.0063577914 -0.044075411 ;
	setAttr ".tk[272]" -type "float3" 0.070615932 -0.010999901 -0.044105541 ;
	setAttr ".tk[273]" -type "float3" 0.060192525 -0.011109123 -0.050055478 ;
	setAttr ".tk[274]" -type "float3" 0.074916311 -0.010889539 -0.029680654 ;
	setAttr ".tk[275]" -type "float3" 0.11613598 0.04770587 0.069265321 ;
	setAttr ".tk[276]" -type "float3" 0.019506939 0.047705866 0.069265388 ;
	setAttr ".tk[277]" -type "float3" 0.11721442 0.026842244 0.071189463 ;
	setAttr ".tk[278]" -type "float3" 0.01793465 0.026839368 0.071145758 ;
	setAttr ".tk[279]" -type "float3" 0.11720514 0.026842609 -0.071197949 ;
	setAttr ".tk[280]" -type "float3" 0.017932333 0.026838835 -0.071138129 ;
	setAttr ".tk[281]" -type "float3" 0.11613671 0.04770587 -0.069264621 ;
	setAttr ".tk[282]" -type "float3" 0.019507132 0.047705855 -0.069265909 ;
	setAttr ".tk[283]" -type "float3" 0.090054221 0.0083854981 0.044839356 ;
	setAttr ".tk[284]" -type "float3" 0.027638616 0.0083856788 0.044791825 ;
	setAttr ".tk[285]" -type "float3" 0.027639965 0.0083852541 -0.044795699 ;
	setAttr ".tk[286]" -type "float3" 0.090064406 0.0083879139 -0.044837907 ;
	setAttr ".tk[287]" -type "float3" 0.053556412 -0.028410709 0.044200309 ;
	setAttr ".tk[288]" -type "float3" 0.05774264 -0.028184811 0.029894652 ;
	setAttr ".tk[289]" -type "float3" 0.057762623 -0.028164679 -0.029725479 ;
	setAttr ".tk[290]" -type "float3" 0.053445511 -0.028357586 -0.044135652 ;
	setAttr ".tk[291]" -type "float3" 0.04294192 -0.028548615 -0.050055478 ;
	setAttr ".tk[292]" -type "float3" 0.002437721 -0.028493298 -0.050055478 ;
	setAttr ".tk[293]" -type "float3" 0.043369845 -0.02861877 0.050055478 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "7BFD3433-483C-59F3-7927-D4B31D356A9D";
	setAttr ".ics" -type "componentList" 4 "f[253]" "f[271]" "f[285]" "f[293]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.48310345 1.8767947 0.0011969432 ;
	setAttr ".rs" 64504;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3101150289194265 1.5852947957434789 -0.42064133053969432 ;
	setAttr ".cbx" -type "double3" 0.34390811378850827 2.1682945370311439 0.42303521689300788 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "3EF11477-48F3-D0A4-617C-D78132AD7056";
	setAttr ".ics" -type "componentList" 4 "f[253]" "f[271]" "f[285]" "f[293]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.6398735 1.4386371 0.0011969432 ;
	setAttr ".rs" 56556;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4668851126473355 1.1471372824044646 -0.42064135897470112 ;
	setAttr ".cbx" -type "double3" 0.18713805554767582 1.7301369817305587 0.42303524532801468 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak8";
	rename -uid "F80C75E1-482E-E676-847C-3FA5A5D37ABA";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[306:315]" -type "float3"  -0.24062122 0.039661542 0
		 -0.24062122 0.039661542 0 -0.24062122 0.039661542 0 -0.24062122 0.039661542 0 -0.24062122
		 0.039661542 0 -0.24062122 0.039661542 0 -0.24062122 0.039661542 0 -0.24062122 0.039661542
		 0 -0.24062122 0.039661542 0 -0.24062122 0.039661542 0;
createNode polySplit -n "polySplit3";
	rename -uid "B0C87806-4C09-56C2-21ED-379A7557F062";
	setAttr -s 21 ".e[0:20]"  0.50791901 0.49208099 0.49208099 0.50791901
		 0.49208099 0.49208099 0.49208099 0.49208099 0.50791901 0.49208099 0.49208099 0.49208099
		 0.49208099 0.50791901 0.50791901 0.50791901 0.49208099 0.49208099 0.49208099 0.49208099
		 0.50791901;
	setAttr -s 21 ".d[0:20]"  -2147483645 -2147483343 -2147483344 -2147483642 -2147483345 -2147483346 
		-2147483312 -2147483071 -2147483074 -2147483077 -2147483080 -2147483038 -2147483016 -2147483019 -2147483040 -2147483082 -2147483085 -2147483069 
		-2147483310 -2147483342 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak9";
	rename -uid "A325BC5A-4DB0-FFD0-12FA-5E97536BFB61";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[3]" -type "float3" 0 0 0.014947172 ;
	setAttr ".tk[33]" -type "float3" 0 0 -0.014862593 ;
	setAttr ".tk[169]" -type "float3" 0 0 0.014947172 ;
	setAttr ".tk[170]" -type "float3" 0 0 -0.014862593 ;
	setAttr ".tk[288]" -type "float3" 0 0 -0.014947172 ;
	setAttr ".tk[289]" -type "float3" 0 0 0.014862593 ;
	setAttr ".tk[306]" -type "float3" 9.3132257e-10 0.064457834 0 ;
	setAttr ".tk[307]" -type "float3" 9.3132257e-10 0.064533785 0 ;
	setAttr ".tk[308]" -type "float3" 9.3132257e-10 -0.066195823 -0.014947172 ;
	setAttr ".tk[309]" -type "float3" 9.3132257e-10 -0.066043623 0.014862593 ;
	setAttr ".tk[310]" -type "float3" 9.3132257e-10 -0.077342629 -0.014862593 ;
	setAttr ".tk[311]" -type "float3" 9.3132257e-10 -0.077498242 0.014947172 ;
	setAttr ".tk[312]" -type "float3" 9.3132257e-10 -0.07251557 -0.014862593 ;
	setAttr ".tk[313]" -type "float3" 9.3132257e-10 -0.07267119 0.014947172 ;
	setAttr ".tk[314]" -type "float3" 9.3132257e-10 0.07752315 0 ;
	setAttr ".tk[315]" -type "float3" 9.3132257e-10 0.077591635 0 ;
	setAttr ".tk[316]" -type "float3" -0.060525429 0.082610644 -2.7755576e-17 ;
	setAttr ".tk[317]" -type "float3" -0.060530659 0.082693763 -2.7755576e-17 ;
	setAttr ".tk[318]" -type "float3" -0.051287618 -0.060354237 -0.014947172 ;
	setAttr ".tk[319]" -type "float3" -0.051298406 -0.060187697 0.014862593 ;
	setAttr ".tk[320]" -type "float3" -0.028135467 -0.07255137 -0.014862593 ;
	setAttr ".tk[321]" -type "float3" -0.028140824 -0.072721653 0.014947172 ;
	setAttr ".tk[322]" -type "float3" -0.03935235 -0.067269467 -0.014862593 ;
	setAttr ".tk[323]" -type "float3" -0.03935755 -0.067439742 0.014947172 ;
	setAttr ".tk[324]" -type "float3" -0.061449189 0.096907087 -2.7755576e-17 ;
	setAttr ".tk[325]" -type "float3" -0.061453935 0.09698201 -2.7755576e-17 ;
createNode polySplit -n "polySplit4";
	rename -uid "F11C8D37-4550-B53B-1F75-539DB2379ED6";
	setAttr -s 13 ".e[0:12]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5;
	setAttr -s 13 ".d[0:12]"  -2147483043 -2147483028 -2147483027 -2147483042 -2147482970 -2147483039 
		-2147483034 -2147483037 -2147483036 -2147483032 -2147483041 -2147482966 -2147483043;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak10";
	rename -uid "3B6FCFBE-4D1E-0275-FEB0-9B81D8FA14D0";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[310]" -type "float3" 0.058971506 0.01277796 0 ;
	setAttr ".tk[311]" -type "float3" 0.058971506 0.012777962 0 ;
	setAttr ".tk[312]" -type "float3" 0.028366476 -4.5693945e-05 0 ;
	setAttr ".tk[313]" -type "float3" 0.028366476 -4.5693945e-05 0 ;
	setAttr ".tk[320]" -type "float3" 0.010608126 -0.0054442659 0 ;
	setAttr ".tk[321]" -type "float3" 0.010608126 -0.0054408116 0 ;
	setAttr ".tk[324]" -type "float3" 0.031864736 0.012813658 0 ;
	setAttr ".tk[325]" -type "float3" 0.031864736 0.012812136 0 ;
	setAttr ".tk[337]" -type "float3" -0.081023477 0.027350692 0 ;
	setAttr ".tk[338]" -type "float3" -0.081023477 0.027350692 0 ;
	setAttr ".tk[339]" -type "float3" -0.081023477 0.027350692 0 ;
	setAttr ".tk[340]" -type "float3" -0.081023477 0.027350692 0 ;
createNode polyTweak -n "polyTweak11";
	rename -uid "332C6BD3-4108-913D-7ED9-C7BB6163E83F";
	setAttr ".uopa" yes;
	setAttr -s 48 ".tk";
	setAttr ".tk[3]" -type "float3" 0.0020175218 0.018957611 0 ;
	setAttr ".tk[33]" -type "float3" 0.002017179 0.018946603 0 ;
	setAttr ".tk[169]" -type "float3" 0.0050017238 0.019375809 0 ;
	setAttr ".tk[170]" -type "float3" 0.0050013755 0.019364811 0 ;
	setAttr ".tk[246]" -type "float3" 0.011481957 0.011403652 0 ;
	setAttr ".tk[274]" -type "float3" 0.011483853 0.011398802 0 ;
	setAttr ".tk[288]" -type "float3" 0.0081845652 0.019728798 0 ;
	setAttr ".tk[289]" -type "float3" 0.0081883725 0.019719098 0 ;
	setAttr ".tk[295]" -type "float3" 0.011811701 0.010571139 0 ;
	setAttr ".tk[296]" -type "float3" 0.01181344 0.01056678 0 ;
	setAttr ".tk[306]" -type "float3" -0.057340521 -0.0047990726 0 ;
	setAttr ".tk[307]" -type "float3" -0.070131749 0.054358609 0 ;
	setAttr ".tk[308]" -type "float3" -0.072472826 0.0051078685 0 ;
	setAttr ".tk[309]" -type "float3" -0.083412871 -0.036971346 0 ;
	setAttr ".tk[310]" -type "float3" -0.044477738 0.0068589859 0 ;
	setAttr ".tk[311]" -type "float3" -0.044469167 0.0068702102 0 ;
	setAttr ".tk[312]" -type "float3" -0.049126655 0.0052459165 0 ;
	setAttr ".tk[313]" -type "float3" -0.049118109 0.0052571297 0 ;
	setAttr ".tk[314]" -type "float3" -0.057700053 -0.0056497771 0 ;
	setAttr ".tk[315]" -type "float3" -0.057701975 -0.0056542428 0 ;
	setAttr ".tk[316]" -type "float3" -0.074227989 -0.0088634863 0 ;
	setAttr ".tk[317]" -type "float3" -0.074231893 -0.0088688023 0 ;
	setAttr ".tk[318]" -type "float3" -0.086279482 0.0016770791 0 ;
	setAttr ".tk[319]" -type "float3" -0.08628729 0.0016664285 0 ;
	setAttr ".tk[320]" -type "float3" -0.063903026 0.0017725797 0 ;
	setAttr ".tk[321]" -type "float3" -0.063895278 0.0017834613 0 ;
	setAttr ".tk[322]" -type "float3" -0.067228861 0.00071936636 0 ;
	setAttr ".tk[323]" -type "float3" -0.067220919 0.00073025166 0 ;
	setAttr ".tk[324]" -type "float3" -0.067185067 -0.0076689208 0 ;
	setAttr ".tk[325]" -type "float3" -0.067188464 -0.0076737059 0 ;
	setAttr ".tk[336]" -type "float3" 0.0098622041 0.015493062 0 ;
	setAttr ".tk[337]" -type "float3" -0.078342073 -0.0060654385 0 ;
	setAttr ".tk[338]" -type "float3" -0.093716204 -0.0098186024 0 ;
	setAttr ".tk[339]" -type "float3" -0.093710408 -0.00981066 0 ;
	setAttr ".tk[340]" -type "float3" -0.078338914 -0.0060580419 0 ;
	setAttr ".tk[341]" -type "float3" 0.0098593654 0.015500299 0 ;
	setAttr ".tk[346]" -type "float3" -0.049883585 -0.020292934 0 ;
	setAttr ".tk[347]" -type "float3" -0.055315219 -0.025911836 0 ;
	setAttr ".tk[348]" -type "float3" -0.055343669 -0.025941269 0 ;
	setAttr ".tk[349]" -type "float3" -0.049915191 -0.020325605 0 ;
	setAttr ".tk[350]" -type "float3" -0.033565648 0.008104777 0 ;
	setAttr ".tk[351]" -type "float3" 0.004369691 0.035830855 0 ;
	setAttr ".tk[352]" -type "float3" 0.0077713528 0.038631208 0 ;
	setAttr ".tk[353]" -type "float3" 0.011104614 0.04124438 0 ;
	setAttr ".tk[354]" -type "float3" 0.011173588 0.041311458 0 ;
	setAttr ".tk[355]" -type "float3" 0.0078403708 0.038698249 0 ;
	setAttr ".tk[356]" -type "float3" 0.0044329725 0.035896294 0 ;
	setAttr ".tk[357]" -type "float3" -0.033518456 0.0081535801 0 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "FF3386C3-4CF9-E418-A701-4AB0DD050D5A";
	setAttr ".dc" -type "componentList" 5 "f[304:305]" "f[334]" "f[338]" "f[347:348]" "f[354:355]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "FFC0565C-442F-E7E8-9A86-F0962D302004";
	setAttr ".ics" -type "componentList" 8 "e[566]" "e[568]" "e[605:610]" "e[658:659]" "e[662:663]" "e[686]" "e[689:690]" "e[695]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 341;
	setAttr ".sv2" 336;
	setAttr ".d" 1;
	setAttr ".sd" 1;
	setAttr ".td" 1;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "EC57E6C3-456C-F3F8-85D5-6E8AB67317BE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[566]" "e[568]" "e[658]" "e[663]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak12";
	rename -uid "DA300CA7-4854-7F34-B056-0D95761CF415";
	setAttr ".uopa" yes;
	setAttr -s 46 ".tk";
	setAttr ".tk[3]" -type "float3" 0 0 -0.15893523 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.15873429 ;
	setAttr ".tk[169]" -type "float3" 0 0 -0.15893523 ;
	setAttr ".tk[170]" -type "float3" 0 0 0.15873429 ;
	setAttr ".tk[246]" -type "float3" 0 0 -0.1698482 ;
	setAttr ".tk[274]" -type "float3" 0 0 0.1698482 ;
	setAttr ".tk[288]" -type "float3" 0 0 -0.15893553 ;
	setAttr ".tk[289]" -type "float3" 0 0 0.15873459 ;
	setAttr ".tk[295]" -type "float3" 0 0 -0.16975223 ;
	setAttr ".tk[296]" -type "float3" 0 0 0.16981497 ;
	setAttr ".tk[306]" -type "float3" 0 0 -0.1698482 ;
	setAttr ".tk[307]" -type "float3" 0 0 0.1698482 ;
	setAttr ".tk[308]" -type "float3" 0 0 -0.15893553 ;
	setAttr ".tk[309]" -type "float3" 0 0 0.15873459 ;
	setAttr ".tk[310]" -type "float3" 0 0 0.15873429 ;
	setAttr ".tk[311]" -type "float3" 0 0 -0.15893523 ;
	setAttr ".tk[312]" -type "float3" 0 0 0.15873429 ;
	setAttr ".tk[313]" -type "float3" 0 0 -0.15893523 ;
	setAttr ".tk[314]" -type "float3" 0 0 -0.16975223 ;
	setAttr ".tk[315]" -type "float3" 0 0 0.16981497 ;
	setAttr ".tk[316]" -type "float3" 0 0 -0.1698482 ;
	setAttr ".tk[317]" -type "float3" 0 0 0.1698482 ;
	setAttr ".tk[318]" -type "float3" 0 0 -0.15893553 ;
	setAttr ".tk[319]" -type "float3" 0 0 0.15873459 ;
	setAttr ".tk[320]" -type "float3" 0 0 0.15873429 ;
	setAttr ".tk[321]" -type "float3" 0 0 -0.15893523 ;
	setAttr ".tk[322]" -type "float3" 0 0 0.15873429 ;
	setAttr ".tk[323]" -type "float3" 0 0 -0.15893523 ;
	setAttr ".tk[324]" -type "float3" 0 0 -0.16975223 ;
	setAttr ".tk[325]" -type "float3" 0 0 0.16981497 ;
	setAttr ".tk[336]" -type "float3" 0 0 0.16810432 ;
	setAttr ".tk[337]" -type "float3" 0 0 0.16440639 ;
	setAttr ".tk[338]" -type "float3" 0 0 0.16440639 ;
	setAttr ".tk[339]" -type "float3" 0 0 -0.16433182 ;
	setAttr ".tk[340]" -type "float3" 0 0 -0.16433182 ;
	setAttr ".tk[341]" -type "float3" 0 0 -0.16810432 ;
	setAttr ".tk[346]" -type "float3" 0 0 -0.1698482 ;
	setAttr ".tk[347]" -type "float3" 0 0 -0.16975223 ;
	setAttr ".tk[348]" -type "float3" 0 0 0.16981497 ;
	setAttr ".tk[349]" -type "float3" 0 0 0.1698482 ;
	setAttr ".tk[350]" -type "float3" 0 0 0.15873459 ;
	setAttr ".tk[351]" -type "float3" 0 0 0.15873429 ;
	setAttr ".tk[352]" -type "float3" 0 0 0.15873429 ;
	setAttr ".tk[353]" -type "float3" 0 0 -0.15893523 ;
	setAttr ".tk[354]" -type "float3" 0 0 -0.15893523 ;
	setAttr ".tk[355]" -type "float3" 0 0 -0.15893553 ;
createNode polySplit -n "polySplit5";
	rename -uid "D5A9D8B1-481E-83F4-60B6-14898C9FE9EB";
	setAttr -s 17 ".e[0:16]"  0.69999999 0.69999999 0.30000001 0.69999999
		 0.69999999 0.30000001 0.69999999 0.69999999 0.69999999 0.69999999 0.30000001 0.69999999
		 0.69999999 0.30000001 0.69999999 0.69999999 0.69999999;
	setAttr -s 17 ".d[0:16]"  -2147483346 -2147483345 -2147482997 -2147483344 -2147483343 -2147483000 
		-2147483342 -2147483310 -2147483069 -2147483085 -2147482985 -2147483080 -2147483077 -2147482992 -2147483071 -2147483312 -2147483346;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "4F3CA47B-4E0B-41BD-C7C8-D0A494C6EDF6";
	setAttr ".ics" -type "componentList" 1 "f[366]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.3995828 1.8818496 0.00077683374 ;
	setAttr ".rs" 52927;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.50374416911543651 1.8430930007130162 -0.088674426561702088 ;
	setAttr ".cbx" -type "double3" -0.29542142393901116 1.920606398846767 0.090228094007541032 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "FF3FDE3F-482D-455E-8023-7FA81A020357";
	setAttr ".ics" -type "componentList" 1 "f[366]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.43199492 1.7060672 0.00077683729 ;
	setAttr ".rs" 44119;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.53615628311591124 1.6673105117810443 -0.088674426561702088 ;
	setAttr ".cbx" -type "double3" -0.32783355195737673 1.7448239868443416 0.09022810111629273 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak13";
	rename -uid "91E77B9D-415F-8A02-39EB-AABB388EBE0D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[372:375]" -type "float3"  -0.09367016 0.00019664023
		 0 -0.09367016 0.00019664023 0 -0.09367016 0.00019664023 0 -0.09367016 0.00019664023
		 0;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "6AAD6BF4-4F9C-63A1-5380-A4AC166BB833";
	setAttr ".ics" -type "componentList" 1 "f[366]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.54942489 1.5350912 0.00077684084 ;
	setAttr ".rs" 36938;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.63431996862095019 1.4998450699605281 -0.088674426561702088 ;
	setAttr ".cbx" -type "double3" -0.46452982067363191 1.5703372428397677 0.090228108225044429 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak14";
	rename -uid "341CE1F4-4B76-F3F8-8F99-468FF4D8AF44";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[376:379]" -type "float3"  -0.099179029 0.054633848 0
		 -0.099179029 0.054742035 0 -0.099179029 0.03421678 0 -0.099179029 0.034336839 0;
createNode polyMirror -n "polyMirror1";
	rename -uid "26BA6687-4A52-66C1-4F73-E6A58C7EC507";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".ws" yes;
	setAttr ".a" 2;
	setAttr ".ad" 0;
	setAttr ".mtt" 1;
	setAttr ".mt" 0.35776874423027039;
	setAttr ".cm" yes;
	setAttr ".fnf" 229;
	setAttr ".lnf" 457;
createNode polyTweak -n "polyTweak15";
	rename -uid "3D9F4FFD-4A10-6F08-9B04-58A5FFA60FC3";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[336]" -type "float3" 0.0081345402 0.0035277419 0 ;
	setAttr ".tk[341]" -type "float3" 0.0081345402 0.0035277419 0 ;
	setAttr ".tk[366]" -type "float3" 0.0081345402 0.0035277419 0 ;
	setAttr ".tk[367]" -type "float3" 0.0081345402 0.0035277419 0 ;
	setAttr ".tk[372]" -type "float3" 0.0081345402 0.0035277419 0 ;
	setAttr ".tk[373]" -type "float3" 0.0081345402 0.0035277419 0 ;
	setAttr ".tk[374]" -type "float3" 0.0081345402 0.0035277419 0 ;
	setAttr ".tk[375]" -type "float3" 0.0081345402 0.0035277419 0 ;
	setAttr ".tk[376]" -type "float3" 0.0081345402 0.0035277419 0 ;
	setAttr ".tk[377]" -type "float3" 0.0081345402 0.0035277419 0 ;
	setAttr ".tk[378]" -type "float3" 0.0081345402 0.0035277419 0 ;
	setAttr ".tk[379]" -type "float3" 0.0081345402 0.0035277419 0 ;
	setAttr ".tk[380]" -type "float3" -0.086443618 0.10455605 0 ;
	setAttr ".tk[381]" -type "float3" -0.086443618 0.10476967 0 ;
	setAttr ".tk[382]" -type "float3" -0.086443618 0.064275973 0 ;
	setAttr ".tk[383]" -type "float3" -0.086443618 0.064512797 0 ;
createNode polySplit -n "polySplit6";
	rename -uid "79EDD1A1-4551-7FE6-A1DA-349A5771AD38";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483349 -2147483165 -2147482807 -2147482806 -2147483172 -2147483338 
		-2147483349;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak16";
	rename -uid "21ADDE37-4F8F-986C-4D52-019BBB7E8387";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[173]" -type "float3" -0.051096957 0.024472581 0 ;
	setAttr ".tk[174]" -type "float3" -0.051096957 0.024472581 0 ;
	setAttr ".tk[248]" -type "float3" -0.051096957 0.024472581 0 ;
	setAttr ".tk[256]" -type "float3" -0.051096957 0.024472581 0 ;
	setAttr ".tk[439]" -type "float3" -0.051096957 0.024472581 0 ;
	setAttr ".tk[440]" -type "float3" -0.051096957 0.024472581 0 ;
createNode polySplit -n "polySplit7";
	rename -uid "BBAC06FC-4EB5-A1BB-56AD-8BB0C5BF3543";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483321 -2147483166 -2147482835 -2147482901 -2147483185 -2147483320 
		-2147483321;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "1505F2DD-4C3D-642E-C79A-F1A8F3EEB82B";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483351 -2147483163 -2147482836 -2147482838 -2147483176 -2147483343 
		-2147483351;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak17";
	rename -uid "A73BEE27-48CD-B10C-B22D-0D95538584FB";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[171]" -type "float3" 0.025194939 0.0063059814 0 ;
	setAttr ".tk[172]" -type "float3" 0.025194939 0.0063059814 0 ;
	setAttr ".tk[247]" -type "float3" 0.025194939 0.0063059814 0 ;
	setAttr ".tk[254]" -type "float3" 0.025194939 0.0063059814 0 ;
	setAttr ".tk[437]" -type "float3" 0.025194939 0.0063059814 0 ;
	setAttr ".tk[438]" -type "float3" 0.025194939 0.0063059814 0 ;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "719C5D0A-4226-4533-8CB1-81B555B7CE28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[297:300]" "e[305]" "e[310:311]" "e[314]" "e[316:318]" "e[327:328]" "e[338:340]" "e[342]" "e[363:364]" "e[366:367]" "e[369:371]" "e[916]" "e[921]" "e[928]" "e[933]" "e[940]" "e[945]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.7;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak18";
	rename -uid "49E67F07-46DF-DFD1-CCFC-0CABE1F8A755";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[153]" -type "float3" 0.028373973 -0.010380622 0 ;
	setAttr ".tk[157]" -type "float3" 0.028373973 -0.010380622 0 ;
	setAttr ".tk[158]" -type "float3" 0.028373973 -0.010380622 0 ;
	setAttr ".tk[162]" -type "float3" 0.028373973 -0.010380622 0 ;
	setAttr ".tk[173]" -type "float3" 0.0022038445 0.019874251 0 ;
	setAttr ".tk[174]" -type "float3" 0.0022038445 0.019874251 0 ;
	setAttr ".tk[240]" -type "float3" 0.028373973 -0.01038062 0 ;
	setAttr ".tk[241]" -type "float3" 0.028373973 -0.01038062 0 ;
	setAttr ".tk[245]" -type "float3" 0.028373973 -0.01038062 0 ;
	setAttr ".tk[248]" -type "float3" 0.0022038445 0.019874251 0 ;
	setAttr ".tk[256]" -type "float3" 0.0022038445 0.019874251 0 ;
	setAttr ".tk[419]" -type "float3" 0.028373973 -0.010380622 0 ;
	setAttr ".tk[423]" -type "float3" 0.028373973 -0.010380622 0 ;
	setAttr ".tk[424]" -type "float3" 0.028373973 -0.010380622 0 ;
	setAttr ".tk[428]" -type "float3" 0.028373973 -0.010380622 0 ;
	setAttr ".tk[439]" -type "float3" 0.0022038445 0.019874251 0 ;
	setAttr ".tk[440]" -type "float3" 0.0022038445 0.019874251 0 ;
createNode polySplit -n "polySplit9";
	rename -uid "3AF6ADCB-4C54-927D-3068-43B62494B177";
	setAttr -s 13 ".e[0:12]"  0.97786599 0.022133701 0.97786599 0.97786599
		 0.022133701 0.97786599 0.022133701 0.97786599 0.97786599 0.022133701 0.97786599 0.97786599
		 0.97786599;
	setAttr -s 13 ".d[0:12]"  -2147483407 -2147483368 -2147483417 -2147483423 -2147483365 -2147483261 
		-2147483176 -2147483178 -2147483174 -2147483162 -2147483164 -2147483160 -2147483260;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "1636B37A-422B-B96F-0A7E-678841855BC9";
	setAttr -s 3 ".e[0:2]"  0 1 1;
	setAttr -s 3 ".d[0:2]"  -2147482615 -2147483403 -2147483260;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "F812E7AC-4B89-4532-E01C-7FBEE8FFF202";
	setAttr -s 17 ".e[0:16]"  0.088013999 0.91198599 0.088013999 0.088013999
		 0.088013999 0.088013999 0.91198599 0.088013999 0.91198599 0.088013999 0.088013999
		 0.088013999 0.088013999 0.91198599 0.088013999 0.088013999 0.91198599;
	setAttr -s 17 ".d[0:16]"  -2147483376 -2147483339 -2147483370 -2147483486 -2147483503 -2147483502 
		-2147483341 -2147483241 -2147482888 -2147482890 -2147482887 -2147482884 -2147482882 -2147482881 -2147482879 -2147482877 -2147483230;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "906F9F15-4AC6-4A12-6002-E2A0F10C84CA";
	setAttr -s 3 ".e[0:2]"  0 0 0;
	setAttr -s 3 ".d[0:2]"  -2147482588 -2147482779 -2147482572;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "1E9766C5-492A-FAA0-041F-F8A2EDD8E663";
	setAttr -s 17 ".e[0:16]"  0.1 0.89999998 0.89999998 0.1 0.89999998
		 0.89999998 0.89999998 0.89999998 0.1 0.89999998 0.1 0.89999998 0.89999998 0.89999998
		 0.89999998 0.1 0.89999998;
	setAttr -s 17 ".d[0:16]"  -2147483230 -2147482573 -2147482574 -2147482881 -2147482576 -2147482577 
		-2147482578 -2147482579 -2147482888 -2147482581 -2147483341 -2147482583 -2147482584 -2147482585 -2147482586 -2147483339 -2147482588;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "7CDE6CAC-4AD5-5415-ECD0-458DE8D988C2";
	setAttr -s 3 ".e[0:2]"  0 1 0;
	setAttr -s 3 ".d[0:2]"  -2147482537 -2147482779 -2147482553;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "13764C12-4A1B-8BC8-42E2-6D9CC29ACF61";
	setAttr -s 17 ".e[0:16]"  0.94889402 0.051105998 0.051105998 0.94889402
		 0.051105998 0.051105998 0.051105998 0.051105998 0.94889402 0.051105998 0.94889402
		 0.051105998 0.051105998 0.051105998 0.051105998 0.94889402 0.051105998;
	setAttr -s 17 ".d[0:16]"  -2147483237 -2147482967 -2147482965 -2147482962 -2147482959 -2147482936 
		-2147482957 -2147482956 -2147482954 -2147483252 -2147483647 -2147483357 -2147483356 -2147483355 -2147483354 -2147483373 -2147483352;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "2F5D0855-4ED4-D16E-EB70-3785ABEC68C6";
	setAttr -s 3 ".e[0:2]"  0 0 0;
	setAttr -s 3 ".d[0:2]"  -2147482502 -2147482754 -2147482518;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "313AE2B1-4086-AC1D-B12B-C0B5FD4F86D9";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147482763 -2147482778;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit18";
	rename -uid "84048AE0-4147-C59B-4446-15B2D0EC3290";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147482758 -2147483345;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit19";
	rename -uid "45105565-46C3-D060-9596-46AAA81ADE87";
	setAttr -s 3 ".e[0:2]"  0 0.081737503 0;
	setAttr -s 3 ".d[0:2]"  -2147482774 -2147483491 -2147482769;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit20";
	rename -uid "1A2F44C3-409A-4757-D74D-1FA7594260C8";
	setAttr -s 17 ".e[0:16]"  0.03101 0.96899003 0.96899003 0.03101 0.96899003
		 0.96899003 0.96899003 0.96899003 0.03101 0.96899003 0.03101 0.96899003 0.96899003
		 0.96899003 0.96899003 0.03101 0.96899003;
	setAttr -s 17 ".d[0:16]"  -2147483237 -2147482517 -2147482516 -2147482962 -2147482514 -2147482513 
		-2147482512 -2147482511 -2147482954 -2147482509 -2147483647 -2147482507 -2147482506 -2147482505 -2147482504 -2147483373 -2147482502;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit21";
	rename -uid "EBB57D85-4D65-4AF8-A7A7-E1A94FF0AA9F";
	setAttr -s 3 ".e[0:2]"  0 0 0;
	setAttr -s 3 ".d[0:2]"  -2147482462 -2147482771 -2147482478;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit22";
	rename -uid "DD0A6B02-4679-6E37-4C3A-7896DC6EE9BE";
	setAttr -s 13 ".e[0:12]"  0.1 0.1 0.89999998 0.1 0.1 0.1 0.1 0.1 0.89999998
		 0.1 0.1 0.89999998 0.89999998;
	setAttr -s 13 ".d[0:12]"  -2147483529 -2147483626 -2147483628 -2147483534 -2147483640 -2147483280 
		-2147483021 -2147483019 -2147483147 -2147483145 -2147483011 -2147483009 -2147483283;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit23";
	rename -uid "8FBA62FA-463D-E7D0-D28D-D290D1438455";
	setAttr -s 3 ".e[0:2]"  0 1 0;
	setAttr -s 3 ".d[0:2]"  -2147482443 -2147483644 -2147482431;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyMirror -n "polyMirror2";
	rename -uid "F34F4DB9-4ADE-FEFF-BE2E-47816FA42FD7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".ws" yes;
	setAttr ".a" 2;
	setAttr ".ad" 0;
	setAttr ".mtt" 1;
	setAttr ".mt" 0.27531111240386963;
	setAttr ".cm" yes;
	setAttr ".fnf" 328;
	setAttr ".lnf" 655;
createNode polySoftEdge -n "polySoftEdge2";
	rename -uid "7CBBED76-4F0E-609D-151F-FBA296B17459";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[92]" "e[135]" "e[137]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak19";
	rename -uid "7BAD024D-4A25-0ACC-E0ED-B68634066E32";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[47]" -type "float3" -0.025918743 -0.0047228415 0 ;
	setAttr ".tk[73]" -type "float3" -0.0020778861 -0.00037862684 0 ;
createNode polyMirror -n "polyMirror3";
	rename -uid "9086257F-4599-A0CB-21FB-E692B2C4FCBD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".ws" yes;
	setAttr ".a" 2;
	setAttr ".ad" 0;
	setAttr ".mtt" 1;
	setAttr ".mt" 0.26564443111419678;
	setAttr ".cm" yes;
	setAttr ".fnf" 328;
	setAttr ".lnf" 655;
createNode polyTweak -n "polyTweak20";
	rename -uid "87A27D57-4B35-037E-78C1-6AB005BA5F24";
	setAttr ".uopa" yes;
	setAttr ".tk[73]" -type "float3"  0.0084756045 0.0086323181 0;
createNode polySoftEdge -n "polySoftEdge3";
	rename -uid "8E27DD1A-4DB7-E656-BF5F-5DB8BF436D93";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 62 "e[18]" "e[22]" "e[33]" "e[49]" "e[53]" "e[64]" "e[76]" "e[80]" "e[158]" "e[164]" "e[178]" "e[182]" "e[186]" "e[194]" "e[210]" "e[214]" "e[235]" "e[239]" "e[243]" "e[273]" "e[275]" "e[280]" "e[295]" "e[309]" "e[326]" "e[598]" "e[612]" "e[636]" "e[654]" "e[677]" "e[689]" "e[705]" "e[709]" "e[713]" "e[721]" "e[737]" "e[741]" "e[753]" "e[757]" "e[761]" "e[775]" "e[780]" "e[791]" "e[804]" "e[808]" "e[819]" "e[825]" "e[829]" "e[852]" "e[966]" "e[984]" "e[1000]" "e[1008]" "e[1025]" "e[1045]" "e[1077]" "e[1255]" "e[1261]" "e[1280]" "e[1293]" "e[1305]" "e[1308]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak21";
	rename -uid "9E72B53F-45FD-6900-E10C-5F909531D323";
	setAttr ".uopa" yes;
	setAttr -s 38 ".tk";
	setAttr ".tk[79]" -type "float3" -0.0090350071 0.028210193 2.220446e-16 ;
	setAttr ".tk[80]" -type "float3" -0.011529225 0.028209884 2.7755576e-16 ;
	setAttr ".tk[81]" -type "float3" -0.0030130036 0.028198756 2.220446e-16 ;
	setAttr ".tk[82]" -type "float3" 3.7252903e-09 9.3132257e-10 0 ;
	setAttr ".tk[83]" -type "float3" 0.013910227 -0.021580875 2.220446e-16 ;
	setAttr ".tk[84]" -type "float3" 0.010537717 -0.021629985 2.220446e-16 ;
	setAttr ".tk[85]" -type "float3" -0.01295847 -0.02147226 2.220446e-16 ;
	setAttr ".tk[149]" -type "float3" 3.7252903e-09 9.3132257e-10 0 ;
	setAttr ".tk[153]" -type "float3" -0.0079069631 0.0037565865 2.220446e-16 ;
	setAttr ".tk[157]" -type "float3" 3.7252903e-09 9.3132257e-10 0 ;
	setAttr ".tk[164]" -type "float3" -0.0064387843 0.011089257 2.220446e-16 ;
	setAttr ".tk[190]" -type "float3" -0.011528577 0.028213017 2.3272177e-16 ;
	setAttr ".tk[217]" -type "float3" 3.7252903e-09 9.3132257e-10 0 ;
	setAttr ".tk[281]" -type "float3" 3.7252903e-09 9.3132257e-10 0 ;
	setAttr ".tk[282]" -type "float3" 3.7252903e-09 9.3132257e-10 0 ;
	setAttr ".tk[333]" -type "float3" -0.0033145156 0.026692849 2.220446e-16 ;
	setAttr ".tk[344]" -type "float3" -0.0061264001 0.012649609 2.220446e-16 ;
	setAttr ".tk[353]" -type "float3" -0.0081651295 0.0024673301 2.220446e-16 ;
	setAttr ".tk[357]" -type "float3" 3.7252903e-09 9.3132257e-10 0 ;
	setAttr ".tk[363]" -type "float3" -0.012809838 -0.020729899 2.220446e-16 ;
	setAttr ".tk[453]" -type "float3" -0.0090350071 0.028210193 2.220446e-16 ;
	setAttr ".tk[454]" -type "float3" -0.011529225 0.028209884 2.7755576e-16 ;
	setAttr ".tk[455]" -type "float3" -0.0030130036 0.028198756 2.220446e-16 ;
	setAttr ".tk[456]" -type "float3" 3.7252903e-09 9.3132257e-10 0 ;
	setAttr ".tk[457]" -type "float3" 0.013910227 -0.021580875 2.220446e-16 ;
	setAttr ".tk[458]" -type "float3" 0.010537717 -0.021629985 2.220446e-16 ;
	setAttr ".tk[459]" -type "float3" -0.01295847 -0.02147226 2.220446e-16 ;
	setAttr ".tk[523]" -type "float3" 3.7252903e-09 9.3132257e-10 0 ;
	setAttr ".tk[527]" -type "float3" -0.0079069631 0.0037565865 2.220446e-16 ;
	setAttr ".tk[531]" -type "float3" 3.7252903e-09 9.3132257e-10 0 ;
	setAttr ".tk[538]" -type "float3" -0.0064387843 0.011089257 2.220446e-16 ;
	setAttr ".tk[575]" -type "float3" 3.7252903e-09 9.3132257e-10 0 ;
	setAttr ".tk[576]" -type "float3" 3.7252903e-09 9.3132257e-10 0 ;
	setAttr ".tk[625]" -type "float3" -0.0033145156 0.026692849 2.220446e-16 ;
	setAttr ".tk[632]" -type "float3" -0.0061264001 0.012649609 2.220446e-16 ;
	setAttr ".tk[639]" -type "float3" -0.0081651295 0.0024673301 2.220446e-16 ;
	setAttr ".tk[643]" -type "float3" 3.7252903e-09 9.3132257e-10 0 ;
	setAttr ".tk[647]" -type "float3" -0.012809838 -0.020729899 2.220446e-16 ;
createNode polySoftEdge -n "polySoftEdge4";
	rename -uid "E456A5A5-4B80-EFBC-BBBC-60A55734B4F9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[3]" "e[21]" "e[443]" "e[447]" "e[486]" "e[489]" "e[509]" "e[695:700]" "e[777]" "e[906]" "e[911]" "e[917]" "e[920]" "e[1070]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge5";
	rename -uid "E2EE5A87-451E-68F0-05DC-179AD23A7669";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[274]" "e[277:278]" "e[294]" "e[310]" "e[613]" "e[635]" "e[653]" "e[676]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge6";
	rename -uid "7A27C8AD-4994-2A64-D8B3-89AF62389244";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[679:686]" "e[960]" "e[964]" "e[967]" "e[970]" "e[973]" "e[989]" "e[1002]" "e[1086]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge7";
	rename -uid "F1C115C2-4E13-AC87-A89A-DD822F16EBDD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[145]" "e[147:149]" "e[292]" "e[305]" "e[615]" "e[633]" "e[651]" "e[674]" "e[971]" "e[975]" "e[979]" "e[982]" "e[1019]" "e[1034]" "e[1266]" "e[1277]" "e[1287]" "e[1302]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".a" 180;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "44435B70-46E6-C846-1A5C-04993385ABB5";
	setAttr ".sa" 14;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "C672DBA0-434E-100D-D70C-1C828A35D01F";
	setAttr ".ics" -type "componentList" 3 "f[2:8]" "f[16:22]" "f[30:36]";
	setAttr ".ix" -type "matrix" 0 0.53456892514365517 0 0 -3.5230710366106659 0 0 0
		 0 0 0.49836731718510879 0 -8.0300369773726157 3.6359340068110542 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.0300369 3.4281261 -1.4852503e-08 ;
	setAttr ".rs" 52997;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.553108013983282 3.1013651135301901 -0.48587217337411764 ;
	setAttr ".cbx" -type "double3" -4.5069659407619493 3.7548868462746321 0.48587214366911075 ;
	setAttr ".raf" no;
createNode polySoftEdge -n "polySoftEdge8";
	rename -uid "DBA99A23-4EF2-B3B9-9F4C-14A3073F5F88";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[14:21]" "e[40]" "e[43]" "e[45]" "e[48]" "e[51]" "e[54]" "e[57]" "e[62]";
	setAttr ".ix" -type "matrix" 0 0.53456892514365517 0 0 -3.5230710366106659 0 0 0
		 0 0 0.49836731718510879 0 -7.2867635036981637 2.5990648224221307 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak22";
	rename -uid "C8F2B734-434E-73B2-4626-F6AA9D61427A";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[2]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[3]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[4]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[5]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[6]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[7]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[8]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[9]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[16]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[17]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[18]" -type "float3" -0.86043423 0 0 ;
	setAttr ".tk[19]" -type "float3" -0.86043423 0 0 ;
	setAttr ".tk[20]" -type "float3" -0.86043423 0 0 ;
	setAttr ".tk[21]" -type "float3" -0.86043423 0 0 ;
	setAttr ".tk[22]" -type "float3" -0.86043423 0 0 ;
	setAttr ".tk[23]" -type "float3" -0.86043423 0 0 ;
	setAttr ".tk[24]" -type "float3" -0.86043411 0 0 ;
	setAttr ".tk[25]" -type "float3" -0.86043411 0 0 ;
	setAttr ".tk[26]" -type "float3" -0.86043411 0 0 ;
	setAttr ".tk[27]" -type "float3" -0.86043411 0 0 ;
	setAttr ".tk[28]" -type "float3" -0.86043423 0 0 ;
	setAttr ".tk[29]" -type "float3" -0.86043423 0 0 ;
	setAttr ".tk[30]" -type "float3" -0.86043411 0 0 ;
	setAttr ".tk[31]" -type "float3" -0.86043411 0 0 ;
	setAttr ".tk[32]" -type "float3" -0.86043411 0 0 ;
	setAttr ".tk[33]" -type "float3" -0.86043411 0 0 ;
	setAttr ".tk[34]" -type "float3" -0.86043411 0 -9.9586866e-24 ;
	setAttr ".tk[35]" -type "float3" -0.86043411 0 -9.9586866e-24 ;
createNode polySoftEdge -n "polySoftEdge9";
	rename -uid "2742AE2E-49E4-AC14-7C31-D397B6194E02";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[14:21]" "e[40]" "e[43]" "e[45]" "e[48]" "e[51]" "e[54]" "e[57]" "e[62]";
	setAttr ".ix" -type "matrix" 0 0.39873419276474797 0 0 -3.5230710366106659 0 0 0
		 0 0 0.49836731718510879 0 -7.2867635036981637 3.8371256456096798 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge10";
	rename -uid "72CF4853-4340-5EFA-DDA9-808CEDC17330";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 48 "e[7]" "e[69]" "e[89]" "e[149]" "e[155]" "e[170]" "e[173]" "e[218]" "e[221]" "e[246]" "e[288]" "e[314]" "e[319:322]" "e[325:326]" "e[329:330]" "e[339:348]" "e[442]" "e[555:558]" "e[561]" "e[569]" "e[573:574]" "e[582:586]" "e[608]" "e[610]" "e[626]" "e[638]" "e[656]" "e[679]" "e[699]" "e[701]" "e[854:856]" "e[858:859]" "e[861]" "e[865:866]" "e[982:983]" "e[996]" "e[1057:1071]" "e[1075:1077]" "e[1081]" "e[1085:1088]" "e[1095:1096]" "e[1192:1195]" "e[1201]" "e[1210]" "e[1214:1215]" "e[1225:1230]" "e[1272]" "e[1283]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak23";
	rename -uid "DC6D0F4D-44FE-84BD-31E4-80B03A277974";
	setAttr ".uopa" yes;
	setAttr -s 127 ".tk";
	setAttr ".tk[5]" -type "float3" 0 0 -4.3062167e-09 ;
	setAttr ".tk[13]" -type "float3" 0 0 -4.3062167e-09 ;
	setAttr ".tk[84]" -type "float3" 0 0 -4.3062167e-09 ;
	setAttr ".tk[85]" -type "float3" 0 0 -4.3062167e-09 ;
	setAttr ".tk[86]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[87]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[88]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[89]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[90]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[91]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[92]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[93]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[94]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[95]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[96]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[97]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[98]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[99]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[100]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[101]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[102]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[103]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[104]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[105]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[106]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[107]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[108]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[109]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[110]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[111]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[112]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[113]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[114]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[115]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[116]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[117]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[118]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[119]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[120]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[121]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[122]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[123]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[124]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[127]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[129]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[130]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[131]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[132]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[135]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[136]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[137]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[138]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[139]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[140]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[191]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[192]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[193]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[194]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[195]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[196]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[197]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[198]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[199]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[200]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[201]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[202]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[203]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[204]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[205]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[206]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[207]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[208]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[352]" -type "float3" 0 0 4.3062141e-09 ;
	setAttr ".tk[353]" -type "float3" 0 0 4.3062141e-09 ;
	setAttr ".tk[361]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[362]" -type "float3" 0 0 -4.3062167e-09 ;
	setAttr ".tk[363]" -type "float3" 0 0 -4.3062167e-09 ;
	setAttr ".tk[460]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[461]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[462]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[463]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[464]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[465]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[466]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[467]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[468]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[469]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[470]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[471]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[472]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[473]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[474]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[475]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[476]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[477]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[478]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[479]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[480]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[481]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[482]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[483]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[484]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[485]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[486]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[487]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[488]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[489]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[490]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[491]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[492]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[493]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[494]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[495]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[496]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[497]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[498]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[501]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[503]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[504]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[505]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[506]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[509]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[510]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[511]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[512]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[513]" -type "float3" 0.09468928 0.46595544 0 ;
	setAttr ".tk[514]" -type "float3" 0.09468928 0.46595544 0 ;
createNode polySoftEdge -n "polySoftEdge11";
	rename -uid "7C8210E9-40B7-8A79-2D07-3986AFC35A58";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[147:149]" "e[624:626]" "e[975]" "e[982]" "e[1017]" "e[1088]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".a" 0;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "0AF217EF-4A1B-4233-F055-0095217CDB5F";
	setAttr ".ics" -type "componentList" 16 "f[22:23]" "f[30:31]" "f[36:41]" "f[50]" "f[52:55]" "f[102:111]" "f[171:176]" "f[183]" "f[350:351]" "f[358:359]" "f[364:369]" "f[378]" "f[380:383]" "f[430:439]" "f[499:504]" "f[511]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.2283459 2.2300835 0 ;
	setAttr ".rs" 53434;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.8046698826869694 1.4436024256154187 -0.61281050921242886 ;
	setAttr ".cbx" -type "double3" -1.6520217907773898 3.0165646825021368 0.61281050921242886 ;
	setAttr ".raf" no;
createNode polySplit -n "polySplit24";
	rename -uid "8860D3D0-4852-A110-C719-AA9BCA067D8C";
	setAttr -s 17 ".e[0:16]"  0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2
		 0.2 0.2 0.2 0.2 0.2 0.2;
	setAttr -s 17 ".d[0:16]"  -2147483634 -2147483627 -2147483628 -2147483629 -2147483630 -2147483631 
		-2147483586 -2147483591 -2147483594 -2147483597 -2147483600 -2147483603 -2147483608 -2147483605 -2147483632 -2147483633 -2147483634;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak24";
	rename -uid "DFF5EF9B-40DB-A0A9-4F9E-3CA4F7BBC50E";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0.74844724 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.74844724 0 ;
	setAttr ".tk[10]" -type "float3" 0 0.74844724 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.74844724 0 ;
	setAttr ".tk[12]" -type "float3" 0 0.74844724 0 ;
	setAttr ".tk[13]" -type "float3" 0 0.74844724 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.74844724 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.74844724 -3.3195622e-24 ;
	setAttr ".tk[17]" -type "float3" 0 0.74844724 -3.3195622e-24 ;
	setAttr ".tk[20]" -type "float3" 0 0.74844724 0 ;
	setAttr ".tk[21]" -type "float3" 0 0.74844724 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.74844724 0 ;
	setAttr ".tk[25]" -type "float3" 0 0.74844724 0 ;
	setAttr ".tk[27]" -type "float3" 0 0.74844724 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.74844724 0 ;
	setAttr ".tk[31]" -type "float3" 0 0.74844724 0 ;
	setAttr ".tk[33]" -type "float3" 0 0.74844724 0 ;
	setAttr ".tk[35]" -type "float3" 0 0.74844724 -3.3195622e-24 ;
createNode polySplit -n "polySplit25";
	rename -uid "F9137DFB-4499-ADF8-A6DC-51B29A1150C5";
	setAttr -s 17 ".e[0:16]"  0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1
		 0.1 0.1 0.1 0.1 0.1 0.1;
	setAttr -s 17 ".d[0:16]"  -2147483566 -2147483565 -2147483564 -2147483563 -2147483562 -2147483561 
		-2147483560 -2147483559 -2147483558 -2147483557 -2147483556 -2147483555 -2147483554 -2147483553 -2147483552 -2147483551 -2147483566;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "BC45D7B8-472A-B70B-3E94-8CB6DFD9BC27";
	setAttr ".ics" -type "componentList" 1 "f[48:49]";
	setAttr ".ix" -type "matrix" 0 0.39873419276474797 0 0 -4.6006802561623878 0 0 0
		 0 0 0.49836731718510879 0 -7.4670089466995089 3.8371256456096798 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.9010639 4.2161164 7.4262516e-08 ;
	setAttr ".rs" 60458;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.4068529109569292 4.1963729702487305 -0.2162333499743129 ;
	setAttr ".cbx" -type "double3" -5.3952747385510698 4.2358600285057069 0.21623349849934745 ;
	setAttr ".raf" no;
createNode polySplit -n "polySplit26";
	rename -uid "094F2AC8-42BE-9AD4-03ED-3FA5402FBEC5";
	setAttr -s 19 ".e[0:18]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 19 ".d[0:18]"  -2147483566 -2147483499 -2147483496 -2147483491 -2147483565 -2147483564 
		-2147483563 -2147483562 -2147483561 -2147483560 -2147483559 -2147483558 -2147483557 -2147483556 -2147483555 -2147483554 -2147483553 -2147483552 
		-2147483566;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak25";
	rename -uid "F5800309-4C84-A279-0489-7FA2C8DF545F";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[36]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[37]" -type "float3" 0 0 -1.0658141e-14 ;
	setAttr ".tk[38]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[53]" -type "float3" 0 0 -1.0658141e-14 ;
	setAttr ".tk[68]" -type "float3" 0.81818289 0 0.094324701 ;
	setAttr ".tk[69]" -type "float3" 0.81818289 0 3.2394574e-08 ;
	setAttr ".tk[70]" -type "float3" 0.81818289 0 0.094324693 ;
	setAttr ".tk[71]" -type "float3" 0.81818289 0 3.2394574e-08 ;
	setAttr ".tk[72]" -type "float3" 0.81818289 0 -0.094324701 ;
	setAttr ".tk[73]" -type "float3" 0.81818289 0 -0.094324693 ;
createNode polySplit -n "polySplit27";
	rename -uid "36688457-4262-EFF8-0E50-B4BD7D2CCBDB";
	setAttr -s 19 ".e[0:18]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 19 ".d[0:18]"  -2147483490 -2147483489 -2147483488 -2147483487 -2147483486 -2147483485 
		-2147483484 -2147483483 -2147483482 -2147483481 -2147483480 -2147483479 -2147483478 -2147483477 -2147483476 -2147483475 -2147483474 -2147483473 
		-2147483490;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "B4EABFC6-4260-DBA4-A49A-C993B7E107DD";
	setAttr ".sa" 6;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "E7ADBBBD-4BF8-E6ED-7A15-308639B2D013";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[7:13]" "e[41:42]" "e[46]" "e[49]" "e[52]" "e[55]" "e[58]" "e[61]" "e[63]";
	setAttr ".ix" -type "matrix" 0 0.39873419276474797 0 0 -4.6006802561623878 0 0 0
		 0 0 0.49836731718510879 0 -7.4670089466995089 3.8371256456096798 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.4;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak26";
	rename -uid "B42D0459-4C54-2187-3152-E1A8C1E46239";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk";
	setAttr ".tk[36]" -type "float3" 0 0 0.11096608 ;
	setAttr ".tk[37]" -type "float3" 0 0 3.8109846e-08 ;
	setAttr ".tk[38]" -type "float3" 0 0 -0.11096608 ;
	setAttr ".tk[52]" -type "float3" 0 0 0.11096605 ;
	setAttr ".tk[53]" -type "float3" 0 0 3.8109846e-08 ;
	setAttr ".tk[54]" -type "float3" 0 0 -0.11096605 ;
	setAttr ".tk[68]" -type "float3" -0.21039933 0.013860768 0.086842477 ;
	setAttr ".tk[69]" -type "float3" -0.30942887 0.013860768 2.9824907e-08 ;
	setAttr ".tk[70]" -type "float3" -0.21039933 -0.013860768 0.086842477 ;
	setAttr ".tk[71]" -type "float3" -0.30942887 -0.013860768 2.9824907e-08 ;
	setAttr ".tk[72]" -type "float3" -0.21039933 0.013860768 -0.086842477 ;
	setAttr ".tk[73]" -type "float3" -0.21039933 -0.013860768 -0.086842477 ;
	setAttr ".tk[74]" -type "float3" 0 0 0.11096608 ;
	setAttr ".tk[75]" -type "float3" 0.31168973 -0.0049280431 0.086842477 ;
	setAttr ".tk[76]" -type "float3" 0.21266021 -0.0049280431 0 ;
	setAttr ".tk[77]" -type "float3" 0.31168973 -0.0049280431 -0.086842477 ;
	setAttr ".tk[78]" -type "float3" 0 0 -0.11096608 ;
	setAttr ".tk[92]" -type "float3" 0 0 0.11096608 ;
	setAttr ".tk[93]" -type "float3" 0.31168973 -0.0049280431 0.086842477 ;
	setAttr ".tk[94]" -type "float3" 0.21266021 -0.0049280431 0 ;
	setAttr ".tk[95]" -type "float3" 0.31168973 -0.0049280431 -0.086842477 ;
	setAttr ".tk[96]" -type "float3" 0 0 -0.11096608 ;
createNode polyBevel3 -n "polyBevel4";
	rename -uid "F12184C0-42FA-26A0-AABA-13BAA265C989";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[7:13]" "e[41:42]" "e[46]" "e[49]" "e[52]" "e[55]" "e[58]" "e[61]" "e[63]";
	setAttr ".ix" -type "matrix" 0 0.39014535867768835 0 0 -3.5230710366106659 0 0 0
		 0 0 0.49836731718510879 0 -7.2867635036981637 2.7271599008496743 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel5";
	rename -uid "00F7E115-4DC2-DCED-E04A-CABBD1E07FCF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[7:13]" "e[41:42]" "e[46]" "e[49]" "e[52]" "e[55]" "e[58]" "e[61]" "e[63]";
	setAttr ".ix" -type "matrix" 0 0.39014535867768835 0 0 -1.1458670246701095 0 0 0
		 0 0 0.36154543221825824 0 -4.7434966926192281 2.2340934574760483 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyCylinder -n "polyCylinder3";
	rename -uid "7AFCD3F6-4D1B-7D17-61D0-03A373299FFB";
	setAttr ".sa" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySoftEdge -n "polySoftEdge12";
	rename -uid "736DB9AE-4646-938E-9C2C-92A5E8326B78";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[20:29]";
	setAttr ".ix" -type "matrix" 0 0.3205529949364061 0 0 -1.3957824290401184 0 0 0 0 0 0.3205529949364061 0
		 -16.795685892378522 3.6880358659421284 1.7763568394002505e-15 1;
	setAttr ".a" 180;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "06B64720-471D-429D-23BE-C09198A5BFE1";
	setAttr ".dc" -type "componentList" 1 "e[40]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "EFF73213-4C26-4273-ABB7-52B985C617BF";
	setAttr ".dc" -type "componentList" 1 "e[41]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "D12DB218-4A38-9FE4-58A2-1692942E9A94";
	setAttr ".dc" -type "componentList" 1 "e[42]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "2E84927F-4106-DA0A-547C-1084BE0A5BED";
	setAttr ".dc" -type "componentList" 1 "e[43]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "1B6551AB-48D0-7A3A-D710-A3BBB29E1AD9";
	setAttr ".dc" -type "componentList" 1 "e[44]";
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "64485276-42DF-CFEE-6E4F-C596CCC79101";
	setAttr ".ics" -type "componentList" 1 "f[20:24]";
	setAttr ".ix" -type "matrix" 0 0.3205529949364061 0 0 -1.3957824290401184 0 0 0 0 0 0.3205529949364061 0
		 -16.795685892378522 3.6880358659421284 1.7763568394002505e-15 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -18.191469 3.688036 -1.9106446e-08 ;
	setAttr ".rs" 47310;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -18.19146832141864 3.3674828327928275 -0.30486407957415823 ;
	setAttr ".cbx" -type "double3" -18.19146832141864 4.0085888608785343 0.30486404136126699 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "856CB67E-4AD4-750A-6F37-129E3D43D643";
	setAttr ".ics" -type "componentList" 1 "f[25:34]";
	setAttr ".ix" -type "matrix" 0 0.3205529949364061 0 0 -1.3957824290401184 0 0 0 0 0 0.3205529949364061 0
		 -16.795685892378522 3.6880358659421284 1.7763568394002505e-15 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -18.275082 3.6880357 -9.5532222e-09 ;
	setAttr ".rs" 40672;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -18.35869682713945 3.3674828710057225 -0.30486406046771081 ;
	setAttr ".cbx" -type "double3" -18.19146832141864 4.0085885551753764 0.30486404136126699 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak27";
	rename -uid "E73B3799-4AA1-D99F-A130-66BC4D5E52E4";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk[21:31]" -type "float3"  0 0.11980984 0 0 0.11980984
		 0 0 0.11980984 0 0 0.11980984 0 0 0.11980984 0 0 0.11980984 0 0 0.11980984 0 0 0.11980984
		 0 0 0.11980984 0 0 0.11980984 0 0 0.11980984 0;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "B23143F5-4659-BD8C-6953-44BA95FAD563";
	setAttr ".ics" -type "componentList" 1 "f[20:24]";
	setAttr ".ix" -type "matrix" 0 0.3205529949364061 0 0 -1.3957824290401184 0 0 0 0 0 0.3205529949364061 0
		 -16.795685892378522 3.6880358659421284 1.7763568394002505e-15 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -18.358698 3.6880357 -9.5532222e-09 ;
	setAttr ".rs" 49044;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -18.358697159919913 3.3674828710057225 -0.30486406046771081 ;
	setAttr ".cbx" -type "double3" -18.358697159919913 4.0085885551753764 0.30486404136126699 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak28";
	rename -uid "4CE25595-4AC7-9B43-463E-A586CAB12FC8";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[32:51]" -type "float3"  0.089374855 0 -0.27506784
		 -0.089375138 0 -0.27506781 -0.089375138 0 -0.27506781 0.089374855 0 -0.27506784 -0.23398656
		 0 -0.17000122 -0.23398656 0 -0.17000122 -0.28922319 0 2.5858585e-08 -0.28922319 0
		 2.5858585e-08 -0.23398656 0 0.17000128 -0.23398656 0 0.17000128 -0.089375138 0 0.27506784
		 -0.089375138 0 0.27506784 0.089374855 0 0.27506778 0.089374855 0 0.27506778 0.23398678
		 0 0.17000124 0.23398678 0 0.17000124 0.28922319 0 8.6195282e-09 0.28922319 0 8.6195282e-09
		 0.23398678 0 -0.1700013 0.23398678 0 -0.1700013;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "28853D61-413A-B5B9-A8DC-30B784AD5CAE";
	setAttr ".ics" -type "componentList" 1 "f[20:24]";
	setAttr ".ix" -type "matrix" 0 0.3205529949364061 0 0 -1.3957824290401184 0 0 0 0 0 0.3205529949364061 0
		 -16.795685892378522 3.6880358659421284 1.7763568394002505e-15 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -19.973942 3.6880357 -9.5532222e-09 ;
	setAttr ".rs" 32788;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -19.973941649007031 3.3674828710057225 -0.30486406046771081 ;
	setAttr ".cbx" -type "double3" -19.973941649007031 4.0085885551753764 0.30486404136126699 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak29";
	rename -uid "2B59653F-41AF-CFD4-3F49-F4A64E578A0C";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk[51:61]" -type "float3"  -1.4901161e-08 1.15723217
		 0 0 1.15723217 5.16096e-24 0 1.15723217 5.9604645e-08 2.9802322e-08 1.15723217 5.9604645e-08
		 0 1.15723217 3.5527137e-15 2.9802322e-08 1.15723217 -2.9802322e-08 0 1.15723217 0
		 -1.4901161e-08 1.15723217 0 2.9802322e-08 1.15723217 -2.9802322e-08 0 1.15723217
		 5.16096e-24 2.9802322e-08 1.15723217 2.9802322e-08;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "CDB0E715-4BFE-CB46-C1B2-D0BE2C5D3759";
	setAttr ".ics" -type "componentList" 1 "vtx[61:71]";
	setAttr ".ix" -type "matrix" 0 0.3205529949364061 0 0 -1.3957824290401184 0 0 0 0 0 0.3205529949364061 0
		 -16.795685892378522 3.6880358659421284 1.7763568394002505e-15 1;
	setAttr ".d" 0.21000000000000002;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak30";
	rename -uid "D799D87F-4AFF-69DA-DB62-82BB9529916B";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk[61:71]" -type "float3"  -0.27689514 0.68782145 0.85219395
		 -4.2727024e-07 0.68782145 -2.670439e-08 0.27689481 0.68782145 0.85219377 0.72492045
		 0.68782145 0.52668566 0.89605016 0.68782145 -8.0113224e-08 0.72492045 0.68782145
		 -0.52668589 0.27689481 0.68782145 -0.85219395 -0.27689514 0.68782145 -0.85219383
		 -0.72492141 0.68782145 -0.52668577 -0.89605016 0.68782145 -2.670439e-08 -0.72492141
		 0.68782145 0.52668583;
createNode polySplit -n "polySplit28";
	rename -uid "0971015E-4B70-1498-3178-6E826171B57E";
	setAttr -s 11 ".e[0:10]"  0.69999999 0.69999999 0.69999999 0.69999999
		 0.69999999 0.69999999 0.69999999 0.69999999 0.69999999 0.69999999 0.69999999;
	setAttr -s 11 ".d[0:10]"  -2147483548 -2147483531 -2147483533 -2147483535 -2147483537 -2147483539 
		-2147483541 -2147483543 -2147483545 -2147483547 -2147483548;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak31";
	rename -uid "18CE197A-43D2-9EB2-73E7-AE895D14728F";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk[51:61]" -type "float3"  0 -0.53304398 0.41704476 0
		 -0.53304398 0.41704473 0 -0.53304398 0.25774777 0 -0.53304398 -3.9205553e-08 0 -0.53304398
		 -0.25774786 0 -0.53304398 -0.41704476 0 -0.53304398 -0.41704473 0 -0.53304398 -0.25774783
		 0 -0.53304398 -1.3068524e-08 0 -0.53304398 0.25774786 0.80259061 0 0;
createNode polySplit -n "polySplit29";
	rename -uid "93B71F1B-4F1E-290F-AE7F-9FA2B8F7F438";
	setAttr -s 11 ".e[0:10]"  0.60000002 0.60000002 0.60000002 0.60000002
		 0.60000002 0.60000002 0.60000002 0.60000002 0.60000002 0.60000002 0.60000002;
	setAttr -s 11 ".d[0:10]"  -2147483548 -2147483531 -2147483533 -2147483535 -2147483537 -2147483539 
		-2147483541 -2147483543 -2147483545 -2147483547 -2147483548;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	rename -uid "4ACE671B-447C-63E8-EE01-9AA259EF075D";
	setAttr ".ics" -type "componentList" 3 "f[70]" "f[73]" "f[76:77]";
	setAttr ".ix" -type "matrix" 0 0.3205529949364061 0 0 -1.3957824290401184 0 0 0 0 0 0.3205529949364061 0
		 -16.795685892378522 3.6880358659421284 1.7763568394002505e-15 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -19.461639 3.6740003 -2.865967e-08 ;
	setAttr ".rs" 56992;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -19.672137389421227 3.4004610959769037 -0.18215882507283734 ;
	setAttr ".cbx" -type "double3" -19.251141484016028 3.9475392905432276 0.18215876775349871 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak32";
	rename -uid "8526AF93-46B8-C298-618A-D5AD9C8FC59F";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk";
	setAttr ".tk[51]" -type "float3" 0.095441923 0.31681815 0.073614024 ;
	setAttr ".tk[52]" -type "float3" 0.21275687 0.31681815 0.073613994 ;
	setAttr ".tk[53]" -type "float3" 0.30766639 0.31681815 0.045495953 ;
	setAttr ".tk[54]" -type "float3" 0.34391868 0.31681815 -2.8120333e-09 ;
	setAttr ".tk[55]" -type "float3" 0.30766639 0.31681815 -0.045495968 ;
	setAttr ".tk[56]" -type "float3" 0.21275687 0.31681815 -0.073614016 ;
	setAttr ".tk[57]" -type "float3" 0.095441923 0.31681815 -0.073613994 ;
	setAttr ".tk[58]" -type "float3" 0.00053200405 0.31681815 -0.045495953 ;
	setAttr ".tk[59]" -type "float3" -0.03572008 0.31681815 1.8015081e-09 ;
	setAttr ".tk[60]" -type "float3" 0.00053200405 0.31681815 0.045495968 ;
	setAttr ".tk[62]" -type "float3" 0.022642858 0.20245454 0.090861015 ;
	setAttr ".tk[63]" -type "float3" -0.0080047427 0.20245454 0.056155205 ;
	setAttr ".tk[64]" -type "float3" -0.019710992 0.20245454 1.2610555e-09 ;
	setAttr ".tk[65]" -type "float3" -0.0080047427 0.20245454 -0.056155175 ;
	setAttr ".tk[66]" -type "float3" 0.022642858 0.20245454 -0.090861 ;
	setAttr ".tk[67]" -type "float3" 0.060525388 0.20245454 -0.090861015 ;
	setAttr ".tk[68]" -type "float3" 0.091172747 0.20245454 -0.056155205 ;
	setAttr ".tk[69]" -type "float3" 0.10287916 0.20245454 -4.4333892e-09 ;
	setAttr ".tk[70]" -type "float3" 0.091172747 0.20245454 0.056155175 ;
	setAttr ".tk[71]" -type "float3" 0.060525388 0.20245454 0.090861 ;
	setAttr ".tk[72]" -type "float3" 0 0 0.10695823 ;
	setAttr ".tk[73]" -type "float3" 0 0 0.066103816 ;
	setAttr ".tk[74]" -type "float3" 0 0 7.566332e-10 ;
	setAttr ".tk[75]" -type "float3" 0 0 -0.066103801 ;
	setAttr ".tk[76]" -type "float3" 0 0 -0.10695819 ;
	setAttr ".tk[77]" -type "float3" 0 0 -0.10695823 ;
	setAttr ".tk[78]" -type "float3" 0 0 -0.066103816 ;
	setAttr ".tk[79]" -type "float3" 0 0 -5.9466552e-09 ;
	setAttr ".tk[80]" -type "float3" 0 0 0.066103801 ;
	setAttr ".tk[81]" -type "float3" 0 0 0.1069582 ;
createNode polySplit -n "polySplit30";
	rename -uid "CA8A5A8E-477C-DA5C-E778-4FA2DAA83A98";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483471 -2147483470 -2147483466 -2147483468 -2147483471;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak33";
	rename -uid "B5ECDC45-4DCB-6DA1-6B1D-048845CA549A";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk[82:95]" -type "float3"  0.060126096 -0.015198097 -0.64433718
		 0.59230959 -0.015198097 -0.39822268 0.14267018 0.015198171 -0.52203053 0.60198957
		 0.015198171 -0.32263324 0.59230965 -0.01519807 0.39822218 0.060125861 -0.01519807
		 0.64433753 0.60198939 0.015198156 0.32263261 0.14267008 0.015198156 0.52203077 -0.43040803
		 -0.01519807 0.39822227 -0.25113562 -0.01519807 1.3281502e-07 -0.64689797 0.015198156
		 0.32263291 -0.49217063 0.015198156 1.2131723e-07 -0.43040803 -0.01519807 -0.39822212
		 -0.64689797 0.015198156 -0.32263249;
createNode polySplit -n "polySplit31";
	rename -uid "97442F81-43F8-4F19-2765-A5A8B3BA1F75";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483479 -2147483478 -2147483474 -2147483476 -2147483479;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit32";
	rename -uid "54424AE9-4CF4-9F18-C4D5-E6A2626E3D0C";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483463 -2147483462 -2147483455 -2147483453 -2147483458 -2147483460 
		-2147483463;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "26FA37F8-486F-2AB6-42A9-90AE2B6EBC57";
	setAttr ".ics" -type "componentList" 1 "vtx[82:95]";
	setAttr ".ix" -type "matrix" 0 0.3205529949364061 0 0 -1.3957824290401184 0 0 0 0 0 0.3205529949364061 0
		 -16.795685892378522 3.6880358659421284 1.7763568394002505e-15 1;
	setAttr ".d" 0.31000000000000005;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak34";
	rename -uid "07E7134E-47CB-EC25-C0D5-6084FAC8DF5A";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk[82:95]" -type "float3"  0.49921444 0.16253664 0.29638344
		 -0.48137915 0.16253664 -0.15710346 0.34711999 -0.16253664 0.071023487 -0.49921444
		 -0.16253664 -0.29638344 -0.44407076 0.14993945 0.1449277 0.46052352 0.14993945 -0.273413
		 -0.46052352 -0.14993943 0.273413 0.32021677 -0.14993943 -0.065519169 1.8092375e-07
		 0.1577016 -0.71193045 4.0663076e-06 0.1577016 -3.9264965e-08 -4.0663076e-06 -0.1577016
		 -0.57679385 -9.0920111e-07 -0.1577016 -1.8709539e-08 1.8092375e-07 0.1577016 0.71193045
		 -4.0663076e-06 -0.1577016 0.57679355;
createNode polySplit -n "polySplit33";
	rename -uid "9C0876EB-419A-AF11-A513-62942705EDB4";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483479 -2147483478 -2147483476 -2147483477 -2147483479;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak35";
	rename -uid "EB9A6361-49C6-A4B3-8CCB-B9A13ECAACAF";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[82]" -type "float3" 0 -0.19069992 -2.220446e-16 ;
	setAttr ".tk[89]" -type "float3" 0.60782444 0.058537263 0.30945295 ;
	setAttr ".tk[90]" -type "float3" 0.061046254 0.058537263 0.056588888 ;
	setAttr ".tk[91]" -type "float3" 0.051101513 -0.17700601 -0.021073578 ;
	setAttr ".tk[92]" -type "float3" 0.52301657 -0.17700601 0.1837924 ;
createNode polySplit -n "polySplit34";
	rename -uid "63E0C90D-478E-45AA-95D6-35B11A73F047";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483437 -2147483436 -2147483435 -2147483434 -2147483437;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak36";
	rename -uid "E1D3A8D2-45CA-9AA2-3708-DE8508711D8C";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[82]" -type "float3" -0.12572455 0 -0.081576362 ;
	setAttr ".tk[89]" -type "float3" -0.33468956 0 -0.19132574 ;
	setAttr ".tk[90]" -type "float3" -0.33468956 0 -0.19132574 ;
	setAttr ".tk[91]" -type "float3" -0.33468956 0 -0.19132574 ;
	setAttr ".tk[92]" -type "float3" -0.33468956 0 -0.19132574 ;
	setAttr ".tk[99]" -type "float3" -0.15093908 0.030662045 -0.072361417 ;
	setAttr ".tk[100]" -type "float3" -0.15093908 0.030662045 -0.072361417 ;
	setAttr ".tk[101]" -type "float3" -0.15093908 0.0054541645 -0.072361417 ;
	setAttr ".tk[102]" -type "float3" -0.15093908 0.0054541645 -0.072361417 ;
createNode polySplit -n "polySplit35";
	rename -uid "BB776BAB-4E0A-90FB-B061-5EA8B6169B9E";
	setAttr -s 7 ".e[0:6]"  0.40000001 0.40000001 0.40000001 0.40000001
		 0.40000001 0.40000001 0.40000001;
	setAttr -s 7 ".d[0:6]"  -2147483471 -2147483470 -2147483467 -2147483466 -2147483468 -2147483469 
		-2147483471;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak37";
	rename -uid "0D3ACD9B-48EB-82B6-ADEB-AEB7D872B94A";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[84]" -type "float3" 0 -0.20389482 3.9704669e-23 ;
	setAttr ".tk[93]" -type "float3" -0.072015159 0.035755318 -0.34870866 ;
	setAttr ".tk[94]" -type "float3" 0.01762419 0.035755318 -2.1880075e-08 ;
	setAttr ".tk[95]" -type "float3" -0.072015159 0.035755318 0.34870866 ;
	setAttr ".tk[96]" -type "float3" -0.18026362 -0.16499627 0.28251764 ;
	setAttr ".tk[97]" -type "float3" -0.10289732 -0.16499627 -1.181188e-08 ;
	setAttr ".tk[98]" -type "float3" -0.18026362 -0.16499627 -0.28251779 ;
	setAttr ".tk[103]" -type "float3" 0 0.0098454561 1.110223e-16 ;
	setAttr ".tk[104]" -type "float3" 0 0.0098454561 1.110223e-16 ;
createNode polySplit -n "polySplit36";
	rename -uid "75C9F643-48F2-5E00-E3E6-A0A15F1DDE6A";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483421 -2147483420 -2147483419 -2147483418 -2147483417 -2147483416 
		-2147483421;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyMirror -n "polyMirror4";
	rename -uid "D54859A7-481E-0880-8617-8CB7F3D1F33D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0 0.3205529949364061 0 0 -1.3957824290401184 0 0 0 0 0 0.3205529949364061 0
		 -16.795685892378522 3.6880358659421284 1.7763568394002505e-15 1;
	setAttr ".ws" yes;
	setAttr ".a" 2;
	setAttr ".ad" 0;
	setAttr ".mtt" 1;
	setAttr ".mt" 1.5397450923919678;
	setAttr ".cm" yes;
	setAttr ".fnf" 71;
	setAttr ".lnf" 141;
createNode polyTweak -n "polyTweak38";
	rename -uid "E2A69569-4FA2-ACB6-C25A-6F90A318810E";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[107:118]" -type "float3"  0 -0.0020248231 0 0 0.018810323
		 0 0 0.018810323 0 0 0.018515235 0 0 0.018515235 0 0 0.018515235 0 0 0.019190945 0
		 0 0.019190945 0 0 0.019190945 0 0 0.019190945 0 0 0.019190945 0 0 0.019190945 0;
createNode polySoftEdge -n "polySoftEdge13";
	rename -uid "814EBC7E-410D-281F-D718-08A2F62D2DBC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[55:56]" "e[58]" "e[60]" "e[62:63]" "e[66:71]" "e[74]" "e[76]" "e[82:87]" "e[191]" "e[193:194]" "e[197]" "e[201:202]" "e[204]" "e[207]" "e[213]" "e[216]" "e[218]" "e[220:221]";
	setAttr ".ix" -type "matrix" 0 0.3205529949364061 0 0 -1.3957824290401184 0 0 0 0 0 0.3205529949364061 0
		 -16.795685892378522 3.6880358659421284 1.7763568394002505e-15 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak39";
	rename -uid "E26A4919-4A63-498C-F945-DFA41905A2C4";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[33]" -type "float3" 0 0 0.060165104 ;
	setAttr ".tk[34]" -type "float3" 0 0 8.7880139e-16 ;
	setAttr ".tk[41]" -type "float3" 0 0 1.1717353e-15 ;
	setAttr ".tk[42]" -type "float3" 0 0 0.074261166 ;
	setAttr ".tk[56]" -type "float3" 0 0 1.7576028e-15 ;
	setAttr ".tk[57]" -type "float3" 0 0 0.04262938 ;
	setAttr ".tk[58]" -type "float3" 0 0 0.034537584 ;
	setAttr ".tk[59]" -type "float3" 0 0 1.1717353e-15 ;
	setAttr ".tk[68]" -type "float3" 0 0 1.464669e-15 ;
	setAttr ".tk[69]" -type "float3" 0 0 0.061608456 ;
	setAttr ".tk[70]" -type "float3" 0 0 0.049914103 ;
	setAttr ".tk[71]" -type "float3" 0 0 1.1717353e-15 ;
	setAttr ".tk[72]" -type "float3" 0 0 1.1717353e-15 ;
	setAttr ".tk[73]" -type "float3" 0 0 0.05211892 ;
	setAttr ".tk[74]" -type "float3" 0 0 0.042225845 ;
	setAttr ".tk[75]" -type "float3" 0 0 1.1717353e-15 ;
	setAttr ".tk[98]" -type "float3" 0 0 -0.060165104 ;
	setAttr ".tk[102]" -type "float3" 0 0 -0.074261166 ;
	setAttr ".tk[113]" -type "float3" 0 0 -0.04262938 ;
	setAttr ".tk[114]" -type "float3" 0 0 -0.034537584 ;
	setAttr ".tk[123]" -type "float3" 0 0 -0.061608456 ;
	setAttr ".tk[124]" -type "float3" 0 0 -0.049914103 ;
	setAttr ".tk[125]" -type "float3" 0 0 -0.05211892 ;
	setAttr ".tk[126]" -type "float3" 0 0 -0.042225845 ;
createNode polySoftEdge -n "polySoftEdge14";
	rename -uid "9A1FEC1C-4EB4-9E3D-D6CD-F2B0704F182C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[57]" "e[59]" "e[64]" "e[200]" "e[203]" "e[206]";
	setAttr ".ix" -type "matrix" 0 0.3205529949364061 0 0 -1.3957824290401184 0 0 0 0 0 0.3205529949364061 0
		 -16.795685892378522 3.6880358659421284 1.7763568394002505e-15 1;
	setAttr ".a" 180;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "3BE8E0C2-4A0E-46FB-51D5-1BA376FF0EDC";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n"
		+ "            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1117\n            -height 717\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n"
		+ "            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showRowButtons 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n"
		+ "                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            cameraSequencer -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -showThumbnail 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -showNamespace 1\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"motionMakerEditorPanel\" (localizedPanelLabel(\"MotionMaker Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"MotionMaker Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.png\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1117\\n    -height 717\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mayaUsdProxyShapeBaseDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1117\\n    -height 717\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mayaUsdProxyShapeBaseDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "2EBC2190-468F-1729-4389-4F8F9416ABFA";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySoftEdge -n "polySoftEdge15";
	rename -uid "294C53AF-410B-870C-6B12-4899C9B0E114";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[67]" "e[70]" "e[201]";
	setAttr ".ix" -type "matrix" 0 0.3205529949364061 0 0 -1.3957824290401184 0 0 0 0 0 0.3205529949364061 0
		 -16.795685892378522 3.6880358659421284 1.7763568394002505e-15 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak40";
	rename -uid "042402C1-4D2A-61CB-F371-D9BCE2C1D9DB";
	setAttr ".uopa" yes;
	setAttr -s 65 ".tk";
	setAttr ".tk[31]" -type "float3" -0.11935784 0.17278066 -0.11831266 ;
	setAttr ".tk[32]" -type "float3" 0 0 -0.22868378 ;
	setAttr ".tk[33]" -type "float3" 0.317857 0.1715415 -0.38451084 ;
	setAttr ".tk[34]" -type "float3" 0.076175146 0.1715415 3.5233263e-09 ;
	setAttr ".tk[35]" -type "float3" 0.073522821 0 -1.5777218e-30 ;
	setAttr ".tk[36]" -type "float3" 0.24877694 0.17278066 0.18305002 ;
	setAttr ".tk[38]" -type "float3" -0.1855152 -0.10133216 -0.30315995 ;
	setAttr ".tk[39]" -type "float3" 0.24102199 -0.10133216 0.068806231 ;
	setAttr ".tk[40]" -type "float3" 0.073522821 0 -1.5777218e-30 ;
	setAttr ".tk[41]" -type "float3" -0.10768868 -0.10256796 3.5233267e-09 ;
	setAttr ".tk[42]" -type "float3" 0.083318017 -0.10256796 -0.4745979 ;
	setAttr ".tk[43]" -type "float3" 0 0 -0.28226188 ;
	setAttr ".tk[50]" -type "float3" 0.21888706 -0.13758527 -1.0276088 ;
	setAttr ".tk[51]" -type "float3" -0.69256389 -0.15080932 3.5233259e-09 ;
	setAttr ".tk[52]" -type "float3" 0.090020925 -0.055034347 -0.65282494 ;
	setAttr ".tk[53]" -type "float3" 0.26147687 -0.055034347 -0.50330085 ;
	setAttr ".tk[54]" -type "float3" 0.26459372 0.01881833 -0.45738006 ;
	setAttr ".tk[55]" -type "float3" 0.11661568 0.01881833 -0.57851613 ;
	setAttr ".tk[56]" -type "float3" -0.4689056 -0.076978534 3.5233254e-09 ;
	setAttr ".tk[57]" -type "float3" -0.4689056 -0.076978534 -0.27244109 ;
	setAttr ".tk[58]" -type "float3" -0.46890417 0.028498981 -0.22072716 ;
	setAttr ".tk[59]" -type "float3" -0.46890512 0.028498981 3.5233263e-09 ;
	setAttr ".tk[60]" -type "float3" -0.03283602 -0.050322704 -0.43805742 ;
	setAttr ".tk[61]" -type "float3" 0.26615909 -0.050322704 -0.17731759 ;
	setAttr ".tk[62]" -type "float3" 0.271597 0.10074846 -0.0972334 ;
	setAttr ".tk[63]" -type "float3" 0.013538644 0.10074846 -0.30848622 ;
	setAttr ".tk[64]" -type "float3" 0.028591424 -0.043727502 -0.54544061 ;
	setAttr ".tk[65]" -type "float3" 0.26381725 -0.043727502 -0.34031272 ;
	setAttr ".tk[66]" -type "float3" 0.26809558 0.059791889 -0.27731022 ;
	setAttr ".tk[67]" -type "float3" 0.065077111 0.059791889 -0.44350395 ;
	setAttr ".tk[68]" -type "float3" -0.36774746 -0.075238787 3.5233263e-09 ;
	setAttr ".tk[69]" -type "float3" -0.19973592 -0.075238787 -0.3937352 ;
	setAttr ".tk[70]" -type "float3" 0.0031478675 0.13113947 -0.31899625 ;
	setAttr ".tk[71]" -type "float3" -0.1418602 0.13113947 3.5233259e-09 ;
	setAttr ".tk[72]" -type "float3" -0.41833147 -0.067220517 3.5233267e-09 ;
	setAttr ".tk[73]" -type "float3" -0.33432558 -0.067220517 -0.33308679 ;
	setAttr ".tk[74]" -type "float3" -0.23287545 0.088852763 -0.26986247 ;
	setAttr ".tk[75]" -type "float3" -0.30538169 0.088852763 3.5233259e-09 ;
	setAttr ".tk[96]" -type "float3" -0.11935783 0.17278066 0.11831266 ;
	setAttr ".tk[97]" -type "float3" 0 0 0.22868378 ;
	setAttr ".tk[98]" -type "float3" 0.317857 0.1715415 0.38451084 ;
	setAttr ".tk[99]" -type "float3" 0.24877694 0.17278066 -0.18305002 ;
	setAttr ".tk[100]" -type "float3" -0.1855152 -0.10133216 0.30315942 ;
	setAttr ".tk[101]" -type "float3" 0.24102199 -0.10133216 -0.068806231 ;
	setAttr ".tk[102]" -type "float3" 0.083318017 -0.10256796 0.4745979 ;
	setAttr ".tk[103]" -type "float3" 0 0 0.28226188 ;
	setAttr ".tk[108]" -type "float3" 0.21888706 -0.13758527 1.0276088 ;
	setAttr ".tk[109]" -type "float3" 0.090020925 -0.055034347 0.65282494 ;
	setAttr ".tk[110]" -type "float3" 0.26147687 -0.055034347 0.50330085 ;
	setAttr ".tk[111]" -type "float3" 0.26459372 0.01881833 0.45738006 ;
	setAttr ".tk[112]" -type "float3" 0.11661568 0.01881833 0.57851613 ;
	setAttr ".tk[113]" -type "float3" -0.4689056 -0.076978534 0.27244109 ;
	setAttr ".tk[114]" -type "float3" -0.46890417 0.028498981 0.22072716 ;
	setAttr ".tk[115]" -type "float3" -0.032836005 -0.050322704 0.43805742 ;
	setAttr ".tk[116]" -type "float3" 0.26615909 -0.050322704 0.17731759 ;
	setAttr ".tk[117]" -type "float3" 0.271597 0.10074846 0.0972334 ;
	setAttr ".tk[118]" -type "float3" 0.013538644 0.10074846 0.30848622 ;
	setAttr ".tk[119]" -type "float3" 0.028591424 -0.043727502 0.54544061 ;
	setAttr ".tk[120]" -type "float3" 0.26381725 -0.043727502 0.34031272 ;
	setAttr ".tk[121]" -type "float3" 0.26809558 0.059791889 0.27731022 ;
	setAttr ".tk[122]" -type "float3" 0.065077111 0.059791889 0.44350395 ;
	setAttr ".tk[123]" -type "float3" -0.19973592 -0.075238787 0.3937352 ;
	setAttr ".tk[124]" -type "float3" 0.0031478675 0.13113947 0.31899625 ;
	setAttr ".tk[125]" -type "float3" -0.33432558 -0.067220517 0.33308679 ;
	setAttr ".tk[126]" -type "float3" -0.23287545 0.088852763 0.26986247 ;
createNode polySoftEdge -n "polySoftEdge16";
	rename -uid "F334CACC-482D-E47C-37D9-0993324ED7E2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[74]" "e[76]" "e[84]" "e[87]" "e[213]" "e[221]";
	setAttr ".ix" -type "matrix" 0 0.3205529949364061 0 0 -1.3957824290401184 0 0 0 0 0 0.3205529949364061 0
		 -16.795685892378522 3.6880358659421284 1.7763568394002505e-15 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak41";
	rename -uid "F5B6F405-4242-9C16-85D8-A296CCDD0D1E";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[33]" -type "float3" -0.21386586 0 0 ;
	setAttr ".tk[34]" -type "float3" -0.11155734 0 0 ;
	setAttr ".tk[41]" -type "float3" -0.0018955901 0 0 ;
	setAttr ".tk[42]" -type "float3" -0.097460456 0 0 ;
	setAttr ".tk[51]" -type "float3" -0.051905084 0 0 ;
	setAttr ".tk[56]" -type "float3" 0.033758473 0 0 ;
	setAttr ".tk[57]" -type "float3" 0.033758473 0 0 ;
	setAttr ".tk[58]" -type "float3" 0.033759844 0 0 ;
	setAttr ".tk[59]" -type "float3" 0.033759434 0 0 ;
	setAttr ".tk[68]" -type "float3" 0.076365441 0 0 ;
	setAttr ".tk[69]" -type "float3" 0.0052425466 0 0 ;
	setAttr ".tk[70]" -type "float3" -0.080643244 0 0 ;
	setAttr ".tk[71]" -type "float3" -0.01925822 0 0 ;
	setAttr ".tk[72]" -type "float3" 0.097778007 0 0 ;
	setAttr ".tk[73]" -type "float3" 0.062216513 0 0 ;
	setAttr ".tk[74]" -type "float3" 0.019271307 0 0 ;
	setAttr ".tk[75]" -type "float3" 0.049964264 0 0 ;
	setAttr ".tk[98]" -type "float3" -0.21386586 0 0 ;
	setAttr ".tk[102]" -type "float3" -0.097460456 0 0 ;
	setAttr ".tk[113]" -type "float3" 0.033758473 0 0 ;
	setAttr ".tk[114]" -type "float3" 0.033759844 0 0 ;
	setAttr ".tk[123]" -type "float3" 0.0052425466 0 0 ;
	setAttr ".tk[124]" -type "float3" -0.080643244 0 0 ;
	setAttr ".tk[125]" -type "float3" 0.062216513 0 0 ;
	setAttr ".tk[126]" -type "float3" 0.019271307 0 0 ;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "2B51375A-49CD-87DE-642E-31A7CA997510";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 0.094412423909159715 0 0 0 0 0 0.56853894773965818 0
		 0 -0.094412423909159715 0 0 -5.1585952581567431 1.9043091120006044 0 1;
	setAttr ".s" -type "double3" 8.0434384645719721 8.0434384645719721 8.0434384645719721 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "7998BBC9-49F1-D46A-2014-25ACF9B92A06";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 0.094412423909159715 0 0 0 0 0 0.56853894773965818 0
		 0 -0.094412423909159715 0 0 -9.7735535614063593 2.7029788099158814 0 1;
	setAttr ".s" -type "double3" 8.0434384645719721 8.0434384645719721 8.0434384645719721 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj3";
	rename -uid "4725A9F7-484B-1753-20D6-04BB0B3F865D";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 0.094412423909159715 0 0 0 0 0 0.56853894773965818 0
		 0 -0.094412423909159715 0 0 -9.7735535614063593 3.6888689952256803 0 1;
	setAttr ".s" -type "double3" 8.0434384645719721 8.0434384645719721 8.0434384645719721 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj4";
	rename -uid "F990E779-45FD-7960-DBCD-EE9CB19F144B";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 0.094412423909159715 0 0 0 0 0 0.56853894773965818 0
		 0 -0.094412423909159715 0 0 -5.1585952581567431 2.7029788099158814 0 1;
	setAttr ".s" -type "double3" 8.0434384645719721 8.0434384645719721 8.0434384645719721 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj5";
	rename -uid "E58D86EA-426A-6317-8EEE-23894520BABC";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 0.094412423909159715 0 0 0 0 0 0.56853894773965818 0
		 0 -0.094412423909159715 0 0 -5.1585952581567431 3.6888689952256803 0 1;
	setAttr ".s" -type "double3" 8.0434384645719721 8.0434384645719721 8.0434384645719721 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj6";
	rename -uid "40B7168D-4431-8C38-A79B-31A5A9AA685B";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 0.094412423909159715 0 0 0 0 0 0.56853894773965818 0
		 0 -0.094412423909159715 0 0 -7.01754405219119 3.6888689952256803 0 1;
	setAttr ".s" -type "double3" 8.0434384645719721 8.0434384645719721 8.0434384645719721 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj7";
	rename -uid "A8651F64-4D57-0BEA-E90D-95A3A141484B";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 0.094412423909159715 0 0 0 0 0 0.56853894773965818 0
		 0 -0.094412423909159715 0 0 -7.01754405219119 2.7029788099158814 0 1;
	setAttr ".s" -type "double3" 8.0434384645719721 8.0434384645719721 8.0434384645719721 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj8";
	rename -uid "97D4BD04-429C-0CA6-C07C-75B15FE28294";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 0.094412423909159715 0 0 0 0 0 0.65808236874006532 0
		 0 -0.094412423909159715 0 0 -1.918939944652708 2.7091177973893483 0 1;
	setAttr ".s" -type "double3" 8.0434384645719721 8.0434384645719721 8.0434384645719721 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj9";
	rename -uid "0F99CF19-4066-8B30-4BF8-A581EFF56E88";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 0.094412423909159715 0 0 0 0 0 0.65808236874006532 0
		 0 -0.094412423909159715 0 0 -2.831991952176319 3.237119891437604 0 1;
	setAttr ".s" -type "double3" 8.0434384645719721 8.0434384645719721 8.0434384645719721 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj10";
	rename -uid "AFDB1D1D-4245-6988-0802-2CA71C57EBD1";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 0.094412423909159715 0 0 0 0 0 0.65808236874006532 0
		 0 -0.094412423909159715 0 0 -4.1266681004387618 3.237119891437604 0 1;
	setAttr ".s" -type "double3" 8.0434384645719721 8.0434384645719721 8.0434384645719721 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj11";
	rename -uid "DB7AA9B5-4741-4A8C-533F-4DBA68EF37C5";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:675]";
	setAttr ".ix" -type "matrix" 0.34208175069755825 1.8773289025675277 0 0 -1.8773289025675277 0.34208175069755825 0 0
		 0 0 1.9082410048460086 0 4.2671977155727561 0.97119681901588706 0 1;
	setAttr ".s" -type "double3" 9.2668143072524529 9.2668143072524529 9.2668143072524529 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak42";
	rename -uid "35FEFD87-4C26-7FF7-4A11-8CBC4AAB8A65";
	setAttr ".uopa" yes;
	setAttr -s 75 ".tk[601:675]" -type "float3"  -0.013975039 -0.002546493
		 0.046521004 -0.013975039 -0.002546493 0.041041497 -0.013975039 -0.002546493 0.041662078
		 -0.013975039 -0.002546493 0.046521004 -0.013975039 -0.002546493 0.027630964 -0.013975039
		 -0.002546493 0.027143013 -0.013975039 -0.002546493 0.046521004 -0.013975039 -0.002546493
		 0.046521004 -0.013975039 -0.002546493 0.046521004 -0.013975039 -0.002546493 0.046521004
		 -0.013975039 -0.002546493 0.046521004 -0.013975039 -0.002546493 0.046521004 -0.013975039
		 -0.002546493 0.027469298 -0.013975039 -0.002546493 0.040940907 -0.013975039 -0.002546493
		 0.040808056 -0.013975039 -0.002546493 0.027012959 -0.013975039 -0.002546493 0.046521004
		 -0.013975039 -0.002546493 0.046521004 -0.013975039 -0.002546493 0.041884281 -0.013975039
		 -0.002546493 0.041011851 -0.013975039 -0.002546493 0.027143013 -0.013975039 -0.002546493
		 0.027539913 -0.013975039 -0.002546493 0.040952843 -0.013975039 -0.002546493 0.040940337
		 -0.013975039 -0.002546493 0.027503634 -0.013975039 -0.002546493 0.027469298 -0.013975039
		 -0.002546493 3.1683455e-19 -0.013975039 -0.002546493 2.6627032e-19 -0.013975039 -0.002546493
		 -1.3466511e-19 -0.013975039 -0.002546493 -6.2066789e-19 -0.013975039 -0.002546493
		 6.6454176e-19 -0.013975039 -0.002546493 -1.4698131e-18 -0.013975039 -0.002546493
		 0.026910681 -0.013975039 -0.002546493 0.03965804 -0.013975039 -0.002546493 0.027593361
		 -0.013975039 -0.002546493 0.040883519 -0.013975039 -0.002546493 0.038361341 -0.013975039
		 -0.002546493 0.027223604 -0.013975039 -0.002546493 -1.0406675e-18 -0.013975039 -0.002546493
		 7.981109e-19 -0.013975039 -0.002546493 7.317462e-19 -0.013975039 -0.002546493 5.7716656e-20
		 -0.013975039 -0.002546493 -1.0976754e-18 -0.013975039 -0.002546493 -0.046521004 -0.013975039
		 -0.002546493 -0.046521004 -0.013975039 -0.002546493 -0.041662078 -0.013975039 -0.002546493
		 -0.041041497 -0.013975039 -0.002546493 -0.027143013 -0.013975039 -0.002546493 -0.027630964
		 -0.013975039 -0.002546493 -0.046521004 -0.013975039 -0.002546493 -0.046521004 -0.013975039
		 -0.002546493 -0.046521004 -0.013975039 -0.002546493 -0.046521004 -0.013975039 -0.002546493
		 -0.046521004 -0.013975039 -0.002546493 -0.046521004 -0.013975039 -0.002546493 -0.027012959
		 -0.013975039 -0.002546493 -0.027469298 -0.013975039 -0.002546493 -0.040808056 -0.013975039
		 -0.002546493 -0.040940907 -0.013975039 -0.002546493 -0.046521004 -0.013975039 -0.002546493
		 -0.046521004 -0.013975039 -0.002546493 -0.041011851 -0.013975039 -0.002546493 -0.041884281
		 -0.013975039 -0.002546493 -0.027539913 -0.013975039 -0.002546493 -0.027143013 -0.013975039
		 -0.002546493 -0.040940337 -0.013975039 -0.002546493 -0.040952843 -0.013975039 -0.002546493
		 -0.027469298 -0.013975039 -0.002546493 -0.027503634 -0.013975039 -0.002546493 -0.03965804
		 -0.013975039 -0.002546493 -0.026910681 -0.013975039 -0.002546493 -0.040883519 -0.013975039
		 -0.002546493 -0.027593361 -0.013975039 -0.002546493 -0.038361341 -0.013975039 -0.002546493
		 -0.027223604;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "7C1522D2-4E1E-0CA2-3235-F09DD898F21A";
	setAttr ".uopa" yes;
	setAttr -s 1076 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.0020839307 0.00020712614 0.0022867676
		 -0.0016004741 0.0011949018 -0.00060236454 0.00093885139 0.00116238 0.0022019465 -0.0013417453
		 0.001793368 -9.6902251e-05 0 -0.0016820431 0 -0.00049260259 0.00091342255 -0.00040984154
		 0.00038576126 0.00096184015 -7.4505806e-09 -0.0015828758 0.0010871248 -0.00053603947
		 0.0018793028 -0.00084863603 -0.002286762 -0.0016004741 -0.001194939 -0.00060239434
		 0 -0.00030577183 0.00079169869 -0.00035580993 0.00015670434 0.00087511539 -0.0022018999
		 -0.0013417304 0 -0.0011778921 0.00058329408 0.0014241692 0.0013153814 0.001591485
		 -0.0020839423 0.00020714104 -0.00093881786 0.0011623502 -0.00091345608 -0.00040987134
		 7.4505806e-09 -0.00027552247 0.00015668571 -0.00028866529 0.00071984529 0.00058215857
		 -0.0018793046 -0.00084862113 -0.0017934293 -9.6902251e-05 0 0.0013995469 0.0010161716
		 0.00076833088 0.00048206002 0.00055193109 -0.00038571656 0.00096186996 -0.0007917285
		 -0.00035586953 -1.4901161e-08 -0.00028470159 0.00017332286 -0.00023955107 0.00072896853
		 0.00058501959 -0.0013153553 0.0015914924 -0.0010871291 -0.00053603947 7.4505806e-09
		 0.00049107731 -0.00015674531 0.00087508559 -0.0001565963 -0.0002886951 0 -0.00027292967
		 0.00010079145 -0.00028213859 0.00014454126 -0.00028428435 0.00018277019 -0.00024756789
		 0.00076877698 0.00061091781 -0.00058323145 0.0014241822 -0.0010161698 0.00076833158
		 -0.00071984529 0.00058209896 -0.0001007989 -0.00028216839 0.00016190857 -0.00028827786
		 0.00015279651 -0.00027531385 0.00077697635 0.00061649084 -0.00048203766 0.00055193063
		 -0.00072896481 0.00058493018 -0.00017346442 -0.00023958087 -0.00014454126 -0.00028434396
		 0.00012023002 -0.00028666854 0.00011255592 -2.3961067e-05 0.00082906708 0.00068238378
		 -0.00076875091 0.0006107986 -0.0001828149 -0.00024756789 -0.00016189367 -0.00028833747
		 0 -0.00028923154 -7.4505806e-09 -0.00026470423 -1.4901161e-08 -3.8743019e-05 0.00014093518
		 1.6927719e-05 0.00083716586 0.00069352984 -0.00077693164 0.00061637163 -0.0001526922
		 -0.00027540326 -0.00012017787 -0.00028666854 -0.00011241436 -2.3931265e-05 7.4505806e-09
		 -9.2685223e-06 7.4356794e-05 -1.3381243e-05 0.00011749566 -9.059906e-06 0.00015670806
		 2.8848648e-05 0.00090407953 0.00074443221 -0.000829041 0.00068214536 -7.4408948e-05
		 -1.3440847e-05 0.00012668967 -1.2516975e-06 0.00012659281 -9.5367432e-06 0.00092152506
		 0.00075358152 -0.00083711743 0.00069326162 -0.000141114 1.6778708e-05 -0.0001174435
		 -9.1195107e-06 8.5309148e-05 -5.9306622e-06 0.00019577891 -0.00051891804 0.0013206862
		 0.00062179565 -0.00090411305 0.00074398518 -0.00015541911 2.8848648e-05 -0.00012687594
		 -1.3113022e-06 -1.4901161e-08 -1.3828278e-05 2.3841858e-07 -2.5272369e-05 -6.1839819e-07
		 -0.00052791834 0.00022678822 -0.00050193071 0.0013573281 0.00060814619 -0.00092157722
		 0.00075310469 -0.00012788922 -9.6261501e-06 -8.5242093e-05 -5.9306622e-06 -0.00019239634
		 -0.0005197525 7.4505806e-08 -0.00055414438 0.00013285875 -0.00055885315 0.00026781857
		 -0.0005415082 0.0004941076 -0.00054597855 0.0011186972 0.00077080727 -0.0013186336
		 0.00062161684 -0.00013305247 -0.00055873394 0.00040329993 -0.00059551001 0.00073257834
		 -0.00056636333 0.0018309429 0.00064116716 -0.0013603866 0.00060987473 -0.00023017079
		 -0.00050091743 -0.00026769936 -0.0005415082 0.00048710406 -0.00054162741 0.00087485462
		 -0.00052028894 0.0019359738 0.00058370829 -0.0011172742 0.00077062845 -0.00049360096
		 -0.00054609776 -0.00040335953 -0.0005953908 0.0003958717 -0.00060600042 0.0031713471
		 0.00030648708 0.002513431 -0.00084960461 -0.0018312037 0.00064176321 -0.0007327795
		 -0.00056618452 -0.00048713386 -0.00054144859 7.4505806e-09 -0.00076830387 7.4505806e-09
		 -0.00085014105 -7.4505806e-09 -0.001947999 0.0054370761 0.0017625093 0.0092820078
		 0.0010129809 -0.0019358397 0.00058406591 -0.00087466091 -0.00052028894 -0.00039581954
		 -0.00060594082 -0.0031713545 0.0003066659 7.4505806e-09 -7.0095062e-05 -0.0025134683
		 -0.00084924698 -0.0054370761 0.0017627478 -0.0092819929 0.0010132194 -0.0005710125
		 -0.00057882071 0.0002104044 0.00016248226 0.0010253787 0.00048333406 9.3519688e-05
		 -0.00020110607 -0.00063061714 -0.00045496225 0.0001629591 -2.9504299e-05 0.00010496378
		 3.2782555e-06 0.0012230873 0.00013184547 0 -0.0001347661 0 -0.00041675568 -1.1920929e-07
		 -0.00035309792 -0.00060135126 -0.0002900362 0.00031065941 -0.00025939941 0 -0.00013571978
		 0.00082600117 -1.9490719e-05 -0.00015890598 0.0001989007 -9.3519688e-05 -0.00020110607
		 0.00057095289 -0.00057888031 0.00063049793 -0.00045502186 1.1920929e-07 -0.00023770332
		 -0.0009393692 0.00089901686 -0.00016087294 0.00061666965 -0.00010490417 3.2782555e-06
		 0 -0.00010287762 -0.00035566092 -9.6797943e-05 -0.00087422132 3.9696693e-05 -0.0010254383
		 0.00048333406 -0.00021034479 0.00016248226 -0.0001630187 -2.9563904e-05 0.00060123205
		 -0.0002900362 0 0.00090610981 -0.00067347288 -2.3245811e-06 -4.5239925e-05 -0.00025266409
		 0.00015884638 0.0001989007 -0.0012231469 0.00013190508 0 -0.00024104118 -0.00056546926
		 -6.2227249e-05 -0.0009432435 -1.1622906e-05 -0.0003105998 -0.00025939941 0.0009393096
		 0.00089907646 0 -9.393692e-05 0.00087416172 3.9815903e-05 -0.00082600117 -1.9490719e-05
		 0 -0.00025439262 -0.0018423796 -0.00029826164 -0.0012363791 -0.0004825592 0.00016087294
		 0.00061678886 0.00067335367 -2.2351742e-06 0.00035566092 -9.6797943e-05 0.00094330311
		 -1.180172e-05 0 -0.00034224987 -0.00014144182 0.0012123585 -0.00061005354 -6.0081482e-05
		 4.5180321e-05 -0.00025245547 0.00056546926 -6.2286854e-05 0.0012363195 -0.00048261881
		 0 0.00011193752 0.0018423796 -0.00029838085 0.00060987473 -6.0141087e-05 0.00014144182
		 0.0012122393 -0.0025904775 0.0029264688 -0.0018969774 0.0033204556 5.1796436e-05
		 -0.0023162961 -0.001034379 -0.003546834 -0.0047220588 0.00533849 -0.0056779981 0.0017903447
		 -0.00021094084 -0.001462698 0.00032550097 -0.00069743395 0 -0.003354609 0 0.0034333467
		 5.9604645e-08 0.0058500171 -0.0060105324 0.0062580109 -0.0086101294 0.0012146235
		 0 -0.0010800362 0.0010343194 -0.003547132 0.0025904775 0.00292629 0.0047221184 0.0053387284
		 0 0.0063747168 -0.0048481822 0.00025260448 -0.0067806244 -0.0035446286 0.00021100044
		 -0.0014628172 -5.1736832e-05 -0.0023161769 0.0018970966 0.0033205152 0.0056780577
		 0.0017905235 0.006010592 0.0062580705 0 -0.00050699711 -0.0032715201 -0.00084155798
		 -0.0032167435 -0.0023103952 -0.00032544136 -0.00069761276 0.008610189 0.0012146831
		 0.0048482418 0.00025260448 -1.1920929e-07 -0.0016975999 -0.0021952987 -0.00062906742
		 -0.0014256239 -0.001516223 0.0067805648 -0.0035446286 0.0032715201 -0.00084167719
		 1.4305115e-06 -0.0012788773 -0.0020818114 -0.00063461065 -0.0012388825 -0.0015243292
		 0.0032168031 -0.0023103952 0.0021958947 -0.00062835217 -1.3709068e-06 -0.0012441278
		 -0.001973331 -0.00057464838 -0.001087606 -0.0015188456 0.0014255643 -0.0015163422
		 0.0020807981 -0.00063574314 -5.9604645e-08 -0.0011311769 -0.00081914663 0.00054889917
		 0.00027960539 -0.00055462122 0.0012388825 -0.0015241504;
	setAttr ".uvtk[250:499]" 0.0019740462 -0.00057423115 2.1457672e-06 0.0002874136
		 -0.00076591969 0.00056427717 0.00034153461 -0.00055879354 0.0010875463 -0.0015189052
		 0.00081831217 0.00054872036 -2.1457672e-06 0.00030529499 -0.00048589706 0.00054359436
		 0.0006492734 -0.00057220459 -0.00027954578 -0.00055462122 0.00076651573 0.00056433678
		 5.364418e-07 0.00028085709 -0.00042420626 0.00051784515 0.00072085857 -0.0005710721
		 -0.00034153461 -0.00055885315 0.00048583746 0.00054377317 -3.5762787e-07 0.00024986267
		 0.00027412176 -0.00012490153 0.0017212629 -0.0010753572 -0.0006492734 -0.00057220459
		 0.00042438507 0.00051778555 5.9604645e-08 -0.00046393275 0.00038862228 -0.00025480986
		 0.0020486116 -0.0011603832 -0.00072085857 -0.0005710125 -0.00027418137 -0.00012499094
		 -5.9604645e-08 -0.00059628487 -0.0017212629 -0.0010752976 -0.00038856268 -0.00025463104
		 -0.0020486116 -0.0011603236 0.0030295253 0.0015149117 0.0034900904 0.0036990047 0.0033447146
		 -0.0035423636 0.0024735332 -0.0042614341 0.0051707029 0.005476892 0.0071027279 0.00059700012
		 1.7881393e-07 0.0042380691 -2.3841858e-07 -0.0039024949 0.0054059029 -0.0051110387
		 0.0035052299 -0.0035378337 -1.1920929e-07 0.0061630011 0.0088011622 -0.00081950426
		 0.0062318444 0.005191505 -0.003490448 0.0036990047 -0.003344357 -0.0035424829 5.9604645e-08
		 -0.006352067 -0.0051708221 0.005476892 5.9604645e-08 0.0058582425 0.0075840354 -0.0029313564
		 0.0070958138 0.0021756887 -0.0030294657 0.0015149713 -0.002473712 -0.0042614937 -0.0054058433
		 -0.0051112175 -5.9604645e-07 -0.0013451576 0.0083667636 -0.0011510253 -0.0062319636
		 0.005191505 -0.0071027875 0.00059694052 0 0.0035235286 -0.0035052896 -0.0035380721
		 -0.0083656311 -0.0011507273 -2.3841858e-07 -0.0011201501 0.0063293576 -0.0013369322
		 -0.007095933 0.0021756887 -0.0088012218 -0.00081950426 -1.7881393e-07 0.0024136305
		 0.011155009 0.0017709136 -0.0063282847 -0.0013366938 0.008939445 0.0019007921 0.011849225
		 0.0022369027 -0.0075840354 -0.0029313564 -0.01115495 0.001770854 5.9604645e-08 0.00072753429
		 0.009708941 0.0018746257 -0.011849821 0.0022374988 -0.0089404583 0.0019014478 0.0067021847
		 6.300211e-05 0.0090517998 0.0021697283 -0.0097090006 0.0018745661 0.014643967 -0.0021871924
		 0.017801464 -0.0034026504 0.0076037645 -0.00044196844 0 -0.0020775199 -0.0090516806
		 0.0021708012 -0.0067021251 6.3180923e-05 0.0084315538 0.0025254488 0.0087004304 0.0025028586
		 -0.0076037645 -0.00044193864 -0.014643967 -0.0021873116 -0.017801464 -0.00340271
		 0.0095261931 -0.0023028851 -0.0084303021 0.0025302768 -0.0087016225 0.002501905 -0.0023375154
		 0.00010830164 -0.0020958781 8.3506107e-05 -0.0095261335 -0.0023029447 0.010744393
		 -0.0026299357 0.0080795288 -0.0010256469 0.0023388267 0.00010430813 0.0020945072
		 7.4803829e-05 -0.00060504675 0.00088918209 -0.0016061664 0.00087887049 -0.0080794692
		 -0.0010261238 -0.010744393 -0.0026306212 0.0097690225 -0.001634419 0.008022666 -0.0015681386
		 0.00060510635 0.00088328123 0.0016061068 0.00087308884 0.0032263994 -0.00093585253
		 0.0014584064 -0.00088900328 -0.0097688437 -0.0016354322 -0.0080228448 -0.0015690327
		 -0.0032263398 -0.00093907118 -0.0014584661 -0.00089204311 0.0036138147 -4.4822693e-05
		 0.0035632104 -7.1048737e-05 0.0038506836 6.6578388e-05 0.0039846599 6.0737133e-05
		 0.0008572638 -0.00018942356 0.0014435202 0.00020241737 0.00068750978 -0.00014060736
		 0.0012597144 0.00013852119 -0.00045624375 -9.3877316e-05 0.00013333559 8.136034e-05
		 -0.0007661283 2.6881695e-05 -0.00022251904 -2.6583672e-05 -0.0046481043 9.1195107e-06
		 -0.0039264113 -1.847744e-06 -0.0050677955 -1.0728836e-05 -0.0043065101 -6.6161156e-06
		 0.00039972365 -0.00078034401 1.4901161e-07 -0.00079888105 -5.9604645e-08 -0.0010356903
		 0.00065594912 -0.0010048747 0.0002861172 0.0004901886 2.682209e-07 0.00048172474
		 -0.00040015578 -0.00077921152 -0.00065582991 -0.0010039806 2.9802322e-08 -0.0011614561
		 0.00087423623 -0.0011618137 -0.00050272048 -0.00017803907 -5.543232e-05 0.00016945601
		 0.00048543513 0.0010845065 1.4901161e-08 0.0011202693 -0.00028681755 0.0004901886
		 -0.00068598986 0.00026094913 0.0005030036 -0.00017881393 5.5402517e-05 0.00016880035
		 -0.00087425113 -0.0011618733 -2.9802322e-08 -0.00020366907 0.00050708652 -0.00013571978
		 0.00032688677 0.00018298626 0.00087304413 0.0006570816 -1.4901161e-08 0.00095134974
		 -0.00048542023 0.0010844469 -0.00039754808 0.00031512976 0.00068646669 0.00026094913
		 -0.00032693148 0.00018298626 -0.00050702691 -0.00013577938 0 0.00061309338 0.0010410845
		 0.00085884333 -0.00040470064 0.0012394786 0.0020220727 -0.0010855794 0 -0.00063794851
		 -0.00087302923 0.000657022 -0.00037463009 -0.00057637691 0.00039750338 0.00031507015
		 0.00040465593 0.0012394786 -0.0010410249 0.00085884333 -0.0020221174 -0.0010855794
		 0.00037464499 -0.00057637691 0.0016778111 0.0011227727 1.7881393e-07 0.0011594892
		 0 -0.00017648935 0.00020164251 -0.00070530176 0.00079846382 0.00047969818 0 0.00032633543
		 -0.0016781688 0.0011226535 -0.00020170212 -0.00070524216 0.0014579892 -0.00011563301
		 -7.8082085e-06 -0.00029909611 -0.00079840422 0.00047969818 0.00041955709 -0.001137197
		 -0.0014578104 -0.00011557341 7.8082085e-06 -0.0002990365 -0.0004196167 -0.0011373162
		 -0.00050365925 0.00062036514 0 0.00044542551 -2.9802322e-08 -5.1856041e-06 -7.3701143e-05
		 3.1292439e-05 0 -8.5890293e-05 -0.0011325479 0.00038701296 0.00050365925 0.00062036514
		 7.3730946e-05 3.1292439e-05 0 -0.00048142672 7.1018934e-05 -0.00048071146 0.00092571974
		 -0.00047957897 0.00026783347 -0.00038576126 0.0011325479 0.00038701296 -0.00081980228
		 -0.000695467 -0.00026783347 -0.00038576126 -0.00092571974 -0.00047957897 -7.1018934e-05
		 -0.00048077106 0 0.0020616055 -0.00041019917 0.00041782856 0.0012428761 -0.00040727854
		 0.00081980228 -0.000695467 -0.0012428761 -0.00040721893 0.00041019917 0.00041782856
		 0 -0.00056171417 -0.0027520955 -0.0010169148 -0.00024035573 0.00092536211 0.00024035573
		 0.00092536211 0.0027520955 -0.0010169148 -0.0030526221 0.00039744377 0.0030526221
		 0.00039744377 -0.0036140531 -4.4822693e-05 -0.0039849877 6.0737133e-05 -0.0038509518
		 6.6518784e-05 -0.0035635084 -7.0989132e-05 -0.0014436096 0.00020241737 -0.00085732341
		 -0.00018936396 -0.0012597591 0.00013846159 -0.00068758428 -0.00014054775 -0.00013330579
		 8.136034e-05 0.00045625865 -9.3817711e-05 0.00022260845 -2.6643276e-05 0.0007661432
		 2.6941299e-05 0.0039267838 -1.847744e-06 0.0046483874 9.1195107e-06 0.0043068826
		 -6.6161156e-06 0.0050681382 -1.0728836e-05 0.00080165267 0.00079536438 0.00051232427
		 -0.00011652708 -0.00051225722 -0.00011646748 -0.00080160797 0.00079518557 -0.00039165094
		 0.00031292439 -0.00039799139 -0.00068134069 0.00039149821 0.00031304359 0.00039801002
		 -0.0006814599 -0.000494048 0 0.0004940778 5.9604645e-08 -0.00098366663 0 0.00098375976
		 0 0.00080165267 -0.00079554319 -0.00080162287 -0.00079530478 -0.00039165094 -0.00031286478
		 0.00039151311 -0.00031298399 -0.00051227212 0.00011652708 0.00051232427 0.00011658669
		 -0.00039798766 0.00068134069;
	setAttr ".uvtk[500:749]" 0.00039799511 0.0006814003 -0.00065910816 0.00067150593
		 0.00039899349 0.00026613474 0.00092259049 -9.304285e-05 -0.00040724874 -9.3102455e-05
		 -4.7534704e-05 -2.7477741e-05 0.00051420927 -0.00041979551 -0.00040900707 -0.00022131205
		 0.00092807412 4.5657158e-05 0 -4.4465065e-05 0 0.00054979324 0 -0.0004375577 0 -0.00011402369
		 0.0013604164 0.00022399426 -0.00025552511 -0.00014871359 0.00040721893 -9.3102455e-05
		 0.00065907836 0.00067150593 4.7504902e-05 -2.7477741e-05 0.00040900707 -0.00022131205
		 0 -7.969141e-05 -0.00092259049 -9.304285e-05 -0.00039902329 0.00026613474 -0.00051423907
		 -0.00041973591 0.00025546551 -0.00014871359 -0.00092810392 4.5657158e-05 -0.00024408102
		 -0.00011575222 0 -5.0187111e-05 0.00024408102 -0.00011575222 -0.0013604164 0.00022393465
		 0.0025264025 -0.00040924549 -0.003126204 0.00038617849 -0.0015791655 -0.00048041344
		 0.002178967 0.00050348043 0.002112627 0 -0.0013343096 0 -0.0015454292 0 0.00076717138
		 0 3.0726194e-05 -7.0571899e-05 5.2928925e-05 -1.1205673e-05 -7.4088573e-05 1.502037e-05
		 -0.00013372302 0.00019818544 8.0645084e-05 0 -8.0794096e-05 0 0.00012299418 -0.000195086
		 1.2516975e-06 6.4074993e-05 5.2928925e-05 1.1205673e-05 -7.4088573e-05 -1.4960766e-05
		 3.0726194e-05 7.0571899e-05 -0.00013372302 -0.00019818544 0.00012296438 0.000195086
		 1.2516975e-06 -6.4074993e-05 1.0639429e-05 -1.5437603e-05 -0.00022187829 -6.3836575e-05
		 -0.00012376904 2.4616718e-05 0.00033131242 5.7339668e-05 -5.4180622e-05 -1.090765e-05
		 5.787611e-05 8.1658363e-06 0.00049448013 -0.00062739849 0.00041717291 0.00022321939
		 -5.9604645e-08 0.00021380186 3.9935112e-06 -0.00064855814 -0.0005171299 0.00070470572
		 -0.00035256147 0.00011825562 -0.0005056262 -0.00062733889 -0.00041681528 0.00022065639
		 3.3378601e-06 -0.00078320503 0.00046372414 -0.000882864 -0.0003117919 3.1113625e-05
		 -0.00047230721 -0.00088083744 0.00051689148 0.00070077181 0.00035965443 0.00011587143
		 -3.5762787e-07 0.00018167496 -0.00019264221 -6.5505505e-05 -0.00089991093 0.0004453063
		 0.00031679869 3.4272671e-05 0.00019359589 -6.28829e-05 -0.0042544007 0.00026714802
		 -0.0043649673 0.00030350685 0.00089931488 0.00044876337 0.0043649673 0.00030326843
		 0.0042543411 0.00026643276 0.00073504448 -0.0010370612 0.00026500225 0.00041890144
		 -5.9604645e-08 0.00034314394 5.9604645e-08 -0.0010284185 -0.00076383352 0.0006044507
		 -5.9604645e-06 -0.00029349327 -0.0007352829 -0.0010370612 -0.00026512146 0.00041884184
		 0 -0.00010746717 0.00017338991 -0.00021266937 -0.00065934658 0.00091636181 -0.00017344952
		 -0.00021266937 0.00076389313 0.00060433149 6.0796738e-06 -0.00029349327 0.00065934658
		 0.00091642141 -4.7683716e-07 -0.00019139051 -5.9604645e-08 -8.4519386e-05 0.00030398369
		 5.620718e-05 -0.00035405159 -0.00015151501 0.00035539269 -0.00015199184 -0.00030380487
		 5.5968761e-05 0.0016143322 -4.8995018e-05 0.00057452917 0.00030767918 -2.9802322e-06
		 -0.00020349026 -0.00023335218 -0.00021290779 0.00024068356 -0.00021278858 -0.00057542324
		 0.00030678511 -0.0016143918 -4.9412251e-05 0.00071007013 0.00045710802 5.9604645e-08
		 -0.00031113625 -7.0929527e-05 -0.00034344196 7.0780516e-05 -0.00034284592 -0.00071439147
		 0.00045734644 0.00082135201 5.0842762e-05 -0.0008213222 5.197525e-05 0.0025743246
		 0.00019603968 0.0024693608 8.4221363e-05 -0.0024693608 8.4280968e-05 -0.0025743246
		 0.0001962781 0 4.2021275e-05 2.3841858e-07 0.00018370152 3.015995e-05 0.00020432472
		 0.00021535158 1.0430813e-05 -0.00021523237 1.0430813e-05 -3.0755997e-05 0.00020432472
		 0 -0.00030750036 0.00016570091 0.00046300888 -0.00077271461 3.1590462e-05 -0.00096511841
		 -0.00037640333 0.00077265501 3.1530857e-05 0.00096547604 -0.00037640333 -0.00016570091
		 0.00046300888 -0.00024867058 -0.00029206276 0.00024878979 -0.00029200315 -0.00010955334
		 0.00027638674 0 0.00025016069 0 0.00013542175 6.4790249e-05 0.00017815828 0 0.00021857023
		 -0.00083094835 0.00031810999 0.00010955334 0.00027638674 -6.4909458e-05 0.00017815828
		 0.001097858 -0.00027340651 0.00088953972 -0.00036895275 0.00083094835 0.00031810999
		 -8.6426735e-05 -0.00043225288 -0.00088948011 -0.00036895275 -0.0010977983 -0.00027340651
		 8.648634e-05 -0.00043225288 -5.9604645e-08 0.00011664629 -5.9604645e-08 7.557869e-05
		 -0.00014382601 3.5643578e-05 0.00011527538 0.00013500452 -0.00011515617 0.00013500452
		 0.00014388561 3.5643578e-05 0.00088602304 -3.516674e-05 0.0012155771 -0.00028938055
		 1.1920929e-07 0.00038653612 -0.00046050549 0.0004632473 0.00046038628 0.0004632473
		 -0.0012156367 -0.00028938055 -0.00088596344 -3.5226345e-05 0.00028562546 -0.00048792362
		 -5.9604645e-08 0.00034540892 -0.0013736486 0.00044548512 0.0013736486 0.00044542551
		 -0.00028550625 -0.00048792362 -0.00099390745 -0.0007289052 0.00099396706 -0.00072896481
		 -0.0025264621 -0.00040924549 -0.002178967 0.00050348043 0.0015791655 -0.00048041344
		 0.003126204 0.00038617849 -0.0021125674 0 -0.00076711178 0 0.0015454292 0 0.0013343096
		 0 -1.0639429e-05 -1.5437603e-05 -0.00033131242 5.7339668e-05 0.00012376904 2.4616718e-05
		 0.00022187829 -6.3836575e-05 -5.787611e-05 8.1658363e-06 5.4180622e-05 -1.090765e-05
		 1.1861324e-05 0 2.7745962e-05 0 -2.3722649e-05 0 -1.3887882e-05 0 1.1861324e-05 0
		 -1.3887882e-05 0 0.0022427887 0.0017412901 0.00094497204 -0.00047796965 -0.00071921945
		 -0.0015229732 0.00074213743 0.00061997771 0.0022910386 0.00146842 0.00085130334 5.6952238e-05
		 0.00033816695 0.00029668212 -0.0016184449 -0.00091725588 -0.00093603134 0.001768887
		 6.2316656e-05 0.00056545436 -0.00090223551 0.00153175 0.0021017492 0.00097933412
		 0.00020264089 0.00074064732 0.00038596988 0.00018389523 -0.0018983781 -0.00042556226
		 0.00018674135 0.00015576184 0.00051257014 -0.00020077825 0.0016950369 -0.0012788624
		 0.00062257051 0.00026795268 -0.00070118904 0.0010643303 0.0019304752 -0.0018824339
		 0.00021600723 -0.0014799833 0.0025151968 -0.00060047209 0.0004170239 -1.2844801e-05
		 -0.0018136501 -0.00013814867 0.00016161799 0.00015766919 0.0012174547 0.00087341666
		 -0.00075337291 -0.0017969608 0.0015342832 -0.00042951107 0.00025144219 0.00017994642
		 0.0025437772 -0.00013943017 0.0001360178 -9.906292e-05 -0.0018213391 -0.00012810528
		 0.00015282631 0.00016000867 0.00095409155 -0.0013667941 -0.00037011504 -0.00034731627
		 0.0021353364 2.6702881e-05 0.00011092424 -0.00010120869 -0.0018647611 -0.00010222197
		 9.8735094e-05 0.0001758188 0.00089100003 0.00027602911 0.0020945072 3.5643578e-05
		 -5.6922436e-06 -7.3134899e-05 -0.001881063 -9.9748373e-05 8.019805e-05 0.00017759204
		 0.0018529296 9.5650554e-05 -1.8715858e-05 -6.4983964e-05 -0.0020437539 -7.9683959e-05
		 -0.00010100007 0.00021673739 -0.00014016032 -3.4630299e-05 -0.0020530522 -7.390976e-05
		 -0.00012257695 0.00021814555 -0.0001553297 -3.5062432e-05 -0.0021600425 -3.9465725e-05
		 -0.0002156198 0.00022816658 -0.00023394823 -4.1551888e-05 -0.0021777451 -3.2402575e-05
		 -0.00023812056 0.00022755563 -0.00024679303 -4.3474138e-05 -0.0026000738 -0.00013802992;
	setAttr ".uvtk[750:999]" -0.00058573484 9.9626835e-05 -0.00043347478 -0.00016358774
		 -0.0026374757 -0.00014639273 -0.00059342384 9.6631935e-05 -0.00043138862 -0.00017270213
		 0.00095003843 0.00037145615 -7.2717667e-05 -0.00031784177 -0.00074249506 -0.00041085482
		 5.3524971e-05 0.0002862215 -1.5497208e-06 -0.00020462275 0.0012648702 0.0002271533
		 -5.9366226e-05 -5.1617622e-05 -0.00040203333 -0.00010848045 -0.0010194182 -0.00029778481
		 2.1457672e-05 0.0001412034 -5.2332878e-05 1.9967556e-06 0.0013664365 0.00019264221
		 -1.8119812e-05 -0.00017333031 -2.9206276e-06 -5.4657459e-05 -0.00032490492 6.5565109e-07
		 -0.00051742792 -0.00010724366 -0.0010376573 -9.1165304e-05 0.00029045343 -0.00024358928
		 3.0696392e-05 9.1254711e-05 -0.0006377697 -1.2606382e-05 0.0013747215 0.00019985437
		 -1.9490719e-05 -0.00017175078 0.00027054548 -0.00013664365 -0.00023186207 0.00014531612
		 -0.000443995 -5.6147575e-05 -0.00062143803 -7.0780516e-05 -0.00079727173 0.00095615163
		 0.00020807981 0.00057621486 4.3094158e-05 0.00010028481 -0.0011729002 -9.2715025e-05
		 -0.0003361702 0.00037747622 0.0013594031 0.00019955635 -1.6152859e-05 -0.00015708804
		 -0.00039094687 7.2479248e-05 -0.00056666136 -8.6724758e-05 9.6738338e-05 0.00075885095
		 -0.00042301416 -0.0002254924 0.00024688244 -0.00079022185 -3.9100647e-05 -0.00018027425
		 0.000202775 0.0001476109 -0.001232326 -0.00011244416 0.0010450482 0.00024631619 -0.00034588575
		 -0.00010079145 -5.1796436e-05 -0.00019234419 -0.00053423643 -0.00013189018 0.00029373169
		 0.00067404658 0.00015664101 -0.00044727442 -0.0017768145 -0.00019663572 0.0010433793
		 0.00023120642 -0.00036537647 -0.00010427833 -0.00038963556 -0.00013542175 0.00044560432
		 0.00055554137 0.00045800209 -0.00040729879 0.00098752975 0.00016388297 -0.0003503561
		 -8.8632107e-05 -0.00038707256 -0.00011211634 0.0011186004 -0.00065742107 0.00099641085
		 0.00013178587 -0.00034624338 -8.0943108e-05 -0.0003041625 -4.5955181e-05 0.001249671
		 8.8423491e-05 -0.00012809038 -6.4909458e-05 -0.00028789043 -4.5776367e-05 0.0012982488
		 9.1522932e-05 -0.00010317564 -4.6432018e-05 -0.00014734268 -2.4467707e-05 -0.00017398596
		 7.7486038e-06 -0.00021335483 -0.00030076504 -0.0010727346 0.00029522181 -0.00063419342
		 8.3446503e-05 0.00033459067 -0.00050920248 0.00027230382 -9.9718571e-05 -0.00076282024
		 0.00092613697 0.00033456087 -6.5028667e-05 0.00048279762 -0.00045442581 -5.7846308e-05
		 0.00026005507 0.00041460991 -1.9609928e-05 0.00066351891 -0.00037699938 -6.839633e-05
		 0.00020045042 0.00049138069 -4.7266483e-05 0.00078880787 -0.00025272369 -0.00016477704
		 1.1920929e-05 -0.00021952391 0.00049126148 0.0010334849 0.00038081408 0.00016999245
		 0.00032508373 -0.0013405979 -0.00028574467 -8.7499619e-05 -0.00034636259 -0.00036427379
		 -0.00021636486 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0021969378
		 -0.0017333478 0.00073102117 -0.00060632825 -0.0007391274 0.0015389919 0.00090283155
		 0.00049546361 -0.00095933676 -0.0017907768 7.0095062e-05 -0.00057724118 0.00033676624
		 -0.00028333068 -0.0016437173 0.00094380975 0.00079980493 -4.2274594e-05 0.0022388995
		 -0.0014576763 0.00049233437 0.00017796457 0.0017135143 0.0012557805 0.00040104985
		 -0.00019842386 -0.00092756748 -0.0015521795 -0.0018977523 0.00045791268 0.00018820167
		 -0.00014105439 0.00015684962 -0.00072868168 0.0020504892 -0.00096899271 0.0025517941
		 0.00057628751 0.00060921907 -0.00029277802 0.00045719743 2.9802322e-06 -0.00073313713
		 -0.0010834932 0.0001771152 -0.00014927983 -0.0017871261 0.00015226007 0.00014045835
		 0.0014785174 0.0018532276 0.0018762797 0.0025920272 0.00012779236 0.0011857748 -0.00089848042
		 0.00019696355 0.00010946393 -0.00079858303 0.0017706007 0.00017267466 -0.00015565753
		 -0.0017942488 0.00013959408 0.00015565753 -0.00017967355 0.0014469624 0.00042070099
		 0.0021873713 -6.0796738e-06 0.00090563297 0.0013404917 0.00017133355 0.00010725856
		 -0.00040769577 0.00031979126 0.00011709332 -0.00016519427 -0.0018378496 0.00010305643
		 0.0021371841 -8.0764294e-06 0.00085753202 -0.00029759575 4.696846e-05 8.1181526e-05
		 0.00010111928 -0.00017866492 -0.0018515289 9.8615885e-05 0.0018337965 -8.1956387e-05
		 3.1292439e-05 7.5817108e-05 -6.3747168e-05 -0.00021162629 -0.0020279288 6.5326691e-05
		 -0.0001437068 5.0902367e-05 -8.4608793e-05 -0.00022342801 -0.0020594001 6.1452389e-05
		 -0.00016158819 4.8309565e-05 -0.00019606948 -0.00021988153 -0.0021721721 5.4687262e-05
		 -0.000230968 4.4196844e-05 -0.00021454692 -0.00021579862 -0.0021893978 5.3882599e-05
		 -0.00024443865 4.3213367e-05 -0.00054419041 -0.00010591745 -0.0025384426 0.00014966726
		 -0.00041699409 0.00013411045 -0.0005491972 -9.8884106e-05 -0.002573818 0.00015664101
		 -0.00041818619 0.00013953447 0.00094980001 -0.0003734529 5.7578087e-05 -0.0002874285
		 -0.00074136257 0.00041055679 -7.2658062e-05 0.00031708181 2.5868416e-05 -0.00014030933
		 -0.0010176897 0.00029796362 -0.00039988756 0.00010806322 -5.620718e-05 5.1170588e-05
		 -5.9604645e-08 0.00020425022 0.0012634993 -0.00022871792 0.00029301643 0.00024545193
		 -0.0010359883 9.2387199e-05 -0.00051808357 0.00010691583 -0.0003233552 -8.4936619e-07
		 1.3709068e-06 5.4240227e-05 -4.8816204e-05 -2.0265579e-06 0.0013633966 -0.00019334257
		 -2.0205975e-05 0.00017382205 0.00020456314 -0.00057575107 -0.00080019236 -0.00095593929
		 -0.00061959028 7.0631504e-05 -0.00044381618 5.6117773e-05 -0.00023037195 -0.00014640391
		 0.00027555227 0.00013554096 -0.00063562393 1.3336539e-05 3.3676624e-05 -9.046495e-05
		 0.0013713241 -0.00020034611 -2.1100044e-05 0.00017124414 0.00024616718 0.00078967214
		 -0.00042456388 0.00022557378 9.7572803e-05 -0.00075924397 -0.00056707859 8.6575747e-05
		 -0.00038897991 -7.237494e-05 -0.00032955408 -0.00037634373 -0.0011684895 9.2744827e-05
		 4.7206879e-05 -9.9733472e-05 0.0013552308 -0.0002001971 -1.7523766e-05 0.00015765429
		 0.00015616417 0.00044688582 0.00029200315 -0.00067460537 -0.00053119659 0.00013178587
		 -0.0012276769 0.00011250377 0.00020629168 -0.0001462996 -4.029274e-05 0.00018082559
		 -5.209446e-05 0.00019302964 0.0010412335 -0.00024550408 -0.00034856796 0.00010145456
		 0.00045675039 0.0004067421 0.00044542551 -0.00055631995 -0.0017735362 0.0001975745
		 -0.00039249659 0.00013636053 0.0010421872 -0.00023079664 -0.00036680698 0.00010482222
		 0.0011184216 0.00065660477 -0.00039124489 0.00011243671 0.00098228455 -0.00016330928;
	setAttr ".uvtk[1000:1075]" -0.00035405159 8.9082867e-05 -0.00030589104 4.5612454e-05
		 0.00099259615 -0.00013048947 -0.00034809113 8.1349164e-05 -0.00028854609 4.6104193e-05
		 0.0012511611 -8.8222325e-05 -0.00013005733 6.4357184e-05 -0.00015199184 2.4870038e-05
		 0.0013002753 -9.1889175e-05 -0.00010597706 4.467275e-05 -0.00018203259 -7.7977311e-06
		 -0.00021347404 0.00030070543 0.00033453107 0.00050914288 -0.00063422322 -8.3208084e-05
		 -0.0010727346 -0.00029540062 0.00033459067 6.5207481e-05 0.00048279762 0.0004543066
		 0.00027227402 9.9658966e-05 -0.00076296926 -0.00092613697 0.00041469932 1.9788742e-05
		 0.00066354871 0.00037688017 -5.7727098e-05 -0.00026005507 0.0004914701 4.7147274e-05
		 0.00078886747 0.0002527833 -6.8232417e-05 -0.00020045042 -0.00021961331 -0.00049126148
		 0.0010335147 -0.00038087368 -0.00016470253 -1.1861324e-05 -0.0013406873 0.00028568506
		 -8.7529421e-05 0.00034636259 0.00016996264 -0.00032514334 -0.00036434829 0.00021636486
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.0013546944 0 -0.00091606379
		 0 0.0016779304 0 0.0005928278 0 0.0013546348 0 -0.00059276819 0 -0.00167799 0 0.00091612339
		 0;
createNode polyMapSewMove -n "polyMapSewMove1";
	rename -uid "CE3897B2-45F6-A753-7548-8288DAB7AFC7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[229]";
createNode polyMapSewMove -n "polyMapSewMove2";
	rename -uid "8D6578C2-490E-D7D6-70F1-298CAD8A1AD7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[163]";
createNode polyMapSewMove -n "polyMapSewMove3";
	rename -uid "D71C6B38-4280-F227-6C62-F7AF34E52A4F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[674]";
createNode polyMapSewMove -n "polyMapSewMove4";
	rename -uid "C5758675-434E-399E-10C7-7FB932D449BC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1186]";
createNode polyMapSewMove -n "polyMapSewMove5";
	rename -uid "9EF0D39F-4ED8-1E59-F7BD-5CB9FD030485";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[142]";
createNode polyMapSewMove -n "polyMapSewMove6";
	rename -uid "5859F77A-4E08-4A15-0FF3-4EAB2DE440B2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[156]";
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "4560C658-459E-2667-8DBE-08B278A86DE6";
	setAttr ".uopa" yes;
	setAttr -s 84 ".uvtk";
	setAttr ".uvtk[280]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[281]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[282]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[283]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[284]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[285]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[286]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[287]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[288]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[289]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[290]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[291]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[292]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[293]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[294]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[295]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[296]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[297]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[298]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[299]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[300]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[301]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[302]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[303]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[304]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[305]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[306]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[307]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[308]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[309]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[310]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[311]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[312]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[313]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[314]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[315]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[316]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[317]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[318]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[319]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[320]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[321]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[322]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[323]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[324]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[325]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[326]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[327]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[328]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[329]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[330]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[331]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[332]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[333]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[334]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[335]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[336]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[337]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[338]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[339]" -type "float2" 0.13829638 0.022599783 ;
	setAttr ".uvtk[340]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[341]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[342]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[343]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[344]" -type "float2" 0.13829638 0.022599783 ;
	setAttr ".uvtk[345]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[346]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[347]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[348]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[349]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[350]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[351]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[352]" -type "float2" 0.13829638 0.022599783 ;
	setAttr ".uvtk[353]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[354]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[355]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[356]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[357]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[358]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[359]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[360]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[361]" -type "float2" 0.13829638 0.022599753 ;
	setAttr ".uvtk[362]" -type "float2" 0.13829638 0.022599753 ;
createNode polyMapSewMove -n "polyMapSewMove7";
	rename -uid "0A44E370-4DC9-9582-829E-1087FA8D28AD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[36]";
createNode polyMapSewMove -n "polyMapSewMove8";
	rename -uid "DB5F793E-41D0-D2DE-CC35-289F6AB21A5C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[65]";
createNode polyMapSewMove -n "polyMapSewMove9";
	rename -uid "BCD322C1-4309-BD2C-D2B3-8CAF00018F6C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[750]";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "6AA34896-494F-1DDC-EB10-5CA2EE1F3362";
	setAttr ".uopa" yes;
	setAttr -s 237 ".uvtk";
	setAttr ".uvtk[200]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[201]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[202]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[203]" -type "float2" -0.23624809 -0.43901366 ;
	setAttr ".uvtk[204]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[205]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[206]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[207]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[208]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[209]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[210]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[211]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[212]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[213]" -type "float2" -0.23624809 -0.43901366 ;
	setAttr ".uvtk[214]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[215]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[216]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[217]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[218]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[219]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[220]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[221]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[222]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[223]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[224]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[225]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[226]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[227]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[228]" -type "float2" -0.23624809 -0.43901366 ;
	setAttr ".uvtk[229]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[230]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[231]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[232]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[233]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[234]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[235]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[236]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[237]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[238]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[239]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[240]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[241]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[242]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[243]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[244]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[245]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[246]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[247]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[248]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[249]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[250]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[251]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[252]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[253]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[254]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[255]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[256]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[257]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[258]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[259]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[260]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[261]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[262]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[263]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[264]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[265]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[266]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[267]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[268]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[269]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[270]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[271]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[272]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[273]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[274]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[275]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[276]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[277]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[278]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[279]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[501]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[502]" -type "float2" -0.23624809 -0.43901366 ;
	setAttr ".uvtk[503]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[504]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[505]" -type "float2" -0.23624809 -0.43901366 ;
	setAttr ".uvtk[506]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[507]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[508]" -type "float2" -0.23624809 -0.43901366 ;
	setAttr ".uvtk[509]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[510]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[511]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[512]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[513]" -type "float2" -0.23624809 -0.43901366 ;
	setAttr ".uvtk[514]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[515]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[516]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[517]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[518]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[519]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[520]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[521]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[522]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[523]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[524]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[525]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[526]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[527]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[528]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[747]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[748]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[749]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[750]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[751]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[752]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[753]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[754]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[755]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[756]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[757]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[758]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[759]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[760]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[761]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[762]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[763]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[764]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[765]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[766]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[767]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[768]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[769]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[770]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[771]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[772]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[773]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[774]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[775]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[776]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[777]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[778]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[779]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[780]" -type "float2" -0.23624809 -0.43901366 ;
	setAttr ".uvtk[781]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[782]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[783]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[784]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[785]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[786]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[787]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[788]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[789]" -type "float2" -0.23624809 -0.43901366 ;
	setAttr ".uvtk[790]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[791]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[792]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[793]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[794]" -type "float2" -0.23624809 -0.43901366 ;
	setAttr ".uvtk[795]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[796]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[797]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[798]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[799]" -type "float2" -0.23624809 -0.43901366 ;
	setAttr ".uvtk[800]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[801]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[802]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[803]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[804]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[805]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[806]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[807]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[808]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[809]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[928]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[929]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[930]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[931]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[932]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[933]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[934]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[935]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[936]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[937]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[938]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[939]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[940]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[941]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[942]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[943]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[944]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[945]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[946]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[947]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[948]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[949]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[950]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[951]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[952]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[953]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[954]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[955]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[956]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[957]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[958]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[959]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[960]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[961]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[962]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[963]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[964]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[965]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[966]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[967]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[968]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[969]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[970]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[971]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[972]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[973]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[974]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[975]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[976]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[977]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[978]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[979]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[980]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[981]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[982]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[983]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[984]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[985]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[986]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[987]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[988]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[989]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[990]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[991]" -type "float2" -0.23624809 -0.43901372 ;
	setAttr ".uvtk[992]" -type "float2" -0.23624809 -0.43901372 ;
createNode polyMapSewMove -n "polyMapSewMove10";
	rename -uid "5881FCB9-4E8B-29F3-F60E-5BAB8C4C83C9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[101]";
createNode polyMapSewMove -n "polyMapSewMove11";
	rename -uid "8477CF1A-4852-4697-CDF5-8CB4C4089B66";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1278]";
createNode polyMapSewMove -n "polyMapSewMove12";
	rename -uid "32984480-480E-1E56-619D-289D807C0BC5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1351]";
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "CFDB86AF-4D95-75A3-7B9E-F19A45F1C0CF";
	setAttr ".uopa" yes;
	setAttr -s 770 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.055353824 -0.082506716 ;
	setAttr ".uvtk[1]" -type "float2" -0.047516394 -0.083258003 ;
	setAttr ".uvtk[2]" -type "float2" -0.036323357 -0.036378667 ;
	setAttr ".uvtk[3]" -type "float2" -0.044219393 -0.035779625 ;
	setAttr ".uvtk[4]" -type "float2" -0.048761118 -0.08965221 ;
	setAttr ".uvtk[5]" -type "float2" -0.056690041 -0.089170516 ;
	setAttr ".uvtk[6]" -type "float2" -0.019055411 -0.083202124 ;
	setAttr ".uvtk[7]" -type "float2" -0.019200563 -0.036278814 ;
	setAttr ".uvtk[8]" -type "float2" -0.035235766 -0.029932141 ;
	setAttr ".uvtk[9]" -type "float2" -0.043227825 -0.029412284 ;
	setAttr ".uvtk[10]" -type "float2" -0.019035496 -0.089648336 ;
	setAttr ".uvtk[11]" -type "float2" -0.057361487 -0.09594591 ;
	setAttr ".uvtk[12]" -type "float2" -0.049284641 -0.096027479 ;
	setAttr ".uvtk[13]" -type "float2" 0.0094053857 -0.083081901 ;
	setAttr ".uvtk[14]" -type "float2" -0.0020774379 -0.036272749 ;
	setAttr ".uvtk[15]" -type "float2" -0.019220486 -0.029832736 ;
	setAttr ".uvtk[16]" -type "float2" -0.034895245 -0.023472715 ;
	setAttr ".uvtk[17]" -type "float2" -0.042927478 -0.022922356 ;
	setAttr ".uvtk[18]" -type "float2" 0.01068965 -0.08946836 ;
	setAttr ".uvtk[19]" -type "float2" -0.019015625 -0.096071973 ;
	setAttr ".uvtk[20]" -type "float2" -0.057373393 -0.15019156 ;
	setAttr ".uvtk[21]" -type "float2" -0.04927491 -0.15012629 ;
	setAttr ".uvtk[22]" -type "float2" 0.017238013 -0.082282156 ;
	setAttr ".uvtk[23]" -type "float2" 0.0058146901 -0.035624847 ;
	setAttr ".uvtk[24]" -type "float2" -0.0032049119 -0.029833063 ;
	setAttr ".uvtk[25]" -type "float2" -0.019240439 -0.023392592 ;
	setAttr ".uvtk[26]" -type "float2" -0.023101587 -0.0074550249 ;
	setAttr ".uvtk[27]" -type "float2" -0.042766232 -0.0078064539 ;
	setAttr ".uvtk[28]" -type "float2" 0.01125259 -0.095840201 ;
	setAttr ".uvtk[29]" -type "float2" 0.018615447 -0.08893761 ;
	setAttr ".uvtk[30]" -type "float2" -0.018848456 -0.15010788 ;
	setAttr ".uvtk[31]" -type "float2" -0.049369235 -0.15705873 ;
	setAttr ".uvtk[32]" -type "float2" -0.055959288 -0.15595023 ;
	setAttr ".uvtk[33]" -type "float2" 0.0047838129 -0.029263765 ;
	setAttr ".uvtk[34]" -type "float2" -0.0035853609 -0.023375858 ;
	setAttr ".uvtk[35]" -type "float2" -0.019289128 -0.00763366 ;
	setAttr ".uvtk[36]" -type "float2" -0.023832131 -0.0065424033 ;
	setAttr ".uvtk[37]" -type "float2" -0.042766441 -0.0066942163 ;
	setAttr ".uvtk[38]" -type "float2" 0.011577528 -0.14993806 ;
	setAttr ".uvtk[39]" -type "float2" 0.019328661 -0.095682964 ;
	setAttr ".uvtk[40]" -type "float2" -0.018826932 -0.15707369 ;
	setAttr ".uvtk[41]" -type "float2" 0.0044432618 -0.022775847 ;
	setAttr ".uvtk[42]" -type "float2" -0.015477799 -0.0074314661 ;
	setAttr ".uvtk[43]" -type "float2" -0.019292615 -0.006505955 ;
	setAttr ".uvtk[44]" -type "float2" -0.021865804 -0.0065280385 ;
	setAttr ".uvtk[45]" -type "float2" -0.022889886 -0.0055138692 ;
	setAttr ".uvtk[46]" -type "float2" -0.023765642 -0.00093372166 ;
	setAttr ".uvtk[47]" -type "float2" -0.042769644 -0.0011067539 ;
	setAttr ".uvtk[48]" -type "float2" 0.019676458 -0.14997895 ;
	setAttr ".uvtk[49]" -type "float2" 0.011714756 -0.15686981 ;
	setAttr ".uvtk[50]" -type "float2" 0.004188586 -0.0076612271 ;
	setAttr ".uvtk[51]" -type "float2" -0.016719386 -0.0065121092 ;
	setAttr ".uvtk[52]" -type "float2" -0.022894058 -0.0019443408 ;
	setAttr ".uvtk[53]" -type "float2" -0.022891421 -5.9336424e-05 ;
	setAttr ".uvtk[54]" -type "float2" -0.042772163 0.00058634579 ;
	setAttr ".uvtk[55]" -type "float2" 0.018297851 -0.15572055 ;
	setAttr ".uvtk[56]" -type "float2" 0.0041818507 -0.006549079 ;
	setAttr ".uvtk[57]" -type "float2" -0.014753073 -0.0065142997 ;
	setAttr ".uvtk[58]" -type "float2" -0.015701622 -0.0054916814 ;
	setAttr ".uvtk[59]" -type "float2" -0.02187993 -0.00091816485 ;
	setAttr ".uvtk[60]" -type "float2" -0.022712413 0.017871358 ;
	setAttr ".uvtk[61]" -type "float2" -0.042805079 0.016380936 ;
	setAttr ".uvtk[62]" -type "float2" 0.0041505396 -0.00096166134 ;
	setAttr ".uvtk[63]" -type "float2" -0.014854215 -0.00090618432 ;
	setAttr ".uvtk[64]" -type "float2" -0.015719511 -0.0019221678 ;
	setAttr ".uvtk[65]" -type "float2" -0.019309975 -0.0008995384 ;
	setAttr ".uvtk[66]" -type "float2" -0.019315325 0.00083443522 ;
	setAttr ".uvtk[67]" -type "float2" -0.019365385 0.017002918 ;
	setAttr ".uvtk[68]" -type "float2" -0.023588765 0.01873944 ;
	setAttr ".uvtk[69]" -type "float2" -0.042807776 0.018137455 ;
	setAttr ".uvtk[70]" -type "float2" 0.0041425601 0.00073139369 ;
	setAttr ".uvtk[71]" -type "float2" -0.015733816 -3.7238002e-05 ;
	setAttr ".uvtk[72]" -type "float2" -0.016739912 -0.00090228021 ;
	setAttr ".uvtk[73]" -type "float2" -0.016023666 0.017892078 ;
	setAttr ".uvtk[74]" -type "float2" -0.019370906 0.018801138 ;
	setAttr ".uvtk[75]" -type "float2" -0.021670777 0.018777393 ;
	setAttr ".uvtk[76]" -type "float2" -0.022689078 0.019815661 ;
	setAttr ".uvtk[77]" -type "float2" -0.023468722 0.027027167 ;
	setAttr ".uvtk[78]" -type "float2" -0.042809326 0.026391059 ;
	setAttr ".uvtk[79]" -type "float2" 0.0040777363 0.016525865 ;
	setAttr ".uvtk[80]" -type "float2" -0.017070927 0.018791571 ;
	setAttr ".uvtk[81]" -type "float2" -0.022616286 0.026031554 ;
	setAttr ".uvtk[82]" -type "float2" -0.022612009 0.027920328 ;
	setAttr ".uvtk[83]" -type "float2" -0.042807359 0.02784247 ;
	setAttr ".uvtk[84]" -type "float2" 0.0040696152 0.018282369 ;
	setAttr ".uvtk[85]" -type "float2" -0.015152827 0.01876545 ;
	setAttr ".uvtk[86]" -type "float2" -0.016059093 0.019836158 ;
	setAttr ".uvtk[87]" -type "float2" -0.021596171 0.027065091 ;
	setAttr ".uvtk[88]" -type "float2" -0.022801626 0.054208186 ;
	setAttr ".uvtk[89]" -type "float2" -0.042737771 0.053837929 ;
	setAttr ".uvtk[90]" -type "float2" 0.0040200576 0.026535742 ;
	setAttr ".uvtk[91]" -type "float2" -0.015323646 0.027052358 ;
	setAttr ".uvtk[92]" -type "float2" -0.016170435 0.026051469 ;
	setAttr ".uvtk[93]" -type "float2" -0.019396521 0.027085371 ;
	setAttr ".uvtk[94]" -type "float2" -0.019400872 0.028524682 ;
	setAttr ".uvtk[95]" -type "float2" -0.019480981 0.05430368 ;
	setAttr ".uvtk[96]" -type "float2" -0.023685921 0.055064484 ;
	setAttr ".uvtk[97]" -type "float2" -0.042726103 0.054666176 ;
	setAttr ".uvtk[98]" -type "float2" 0.0040091015 0.027987108 ;
	setAttr ".uvtk[99]" -type "float2" -0.016186781 0.027940206 ;
	setAttr ".uvtk[100]" -type "float2" -0.017196789 0.027078681 ;
	setAttr ".uvtk[101]" -type "float2" -0.016157962 0.054228399 ;
	setAttr ".uvtk[102]" -type "float2" -0.019483268 0.055124667 ;
	setAttr ".uvtk[103]" -type "float2" -0.021792714 0.055093184 ;
	setAttr ".uvtk[104]" -type "float2" -0.022783626 0.056133486 ;
	setAttr ".uvtk[105]" -type "float2" -0.024102751 0.057732642 ;
	setAttr ".uvtk[106]" -type "float2" -0.03961711 0.05580347 ;
	setAttr ".uvtk[107]" -type "float2" 0.0037795454 0.053981747 ;
	setAttr ".uvtk[108]" -type "float2" -0.017173752 0.055107545 ;
	setAttr ".uvtk[109]" -type "float2" -0.022735316 0.057791401 ;
	setAttr ".uvtk[110]" -type "float2" -0.024435524 0.059740372 ;
	setAttr ".uvtk[111]" -type "float2" -0.039347459 0.059506986 ;
	setAttr ".uvtk[112]" -type "float2" 0.0037607551 0.05481068 ;
	setAttr ".uvtk[113]" -type "float2" -0.015281625 0.055090874 ;
	setAttr ".uvtk[114]" -type "float2" -0.016189113 0.056153886 ;
	setAttr ".uvtk[115]" -type "float2" -0.022705261 0.058755428 ;
	setAttr ".uvtk[116]" -type "float2" -0.024196688 0.060710415 ;
	setAttr ".uvtk[117]" -type "float2" -0.039371703 0.060283069 ;
	setAttr ".uvtk[118]" -type "float2" 0.00064654276 0.055927951 ;
	setAttr ".uvtk[119]" -type "float2" -0.014879785 0.057761125 ;
	setAttr ".uvtk[120]" -type "float2" -0.016247772 0.057811528 ;
	setAttr ".uvtk[121]" -type "float2" -0.021713648 0.05982209 ;
	setAttr ".uvtk[122]" -type "float2" -0.032193083 0.065743521 ;
	setAttr ".uvtk[123]" -type "float2" -0.039733697 0.066905811 ;
	setAttr ".uvtk[124]" -type "float2" 0.00035336986 0.059629977 ;
	setAttr ".uvtk[125]" -type "float2" -0.01455979 0.059770994 ;
	setAttr ".uvtk[126]" -type "float2" -0.016283788 0.058775391 ;
	setAttr ".uvtk[127]" -type "float2" -0.019497715 0.059787959 ;
	setAttr ".uvtk[128]" -type "float2" -0.019499332 0.060313873 ;
	setAttr ".uvtk[129]" -type "float2" -0.019513547 0.064904362 ;
	setAttr ".uvtk[130]" -type "float2" -0.031247262 0.071687952 ;
	setAttr ".uvtk[131]" -type "float2" -0.036459763 0.072899044 ;
	setAttr ".uvtk[132]" -type "float2" 0.00037293136 0.060406134 ;
	setAttr ".uvtk[133]" -type "float2" -0.014804438 0.06073948 ;
	setAttr ".uvtk[134]" -type "float2" -0.017282024 0.059835814 ;
	setAttr ".uvtk[135]" -type "float2" -0.0068393946 0.065821968 ;
	setAttr ".uvtk[136]" -type "float2" -0.019532412 0.071001068 ;
	setAttr ".uvtk[137]" -type "float2" 0.0006939061 0.067031011 ;
	setAttr ".uvtk[138]" -type "float2" -0.0078219399 0.071760498 ;
	setAttr ".uvtk[139]" -type "float2" -0.0026170015 0.073003836 ;
	setAttr ".uvtk[140]" -type "float2" -0.12760085 -0.082705647 ;
	setAttr ".uvtk[141]" -type "float2" -0.11936195 -0.082411289 ;
	setAttr ".uvtk[142]" -type "float2" -0.13097864 -0.036266819 ;
	setAttr ".uvtk[143]" -type "float2" -0.1392017 -0.036639005 ;
	setAttr ".uvtk[144]" -type "float2" -0.12621996 -0.089350283 ;
	setAttr ".uvtk[145]" -type "float2" -0.11806913 -0.089080483 ;
	setAttr ".uvtk[146]" -type "float2" -0.14043811 -0.029998213 ;
	setAttr ".uvtk[147]" -type "float2" -0.13217089 -0.029798746 ;
	setAttr ".uvtk[148]" -type "float2" -0.15675122 -0.036713138 ;
	setAttr ".uvtk[149]" -type "float2" -0.15649709 -0.082801014 ;
	setAttr ".uvtk[150]" -type "float2" -0.15646029 -0.089481831 ;
	setAttr ".uvtk[151]" -type "float2" -0.12570289 -0.095787838 ;
	setAttr ".uvtk[152]" -type "float2" -0.11754297 -0.095873848 ;
	setAttr ".uvtk[153]" -type "float2" -0.15678737 -0.030148715 ;
	setAttr ".uvtk[154]" -type "float2" -0.13276485 -0.023306627 ;
	setAttr ".uvtk[155]" -type "float2" -0.14096484 -0.023295108 ;
	setAttr ".uvtk[156]" -type "float2" -0.1743004 -0.036832497 ;
	setAttr ".uvtk[157]" -type "float2" -0.18539262 -0.083024323 ;
	setAttr ".uvtk[158]" -type "float2" -0.1867002 -0.089683741 ;
	setAttr ".uvtk[159]" -type "float2" -0.15642464 -0.095930234 ;
	setAttr ".uvtk[160]" -type "float2" -0.12554905 -0.15041308 ;
	setAttr ".uvtk[161]" -type "float2" -0.11743178 -0.1503451 ;
	setAttr ".uvtk[162]" -type "float2" -0.17313728 -0.030178532 ;
	setAttr ".uvtk[163]" -type "float2" -0.15682402 -0.023501668 ;
	setAttr ".uvtk[164]" -type "float2" -0.13330969 -0.0079321302 ;
	setAttr ".uvtk[165]" -type "float2" -0.14131048 -0.0079255141 ;
	setAttr ".uvtk[166]" -type "float2" -0.1825271 -0.036551058 ;
	setAttr ".uvtk[167]" -type "float2" -0.19363421 -0.082820803 ;
	setAttr ".uvtk[168]" -type "float2" -0.19485345 -0.089503884 ;
	setAttr ".uvtk[169]" -type "float2" -0.18714622 -0.096126601 ;
	setAttr ".uvtk[170]" -type "float2" -0.1561234 -0.15057887 ;
	setAttr ".uvtk[171]" -type "float2" -0.12540624 -0.15737532 ;
	setAttr ".uvtk[172]" -type "float2" -0.11878984 -0.1562231 ;
	setAttr ".uvtk[173]" -type "float2" -0.17268461 -0.023470018 ;
	setAttr ".uvtk[174]" -type "float2" -0.18140626 -0.030070215 ;
	setAttr ".uvtk[175]" -type "float2" -0.15690881 -0.0081255175 ;
	setAttr ".uvtk[176]" -type "float2" -0.13339853 -0.0068039335 ;
	setAttr ".uvtk[177]" -type "float2" -0.14134327 -0.0068303384 ;
	setAttr ".uvtk[178]" -type "float2" -0.19530588 -0.096167997 ;
	setAttr ".uvtk[179]" -type "float2" -0.18669766 -0.15075023 ;
	setAttr ".uvtk[180]" -type "float2" -0.15608478 -0.1575806 ;
	setAttr ".uvtk[181]" -type "float2" -0.17250845 -0.0080974586 ;
	setAttr ".uvtk[182]" -type "float2" -0.18088385 -0.023571942 ;
	setAttr ".uvtk[183]" -type "float2" -0.15691492 -0.0070152469 ;
	setAttr ".uvtk[184]" -type "float2" -0.13393202 -0.0013024956 ;
	setAttr ".uvtk[185]" -type "float2" -0.14148638 -0.0014164597 ;
	setAttr ".uvtk[186]" -type "float2" -0.19481391 -0.15090637 ;
	setAttr ".uvtk[187]" -type "float2" -0.18676373 -0.15771358 ;
	setAttr ".uvtk[188]" -type "float2" -0.18050858 -0.0081923492 ;
	setAttr ".uvtk[189]" -type "float2" -0.17248765 -0.0070021339 ;
	setAttr ".uvtk[190]" -type "float2" -0.15694562 -0.001449883 ;
	setAttr ".uvtk[191]" -type "float2" -0.13648131 0.0021339208 ;
	setAttr ".uvtk[192]" -type "float2" -0.1434063 0.0015938878 ;
	setAttr ".uvtk[193]" -type "float2" -0.19339237 -0.15663438 ;
	setAttr ".uvtk[194]" -type "float2" -0.1804322 -0.0070632733 ;
	setAttr ".uvtk[195]" -type "float2" -0.17240432 -0.0015869662 ;
	setAttr ".uvtk[196]" -type "float2" -0.15696236 0.0015837252 ;
	setAttr ".uvtk[197]" -type "float2" -0.17995942 -0.0015562996 ;
	setAttr ".uvtk[198]" -type "float2" -0.17051771 0.0014444143 ;
	setAttr ".uvtk[199]" -type "float2" -0.17744818 0.0019080043 ;
	setAttr ".uvtk[200]" -type "float2" -0.016891666 -0.12234312 ;
	setAttr ".uvtk[201]" -type "float2" -0.023880012 -0.12144402 ;
	setAttr ".uvtk[202]" -type "float2" -0.0248679 -0.20115297 ;
	setAttr ".uvtk[203]" -type "float2" -0.018173344 -0.20031266 ;
	setAttr ".uvtk[204]" -type "float2" -0.01607997 -0.11642159 ;
	setAttr ".uvtk[205]" -type "float2" -0.02240748 -0.11494303 ;
	setAttr ".uvtk[206]" -type "float2" -0.018161125 -0.20738189 ;
	setAttr ".uvtk[207]" -type "float2" -0.023669727 -0.20634316 ;
	setAttr ".uvtk[208]" -type "float2" -0.0040867403 -0.20038848 ;
	setAttr ".uvtk[209]" -type "float2" -0.0040867403 -0.12254316 ;
	setAttr ".uvtk[210]" -type "float2" -0.0040866807 -0.11661906 ;
	setAttr ".uvtk[211]" -type "float2" -0.015610166 -0.11077596 ;
	setAttr ".uvtk[212]" -type "float2" -0.021272846 -0.10819448 ;
	setAttr ".uvtk[213]" -type "float2" -0.0040867403 -0.20753084 ;
	setAttr ".uvtk[214]" -type "float2" 0.0099999234 -0.20031248 ;
	setAttr ".uvtk[215]" -type "float2" 0.0087181851 -0.12234303 ;
	setAttr ".uvtk[216]" -type "float2" 0.0079065487 -0.11642171 ;
	setAttr ".uvtk[217]" -type "float2" -0.0040867403 -0.11080468 ;
	setAttr ".uvtk[218]" -type "float2" -0.015901275 -0.085967578 ;
	setAttr ".uvtk[219]" -type "float2" -0.021940775 -0.08507064 ;
	setAttr ".uvtk[220]" -type "float2" 0.0099877045 -0.20738183 ;
	setAttr ".uvtk[221]" -type "float2" 0.016684853 -0.20038377 ;
	setAttr ".uvtk[222]" -type "float2" 0.015716128 -0.1222133 ;
	setAttr ".uvtk[223]" -type "float2" 0.014234059 -0.11494309 ;
	setAttr ".uvtk[224]" -type "float2" 0.0074367449 -0.11077596 ;
	setAttr ".uvtk[225]" -type "float2" -0.0040867403 -0.085667819 ;
	setAttr ".uvtk[226]" -type "float2" -0.016559429 -0.079883508 ;
	setAttr ".uvtk[227]" -type "float2" -0.023359306 -0.079951473 ;
	setAttr ".uvtk[228]" -type "float2" 0.015496187 -0.2063431 ;
	setAttr ".uvtk[229]" -type "float2" 0.013099425 -0.10819451 ;
	setAttr ".uvtk[230]" -type "float2" 0.0077279136 -0.085967578 ;
	setAttr ".uvtk[231]" -type "float2" -0.0040866211 -0.079543598 ;
	setAttr ".uvtk[232]" -type "float2" -0.017032571 -0.074179143 ;
	setAttr ".uvtk[233]" -type "float2" -0.024069495 -0.07386601 ;
	setAttr ".uvtk[234]" -type "float2" 0.013767414 -0.08507064 ;
	setAttr ".uvtk[235]" -type "float2" 0.008386068 -0.079883464 ;
	setAttr ".uvtk[236]" -type "float2" -0.0040872172 -0.073915988 ;
	setAttr ".uvtk[237]" -type "float2" -0.017082699 -0.073533803 ;
	setAttr ".uvtk[238]" -type "float2" -0.024143465 -0.073151827 ;
	setAttr ".uvtk[239]" -type "float2" 0.015185885 -0.079951473 ;
	setAttr ".uvtk[240]" -type "float2" 0.0088589117 -0.074179411 ;
	setAttr ".uvtk[241]" -type "float2" -0.0040861443 -0.073286027 ;
	setAttr ".uvtk[242]" -type "float2" -0.017125256 -0.072701544 ;
	setAttr ".uvtk[243]" -type "float2" -0.024203129 -0.072298557 ;
	setAttr ".uvtk[244]" -type "float2" 0.015896134 -0.07386595 ;
	setAttr ".uvtk[245]" -type "float2" 0.0089096949 -0.073533386 ;
	setAttr ".uvtk[246]" -type "float2" -0.0040866807 -0.072474778 ;
	setAttr ".uvtk[247]" -type "float2" -0.01757092 -0.046398606 ;
	setAttr ".uvtk[248]" -type "float2" -0.024739869 -0.045946952 ;
	setAttr ".uvtk[249]" -type "float2" 0.015970103 -0.073151886 ;
	setAttr ".uvtk[250]" -type "float2" 0.0089515373 -0.072701752 ;
	setAttr ".uvtk[251]" -type "float2" -0.0040875152 -0.046289917 ;
	setAttr ".uvtk[252]" -type "float2" -0.017591424 -0.044918086 ;
	setAttr ".uvtk[253]" -type "float2" -0.024764068 -0.044459488 ;
	setAttr ".uvtk[254]" -type "float2" 0.016029708 -0.072298527 ;
	setAttr ".uvtk[255]" -type "float2" 0.0093979165 -0.046398547 ;
	setAttr ".uvtk[256]" -type "float2" -0.0040858462 -0.04481044 ;
	setAttr ".uvtk[257]" -type "float2" -0.017698832 -0.036455333 ;
	setAttr ".uvtk[258]" -type "float2" -0.024884589 -0.036004215 ;
	setAttr ".uvtk[259]" -type "float2" 0.016566418 -0.045946952 ;
	setAttr ".uvtk[260]" -type "float2" 0.0094178244 -0.044918116 ;
	setAttr ".uvtk[261]" -type "float2" -0.0040868595 -0.036346823 ;
	setAttr ".uvtk[262]" -type "float2" -0.017722555 -0.034646034 ;
	setAttr ".uvtk[263]" -type "float2" -0.024912722 -0.03420651 ;
	setAttr ".uvtk[264]" -type "float2" 0.016590618 -0.044459458 ;
	setAttr ".uvtk[265]" -type "float2" 0.0095254108 -0.036455423 ;
	setAttr ".uvtk[266]" -type "float2" -0.0040866211 -0.034535587 ;
	setAttr ".uvtk[267]" -type "float2" -0.017992146 -0.018200606 ;
	setAttr ".uvtk[268]" -type "float2" -0.025305636 -0.017824233 ;
	setAttr ".uvtk[269]" -type "float2" 0.016711198 -0.036004215 ;
	setAttr ".uvtk[270]" -type "float2" 0.0095490143 -0.034646004 ;
	setAttr ".uvtk[271]" -type "float2" -0.0040866807 -0.018063068 ;
	setAttr ".uvtk[272]" -type "float2" -0.017999299 -0.016412601 ;
	setAttr ".uvtk[273]" -type "float2" -0.02543474 -0.016055226 ;
	setAttr ".uvtk[274]" -type "float2" 0.016739212 -0.03420651 ;
	setAttr ".uvtk[275]" -type "float2" 0.0098187253 -0.018200576 ;
	setAttr ".uvtk[276]" -type "float2" -0.0041241124 -0.016275167 ;
	setAttr ".uvtk[277]" -type "float2" 0.017132185 -0.017824233 ;
	setAttr ".uvtk[278]" -type "float2" 0.00986325 -0.016413152 ;
	setAttr ".uvtk[279]" -type "float2" 0.017261229 -0.016055286 ;
	setAttr ".uvtk[280]" -type "float2" -0.16755824 -0.23489289 ;
	setAttr ".uvtk[281]" -type "float2" -0.16586332 -0.24064885 ;
	setAttr ".uvtk[282]" -type "float2" -0.13337962 -0.23547386 ;
	setAttr ".uvtk[283]" -type "float2" -0.13419835 -0.22940581 ;
	setAttr ".uvtk[284]" -type "float2" -0.17140584 -0.24215697 ;
	setAttr ".uvtk[285]" -type "float2" -0.17460875 -0.23766409 ;
	setAttr ".uvtk[286]" -type "float2" -0.16402738 -0.250907 ;
	setAttr ".uvtk[287]" -type "float2" -0.1319993 -0.24584691 ;
	setAttr ".uvtk[288]" -type "float2" -0.12690489 -0.23538105 ;
	setAttr ".uvtk[289]" -type "float2" -0.12816934 -0.2299854 ;
	setAttr ".uvtk[290]" -type "float2" -0.16960888 -0.25178862 ;
	setAttr ".uvtk[291]" -type "float2" -0.18017177 -0.23916577 ;
	setAttr ".uvtk[292]" -type "float2" -0.17672293 -0.24344413 ;
	setAttr ".uvtk[293]" -type "float2" -0.16261177 -0.26123124 ;
	setAttr ".uvtk[294]" -type "float2" -0.1301146 -0.25614065 ;
	setAttr ".uvtk[295]" -type "float2" -0.12593268 -0.24488859 ;
	setAttr ".uvtk[296]" -type "float2" -0.16834919 -0.26150525 ;
	setAttr ".uvtk[297]" -type "float2" -0.17499487 -0.25263959 ;
	setAttr ".uvtk[298]" -type "float2" -0.18501906 -0.23906647 ;
	setAttr ".uvtk[299]" -type "float2" -0.1842746 -0.24515466 ;
	setAttr ".uvtk[300]" -type "float2" -0.16244952 -0.26722956 ;
	setAttr ".uvtk[301]" -type "float2" -0.129023 -0.26216531 ;
	setAttr ".uvtk[302]" -type "float2" -0.12392662 -0.25423282 ;
	setAttr ".uvtk[303]" -type "float2" -0.12021016 -0.24398427 ;
	setAttr ".uvtk[304]" -type "float2" -0.12142722 -0.23579006 ;
	setAttr ".uvtk[305]" -type "float2" -0.17380409 -0.26191992 ;
	setAttr ".uvtk[306]" -type "float2" -0.17001109 -0.26676673 ;
	setAttr ".uvtk[307]" -type "float2" -0.18236952 -0.25380468 ;
	setAttr ".uvtk[308]" -type "float2" -0.12346624 -0.25975549 ;
	setAttr ".uvtk[309]" -type "float2" -0.11884169 -0.25215554 ;
	setAttr ".uvtk[310]" -type "float2" -0.072889142 -0.23711614 ;
	setAttr ".uvtk[311]" -type "float2" -0.074622087 -0.22677581 ;
	setAttr ".uvtk[312]" -type "float2" -0.18151514 -0.26262069 ;
	setAttr ".uvtk[313]" -type "float2" -0.17576604 -0.26705313 ;
	setAttr ".uvtk[314]" -type "float2" -0.18728058 -0.25458044 ;
	setAttr ".uvtk[315]" -type "float2" -0.18857162 -0.24755608 ;
	setAttr ".uvtk[316]" -type "float2" -0.071215264 -0.24746589 ;
	setAttr ".uvtk[317]" -type "float2" -0.076721124 -0.22290836 ;
	setAttr ".uvtk[318]" -type "float2" -0.12354879 -0.23152648 ;
	setAttr ".uvtk[319]" -type "float2" -0.18034665 -0.26864183 ;
	setAttr ".uvtk[320]" -type "float2" -0.18634336 -0.26166087 ;
	setAttr ".uvtk[321]" -type "float2" -0.19178288 -0.25529182 ;
	setAttr ".uvtk[322]" -type "float2" -0.19252329 -0.24750178 ;
	setAttr ".uvtk[323]" -type "float2" -0.11954544 -0.25686479 ;
	setAttr ".uvtk[324]" -type "float2" -0.072341792 -0.25062734 ;
	setAttr ".uvtk[325]" -type "float2" -0.074082188 -0.2254266 ;
	setAttr ".uvtk[326]" -type "float2" -0.076890878 -0.2199686 ;
	setAttr ".uvtk[327]" -type "float2" -0.19008581 -0.26293075 ;
	setAttr ".uvtk[328]" -type "float2" -0.19101219 -0.24293028 ;
	setAttr ".uvtk[329]" -type "float2" -0.18776278 -0.24454854 ;
	setAttr ".uvtk[330]" -type "float2" -0.19699554 -0.24715541 ;
	setAttr ".uvtk[331]" -type "float2" -0.19625191 -0.25599784 ;
	setAttr ".uvtk[332]" -type "float2" -0.071596794 -0.25347674 ;
	setAttr ".uvtk[333]" -type "float2" -0.070607655 -0.24741863 ;
	setAttr ".uvtk[334]" -type "float2" -0.083797202 -0.21797846 ;
	setAttr ".uvtk[335]" -type "float2" -0.08344464 -0.22145216 ;
	setAttr ".uvtk[336]" -type "float2" -0.19423334 -0.26463884 ;
	setAttr ".uvtk[337]" -type "float2" -0.1872391 -0.26681376 ;
	setAttr ".uvtk[338]" -type "float2" -0.18464677 -0.26427263 ;
	setAttr ".uvtk[339]" -type "float2" -0.19699566 -0.24210046 ;
	setAttr ".uvtk[340]" -type "float2" -0.077551596 -0.25749916 ;
	setAttr ".uvtk[341]" -type "float2" -0.078289494 -0.25408536 ;
	setAttr ".uvtk[342]" -type "float2" -0.16451482 -0.22642814 ;
	setAttr ".uvtk[343]" -type "float2" -0.16416483 -0.2298914 ;
	setAttr ".uvtk[344]" -type "float2" -0.19267528 -0.26944774 ;
	setAttr ".uvtk[345]" -type "float2" -0.19733076 -0.23962115 ;
	setAttr ".uvtk[346]" -type "float2" -0.1973242 -0.24536501 ;
	setAttr ".uvtk[347]" -type "float2" -0.15694644 -0.2743445 ;
	setAttr ".uvtk[348]" -type "float2" -0.15768315 -0.27094138 ;
	setAttr ".uvtk[349]" -type "float2" -0.17120938 -0.22817795 ;
	setAttr ".uvtk[350]" -type "float2" -0.17093043 -0.23115586 ;
	setAttr ".uvtk[351]" -type "float2" -0.19399433 -0.26644349 ;
	setAttr ".uvtk[352]" -type "float2" -0.19223003 -0.27190959 ;
	setAttr ".uvtk[353]" -type "float2" -0.19295745 -0.23575829 ;
	setAttr ".uvtk[354]" -type "float2" -0.19269459 -0.23844098 ;
	setAttr ".uvtk[355]" -type "float2" -0.16385524 -0.27474338 ;
	setAttr ".uvtk[356]" -type "float2" -0.16450779 -0.27182448 ;
	setAttr ".uvtk[357]" -type "float2" -0.17870514 -0.23089282 ;
	setAttr ".uvtk[358]" -type "float2" -0.17845099 -0.23356836 ;
	setAttr ".uvtk[359]" -type "float2" -0.18687908 -0.27423626 ;
	setAttr ".uvtk[360]" -type "float2" -0.18745582 -0.27160299 ;
	setAttr ".uvtk[361]" -type "float2" -0.17182164 -0.27447122 ;
	setAttr ".uvtk[362]" -type "float2" -0.17240469 -0.27184772 ;
	setAttr ".uvtk[465]" -type "float2" -0.12244436 -0.44637153 ;
	setAttr ".uvtk[466]" -type "float2" -0.11864753 -0.44671211 ;
	setAttr ".uvtk[467]" -type "float2" -0.11854454 -0.44600651 ;
	setAttr ".uvtk[468]" -type "float2" -0.12229261 -0.44557402 ;
	setAttr ".uvtk[469]" -type "float2" -0.11392646 -0.42007324 ;
	setAttr ".uvtk[470]" -type "float2" -0.11804228 -0.42082927 ;
	setAttr ".uvtk[471]" -type "float2" -0.11370688 -0.4187344 ;
	setAttr ".uvtk[472]" -type "float2" -0.11781811 -0.41947386 ;
	setAttr ".uvtk[473]" -type "float2" -0.11239322 -0.41054425 ;
	setAttr ".uvtk[474]" -type "float2" -0.11659288 -0.41166028 ;
	setAttr ".uvtk[475]" -type "float2" -0.11215054 -0.4087548 ;
	setAttr ".uvtk[476]" -type "float2" -0.11636698 -0.41003487 ;
	setAttr ".uvtk[477]" -type "float2" -0.11024251 -0.39299211 ;
	setAttr ".uvtk[478]" -type "float2" -0.11466398 -0.39488873 ;
	setAttr ".uvtk[479]" -type "float2" -0.1100307 -0.39130041 ;
	setAttr ".uvtk[480]" -type "float2" -0.11448117 -0.39325735 ;
	setAttr ".uvtk[481]" -type "float2" -0.063850649 -0.16535731 ;
	setAttr ".uvtk[482]" -type "float2" -0.063829683 -0.1571876 ;
	setAttr ".uvtk[483]" -type "float2" -0.11097344 -0.15721993 ;
	setAttr ".uvtk[484]" -type "float2" -0.11094125 -0.16538946 ;
	setAttr ".uvtk[485]" -type "float2" -0.057357866 -0.16516475 ;
	setAttr ".uvtk[486]" -type "float2" -0.058467045 -0.15839733 ;
	setAttr ".uvtk[487]" -type "float2" -0.11743426 -0.16520415 ;
	setAttr ".uvtk[488]" -type "float2" -0.11633437 -0.15843622 ;
	setAttr ".uvtk[489]" -type "float2" -0.11104163 -0.19602115 ;
	setAttr ".uvtk[490]" -type "float2" -0.063708313 -0.19598879 ;
	setAttr ".uvtk[491]" -type "float2" -0.057103086 -0.19598426 ;
	setAttr ".uvtk[492]" -type "float2" -0.11764687 -0.19602574 ;
	setAttr ".uvtk[493]" -type "float2" -0.063808657 -0.22662033 ;
	setAttr ".uvtk[494]" -type "float2" -0.11089929 -0.22665276 ;
	setAttr ".uvtk[495]" -type "float2" -0.057315622 -0.22680409 ;
	setAttr ".uvtk[496]" -type "float2" -0.11739203 -0.22684701 ;
	setAttr ".uvtk[497]" -type "float2" -0.11092516 -0.23482241 ;
	setAttr ".uvtk[498]" -type "float2" -0.063771598 -0.23479004 ;
	setAttr ".uvtk[499]" -type "float2" -0.058415547 -0.23357303 ;
	setAttr ".uvtk[500]" -type "float2" -0.11628287 -0.23361339 ;
	setAttr ".uvtk[501]" -type "float2" -0.031142242 -0.21691845 ;
	setAttr ".uvtk[502]" -type "float2" -0.031852476 -0.20976488 ;
	setAttr ".uvtk[503]" -type "float2" -0.061451659 -0.21457992 ;
	setAttr ".uvtk[504]" -type "float2" -0.060777649 -0.22184239 ;
	setAttr ".uvtk[505]" -type "float2" -0.023801453 -0.21504007 ;
	setAttr ".uvtk[506]" -type "float2" -0.025666125 -0.20975934 ;
	setAttr ".uvtk[507]" -type "float2" -0.067384467 -0.2229638 ;
	setAttr ".uvtk[508]" -type "float2" -0.068325981 -0.21574478 ;
	setAttr ".uvtk[509]" -type "float2" -0.058510765 -0.23528115 ;
	setAttr ".uvtk[510]" -type "float2" -0.028485127 -0.2301778 ;
	setAttr ".uvtk[511]" -type "float2" -0.021176644 -0.22893558 ;
	setAttr ".uvtk[512]" -type "float2" -0.065122828 -0.236405 ;
	setAttr ".uvtk[513]" -type "float2" -0.074947648 -0.21670209 ;
	setAttr ".uvtk[514]" -type "float2" -0.074041776 -0.22404842 ;
	setAttr ".uvtk[515]" -type "float2" -0.056210265 -0.24871419 ;
	setAttr ".uvtk[516]" -type "float2" -0.026612289 -0.24357037 ;
	setAttr ".uvtk[517]" -type "float2" -0.019063063 -0.24291806 ;
	setAttr ".uvtk[518]" -type "float2" -0.062816605 -0.24983875 ;
	setAttr ".uvtk[519]" -type "float2" -0.071776859 -0.237536 ;
	setAttr ".uvtk[520]" -type "float2" -0.054446988 -0.25579125 ;
	setAttr ".uvtk[521]" -type "float2" -0.0249191 -0.2505573 ;
	setAttr ".uvtk[522]" -type "float2" -0.019078381 -0.24851827 ;
	setAttr ".uvtk[523]" -type "float2" -0.069458418 -0.25101441 ;
	setAttr ".uvtk[524]" -type "float2" -0.061320171 -0.25696349 ;
	setAttr ".uvtk[525]" -type "float2" -0.067886218 -0.25824755 ;
	setAttr ".uvtk[534]" -type "float2" -0.024758525 -0.013602227 ;
	setAttr ".uvtk[535]" -type "float2" -0.01799763 -0.012068495 ;
	setAttr ".uvtk[536]" -type "float2" -0.024696775 -0.009423919 ;
	setAttr ".uvtk[537]" -type "float2" -0.0042077973 -0.011918634 ;
	setAttr ".uvtk[538]" -type "float2" -0.027673788 -0.0067318175 ;
	setAttr ".uvtk[539]" -type "float2" -0.027611084 -0.0030080024 ;
	setAttr ".uvtk[540]" -type "float2" 0.0096386597 -0.016118802 ;
	setAttr ".uvtk[541]" -type "float2" 0.0095820948 -0.011775415 ;
	setAttr ".uvtk[542]" -type "float2" 0.016373985 -0.013165083 ;
	setAttr ".uvtk[543]" -type "float2" 0.016223542 -0.0089890286 ;
	setAttr ".uvtk[544]" -type "float2" 0.01914259 -0.0062343124 ;
	setAttr ".uvtk[545]" -type "float2" 0.019000851 -0.0025126357 ;
	setAttr ".uvtk[546]" -type "float2" -0.088926747 0.061328314 ;
	setAttr ".uvtk[547]" -type "float2" -0.092585966 0.058660727 ;
	setAttr ".uvtk[548]" -type "float2" -0.094891056 0.05498518 ;
	setAttr ".uvtk[549]" -type "float2" -0.088636473 0.05799507 ;
	setAttr ".uvtk[550]" -type "float2" -0.11792543 0.058594652 ;
	setAttr ".uvtk[551]" -type "float2" -0.11905076 0.05491361 ;
	setAttr ".uvtk[645]" -type "float2" 0.068451077 0.014519901 ;
	setAttr ".uvtk[646]" -type "float2" 0.068451077 0.014519901 ;
	setAttr ".uvtk[647]" -type "float2" 0.068451077 0.014519961 ;
	setAttr ".uvtk[648]" -type "float2" 0.068451077 0.014519961 ;
	setAttr ".uvtk[649]" -type "float2" 0.068451077 0.014519961 ;
	setAttr ".uvtk[650]" -type "float2" 0.068451077 0.014519961 ;
	setAttr ".uvtk[651]" -type "float2" 0.068451077 0.014519961 ;
	setAttr ".uvtk[652]" -type "float2" 0.068451077 0.014519961 ;
	setAttr ".uvtk[653]" -type "float2" 0.068451077 0.014519901 ;
	setAttr ".uvtk[654]" -type "float2" 0.068451077 0.014519961 ;
	setAttr ".uvtk[655]" -type "float2" 0.068451077 0.014519961 ;
	setAttr ".uvtk[656]" -type "float2" 0.068451077 0.014519961 ;
	setAttr ".uvtk[657]" -type "float2" 0.068451077 0.014519901 ;
	setAttr ".uvtk[658]" -type "float2" 0.068451077 0.014519901 ;
	setAttr ".uvtk[659]" -type "float2" 0.068451077 0.014519901 ;
	setAttr ".uvtk[660]" -type "float2" 0.068451077 0.014519901 ;
	setAttr ".uvtk[661]" -type "float2" 0.068451077 0.014519961 ;
	setAttr ".uvtk[662]" -type "float2" 0.068451077 0.014519901 ;
	setAttr ".uvtk[663]" -type "float2" 0.068451077 0.014519901 ;
	setAttr ".uvtk[664]" -type "float2" 0.068451077 0.014519961 ;
	setAttr ".uvtk[669]" -type "float2" -0.12015426 -0.036046248 ;
	setAttr ".uvtk[670]" -type "float2" -0.12015426 -0.036046308 ;
	setAttr ".uvtk[671]" -type "float2" -0.12015426 -0.036046308 ;
	setAttr ".uvtk[672]" -type "float2" -0.12015426 -0.036046308 ;
	setAttr ".uvtk[685]" -type "float2" -0.066221751 -0.08319205 ;
	setAttr ".uvtk[686]" -type "float2" -0.059537858 -0.082376927 ;
	setAttr ".uvtk[687]" -type "float2" -0.071977459 -0.035649031 ;
	setAttr ".uvtk[688]" -type "float2" -0.078627899 -0.0365704 ;
	setAttr ".uvtk[689]" -type "float2" -0.064720832 -0.089713335 ;
	setAttr ".uvtk[690]" -type "float2" -0.0580948 -0.08912766 ;
	setAttr ".uvtk[691]" -type "float2" -0.08018373 -0.029907644 ;
	setAttr ".uvtk[692]" -type "float2" -0.073285408 -0.029444635 ;
	setAttr ".uvtk[693]" -type "float2" -0.10998588 -0.083231509 ;
	setAttr ".uvtk[694]" -type "float2" -0.10536347 -0.036575392 ;
	setAttr ".uvtk[695]" -type "float2" -0.11052649 -0.089674592 ;
	setAttr ".uvtk[696]" -type "float2" -0.064117037 -0.096058205 ;
	setAttr ".uvtk[697]" -type "float2" -0.10518135 -0.029791668 ;
	setAttr ".uvtk[698]" -type "float2" -0.074531816 -0.023115594 ;
	setAttr ".uvtk[699]" -type "float2" -0.081515059 -0.023256708 ;
	setAttr ".uvtk[700]" -type "float2" -0.11655366 -0.082413316 ;
	setAttr ".uvtk[701]" -type "float2" -0.1120268 -0.035906658 ;
	setAttr ".uvtk[702]" -type "float2" -0.11713209 -0.089198709 ;
	setAttr ".uvtk[703]" -type "float2" -0.11077978 -0.096091375 ;
	setAttr ".uvtk[704]" -type "float2" -0.06407205 -0.15000699 ;
	setAttr ".uvtk[705]" -type "float2" -0.11209702 -0.029561147 ;
	setAttr ".uvtk[706]" -type "float2" -0.10585682 -0.023206059 ;
	setAttr ".uvtk[707]" -type "float2" -0.07668595 -0.007998053 ;
	setAttr ".uvtk[708]" -type "float2" -0.083667919 -0.0077953525 ;
	setAttr ".uvtk[709]" -type "float2" -0.11073624 -0.1500407 ;
	setAttr ".uvtk[710]" -type "float2" -0.058494478 -0.15621375 ;
	setAttr ".uvtk[711]" -type "float2" -0.1128106 -0.023188088 ;
	setAttr ".uvtk[712]" -type "float2" -0.1078531 -0.0077810325 ;
	setAttr ".uvtk[713]" -type "float2" -0.076886609 -0.0068908669 ;
	setAttr ".uvtk[714]" -type "float2" -0.083869115 -0.0066800006 ;
	setAttr ".uvtk[715]" -type "float2" -0.1148169 -0.0078459121 ;
	setAttr ".uvtk[716]" -type "float2" -0.10804661 -0.0066655017 ;
	setAttr ".uvtk[717]" -type "float2" -0.077892169 -0.0013238341 ;
	setAttr ".uvtk[718]" -type "float2" -0.084875241 -0.0010824949 ;
	setAttr ".uvtk[719]" -type "float2" -0.1163001 -0.15625153 ;
	setAttr ".uvtk[720]" -type "float2" -0.1150056 -0.0067342706 ;
	setAttr ".uvtk[721]" -type "float2" -0.10902183 -0.0010810494 ;
	setAttr ".uvtk[722]" -type "float2" -0.078195766 0.00036613643 ;
	setAttr ".uvtk[723]" -type "float2" -0.085179433 0.00061561167 ;
	setAttr ".uvtk[724]" -type "float2" -0.11593833 -0.0011605173 ;
	setAttr ".uvtk[725]" -type "float2" -0.10932633 0.0006121248 ;
	setAttr ".uvtk[726]" -type "float2" -0.081022993 0.016126782 ;
	setAttr ".uvtk[727]" -type "float2" -0.0880128 0.016443066 ;
	setAttr ".uvtk[728]" -type "float2" -0.11216529 0.01642026 ;
	setAttr ".uvtk[729]" -type "float2" -0.081340536 0.01787664 ;
	setAttr ".uvtk[730]" -type "float2" -0.088327035 0.018202811 ;
	setAttr ".uvtk[731]" -type "float2" -0.1124801 0.018178172 ;
	setAttr ".uvtk[732]" -type "float2" -0.082808092 0.026096597 ;
	setAttr ".uvtk[733]" -type "float2" -0.089807108 0.026471272 ;
	setAttr ".uvtk[734]" -type "float2" -0.11395653 0.026441097 ;
	setAttr ".uvtk[735]" -type "float2" -0.083066508 0.027541555 ;
	setAttr ".uvtk[736]" -type "float2" -0.090064898 0.027926005 ;
	setAttr ".uvtk[737]" -type "float2" -0.1142165 0.027894296 ;
	setAttr ".uvtk[738]" -type "float2" -0.087676004 0.053630318 ;
	setAttr ".uvtk[739]" -type "float2" -0.09472616 0.054146517 ;
	setAttr ".uvtk[740]" -type "float2" -0.11891176 0.054073814 ;
	setAttr ".uvtk[741]" -type "float2" -0.087814108 0.05446725 ;
	setAttr ".uvtk[742]" -type "float2" -0.052953474 -0.090204991 ;
	setAttr ".uvtk[743]" -type "float2" -0.061110005 -0.092562892 ;
	setAttr ".uvtk[744]" -type "float2" -0.041167431 -0.10945068 ;
	setAttr ".uvtk[745]" -type "float2" -0.030969985 -0.10824204 ;
	setAttr ".uvtk[746]" -type "float2" -0.064977869 -0.087405093 ;
	setAttr ".uvtk[747]" -type "float2" -0.057270393 -0.085275143 ;
	setAttr ".uvtk[748]" -type "float2" -0.084482536 -0.096861757 ;
	setAttr ".uvtk[749]" -type "float2" -0.065394625 -0.11325438 ;
	setAttr ".uvtk[750]" -type "float2" -0.033988468 -0.11508066 ;
	setAttr ".uvtk[751]" -type "float2" -0.025819071 -0.11408121 ;
	setAttr ".uvtk[752]" -type "float2" -0.090687186 -0.09087152 ;
	setAttr ".uvtk[753]" -type "float2" -0.060065255 -0.079255544 ;
	setAttr ".uvtk[754]" -type "float2" -0.067540631 -0.080662929 ;
	setAttr ".uvtk[755]" -type "float2" -0.092960618 -0.098795749 ;
	setAttr ".uvtk[756]" -type "float2" -0.073598437 -0.11413736 ;
	setAttr ".uvtk[757]" -type "float2" -0.06187211 -0.11861608 ;
	setAttr ".uvtk[758]" -type "float2" -0.031168886 -0.12148643 ;
	setAttr ".uvtk[759]" -type "float2" -0.094135664 -0.084915936 ;
	setAttr ".uvtk[760]" -type "float2" -0.10006388 -0.092639782 ;
	setAttr ".uvtk[761]" -type "float2" -0.060377702 -0.078582577 ;
	setAttr ".uvtk[762]" -type "float2" -0.067825183 -0.079914473 ;
	setAttr ".uvtk[763]" -type "float2" -0.099251114 -0.10246117 ;
	setAttr ".uvtk[764]" -type "float2" -0.084730849 -0.11477453 ;
	setAttr ".uvtk[765]" -type "float2" -0.069163673 -0.11992431 ;
	setAttr ".uvtk[766]" -type "float2" -0.06071423 -0.1261763 ;
	setAttr ".uvtk[767]" -type "float2" -0.032035403 -0.20247833 ;
	setAttr ".uvtk[768]" -type "float2" -0.094517432 -0.084254503 ;
	setAttr ".uvtk[769]" -type "float2" -0.10183533 -0.085674107 ;
	setAttr ".uvtk[770]" -type "float2" -0.10520823 -0.098620363 ;
	setAttr ".uvtk[771]" -type "float2" -0.060688838 -0.077765994 ;
	setAttr ".uvtk[772]" -type "float2" -0.068128809 -0.079091139 ;
	setAttr ".uvtk[773]" -type "float2" -0.077139907 -0.12078834 ;
	setAttr ".uvtk[774]" -type "float2" -0.067259774 -0.1270563 ;
	setAttr ".uvtk[775]" -type "float2" -0.061399922 -0.20723115 ;
	setAttr ".uvtk[776]" -type "float2" -0.026002236 -0.20803617 ;
	setAttr ".uvtk[777]" -type "float2" -0.072855763 -0.076349884 ;
	setAttr ".uvtk[778]" -type "float2" -0.097797774 -0.080376275 ;
	setAttr ".uvtk[779]" -type "float2" -0.10203148 -0.084904253 ;
	setAttr ".uvtk[780]" -type "float2" -0.070350759 -0.052219898 ;
	setAttr ".uvtk[781]" -type "float2" -0.077760331 -0.053545535 ;
	setAttr ".uvtk[782]" -type "float2" -0.073144667 -0.075589523 ;
	setAttr ".uvtk[783]" -type "float2" -0.074207596 -0.12768662 ;
	setAttr ".uvtk[784]" -type "float2" -0.068351373 -0.20820509 ;
	setAttr ".uvtk[785]" -type "float2" -0.10215051 -0.081155665 ;
	setAttr ".uvtk[786]" -type "float2" -0.070880525 -0.050805926 ;
	setAttr ".uvtk[787]" -type "float2" -0.078295812 -0.052128285 ;
	setAttr ".uvtk[788]" -type "float2" -0.082180485 -0.051655173 ;
	setAttr ".uvtk[789]" -type "float2" -0.074784867 -0.20861344 ;
	setAttr ".uvtk[790]" -type "float2" -0.068160996 -0.21540038 ;
	setAttr ".uvtk[791]" -type "float2" -0.073912553 -0.04276013 ;
	setAttr ".uvtk[792]" -type "float2" -0.081293687 -0.044046786 ;
	setAttr ".uvtk[793]" -type "float2" -0.082675561 -0.050315738 ;
	setAttr ".uvtk[794]" -type "float2" -0.074536137 -0.21579425 ;
	setAttr ".uvtk[795]" -type "float2" -0.074548535 -0.041053593 ;
	setAttr ".uvtk[796]" -type "float2" -0.081931695 -0.042325318 ;
	setAttr ".uvtk[797]" -type "float2" -0.085460886 -0.042719629 ;
	setAttr ".uvtk[798]" -type "float2" -0.080220446 -0.025588483 ;
	setAttr ".uvtk[799]" -type "float2" -0.087598547 -0.026841372 ;
	setAttr ".uvtk[800]" -type "float2" -0.086053118 -0.041108638 ;
	setAttr ".uvtk[801]" -type "float2" -0.080820665 -0.023925871 ;
	setAttr ".uvtk[802]" -type "float2" -0.088206679 -0.025174379 ;
	setAttr ".uvtk[803]" -type "float2" -0.091388136 -0.026602775 ;
	setAttr ".uvtk[804]" -type "float2" -0.091978222 -0.025038242 ;
	setAttr ".uvtk[805]" -type "float2" 0.15382099 -6.0535967e-09 ;
	setAttr ".uvtk[806]" -type "float2" 0.15382105 -6.0535967e-09 ;
	setAttr ".uvtk[807]" -type "float2" 0.15382099 -6.0535967e-09 ;
	setAttr ".uvtk[808]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[809]" -type "float2" 0.15382099 -6.0535967e-09 ;
	setAttr ".uvtk[810]" -type "float2" 0.15382105 -6.0535967e-09 ;
	setAttr ".uvtk[811]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[812]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[813]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[814]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[815]" -type "float2" 0.15382105 -6.0535967e-09 ;
	setAttr ".uvtk[816]" -type "float2" 0.15382099 -6.0535967e-09 ;
	setAttr ".uvtk[817]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[818]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[819]" -type "float2" 0.15382099 -6.0535967e-09 ;
	setAttr ".uvtk[820]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[821]" -type "float2" 0.15382099 -6.0535967e-09 ;
	setAttr ".uvtk[822]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[823]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[824]" -type "float2" 0.15382099 -6.0535967e-09 ;
	setAttr ".uvtk[825]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[854]" -type "float2" 0.016594233 0.11408519 ;
	setAttr ".uvtk[855]" -type "float2" 0.016594233 0.11408519 ;
	setAttr ".uvtk[856]" -type "float2" 0.016594233 0.11408519 ;
	setAttr ".uvtk[857]" -type "float2" 0.016594233 0.11408519 ;
	setAttr ".uvtk[858]" -type "float2" 0.016594233 0.11408519 ;
	setAttr ".uvtk[859]" -type "float2" 0.016594233 0.11408519 ;
	setAttr ".uvtk[860]" -type "float2" 0.016594233 0.11408519 ;
	setAttr ".uvtk[861]" -type "float2" 0.016594233 0.11408519 ;
	setAttr ".uvtk[862]" -type "float2" -0.066061728 -0.30879572 ;
	setAttr ".uvtk[863]" -type "float2" -0.078410104 -0.35543868 ;
	setAttr ".uvtk[864]" -type "float2" -0.071754821 -0.35635063 ;
	setAttr ".uvtk[865]" -type "float2" -0.059377983 -0.30960438 ;
	setAttr ".uvtk[866]" -type "float2" -0.10983475 -0.30881158 ;
	setAttr ".uvtk[867]" -type "float2" -0.1051531 -0.35546455 ;
	setAttr ".uvtk[868]" -type "float2" -0.079959497 -0.36210379 ;
	setAttr ".uvtk[869]" -type "float2" -0.073051117 -0.3625612 ;
	setAttr ".uvtk[870]" -type "float2" -0.05794166 -0.30285034 ;
	setAttr ".uvtk[871]" -type "float2" -0.064568289 -0.30227318 ;
	setAttr ".uvtk[872]" -type "float2" -0.1164025 -0.30963948 ;
	setAttr ".uvtk[873]" -type "float2" -0.11181965 -0.35613903 ;
	setAttr ".uvtk[874]" -type "float2" -0.10496344 -0.36224696 ;
	setAttr ".uvtk[875]" -type "float2" -0.11038443 -0.30236986 ;
	setAttr ".uvtk[876]" -type "float2" -0.074297987 -0.36889455 ;
	setAttr ".uvtk[877]" -type "float2" -0.081281796 -0.3687571 ;
	setAttr ".uvtk[878]" -type "float2" -0.057221074 -0.29600421 ;
	setAttr ".uvtk[879]" -type "float2" -0.063974567 -0.29592738 ;
	setAttr ".uvtk[880]" -type "float2" -0.11188724 -0.36248419 ;
	setAttr ".uvtk[881]" -type "float2" -0.11699402 -0.30285415 ;
	setAttr ".uvtk[882]" -type "float2" -0.10563873 -0.36883542 ;
	setAttr ".uvtk[883]" -type "float2" -0.11064493 -0.29595402 ;
	setAttr ".uvtk[884]" -type "float2" -0.083416507 -0.38421938 ;
	setAttr ".uvtk[885]" -type "float2" -0.076439224 -0.38400814 ;
	setAttr ".uvtk[886]" -type "float2" -0.057304297 -0.24180482 ;
	setAttr ".uvtk[887]" -type "float2" -0.064002 -0.24197201 ;
	setAttr ".uvtk[888]" -type "float2" -0.11259567 -0.36886331 ;
	setAttr ".uvtk[889]" -type "float2" -0.11740785 -0.29604498 ;
	setAttr ".uvtk[890]" -type "float2" -0.10761957 -0.38427147 ;
	setAttr ".uvtk[891]" -type "float2" -0.11067884 -0.24200182 ;
	setAttr ".uvtk[892]" -type "float2" -0.083617672 -0.38533327 ;
	setAttr ".uvtk[893]" -type "float2" -0.076638386 -0.38511452 ;
	setAttr ".uvtk[894]" -type "float2" -0.058426604 -0.23575909 ;
	setAttr ".uvtk[895]" -type "float2" -0.11457994 -0.3842214 ;
	setAttr ".uvtk[896]" -type "float2" -0.11737361 -0.24184231 ;
	setAttr ".uvtk[897]" -type "float2" -0.10781114 -0.38538548 ;
	setAttr ".uvtk[898]" -type "float2" -0.084614649 -0.3909348 ;
	setAttr ".uvtk[899]" -type "float2" -0.077635363 -0.39067897 ;
	setAttr ".uvtk[900]" -type "float2" -0.11476319 -0.38533589 ;
	setAttr ".uvtk[901]" -type "float2" -0.11625683 -0.23580147 ;
	setAttr ".uvtk[902]" -type "float2" -0.10877474 -0.39097223 ;
	setAttr ".uvtk[903]" -type "float2" -0.084917232 -0.39262888 ;
	setAttr ".uvtk[904]" -type "float2" -0.07793735 -0.39236853 ;
	setAttr ".uvtk[905]" -type "float2" -0.11566298 -0.39090547 ;
	setAttr ".uvtk[906]" -type "float2" -0.10907556 -0.39266703 ;
	setAttr ".uvtk[907]" -type "float2" -0.087732807 -0.40846309 ;
	setAttr ".uvtk[908]" -type "float2" -0.080735043 -0.40812835 ;
	setAttr ".uvtk[909]" -type "float2" -0.11186924 -0.40848157 ;
	setAttr ".uvtk[910]" -type "float2" -0.088044658 -0.41021928 ;
	setAttr ".uvtk[911]" -type "float2" -0.081041172 -0.40987942 ;
	setAttr ".uvtk[912]" -type "float2" -0.11218023 -0.41023883 ;
	setAttr ".uvtk[913]" -type "float2" -0.089504763 -0.41849527 ;
	setAttr ".uvtk[914]" -type "float2" -0.082493797 -0.41811237 ;
	setAttr ".uvtk[915]" -type "float2" -0.11364763 -0.4184998 ;
	setAttr ".uvtk[916]" -type "float2" -0.089761928 -0.41995177 ;
	setAttr ".uvtk[917]" -type "float2" -0.082750216 -0.41956028 ;
	setAttr ".uvtk[918]" -type "float2" -0.094390079 -0.44617221 ;
	setAttr ".uvtk[919]" -type "float2" -0.087348625 -0.44565234 ;
	setAttr ".uvtk[920]" -type "float2" -0.094540343 -0.44701275 ;
	setAttr ".uvtk[921]" -type "float2" -0.087486222 -0.44648883 ;
	setAttr ".uvtk[922]" -type "float2" -0.1187167 -0.44696602 ;
	setAttr ".uvtk[923]" -type "float2" -0.0053391531 -0.37037671 ;
	setAttr ".uvtk[924]" -type "float2" 0.0094534084 -0.3460896 ;
	setAttr ".uvtk[925]" -type "float2" -0.00057203323 -0.34831744 ;
	setAttr ".uvtk[926]" -type "float2" -0.013816543 -0.3708452 ;
	setAttr ".uvtk[927]" -type "float2" 0.012386255 -0.33887583 ;
	setAttr ".uvtk[928]" -type "float2" 0.0043442175 -0.34063166 ;
	setAttr ".uvtk[929]" -type "float2" -0.024695285 -0.35273039 ;
	setAttr ".uvtk[930]" -type "float2" -0.03729587 -0.3745082 ;
	setAttr ".uvtk[931]" -type "float2" -0.015762992 -0.37699097 ;
	setAttr ".uvtk[932]" -type "float2" -0.007785745 -0.37645584 ;
	setAttr ".uvtk[933]" -type "float2" 0.012046568 -0.3320086 ;
	setAttr ".uvtk[934]" -type "float2" 0.0048893616 -0.33365375 ;
	setAttr ".uvtk[935]" -type "float2" -0.023142822 -0.34650624 ;
	setAttr ".uvtk[936]" -type "float2" -0.032730453 -0.35460711 ;
	setAttr ".uvtk[937]" -type "float2" -0.045936577 -0.37548345 ;
	setAttr ".uvtk[938]" -type "float2" -0.041173331 -0.38221169 ;
	setAttr ".uvtk[939]" -type "float2" -0.0084357336 -0.38306063 ;
	setAttr ".uvtk[940]" -type "float2" -0.015956111 -0.38420111 ;
	setAttr ".uvtk[941]" -type "float2" -0.015745826 -0.25565571 ;
	setAttr ".uvtk[942]" -type "float2" -0.022685416 -0.25749558 ;
	setAttr ".uvtk[943]" -type "float2" -0.024546333 -0.33898765 ;
	setAttr ".uvtk[944]" -type "float2" -0.030456848 -0.34768009 ;
	setAttr ".uvtk[945]" -type "float2" -0.043448322 -0.35768348 ;
	setAttr ".uvtk[946]" -type "float2" -0.053084306 -0.37410212 ;
	setAttr ".uvtk[947]" -type "float2" -0.050608329 -0.38364011 ;
	setAttr ".uvtk[948]" -type "float2" -0.04246103 -0.38897175 ;
	setAttr ".uvtk[949]" -type "float2" -0.0085084513 -0.38379896 ;
	setAttr ".uvtk[950]" -type "float2" -0.015977211 -0.38500184 ;
	setAttr ".uvtk[951]" -type "float2" -0.018826075 -0.2502569 ;
	setAttr ".uvtk[952]" -type "float2" -0.051969938 -0.26270998 ;
	setAttr ".uvtk[953]" -type "float2" -0.031016059 -0.34031957 ;
	setAttr ".uvtk[954]" -type "float2" -0.038270049 -0.34949929 ;
	setAttr ".uvtk[955]" -type "float2" -0.057437882 -0.37969422 ;
	setAttr ".uvtk[956]" -type "float2" -0.049978308 -0.3908 ;
	setAttr ".uvtk[957]" -type "float2" -0.042602532 -0.38972229 ;
	setAttr ".uvtk[958]" -type "float2" -0.0085327104 -0.38467246 ;
	setAttr ".uvtk[959]" -type "float2" -0.015991695 -0.38587898 ;
	setAttr ".uvtk[960]" -type "float2" -0.05885385 -0.26408732 ;
	setAttr ".uvtk[961]" -type "float2" -0.037780754 -0.34201962 ;
	setAttr ".uvtk[962]" -type "float2" -0.049909107 -0.39159131 ;
	setAttr ".uvtk[963]" -type "float2" -0.044417791 -0.39446622 ;
	setAttr ".uvtk[964]" -type "float2" -0.019547708 -0.3900277 ;
	setAttr ".uvtk[965]" -type "float2" -0.019568928 -0.39084077 ;
	setAttr ".uvtk[966]" -type "float2" -0.009213157 -0.41197568 ;
	setAttr ".uvtk[967]" -type "float2" -0.016644366 -0.41317213 ;
	setAttr ".uvtk[968]" -type "float2" -0.061050996 -0.25723302 ;
	setAttr ".uvtk[969]" -type "float2" -0.065060481 -0.26582712 ;
	setAttr ".uvtk[970]" -type "float2" -0.048783772 -0.39516866 ;
	setAttr ".uvtk[971]" -type "float2" -0.020191856 -0.41641647 ;
	setAttr ".uvtk[972]" -type "float2" -0.0092450455 -0.41348523 ;
	setAttr ".uvtk[973]" -type "float2" -0.016681023 -0.41468662 ;
	setAttr ".uvtk[974]" -type "float2" -0.067197785 -0.25896728 ;
	setAttr ".uvtk[975]" -type "float2" -0.020217188 -0.41784453 ;
	setAttr ".uvtk[976]" -type "float2" -0.0094506219 -0.42208123 ;
	setAttr ".uvtk[977]" -type "float2" -0.016841836 -0.42330509 ;
	setAttr ".uvtk[978]" -type "float2" -0.020335741 -0.42593449 ;
	setAttr ".uvtk[979]" -type "float2" -0.0094866231 -0.42390162 ;
	setAttr ".uvtk[980]" -type "float2" -0.0168745 -0.42514044 ;
	setAttr ".uvtk[981]" -type "float2" -0.020362325 -0.42765039 ;
	setAttr ".uvtk[982]" -type "float2" -0.009729214 -0.44037217 ;
	setAttr ".uvtk[983]" -type "float2" -0.017108269 -0.44162756 ;
	setAttr ".uvtk[984]" -type "float2" -0.02060736 -0.44310445 ;
	setAttr ".uvtk[985]" -type "float2" -0.0097462609 -0.4421401 ;
	setAttr ".uvtk[986]" -type "float2" -0.017131813 -0.44340241 ;
	setAttr ".uvtk[987]" -type "float2" -0.020648785 -0.44477648 ;
	setAttr ".uvtk[988]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[989]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[990]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[991]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[992]" -type "float2" 0.15382105 -6.0535967e-09 ;
	setAttr ".uvtk[993]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[994]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[995]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[996]" -type "float2" 0.15382105 -6.0535967e-09 ;
	setAttr ".uvtk[997]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[998]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[999]" -type "float2" 0.15382105 -6.0535967e-09 ;
	setAttr ".uvtk[1000]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[1001]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[1002]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[1003]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[1004]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[1005]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[1006]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[1007]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[1008]" -type "float2" 0.15382102 -6.0535967e-09 ;
	setAttr ".uvtk[1037]" -type "float2" 0.016594233 0.11408519 ;
	setAttr ".uvtk[1038]" -type "float2" 0.016594233 0.11408519 ;
	setAttr ".uvtk[1039]" -type "float2" 0.016594233 0.11408519 ;
	setAttr ".uvtk[1040]" -type "float2" 0.016594233 0.11408519 ;
	setAttr ".uvtk[1041]" -type "float2" 0.016594233 0.11408519 ;
	setAttr ".uvtk[1042]" -type "float2" 0.016594233 0.11408519 ;
	setAttr ".uvtk[1043]" -type "float2" 0.016594233 0.11408519 ;
	setAttr ".uvtk[1044]" -type "float2" 0.016594233 0.11408519 ;
createNode polyAutoProj -n "polyAutoProj12";
	rename -uid "ADEE652F-42AF-626B-5488-CFA2DDFB3872";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
	setAttr ".ix" -type "matrix" 0 0.39873419276474797 0 0 -0.12429339457440051 0 0 0
		 0 0 0.55227999140717965 0 -9.7256731711521223 4.6448589264614641 0 1;
	setAttr ".s" -type "double3" 4.9682098934014798 4.9682098934014798 4.9682098934014798 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj13";
	rename -uid "26F1F2FA-4E42-30A5-E06C-39A7FC5A6D6F";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
	setAttr ".ix" -type "matrix" 0 0.39873419276474797 0 0 -0.12429339457440051 0 0 0
		 0 0 0.55227999140717965 0 -6.9595080252423234 4.6448589264614641 0 1;
	setAttr ".s" -type "double3" 4.9682098934014798 4.9682098934014798 4.9682098934014798 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj14";
	rename -uid "9E66E9E5-4E92-531B-E7DA-0282B1BDD280";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
	setAttr ".ix" -type "matrix" 0 0.39873419276474797 0 0 -0.12429339457440051 0 0 0
		 0 0 0.55227999140717965 0 -5.0990771223526421 4.6448589264614641 0 1;
	setAttr ".s" -type "double3" 4.9682098934014798 4.9682098934014798 4.9682098934014798 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj15";
	rename -uid "F7850B20-406F-68C9-BFB2-DE9EA7E7821E";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:137]";
	setAttr ".ix" -type "matrix" 0 0.39873419276474797 0 0 -4.6006802561623878 0 0 0
		 0 0 0.49836731718510879 0 -7.4670089466995089 3.8371256456096798 0 1;
	setAttr ".s" -type "double3" 12.64472722362871 12.64472722362871 12.64472722362871 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "6C4DB127-4DD7-0B4A-6545-94993C9E342E";
	setAttr ".uopa" yes;
	setAttr -s 210 ".uvtk[0:209]" -type "float2" 0.29548287 -0.29802579 0.24440198
		 -0.29810229 0.24440198 -0.24163319 0.29548287 -0.24163242 0.19332109 -0.29802594
		 0.19332109 -0.24163295 0.24440198 -0.23035452 0.29548287 -0.23035422 0.33644664 -0.29795358
		 0.33644664 -0.24163248 0.15235718 -0.29795343 0.15235718 -0.24163224 0.19332109 -0.23035464
		 0.24440198 -0.22471532 0.29548287 -0.22471544 0.33644664 -0.23035446 0.15235718 -0.23035422
		 0.19332109 -0.22471517 0.24440198 -0.21907666 0.29548287 -0.21907666 0.33644664 -0.22471517
		 0.15235718 -0.22471526 0.19332109 -0.2190766 0.24440198 -0.018772576 0.29548287 -0.018793914
		 0.33644664 -0.21907666 0.15235718 -0.21907648 0.19332109 -0.018793914 0.33644664
		 -0.018814418 0.15235718 -0.018814418 0.16868837 0.22753166 0.11760743 0.22746344
		 0.11760743 0.28489986 0.15562429 0.2848677 0.066526353 0.22753195 0.079590484 0.28486806
		 0.20965217 0.2276101 0.20965217 0.2848337 0.025562603 0.22760992 0.025562603 0.28483382
		 0.15562429 0.29565522 0.20965217 0.29565173 0.025562603 0.29565173 0.079590484 0.2956551
		 0.15562429 0.30106345 0.20965217 0.30106568 0.025562603 0.30106568 0.079590484 0.30106354
		 0.15562429 0.30645645 0.20965217 0.30646828 0.025562603 0.30646694 0.079590484 0.30645663
		 0.16851325 0.51010293 0.20965217 0.5100835 0.025562603 0.51008683 0.066701472 0.51010472
		 0.11760743 0.30644751 0.11760743 0.51012617 0.2923432 -0.3665891 0.2923432 -0.33339885
		 0.2923432 -0.33339885 0.2923432 -0.3665891 0.2923432 -0.39977944 0.2923432 -0.39977944
		 0 0.03159532 0 0.039516773 0 0.012668252 0 0.04203102 0 0.019884363 0 0.038876478
		 0 -0.012668192 0 -0.0054968148 0 0.030519724 0 0.0054967403 0 -0.019884288 0 -0.018513203
		 0 0.018513083 0 -0.031595349 0 -0.030519783 0 -0.039516747 0 -0.038876444 0 -0.042030931
		 0.29234326 -0.34129664 0.29234323 -0.34128717 0.29234323 -0.40276021 0.29234326 -0.4027608
		 0.29234326 -0.35347214 0.29234323 -0.35683885 0.29234323 -0.34128729 0.29234323 -0.40276033
		 0.2923432 -0.35683885 0.29234323 -0.37319195 0.29234326 -0.3699328 0.29234326 -0.35809204
		 0.29234323 -0.35806504 0.2923432 -0.37319195 0.29234323 -0.35806504 0.29234326 -0.36959845
		 0.29234323 -0.36958247 0.29234323 -0.36958247 0 0.043121181 0 0.04060623 0 0.033601247
		 0 0.034853429 0 0.046190802 0 0.043265171 0 0.023196153 0 0.023519203 0 0.017817155
		 0 0.043183524 0 0.040633678 0 -0.0079590678 0 -0.010711804 0 0.034849949 0 0.033341803
		 0 -0.02241832 0 -0.023575127 0 -0.017809927 0 0.023564488 0 0.022420727 0 -0.033345014
		 0 -0.034828752 0 0.010723442 0 -0.02351135 0 0.0079582036 0 -0.040662706 0 -0.043188959
		 0 -0.034850061 0 -0.023195326 0 -0.043243885 0 -0.046168506 0 -0.033603221 0 -0.043136686
		 0 -0.040637523 0.036206461 0.098164454 0.083412245 0.098248497 0.083412245 0.0029558353
		 0.036206461 0.0029569082 0.18471076 0.0029600076 0.18471076 0.098354712 0.083412245
		 -0.016113948 0.036206461 -0.016108941 0.18471076 -0.016094398 0.23710532 0.098248973
		 0.23710532 0.0029613785 0.083412245 -0.025634829 0.036206461 -0.025625411 0.18471076
		 -0.025625531 0.23710532 -0.01608951 0.28431135 0.098163858 0.28431135 0.0029635839
		 0.083412245 -0.035160545 0.036206461 -0.035162214 0.18471076 -0.035159592 0.23710532
		 -0.025625888 0.28431135 -0.016093325 0.083412245 -0.37364438 0.036206461 -0.37362042
		 0.18471076 -0.37363771 0.23710532 -0.035159234 0.28431135 -0.025639478 0.23710532
		 -0.37364373 0.28431135 -0.035158399 0.28431135 -0.37362075 0.56470829 -0.34231976
		 0.51750225 -0.34240508 0.51750225 -0.24711406 0.56470829 -0.24711359 0.41620371 -0.34251067
		 0.41620371 -0.24711886 0.51750225 -0.22803909 0.56470829 -0.22804841 0.36380914 -0.3424046
		 0.36380914 -0.24712053 0.41620371 -0.22806504 0.51750225 -0.2185187 0.56470829 -0.21853152
		 0.31660321 -0.34232023 0.31660321 -0.24712172 0.36380914 -0.22807202 0.41620371 -0.21853277
		 0.51750225 -0.20899576 0.56470829 -0.2089943 0.31660321 -0.22806633 0.36380914 -0.21853468
		 0.41620371 -0.20899758 0.51750225 0.12950328 0.56470829 0.12948123 0.31660333 -0.2185165
		 0.36380914 -0.2089999 0.41620371 0.12949732 0.31660333 -0.20899966 0.36380914 0.12950483
		 0.31660321 0.12948027 0.29234323 -0.42397797 0.29234323 -0.42495477 0.29234323 -0.27304658
		 0.2923432 -0.3425003 0.29234323 -0.42532963 0.29234326 -0.27324435 0.29234323 -0.42584157
		 0.29234323 -0.34381792 0.29234326 -0.27303913 0.2923432 -0.42495459 0.2923432 -0.42393333
		 0.2923432 -0.34246817 0.2923432 -0.27325967 0.2923432 -0.42534161 0.29234326 -0.42587554
		 0.29234326 -0.34384111;
createNode polyAutoProj -n "polyAutoProj16";
	rename -uid "171A9AB4-4D7A-FDFB-7DBE-C1986A299574";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:63]";
	setAttr ".ix" -type "matrix" 0 0.39014535867768835 0 0 -3.5230710366106659 0 0 0
		 0 0 0.49836731718510879 0 -7.2867635036981637 2.7271599008496743 0 1;
	setAttr ".s" -type "double3" 7.0461424932041261 7.0461424932041261 7.0461424932041261 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "D8F267C0-4D28-8591-018D-7689AA80C525";
	setAttr ".uopa" yes;
	setAttr -s 92 ".uvtk[0:91]" -type "float2" 0.73647797 -0.47756848 0.69634002
		 -0.47698835 0.67811662 -0.034614976 0.71825457 -0.035195168 0.6562022 -0.47640818
		 0.63797879 -0.034034904 0.76568234 -0.47810838 0.74745888 -0.03573506 0.62699795
		 -0.47586828 0.60877454 -0.033494882 0.79374689 -0.40502781 0.75360906 -0.40444767
		 0.7353856 0.037925862 0.77552348 0.03734573 0.71347123 -0.40386754 0.69524783 0.038506053
		 0.82295132 -0.40556771 0.80472791 0.036805838 0.68426687 -0.40332764 0.66604334 0.039045952
		 0.039316028 0.020719267 0.045088857 0.024074152 0.055991199 0.0072482973 0.05302104
		 0.024096422 0.036845915 0.01469633 0.061541494 0.020781804 0.058546837 -0.007248342
		 0.039401539 0.00019963086 0.068962663 0.014786661 0.075136542 -0.00019966066 0.077692151
		 -0.01469636 0.04072338 -0.0072984993 0.07381472 0.0072984844 0.075222015 -0.02071926
		 0.045575399 -0.014786631 0.069449201 -0.024074137 0.052996542 -0.020781785 0.061516967
		 -0.024096459 0.1244728 0.023500236 0.11752328 0.029383756 0.11681104 0.030807529
		 0.11730757 0.025048429 0.13026759 0.019139796 0.11778817 0.023980297 0.11625153 0.012751475
		 0.11596248 0.028698847 0.10991552 0.022452099 0.1349012 0.012096494 0.1181064 0.016734913
		 0.11537048 0.02283629 0.10352957 0.017301165 0.14046642 -0.0033467263 0.11888054
		 -0.0077529252 0.11468545 0.015447661 0.098240644 0.0097521544 0.13394871 -0.01044184
		 0.11750403 -0.0161376 0.11593804 -0.013441652 0.113309 0.0070629418 0.091723472 0.0026571006
		 0.12865981 -0.017991126 0.11681899 -0.023526371 0.11408332 -0.017424822 0.097288579
		 -0.01278612 0.12227392 -0.023142159 0.11622712 -0.029388934 0.11440149 -0.024670243
		 0.10192227 -0.019829541 0.11488223 -0.025738508 0.11537859 -0.031497627 0.11466661
		 -0.030073762 0.10771713 -0.024190098 -0.25746062 0.39845508 -0.25815174 0.35556102
		 -0.55923074 0.32959664 -0.55853957 0.3724907 -0.25941494 0.25854546 -0.56044394 0.23258536
		 -0.26006827 0.20836614 -0.56114733 0.18240172 -0.26075944 0.16547227 -0.56183845
		 0.13950789 -0.2541427 0.04060787 -0.25345159 0.08350163 0.047627464 0.10946552 0.046936348
		 0.066571884 -0.25218838 0.18051739 0.048840836 0.20647709 -0.25153503 0.23069669
		 0.049544051 0.2566607 -0.25084391 0.27359068 0.050235167 0.29955465;
createNode polyAutoProj -n "polyAutoProj17";
	rename -uid "663D316B-4CC8-8E94-04EE-80AB287AC2FF";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:63]";
	setAttr ".ix" -type "matrix" 0 0.39014535867768835 0 0 -1.1458670246701095 0 0 0
		 0 0 0.36154543221825824 0 -4.7434966926192281 2.2340934574760483 0 1;
	setAttr ".s" -type "double3" 2.2917337761442313 2.2917337761442313 2.2917337761442313 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "477FC00A-4940-4380-9711-50BC96747984";
	setAttr ".uopa" yes;
	setAttr -s 92 ".uvtk[0:91]" -type "float2" 0.027382664 -0.24126524 -0.0027741813
		 -0.24052685 -0.0125235 -0.057777688 0.017633341 -0.05851607 -0.032931022 -0.23978847
		 -0.042680345 -0.057039306 0.043674454 -0.24202377 0.033925131 -0.059274599 -0.04922279
		 -0.23902994 -0.058972113 -0.056280777 0.71960217 0.057039432 0.68944526 0.057777815
		 0.67969596 0.24052674 0.70985287 0.23978835 0.65928853 0.058516197 0.64953917 0.24126512
		 0.73589391 0.056280904 0.72614461 0.23902982 0.64299679 0.059274726 0.63324744 0.24202365
		 0.01319522 0.019838048 0.011546433 0.018575918 0.0081212148 0.024265097 0.0092192218
		 0.018440567 0.013839066 0.021977032 0.0066745509 0.019458886 0.0071764519 0.029276734
		 0.012894303 0.026988646 0.0044163843 0.021429094 0.0024033566 0.026553201 0.0014585932
		 0.031564832 0.012405638 0.029580807 0.0028920253 0.023961017 0.0021024426 0.033703804
		 0.010881271 0.032112747 0.003751256 0.034965903 0.0086231306 0.034082949 0.00607843
		 0.035101265 0.02367056 0.026364641 0.019788267 0.041461796 0.025814002 0.042967848
		 0.02620635 0.025649047 0.022297325 0.026293574 0.015279236 0.03837841 0.025249636
		 0.033284426 0.031779863 0.041077316 0.02846319 0.025567358 0.023808723 0.026183309
		 0.013759973 0.034336448 0.036120214 0.037668012 0.029146468 0.02499759 0.03082866
		 0.026925163 0.014576319 0.022621186 0.037511863 0.033484802 0.026970452 0.024682375
		 0.023261251 0.027907884 0.012719871 0.019105317 0.02498213 0.019305618 0.035655476
		 0.029968923 0.019403189 0.025665136 0.021085145 0.027592545 0.014111522 0.014922115
		 0.036471792 0.018253688 0.026423162 0.026406946 0.021768572 0.027022785 0.018451871
		 0.011512759 0.034952618 0.014211687 0.027934676 0.026296588 0.024025416 0.026941067
		 0.024417764 0.0096221911 0.030443465 0.011128311 0.026561355 0.026225569 -0.14223568
		 0.50704646 -0.14350478 0.48460186 -0.33439988 0.46879894 -0.33313078 0.49124348 -0.14599174
		 0.42939875 -0.33667958 0.41361296 -0.14727807 0.40084618 -0.33817309 0.3850432 -0.14854716
		 0.37840137 -0.33944219 0.36259848 -0.07193169 0.17752418 -0.070662588 0.19996887
		 0.12023251 0.21577185 0.11896341 0.19332719 -0.068175651 0.25517195 0.12251208 0.27095777
		 -0.066889308 0.28372446 0.12400571 0.2995275 -0.065620199 0.30616918 0.12527481 0.32197222;
createNode polyAutoProj -n "polyAutoProj18";
	rename -uid "F42D66AB-43F6-68D2-29D6-F2842D2FA117";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:141]";
	setAttr ".ix" -type "matrix" 0 0.3205529949364061 0 0 -1.3957824290401184 0 0 0 0 0 0.3205529949364061 0
		 -14.130174828733594 3.6880358659421284 1.7763568394002505e-15 1;
	setAttr ".s" -type "double3" 5.5340871936984612 5.5340871936984612 5.5340871936984612 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak43";
	rename -uid "E798E3D8-4BF0-03AC-DFB2-B2B79D6BA3E7";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[33]" -type "float3" 0.22535051 0 0 ;
	setAttr ".tk[34]" -type "float3" 0.28853199 0 0 ;
	setAttr ".tk[35]" -type "float3" -0.1120881 0 0 ;
	setAttr ".tk[36]" -type "float3" -0.1120881 0 0 ;
	setAttr ".tk[98]" -type "float3" 0.22535051 0 0 ;
	setAttr ".tk[99]" -type "float3" -0.1120881 0 0 ;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "690D660F-4544-5D60-ADEC-4082FB13D87C";
	setAttr ".uopa" yes;
	setAttr -s 262 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.0038267039 0.089687854 -0.050296821
		 0.089391083 -0.046115257 0.034193598 0.0080082677 0.034490369 -0.10442032 0.089094311
		 -0.10023879 0.033896826 0.032668099 0.089984626 0.036849663 0.034787081 -0.13326171
		 0.088797599 -0.12908018 0.033600055 0.0036151111 0.31631583 -0.050513394 0.3167727
		 -0.056950815 0.26150465 -0.0028222799 0.26104778 -0.079359785 0.31722957 -0.085797198
		 0.26196152 0.051306233 0.26059097 0.057743661 0.31585899 0.080152631 0.2601341 0.086590022
		 0.31540212 0.050747186 -0.071067691 0.050503403 -0.0012931526 0.047198653 -0.001452744
		 0.047442377 -0.071227282 0.05025965 0.068481356 0.04695487 0.068321764 0.050990939
		 -0.10824788 0.04768616 -0.10840747 0.050015897 0.10566154 0.046711117 0.10550195
		 0.061778188 -0.0015124083 0.062204033 0.068266064 0.05889672 0.068544894 0.058470875
		 -0.0012335777 0.062629879 0.10545024 0.059322566 0.10572907 0.05804503 -0.07101205
		 0.061352313 -0.07129088 0.057619154 -0.1081962 0.060926467 -0.10847503 -0.19726092
		 -0.31283051 -0.19713956 -0.25990611 -0.20215285 -0.25975478 -0.20222479 -0.2965346
		 -0.19709712 -0.20698231 -0.20210409 -0.22297519 -0.20740449 -0.25959623 -0.20751894
		 -0.32705128 -0.2073068 -0.19214135 0.23266718 0.12753938 0.23242442 0.18142702 0.22565888
		 0.16469222 0.22596575 0.12721507 0.21878184 0.15307313 0.21614131 0.12675096 0.22591703
		 0.089742959 0.23277409 0.073653698 0.22458015 0.18233076 0.216915 0.19813977 0.20262167
		 0.13538739 0.20753783 0.12639053 0.21894103 0.10067582 0.21541533 0.18889761 0.20665556
		 0.17630529 0.18538538 0.12525849 0.20268491 0.11697945 0.21767923 0.055653721 0.22515516
		 0.072130591 0.2147821 0.21280491 0.20890066 0.20294981 0.20325217 0.17289914 0.2069816
		 0.07642737 0.21580026 0.064600885 0.21516275 0.2368217 0.2110979 0.2296084 0.20377633
		 0.079443187 0.20938504 0.049992174 0.21531324 0.040665179 0.21915293 0.31422654 0.21174026
		 0.023544312 0.21583822 0.016711533 0.2202919 -0.060258359 0.040790215 0.13132688
		 0.016759597 0.16440231 -0.022122748 0.1108853 -0.022122748 0.17703581 0.040790215
		 0.090443589 -0.061005034 0.16440231 0.016759597 0.057368368 -0.085035659 0.13132688
		 -0.022122748 0.044734776 -0.085035659 0.090443589 -0.061005093 0.057368368 -0.14222139
		 0.014894694 -0.14222133 -0.025988638 -0.12402546 -0.031900793 -0.12402546 0.020806849
		 -0.1662519 -0.059063852 -0.15500629 -0.074542284 -0.1662519 0.047970027 -0.15500623
		 0.063448399 -0.20513421 -0.071697474 -0.20513421 -0.09082967 -0.20513427 0.060603589
		 -0.20513427 0.079735875 -0.24401647 -0.059063882 -0.25526226 -0.074542284 -0.25526226
		 0.063448399 -0.24401653 0.047970027 -0.26804721 -0.025988668 -0.28624308 -0.031900823
		 -0.28624314 0.020806849 -0.26804721 0.014894664 -0.19826472 -0.071848154 -0.17818487
		 -0.022639424 -0.20473117 -0.0066554844 -0.22315565 -0.07785359 -0.20097697 -0.09781304
		 -0.18065661 -0.053304225 -0.11070973 0.019983351 -0.12739858 0.056080461 -0.16621399
		 -0.098898053 -0.17567241 -0.12394774 -0.18634486 -0.13317496 -0.13383096 -0.014504522
		 -0.0046941042 0.053990066 -0.011189133 0.093749881 -0.080169111 -0.087436616 -0.075198323
		 -0.12593299 0.078742683 0.071631193 0.087834269 0.096586764 0.038122475 -0.087036818
		 0.020967513 -0.050870657 0.10892478 0.043576986 0.13373926 0.050091058 0.11684456
		 -0.020779252 0.090149492 -0.0048459172 0.09714064 0.11233413 0.10988614 0.075444132
		 0.086081535 0.027848184 0.037182063 -0.013211787 -0.2481209 -0.20625788 -0.18141973
		 -0.16385019 -0.19965494 -0.15511924 -0.24641132 -0.1848461 -0.20878708 -0.14270622
		 -0.24557132 -0.16609293 -0.21757543 -0.13078457 -0.24438751 -0.1478315 -0.22909063
		 -0.097831428 -0.030534327 -0.14379096 -0.083525777 -0.087573588 -0.10770959 -0.11692905
		 -0.063677788 -0.157058 -0.11228412 -0.1380946 -0.077471733 -0.16919297 -0.053670913
		 -0.12153417 -0.074148357 -0.14936161 -0.11652279 -0.15886521 -0.091183066 -0.18148249
		 -0.083295882 -0.16612828 -0.12516126 -0.21973699 -0.0950903 -0.17953569 -0.17907292
		 -0.21483558 -0.15832925 -0.27045918 -0.14597696 -0.27153033 -0.16110307 -0.22551966
		 -0.18396497 -0.32480454 -0.16517633 -0.3165738 -0.14277142 -0.27183777 -0.14965999
		 -0.23282754 -0.15306383 -0.31036586 -0.13294393 -0.27239251 -0.13183737 -0.24040902
		 -0.1345728 -0.30441904 -0.11325216 -0.27497214 -0.016084492 0.17976724 -0.064570725
		 0.20299137 -0.057959408 0.15515882 -0.016797483 0.13822016 -0.012475103 0.21010725
		 -0.051888525 0.13791487 -0.017249405 0.12901036 0.024601847 0.15409034 0.032638907
		 0.20162441 -0.046457291 0.11648154 -0.017904639 0.11611837 0.017491788 0.13699505
		 -0.019704074 0.11771426 0.010648519 0.11574146 -0.29143465 -0.21169817 -0.28924513
		 -0.23327917 -0.24212378 -0.26249635 -0.22421294 -0.25337881 -0.28818417 -0.2520408
		 -0.25111288 -0.27502656 -0.28676897 -0.27031821 -0.25974768 -0.28707296 -0.27054137
		 -0.32044017 -0.10783458 -0.16905254 -0.1355229 -0.15551502 -0.17950326 -0.19111425
		 -0.16092408 -0.21957552 -0.11519122 -0.19952673 -0.13719797 -0.16774416 -0.14614016
		 -0.14338422 -0.18102926 -0.17098027 -0.14591008 -0.14948803 -0.15671819 -0.13108259
		 -0.18212813 -0.15113974 -0.15629905 -0.13516629 -0.17942429 -0.093932807 0.024964489
		 0.27894378 0.080890507 0.27737272 0.10302842 0.30997109 0.047102429 0.31154218 -0.096363962
		 -0.21092111 -0.10015255 -0.28331524 -0.098007679 -0.28579581 -0.094219089 -0.21340162
		 0.063965023 0.2089161 0.066957623 0.19984311 0.082994431 0.27886671 0.057895482 0.19890141
		 0.054190427 0.15651062 0.068297923 0.24138345 0.050362766 0.19925256 0.049222827
		 0.15504399 0.054100692 0.12916715 0.063189149 0.14577395 0.057120979 0.2362746 0.052612633
		 0.25565991 0.053654552 0.11445314 0.060326099 0.12120405 0.052216679 0.092417568
		 0.05644685 0.089352846 0.046262413 0.057694286 -0.11378207 0.15380041 -0.091644146
		 0.12120207 -0.035718128 0.12277313 -0.057856046 0.1553715 -0.082945555 -0.2134015
		 -0.085090339 -0.21092099 -0.08887893 -0.28331524 -0.086734116 -0.28579581 -0.096856058
		 0.21044189 -0.11361462 0.28723562 -0.099858582 0.20269984 -0.10038614 0.24417537
		 -0.091274321 0.19813243;
	setAttr ".uvtk[250:261]" -0.088524491 0.15506291 -0.089889228 0.23466311 -0.097245991
		 0.14811167 -0.088937134 0.12823345 -0.084209055 0.19561452 -0.084057659 0.15145861
		 -0.085377663 0.25188243 -0.09499228 0.1229347 -0.088802367 0.11369777 -0.09190172
		 0.090203524 -0.087852418 0.091571212 -0.08318159 0.055857122;
createNode polyMapSewMove -n "polyMapSewMove13";
	rename -uid "69504265-4BD7-B18D-BBAF-5C84AF5FC9D5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[11]";
createNode polyMapSewMove -n "polyMapSewMove14";
	rename -uid "1749EF67-44DA-EE5C-F7D5-449F4A2271AD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[151]";
createNode polyMapSewMove -n "polyMapSewMove15";
	rename -uid "B24B0B2D-479D-D79C-1FCF-4FBE8BF22BB9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12]";
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "CA55AFD8-4FFF-2676-175B-5F88746F468F";
	setAttr ".uopa" yes;
	setAttr -s 22 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.060164861 0 ;
	setAttr ".uvtk[1]" -type "float2" 0.060164861 0 ;
	setAttr ".uvtk[2]" -type "float2" 0.060164861 0 ;
	setAttr ".uvtk[3]" -type "float2" 0.060164861 0 ;
	setAttr ".uvtk[4]" -type "float2" 0.060164869 0 ;
	setAttr ".uvtk[5]" -type "float2" 0.060164861 0 ;
	setAttr ".uvtk[6]" -type "float2" 0.060164861 0 ;
	setAttr ".uvtk[7]" -type "float2" 0.060164861 0 ;
	setAttr ".uvtk[8]" -type "float2" 0.060164854 0 ;
	setAttr ".uvtk[9]" -type "float2" 0.060164861 0 ;
	setAttr ".uvtk[10]" -type "float2" 0.060164861 0 ;
	setAttr ".uvtk[11]" -type "float2" 0.060164861 0 ;
	setAttr ".uvtk[12]" -type "float2" 0.060164861 0 ;
	setAttr ".uvtk[13]" -type "float2" 0.060164861 0 ;
	setAttr ".uvtk[14]" -type "float2" 0.060164858 0 ;
	setAttr ".uvtk[15]" -type "float2" 0.060164858 0 ;
	setAttr ".uvtk[16]" -type "float2" 0.060164861 0 ;
	setAttr ".uvtk[17]" -type "float2" 0.060164861 0 ;
	setAttr ".uvtk[18]" -type "float2" 0.060164861 0 ;
	setAttr ".uvtk[19]" -type "float2" 0.060164861 0 ;
	setAttr ".uvtk[233]" -type "float2" 0.060164854 0 ;
	setAttr ".uvtk[234]" -type "float2" 0.060164861 0 ;
createNode polyMapSewMove -n "polyMapSewMove16";
	rename -uid "7BDE78D5-46EF-187A-5E38-4F86B797D774";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[158]";
createNode polyMapSewMove -n "polyMapSewMove17";
	rename -uid "88517E51-415C-6515-EED2-EAA326BEFAFB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[188]";
createNode polyMapSewMove -n "polyMapSewMove18";
	rename -uid "C79574AE-4173-42F1-5E68-B98BF456B640";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[186]";
createNode polyMapSewMove -n "polyMapSewMove19";
	rename -uid "E5D16788-462F-D095-985B-39B3F106C732";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[111]";
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "CC4212E7-406E-8C04-4628-8CB9058865A3";
	setAttr ".uopa" yes;
	setAttr -s 30 ".uvtk";
	setAttr ".uvtk[170]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[171]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[172]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[173]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[174]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[175]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[176]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[177]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[178]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[179]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[180]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[181]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[182]" -type "float2" 0.029018847 -0.1080702 ;
	setAttr ".uvtk[183]" -type "float2" 0.029018847 -0.1080702 ;
	setAttr ".uvtk[210]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[211]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[212]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[213]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[214]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[215]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[216]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[217]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[218]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[219]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[220]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[221]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[222]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[223]" -type "float2" 0.029018847 -0.10807019 ;
	setAttr ".uvtk[224]" -type "float2" 0.029018847 -0.10807019 ;
createNode polyMapSewMove -n "polyMapSewMove20";
	rename -uid "512FC636-4C2F-0C17-BBA9-FB85B0FAB92E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[246]";
createNode polyMapSewMove -n "polyMapSewMove21";
	rename -uid "E2242BCA-4121-40DB-62EC-068B0BEB4CF9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[195]";
createNode polyMapSewMove -n "polyMapSewMove22";
	rename -uid "ED69C766-4996-826E-4013-8B802657A143";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[167]";
createNode polyMapSewMove -n "polyMapSewMove23";
	rename -uid "8CE05072-48BF-AE4F-D104-518038B4617A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[31]";
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "F592E02D-4FD4-5835-BFBC-E5AF03DD7EB9";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[20]" -type "float2" 0.030437676 0 ;
	setAttr ".uvtk[21]" -type "float2" 0.030437676 0 ;
	setAttr ".uvtk[22]" -type "float2" 0.030437676 0 ;
	setAttr ".uvtk[23]" -type "float2" 0.030437676 0 ;
	setAttr ".uvtk[24]" -type "float2" 0.030437676 0 ;
	setAttr ".uvtk[25]" -type "float2" 0.030437676 0 ;
	setAttr ".uvtk[26]" -type "float2" 0.030437676 0 ;
	setAttr ".uvtk[27]" -type "float2" 0.030437676 0 ;
	setAttr ".uvtk[28]" -type "float2" 0.030437676 0 ;
	setAttr ".uvtk[29]" -type "float2" 0.030437676 0 ;
	setAttr ".uvtk[206]" -type "float2" 0.030437676 0 ;
	setAttr ".uvtk[207]" -type "float2" 0.030437676 0 ;
createNode polyMapSewMove -n "polyMapSewMove24";
	rename -uid "AC327AF0-4C1B-FE9A-6A3B-5E84CB42D56A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[29]";
createNode polyMapSewMove -n "polyMapSewMove25";
	rename -uid "0EE94938-453B-C9D7-3639-4DA3BF2D7F1B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[164]";
createNode polyMapSewMove -n "polyMapSewMove26";
	rename -uid "491A39CC-4C4E-CA74-E22C-79B55DB0FD60";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[72]";
createNode polyMapSewMove -n "polyMapSewMove27";
	rename -uid "E581DB2E-4049-558C-BF13-7BAFAFB6C99E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[215]";
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "13758C3B-4E25-6657-1E7E-A0A22BC93FDA";
	setAttr ".uopa" yes;
	setAttr -s 232 ".uvtk[0:231]" -type "float2" 0.11684991 -0.24836594 0.12639162
		 -0.24860072 0.1296984 -0.11415012 0.12015666 -0.11391552 0.13593334 -0.24883533 0.13924006
		 -0.1143849 0.10719244 -0.25283822 0.11073059 -0.10897388 0.14535922 -0.25377694 0.14889765
		 -0.10991253 0.080636308 -0.24747384 0.086888716 -0.24762923 0.090195045 -0.11317869
		 0.080653325 -0.11294408 0.096314654 -0.25257078 0.099852622 -0.10870649 0.071111605
		 -0.11270942 0.064515978 -0.2470805 0.061569858 -0.11247469 0.058263469 -0.24692523
		 -0.30016056 -0.18482816 -0.29991522 -0.17252553 -0.30797037 -0.17236507 -0.30821559
		 -0.18466771 -0.29966998 -0.16022296 -0.30772501 -0.16006221 -0.30012363 -0.19332644
		 -0.30874285 -0.19696441 -0.29942471 -0.14792013 -0.30747983 -0.14775956 -0.21025079
		 -0.23577785 -0.21050182 -0.24808046 -0.20244694 -0.24824479 -0.20219588 -0.23594218
		 -0.21075287 -0.2603831 -0.20269799 -0.26054737 -0.20194489 -0.22363979 -0.20999989
		 -0.22347534 -0.20141169 -0.21134204 -0.21003109 -0.21497852 0.37044287 -0.056621343
		 0.36946315 -0.049742609 0.34479618 -0.046901762 0.34608346 -0.056423813 0.36618948
		 -0.024734223 0.34353164 -0.037376605 0.31978026 -0.050253361 0.32203028 -0.066984944
		 0.31754661 -0.033519708 0.46398026 -0.0021431334 0.46744102 -0.0051839538 0.47934842
		 0.013963528 0.47261786 0.019829668 0.49196613 0.03435187 0.4932307 0.044437245 0.46566248
		 0.025427893 0.44313169 0.015124565 0.48716784 0.0062333159 0.50701821 0.019737341
		 0.52011484 0.073125623 0.50923973 0.063548759 0.48352337 0.04142423 0.50351089 0.035980657
		 0.51895732 0.057590827 0.55951905 0.12357125 0.51676166 0.075934254 0.46649647 0.053681269
		 0.45668143 0.031771049 0.50801754 0.033486292 0.51850718 0.048524871 0.53287727 0.063538685
		 0.50167054 0.072071388 0.48310292 0.053075776 0.51044273 0.02860643 0.51801479 0.039430097
		 0.5050863 0.086818479 0.49282408 0.070038781 0.47985733 0.057075188 0.51307124 0.0067815837
		 0.48395652 0.067959771 0.47462761 0.058607504 0.45268017 0.057369456 0.10845444 -0.28310061
		 0.10196508 -0.26134199 0.071726695 -0.2822074 0.100915 -0.3045181 0.082226694 -0.31741363
		 0.042538237 -0.25989679 0.059527669 -0.3168616 0.034998879 -0.28131422 0.041488279
		 -0.30307287 -0.29001802 -0.21550557 -0.29001796 -0.19279969 -0.30012351 -0.21497858
		 -0.27667192 -0.17443052 -0.28291756 -0.16583401 -0.27667192 -0.23387483 -0.28291756
		 -0.24247116 -0.25507742 -0.16741404 -0.25507742 -0.15678836 -0.25507748 -0.24089116
		 -0.25507748 -0.25151688 -0.2334829 -0.17443049 -0.22723725 -0.16583401 -0.22723725
		 -0.24247116 -0.23348305 -0.23387483 -0.22013682 -0.19279966 -0.21003145 -0.19332686
		 -0.22013682 -0.21550554 0.42613262 -0.082891099 0.45080143 -0.069379747 0.44639343
		 -0.063602865 0.42392862 -0.076048605 0.44142354 -0.1224666 0.47060084 -0.10998983
		 0.47087222 -0.04793328 0.46231425 -0.04299438 0.39609349 -0.083409272 0.39746588
		 -0.073902987 0.41782469 -0.13021305 0.4919998 -0.09762121 0.46120417 -0.011129756
		 0.37719315 -0.052674055 0.43598253 0.010022413 0.37414747 -0.023211176 0.4077729
		 0.017346401 0.40947551 0.010568034 0.38711149 -0.00034325197 0.38271141 0.0052795522
		 0.40909165 0.066791877 0.38643098 0.056851253 0.35666651 0.03831391 0.34198898 0.027251828
		 0.15134826 0.11759869 0.12431613 0.098681793 0.1384528 0.086563691 0.15740186 0.099823877
		 0.14272079 0.081237301 0.1576283 0.0916695 0.14726064 0.075522408 0.15812677 0.08312647
		 0.16225725 0.048731759 0.24425533 0.076589569 0.22256345 0.083929062 0.22193253 0.062779829
		 0.23855707 0.059811518 0.22358552 0.0508966 0.23635831 0.048174694 0.26153976 0.019094963
		 0.24902698 0.024440903 0.22480339 0.038749475 0.23413041 0.036708076 0.24326915 0.023884315
		 0.2303198 -0.0053433646 0.23894107 0.019374508 0.12654427 0.12985754 0.11848442 0.15279564
		 0.10821865 0.15194884 0.11446373 0.13281143 0.12267563 0.1767448 0.11124258 0.17185079
		 0.10527216 0.15170559 0.10892807 0.13558459 0.10623635 0.16820785 0.099955365 0.15126684
		 0.1008303 0.13814119 0.098667234 0.16435841 0.075231552 0.14922699 0.27152139 0.11426114
		 0.25228214 0.10907989 0.26479539 0.092315972 0.28014868 0.095688343 0.22784641 0.20828497
		 0.27301902 0.079680666 0.28561717 0.083915874 0.29262942 0.10524499 0.28789103 0.12562057
		 0.28626275 0.059190884 0.29354605 0.066846654 0.29697984 0.09081082 0.31235203 0.026153971
		 0.30379105 0.068332806 0.17428651 0.11622868 0.18071958 0.13386959 0.16205901 0.14753297
		 0.14766589 0.13572049 0.1811209 0.14201763 0.16644025 0.15276662 0.1818023 0.15054771
		 0.17110148 0.1583831 0.18666855 0.18484607 0.31878412 0.11208045 0.33506626 0.10509074
		 0.34398234 0.11943262 0.32784128 0.13311294 0.34995276 0.060768679 0.35435069 0.073645428
		 0.34518629 0.09893965 0.35170865 0.11025398 0.35861659 0.077552453 0.35519946 0.092924103
		 0.35992205 0.10122209 0.36486399 0.077752128 0.38900328 0.067623064 -0.3093065 -0.21098393
		 0.2568652 0.059792295 0.25476262 0.075708553 0.21831244 0.13775226 0.26652256 0.033191163
		 0.27906951 0.026677508 0.27689666 -0.00030351896 0.28861862 0.0019756733 0.28421283
		 0.033656377 0.26943788 0.071438059 0.26421222 -0.0037736762 0.28763518 0.036307409
		 0.27772933 0.065202042 0.2936146 0.036035553 0.15612125 -0.25875145 0.1598914 -0.10547318
		 -0.20084867 -0.1973215 0.32283217 0.091470465 0.29068273 0.17228195 0.31240946 0.10368168
		 0.33614194 0.06649591 0.33258885 0.052812949 0.30576515 0.089917585 0.32396078 0.053659216
		 0.36516124 0.043482348 0.30485272 0.079582796 0.31970084 0.052889124 0.31590241 0.048263207;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
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
	setAttr -s 18 ".dsm";
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
connectAttr "polyTweakUV4.out" "HandleShape.i";
connectAttr "polyTweakUV4.uvtk[0]" "HandleShape.uvst[0].uvtw";
connectAttr "polyTweakUV6.out" "MiddleShape.i";
connectAttr "polyTweakUV6.uvtk[0]" "MiddleShape.uvst[0].uvtw";
connectAttr "polyTweakUV5.out" "BarrelShape.i";
connectAttr "polyTweakUV5.uvtk[0]" "BarrelShape.uvst[0].uvtw";
connectAttr "polyTweakUV7.out" "BottomShape.i";
connectAttr "polyTweakUV7.uvtk[0]" "BottomShape.uvst[0].uvtw";
connectAttr "polyTweakUV12.out" "SpearShape.i";
connectAttr "polyTweakUV12.uvtk[0]" "SpearShape.uvst[0].uvtw";
connectAttr "polyAutoProj1.out" "pCylinderShape13.i";
connectAttr "polyAutoProj2.out" "pCylinderShape12.i";
connectAttr "polyAutoProj3.out" "pCylinderShape11.i";
connectAttr "polyAutoProj4.out" "pCylinderShape10.i";
connectAttr "polyAutoProj5.out" "pCylinderShape9.i";
connectAttr "polyAutoProj6.out" "pCylinderShape8.i";
connectAttr "polyAutoProj7.out" "pCylinderShape7.i";
connectAttr "polyAutoProj8.out" "pCylinderShape14.i";
connectAttr "polyAutoProj9.out" "pCylinderShape15.i";
connectAttr "polyAutoProj10.out" "pCylinderShape16.i";
connectAttr "polyAutoProj12.out" "pCylinderShape4.i";
connectAttr "polyAutoProj13.out" "pCylinderShape5.i";
connectAttr "polyAutoProj14.out" "pCylinderShape6.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyExtrudeFace1.ip";
connectAttr "HandleShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "HandleShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "HandleShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace4.ip";
connectAttr "HandleShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace5.ip";
connectAttr "HandleShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyBevel1.ip";
connectAttr "HandleShape.wm" "polyBevel1.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak5.ip";
connectAttr "polyBevel1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polyExtrudeFace6.ip";
connectAttr "HandleShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak6.out" "polyExtrudeFace7.ip";
connectAttr "HandleShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polySplit2.ip";
connectAttr "polyExtrudeFace7.out" "polyTweak7.ip";
connectAttr "polySplit2.out" "polyExtrudeFace8.ip";
connectAttr "HandleShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyTweak8.out" "polyExtrudeFace9.ip";
connectAttr "HandleShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polySplit3.ip";
connectAttr "polyExtrudeFace9.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polySplit4.ip";
connectAttr "polySplit3.out" "polyTweak10.ip";
connectAttr "polySplit4.out" "polyTweak11.ip";
connectAttr "polyTweak11.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyBridgeEdge1.ip";
connectAttr "HandleShape.wm" "polyBridgeEdge1.mp";
connectAttr "polyTweak12.out" "polySoftEdge1.ip";
connectAttr "HandleShape.wm" "polySoftEdge1.mp";
connectAttr "polyBridgeEdge1.out" "polyTweak12.ip";
connectAttr "polySoftEdge1.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polyExtrudeFace10.ip";
connectAttr "HandleShape.wm" "polyExtrudeFace10.mp";
connectAttr "polyTweak13.out" "polyExtrudeFace11.ip";
connectAttr "HandleShape.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace12.ip";
connectAttr "HandleShape.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyMirror1.ip";
connectAttr "HandleShape.wm" "polyMirror1.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polySplit6.ip";
connectAttr "polyMirror1.out" "polyTweak16.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polyTweak17.out" "polySplit8.ip";
connectAttr "polySplit7.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polyBevel2.ip";
connectAttr "HandleShape.wm" "polyBevel2.mp";
connectAttr "polySplit8.out" "polyTweak18.ip";
connectAttr "polyBevel2.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polySplit19.ip";
connectAttr "polySplit19.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polySplit21.ip";
connectAttr "polySplit21.out" "polySplit22.ip";
connectAttr "polySplit22.out" "polySplit23.ip";
connectAttr "polySplit23.out" "polyMirror2.ip";
connectAttr "HandleShape.wm" "polyMirror2.mp";
connectAttr "polyTweak19.out" "polySoftEdge2.ip";
connectAttr "HandleShape.wm" "polySoftEdge2.mp";
connectAttr "polyMirror2.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polyMirror3.ip";
connectAttr "HandleShape.wm" "polyMirror3.mp";
connectAttr "polySoftEdge2.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polySoftEdge3.ip";
connectAttr "HandleShape.wm" "polySoftEdge3.mp";
connectAttr "polyMirror3.out" "polyTweak21.ip";
connectAttr "polySoftEdge3.out" "polySoftEdge4.ip";
connectAttr "HandleShape.wm" "polySoftEdge4.mp";
connectAttr "polySoftEdge4.out" "polySoftEdge5.ip";
connectAttr "HandleShape.wm" "polySoftEdge5.mp";
connectAttr "polySoftEdge5.out" "polySoftEdge6.ip";
connectAttr "HandleShape.wm" "polySoftEdge6.mp";
connectAttr "polySoftEdge6.out" "polySoftEdge7.ip";
connectAttr "HandleShape.wm" "polySoftEdge7.mp";
connectAttr "polyCylinder1.out" "polyExtrudeFace13.ip";
connectAttr "MiddleShape.wm" "polyExtrudeFace13.mp";
connectAttr "polyTweak22.out" "polySoftEdge8.ip";
connectAttr "MiddleShape.wm" "polySoftEdge8.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak22.ip";
connectAttr "|Barrel|polySurfaceShape1.o" "polySoftEdge9.ip";
connectAttr "BarrelShape.wm" "polySoftEdge9.mp";
connectAttr "polyTweak23.out" "polySoftEdge10.ip";
connectAttr "HandleShape.wm" "polySoftEdge10.mp";
connectAttr "polySoftEdge7.out" "polyTweak23.ip";
connectAttr "polySoftEdge10.out" "polySoftEdge11.ip";
connectAttr "HandleShape.wm" "polySoftEdge11.mp";
connectAttr "polySoftEdge11.out" "polyExtrudeFace14.ip";
connectAttr "HandleShape.wm" "polyExtrudeFace14.mp";
connectAttr "polyTweak24.out" "polySplit24.ip";
connectAttr "polySoftEdge9.out" "polyTweak24.ip";
connectAttr "polySplit24.out" "polySplit25.ip";
connectAttr "polySplit25.out" "polyExtrudeFace15.ip";
connectAttr "BarrelShape.wm" "polyExtrudeFace15.mp";
connectAttr "polyTweak25.out" "polySplit26.ip";
connectAttr "polyExtrudeFace15.out" "polyTweak25.ip";
connectAttr "polySplit26.out" "polySplit27.ip";
connectAttr "polyTweak26.out" "polyBevel3.ip";
connectAttr "BarrelShape.wm" "polyBevel3.mp";
connectAttr "polySplit27.out" "polyTweak26.ip";
connectAttr "polySoftEdge8.out" "polyBevel4.ip";
connectAttr "MiddleShape.wm" "polyBevel4.mp";
connectAttr "polySurfaceShape2.o" "polyBevel5.ip";
connectAttr "BottomShape.wm" "polyBevel5.mp";
connectAttr "polyCylinder3.out" "polySoftEdge12.ip";
connectAttr "SpearShape.wm" "polySoftEdge12.mp";
connectAttr "polySoftEdge12.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polyExtrudeFace16.ip";
connectAttr "SpearShape.wm" "polyExtrudeFace16.mp";
connectAttr "polyTweak27.out" "polyExtrudeFace17.ip";
connectAttr "SpearShape.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polyExtrudeFace18.ip";
connectAttr "SpearShape.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak28.ip";
connectAttr "polyTweak29.out" "polyExtrudeFace19.ip";
connectAttr "SpearShape.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak29.ip";
connectAttr "polyTweak30.out" "polyMergeVert1.ip";
connectAttr "SpearShape.wm" "polyMergeVert1.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak30.ip";
connectAttr "polyTweak31.out" "polySplit28.ip";
connectAttr "polyMergeVert1.out" "polyTweak31.ip";
connectAttr "polySplit28.out" "polySplit29.ip";
connectAttr "polyTweak32.out" "polyExtrudeFace20.ip";
connectAttr "SpearShape.wm" "polyExtrudeFace20.mp";
connectAttr "polySplit29.out" "polyTweak32.ip";
connectAttr "polyTweak33.out" "polySplit30.ip";
connectAttr "polyExtrudeFace20.out" "polyTweak33.ip";
connectAttr "polySplit30.out" "polySplit31.ip";
connectAttr "polySplit31.out" "polySplit32.ip";
connectAttr "polyTweak34.out" "polyMergeVert2.ip";
connectAttr "SpearShape.wm" "polyMergeVert2.mp";
connectAttr "polySplit32.out" "polyTweak34.ip";
connectAttr "polyTweak35.out" "polySplit33.ip";
connectAttr "polyMergeVert2.out" "polyTweak35.ip";
connectAttr "polyTweak36.out" "polySplit34.ip";
connectAttr "polySplit33.out" "polyTweak36.ip";
connectAttr "polyTweak37.out" "polySplit35.ip";
connectAttr "polySplit34.out" "polyTweak37.ip";
connectAttr "polySplit35.out" "polySplit36.ip";
connectAttr "polyTweak38.out" "polyMirror4.ip";
connectAttr "SpearShape.wm" "polyMirror4.mp";
connectAttr "polySplit36.out" "polyTweak38.ip";
connectAttr "polyTweak39.out" "polySoftEdge13.ip";
connectAttr "SpearShape.wm" "polySoftEdge13.mp";
connectAttr "polyMirror4.out" "polyTweak39.ip";
connectAttr "polySoftEdge13.out" "polySoftEdge14.ip";
connectAttr "SpearShape.wm" "polySoftEdge14.mp";
connectAttr "polyTweak40.out" "polySoftEdge15.ip";
connectAttr "SpearShape.wm" "polySoftEdge15.mp";
connectAttr "polySoftEdge14.out" "polyTweak40.ip";
connectAttr "polyTweak41.out" "polySoftEdge16.ip";
connectAttr "SpearShape.wm" "polySoftEdge16.mp";
connectAttr "polySoftEdge15.out" "polyTweak41.ip";
connectAttr "polySurfaceShape3.o" "polyAutoProj1.ip";
connectAttr "pCylinderShape13.wm" "polyAutoProj1.mp";
connectAttr "polySurfaceShape4.o" "polyAutoProj2.ip";
connectAttr "pCylinderShape12.wm" "polyAutoProj2.mp";
connectAttr "polySurfaceShape5.o" "polyAutoProj3.ip";
connectAttr "pCylinderShape11.wm" "polyAutoProj3.mp";
connectAttr "polySurfaceShape6.o" "polyAutoProj4.ip";
connectAttr "pCylinderShape10.wm" "polyAutoProj4.mp";
connectAttr "polySurfaceShape7.o" "polyAutoProj5.ip";
connectAttr "pCylinderShape9.wm" "polyAutoProj5.mp";
connectAttr "polySurfaceShape8.o" "polyAutoProj6.ip";
connectAttr "pCylinderShape8.wm" "polyAutoProj6.mp";
connectAttr "polyCylinder2.out" "polyAutoProj7.ip";
connectAttr "pCylinderShape7.wm" "polyAutoProj7.mp";
connectAttr "polySurfaceShape9.o" "polyAutoProj8.ip";
connectAttr "pCylinderShape14.wm" "polyAutoProj8.mp";
connectAttr "polySurfaceShape10.o" "polyAutoProj9.ip";
connectAttr "pCylinderShape15.wm" "polyAutoProj9.mp";
connectAttr "polySurfaceShape11.o" "polyAutoProj10.ip";
connectAttr "pCylinderShape16.wm" "polyAutoProj10.mp";
connectAttr "polyTweak42.out" "polyAutoProj11.ip";
connectAttr "HandleShape.wm" "polyAutoProj11.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak42.ip";
connectAttr "polyAutoProj11.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapSewMove1.ip";
connectAttr "polyMapSewMove1.out" "polyMapSewMove2.ip";
connectAttr "polyMapSewMove2.out" "polyMapSewMove3.ip";
connectAttr "polyMapSewMove3.out" "polyMapSewMove4.ip";
connectAttr "polyMapSewMove4.out" "polyMapSewMove5.ip";
connectAttr "polyMapSewMove5.out" "polyMapSewMove6.ip";
connectAttr "polyMapSewMove6.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapSewMove7.ip";
connectAttr "polyMapSewMove7.out" "polyMapSewMove8.ip";
connectAttr "polyMapSewMove8.out" "polyMapSewMove9.ip";
connectAttr "polyMapSewMove9.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapSewMove10.ip";
connectAttr "polyMapSewMove10.out" "polyMapSewMove11.ip";
connectAttr "polyMapSewMove11.out" "polyMapSewMove12.ip";
connectAttr "polyMapSewMove12.out" "polyTweakUV4.ip";
connectAttr "polySurfaceShape12.o" "polyAutoProj12.ip";
connectAttr "pCylinderShape4.wm" "polyAutoProj12.mp";
connectAttr "polySurfaceShape13.o" "polyAutoProj13.ip";
connectAttr "pCylinderShape5.wm" "polyAutoProj13.mp";
connectAttr "polySurfaceShape14.o" "polyAutoProj14.ip";
connectAttr "pCylinderShape6.wm" "polyAutoProj14.mp";
connectAttr "polyBevel3.out" "polyAutoProj15.ip";
connectAttr "BarrelShape.wm" "polyAutoProj15.mp";
connectAttr "polyAutoProj15.out" "polyTweakUV5.ip";
connectAttr "polyBevel4.out" "polyAutoProj16.ip";
connectAttr "MiddleShape.wm" "polyAutoProj16.mp";
connectAttr "polyAutoProj16.out" "polyTweakUV6.ip";
connectAttr "polyBevel5.out" "polyAutoProj17.ip";
connectAttr "BottomShape.wm" "polyAutoProj17.mp";
connectAttr "polyAutoProj17.out" "polyTweakUV7.ip";
connectAttr "polyTweak43.out" "polyAutoProj18.ip";
connectAttr "SpearShape.wm" "polyAutoProj18.mp";
connectAttr "polySoftEdge16.out" "polyTweak43.ip";
connectAttr "polyAutoProj18.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyMapSewMove13.ip";
connectAttr "polyMapSewMove13.out" "polyMapSewMove14.ip";
connectAttr "polyMapSewMove14.out" "polyMapSewMove15.ip";
connectAttr "polyMapSewMove15.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "polyMapSewMove16.ip";
connectAttr "polyMapSewMove16.out" "polyMapSewMove17.ip";
connectAttr "polyMapSewMove17.out" "polyMapSewMove18.ip";
connectAttr "polyMapSewMove18.out" "polyMapSewMove19.ip";
connectAttr "polyMapSewMove19.out" "polyTweakUV10.ip";
connectAttr "polyTweakUV10.out" "polyMapSewMove20.ip";
connectAttr "polyMapSewMove20.out" "polyMapSewMove21.ip";
connectAttr "polyMapSewMove21.out" "polyMapSewMove22.ip";
connectAttr "polyMapSewMove22.out" "polyMapSewMove23.ip";
connectAttr "polyMapSewMove23.out" "polyTweakUV11.ip";
connectAttr "polyTweakUV11.out" "polyMapSewMove24.ip";
connectAttr "polyMapSewMove24.out" "polyMapSewMove25.ip";
connectAttr "polyMapSewMove25.out" "polyMapSewMove26.ip";
connectAttr "polyMapSewMove26.out" "polyMapSewMove27.ip";
connectAttr "polyMapSewMove27.out" "polyTweakUV12.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "HandleShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MiddleShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BarrelShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BottomShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape13.iog" ":initialShadingGroup.dsm" -na;
connectAttr "SpearShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape14.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape15.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape16.iog" ":initialShadingGroup.dsm" -na;
// End of Spear Gun.ma
