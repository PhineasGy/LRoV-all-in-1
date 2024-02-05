function data = func_mapping(whichCode,data,type,varargin)
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % --- processing ---

    %% structure assignment
    while whichCode == "II"
AUFMode = data.AUFMode;                                       RRpointSet_ME_wld = data.RRpointSet_ME_wld;             forPLA_normalWP = data.forPLA_normalWP;                 outputA = data.outputA;                                           segVerSize = data.segVerSize;                                 
CDP = data.CDP;                                               RRpointSet_RE_wld = data.RRpointSet_RE_wld;             forPLA_outsidePrism = data.forPLA_outsidePrism;         outputD = data.outputD;                                           segmentMode = data.segmentMode;                               
EIHor = data.EIHor;                                           UV_normal1 = data.UV_normal1;                           forcePupilEdgeInverse = data.forcePupilEdgeInverse;     outputIIName = data.outputIIName;                                 showAUF = data.showAUF;                                       
GPMode = data.GPMode;                                         VE_EyePoint = data.VE_EyePoint;                         glassThickness = data.glassThickness;                   outputL = data.outputL;                                           showAsph = data.showAsph;                                     
GRLMat = data.GRLMat;                                         VE_originalPoint = data.VE_originalPoint;               glass_n = data.glass_n;                                 outputManual = data.outputManual;                                 showGP = data.showGP;                                         
GRLMode = data.GRLMode;                                       WD = data.WD;                                           gp_PBA_array = data.gp_PBA_array;                       outputO = data.outputO;                                           showGRL = data.showGRL;                                       
GRLNumShift = data.GRLNumShift;                               WDForAutoGP = data.WDForAutoGP;                         imageFilename = data.imageFilename;                     overwrite = data.overwrite;                                       showII = data.showII;                                         
I = data.I;                                                   WD_PLArray = data.WD_PLArray;                           imageFilepath = data.imageFilepath;                     p1 = data.p1;                                                     showLRA = data.showLRA;                                       
LRA = data.LRA;                                               WDz = data.WDz;                                         imagePathname = data.imagePathname;                     p2 = data.p2;                                                     showPRA = data.showPRA;                                       
LREL = data.LREL;                                             air_n = data.air_n;                                     isLLSameAsPanel = data.isLLSameAsPanel;                 panelPixelNumHor = data.panelPixelNumHor;                         showWP = data.showWP;                                         
LensHeightEachLenticular = data.LensHeightEachLenticular;     asph_leftEnd_normal = data.asph_leftEnd_normal;         isRRShift = data.isRRShift;                             panelPixelNumVer = data.panelPixelNumVer;                         sizeforRangeY = data.sizeforRangeY;                           
LensRadiusEachLenticular = data.LensRadiusEachLenticular;     asph_max_height = data.asph_max_height;                 lengthZRay2Default = data.lengthZRay2Default;           panelSizeHor = data.panelSizeHor;                                 softLLTracing = data.softLLTracing;                           
MOffset = data.MOffset;                                       asph_rightEnd_normal = data.asph_rightEnd_normal;       lengthZRay3Default = data.lengthZRay3Default;           panelSizeHorLL = data.panelSizeHorLL;                             spaHorSize = data.spaHorSize;                                 
OCAThickness = data.OCAThickness;                             aspherical = data.aspherical;                           lensAperturePool = data.lensAperturePool;               panelSizeVer = data.panelSizeVer;                                 spaVerSize = data.spaVerSize;                                 
OCA_n = data.OCA_n;                                           asphericalMat = data.asphericalMat;                     lensArraySizeHor = data.lensArraySizeHor;               panelSizeVerLL = data.panelSizeVerLL;                             systemTiltAngle = data.systemTiltAngle;                       
PBA = data.PBA;                                               base_segNum = data.base_segNum;                         lensArraySizeVer = data.lensArraySizeVer;               parameter = data.parameter;                                       tVeryBegining = data.tVeryBegining;                           
PBA1_fit_length = data.PBA1_fit_length;                       binoDistance = data.binoDistance;                       lensCenter_x_fitting = data.lensCenter_x_fitting;       phiAzimuthalAngle = data.phiAzimuthalAngle;                       temp_normalGP = data.temp_normalGP;                           
PBA1_fit_line = data.PBA1_fit_line;                           colorMode = data.colorMode;                             lensHeightDefault = data.lensHeightDefault;             phiAzimuthalAngle_original = data.phiAzimuthalAngle_original;     thetaPolarAngle = data.thetaPolarAngle;                       
PBA1_fit_num = data.PBA1_fit_num;                             customLine = data.customLine;                           lensHeightEI0 = data.lensHeightEI0;                     phiAzimuthal_PLArray = data.phiAzimuthal_PLArray;                 thetaPolarAngle_original = data.thetaPolarAngle_original;     
PBA1_fit_point = data.PBA1_fit_point;                         debugMode = data.debugMode;                             lensPitch = data.lensPitch;                             pixelSize = data.pixelSize;                                       thetaPolar_PLArray = data.thetaPolar_PLArray;                 
PBA1_fit_x = data.PBA1_fit_x;                                 displayCoverThickness = data.displayCoverThickness;     lensRadius = data.lensRadius;                           polyFit = data.polyFit;                                           totalNumFile = data.totalNumFile;                             
PBA1_fit_y = data.PBA1_fit_y;                                 displayCover_n = data.displayCover_n;                   lensRadiusDefault = data.lensRadiusDefault;             polyNum = data.polyNum;                                           verSizeForSeg = data.verSizeForSeg;                           
PBA_InputArray = data.PBA_InputArray;                         display_CDP = data.display_CDP;                         lensRadiusOriginal = data.lensRadiusOriginal;           preciseGP = data.preciseGP;                                       viewAngleHor = data.viewAngleHor;                             
PBA_array_forPLA = data.PBA_array_forPLA;                     display_EyeMode = data.display_EyeMode;                 lensSubstrate = data.lensSubstrate;                     prismLensGap = data.prismLensGap;                                 viewAngleVer = data.viewAngleVer;                             
PBA_array_forPLA_2 = data.PBA_array_forPLA_2;                 display_LensInfo = data.display_LensInfo;               lensThicknessEI0 = data.lensThicknessEI0;               prismMode = data.prismMode;                                       viewPointHor = data.viewPointHor;                             
PLA_array_fromPBA = data.PLA_array_fromPBA;                   display_PrismInfo = data.display_PrismInfo;             lens_n = data.lens_n;                                   prismSizeHor = data.prismSizeHor;                                 viewPointVer = data.viewPointVer;                             
PLA_array_fromPBA_2 = data.PLA_array_fromPBA_2;               display_PupilSize = data.display_PupilSize;             ll_array = data.ll_array;                               prismSizeVer = data.prismSizeVer;                                 wedgeHalfHeight = data.wedgeHalfHeight;                       
PLAtoPBAFunction = data.PLAtoPBAFunction;                     display_RDP = data.display_RDP;                         ll_down = data.ll_down;                                 prismStructure = data.prismStructure;                             wedgeMaxHeight = data.wedgeMaxHeight;                         
PRA = data.PRA;                                               display_RRRmode = data.display_RRRmode;                 ll_left = data.ll_left;                                 prismSubstrate = data.prismSubstrate;                             wedgePBA = data.wedgePBA;                                     
RDP = data.RDP;                                               display_STA = data.display_STA;                         ll_right = data.ll_right;                               prism_n = data.prism_n;                                           wedgePRA = data.wedgePRA;                                     
RDPModifierMode = data.RDPModifierMode;                       display_SegmentMode = data.display_SegmentMode;         ll_up = data.ll_up;                                     pupilSize = data.pupilSize;                                       wedgePrism = data.wedgePrism;                                 
RDP_PLArray = data.RDP_PLArray;                               display_VA = data.display_VA;                           mid_PLA = data.mid_PLA;                                 pupilSize_PLArray = data.pupilSize_PLArray;                       wedgeVer = data.wedgeVer;                                     
RDP_original = data.RDP_original;                             display_qLTRP = data.display_qLTRP;                     mu1 = data.mu1;                                         q_LTRPMode = data.q_LTRPMode;                                     wedge_normal = data.wedge_normal;                             
RPpointSet_LE_wld = data.RPpointSet_LE_wld;                   effectiveG = data.effectiveG;                           mu2 = data.mu2;                                         rangeY = data.rangeY;                                             whichCode = data.whichCode;                                   
RPpointSet_ME_wld = data.RPpointSet_ME_wld;                   eyeMode = data.eyeMode;                                 mu_GlasstoOCA = data.mu_GlasstoOCA;                     rangeYPitch = data.rangeYPitch;                                   whichpba = data.whichpba;                                     
RPpointSet_RE_wld = data.RPpointSet_RE_wld;                   farrestDistanceHor = data.farrestDistanceHor;           mu_LenstoOCA = data.mu_LenstoOCA;                       rotLRA = data.rotLRA;                                             widthStart = data.widthStart;                                 
RRFilterHalfSizeHor = data.RRFilterHalfSizeHor;               farrestDistanceVer = data.farrestDistanceVer;           mu_OCAtoDisplayCover = data.mu_OCAtoDisplayCover;       rotPRA = data.rotPRA;                                             widthStep = data.widthStep;                                   
RRFilterHalfSizeVer = data.RRFilterHalfSizeVer;               focal = data.focal;                                     mu_OCAtoGlass = data.mu_OCAtoGlass;                     rotPhi = data.rotPhi;                                             wp_PBA = data.wp_PBA;                                         
RRRConstant = data.RRRConstant;                               forPLA_incident = data.forPLA_incident;                 mu_airtoLens = data.mu_airtoLens;                       rotWedgePRA = data.rotWedgePRA;                                   writeII = data.writeII;                                       
RRRMode = data.RRRMode;                                       forPLA_insidePrism = data.forPLA_insidePrism;           numII = data.numII;                                     segFit = data.segFit;                                             writeSpa = data.writeSpa;                                     
RRShiftHor_wld = data.RRShiftHor_wld;                         forPLA_mu_PrismtoAir = data.forPLA_mu_PrismtoAir;       numLensYOriginal = data.numLensYOriginal;               segM00 = data.segM00;                                             xNumMax = data.xNumMax;                                       
RRShiftVer_wld = data.RRShiftVer_wld;                         forPLA_mu_airtoPrism = data.forPLA_mu_airtoPrism;       originalImage = data.originalImage;                     segNum = data.segNum;                                             zero2one = data.zero2one;                                     
RRpointSet_LE_wld = data.RRpointSet_LE_wld;                   forPLA_normalGP = data.forPLA_normalGP;                                                                                                                                                                                                         
    break
    end
    while whichCode == "VZA"
AUFMode = data.AUFMode;                                       VVAMesh = data.VVAMesh;                                 forPLA_incident = data.forPLA_incident;                 numLensYOriginal = data.numLensYOriginal;                         segNum = data.segNum;                                         
CDP = data.CDP;                                               WD = data.WD;                                           forPLA_insidePrism = data.forPLA_insidePrism;           numtest = data.numtest;                                           segVerSize = data.segVerSize;                                 
EIHor = data.EIHor;                                           WDForAutoGP = data.WDForAutoGP;                         forPLA_mu_PrismtoAir = data.forPLA_mu_PrismtoAir;       outputA = data.outputA;                                           segmentMode = data.segmentMode;                               
GPMode = data.GPMode;                                         WD_PLArray = data.WD_PLArray;                           forPLA_mu_airtoPrism = data.forPLA_mu_airtoPrism;       outputD = data.outputD;                                           showAUF = data.showAUF;                                       
GRLMat = data.GRLMat;                                         WDz = data.WDz;                                         forPLA_normalGP = data.forPLA_normalGP;                 outputIIName = data.outputIIName;                                 showAsph = data.showAsph;                                     
GRLMode = data.GRLMode;                                       air_n = data.air_n;                                     forPLA_normalWP = data.forPLA_normalWP;                 outputL = data.outputL;                                           showGP = data.showGP;                                         
GRLNumShift = data.GRLNumShift;                               angleCenterHVA = data.angleCenterHVA;                   forPLA_outsidePrism = data.forPLA_outsidePrism;         outputManual = data.outputManual;                                 showGRL = data.showGRL;                                       
HVAAllFailTag = data.HVAAllFailTag;                           angleCenterVVA = data.angleCenterVVA;                   forcePupilEdgeInverse = data.forcePupilEdgeInverse;     outputO = data.outputO;                                           showLRA = data.showLRA;                                       
HVAMesh = data.HVAMesh;                                       angleStep = data.angleStep;                             fullfilename = data.fullfilename;                       overwrite = data.overwrite;                                       showPRA = data.showPRA;                                       
I = data.I;                                                   angleSweepHVA = data.angleSweepHVA;                     glassThickness = data.glassThickness;                   p1 = data.p1;                                                     showRPFailMask = data.showRPFailMask;                         
LRA = data.LRA;                                               angleSweepVVA = data.angleSweepVVA;                     glass_n = data.glass_n;                                 p2 = data.p2;                                                     showRPMask = data.showRPMask;                                 
LREL = data.LREL;                                             asph_leftEnd_normal = data.asph_leftEnd_normal;         gp_PBA_array = data.gp_PBA_array;                       panelPixelNumHor = data.panelPixelNumHor;                         showWP = data.showWP;                                         
LensHeightEachLenticular = data.LensHeightEachLenticular;     asph_max_height = data.asph_max_height;                 isLLSameAsPanel = data.isLLSameAsPanel;                 panelPixelNumVer = data.panelPixelNumVer;                         sizeforRangeY = data.sizeforRangeY;                           
LensRadiusEachLenticular = data.LensRadiusEachLenticular;     asph_rightEnd_normal = data.asph_rightEnd_normal;       lastAngle = data.lastAngle;                             panelSizeHor = data.panelSizeHor;                                 softLLTracing = data.softLLTracing;                           
OCAThickness = data.OCAThickness;                             aspherical = data.aspherical;                           lengthZRay2Default = data.lengthZRay2Default;           panelSizeHorLL = data.panelSizeHorLL;                             systemTiltAngle = data.systemTiltAngle;                       
OCA_n = data.OCA_n;                                           asphericalMat = data.asphericalMat;                     lengthZRay3Default = data.lengthZRay3Default;           panelSizeVer = data.panelSizeVer;                                 tVeryBegining = data.tVeryBegining;                           
PBA = data.PBA;                                               autoTermString = data.autoTermString;                   lensAperturePool = data.lensAperturePool;               panelSizeVerLL = data.panelSizeVerLL;                             temp_normalGP = data.temp_normalGP;                           
PBA1_fit_length = data.PBA1_fit_length;                       autoVZAnalysis = data.autoVZAnalysis;                   lensArraySizeHor = data.lensArraySizeHor;               parameter = data.parameter;                                       thetaPolarAngle = data.thetaPolarAngle;                       
PBA1_fit_line = data.PBA1_fit_line;                           base_segNum = data.base_segNum;                         lensArraySizeVer = data.lensArraySizeVer;               phiAzimuthalAngle = data.phiAzimuthalAngle;                       thetaPolarAngle_original = data.thetaPolarAngle_original;     
PBA1_fit_num = data.PBA1_fit_num;                             binoDistance = data.binoDistance;                       lensCenter_x_fitting = data.lensCenter_x_fitting;       phiAzimuthalAngle_original = data.phiAzimuthalAngle_original;     thetaPolar_PLArray = data.thetaPolar_PLArray;                 
PBA1_fit_point = data.PBA1_fit_point;                         criticalFailRPNumber = data.criticalFailRPNumber;       lensHeightDefault = data.lensHeightDefault;             phiAzimuthal_PLArray = data.phiAzimuthal_PLArray;                 thetaPool = data.thetaPool;                                   
PBA1_fit_x = data.PBA1_fit_x;                                 customLine = data.customLine;                           lensHeightEI0 = data.lensHeightEI0;                     phiPool = data.phiPool;                                           verSizeForSeg = data.verSizeForSeg;                           
PBA1_fit_y = data.PBA1_fit_y;                                 dateStringOn = data.dateStringOn;                       lensPitch = data.lensPitch;                             pixelSize = data.pixelSize;                                       viewAngleHor = data.viewAngleHor;                             
PBA_InputArray = data.PBA_InputArray;                         displayCoverThickness = data.displayCoverThickness;     lensRadius = data.lensRadius;                           polyFit = data.polyFit;                                           viewAngleVer = data.viewAngleVer;                             
PBA_array_forPLA = data.PBA_array_forPLA;                     displayCover_n = data.displayCover_n;                   lensRadiusDefault = data.lensRadiusDefault;             polyNum = data.polyNum;                                           viewPointHor = data.viewPointHor;                             
PBA_array_forPLA_2 = data.PBA_array_forPLA_2;                 display_CDP = data.display_CDP;                         lensRadiusOriginal = data.lensRadiusOriginal;           preciseGP = data.preciseGP;                                       viewPointVer = data.viewPointVer;                             
PLA_array_fromPBA = data.PLA_array_fromPBA;                   display_EyeMode = data.display_EyeMode;                 lensSubstrate = data.lensSubstrate;                     prismLensGap = data.prismLensGap;                                 wedgeHalfHeight = data.wedgeHalfHeight;                       
PLA_array_fromPBA_2 = data.PLA_array_fromPBA_2;               display_LensInfo = data.display_LensInfo;               lensThicknessEI0 = data.lensThicknessEI0;               prismMode = data.prismMode;                                       wedgeMaxHeight = data.wedgeMaxHeight;                         
PLAtoPBAFunction = data.PLAtoPBAFunction;                     display_PrismInfo = data.display_PrismInfo;             lens_n = data.lens_n;                                   prismSizeHor = data.prismSizeHor;                                 wedgePBA = data.wedgePBA;                                     
PRA = data.PRA;                                               display_PupilSize = data.display_PupilSize;             limitedVA = data.limitedVA;                             prismSizeVer = data.prismSizeVer;                                 wedgePRA = data.wedgePRA;                                     
RPpointSet_LE_wld = data.RPpointSet_LE_wld;                   display_STA = data.display_STA;                         limitedVA_PL = data.limitedVA_PL;                       prismStructure = data.prismStructure;                             wedgePrism = data.wedgePrism;                                 
RPpointSet_ME_wld = data.RPpointSet_ME_wld;                   display_SegmentMode = data.display_SegmentMode;         ll_array = data.ll_array;                               prismSubstrate = data.prismSubstrate;                             wedgeVer = data.wedgeVer;                                     
RPpointSet_RE_wld = data.RPpointSet_RE_wld;                   display_VA = data.display_VA;                           ll_down = data.ll_down;                                 prism_n = data.prism_n;                                           wedge_normal = data.wedge_normal;                             
RRpointSet_LE_wld = data.RRpointSet_LE_wld;                   display_qLTRP = data.display_qLTRP;                     ll_left = data.ll_left;                                 pupilSize = data.pupilSize;                                       whichCode = data.whichCode;                                   
RRpointSet_ME_wld = data.RRpointSet_ME_wld;                   dyPSMode = data.dyPSMode;                               ll_right = data.ll_right;                               pupilSize_PLArray = data.pupilSize_PLArray;                       whichVAElement = data.whichVAElement;                         
RRpointSet_RE_wld = data.RRpointSet_RE_wld;                   dynamicPS = data.dynamicPS;                             ll_up = data.ll_up;                                     q_LTRPMode = data.q_LTRPMode;                                     whichVATerm = data.whichVATerm;                               
TIRHappen = data.TIRHappen;                                   effectiveG = data.effectiveG;                           mid_PLA = data.mid_PLA;                                 rangeY = data.rangeY;                                             whichpba = data.whichpba;                                     
UV_normal1 = data.UV_normal1;                                 excelFileName = data.excelFileName;                     mu1 = data.mu1;                                         rangeYPitch = data.rangeYPitch;                                   widthStart = data.widthStart;                                 
VAPool = data.VAPool;                                         excelSheetName = data.excelSheetName;                   mu2 = data.mu2;                                         rotLRA = data.rotLRA;                                             widthStep = data.widthStep;                                   
VATerm = data.VATerm;                                         eyeMode = data.eyeMode;                                 mu_GlasstoOCA = data.mu_GlasstoOCA;                     rotPRA = data.rotPRA;                                             wp_PBA = data.wp_PBA;                                         
VAchecktemp1 = data.VAchecktemp1;                             failNumberMatrix = data.failNumberMatrix;               mu_LenstoOCA = data.mu_LenstoOCA;                       rotPhi = data.rotPhi;                                             writeExcel = data.writeExcel;                                 
VAchecktemp2 = data.VAchecktemp2;                             farrestDistanceHor = data.farrestDistanceHor;           mu_OCAtoDisplayCover = data.mu_OCAtoDisplayCover;       rotWedgePRA = data.rotWedgePRA;                                   writeRPFailMask = data.writeRPFailMask;                       
VE_EyePoint = data.VE_EyePoint;                               farrestDistanceVer = data.farrestDistanceVer;           mu_OCAtoGlass = data.mu_OCAtoGlass;                     segFit = data.segFit;                                             writeRPMask = data.writeRPMask;                               
VE_originalPoint = data.VE_originalPoint;                     filename = data.filename;                               mu_airtoLens = data.mu_airtoLens;                       segM00 = data.segM00;                                             xNumMax = data.xNumMax;                                       
VVAAllFailTag = data.VVAAllFailTag;                           focal = data.focal;                                     numII = data.numII;                                                                                                                                                                     
        break
    end
    
    %% 前處理
    if whichCode == "II" && type == "BLP" && ~isempty(varargin)
        midLineCell = varargin{1}; LLLineCell = varargin{2}; 
    end
    if whichCode == "VZA"
        originalImage = zeros(panelPixelNumVer,panelPixelNumHor);
        debugMode = 1; % ROI mapping
        colorMode = 1; % 顏色 RP 模式
    end
    
    %% padding size
    padSizeVer = ceil((farrestDistanceVer + lensPitch) / pixelSize); % 半邊長 (單位: pxl)
    padSizeHor = ceil((farrestDistanceHor + lensPitch) / pixelSize); % 半邊長 (單位: pxl)
    OIPixelNumVer = size(originalImage,1);
    OIPixelNumHor = size(originalImage,2);
    temp_diff_Ver = (OIPixelNumVer-panelPixelNumVer)/2; % 半邊長 (單位: pxl)
    temp_diff_Hor = (OIPixelNumHor-panelPixelNumHor)/2; % 半邊長 (單位: pxl)
    padOI = padarray(originalImage,[padSizeVer-temp_diff_Ver padSizeHor-temp_diff_Hor],0,'both'); % 原圖 Pad % 0.156809 seconds.
    padPanelPixelNumVer = padSizeVer * 2 + panelPixelNumVer;
    padPanelPixelNumHor = padSizeHor * 2 + panelPixelNumHor;
    padPanelLengthVer = padPanelPixelNumVer*(panelSizeVer/panelPixelNumVer);
    padPanelLengthHor = padPanelPixelNumHor*(panelSizeHor/panelPixelNumHor);
    padII = zeros(padPanelPixelNumVer,padPanelPixelNumHor,3); % II Pad

    %% info
    
    % 4 type in total
    if whichCode == "II" 
        if debugMode == 1 && type == "BLP"
            cprintf('err',"Mapping Process: (II-ROI) + (BLP)")
        elseif debugMode == 1 && type == "noBLP"
            cprintf('err',"Mapping Process: (II-ROI) + (noBLP)")
        elseif debugMode == 0 && type == "BLP"
            cprintf('err',"Mapping Process: (II-PbP) + (BLP)")
        elseif debugMode == 0 && type == "noBLP"
            cprintf('err',"Mapping Process: (II-PbP) + (noBLP)")
        end
    end
    %% loop begin
    % lens --> eye --> seg
    lensCount_mapping = 0;
    for whichLens_mapping = rangeY
        if whichLens_mapping == rangeY(1) && whichCode == "II" 
           fprintf('\n已完成EI(Y=):'); 
        end
        lensCount_mapping = lensCount_mapping + 1;
        for whichEye_mapping = eyeMode
            switch whichEye_mapping
                case -1
                    rangeX = segM00.segmentPoint_Matrix{1,lensCount_mapping,1};
                case 0 
                    rangeX = segM00.segmentPoint_Matrix{1,lensCount_mapping,2};
                case 1
                    rangeX = segM00.segmentPoint_Matrix{1,lensCount_mapping,3};
            end
    
            %% Mapping Process (多分段)
            xNumPad = length(rangeX); % 總分段"點"數
            if ismember(whichCode,["II", "VZA"])
                if segmentMode == 2 && segFit == 1 % 20230901
                    lensCenterTop_x = lensCenter_x_fitting(lensCount_mapping,1);
                    lensCenterBottom_x = lensCenter_x_fitting(lensCount_mapping,2);
                    % step1: 紀錄該 Lens 需要幾段 (hard only)
                    base_segVerSize = verSizeForSeg/base_segPoint;    
                    base_XStepNum = round((lensCenterBottom_x(1) - lensCenterTop_x(1)) / base_segVerSize);
                    if base_XStepNum <= 2
                        base_XStepNum = 2;
                    end
                    xNumPad = base_XStepNum;
                end
            end
            segmentNum = xNumPad - 1; % 共 xNum-1 段
            for whichSeg_mapping = 1:segmentNum
                %% TIR 處理
                switch whichEye_mapping
                    case -1
                        M00temp1 = segM00.M00Parameter_Matrix{1,lensCount_mapping,1};
                    case 0
                        M00temp1 = segM00.M00Parameter_Matrix{1,lensCount_mapping,2};
                    case 1
                        M00temp1 = segM00.M00Parameter_Matrix{1,lensCount_mapping,3};
                end
                if ~isempty(M00temp1)
                    M00temp2 = M00temp1(whichSeg_mapping,:);
                    if isnan(M00temp2)
                        continue;
                    end
                end
                %% RP 處理
                switch whichEye_mapping
                    case -1
                        RPpointSet = RPpointSet_LE_wld;                   
                    case 0
                        RPpointSet = RPpointSet_ME_wld;                   
                    case 1
                        RPpointSet = RPpointSet_RE_wld;
                end
                RP_lu_wld = RPpointSet(2*(whichSeg_mapping)-1,:,lensCount_mapping)';
                RP_ld_wld = RPpointSet(2*(whichSeg_mapping+1)-1,:,lensCount_mapping)';
                RP_ru_wld = RPpointSet(2*whichSeg_mapping,:,lensCount_mapping)';
                RP_rd_wld = RPpointSet(2*(whichSeg_mapping+1),:,lensCount_mapping)';
                if any(RP_lu_wld==-99) || any(RP_ld_wld==-99) % 換下一段 (20230829)
                    continue
                end
                RP_wld = [RP_lu_wld,RP_ld_wld,RP_rd_wld,RP_ru_wld];
                % 轉換至 Panel 座標
                RP_pnl = World2Panel(RP_wld,pixelSize,padPanelLengthVer,padPanelLengthHor);
                RP_lu_pnl = RP_pnl(:,1); RP_ld_pnl = RP_pnl(:,2);
                RP_rd_pnl = RP_pnl(:,3); RP_ru_pnl = RP_pnl(:,4);
                % 20230918 RP_pnl 為浮點數
                % 定義 RP 框 (需為整數)
                RP_ROI_LU = [min(floor(RP_pnl(1,:)));min(floor(RP_pnl(2,:)))];
                RP_ROI_RD = [max(ceil(RP_pnl(1,:)));max(ceil(RP_pnl(2,:)))];
                RP_RectangleROI_y = [RP_ROI_LU(2) RP_ROI_RD(2)];
                RP_RectangleROI_x = [RP_ROI_LU(1) RP_ROI_RD(1)];
                RPSizeVer = RP_RectangleROI_x(2) - RP_RectangleROI_x(1) + 1;
                RPSizeHor = RP_RectangleROI_y(2) - RP_RectangleROI_y(1) + 1;
                RP_normal = [RP_pnl(1,:)-RP_ROI_LU(1)+1 ; RP_pnl(2,:)-RP_ROI_LU(2)+1];
    
                % applyBLPROI 
                if type == "BLP"
                    % seg 數全部相同 (因為 soft LL tracing)
                    BLP_ROI_Seg = size(midLineCell,1);
                    BLPROISet = nan(2,BLP_ROI_Seg*2);
                    for whichSegBLPROI = 1:BLP_ROI_Seg
                        switch whichEye_mapping
                            case -1 % 中線 --> 右線
                                tempBLPROI = midLineCell{whichSegBLPROI,lensCount_mapping};
                                BLPROISet(:,whichSegBLPROI) = World2Panel(tempBLPROI,pixelSize,padPanelLengthVer,padPanelLengthHor);
                                tempBLPROI2 = LLLineCell{BLP_ROI_Seg-whichSegBLPROI+1,lensCount_mapping+1};
                                BLPROISet(:,BLP_ROI_Seg+whichSegBLPROI) = World2Panel(tempBLPROI2,pixelSize,padPanelLengthVer,padPanelLengthHor);
                            case 1 % 左線 --> 中線
                                tempBLPROI = LLLineCell{whichSegBLPROI,lensCount_mapping};
                                BLPROISet(:,whichSegBLPROI) = World2Panel(tempBLPROI,pixelSize,padPanelLengthVer,padPanelLengthHor);
                                tempBLPROI2 = midLineCell{BLP_ROI_Seg-whichSegBLPROI+1,lensCount_mapping};
                                BLPROISet(:,BLP_ROI_Seg+whichSegBLPROI) = World2Panel(tempBLPROI2,pixelSize,padPanelLengthVer,padPanelLengthHor);
                        end
                    end
                    % 多邊形(分段) Mask
                    BLP_rec_mask_x = (BLPROISet(1,:) -  RP_ROI_LU(1) + 1)'; 
                    BLP_rec_mask_y = (BLPROISet(2,:) -  RP_ROI_LU(2) + 1)';
                    BLP_rec_mask = poly2mask(BLP_rec_mask_y,BLP_rec_mask_x,RPSizeVer,RPSizeHor); % ROI
                end
                if debugMode == 0 % Debug Mode 不需要 RR 資訊
                    %% RR 處理 (including content)
                    switch whichEye_mapping
                        case -1
                            RRpointSet = RRpointSet_LE_wld;
                        case 0
                            RRpointSet = RRpointSet_ME_wld;
                        case 1
                            RRpointSet = RRpointSet_RE_wld;
                    end
                    % RR 座標 shift (相當於是將原圖往 Ver+ 位移)
                    RR_lu_wld = RRpointSet(2*(whichSeg_mapping)-1,:,lensCount_mapping)' - [RRShiftVer_wld;RRShiftHor_wld];
                    RR_ld_wld = RRpointSet(2*(whichSeg_mapping+1)-1,:,lensCount_mapping)' - [RRShiftVer_wld;RRShiftHor_wld];
                    RR_ru_wld = RRpointSet(2*whichSeg_mapping,:,lensCount_mapping)' - [RRShiftVer_wld;RRShiftHor_wld];
                    RR_rd_wld = RRpointSet(2*(whichSeg_mapping+1),:,lensCount_mapping)' - [RRShiftVer_wld;RRShiftHor_wld];
                    RR_wld = [RR_ru_wld,RR_rd_wld,RR_ld_wld,RR_lu_wld]; % 與 RP 左右相反
                    RR_pnl = World2Panel(RR_wld,pixelSize,padPanelLengthVer,padPanelLengthHor);
                    RR_ru_pnl = RR_pnl(:,1); RR_rd_pnl = RR_pnl(:,2);
                    RR_ld_pnl = RR_pnl(:,3); RR_lu_pnl = RR_pnl(:,4);

                    % 20230918 RR_pnl 為浮點數
                    % 定義 RR 框 (需為整數)
                    RR_ROI_LU = [min(floor(RR_pnl(1,:)));min(floor(RR_pnl(2,:)))];
                    RR_ROI_RD = [max(ceil(RR_pnl(1,:)));max(ceil(RR_pnl(2,:)))];
                    RR_RectangleROI_y = [RR_ROI_LU(2) RR_ROI_RD(2)];
                    RR_RectangleROI_x = [RR_ROI_LU(1) RR_ROI_RD(1)];
                    RRSizeVer = RR_RectangleROI_x(2) - RR_RectangleROI_x(1) + 1;
                    RRSizeHor = RR_RectangleROI_y(2) - RR_RectangleROI_y(1) + 1;

                    % 目前: CDP < 0 --> RR to RP 不翻轉
                    if CDP < 0
                        RR_pnl(:,1) = RR_lu_pnl';
                        RR_pnl(:,4) = RR_ru_pnl';
                        RR_pnl(:,2) = RR_ld_pnl';
                        RR_pnl(:,3) = RR_rd_pnl';
                    end
                    % 位移 4 點 RR 座標 rrhsVer/rrhsHor: half size
                    rrhsVer = RRFilterHalfSizeVer;
                    rrhsHor = RRFilterHalfSizeHor;

                    % 20230918 update
                    RR_normal = [RR_pnl(1,:)-RR_ROI_LU(1)+1 ; RR_pnl(2,:)-RR_ROI_LU(2)+1] + [rrhsVer;rrhsHor]; % 20221208
                
                    % Content
                    RR_ROI = padOI(RR_RectangleROI_x(1)-rrhsVer:RR_RectangleROI_x(2)+rrhsVer,RR_RectangleROI_y(1)-rrhsHor:RR_RectangleROI_y(2)+rrhsHor,:);
                    % RP Mask For PbP speed up (RPMask 外擴 0.5 Pixel For Buffer)
                    RP_rec_mask_x = [RP_lu_pnl(1)-0.5 RP_ld_pnl(1)+0.5 RP_rd_pnl(1)+0.5 RP_ru_pnl(1)-0.5] - RP_ROI_LU(1) + 1;
                    RP_rec_mask_y = [RP_lu_pnl(2)-0.5 RP_ld_pnl(2)-0.5 RP_rd_pnl(2)+0.5 RP_ru_pnl(2)+0.5] - RP_ROI_LU(2) + 1;
                    RP_rec_mask = poly2mask(RP_rec_mask_y,RP_rec_mask_x,RPSizeVer,RPSizeHor); % ROI
                    if type == "BLP" 
                        RP_rec_mask = RP_rec_mask .* BLP_rec_mask;
                    end
                    RPFinal = zeros(RPSizeVer,RPSizeHor,3);
    
                    %% Pixel by Pixel Mapping
                    for xRP = 1:RPSizeVer
                        for yRP = 1:RPSizeHor
                            P5 = [xRP;yRP];
                            tf = RP_rec_mask(P5(1),P5(2));
                            if tf == 1
                                uvFromRP = RPGetUV(RP_normal,P5);
                                if any(uvFromRP<0) || any(uvFromRP>1) || ~isreal(uvFromRP)
                                else
                                    xyForRR = round(RRGetPosition(RR_normal,uvFromRP)); 
                                    if any(xyForRR==0) 
                                        xyForRR(xyForRR==0)=1;
                                        RPValueMask = RR_ROI(xyForRR(1)-rrhsVer:xyForRR(1)+rrhsVer,xyForRR(2)-rrhsHor:xyForRR(2)+rrhsHor,:);
                                        if rrhsVer == 0 && rrhsHor == 0
                                            RPFinal(xRP,yRP,:) = RPValueMask;
                                        else
                                            RPValue = mean(RPValueMask,[1,2]);
                                            RPFinal(xRP,yRP,:) = RPValue;
                                        end
                                    elseif xyForRR(1)<rrhsVer+1 || xyForRR(2)<rrhsHor+1 || xyForRR(1)>RRSizeVer+rrhsVer || xyForRR(2)>RRSizeHor+rrhsHor % 20221208
                                    else
                                        RPValueMask = RR_ROI(xyForRR(1)-rrhsVer:xyForRR(1)+rrhsVer,xyForRR(2)-rrhsHor:xyForRR(2)+rrhsHor,:);
                                        if rrhsVer == 0 && rrhsHor == 0
                                            RPFinal(xRP,yRP,:) = RPValueMask;
                                        else
                                            RPValue = mean(RPValueMask,[1,2]);
                                            RPFinal(xRP,yRP,:) = RPValue;
                                        end
                                    end
                                end
                            end
                        end
                    end
                    ElementalImage_RP = RPFinal;
                    % 覆蓋method1: 非零覆蓋 (有黑背景時會有BUG) (待處理)
                    Temp1=sum(padII(RP_RectangleROI_x(1):RP_RectangleROI_x(2),RP_RectangleROI_y(1):RP_RectangleROI_y(2),:),3)...
                        <0.004*3;
                    Temp2=ElementalImage_RP.*cat(3,Temp1,Temp1,Temp1);
                    padII(RP_RectangleROI_x(1):RP_RectangleROI_x(2),RP_RectangleROI_y(1):RP_RectangleROI_y(2),:)...
                        =padII(RP_RectangleROI_x(1):RP_RectangleROI_x(2),RP_RectangleROI_y(1):RP_RectangleROI_y(2),:)+Temp2; 
                elseif debugMode == 1 % 只建立 RP Mask: 直接 Mapping (no PbP)
                    % RPMask (不抓 Buffer)
                    RP_rec_mask_x = [RP_lu_pnl(1) RP_ld_pnl(1) RP_rd_pnl(1) RP_ru_pnl(1)] - RP_ROI_LU(1) + 1;
                    RP_rec_mask_y = [RP_lu_pnl(2) RP_ld_pnl(2) RP_rd_pnl(2) RP_ru_pnl(2)] - RP_ROI_LU(2) + 1; 
                    RP_rec_mask = poly2mask(RP_rec_mask_y,RP_rec_mask_x,RPSizeVer,RPSizeHor); % ROI
                    if type == "BLP"
                        RP_rec_mask = RP_rec_mask .* BLP_rec_mask;
                    end
                    switch whichEye_mapping
                        case -1
                            if colorMode == 1
                                rgb = 2;
                            elseif colorMode == 0
                                rgb = 1:3;
                            end
                        case 1
                            if colorMode == 1
                                rgb = 1;
                            elseif colorMode == 0
                                rgb = 1:3;
                            end
                        case 0
                            if colorMode == 1
                                rgb = 3;
                            elseif colorMode == 0
                                rgb = 1:3;
                            end
                    end
                    padII(RP_RectangleROI_x(1):RP_RectangleROI_x(2),RP_RectangleROI_y(1):RP_RectangleROI_y(2),rgb)...
                        = padII(RP_RectangleROI_x(1):RP_RectangleROI_x(2),RP_RectangleROI_y(1):RP_RectangleROI_y(2),rgb)+RP_rec_mask;
                end
            end
        end
        if whichCode == "II"
            fprintf('%d, ',whichLens_mapping);
            if mod(lensCount_mapping,10)==0
                fprintf('\n');
            end
            if whichLens_mapping == rangeY(end)
               fprintf('...done\n'); 
            end
        end
    end %% Loop end
    %% write and show
    % II unpad
    if whichCode == "II" 
        cprintf("[info]: 生成圖片......")
    end
    II = padII(padSizeVer+1:end-padSizeVer,padSizeHor+1:end-padSizeHor,:); % [0 1] double
    if whichCode == "II" 
        cprintf("...完成\n")
    end
    %% qLTRP II 16K --> 4K
    if q_LTRPMode == 1
        if whichCode == "II" 
            cprintf("[info]: 生成 QLTRP 圖片......")
            II = double(imbinarize(imresize(II,[panelPixelNumVer/4 panelPixelNumHor/4]))); % [0 1] logical
            cprintf("...完成\n")
        elseif whichCode == "VZA" 
            II = double(imbinarize(imresize(II,[panelPixelNumVer/4 panelPixelNumHor/4]))); % [0 1] logical
        end
    end
    if whichCode == "II" 
        if showII == 1
            cprintf("[info]: 顯示圖片......")
            figure;
            imshow(II);
            cprintf("...完成\n")
        end
        if writeII == 1
            cprintf("[info]: 寫出圖片......")
            imwrite(II,outputIIName); % valid format: [0 1] double (current) or [0 255] uint8
            cprintf("...完成\n")
        end
        if writeSpa == 1
            try
                func_spa(uint8(II*255),outputIIName,spaHorSize,spaVerSize,zero2one);
                cprintf("...完成\n");
            catch
                disp("Something went wrong while transforming into spatial apodization file. Please check if func_spa exists in your current folder or not.");
                cprintf("...cannot create spa file.\n");
            end
        end
    end
    
    %% 輸出 II
    data = II;
    % --- end of process ---
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end