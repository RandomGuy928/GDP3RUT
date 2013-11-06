//Maya ASCII 2014 scene
//Name: FloatingRepulsorAnimation2.ma
//Last modified: Tue, Nov 05, 2013 11:07:01 PM
//Codeset: 1252
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.0480188688833554 -1.5927073526782611 -0.81748794505265354 ;
	setAttr ".r" -type "double3" 888.86164725240803 -2075.7999999977746 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 8.2447323161913264;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pSphere2";
	setAttr ".s" -type "double3" 1.6197171858797077 1.6197171858797077 1.6197171858797077 ;
createNode mesh -n "pSphereShape2" -p "pSphere2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pSphere3";
createNode mesh -n "pSphereShape3" -p "pSphere3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 77 ".pt";
	setAttr ".pt[120]" -type "float3" -7.4505806e-009 3.7252903e-009 -7.4505806e-009 ;
	setAttr -av ".pt[120].px";
	setAttr -av ".pt[120].py";
	setAttr -av ".pt[120].pz";
	setAttr ".pt[121]" -type "float3" 7.4505806e-009 3.7252903e-009 7.4505806e-009 ;
	setAttr -av ".pt[121].px";
	setAttr -av ".pt[121].py";
	setAttr -av ".pt[121].pz";
	setAttr ".pt[122]" -type "float3" 7.4505806e-009 -3.7252903e-009 7.4505806e-009 ;
	setAttr -av ".pt[122].px";
	setAttr -av ".pt[122].py";
	setAttr -av ".pt[122].pz";
	setAttr ".pt[123]" -type "float3" -7.4505806e-009 -3.7252903e-009 -7.4505806e-009 ;
	setAttr -av ".pt[123].px";
	setAttr -av ".pt[123].py";
	setAttr -av ".pt[123].pz";
	setAttr ".pt[124]" -type "float3" 0 3.7252903e-009 -1.4901161e-008 ;
	setAttr -av ".pt[124].px";
	setAttr -av ".pt[124].py";
	setAttr -av ".pt[124].pz";
	setAttr ".pt[125]" -type "float3" 0 -3.7252903e-009 -1.4901161e-008 ;
	setAttr -av ".pt[125].px";
	setAttr -av ".pt[125].py";
	setAttr -av ".pt[125].pz";
	setAttr ".pt[126]" -type "float3" -7.4505806e-009 3.7252903e-009 7.4505806e-009 ;
	setAttr -av ".pt[126].px";
	setAttr -av ".pt[126].py";
	setAttr -av ".pt[126].pz";
	setAttr ".pt[127]" -type "float3" -7.4505806e-009 -3.7252903e-009 7.4505806e-009 ;
	setAttr -av ".pt[127].px";
	setAttr -av ".pt[127].py";
	setAttr -av ".pt[127].pz";
	setAttr ".pt[128]" -type "float3" 7.4505806e-009 3.7252903e-009 -7.4505806e-009 ;
	setAttr -av ".pt[128].px";
	setAttr -av ".pt[128].py";
	setAttr -av ".pt[128].pz";
	setAttr ".pt[129]" -type "float3" 7.4505806e-009 -3.7252903e-009 -7.4505806e-009 ;
	setAttr -av ".pt[129].px";
	setAttr -av ".pt[129].py";
	setAttr -av ".pt[129].pz";
	setAttr ".pt[130]" -type "float3" -1.4901161e-008 3.7252903e-009 0 ;
	setAttr -av ".pt[130].px";
	setAttr -av ".pt[130].py";
	setAttr -av ".pt[130].pz";
	setAttr ".pt[131]" -type "float3" -1.4901161e-008 -3.7252903e-009 0 ;
	setAttr -av ".pt[131].px";
	setAttr -av ".pt[131].py";
	setAttr -av ".pt[131].pz";
	setAttr ".pt[132]" -type "float3" 7.4505806e-009 3.7252903e-009 7.4505806e-009 ;
	setAttr -av ".pt[132].px";
	setAttr -av ".pt[132].py";
	setAttr -av ".pt[132].pz";
	setAttr ".pt[133]" -type "float3" 7.4505806e-009 -3.7252903e-009 7.4505806e-009 ;
	setAttr -av ".pt[133].px";
	setAttr -av ".pt[133].py";
	setAttr -av ".pt[133].pz";
	setAttr ".pt[134]" -type "float3" -7.4505806e-009 3.7252903e-009 -7.4505806e-009 ;
	setAttr -av ".pt[134].px";
	setAttr -av ".pt[134].py";
	setAttr -av ".pt[134].pz";
	setAttr ".pt[135]" -type "float3" -7.4505806e-009 -3.7252903e-009 -7.4505806e-009 ;
	setAttr -av ".pt[135].px";
	setAttr -av ".pt[135].py";
	setAttr -av ".pt[135].pz";
	setAttr ".pt[136]" -type "float3" 0 3.7252903e-009 1.4901161e-008 ;
	setAttr -av ".pt[136].px";
	setAttr -av ".pt[136].py";
	setAttr -av ".pt[136].pz";
	setAttr ".pt[137]" -type "float3" 0 -3.7252903e-009 1.4901161e-008 ;
	setAttr -av ".pt[137].px";
	setAttr -av ".pt[137].py";
	setAttr -av ".pt[137].pz";
	setAttr ".pt[138]" -type "float3" 7.4505806e-009 3.7252903e-009 -7.4505806e-009 ;
	setAttr -av ".pt[138].px";
	setAttr -av ".pt[138].py";
	setAttr -av ".pt[138].pz";
	setAttr ".pt[139]" -type "float3" 7.4505806e-009 -3.7252903e-009 -7.4505806e-009 ;
	setAttr -av ".pt[139].px";
	setAttr -av ".pt[139].py";
	setAttr -av ".pt[139].pz";
	setAttr ".pt[140]" -type "float3" -7.4505806e-009 3.7252903e-009 7.4505806e-009 ;
	setAttr -av ".pt[140].px";
	setAttr -av ".pt[140].py";
	setAttr -av ".pt[140].pz";
	setAttr ".pt[141]" -type "float3" -7.4505806e-009 -3.7252903e-009 7.4505806e-009 ;
	setAttr -av ".pt[141].px";
	setAttr -av ".pt[141].py";
	setAttr -av ".pt[141].pz";
	setAttr ".pt[142]" -type "float3" 1.4901161e-008 3.7252903e-009 0 ;
	setAttr -av ".pt[142].px";
	setAttr -av ".pt[142].py";
	setAttr -av ".pt[142].pz";
	setAttr ".pt[143]" -type "float3" 1.4901161e-008 -3.7252903e-009 0 ;
	setAttr -av ".pt[143].px";
	setAttr -av ".pt[143].py";
	setAttr -av ".pt[143].pz";
	setAttr ".pt[218]" -type "float3" -0.036039326 0.064753681 0.020807331 ;
	setAttr ".pt[219]" -type "float3" -0.020807302 0.064753681 0.036039356 ;
	setAttr ".pt[220]" -type "float3" -0.029086061 0.050406486 0.050378598 ;
	setAttr ".pt[221]" -type "float3" -0.050378568 0.050406486 0.029086091 ;
	setAttr ".pt[222]" -type "float3" 2.7508356e-008 0.064753681 0.041614663 ;
	setAttr ".pt[223]" -type "float3" 0.020807359 0.064753681 0.036039356 ;
	setAttr ".pt[224]" -type "float3" 0.02908612 0.050406486 0.050378598 ;
	setAttr ".pt[225]" -type "float3" 2.7508356e-008 0.050406486 0.058172181 ;
	setAttr ".pt[226]" -type "float3" 0.036039378 0.064753681 0.020807331 ;
	setAttr ".pt[227]" -type "float3" 0.041614689 0.064753681 0 ;
	setAttr ".pt[228]" -type "float3" 0.058172219 0.050406486 0 ;
	setAttr ".pt[229]" -type "float3" 0.050378628 0.050406486 0.029086091 ;
	setAttr ".pt[230]" -type "float3" 0.036039378 0.064753681 -0.020807331 ;
	setAttr ".pt[231]" -type "float3" 0.020807359 0.064753681 -0.036039356 ;
	setAttr ".pt[232]" -type "float3" 0.02908612 0.050406486 -0.050378598 ;
	setAttr ".pt[233]" -type "float3" 0.050378628 0.050406486 -0.029086091 ;
	setAttr ".pt[234]" -type "float3" 2.7508356e-008 0.064753681 -0.041614663 ;
	setAttr ".pt[235]" -type "float3" -0.020807302 0.064753681 -0.036039356 ;
	setAttr ".pt[236]" -type "float3" -0.029086061 0.050406486 -0.050378598 ;
	setAttr ".pt[237]" -type "float3" 2.7508356e-008 0.050406486 -0.058172181 ;
	setAttr ".pt[238]" -type "float3" -0.036039326 0.064753681 -0.020807331 ;
	setAttr ".pt[239]" -type "float3" -0.041614633 0.064753681 0 ;
	setAttr ".pt[240]" -type "float3" -0.058172151 0.050406486 0 ;
	setAttr ".pt[241]" -type "float3" -0.050378568 0.050406486 -0.029086091 ;
	setAttr ".pt[242]" -type "float3" -0.050378568 -0.050406486 0.029086091 ;
	setAttr ".pt[243]" -type "float3" -0.029086061 -0.050406486 0.050378598 ;
	setAttr ".pt[244]" -type "float3" -0.020807302 -0.064753681 0.036039356 ;
	setAttr ".pt[245]" -type "float3" -0.036039326 -0.064753681 0.020807331 ;
	setAttr ".pt[246]" -type "float3" 2.7508356e-008 -0.050406486 0.058172181 ;
	setAttr ".pt[247]" -type "float3" 0.02908612 -0.050406486 0.050378598 ;
	setAttr ".pt[248]" -type "float3" 0.020807359 -0.064753681 0.036039356 ;
	setAttr ".pt[249]" -type "float3" 2.7508356e-008 -0.064753681 0.041614663 ;
	setAttr ".pt[250]" -type "float3" 0.050378628 -0.050406486 0.029086091 ;
	setAttr ".pt[251]" -type "float3" 0.058172219 -0.050406486 0 ;
	setAttr ".pt[252]" -type "float3" 0.041614689 -0.064753681 0 ;
	setAttr ".pt[253]" -type "float3" 0.036039378 -0.064753681 0.020807331 ;
	setAttr ".pt[254]" -type "float3" 0.050378628 -0.050406486 -0.029086091 ;
	setAttr ".pt[255]" -type "float3" 0.02908612 -0.050406486 -0.050378598 ;
	setAttr ".pt[256]" -type "float3" 0.020807359 -0.064753681 -0.036039356 ;
	setAttr ".pt[257]" -type "float3" 0.036039378 -0.064753681 -0.020807331 ;
	setAttr ".pt[258]" -type "float3" 2.7508356e-008 -0.050406486 -0.058172181 ;
	setAttr ".pt[259]" -type "float3" -0.029086061 -0.050406486 -0.050378598 ;
	setAttr ".pt[260]" -type "float3" -0.020807302 -0.064753681 -0.036039356 ;
	setAttr ".pt[261]" -type "float3" 2.7508356e-008 -0.064753681 -0.041614663 ;
	setAttr ".pt[262]" -type "float3" -0.050378568 -0.050406486 -0.029086091 ;
	setAttr ".pt[263]" -type "float3" -0.058172151 -0.050406486 0 ;
	setAttr ".pt[264]" -type "float3" -0.041614633 -0.064753681 0 ;
	setAttr ".pt[265]" -type "float3" -0.036039326 -0.064753681 -0.020807331 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polySphere -n "polySphere2";
	setAttr ".sa" 12;
	setAttr ".sh" 10;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 10 "f[48:50]" "f[54:56]" "f[60:62]" "f[66:68]" "f[72:74]" "f[78:80]" "f[84:86]" "f[90:92]" "f[108:110]" "f[114:116]";
	setAttr ".ix" -type "matrix" 1.6197171858797077 0 0 0 0 1.6197171858797077 0 0 0 0 1.6197171858797077 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.80565524 0 ;
	setAttr ".rs" 42298;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4027162047417927 0 -1.6197171858797077 ;
	setAttr ".cbx" -type "double3" 1.4027162047417927 1.6113105400217267 1.6197171858797077 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 37 ".tk";
	setAttr ".tk[54]" -type "float3" 0 0.0051902044 0 ;
	setAttr ".tk[55]" -type "float3" 0 0.0051902044 0 ;
	setAttr ".tk[56]" -type "float3" 0 0.0051902044 0 ;
	setAttr ".tk[57]" -type "float3" 0 0.0051902044 0 ;
	setAttr ".tk[60]" -type "float3" 0 0.0019824817 0 ;
	setAttr ".tk[61]" -type "float3" 0 0.0019824817 0 ;
	setAttr ".tk[62]" -type "float3" 0 0.0019824817 0 ;
	setAttr ".tk[63]" -type "float3" 0 0.0019824817 0 ;
	setAttr ".tk[66]" -type "float3" 0 0.0019824817 0 ;
	setAttr ".tk[67]" -type "float3" 0 0.0019824817 0 ;
	setAttr ".tk[68]" -type "float3" 0 0.0019824817 0 ;
	setAttr ".tk[69]" -type "float3" 0 0.0019824817 0 ;
	setAttr ".tk[72]" -type "float3" 0 -0.00091124669 0 ;
	setAttr ".tk[73]" -type "float3" 0 -0.00091124669 0 ;
	setAttr ".tk[74]" -type "float3" 0 -0.00091124669 0 ;
	setAttr ".tk[75]" -type "float3" 0 -0.00091124669 0 ;
	setAttr ".tk[78]" -type "float3" 0 -0.00091124669 0 ;
	setAttr ".tk[79]" -type "float3" 0 -0.00091124669 0 ;
	setAttr ".tk[80]" -type "float3" 0 -0.00091124669 0 ;
	setAttr ".tk[81]" -type "float3" 0 -0.00091124669 0 ;
	setAttr ".tk[84]" -type "float3" 0 -0.0032077229 0 ;
	setAttr ".tk[85]" -type "float3" 0 -0.0032077229 0 ;
	setAttr ".tk[86]" -type "float3" 0 -0.0032077229 0 ;
	setAttr ".tk[87]" -type "float3" 0 -0.0032077229 0 ;
	setAttr ".tk[90]" -type "float3" 0 -0.0032077229 0 ;
	setAttr ".tk[91]" -type "float3" 0 -0.0032077229 0 ;
	setAttr ".tk[92]" -type "float3" 0 -0.0032077229 0 ;
	setAttr ".tk[93]" -type "float3" 0 -0.0032077229 0 ;
	setAttr ".tk[96]" -type "float3" 0 -0.0046821516 0 ;
	setAttr ".tk[97]" -type "float3" 0 -0.0046821516 0 ;
	setAttr ".tk[98]" -type "float3" 0 -0.0046821516 0 ;
	setAttr ".tk[99]" -type "float3" 0 -0.0046821516 0 ;
	setAttr ".tk[102]" -type "float3" 0 -0.0046821516 0 ;
	setAttr ".tk[103]" -type "float3" 0 -0.0046821516 0 ;
	setAttr ".tk[104]" -type "float3" 0 -0.0046821516 0 ;
	setAttr ".tk[105]" -type "float3" 0 -0.0046821516 0 ;
	setAttr ".tk[109]" -type "float3" 0 -0.0051902044 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 18 "f[3:5]" "f[9:11]" "f[15:17]" "f[21:23]" "f[27:29]" "f[33:35]" "f[39:41]" "f[45:50]" "f[54:56]" "f[60:62]" "f[66:68]" "f[72:74]" "f[78:80]" "f[84:86]" "f[90:92]" "f[99:101]" "f[105:110]" "f[114:116]";
	setAttr ".ix" -type "matrix" 1.6197171858797077 0 0 0 0 1.6197171858797077 0 0 0 0 1.6197171858797077 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.0042033228 0 ;
	setAttr ".rs" 59481;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.6197171858797077 -1.6197171858797077 -1.6197171858797077 ;
	setAttr ".cbx" -type "double3" 1.6197171858797077 1.6113105400217267 1.6197171858797077 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 20 "f[1]" "f[7]" "f[13]" "f[19]" "f[25]" "f[31]" "f[37]" "f[43]" "f[52]" "f[58]" "f[64]" "f[70]" "f[76]" "f[82]" "f[88]" "f[94]" "f[97]" "f[103]" "f[112]" "f[118]";
	setAttr ".ix" -type "matrix" 1.6197171858797077 0 0 0 0 1.6197171858797077 0 0 0 0 1.6197171858797077 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.0042033228 0 ;
	setAttr ".rs" 56272;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.6197171858797077 -1.6197171858797077 -1.6197171858797077 ;
	setAttr ".cbx" -type "double3" 1.6197171858797077 1.6113105400217267 1.6197171858797077 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 94 ".tk[94:187]" -type "float3"  -1.4901161e-008 0 0 0 0 1.4901161e-008
		 -1.4901161e-008 1.8626451e-009 7.4505806e-009 -7.4505806e-009 1.8626451e-009 1.4901161e-008
		 5.6843419e-014 0 0 5.6843419e-014 1.8626451e-009 2.9802322e-008 0 0 1.4901161e-008
		 1.4901161e-008 1.8626451e-009 7.4505806e-009 7.4505806e-009 9.3132257e-010 -1.4901161e-008
		 1.4901161e-008 9.3132257e-010 -7.4505806e-009 -0.021400025 -0.13136557 -0.037065942
		 -0.037065934 -0.13136557 -0.021400044 -0.0705036 -0.11169253 -0.040705267 -0.040705267
		 -0.11169253 -0.070503592 -0.04280005 -0.13136555 8.4825125e-009 -0.081410527 -0.11169253
		 0 -0.037065927 -0.13136557 0.021400025 -0.070503592 -0.11169254 0.040705267 -0.097039871
		 -0.081051089 -0.056025982 -0.056025982 -0.081051089 -0.097039871 -0.11205196 -0.081051104
		 7.1188118e-013 -0.097039856 -0.081051089 0.056025982 -0.11407722 -0.042440608 -0.065862522
		 -0.065862492 -0.042440608 -0.11407723 -0.131725 -0.042440608 -1.6965025e-008 -0.11407722
		 -0.042440608 0.065862507 -0.11994788 0.000359433 -0.069251969 -0.06925194 0.000359431
		 -0.1199479 -0.13850389 0.000359433 -8.4825125e-009 -0.1199479 0.0010782956 0.069251955
		 -1.6965025e-008 -0.1381444 8.4825125e-009 0.021400025 -0.13136557 0.037065942 0.037065934
		 -0.13136557 0.021400044 0.0705036 -0.11169253 0.040705267 0.040705267 -0.11169253
		 0.070503592 0.04280005 -0.13136555 -8.4825125e-009 0.081410527 -0.11169253 0 0.037065927
		 -0.13136557 -0.021400025 0.070503592 -0.11169254 -0.040705267 0.097039871 -0.081051089
		 0.056025982 0.056025982 -0.081051089 0.097039871 0.11205196 -0.081051104 7.1188118e-013
		 0.097039871 -0.081051089 -0.056025982 0.11407722 -0.042440608 0.065862507 0.065862507
		 -0.042440608 0.11407722 0.13172501 -0.042440608 0 0.11407722 -0.042440608 -0.065862507
		 0.11994788 0.000359431 0.06925194 0.06925194 0.0010782946 0.11994788 0.13850388 0.000359431
		 0 0.11994788 0.000359431 -0.06925194 0 -0.1381444 0 0.11994788 0.000359431 -0.06925194
		 0.06925194 0.000359431 -0.11994788 0.065862507 0.043434065 -0.11407722 0.11407722
		 0.043434065 -0.065862507 0 0.000359431 -0.13850388 0 0.043434065 -0.13172501 -0.06925194
		 0.000359431 -0.11994788 -0.065862507 0.043434065 -0.11407722 0.056025982 0.081643738
		 -0.097039871 0.097039871 0.081643738 -0.056025982 0 0.081643738 -0.11205196 -0.056025982
		 0.081643738 -0.097039871 0.040705267 0.11196711 -0.070503592 0.070503592 0.11196711
		 -0.040705267 0 0.11196711 -0.081410535 -0.040705267 0.11196711 -0.070503592 0.021400025
		 0.13143595 -0.037065927 0.037065927 0.13143595 -0.021400025 0 0.13143595 -0.04280005
		 -0.021400025 0.13143595 -0.037065927 0 0.1381444 0 -0.11994788 0.0010782946 0.06925194
		 -0.06925194 0.0010782946 0.11994788 -0.065862507 0.043434065 0.11407722 -0.11407722
		 0.043434065 0.065862507 0 0.0010782946 0.13850388 0 0.043434065 0.13172501 0.06925194
		 0.0010782946 0.11994788 0.065862507 0.043434065 0.11407722 -0.056025982 0.081643738
		 0.097039871 -0.097039871 0.081643738 0.056025982 0 0.081643738 0.11205196 0.056025982
		 0.081643738 0.097039871 -0.040705267 0.11196711 0.070503592 -0.070503592 0.11196711
		 0.040705267 0 0.11196711 0.081410535 0.040705267 0.11196711 0.070503592 -0.021400025
		 0.13143595 0.037065927 -0.037065927 0.13143595 0.021400025 0 0.13143595 0.04280005
		 0.021400025 0.13143595 0.037065927 0 0.1381444 0;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 19 "f[5]" "f[7]" "f[17]" "f[19]" "f[29]" "f[31]" "f[43]" "f[53]" "f[55]" "f[65]" "f[67]" "f[77]" "f[79]" "f[89]" "f[91]" "f[101]" "f[103]" "f[113]" "f[115]";
	setAttr ".ix" -type "matrix" 1.6197171858797077 0 0 0 0 1.6197171858797077 0 0 0 0 1.6197171858797077 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.87689996 -0.010800324 0.92864138 ;
	setAttr ".rs" 62564;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7537998903824044 -1.856666102604672 -2.747854245487373e-008 ;
	setAttr ".cbx" -type "double3" 0 1.8350654530926731 1.8572828171646685 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 47 ".tk";
	setAttr ".tk[183]" -type "float3" 0 0 -0.030286526 ;
	setAttr ".tk[185]" -type "float3" 0 0 -0.041372161 ;
	setAttr ".tk[187]" -type "float3" 0 0 0.041372161 ;
	setAttr ".tk[188]" -type "float3" 0.02266185 -0.13911189 -0.039251581 ;
	setAttr ".tk[189]" -type "float3" -5.1061299e-008 -0.13911189 -0.045323804 ;
	setAttr ".tk[190]" -type "float3" -5.1061299e-008 -0.1182787 -0.086211018 ;
	setAttr ".tk[191]" -type "float3" 0.043105442 -0.1182787 -0.074660935 ;
	setAttr ".tk[192]" -type "float3" -5.1061299e-008 -0.085830413 -0.11865933 ;
	setAttr ".tk[193]" -type "float3" 0.059329614 -0.085830413 -0.10276204 ;
	setAttr ".tk[194]" -type "float3" -5.1061299e-008 -0.044943251 -0.13949244 ;
	setAttr ".tk[195]" -type "float3" 0.069746234 -0.044943251 -0.12080398 ;
	setAttr ".tk[196]" -type "float3" -5.1061299e-008 0.00038062397 -0.14667112 ;
	setAttr ".tk[197]" -type "float3" 0.073335506 0.00038062397 -0.12702073 ;
	setAttr ".tk[198]" -type "float3" -5.1061299e-008 -0.14629032 0 ;
	setAttr ".tk[199]" -type "float3" -0.022661952 -0.13911189 0.039251581 ;
	setAttr ".tk[200]" -type "float3" -5.1061299e-008 -0.13911189 0.045323804 ;
	setAttr ".tk[201]" -type "float3" -5.1061299e-008 -0.1182787 0.086211018 ;
	setAttr ".tk[202]" -type "float3" -0.043105561 -0.1182787 0.074660935 ;
	setAttr ".tk[203]" -type "float3" -5.1061299e-008 -0.085830413 0.11865933 ;
	setAttr ".tk[204]" -type "float3" -0.059329718 -0.085830413 0.10276204 ;
	setAttr ".tk[205]" -type "float3" -5.1061299e-008 -0.044943251 0.13949244 ;
	setAttr ".tk[206]" -type "float3" -0.069746226 -0.044943251 0.12080398 ;
	setAttr ".tk[207]" -type "float3" -5.1061299e-008 0.0011418777 0.14667112 ;
	setAttr ".tk[208]" -type "float3" -0.073335566 0.0011418777 0.12702073 ;
	setAttr ".tk[209]" -type "float3" -5.1061299e-008 -0.14629032 0 ;
	setAttr ".tk[210]" -type "float3" -0.12702079 0.00038062397 -0.073335558 ;
	setAttr ".tk[211]" -type "float3" -0.14667116 0.00038062397 0 ;
	setAttr ".tk[212]" -type "float3" -0.13949241 0.045704443 0 ;
	setAttr ".tk[213]" -type "float3" -0.12080404 0.045704443 -0.069746219 ;
	setAttr ".tk[214]" -type "float3" -0.11865939 0.086591721 0 ;
	setAttr ".tk[215]" -type "float3" -0.10276208 0.086591721 -0.059329666 ;
	setAttr ".tk[216]" -type "float3" -0.086211026 0.11903999 0 ;
	setAttr ".tk[217]" -type "float3" -0.074660964 0.11903999 -0.043105509 ;
	setAttr ".tk[218]" -type "float3" -0.045323845 0.13987307 0 ;
	setAttr ".tk[219]" -type "float3" -0.039251626 0.13987307 -0.022661902 ;
	setAttr ".tk[220]" -type "float3" -5.1061299e-008 0.14629032 0 ;
	setAttr ".tk[221]" -type "float3" 0.12702067 0.00038062397 0.073335558 ;
	setAttr ".tk[222]" -type "float3" 0.14667101 0.00038062397 0 ;
	setAttr ".tk[223]" -type "float3" 0.13949242 0.045704443 0 ;
	setAttr ".tk[224]" -type "float3" 0.12080394 0.045704443 0.069746219 ;
	setAttr ".tk[225]" -type "float3" 0.11865926 0.086591721 0 ;
	setAttr ".tk[226]" -type "float3" 0.10276203 0.086591721 0.059329666 ;
	setAttr ".tk[227]" -type "float3" 0.086210921 0.11903999 0 ;
	setAttr ".tk[228]" -type "float3" 0.074660845 0.11903999 0.043105509 ;
	setAttr ".tk[229]" -type "float3" 0.045323744 0.13987307 0 ;
	setAttr ".tk[230]" -type "float3" 0.039251521 0.13987307 0.022661902 ;
	setAttr ".tk[231]" -type "float3" -5.1061299e-008 0.14629032 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 8 "f[24]" "f[26]" "f[30]" "f[32]" "f[63]" "f[65]" "f[69]" "f[71]";
	setAttr ".ix" -type "matrix" 1.6197171858797077 0 0 0 0 1.6197171858797077 0 0 0 0 1.6197171858797077 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 64793;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5404426226013106 -0.95204586129392077 -1.5404426226013106 ;
	setAttr ".cbx" -type "double3" 1.5404426226013106 0.95204586129392077 1.5404426226013106 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 74 ".tk[232:305]" -type "float3"  1.8626451e-009 1.4901161e-008
		 7.4505806e-009 -5.5879354e-009 1.4901161e-008 -3.7252903e-009 4.6566129e-010 7.4505806e-009
		 5.5879354e-009 1.8626451e-009 7.4505806e-009 7.4505806e-009 1.8626451e-009 0 0 0
		 0 7.4505806e-009 0 -3.7252903e-009 0 7.4505806e-009 -3.7252903e-009 7.4505806e-009
		 -1.1175871e-008 2.9802322e-008 7.4505806e-009 0 7.4505806e-009 5.5879354e-009 -7.4505806e-009
		 7.4505806e-009 0 -7.4505806e-009 7.4505806e-009 9.3132257e-010 3.7252903e-009 7.4505806e-009
		 1.1641532e-010 -7.4505806e-009 -7.4505806e-009 -3.7252903e-009 -9.3132257e-010 -7.4505806e-009
		 1.8626451e-009 -7.4505806e-009 -3.7252903e-009 3.7252903e-009 0 -3.7252903e-009 -7.4505806e-009
		 -7.4505806e-009 -3.4924597e-010 -7.4505806e-009 0 -3.4924597e-010 -7.4505806e-009
		 -7.4505806e-009 -1.4901161e-008 7.4505806e-009 -7.4505806e-009 5.8207661e-011 7.4505806e-009
		 3.7252903e-009 0 0 -7.4505806e-009 7.4505806e-009 9.3132257e-010 7.4505806e-009 -3.7252903e-009
		 7.4505806e-009 1.8626451e-009 7.4505806e-009 1.8626451e-009 5.5879354e-009 0 7.4505806e-009
		 -2.3283064e-010 0 3.7252903e-009 4.6566129e-010 7.4505806e-009 7.4505806e-009 -1.8626451e-009
		 7.4505806e-009 3.7252903e-009 1.8626451e-009 1.4901161e-008 7.4505806e-009 -7.4505806e-009
		 2.2351742e-008 7.4505806e-009 -2.3283064e-010 0 0 -7.4505806e-009 0 0 -7.4505806e-009
		 7.4505806e-009 0 0 7.4505806e-009 7.4505806e-009 -7.4505806e-009 -1.4901161e-008
		 3.7252903e-009 0 -1.4901161e-008 3.7252903e-009 -7.4505806e-009 -7.4505806e-009 0
		 1.8626451e-009 -7.4505806e-009 -5.8207661e-011 -7.4505806e-009 1.4901161e-008 5.5879354e-009
		 0 1.4901161e-008 3.7252903e-009 -7.4505806e-009 1.4901161e-008 3.7252903e-009 0.1648912
		 -0.13833368 -0.09519998 0.09519998 -0.13833368 -0.1648912 0.1119143 -0.072726302
		 -0.19384122 0.19384122 -0.072726302 -0.1119143 0 -0.13833368 -0.19039996 -0.09519998
		 -0.13833368 -0.1648912 -0.1119143 -0.072726302 -0.19384122 0 -0.072726302 -0.2238286
		 -0.1648912 -0.13833368 0.09519998 -0.09519998 -0.13833368 0.1648912 -0.1119143 -0.072726302
		 0.19384122 -0.19384122 -0.072726302 0.1119143 0 -0.13833368 0.19039996 0.09519998
		 -0.13833368 0.1648912 0.1119143 -0.072726302 0.19384122 0 -0.072726302 0.2238286
		 -0.1119143 0.073192872 -0.19384122 -0.19384122 0.072726302 -0.1119143 -0.1648912
		 0.13833368 -0.09519998 -0.09519998 0.13811915 -0.1648912 -0.2238286 0.072726302 0
		 -0.19384122 0.073192872 0.1119143 -0.1648912 0.13811915 0.09519998 -0.19039996 0.13833368
		 0 0.1119143 0.073192872 0.19384122 0.19384122 0.072726302 0.1119143 0.1648912 0.13833368
		 0.09519998 0.09519998 0.13811915 0.1648912 0.2238286 0.072726302 0 0.19384122 0.073192872
		 -0.1119143 0.1648912 0.13811915 -0.09519998 0.19039996 0.13833368 0;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "e[0:619]";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 0\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 48 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polySphere -n "polySphere3";
	setAttr ".sa" 12;
	setAttr ".sh" 11;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[48:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 63247;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.9898214340209962 -0.14231474697589874 -0.9898214340209962 ;
	setAttr ".cbx" -type "double3" 0.9898214340209962 0.14231474697589874 0.9898214340209962 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 12 "f[36]" "f[38]" "f[40]" "f[42]" "f[44]" "f[46]" "f[60]" "f[62]" "f[64]" "f[66]" "f[68]" "f[70]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 33217;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.9898214340209962 -0.415414959192276 -0.9898214340209962 ;
	setAttr ".cbx" -type "double3" 0.9898214340209962 0.415414959192276 0.9898214340209962 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 48 ".tk";
	setAttr ".tk[48]" -type "float3" 0 -1.8626451e-009 -7.4505806e-009 ;
	setAttr ".tk[49]" -type "float3" 7.4505806e-009 -1.8626451e-009 0 ;
	setAttr ".tk[50]" -type "float3" 0 -1.8626451e-009 -1.4901161e-008 ;
	setAttr ".tk[51]" -type "float3" -7.4505806e-009 -1.8626451e-009 0 ;
	setAttr ".tk[52]" -type "float3" 0 -1.8626451e-009 -7.4505806e-009 ;
	setAttr ".tk[53]" -type "float3" -1.4901161e-008 -1.8626451e-009 0 ;
	setAttr ".tk[54]" -type "float3" 0 -1.8626451e-009 7.4505806e-009 ;
	setAttr ".tk[55]" -type "float3" -7.4505806e-009 -1.8626451e-009 0 ;
	setAttr ".tk[56]" -type "float3" 0 -1.8626451e-009 1.4901161e-008 ;
	setAttr ".tk[57]" -type "float3" 7.4505806e-009 -1.8626451e-009 0 ;
	setAttr ".tk[58]" -type "float3" 0 -1.8626451e-009 7.4505806e-009 ;
	setAttr ".tk[59]" -type "float3" 1.4901161e-008 -1.8626451e-009 0 ;
	setAttr ".tk[60]" -type "float3" 0 1.8626451e-009 -7.4505806e-009 ;
	setAttr ".tk[61]" -type "float3" 7.4505806e-009 1.8626451e-009 0 ;
	setAttr ".tk[62]" -type "float3" 0 1.8626451e-009 -1.4901161e-008 ;
	setAttr ".tk[63]" -type "float3" -7.4505806e-009 1.8626451e-009 0 ;
	setAttr ".tk[64]" -type "float3" 0 1.8626451e-009 -7.4505806e-009 ;
	setAttr ".tk[65]" -type "float3" -1.4901161e-008 1.8626451e-009 0 ;
	setAttr ".tk[66]" -type "float3" 0 1.8626451e-009 7.4505806e-009 ;
	setAttr ".tk[67]" -type "float3" -7.4505806e-009 1.8626451e-009 0 ;
	setAttr ".tk[68]" -type "float3" 0 1.8626451e-009 1.4901161e-008 ;
	setAttr ".tk[69]" -type "float3" 7.4505806e-009 1.8626451e-009 0 ;
	setAttr ".tk[70]" -type "float3" 0 1.8626451e-009 7.4505806e-009 ;
	setAttr ".tk[71]" -type "float3" 1.4901161e-008 1.8626451e-009 0 ;
	setAttr ".tk[122]" -type "float3" 0.12756714 -0.021178786 -0.073650911 ;
	setAttr ".tk[123]" -type "float3" 0.073650911 -0.021178786 -0.12756714 ;
	setAttr ".tk[124]" -type "float3" 0.073650911 0.021178786 -0.12756714 ;
	setAttr ".tk[125]" -type "float3" 0.12756714 0.021178786 -0.073650911 ;
	setAttr ".tk[126]" -type "float3" 0 -0.021178786 -0.14730182 ;
	setAttr ".tk[127]" -type "float3" 0 0.021178786 -0.14730182 ;
	setAttr ".tk[128]" -type "float3" -0.073650911 -0.021178786 -0.12756714 ;
	setAttr ".tk[129]" -type "float3" -0.073650911 0.021178786 -0.12756714 ;
	setAttr ".tk[130]" -type "float3" -0.12756714 -0.021178786 -0.073650911 ;
	setAttr ".tk[131]" -type "float3" -0.12756714 0.021178786 -0.073650911 ;
	setAttr ".tk[132]" -type "float3" -0.14730182 -0.021178786 0 ;
	setAttr ".tk[133]" -type "float3" -0.14730182 0.021178786 0 ;
	setAttr ".tk[134]" -type "float3" -0.12756714 -0.021178786 0.073650911 ;
	setAttr ".tk[135]" -type "float3" -0.12756714 0.021178786 0.073650911 ;
	setAttr ".tk[136]" -type "float3" -0.073650911 -0.021178786 0.12756714 ;
	setAttr ".tk[137]" -type "float3" -0.073650911 0.021178786 0.12756714 ;
	setAttr ".tk[138]" -type "float3" 0 -0.021178786 0.14730182 ;
	setAttr ".tk[139]" -type "float3" 0 0.021178786 0.14730182 ;
	setAttr ".tk[140]" -type "float3" 0.073650911 -0.021178786 0.12756714 ;
	setAttr ".tk[141]" -type "float3" 0.073650911 0.021178786 0.12756714 ;
	setAttr ".tk[142]" -type "float3" 0.12756714 -0.021178786 0.073650911 ;
	setAttr ".tk[143]" -type "float3" 0.12756714 0.021178786 0.073650911 ;
	setAttr ".tk[144]" -type "float3" 0.14730182 -0.021178786 0 ;
	setAttr ".tk[145]" -type "float3" 0.14730182 0.021178786 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[108:131]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 59816;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.28173258900642395 -1 -0.28173258900642395 ;
	setAttr ".cbx" -type "double3" 0.28173258900642395 1 0.28173258900642395 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 48 ".tk[146:193]" -type "float3"  0.17751993 -0.093612261 -0.10249116
		 0.10249116 -0.093612261 -0.17751993 0.11152635 -0.032070119 -0.19316928 0.19316928
		 -0.032070119 -0.11152635 0 -0.093612261 -0.20498231 -0.10249116 -0.093612261 -0.17751993
		 -0.11152635 -0.032070119 -0.19316928 0 -0.032070119 -0.2230527 -0.17751993 -0.093612261
		 -0.10249116 -0.20498231 -0.093612261 0 -0.2230527 -0.032070119 0 -0.19316928 -0.032070119
		 -0.11152635 -0.17751993 -0.093612261 0.10249116 -0.10249116 -0.093612261 0.17751993
		 -0.11152635 -0.032070119 0.19316928 -0.19316928 -0.032070119 0.11152635 0 -0.093612261
		 0.20498231 0.10249116 -0.093612261 0.17751993 0.11152635 -0.032070119 0.19316928
		 0 -0.032070119 0.2230527 0.17751993 -0.093612261 0.10249116 0.20498231 -0.093612261
		 0 0.2230527 -0.032070119 0 0.19316928 -0.032070119 0.11152635 0.19316928 0.032070119
		 -0.11152635 0.11152635 0.032070119 -0.19316928 0.10249116 0.093612261 -0.17751993
		 0.17751993 0.093612261 -0.10249116 0 0.032070119 -0.2230527 -0.11152635 0.032070119
		 -0.19316928 -0.10249116 0.093612261 -0.17751993 0 0.093612261 -0.20498231 -0.19316928
		 0.032070119 -0.11152635 -0.2230527 0.032070119 0 -0.20498231 0.093612261 0 -0.17751993
		 0.093612261 -0.10249116 -0.19316928 0.032070119 0.11152635 -0.11152635 0.032070119
		 0.19316928 -0.10249116 0.093612261 0.17751993 -0.17751993 0.093612261 0.10249116
		 0 0.032070119 0.2230527 0.11152635 0.032070119 0.19316928 0.10249116 0.093612261
		 0.17751993 0 0.093612261 0.20498231 0.19316928 0.032070119 0.11152635 0.2230527 0.032070119
		 0 0.20498231 0.093612261 0 0.17751993 0.093612261 0.10249116;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 12 "f[12]" "f[14]" "f[16]" "f[18]" "f[20]" "f[22]" "f[84]" "f[86]" "f[88]" "f[90]" "f[92]" "f[94]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 53063;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.75574958324432373 -0.84125351905822754 -0.75574958324432373 ;
	setAttr ".cbx" -type "double3" 0.75574958324432373 0.84125351905822754 0.75574958324432373 ;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk";
	setAttr ".tk[12]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[13]" -type "float3" 0 0 3.7252903e-009 ;
	setAttr ".tk[15]" -type "float3" 0 0 3.7252903e-009 ;
	setAttr ".tk[16]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".tk[18]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".tk[19]" -type "float3" 0 0 -3.7252903e-009 ;
	setAttr ".tk[21]" -type "float3" 0 0 -3.7252903e-009 ;
	setAttr ".tk[22]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[96]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[97]" -type "float3" 0 0 3.7252903e-009 ;
	setAttr ".tk[99]" -type "float3" 0 0 3.7252903e-009 ;
	setAttr ".tk[100]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".tk[102]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".tk[103]" -type "float3" 0 0 -3.7252903e-009 ;
	setAttr ".tk[105]" -type "float3" 0 0 -3.7252903e-009 ;
	setAttr ".tk[106]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[192]" -type "float3" 0 -0.12792218 0 ;
	setAttr ".tk[193]" -type "float3" 0 -0.12792218 0 ;
	setAttr ".tk[194]" -type "float3" 0 -0.13332267 0 ;
	setAttr ".tk[195]" -type "float3" 0 -0.12792218 0 ;
	setAttr ".tk[196]" -type "float3" 0 -0.12792218 0 ;
	setAttr ".tk[197]" -type "float3" 0 -0.12792218 0 ;
	setAttr ".tk[198]" -type "float3" 0 -0.12792218 0 ;
	setAttr ".tk[199]" -type "float3" 0 -0.12792218 0 ;
	setAttr ".tk[200]" -type "float3" 0 -0.12792218 0 ;
	setAttr ".tk[201]" -type "float3" 0 -0.12792218 0 ;
	setAttr ".tk[202]" -type "float3" 0 -0.12792218 0 ;
	setAttr ".tk[203]" -type "float3" 0 -0.12792218 0 ;
	setAttr ".tk[204]" -type "float3" 0 -0.12792218 0 ;
	setAttr ".tk[205]" -type "float3" 0 0.12792218 0 ;
	setAttr ".tk[206]" -type "float3" 0 0.12792218 0 ;
	setAttr ".tk[207]" -type "float3" 0 0.13332267 0 ;
	setAttr ".tk[208]" -type "float3" 0 0.12792218 0 ;
	setAttr ".tk[209]" -type "float3" 0 0.12792218 0 ;
	setAttr ".tk[210]" -type "float3" 0 0.12792218 0 ;
	setAttr ".tk[211]" -type "float3" 0 0.12792218 0 ;
	setAttr ".tk[212]" -type "float3" 0 0.12792218 0 ;
	setAttr ".tk[213]" -type "float3" 0 0.12792218 0 ;
	setAttr ".tk[214]" -type "float3" 0 0.12792218 0 ;
	setAttr ".tk[215]" -type "float3" 0 0.12792218 0 ;
	setAttr ".tk[216]" -type "float3" 0 0.12792218 0 ;
	setAttr ".tk[217]" -type "float3" 0 0.12792218 0 ;
createNode animCurveTU -n "pSphere3_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 25 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pSphere3_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 25 0;
createNode animCurveTL -n "pSphere3_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 25 0;
createNode animCurveTL -n "pSphere3_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 25 0;
createNode animCurveTA -n "pSphere3_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 25 0;
createNode animCurveTA -n "pSphere3_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 -180.36608431483867 48 -359.70773930225965;
createNode animCurveTA -n "pSphere3_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 25 0;
createNode animCurveTU -n "pSphere3_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.55304748529854475 25 0.66169087458036613
		 48 0.55300880262946406;
createNode animCurveTU -n "pSphere3_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.55304748529854475 25 0.66169087458036613
		 48 0.55300880262946406;
createNode animCurveTU -n "pSphere3_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.55304748529854475 25 0.66169087458036613
		 48 0.55300880262946406;
createNode animCurveTL -n "pSphereShape3_pnts_29__pntx";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 48 0;
createNode animCurveTL -n "pSphereShape3_pnts_29__pnty";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 48 0;
createNode animCurveTL -n "pSphereShape3_pnts_29__pntz";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 48 0;
createNode animCurveTL -n "pSphereShape3_pnts_30__pntx";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 48 0;
createNode animCurveTL -n "pSphereShape3_pnts_30__pnty";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 48 0;
createNode animCurveTL -n "pSphereShape3_pnts_30__pntz";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 48 0;
createNode animCurveTL -n "pSphereShape3_pnts_41__pntx";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 48 0;
createNode animCurveTL -n "pSphereShape3_pnts_41__pnty";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 48 0;
createNode animCurveTL -n "pSphereShape3_pnts_41__pntz";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 48 0;
createNode animCurveTL -n "pSphereShape3_pnts_42__pntx";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 48 0;
createNode animCurveTL -n "pSphereShape3_pnts_42__pnty";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 48 0;
createNode animCurveTL -n "pSphereShape3_pnts_42__pntz";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 48 0;
select -ne :time1;
	setAttr ".o" 27;
	setAttr ".unw" 27;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "deleteComponent2.og" "pSphereShape2.i";
connectAttr "pSphere3_visibility.o" "pSphere3.v";
connectAttr "pSphere3_translateX.o" "pSphere3.tx";
connectAttr "pSphere3_translateY.o" "pSphere3.ty";
connectAttr "pSphere3_translateZ.o" "pSphere3.tz";
connectAttr "pSphere3_rotateX.o" "pSphere3.rx";
connectAttr "pSphere3_rotateY.o" "pSphere3.ry";
connectAttr "pSphere3_rotateZ.o" "pSphere3.rz";
connectAttr "pSphere3_scaleX.o" "pSphere3.sx";
connectAttr "pSphere3_scaleY.o" "pSphere3.sy";
connectAttr "pSphere3_scaleZ.o" "pSphere3.sz";
connectAttr "polyExtrudeFace10.out" "pSphereShape3.i";
connectAttr "pSphereShape3_pnts_29__pntx.o" "pSphereShape3.pt[29].px";
connectAttr "pSphereShape3_pnts_29__pnty.o" "pSphereShape3.pt[29].py";
connectAttr "pSphereShape3_pnts_29__pntz.o" "pSphereShape3.pt[29].pz";
connectAttr "pSphereShape3_pnts_30__pntx.o" "pSphereShape3.pt[30].px";
connectAttr "pSphereShape3_pnts_30__pnty.o" "pSphereShape3.pt[30].py";
connectAttr "pSphereShape3_pnts_30__pntz.o" "pSphereShape3.pt[30].pz";
connectAttr "pSphereShape3_pnts_41__pntx.o" "pSphereShape3.pt[41].px";
connectAttr "pSphereShape3_pnts_41__pnty.o" "pSphereShape3.pt[41].py";
connectAttr "pSphereShape3_pnts_41__pntz.o" "pSphereShape3.pt[41].pz";
connectAttr "pSphereShape3_pnts_42__pntx.o" "pSphereShape3.pt[42].px";
connectAttr "pSphereShape3_pnts_42__pnty.o" "pSphereShape3.pt[42].py";
connectAttr "pSphereShape3_pnts_42__pntz.o" "pSphereShape3.pt[42].pz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "pSphereShape2.wm" "polyExtrudeFace2.mp";
connectAttr "polySphere2.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "pSphereShape2.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak2.out" "polyExtrudeFace4.ip";
connectAttr "pSphereShape2.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace5.ip";
connectAttr "pSphereShape2.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak3.ip";
connectAttr "polyExtrudeFace5.out" "polyExtrudeFace6.ip";
connectAttr "pSphereShape2.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "deleteComponent2.ig";
connectAttr "polySphere3.out" "polyExtrudeFace7.ip";
connectAttr "pSphereShape3.wm" "polyExtrudeFace7.mp";
connectAttr "polyTweak5.out" "polyExtrudeFace8.ip";
connectAttr "pSphereShape3.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace9.ip";
connectAttr "pSphereShape3.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace10.ip";
connectAttr "pSphereShape3.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak7.ip";
connectAttr "pSphereShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of FloatingRepulsorAnimation2.ma
