function data = pre_in_parameter_loop(whichCode,data)
    if whichCode == "II"
        disp('-------------------------------------------');
        disp('< pre_in_parameter_loop.m 執行開始 >')
    end
    %% structure assignment
    while whichCode == "II" % last update: 20231030
AUFMode = data.AUFMode;                                       VE_originalPoint = data.VE_originalPoint;               forPLA_normalWP = data.forPLA_normalWP;                 panelSizeVer = data.panelSizeVer;                     spaHorSize = data.spaHorSize;                     
CDP = data.CDP;                                               WDForAutoGP = data.WDForAutoGP;                         forPLA_outsidePrism = data.forPLA_outsidePrism;         panelSizeVerLL = data.panelSizeVerLL;                 spaVerSize = data.spaVerSize;                     
EIHor = data.EIHor;                                           WD_PLArray = data.WD_PLArray;                           forcePupilEdgeInverse = data.forcePupilEdgeInverse;     parameter = data.parameter;                           systemTiltAngle = data.systemTiltAngle;           
GPMode = data.GPMode;                                         air_n = data.air_n;                                     glassThickness = data.glassThickness;                   phiAzimuthal_PLArray = data.phiAzimuthal_PLArray;     tVeryBegining = data.tVeryBegining;               
GRLMat = data.GRLMat;                                         asph_leftEnd_normal = data.asph_leftEnd_normal;         glass_n = data.glass_n;                                 pixelSize = data.pixelSize;                           temp_normalGP = data.temp_normalGP;               
GRLMode = data.GRLMode;                                       asph_max_height = data.asph_max_height;                 gp_PBA_array = data.gp_PBA_array;                       polyFit = data.polyFit;                               thetaPolar_PLArray = data.thetaPolar_PLArray;     
I = data.I;                                                   asph_rightEnd_normal = data.asph_rightEnd_normal;       imageFilename = data.imageFilename;                     polyNum = data.polyNum;                               totalNumFile = data.totalNumFile;                 
LRA = data.LRA;                                               aspherical = data.aspherical;                           imagePathname = data.imagePathname;                     preciseGP = data.preciseGP;                           verSizeForSeg = data.verSizeForSeg;               
LREL = data.LREL;                                             asphericalMat = data.asphericalMat;                     isLLSameAsPanel = data.isLLSameAsPanel;                 prismLensGap = data.prismLensGap;                     wedgeHalfHeight = data.wedgeHalfHeight;           
LensHeightEachLenticular = data.LensHeightEachLenticular;     base_segNum = data.base_segNum;                         isRRShift = data.isRRShift;                             prismMode = data.prismMode;                           wedgeMaxHeight = data.wedgeMaxHeight;             
LensRadiusEachLenticular = data.LensRadiusEachLenticular;     binoDistance = data.binoDistance;                       lensAperturePool = data.lensAperturePool;               prismSizeHor = data.prismSizeHor;                     wedgePBA = data.wedgePBA;                         
MOffset = data.MOffset;                                       colorMode = data.colorMode;                             lensArraySizeHor = data.lensArraySizeHor;               prismSizeVer = data.prismSizeVer;                     wedgePRA = data.wedgePRA;                         
OCAThickness = data.OCAThickness;                             customLine = data.customLine;                           lensArraySizeVer = data.lensArraySizeVer;               prismStructure = data.prismStructure;                 wedgePrism = data.wedgePrism;                     
OCA_n = data.OCA_n;                                           debugMode = data.debugMode;                             lensHeightEI0 = data.lensHeightEI0;                     prismSubstrate = data.prismSubstrate;                 wedgeVer = data.wedgeVer;                         
PBA = data.PBA;                                               displayCoverThickness = data.displayCoverThickness;     lensPitch = data.lensPitch;                             prism_n = data.prism_n;                               wedge_normal = data.wedge_normal;                 
PBA1_fit_length = data.PBA1_fit_length;                       displayCover_n = data.displayCover_n;                   lensRadius = data.lensRadius;                           pupilSize_PLArray = data.pupilSize_PLArray;           whichCode = data.whichCode;                       
PBA1_fit_line = data.PBA1_fit_line;                           display_CDP = data.display_CDP;                         lensRadiusOriginal = data.lensRadiusOriginal;           q_LTRPMode = data.q_LTRPMode;                         whichpba = data.whichpba;                         
PBA1_fit_num = data.PBA1_fit_num;                             display_EyeMode = data.display_EyeMode;                 lensSubstrate = data.lensSubstrate;                     rangeY = data.rangeY;                                 widthStart = data.widthStart;                     
PBA1_fit_point = data.PBA1_fit_point;                         display_LensInfo = data.display_LensInfo;               lensThicknessEI0 = data.lensThicknessEI0;               rangeYPitch = data.rangeYPitch;                       widthStep = data.widthStep;                       
PBA1_fit_x = data.PBA1_fit_x;                                 display_PrismInfo = data.display_PrismInfo;             lens_n = data.lens_n;                                   rotWedgePRA = data.rotWedgePRA;                       wp_PBA = data.wp_PBA;                             
PBA1_fit_y = data.PBA1_fit_y;                                 display_PupilSize = data.display_PupilSize;             ll_array = data.ll_array;                               segFit = data.segFit;                                 writeII = data.writeII;                           
PBA_InputArray = data.PBA_InputArray;                         display_RDP = data.display_RDP;                         ll_down = data.ll_down;                                 segNum = data.segNum;                                 writeSpa = data.writeSpa;                         
PBA_array_forPLA = data.PBA_array_forPLA;                     display_RRRmode = data.display_RRRmode;                 ll_left = data.ll_left;                                 segVerSize = data.segVerSize;                         zero2one = data.zero2one;                         
PBA_array_forPLA_2 = data.PBA_array_forPLA_2;                 display_STA = data.display_STA;                         ll_right = data.ll_right;                               segmentMode = data.segmentMode;                       segM00 = data.segM00;                             
PLA_array_fromPBA = data.PLA_array_fromPBA;                   display_SegmentMode = data.display_SegmentMode;         ll_up = data.ll_up;                                     showAUF = data.showAUF;                               numII = data.numII;                               
PLA_array_fromPBA_2 = data.PLA_array_fromPBA_2;               display_VA = data.display_VA;                           mid_PLA = data.mid_PLA;                                 showAsph = data.showAsph;                             imageFilepath = data.imageFilepath;               
PLAtoPBAFunction = data.PLAtoPBAFunction;                     display_qLTRP = data.display_qLTRP;                     numLensYOriginal = data.numLensYOriginal;               showGP = data.showGP;                                 originalImage = data.originalImage;               
PRA = data.PRA;                                               effectiveG = data.effectiveG;                           outputManual = data.outputManual;                       showGRL = data.showGRL;                               WD = data.WD;                                     
RDPModifierMode = data.RDPModifierMode;                       eyeMode = data.eyeMode;                                 overwrite = data.overwrite;                             showII = data.showII;                                 thetaPolarAngle = data.thetaPolarAngle;           
RDP_PLArray = data.RDP_PLArray;                               focal = data.focal;                                     p1 = data.p1;                                           showLRA = data.showLRA;                               phiAzimuthalAngle = data.phiAzimuthalAngle;       
RRFilterHalfSizeHor = data.RRFilterHalfSizeHor;               forPLA_incident = data.forPLA_incident;                 p2 = data.p2;                                           showPRA = data.showPRA;                               pupilSize = data.pupilSize;                       
RRFilterHalfSizeVer = data.RRFilterHalfSizeVer;               forPLA_insidePrism = data.forPLA_insidePrism;           panelPixelNumHor = data.panelPixelNumHor;               showWP = data.showWP;                                 RDP = data.RDP;                                   
RRRConstant = data.RRRConstant;                               forPLA_mu_PrismtoAir = data.forPLA_mu_PrismtoAir;       panelPixelNumVer = data.panelPixelNumVer;               sizeforRangeY = data.sizeforRangeY;                   RDP_original = data.RDP_original;                 
RRRMode = data.RRRMode;                                       forPLA_mu_airtoPrism = data.forPLA_mu_airtoPrism;       panelSizeHor = data.panelSizeHor;                       softLLTracing = data.softLLTracing;                   outputIIName = data.outputIIName;                 
VE_EyePoint = data.VE_EyePoint;                               forPLA_normalGP = data.forPLA_normalGP;                 panelSizeHorLL = data.panelSizeHorLL;                                                                                                                           
    break
    end
    while whichCode == "VZA"
AUFMode = data.AUFMode;                                       angleCenterVVA = data.angleCenterVVA;                   forPLA_mu_airtoPrism = data.forPLA_mu_airtoPrism;       panelSizeVer = data.panelSizeVer;                     temp_normalGP = data.temp_normalGP;               
CDP = data.CDP;                                               angleStep = data.angleStep;                             forPLA_normalGP = data.forPLA_normalGP;                 panelSizeVerLL = data.panelSizeVerLL;                 thetaPolar_PLArray = data.thetaPolar_PLArray;     
EIHor = data.EIHor;                                           angleSweepHVA = data.angleSweepHVA;                     forPLA_normalWP = data.forPLA_normalWP;                 parameter = data.parameter;                           verSizeForSeg = data.verSizeForSeg;               
GPMode = data.GPMode;                                         angleSweepVVA = data.angleSweepVVA;                     forPLA_outsidePrism = data.forPLA_outsidePrism;         phiAzimuthal_PLArray = data.phiAzimuthal_PLArray;     wedgeHalfHeight = data.wedgeHalfHeight;           
GRLMat = data.GRLMat;                                         asph_leftEnd_normal = data.asph_leftEnd_normal;         forcePupilEdgeInverse = data.forcePupilEdgeInverse;     pixelSize = data.pixelSize;                           wedgeMaxHeight = data.wedgeMaxHeight;             
GRLMode = data.GRLMode;                                       asph_max_height = data.asph_max_height;                 fullfilename = data.fullfilename;                       polyFit = data.polyFit;                               wedgePBA = data.wedgePBA;                         
HVAMesh = data.HVAMesh;                                       asph_rightEnd_normal = data.asph_rightEnd_normal;       glassThickness = data.glassThickness;                   polyNum = data.polyNum;                               wedgePRA = data.wedgePRA;                         
I = data.I;                                                   aspherical = data.aspherical;                           glass_n = data.glass_n;                                 preciseGP = data.preciseGP;                           wedgePrism = data.wedgePrism;                     
LRA = data.LRA;                                               asphericalMat = data.asphericalMat;                     gp_PBA_array = data.gp_PBA_array;                       prismLensGap = data.prismLensGap;                     wedgeVer = data.wedgeVer;                         
LREL = data.LREL;                                             autoVZAnalysis = data.autoVZAnalysis;                   isLLSameAsPanel = data.isLLSameAsPanel;                 prismMode = data.prismMode;                           wedge_normal = data.wedge_normal;                 
LensHeightEachLenticular = data.LensHeightEachLenticular;     base_segNum = data.base_segNum;                         lensAperturePool = data.lensAperturePool;               prismSizeHor = data.prismSizeHor;                     whichCode = data.whichCode;                       
LensRadiusEachLenticular = data.LensRadiusEachLenticular;     binoDistance = data.binoDistance;                       lensArraySizeHor = data.lensArraySizeHor;               prismSizeVer = data.prismSizeVer;                     whichpba = data.whichpba;                         
OCAThickness = data.OCAThickness;                             criticalFailRPNumber = data.criticalFailRPNumber;       lensArraySizeVer = data.lensArraySizeVer;               prismStructure = data.prismStructure;                 widthStart = data.widthStart;                     
OCA_n = data.OCA_n;                                           customLine = data.customLine;                           lensHeightEI0 = data.lensHeightEI0;                     prismSubstrate = data.prismSubstrate;                 widthStep = data.widthStep;                       
PBA = data.PBA;                                               dateStringOn = data.dateStringOn;                       lensPitch = data.lensPitch;                             prism_n = data.prism_n;                               wp_PBA = data.wp_PBA;                             
PBA1_fit_length = data.PBA1_fit_length;                       displayCoverThickness = data.displayCoverThickness;     lensRadius = data.lensRadius;                           pupilSize_PLArray = data.pupilSize_PLArray;           writeExcel = data.writeExcel;                     
PBA1_fit_line = data.PBA1_fit_line;                           displayCover_n = data.displayCover_n;                   lensRadiusOriginal = data.lensRadiusOriginal;           q_LTRPMode = data.q_LTRPMode;                         writeRPFailMask = data.writeRPFailMask;           
PBA1_fit_num = data.PBA1_fit_num;                             display_CDP = data.display_CDP;                         lensSubstrate = data.lensSubstrate;                     rangeY = data.rangeY;                                 writeRPMask = data.writeRPMask;                   
PBA1_fit_point = data.PBA1_fit_point;                         display_EyeMode = data.display_EyeMode;                 lensThicknessEI0 = data.lensThicknessEI0;               rangeYPitch = data.rangeYPitch;                       segM00 = data.segM00;                             
PBA1_fit_x = data.PBA1_fit_x;                                 display_LensInfo = data.display_LensInfo;               lens_n = data.lens_n;                                   rotWedgePRA = data.rotWedgePRA;                       numII = data.numII;                               
PBA1_fit_y = data.PBA1_fit_y;                                 display_PrismInfo = data.display_PrismInfo;             limitedVA_PL = data.limitedVA_PL;                       segFit = data.segFit;                                 WD = data.WD;                                     
PBA_InputArray = data.PBA_InputArray;                         display_PupilSize = data.display_PupilSize;             ll_array = data.ll_array;                               segNum = data.segNum;                                 pupilSize = data.pupilSize;                       
PBA_array_forPLA = data.PBA_array_forPLA;                     display_STA = data.display_STA;                         ll_down = data.ll_down;                                 segVerSize = data.segVerSize;                         limitedVA = data.limitedVA;                       
PBA_array_forPLA_2 = data.PBA_array_forPLA_2;                 display_SegmentMode = data.display_SegmentMode;         ll_left = data.ll_left;                                 segmentMode = data.segmentMode;                       failNumberMatrix = data.failNumberMatrix;         
PLA_array_fromPBA = data.PLA_array_fromPBA;                   display_VA = data.display_VA;                           ll_right = data.ll_right;                               showAUF = data.showAUF;                               HVAAllFailTag = data.HVAAllFailTag;               
PLA_array_fromPBA_2 = data.PLA_array_fromPBA_2;               display_qLTRP = data.display_qLTRP;                     ll_up = data.ll_up;                                     showAsph = data.showAsph;                             VVAAllFailTag = data.VVAAllFailTag;               
PLAtoPBAFunction = data.PLAtoPBAFunction;                     dyPSMode = data.dyPSMode;                               mid_PLA = data.mid_PLA;                                 showGP = data.showGP;                                 whichVATerm = data.whichVATerm;                   
PRA = data.PRA;                                               dynamicPS = data.dynamicPS;                             numLensYOriginal = data.numLensYOriginal;               showGRL = data.showGRL;                               lastAngle = data.lastAngle;                       
VATerm = data.VATerm;                                         effectiveG = data.effectiveG;                           numtest = data.numtest;                                 showLRA = data.showLRA;                               thetaPool = data.thetaPool;                       
VAchecktemp1 = data.VAchecktemp1;                             excelFileName = data.excelFileName;                     outputManual = data.outputManual;                       showPRA = data.showPRA;                               phiPool = data.phiPool;                           
VAchecktemp2 = data.VAchecktemp2;                             excelSheetName = data.excelSheetName;                   overwrite = data.overwrite;                             showRPFailMask = data.showRPFailMask;                 VAPool = data.VAPool;                             
VE_EyePoint = data.VE_EyePoint;                               eyeMode = data.eyeMode;                                 p1 = data.p1;                                           showRPMask = data.showRPMask;                         autoTermString = data.autoTermString;             
VE_originalPoint = data.VE_originalPoint;                     filename = data.filename;                               p2 = data.p2;                                           showWP = data.showWP;                                 whichVAElement = data.whichVAElement;             
VVAMesh = data.VVAMesh;                                       focal = data.focal;                                     panelPixelNumHor = data.panelPixelNumHor;               sizeforRangeY = data.sizeforRangeY;                   TIRHappen = data.TIRHappen;                       
WDForAutoGP = data.WDForAutoGP;                               forPLA_incident = data.forPLA_incident;                 panelPixelNumVer = data.panelPixelNumVer;               softLLTracing = data.softLLTracing;                   thetaPolarAngle = data.thetaPolarAngle;           
WD_PLArray = data.WD_PLArray;                                 forPLA_insidePrism = data.forPLA_insidePrism;           panelSizeHor = data.panelSizeHor;                       systemTiltAngle = data.systemTiltAngle;               phiAzimuthalAngle = data.phiAzimuthalAngle;       
air_n = data.air_n;                                           forPLA_mu_PrismtoAir = data.forPLA_mu_PrismtoAir;       panelSizeHorLL = data.panelSizeHorLL;                   tVeryBegining = data.tVeryBegining;                   outputIIName = data.outputIIName;                 
angleCenterHVA = data.angleCenterHVA;                                                                                                                                                                                                                                                 
    break
    end
    while whichCode == "M00Curve"
AUFMode = data.AUFMode;                                       RDP = data.RDP;                                         exludeRVJoint = data.exludeRVJoint;                     panelSizeVerLL = data.panelSizeVerLL;                     showMiddleEye = data.showMiddleEye;         
AimSphere = data.AimSphere;                                   RV = data.RV;                                           eyeMode = data.eyeMode;                                 parameter = data.parameter;                               showPRA = data.showPRA;                     
CDP = data.CDP;                                               TIR = data.TIR;                                         focal = data.focal;                                     phiAzimuthalAngle = data.phiAzimuthalAngle;               showRV = data.showRV;                       
EIHor = data.EIHor;                                           VATerm = data.VATerm;                                   forPLA_incident = data.forPLA_incident;                 plotAVG = data.plotAVG;                                   showRightEye = data.showRightEye;           
GPMode = data.GPMode;                                         VE_EyePoint = data.VE_EyePoint;                         forPLA_insidePrism = data.forPLA_insidePrism;           plotAimSphere = data.plotAimSphere;                       showWP = data.showWP;                       
GRLMat = data.GRLMat;                                         VE_originalPoint = data.VE_originalPoint;               forPLA_mu_PrismtoAir = data.forPLA_mu_PrismtoAir;       plotCenter = data.plotCenter;                             sizeforRangeY = data.sizeforRangeY;         
GRLMode = data.GRLMode;                                       VVACenteOriginal = data.VVACenteOriginal;               forPLA_mu_airtoPrism = data.forPLA_mu_airtoPrism;       plotM00andTIRCurveAuto = data.plotM00andTIRCurveAuto;     softLLTracing = data.softLLTracing;         
GridCustomString = data.GridCustomString;                     VVACenterArray = data.VVACenterArray;                   forPLA_normalGP = data.forPLA_normalGP;                 plotMax = data.plotMax;                                   systemTiltAngle = data.systemTiltAngle;     
HVASet = data.HVASet;                                         VVASet = data.VVASet;                                   forPLA_normalWP = data.forPLA_normalWP;                 plotRV = data.plotRV;                                     tVeryBegining = data.tVeryBegining;         
I = data.I;                                                   VZAArray = data.VZAArray;                               forPLA_outsidePrism = data.forPLA_outsidePrism;         plotTIR = data.plotTIR;                                   temp_normalGP = data.temp_normalGP;         
LRA = data.LRA;                                               WDForAutoGP = data.WDForAutoGP;                         forcePupilEdgeInverse = data.forcePupilEdgeInverse;     plotVZALine = data.plotVZALine;                           thetaPolarAngle = data.thetaPolarAngle;     
LREL = data.LREL;                                             WD_PLArray = data.WD_PLArray;                           glassThickness = data.glassThickness;                   preciseGP = data.preciseGP;                               verSizeForSeg = data.verSizeForSeg;         
LensHeightEachLenticular = data.LensHeightEachLenticular;     air_n = data.air_n;                                     glass_n = data.glass_n;                                 prismLensGap = data.prismLensGap;                         wedgeHalfHeight = data.wedgeHalfHeight;     
LensRadiusEachLenticular = data.LensRadiusEachLenticular;     angleCenterHVA = data.angleCenterHVA;                   gp_PBA_array = data.gp_PBA_array;                       prismMode = data.prismMode;                               wedgeMaxHeight = data.wedgeMaxHeight;       
M00AVG = data.M00AVG;                                         angleCenterVVA = data.angleCenterVVA;                   isLLSameAsPanel = data.isLLSameAsPanel;                 prismSizeHor = data.prismSizeHor;                         wedgePBA = data.wedgePBA;                   
M00Center = data.M00Center;                                   angleStep = data.angleStep;                             lensAperturePool = data.lensAperturePool;               prismSizeVer = data.prismSizeVer;                         wedgePRA = data.wedgePRA;                   
M00GridMode = data.M00GridMode;                               angleSweepHVA = data.angleSweepHVA;                     lensArraySizeHor = data.lensArraySizeHor;               prismStructure = data.prismStructure;                     wedgePrism = data.wedgePrism;               
M00IndexHVACell = data.M00IndexHVACell;                       angleSweepVVA = data.angleSweepVVA;                     lensArraySizeVer = data.lensArraySizeVer;               prismSubstrate = data.prismSubstrate;                     wedgeVer = data.wedgeVer;                   
M00IndexVVACell = data.M00IndexVVACell;                       asph_leftEnd_normal = data.asph_leftEnd_normal;         lensHeightEI0 = data.lensHeightEI0;                     prism_n = data.prism_n;                                   wedge_normal = data.wedge_normal;           
M00MatStr = data.M00MatStr;                                   asph_max_height = data.asph_max_height;                 lensPitch = data.lensPitch;                             pupilSize_PLArray = data.pupilSize_PLArray;               whichCode = data.whichCode;                 
M00Matrix = data.M00Matrix;                                   asph_rightEnd_normal = data.asph_rightEnd_normal;       lensRadius = data.lensRadius;                           rangeY = data.rangeY;                                     whichpba = data.whichpba;                   
M00Max = data.M00Max;                                         aspherical = data.aspherical;                           lensRadiusOriginal = data.lensRadiusOriginal;           rangeYPitch = data.rangeYPitch;                           widthStart = data.widthStart;               
M00ValueCell = data.M00ValueCell;                             asphericalMat = data.asphericalMat;                     lensSubstrate = data.lensSubstrate;                     rotWedgePRA = data.rotWedgePRA;                           widthStep = data.widthStep;                 
OCAThickness = data.OCAThickness;                             autoM00Analysis = data.autoM00Analysis;                 lensThicknessEI0 = data.lensThicknessEI0;               saveCurve = data.saveCurve;                               wp_PBA = data.wp_PBA;                       
OCA_n = data.OCA_n;                                           binoDistance = data.binoDistance;                       lens_n = data.lens_n;                                   saveM00Mat = data.saveM00Mat;                             writeGrid = data.writeGrid;                 
PBA = data.PBA;                                               checkTemp1 = data.checkTemp1;                           ll_array = data.ll_array;                               segNum = data.segNum;                                     segM00 = data.segM00;                       
PBA1_fit_length = data.PBA1_fit_length;                       checkTemp2 = data.checkTemp2;                           ll_down = data.ll_down;                                 segVerSize = data.segVerSize;                             numII = data.numII;                         
PBA1_fit_line = data.PBA1_fit_line;                           curveStr = data.curveStr;                               ll_left = data.ll_left;                                 segmentMode = data.segmentMode;                           WD = data.WD;                               
PBA1_fit_num = data.PBA1_fit_num;                             customLine = data.customLine;                           ll_right = data.ll_right;                               showAUF = data.showAUF;                                   pupilSize = data.pupilSize;                 
PBA1_fit_point = data.PBA1_fit_point;                         displayCoverThickness = data.displayCoverThickness;     ll_up = data.ll_up;                                     showAimSphere = data.showAimSphere;                       termNum = data.termNum;                     
PBA1_fit_x = data.PBA1_fit_x;                                 displayCover_n = data.displayCover_n;                   mid_PLA = data.mid_PLA;                                 showAsph = data.showAsph;                                 whichVATerm = data.whichVATerm;             
PBA1_fit_y = data.PBA1_fit_y;                                 display_CDP = data.display_CDP;                         numLensYOriginal = data.numLensYOriginal;               showAvg = data.showAvg;                                   thetaPool = data.thetaPool;                 
PBA_InputArray = data.PBA_InputArray;                         display_EyeMode = data.display_EyeMode;                 outputManual = data.outputManual;                       showCenter = data.showCenter;                             phiPool = data.phiPool;                     
PBA_array_forPLA = data.PBA_array_forPLA;                     display_LensInfo = data.display_LensInfo;               overwrite = data.overwrite;                             showGP = data.showGP;                                     VAPool = data.VAPool;                       
PBA_array_forPLA_2 = data.PBA_array_forPLA_2;                 display_PrismInfo = data.display_PrismInfo;             p1 = data.p1;                                           showGRL = data.showGRL;                                   autoTermString = data.autoTermString;       
PLA_array_fromPBA = data.PLA_array_fromPBA;                   display_PupilSize = data.display_PupilSize;             p2 = data.p2;                                           showLRA = data.showLRA;                                   outputIIName = data.outputIIName;           
PLA_array_fromPBA_2 = data.PLA_array_fromPBA_2;               display_STA = data.display_STA;                         panelSizeHor = data.panelSizeHor;                       showLeftEye = data.showLeftEye;                           whichVAElement = data.whichVAElement;       
PLAtoPBAFunction = data.PLAtoPBAFunction;                     display_VA = data.display_VA;                           panelSizeHorLL = data.panelSizeHorLL;                   showMax = data.showMax;                                   TIRHappen = data.TIRHappen;                 
PRA = data.PRA;                                               effectiveG = data.effectiveG;                           panelSizeVer = data.panelSizeVer;                                                                                                                             
    break
    end
    while whichCode == "FindGRL"
AUFMode = data.AUFMode;                                       PBA1_fit_point = data.PBA1_fit_point;                   display_VA = data.display_VA;                           ll_up = data.ll_up;                                   showAUF = data.showAUF;                           
CDP = data.CDP;                                               PBA1_fit_x = data.PBA1_fit_x;                           effectiveG = data.effectiveG;                           manualE2CRatio = data.manualE2CRatio;                 showGP = data.showGP;                             
EIHor = data.EIHor;                                           PBA1_fit_y = data.PBA1_fit_y;                           eyeMode = data.eyeMode;                                 manualMDesired = data.manualMDesired;                 showLRA = data.showLRA;                           
GPMode = data.GPMode;                                         PBA_InputArray = data.PBA_InputArray;                   focal = data.focal;                                     mid_PLA = data.mid_PLA;                               showPRA = data.showPRA;                           
GRLMode = data.GRLMode;                                       PBA_array_forPLA = data.PBA_array_forPLA;               forPLA_incident = data.forPLA_incident;                 numLensYOriginal = data.numLensYOriginal;             showWP = data.showWP;                             
I = data.I;                                                   PBA_array_forPLA_2 = data.PBA_array_forPLA_2;           forPLA_insidePrism = data.forPLA_insidePrism;           outputManual = data.outputManual;                     sizeforRangeY = data.sizeforRangeY;               
LL = data.LL;                                                 PLA_array_fromPBA = data.PLA_array_fromPBA;             forPLA_mu_PrismtoAir = data.forPLA_mu_PrismtoAir;       overwrite = data.overwrite;                           softLLTracing = data.softLLTracing;               
LRA = data.LRA;                                               PLA_array_fromPBA_2 = data.PLA_array_fromPBA_2;         forPLA_mu_airtoPrism = data.forPLA_mu_airtoPrism;       p1 = data.p1;                                         systemTiltAngle = data.systemTiltAngle;           
LREL = data.LREL;                                             PLAtoPBAFunction = data.PLAtoPBAFunction;               forPLA_normalGP = data.forPLA_normalGP;                 p2 = data.p2;                                         tVeryBegining = data.tVeryBegining;               
LREnd = data.LREnd;                                           PRA = data.PRA;                                         forPLA_normalWP = data.forPLA_normalWP;                 panelSizeHor = data.panelSizeHor;                     temp_normalGP = data.temp_normalGP;               
LRNum = data.LRNum;                                           RDP = data.RDP;                                         forPLA_outsidePrism = data.forPLA_outsidePrism;         panelSizeHorLL = data.panelSizeHorLL;                 thetaPolar_PLArray = data.thetaPolar_PLArray;     
LRStart = data.LRStart;                                       RatioM = data.RatioM;                                   forcePupilEdgeInverse = data.forcePupilEdgeInverse;     panelSizeVer = data.panelSizeVer;                     wedgeHalfHeight = data.wedgeHalfHeight;           
LRstep = data.LRstep;                                         RatioMTemp = data.RatioMTemp;                           glassThickness = data.glassThickness;                   panelSizeVerLL = data.panelSizeVerLL;                 wedgeMaxHeight = data.wedgeMaxHeight;             
LensHeightEachLenticular = data.LensHeightEachLenticular;     VE_EyePoint = data.VE_EyePoint;                         glass_n = data.glass_n;                                 parameter = data.parameter;                           wedgePBA = data.wedgePBA;                         
LensRadiusCenter = data.LensRadiusCenter;                     VE_originalPoint = data.VE_originalPoint;               gp_PBA_array = data.gp_PBA_array;                       phiAzimuthal_PLArray = data.phiAzimuthal_PLArray;     wedgePRA = data.wedgePRA;                         
LensRadiusEachLenticular = data.LensRadiusEachLenticular;     WDForAutoGP = data.WDForAutoGP;                         isLLSameAsPanel = data.isLLSameAsPanel;                 plotGRL = data.plotGRL;                               wedgePrism = data.wedgePrism;                     
LensRadiusFinal = data.LensRadiusFinal;                       WD_PLArray = data.WD_PLArray;                           lensAperturePool = data.lensAperturePool;               preciseGP = data.preciseGP;                           wedgeVer = data.wedgeVer;                         
M00Output = data.M00Output;                                   air_n = data.air_n;                                     lensArraySizeHor = data.lensArraySizeHor;               prismLensGap = data.prismLensGap;                     wedge_normal = data.wedge_normal;                 
M00Pool = data.M00Pool;                                       aspherical = data.aspherical;                           lensArraySizeVer = data.lensArraySizeVer;               prismMode = data.prismMode;                           whichCode = data.whichCode;                       
MAB_E2C = data.MAB_E2C;                                       binoDistance = data.binoDistance;                       lensHeightEI0 = data.lensHeightEI0;                     prismSizeHor = data.prismSizeHor;                     whichpba = data.whichpba;                         
MCenter = data.MCenter;                                       customLine = data.customLine;                           lensPitch = data.lensPitch;                             prismSizeVer = data.prismSizeVer;                     widthStart = data.widthStart;                     
MDesiredArray = data.MDesiredArray;                           displayCoverThickness = data.displayCoverThickness;     lensRadius = data.lensRadius;                           prismStructure = data.prismStructure;                 widthStep = data.widthStep;                       
MEachLens = data.MEachLens;                                   displayCover_n = data.displayCover_n;                   lensRadiusOriginal = data.lensRadiusOriginal;           prismSubstrate = data.prismSubstrate;                 wp_PBA = data.wp_PBA;                             
MEachLenticular = data.MEachLenticular;                       display_CDP = data.display_CDP;                         lensSubstrate = data.lensSubstrate;                     prism_n = data.prism_n;                               writeGRL = data.writeGRL;                         
MRatioArray = data.MRatioArray;                               display_EyeMode = data.display_EyeMode;                 lensThicknessEI0 = data.lensThicknessEI0;               pupilSize_PLArray = data.pupilSize_PLArray;           numII = data.numII;                               
OCAThickness = data.OCAThickness;                             display_LensInfo = data.display_LensInfo;               lens_n = data.lens_n;                                   radiusNum = data.radiusNum;                           WD = data.WD;                                     
OCA_n = data.OCA_n;                                           display_PrismInfo = data.display_PrismInfo;             ll_array = data.ll_array;                               radiusPool = data.radiusPool;                         thetaPolarAngle = data.thetaPolarAngle;           
PBA = data.PBA;                                               display_PupilSize = data.display_PupilSize;             ll_down = data.ll_down;                                 rangeY = data.rangeY;                                 phiAzimuthalAngle = data.phiAzimuthalAngle;       
PBA1_fit_length = data.PBA1_fit_length;                       display_RDP = data.display_RDP;                         ll_left = data.ll_left;                                 rangeYPitch = data.rangeYPitch;                       pupilSize = data.pupilSize;                       
PBA1_fit_line = data.PBA1_fit_line;                           display_STA = data.display_STA;                         ll_right = data.ll_right;                               rotWedgePRA = data.rotWedgePRA;                       outputIIName = data.outputIIName;                 
PBA1_fit_num = data.PBA1_fit_num;                                                                                                                                                                                                                                                     
break
    end
    while whichCode == "Design"
AUFMode = data.AUFMode;                                       PBA1_fit_y = data.PBA1_fit_y;                         design_cal_once_1 = data.design_cal_once_1;             lensRadiusOriginal = data.lensRadiusOriginal;     pupilSize = data.pupilSize;                   
CDP = data.CDP;                                               PBA_InputArray = data.PBA_InputArray;                 displayCoverThickness = data.displayCoverThickness;     lensRadiusPool = data.lensRadiusPool;             rangeY = data.rangeY;                         
CDP_Design = data.CDP_Design;                                 PBA_array_forPLA = data.PBA_array_forPLA;             displayCover_n = data.displayCover_n;                   lensRadius_Design = data.lensRadius_Design;       rangeYPitch = data.rangeYPitch;               
EIHor = data.EIHor;                                           PBA_array_forPLA_2 = data.PBA_array_forPLA_2;         effectiveG = data.effectiveG;                           lensSubstrate = data.lensSubstrate;               rotWedgePRA = data.rotWedgePRA;               
GPMode = data.GPMode;                                         PLA_array_fromPBA = data.PLA_array_fromPBA;           eyeMode = data.eyeMode;                                 lensThicknessEI0 = data.lensThicknessEI0;         sampleSize = data.sampleSize;                 
GRLMode = data.GRLMode;                                       PLA_array_fromPBA_2 = data.PLA_array_fromPBA_2;       focal = data.focal;                                     lens_n = data.lens_n;                             sizeforRangeY = data.sizeforRangeY;           
HardVA = data.HardVA;                                         PLAtoPBAFunction = data.PLAtoPBAFunction;             focal_Design = data.focal_Design;                       ll_array = data.ll_array;                         softLLTracing = data.softLLTracing;           
HardVATargetHigh = data.HardVATargetHigh;                     PRA = data.PRA;                                       forPLA_incident = data.forPLA_incident;                 ll_down = data.ll_down;                           systemTiltAngle = data.systemTiltAngle;       
HardVATargetLow = data.HardVATargetLow;                       RDP = data.RDP;                                       forPLA_insidePrism = data.forPLA_insidePrism;           ll_left = data.ll_left;                           tVeryBegining = data.tVeryBegining;           
HardVATargetStep = data.HardVATargetStep;                     RV_Design = data.RV_Design;                           forPLA_mu_PrismtoAir = data.forPLA_mu_PrismtoAir;       ll_right = data.ll_right;                         targetName = data.targetName;                 
HardVA_Design = data.HardVA_Design;                           VE_EyePoint = data.VE_EyePoint;                       forPLA_mu_airtoPrism = data.forPLA_mu_airtoPrism;       ll_up = data.ll_up;                               temp1 = data.temp1;                           
I = data.I;                                                   VE_originalPoint = data.VE_originalPoint;             forPLA_normalGP = data.forPLA_normalGP;                 mid_PLA = data.mid_PLA;                           temp_normalGP = data.temp_normalGP;           
LRA = data.LRA;                                               WD = data.WD;                                         forPLA_normalWP = data.forPLA_normalWP;                 numII = data.numII;                               thetaPolarAngle = data.thetaPolarAngle;       
LREL = data.LREL;                                             WDForAutoGP = data.WDForAutoGP;                       forPLA_outsidePrism = data.forPLA_outsidePrism;         numLensYOriginal = data.numLensYOriginal;         totalName = data.totalName;                   
LensHeightEachLenticular = data.LensHeightEachLenticular;     air_n = data.air_n;                                   forcePupilEdgeInverse = data.forcePupilEdgeInverse;     p1 = data.p1;                                     varName = data.varName;                       
LensRadiusEachLenticular = data.LensRadiusEachLenticular;     asph_leftEnd_normal = data.asph_leftEnd_normal;       glassThickness = data.glassThickness;                   p2 = data.p2;                                     varTypes = data.varTypes;                     
LouieAnalysis = data.LouieAnalysis;                           asph_max_height = data.asph_max_height;               glassThicknessPool = data.glassThicknessPool;           panelSizeHor = data.panelSizeHor;                 verticalPointNum = data.verticalPointNum;     
M00TargetHigh = data.M00TargetHigh;                           asph_rightEnd_normal = data.asph_rightEnd_normal;     glassThickness_Design = data.glassThickness_Design;     panelSizeHorLL = data.panelSizeHorLL;             wedgeHalfHeight = data.wedgeHalfHeight;       
M00TargetLow = data.M00TargetLow;                             aspherical = data.aspherical;                         glass_n = data.glass_n;                                 panelSizeVer = data.panelSizeVer;                 wedgeMaxHeight = data.wedgeMaxHeight;         
M00TargetStep = data.M00TargetStep;                           asphericalMat = data.asphericalMat;                   gp_PBA_array = data.gp_PBA_array;                       panelSizeVerLL = data.panelSizeVerLL;             wedgePBA = data.wedgePBA;                     
M_Design = data.M_Design;                                     binoDistance = data.binoDistance;                     isLLSameAsPanel = data.isLLSameAsPanel;                 phiAzimuthalAngle = data.phiAzimuthalAngle;       wedgePRA = data.wedgePRA;                     
OCAThickness = data.OCAThickness;                             c = data.c;                                           lensAperturePool = data.lensAperturePool;               preciseGP = data.preciseGP;                       wedgePrism = data.wedgePrism;                 
OCA_n = data.OCA_n;                                           condition = data.condition;                           lensArraySizeHor = data.lensArraySizeHor;               prismLensGap = data.prismLensGap;                 wedgeVer = data.wedgeVer;                     
PBA = data.PBA;                                               continueWarning1 = data.continueWarning1;             lensArraySizeVer = data.lensArraySizeVer;               prismMode = data.prismMode;                       wedge_normal = data.wedge_normal;             
PBA1_fit_length = data.PBA1_fit_length;                       continueWarning2 = data.continueWarning2;             lensHeightEI0 = data.lensHeightEI0;                     prismSizeHor = data.prismSizeHor;                 whichCode = data.whichCode;                   
PBA1_fit_line = data.PBA1_fit_line;                           continue_flag_desgin = data.continue_flag_desgin;     lensPitch = data.lensPitch;                             prismSizeVer = data.prismSizeVer;                 whichpba = data.whichpba;                     
PBA1_fit_num = data.PBA1_fit_num;                             designCount = data.designCount;                       lensPitchPool = data.lensPitchPool;                     prismStructure = data.prismStructure;             widthStart = data.widthStart;                 
PBA1_fit_point = data.PBA1_fit_point;                         designEI = data.designEI;                             lensPitch_Design = data.lensPitch_Design;               prismSubstrate = data.prismSubstrate;             widthStep = data.widthStep;                   
PBA1_fit_x = data.PBA1_fit_x;                                 designPosition = data.designPosition;                 lensRadius = data.lensRadius;                           prism_n = data.prism_n;                           wp_PBA = data.wp_PBA;                         
    break
    end
    while whichCode == "XYGrid"
AS_XYGrid = data.AS_XYGrid;                                   RDP_PLArray = data.RDP_PLArray;                         display_VA = data.display_VA;                                   ll_array = data.ll_array;                             showGRL = data.showGRL;                           
AUFMode = data.AUFMode;                                       RP_XYGrid = data.RP_XYGrid;                             effectiveG = data.effectiveG;                                   ll_down = data.ll_down;                               showLRA = data.showLRA;                           
AimSphere_grid = data.AimSphere_grid;                         RP_grid = data.RP_grid;                                 eyeMode = data.eyeMode;                                         ll_left = data.ll_left;                               showMaxMin = data.showMaxMin;                     
CDP = data.CDP;                                               RV_XYGrid = data.RV_XYGrid;                             figXYGrid_AS = data.figXYGrid_AS;                               ll_right = data.ll_right;                             showPRA = data.showPRA;                           
EIHor = data.EIHor;                                           RV_grid = data.RV_grid;                                 figXYGrid_M = data.figXYGrid_M;                                 ll_up = data.ll_up;                                   showWP = data.showWP;                             
GPMode = data.GPMode;                                         TIR_XYGrid = data.TIR_XYGrid;                           figXYGrid_RP = data.figXYGrid_RP;                               mid_PLA = data.mid_PLA;                               sizeforRangeY = data.sizeforRangeY;               
GRLMat = data.GRLMat;                                         TIR_grid = data.TIR_grid;                               figXYGrid_RV = data.figXYGrid_RV;                               numLensYOriginal = data.numLensYOriginal;             systemTiltAngle = data.systemTiltAngle;           
GRLMode = data.GRLMode;                                       VE_EyePoint = data.VE_EyePoint;                         figXYGrid_TIR = data.figXYGrid_TIR;                             outputManual = data.outputManual;                     tVeryBegining = data.tVeryBegining;               
I = data.I;                                                   VE_originalPoint = data.VE_originalPoint;               focal = data.focal;                                             overwrite = data.overwrite;                           targetWithinPanel = data.targetWithinPanel;       
LCLengthHor = data.LCLengthHor;                               WDForAutoGP = data.WDForAutoGP;                         forPLA_incident = data.forPLA_incident;                         p1 = data.p1;                                         temp_normalGP = data.temp_normalGP;               
LCLengthVer = data.LCLengthVer;                               WD_PLArray = data.WD_PLArray;                           forPLA_insidePrism = data.forPLA_insidePrism;                   p2 = data.p2;                                         testMatrix = data.testMatrix;                     
LRA = data.LRA;                                               air_n = data.air_n;                                     forPLA_mu_PrismtoAir = data.forPLA_mu_PrismtoAir;               panelSizeHor = data.panelSizeHor;                     thetaPolar_PLArray = data.thetaPolar_PLArray;     
LREL = data.LREL;                                             asph_leftEnd_normal = data.asph_leftEnd_normal;         forPLA_mu_airtoPrism = data.forPLA_mu_airtoPrism;               panelSizeHorLL = data.panelSizeHorLL;                 wedgeHalfHeight = data.wedgeHalfHeight;           
LensHeightEachLenticular = data.LensHeightEachLenticular;     asph_max_height = data.asph_max_height;                 forPLA_normalGP = data.forPLA_normalGP;                         panelSizeVer = data.panelSizeVer;                     wedgeMaxHeight = data.wedgeMaxHeight;             
LensRadiusEachLenticular = data.LensRadiusEachLenticular;     asph_rightEnd_normal = data.asph_rightEnd_normal;       forPLA_normalWP = data.forPLA_normalWP;                         panelSizeVerLL = data.panelSizeVerLL;                 wedgePBA = data.wedgePBA;                         
M_XYGrid = data.M_XYGrid;                                     aspherical = data.aspherical;                           forPLA_outsidePrism = data.forPLA_outsidePrism;                 parameter = data.parameter;                           wedgePRA = data.wedgePRA;                         
M_grid = data.M_grid;                                         asphericalMat = data.asphericalMat;                     forcePupilEdgeInverse = data.forcePupilEdgeInverse;             phiAzimuthal_PLArray = data.phiAzimuthal_PLArray;     wedgePrism = data.wedgePrism;                     
OCAThickness = data.OCAThickness;                             axXYGrid_AS = data.axXYGrid_AS;                         glassThickness = data.glassThickness;                           preciseGP = data.preciseGP;                           wedgeVer = data.wedgeVer;                         
OCA_n = data.OCA_n;                                           axXYGrid_M = data.axXYGrid_M;                           glass_n = data.glass_n;                                         prismLensGap = data.prismLensGap;                     wedge_normal = data.wedge_normal;                 
PBA = data.PBA;                                               axXYGrid_RP = data.axXYGrid_RP;                         gp_PBA_array = data.gp_PBA_array;                               prismMode = data.prismMode;                           whichCode = data.whichCode;                       
PBA1_fit_length = data.PBA1_fit_length;                       axXYGrid_RV = data.axXYGrid_RV;                         isLLSameAsPanel = data.isLLSameAsPanel;                         prismSizeHor = data.prismSizeHor;                     whichpba = data.whichpba;                         
PBA1_fit_line = data.PBA1_fit_line;                           axXYGrid_TIR = data.axXYGrid_TIR;                       lensAperturePool = data.lensAperturePool;                       prismSizeVer = data.prismSizeVer;                     widthStart = data.widthStart;                     
PBA1_fit_num = data.PBA1_fit_num;                             binoDistance = data.binoDistance;                       lensArraySizeHor = data.lensArraySizeHor;                       prismStructure = data.prismStructure;                 widthStep = data.widthStep;                       
PBA1_fit_point = data.PBA1_fit_point;                         customLine = data.customLine;                           lensArraySizeVer = data.lensArraySizeVer;                       prismSubstrate = data.prismSubstrate;                 wp_PBA = data.wp_PBA;                             
PBA1_fit_x = data.PBA1_fit_x;                                 displayCoverThickness = data.displayCoverThickness;     lensCenterUserDefined_Hor = data.lensCenterUserDefined_Hor;     prism_n = data.prism_n;                               writeFig = data.writeFig;                         
PBA1_fit_y = data.PBA1_fit_y;                                 displayCover_n = data.displayCover_n;                   lensCenterUserDefined_Ver = data.lensCenterUserDefined_Ver;     pupilSize_PLArray = data.pupilSize_PLArray;           numII = data.numII;                               
PBA_InputArray = data.PBA_InputArray;                         display_CDP = data.display_CDP;                         lensHeightEI0 = data.lensHeightEI0;                             rangeY = data.rangeY;                                 WD = data.WD;                                     
PBA_array_forPLA = data.PBA_array_forPLA;                     display_EyeMode = data.display_EyeMode;                 lensPitch = data.lensPitch;                                     rangeYPitch = data.rangeYPitch;                       thetaPolarAngle = data.thetaPolarAngle;           
PBA_array_forPLA_2 = data.PBA_array_forPLA_2;                 display_LensInfo = data.display_LensInfo;               lensRadius = data.lensRadius;                                   rotWedgePRA = data.rotWedgePRA;                       phiAzimuthalAngle = data.phiAzimuthalAngle;       
PLA_array_fromPBA = data.PLA_array_fromPBA;                   display_PrismInfo = data.display_PrismInfo;             lensRadiusOriginal = data.lensRadiusOriginal;                   rotationMatrix = data.rotationMatrix;                 pupilSize = data.pupilSize;                       
PLA_array_fromPBA_2 = data.PLA_array_fromPBA_2;               display_PupilSize = data.display_PupilSize;             lensSubstrate = data.lensSubstrate;                             showAUF = data.showAUF;                               RDP = data.RDP;                                   
PLAtoPBAFunction = data.PLAtoPBAFunction;                     display_RDP = data.display_RDP;                         lensThicknessEI0 = data.lensThicknessEI0;                       showAsph = data.showAsph;                             outputIIName = data.outputIIName;                 
PRA = data.PRA;                                               display_STA = data.display_STA;                         lens_n = data.lens_n;                                           showGP = data.showGP;                                                                                   
        break
    end
    %% common (待處理)
    PLAtoPBAFunction = data.PLAtoPBAFunction;
    
    %% 參數前處理
    while 1 % 20230131
    thetaPolarAngle_original = thetaPolarAngle; % 紀錄初始角度用
    phiAzimuthalAngle_original = phiAzimuthalAngle; % 紀錄初始角度用
    [thetaPolarAngle,phiAzimuthalAngle] = TiltAngle(WD,thetaPolarAngle,phiAzimuthalAngle,systemTiltAngle); 
    % rotz for speed up % 注意 之後動到 LRA PRA PHI 時要檢查此處
    rotLRA = rotz(LRA);
    rotPRA = rotz(PRA);
    rotPhi = rotz(phiAzimuthalAngle);
    break
    end

    while 1 % Viewing Condition 參數
    WDz = WD*cosd(thetaPolarAngle); 
    viewPointVer = WD*sind(thetaPolarAngle)*cosd(phiAzimuthalAngle);
    viewPointHor = WD*sind(thetaPolarAngle)*sind(phiAzimuthalAngle);
    viewAngleVer = atand(viewPointVer/WDz);
    viewAngleHor = atand(viewPointHor/WDz);
    break % while 1
    end

    while 1 % 光線追跡相關
    % LensEdge LensHeight Relation
    % check lens height
    % lens radius no meaning in asph mode % 20230717
    if lensRadiusOriginal < lensPitch/2
        ThrowError("General",11)
    end
    lensRadiusDefault = lensRadiusOriginal; % variable when GRL
    lensHeightDefault = lensRadiusDefault-sqrt(lensRadiusDefault^2-(lensPitch*0.5)^2); % variable when GRL
    if aspherical == 1 % lensHeight fix in asph mode
        lensHeightDefault = asph_max_height;
    end
    UV_normal1=[0;0;-1]; % UV for unit vector %入Prism垂直法向量
    
    % prism ray tracing z
    % lengthZRay2: update for wedge 20230725
    lengthZRay2Default = prismSubstrate + prismStructure/2;      % Z: prismWedge to prismTop to prismStructureMid
    lengthZRay3Default = prismLensGap + lensHeightDefault;   % Z: prismStructureMid to LensEdge (variable when GRL)
    mu1 = air_n / prism_n; 
    mu2 = 1 / mu1;
    
    % lower part ray tracing
    mu_airtoLens = air_n/lens_n;
    mu_LenstoOCA = lens_n/OCA_n;
    mu_OCAtoGlass = OCA_n/glass_n;
    mu_GlasstoOCA = glass_n/OCA_n;
    mu_OCAtoDisplayCover = OCA_n/displayCover_n;
    
    break % while 1
    end

    while ismember(whichCode,["II", "VZA", "M00Curve", "Design","XYGrid"]) % 漸變 Radius 設定判定
    GRLNumShift = nan;
    if GRLMode==1
        % 支援 actual lens < GRL lens
        if length(LREL) < numLensYOriginal
            ThrowError("General",12);
        end
        if mod(numLensYOriginal,2)==0
            ThrowError("General",13);
        end
        % 20230823 置中處理
        GRLNumShift = 0.5 * (length(LREL) - numLensYOriginal);
        if GRLNumShift ~= 0
            disp("[info]: Lens Number < GRL Number: radius 將置中處理");
        end
    end
    break
    end

    while whichCode == "II" % RR Content Shift
    if isRRShift == 0
        RRShiftHor_wld = 0;
        RRShiftVer_wld = 0;
    elseif isRRShift == 1
        RRShiftHor_wld = RDP*tand(viewAngleHor);
        RRShiftVer_wld = RDP*tand(viewAngleVer);
    end
    break % while 1
    end

    while 1 % other parameter initialization    
    if ismember(whichCode,["II","VZA","M00Curve"])
        switch segmentMode
            case 0
                xNumMax = 1;
            case 2
                xNumMax = round(panelSizeVerLL/segVerSize);
        end
    elseif ismember(whichCode,["FindGRL","Design","XYGrid"])
        xNumMax = 0; % 每根 Lens 僅跑一個位置
    end
    RPpointSet_LE_wld = -99 * ones((xNumMax+1)*2,2,length(rangeY));
    RPpointSet_RE_wld = RPpointSet_LE_wld;
    RPpointSet_ME_wld = RPpointSet_LE_wld;
    RRpointSet_LE_wld = RPpointSet_LE_wld;
    RRpointSet_RE_wld = RPpointSet_LE_wld;
    RRpointSet_ME_wld = RPpointSet_LE_wld;

    outputO = zeros(3,2); %存O點 (pupil edge)
    outputA = zeros(3,2); %存A點 (upper prism)
    outputD = zeros(3,2); %存D點 (panel)
    outputL = zeros(3,2); %存LensEdge (for no prism case)
    
    farrestDistanceVer = 0; % 計算 Padsize 用
    farrestDistanceHor = 0; % 計算 Padsize 用

    lensCenter_x_fitting = nan(length(rangeY),2);
    break % while 1
    end
    
    %%
    data = ws2struct; data = rmfield(data,"data");
%     structvars(5,data) % structure 賦值: 僅作複製貼上使用
    %% 
    if whichCode == "II"
        disp("< pre_in_parameter_loop.m 執行完成 >")
        disp('-------------------------------------------');
    end
end