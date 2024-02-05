function outputIIName = display_setup(whichCode,data,varargin)
    %% data assignment
    while whichCode == "II"
AUFMode = data.AUFMode;                                       VE_originalPoint = data.VE_originalPoint;               forPLA_normalWP = data.forPLA_normalWP;                 panelSizeHorLL = data.panelSizeHorLL;                 softLLTracing = data.softLLTracing;               
CDP = data.CDP;                                               WDForAutoGP = data.WDForAutoGP;                         forPLA_outsidePrism = data.forPLA_outsidePrism;         panelSizeVer = data.panelSizeVer;                     spaHorSize = data.spaHorSize;                     
EIHor = data.EIHor;                                           WD_PLArray = data.WD_PLArray;                           forcePupilEdgeInverse = data.forcePupilEdgeInverse;     panelSizeVerLL = data.panelSizeVerLL;                 spaVerSize = data.spaVerSize;                     
GPMode = data.GPMode;                                         air_n = data.air_n;                                     glassThickness = data.glassThickness;                   parameter = data.parameter;                           systemTiltAngle = data.systemTiltAngle;           
GRLMat = data.GRLMat;                                         asph_leftEnd_normal = data.asph_leftEnd_normal;         glass_n = data.glass_n;                                 phiAzimuthal_PLArray = data.phiAzimuthal_PLArray;     tVeryBegining = data.tVeryBegining;               
GRLMode = data.GRLMode;                                       asph_max_height = data.asph_max_height;                 gp_PBA_array = data.gp_PBA_array;                       pixelSize = data.pixelSize;                           temp_normalGP = data.temp_normalGP;               
I = data.I;                                                   asph_rightEnd_normal = data.asph_rightEnd_normal;       imageFilename = data.imageFilename;                     polyFit = data.polyFit;                               thetaPolar_PLArray = data.thetaPolar_PLArray;     
LRA = data.LRA;                                               aspherical = data.aspherical;                           imagePathname = data.imagePathname;                     polyNum = data.polyNum;                               totalNumFile = data.totalNumFile;                 
LREL = data.LREL;                                             asphericalMat = data.asphericalMat;                     isLLSameAsPanel = data.isLLSameAsPanel;                 preciseGP = data.preciseGP;                           verSizeForSeg = data.verSizeForSeg;               
LensHeightEachLenticular = data.LensHeightEachLenticular;     base_segNum = data.base_segNum;                         isRRShift = data.isRRShift;                             prismLensGap = data.prismLensGap;                     wedgeHalfHeight = data.wedgeHalfHeight;           
LensRadiusEachLenticular = data.LensRadiusEachLenticular;     binoDistance = data.binoDistance;                       lensAperturePool = data.lensAperturePool;               prismMode = data.prismMode;                           wedgeMaxHeight = data.wedgeMaxHeight;             
MOffset = data.MOffset;                                       colorMode = data.colorMode;                             lensArraySizeHor = data.lensArraySizeHor;               prismSizeHor = data.prismSizeHor;                     wedgePBA = data.wedgePBA;                         
OCAThickness = data.OCAThickness;                             customLine = data.customLine;                           lensArraySizeVer = data.lensArraySizeVer;               prismSizeVer = data.prismSizeVer;                     wedgePRA = data.wedgePRA;                         
OCA_n = data.OCA_n;                                           debugMode = data.debugMode;                             lensHeightEI0 = data.lensHeightEI0;                     prismStructure = data.prismStructure;                 wedgePrism = data.wedgePrism;                     
PBA = data.PBA;                                               displayCoverThickness = data.displayCoverThickness;     lensPitch = data.lensPitch;                             prismSubstrate = data.prismSubstrate;                 wedgeVer = data.wedgeVer;                         
PBA1_fit_length = data.PBA1_fit_length;                       displayCover_n = data.displayCover_n;                   lensRadius = data.lensRadius;                           prism_n = data.prism_n;                               wedge_normal = data.wedge_normal;                 
PBA1_fit_line = data.PBA1_fit_line;                           display_CDP = data.display_CDP;                         lensRadiusOriginal = data.lensRadiusOriginal;           pupilSize_PLArray = data.pupilSize_PLArray;           whichCode = data.whichCode;                       
PBA1_fit_num = data.PBA1_fit_num;                             display_EyeMode = data.display_EyeMode;                 lensSubstrate = data.lensSubstrate;                     q_LTRPMode = data.q_LTRPMode;                         whichpba = data.whichpba;                         
PBA1_fit_point = data.PBA1_fit_point;                         display_LensInfo = data.display_LensInfo;               lensThicknessEI0 = data.lensThicknessEI0;               rangeY = data.rangeY;                                 widthStart = data.widthStart;                     
PBA1_fit_x = data.PBA1_fit_x;                                 display_PrismInfo = data.display_PrismInfo;             lens_n = data.lens_n;                                   rangeYPitch = data.rangeYPitch;                       widthStep = data.widthStep;                       
PBA1_fit_y = data.PBA1_fit_y;                                 display_PupilSize = data.display_PupilSize;             ll_array = data.ll_array;                               rotWedgePRA = data.rotWedgePRA;                       wp_PBA = data.wp_PBA;                             
PBA_InputArray = data.PBA_InputArray;                         display_RDP = data.display_RDP;                         ll_down = data.ll_down;                                 segFit = data.segFit;                                 writeII = data.writeII;                           
PBA_array_forPLA = data.PBA_array_forPLA;                     display_RRRmode = data.display_RRRmode;                 ll_left = data.ll_left;                                 segNum = data.segNum;                                 writeSpa = data.writeSpa;                         
PBA_array_forPLA_2 = data.PBA_array_forPLA_2;                 display_STA = data.display_STA;                         ll_right = data.ll_right;                               segVerSize = data.segVerSize;                         zero2one = data.zero2one;                         
PLA_array_fromPBA = data.PLA_array_fromPBA;                   display_SegmentMode = data.display_SegmentMode;         ll_up = data.ll_up;                                     segmentMode = data.segmentMode;                       segM00 = data.segM00;                             
PLA_array_fromPBA_2 = data.PLA_array_fromPBA_2;               display_VA = data.display_VA;                           mid_PLA = data.mid_PLA;                                 showAUF = data.showAUF;                               numII = data.numII;                               
PLAtoPBAFunction = data.PLAtoPBAFunction;                     display_qLTRP = data.display_qLTRP;                     numLensYOriginal = data.numLensYOriginal;               showAsph = data.showAsph;                             imageFilepath = data.imageFilepath;               
PRA = data.PRA;                                               effectiveG = data.effectiveG;                           outputManual = data.outputManual;                       showGP = data.showGP;                                 originalImage = data.originalImage;               
RDPModifierMode = data.RDPModifierMode;                       eyeMode = data.eyeMode;                                 overwrite = data.overwrite;                             showGRL = data.showGRL;                               WD = data.WD;                                     
RDP_PLArray = data.RDP_PLArray;                               focal = data.focal;                                     p1 = data.p1;                                           showII = data.showII;                                 thetaPolarAngle = data.thetaPolarAngle;           
RRFilterHalfSizeHor = data.RRFilterHalfSizeHor;               forPLA_incident = data.forPLA_incident;                 p2 = data.p2;                                           showLRA = data.showLRA;                               phiAzimuthalAngle = data.phiAzimuthalAngle;       
RRFilterHalfSizeVer = data.RRFilterHalfSizeVer;               forPLA_insidePrism = data.forPLA_insidePrism;           panelPixelNumHor = data.panelPixelNumHor;               showPRA = data.showPRA;                               pupilSize = data.pupilSize;                       
RRRConstant = data.RRRConstant;                               forPLA_mu_PrismtoAir = data.forPLA_mu_PrismtoAir;       panelPixelNumVer = data.panelPixelNumVer;               showWP = data.showWP;                                 RDP = data.RDP;                                   
RRRMode = data.RRRMode;                                       forPLA_mu_airtoPrism = data.forPLA_mu_airtoPrism;       panelSizeHor = data.panelSizeHor;                       sizeforRangeY = data.sizeforRangeY;                   RDP_original = data.RDP_original;                 
VE_EyePoint = data.VE_EyePoint;                               forPLA_normalGP = data.forPLA_normalGP;                                                                                                                                                                                 
    break
    end
    while whichCode == "VZA"
AUFMode = data.AUFMode;                                       angleCenterHVA = data.angleCenterHVA;                   forPLA_mu_PrismtoAir = data.forPLA_mu_PrismtoAir;       panelSizeHorLL = data.panelSizeHorLL;                 tVeryBegining = data.tVeryBegining;               
CDP = data.CDP;                                               angleCenterVVA = data.angleCenterVVA;                   forPLA_mu_airtoPrism = data.forPLA_mu_airtoPrism;       panelSizeVer = data.panelSizeVer;                     temp_normalGP = data.temp_normalGP;               
EIHor = data.EIHor;                                           angleStep = data.angleStep;                             forPLA_normalGP = data.forPLA_normalGP;                 panelSizeVerLL = data.panelSizeVerLL;                 thetaPolar_PLArray = data.thetaPolar_PLArray;     
GPMode = data.GPMode;                                         angleSweepHVA = data.angleSweepHVA;                     forPLA_normalWP = data.forPLA_normalWP;                 parameter = data.parameter;                           verSizeForSeg = data.verSizeForSeg;               
GRLMat = data.GRLMat;                                         angleSweepVVA = data.angleSweepVVA;                     forPLA_outsidePrism = data.forPLA_outsidePrism;         phiAzimuthal_PLArray = data.phiAzimuthal_PLArray;     wedgeHalfHeight = data.wedgeHalfHeight;           
GRLMode = data.GRLMode;                                       asph_leftEnd_normal = data.asph_leftEnd_normal;         forcePupilEdgeInverse = data.forcePupilEdgeInverse;     pixelSize = data.pixelSize;                           wedgeMaxHeight = data.wedgeMaxHeight;             
HVAMesh = data.HVAMesh;                                       asph_max_height = data.asph_max_height;                 fullfilename = data.fullfilename;                       polyFit = data.polyFit;                               wedgePBA = data.wedgePBA;                         
I = data.I;                                                   asph_rightEnd_normal = data.asph_rightEnd_normal;       glassThickness = data.glassThickness;                   polyNum = data.polyNum;                               wedgePRA = data.wedgePRA;                         
LRA = data.LRA;                                               aspherical = data.aspherical;                           glass_n = data.glass_n;                                 preciseGP = data.preciseGP;                           wedgePrism = data.wedgePrism;                     
LREL = data.LREL;                                             asphericalMat = data.asphericalMat;                     gp_PBA_array = data.gp_PBA_array;                       prismLensGap = data.prismLensGap;                     wedgeVer = data.wedgeVer;                         
LensHeightEachLenticular = data.LensHeightEachLenticular;     autoVZAnalysis = data.autoVZAnalysis;                   isLLSameAsPanel = data.isLLSameAsPanel;                 prismMode = data.prismMode;                           wedge_normal = data.wedge_normal;                 
LensRadiusEachLenticular = data.LensRadiusEachLenticular;     base_segNum = data.base_segNum;                         lensAperturePool = data.lensAperturePool;               prismSizeHor = data.prismSizeHor;                     whichCode = data.whichCode;                       
OCAThickness = data.OCAThickness;                             binoDistance = data.binoDistance;                       lensArraySizeHor = data.lensArraySizeHor;               prismSizeVer = data.prismSizeVer;                     whichpba = data.whichpba;                         
OCA_n = data.OCA_n;                                           criticalFailRPNumber = data.criticalFailRPNumber;       lensArraySizeVer = data.lensArraySizeVer;               prismStructure = data.prismStructure;                 widthStart = data.widthStart;                     
PBA = data.PBA;                                               customLine = data.customLine;                           lensHeightEI0 = data.lensHeightEI0;                     prismSubstrate = data.prismSubstrate;                 widthStep = data.widthStep;                       
PBA1_fit_length = data.PBA1_fit_length;                       dateStringOn = data.dateStringOn;                       lensPitch = data.lensPitch;                             prism_n = data.prism_n;                               wp_PBA = data.wp_PBA;                             
PBA1_fit_line = data.PBA1_fit_line;                           displayCoverThickness = data.displayCoverThickness;     lensRadius = data.lensRadius;                           pupilSize_PLArray = data.pupilSize_PLArray;           writeExcel = data.writeExcel;                     
PBA1_fit_num = data.PBA1_fit_num;                             displayCover_n = data.displayCover_n;                   lensRadiusOriginal = data.lensRadiusOriginal;           q_LTRPMode = data.q_LTRPMode;                         writeRPFailMask = data.writeRPFailMask;           
PBA1_fit_point = data.PBA1_fit_point;                         display_CDP = data.display_CDP;                         lensSubstrate = data.lensSubstrate;                     rangeY = data.rangeY;                                 writeRPMask = data.writeRPMask;                   
PBA1_fit_x = data.PBA1_fit_x;                                 display_EyeMode = data.display_EyeMode;                 lensThicknessEI0 = data.lensThicknessEI0;               rangeYPitch = data.rangeYPitch;                       segM00 = data.segM00;                             
PBA1_fit_y = data.PBA1_fit_y;                                 display_LensInfo = data.display_LensInfo;               lens_n = data.lens_n;                                   rotWedgePRA = data.rotWedgePRA;                       numII = data.numII;                               
PBA_InputArray = data.PBA_InputArray;                         display_PrismInfo = data.display_PrismInfo;             limitedVA_PL = data.limitedVA_PL;                       segFit = data.segFit;                                 WD = data.WD;                                     
PBA_array_forPLA = data.PBA_array_forPLA;                     display_PupilSize = data.display_PupilSize;             ll_array = data.ll_array;                               segNum = data.segNum;                                 pupilSize = data.pupilSize;                       
PBA_array_forPLA_2 = data.PBA_array_forPLA_2;                 display_STA = data.display_STA;                         ll_down = data.ll_down;                                 segVerSize = data.segVerSize;                         limitedVA = data.limitedVA;                       
PLA_array_fromPBA = data.PLA_array_fromPBA;                   display_SegmentMode = data.display_SegmentMode;         ll_left = data.ll_left;                                 segmentMode = data.segmentMode;                       failNumberMatrix = data.failNumberMatrix;         
PLA_array_fromPBA_2 = data.PLA_array_fromPBA_2;               display_VA = data.display_VA;                           ll_right = data.ll_right;                               showAUF = data.showAUF;                               HVAAllFailTag = data.HVAAllFailTag;               
PLAtoPBAFunction = data.PLAtoPBAFunction;                     display_qLTRP = data.display_qLTRP;                     ll_up = data.ll_up;                                     showAsph = data.showAsph;                             VVAAllFailTag = data.VVAAllFailTag;               
PRA = data.PRA;                                               dyPSMode = data.dyPSMode;                               mid_PLA = data.mid_PLA;                                 showGP = data.showGP;                                 whichVATerm = data.whichVATerm;                   
VATerm = data.VATerm;                                         dynamicPS = data.dynamicPS;                             numLensYOriginal = data.numLensYOriginal;               showGRL = data.showGRL;                               lastAngle = data.lastAngle;                       
VAchecktemp1 = data.VAchecktemp1;                             effectiveG = data.effectiveG;                           numtest = data.numtest;                                 showLRA = data.showLRA;                               thetaPool = data.thetaPool;                       
VAchecktemp2 = data.VAchecktemp2;                             excelFileName = data.excelFileName;                     outputManual = data.outputManual;                       showPRA = data.showPRA;                               phiPool = data.phiPool;                           
VE_EyePoint = data.VE_EyePoint;                               excelSheetName = data.excelSheetName;                   overwrite = data.overwrite;                             showRPFailMask = data.showRPFailMask;                 VAPool = data.VAPool;                             
VE_originalPoint = data.VE_originalPoint;                     eyeMode = data.eyeMode;                                 p1 = data.p1;                                           showRPMask = data.showRPMask;                         autoTermString = data.autoTermString;             
VVAMesh = data.VVAMesh;                                       filename = data.filename;                               p2 = data.p2;                                           showWP = data.showWP;                                 whichVAElement = data.whichVAElement;             
WDForAutoGP = data.WDForAutoGP;                               focal = data.focal;                                     panelPixelNumHor = data.panelPixelNumHor;               sizeforRangeY = data.sizeforRangeY;                   TIRHappen = data.TIRHappen;                       
WD_PLArray = data.WD_PLArray;                                 forPLA_incident = data.forPLA_incident;                 panelPixelNumVer = data.panelPixelNumVer;               softLLTracing = data.softLLTracing;                   thetaPolarAngle = data.thetaPolarAngle;           
air_n = data.air_n;                                           forPLA_insidePrism = data.forPLA_insidePrism;           panelSizeHor = data.panelSizeHor;                       systemTiltAngle = data.systemTiltAngle;               phiAzimuthalAngle = data.phiAzimuthalAngle;       
    break
    end
    while whichCode == "M00Curve"
AUFMode = data.AUFMode;                                       PRA = data.PRA;                                         display_VA = data.display_VA;                           panelSizeHor = data.panelSizeHor;                         showLRA = data.showLRA;                     
AimSphere = data.AimSphere;                                   RDP = data.RDP;                                         effectiveG = data.effectiveG;                           panelSizeHorLL = data.panelSizeHorLL;                     showLeftEye = data.showLeftEye;             
CDP = data.CDP;                                               RV = data.RV;                                           exludeRVJoint = data.exludeRVJoint;                     panelSizeVer = data.panelSizeVer;                         showMax = data.showMax;                     
EIHor = data.EIHor;                                           TIR = data.TIR;                                         eyeMode = data.eyeMode;                                 panelSizeVerLL = data.panelSizeVerLL;                     showMiddleEye = data.showMiddleEye;         
GPMode = data.GPMode;                                         VATerm = data.VATerm;                                   focal = data.focal;                                     parameter = data.parameter;                               showPRA = data.showPRA;                     
GRLMat = data.GRLMat;                                         VE_EyePoint = data.VE_EyePoint;                         forPLA_incident = data.forPLA_incident;                 phiAzimuthalAngle = data.phiAzimuthalAngle;               showRV = data.showRV;                       
GRLMode = data.GRLMode;                                       VE_originalPoint = data.VE_originalPoint;               forPLA_insidePrism = data.forPLA_insidePrism;           plotAVG = data.plotAVG;                                   showRightEye = data.showRightEye;           
GridCustomString = data.GridCustomString;                     VVACenteOriginal = data.VVACenteOriginal;               forPLA_mu_PrismtoAir = data.forPLA_mu_PrismtoAir;       plotAimSphere = data.plotAimSphere;                       showWP = data.showWP;                       
HVASet = data.HVASet;                                         VVACenterArray = data.VVACenterArray;                   forPLA_mu_airtoPrism = data.forPLA_mu_airtoPrism;       plotCenter = data.plotCenter;                             sizeforRangeY = data.sizeforRangeY;         
I = data.I;                                                   VVASet = data.VVASet;                                   forPLA_normalGP = data.forPLA_normalGP;                 plotM00andTIRCurveAuto = data.plotM00andTIRCurveAuto;     softLLTracing = data.softLLTracing;         
LRA = data.LRA;                                               VZAArray = data.VZAArray;                               forPLA_normalWP = data.forPLA_normalWP;                 plotMax = data.plotMax;                                   systemTiltAngle = data.systemTiltAngle;     
LREL = data.LREL;                                             WDForAutoGP = data.WDForAutoGP;                         forPLA_outsidePrism = data.forPLA_outsidePrism;         plotRV = data.plotRV;                                     tVeryBegining = data.tVeryBegining;         
LensHeightEachLenticular = data.LensHeightEachLenticular;     WD_PLArray = data.WD_PLArray;                           forcePupilEdgeInverse = data.forcePupilEdgeInverse;     plotTIR = data.plotTIR;                                   temp_normalGP = data.temp_normalGP;         
LensRadiusEachLenticular = data.LensRadiusEachLenticular;     air_n = data.air_n;                                     glassThickness = data.glassThickness;                   plotVZALine = data.plotVZALine;                           thetaPolarAngle = data.thetaPolarAngle;     
M00AVG = data.M00AVG;                                         angleCenterHVA = data.angleCenterHVA;                   glass_n = data.glass_n;                                 preciseGP = data.preciseGP;                               verSizeForSeg = data.verSizeForSeg;         
M00Center = data.M00Center;                                   angleCenterVVA = data.angleCenterVVA;                   gp_PBA_array = data.gp_PBA_array;                       prismLensGap = data.prismLensGap;                         wedgeHalfHeight = data.wedgeHalfHeight;     
M00GridMode = data.M00GridMode;                               angleStep = data.angleStep;                             isLLSameAsPanel = data.isLLSameAsPanel;                 prismMode = data.prismMode;                               wedgeMaxHeight = data.wedgeMaxHeight;       
M00IndexHVACell = data.M00IndexHVACell;                       angleSweepHVA = data.angleSweepHVA;                     lensAperturePool = data.lensAperturePool;               prismSizeHor = data.prismSizeHor;                         wedgePBA = data.wedgePBA;                   
M00IndexVVACell = data.M00IndexVVACell;                       angleSweepVVA = data.angleSweepVVA;                     lensArraySizeHor = data.lensArraySizeHor;               prismSizeVer = data.prismSizeVer;                         wedgePRA = data.wedgePRA;                   
M00MatStr = data.M00MatStr;                                   asph_leftEnd_normal = data.asph_leftEnd_normal;         lensArraySizeVer = data.lensArraySizeVer;               prismStructure = data.prismStructure;                     wedgePrism = data.wedgePrism;               
M00Matrix = data.M00Matrix;                                   asph_max_height = data.asph_max_height;                 lensHeightEI0 = data.lensHeightEI0;                     prismSubstrate = data.prismSubstrate;                     wedgeVer = data.wedgeVer;                   
M00Max = data.M00Max;                                         asph_rightEnd_normal = data.asph_rightEnd_normal;       lensPitch = data.lensPitch;                             prism_n = data.prism_n;                                   wedge_normal = data.wedge_normal;           
M00ValueCell = data.M00ValueCell;                             aspherical = data.aspherical;                           lensRadius = data.lensRadius;                           pupilSize_PLArray = data.pupilSize_PLArray;               whichCode = data.whichCode;                 
OCAThickness = data.OCAThickness;                             asphericalMat = data.asphericalMat;                     lensRadiusOriginal = data.lensRadiusOriginal;           rangeY = data.rangeY;                                     whichpba = data.whichpba;                   
OCA_n = data.OCA_n;                                           autoM00Analysis = data.autoM00Analysis;                 lensSubstrate = data.lensSubstrate;                     rangeYPitch = data.rangeYPitch;                           widthStart = data.widthStart;               
PBA = data.PBA;                                               binoDistance = data.binoDistance;                       lensThicknessEI0 = data.lensThicknessEI0;               rotWedgePRA = data.rotWedgePRA;                           widthStep = data.widthStep;                 
PBA1_fit_length = data.PBA1_fit_length;                       checkTemp1 = data.checkTemp1;                           lens_n = data.lens_n;                                   saveCurve = data.saveCurve;                               wp_PBA = data.wp_PBA;                       
PBA1_fit_line = data.PBA1_fit_line;                           checkTemp2 = data.checkTemp2;                           ll_array = data.ll_array;                               saveM00Mat = data.saveM00Mat;                             writeGrid = data.writeGrid;                 
PBA1_fit_num = data.PBA1_fit_num;                             curveStr = data.curveStr;                               ll_down = data.ll_down;                                 segNum = data.segNum;                                     segM00 = data.segM00;                       
PBA1_fit_point = data.PBA1_fit_point;                         customLine = data.customLine;                           ll_left = data.ll_left;                                 segVerSize = data.segVerSize;                             numII = data.numII;                         
PBA1_fit_x = data.PBA1_fit_x;                                 displayCoverThickness = data.displayCoverThickness;     ll_right = data.ll_right;                               segmentMode = data.segmentMode;                           WD = data.WD;                               
PBA1_fit_y = data.PBA1_fit_y;                                 displayCover_n = data.displayCover_n;                   ll_up = data.ll_up;                                     showAUF = data.showAUF;                                   pupilSize = data.pupilSize;                 
PBA_InputArray = data.PBA_InputArray;                         display_CDP = data.display_CDP;                         mid_PLA = data.mid_PLA;                                 showAimSphere = data.showAimSphere;                       termNum = data.termNum;                     
PBA_array_forPLA = data.PBA_array_forPLA;                     display_EyeMode = data.display_EyeMode;                 numLensYOriginal = data.numLensYOriginal;               showAsph = data.showAsph;                                 whichVATerm = data.whichVATerm;             
PBA_array_forPLA_2 = data.PBA_array_forPLA_2;                 display_LensInfo = data.display_LensInfo;               outputManual = data.outputManual;                       showAvg = data.showAvg;                                   thetaPool = data.thetaPool;                 
PLA_array_fromPBA = data.PLA_array_fromPBA;                   display_PrismInfo = data.display_PrismInfo;             overwrite = data.overwrite;                             showCenter = data.showCenter;                             phiPool = data.phiPool;                     
PLA_array_fromPBA_2 = data.PLA_array_fromPBA_2;               display_PupilSize = data.display_PupilSize;             p1 = data.p1;                                           showGP = data.showGP;                                     VAPool = data.VAPool;                       
PLAtoPBAFunction = data.PLAtoPBAFunction;                     display_STA = data.display_STA;                         p2 = data.p2;                                           showGRL = data.showGRL;                                   autoTermString = data.autoTermString;       
    break
    end
    while whichCode == "FindGRL"
AUFMode = data.AUFMode;                                       PBA1_fit_num = data.PBA1_fit_num;                       display_STA = data.display_STA;                         ll_right = data.ll_right;                             rotWedgePRA = data.rotWedgePRA;                   
CDP = data.CDP;                                               PBA1_fit_point = data.PBA1_fit_point;                   display_VA = data.display_VA;                           ll_up = data.ll_up;                                   showAUF = data.showAUF;                           
EIHor = data.EIHor;                                           PBA1_fit_x = data.PBA1_fit_x;                           effectiveG = data.effectiveG;                           manualE2CRatio = data.manualE2CRatio;                 showGP = data.showGP;                             
GPMode = data.GPMode;                                         PBA1_fit_y = data.PBA1_fit_y;                           eyeMode = data.eyeMode;                                 manualMDesired = data.manualMDesired;                 showLRA = data.showLRA;                           
GRLMode = data.GRLMode;                                       PBA_InputArray = data.PBA_InputArray;                   focal = data.focal;                                     mid_PLA = data.mid_PLA;                               showPRA = data.showPRA;                           
I = data.I;                                                   PBA_array_forPLA = data.PBA_array_forPLA;               forPLA_incident = data.forPLA_incident;                 numLensYOriginal = data.numLensYOriginal;             showWP = data.showWP;                             
LL = data.LL;                                                 PBA_array_forPLA_2 = data.PBA_array_forPLA_2;           forPLA_insidePrism = data.forPLA_insidePrism;           outputManual = data.outputManual;                     sizeforRangeY = data.sizeforRangeY;               
LRA = data.LRA;                                               PLA_array_fromPBA = data.PLA_array_fromPBA;             forPLA_mu_PrismtoAir = data.forPLA_mu_PrismtoAir;       overwrite = data.overwrite;                           softLLTracing = data.softLLTracing;               
LREL = data.LREL;                                             PLA_array_fromPBA_2 = data.PLA_array_fromPBA_2;         forPLA_mu_airtoPrism = data.forPLA_mu_airtoPrism;       p1 = data.p1;                                         systemTiltAngle = data.systemTiltAngle;           
LREnd = data.LREnd;                                           PLAtoPBAFunction = data.PLAtoPBAFunction;               forPLA_normalGP = data.forPLA_normalGP;                 p2 = data.p2;                                         tVeryBegining = data.tVeryBegining;               
LRNum = data.LRNum;                                           PRA = data.PRA;                                         forPLA_normalWP = data.forPLA_normalWP;                 panelSizeHor = data.panelSizeHor;                     temp_normalGP = data.temp_normalGP;               
LRStart = data.LRStart;                                       RDP = data.RDP;                                         forPLA_outsidePrism = data.forPLA_outsidePrism;         panelSizeHorLL = data.panelSizeHorLL;                 thetaPolar_PLArray = data.thetaPolar_PLArray;     
LRstep = data.LRstep;                                         RatioM = data.RatioM;                                   forcePupilEdgeInverse = data.forcePupilEdgeInverse;     panelSizeVer = data.panelSizeVer;                     wedgeHalfHeight = data.wedgeHalfHeight;           
LensHeightEachLenticular = data.LensHeightEachLenticular;     RatioMTemp = data.RatioMTemp;                           glassThickness = data.glassThickness;                   panelSizeVerLL = data.panelSizeVerLL;                 wedgeMaxHeight = data.wedgeMaxHeight;             
LensRadiusCenter = data.LensRadiusCenter;                     VE_EyePoint = data.VE_EyePoint;                         glass_n = data.glass_n;                                 parameter = data.parameter;                           wedgePBA = data.wedgePBA;                         
LensRadiusEachLenticular = data.LensRadiusEachLenticular;     VE_originalPoint = data.VE_originalPoint;               gp_PBA_array = data.gp_PBA_array;                       phiAzimuthal_PLArray = data.phiAzimuthal_PLArray;     wedgePRA = data.wedgePRA;                         
LensRadiusFinal = data.LensRadiusFinal;                       WDForAutoGP = data.WDForAutoGP;                         isLLSameAsPanel = data.isLLSameAsPanel;                 plotGRL = data.plotGRL;                               wedgePrism = data.wedgePrism;                     
M00Output = data.M00Output;                                   WD_PLArray = data.WD_PLArray;                           lensAperturePool = data.lensAperturePool;               preciseGP = data.preciseGP;                           wedgeVer = data.wedgeVer;                         
M00Pool = data.M00Pool;                                       air_n = data.air_n;                                     lensArraySizeHor = data.lensArraySizeHor;               prismLensGap = data.prismLensGap;                     wedge_normal = data.wedge_normal;                 
MAB_E2C = data.MAB_E2C;                                       aspherical = data.aspherical;                           lensArraySizeVer = data.lensArraySizeVer;               prismMode = data.prismMode;                           whichCode = data.whichCode;                       
MCenter = data.MCenter;                                       binoDistance = data.binoDistance;                       lensHeightEI0 = data.lensHeightEI0;                     prismSizeHor = data.prismSizeHor;                     whichpba = data.whichpba;                         
MDesiredArray = data.MDesiredArray;                           customLine = data.customLine;                           lensPitch = data.lensPitch;                             prismSizeVer = data.prismSizeVer;                     widthStart = data.widthStart;                     
MEachLens = data.MEachLens;                                   displayCoverThickness = data.displayCoverThickness;     lensRadius = data.lensRadius;                           prismStructure = data.prismStructure;                 widthStep = data.widthStep;                       
MEachLenticular = data.MEachLenticular;                       displayCover_n = data.displayCover_n;                   lensRadiusOriginal = data.lensRadiusOriginal;           prismSubstrate = data.prismSubstrate;                 wp_PBA = data.wp_PBA;                             
MRatioArray = data.MRatioArray;                               display_CDP = data.display_CDP;                         lensSubstrate = data.lensSubstrate;                     prism_n = data.prism_n;                               writeGRL = data.writeGRL;                         
OCAThickness = data.OCAThickness;                             display_EyeMode = data.display_EyeMode;                 lensThicknessEI0 = data.lensThicknessEI0;               pupilSize_PLArray = data.pupilSize_PLArray;           numII = data.numII;                               
OCA_n = data.OCA_n;                                           display_LensInfo = data.display_LensInfo;               lens_n = data.lens_n;                                   radiusNum = data.radiusNum;                           WD = data.WD;                                     
PBA = data.PBA;                                               display_PrismInfo = data.display_PrismInfo;             ll_array = data.ll_array;                               radiusPool = data.radiusPool;                         thetaPolarAngle = data.thetaPolarAngle;           
PBA1_fit_length = data.PBA1_fit_length;                       display_PupilSize = data.display_PupilSize;             ll_down = data.ll_down;                                 rangeY = data.rangeY;                                 phiAzimuthalAngle = data.phiAzimuthalAngle;       
PBA1_fit_line = data.PBA1_fit_line;                           display_RDP = data.display_RDP;                         ll_left = data.ll_left;                                 rangeYPitch = data.rangeYPitch;                       pupilSize = data.pupilSize;                       
    break
    end
    while whichCode == "Design"
AUFMode = data.AUFMode;                                       PLAtoPBAFunction = data.PLAtoPBAFunction;               display_RRRmode = data.display_RRRmode;                 lensRadiusPool = data.lensRadiusPool;           sampleSize = data.sampleSize;                 
CDP = data.CDP;                                               PRA = data.PRA;                                         display_STA = data.display_STA;                         lensRadius_Design = data.lensRadius_Design;     segmentMode = data.segmentMode;               
CDP_Design = data.CDP_Design;                                 RDP = data.RDP;                                         display_SegmentMode = data.display_SegmentMode;         lensSubstrate = data.lensSubstrate;             showAUF = data.showAUF;                       
EIHor = data.EIHor;                                           RRRMode = data.RRRMode;                                 display_VA = data.display_VA;                           lensThicknessEI0 = data.lensThicknessEI0;       showAsph = data.showAsph;                     
GPMode = data.GPMode;                                         RV_Design = data.RV_Design;                             display_qLTRP = data.display_qLTRP;                     lens_n = data.lens_n;                           showGP = data.showGP;                         
GRLMode = data.GRLMode;                                       VE_EyePoint = data.VE_EyePoint;                         effectiveG = data.effectiveG;                           ll_array = data.ll_array;                       showGRL = data.showGRL;                       
HardVATargetHigh = data.HardVATargetHigh;                     VE_originalPoint = data.VE_originalPoint;               eyeMode = data.eyeMode;                                 ll_down = data.ll_down;                         showLRA = data.showLRA;                       
HardVATargetLow = data.HardVATargetLow;                       WD = data.WD;                                           focal = data.focal;                                     ll_left = data.ll_left;                         showPRA = data.showPRA;                       
HardVATargetStep = data.HardVATargetStep;                     WDForAutoGP = data.WDForAutoGP;                         focal_Design = data.focal_Design;                       ll_right = data.ll_right;                       showWP = data.showWP;                         
HardVA_Design = data.HardVA_Design;                           air_n = data.air_n;                                     forPLA_incident = data.forPLA_incident;                 ll_up = data.ll_up;                             sizeforRangeY = data.sizeforRangeY;           
I = data.I;                                                   asph_leftEnd_normal = data.asph_leftEnd_normal;         forPLA_insidePrism = data.forPLA_insidePrism;           mid_PLA = data.mid_PLA;                         softLLTracing = data.softLLTracing;           
LRA = data.LRA;                                               asph_max_height = data.asph_max_height;                 forPLA_mu_PrismtoAir = data.forPLA_mu_PrismtoAir;       numII = data.numII;                             systemTiltAngle = data.systemTiltAngle;       
LREL = data.LREL;                                             asph_rightEnd_normal = data.asph_rightEnd_normal;       forPLA_mu_airtoPrism = data.forPLA_mu_airtoPrism;       numLensYOriginal = data.numLensYOriginal;       tVeryBegining = data.tVeryBegining;           
LensHeightEachLenticular = data.LensHeightEachLenticular;     aspherical = data.aspherical;                           forPLA_normalGP = data.forPLA_normalGP;                 outputManual = data.outputManual;               targetName = data.targetName;                 
LensRadiusEachLenticular = data.LensRadiusEachLenticular;     asphericalMat = data.asphericalMat;                     forPLA_normalWP = data.forPLA_normalWP;                 p1 = data.p1;                                   temp1 = data.temp1;                           
LouieAnalysis = data.LouieAnalysis;                           binoDistance = data.binoDistance;                       forPLA_outsidePrism = data.forPLA_outsidePrism;         p2 = data.p2;                                   temp_normalGP = data.temp_normalGP;           
M00TargetHigh = data.M00TargetHigh;                           c = data.c;                                             forcePupilEdgeInverse = data.forcePupilEdgeInverse;     panelSizeHor = data.panelSizeHor;               thetaPolarAngle = data.thetaPolarAngle;       
M00TargetLow = data.M00TargetLow;                             checkFailRP = data.checkFailRP;                         glassThickness = data.glassThickness;                   panelSizeHorLL = data.panelSizeHorLL;           totalName = data.totalName;                   
M00TargetStep = data.M00TargetStep;                           condition = data.condition;                             glassThicknessPool = data.glassThicknessPool;           panelSizeVer = data.panelSizeVer;               varName = data.varName;                       
M_Design = data.M_Design;                                     continueWarning1 = data.continueWarning1;               glassThickness_Design = data.glassThickness_Design;     panelSizeVerLL = data.panelSizeVerLL;           varTypes = data.varTypes;                     
OCAThickness = data.OCAThickness;                             continueWarning2 = data.continueWarning2;               glass_n = data.glass_n;                                 phiAzimuthalAngle = data.phiAzimuthalAngle;     verticalPointNum = data.verticalPointNum;     
OCA_n = data.OCA_n;                                           customLine = data.customLine;                           gp_PBA_array = data.gp_PBA_array;                       preciseGP = data.preciseGP;                     wedgeHalfHeight = data.wedgeHalfHeight;       
PBA = data.PBA;                                               designCount = data.designCount;                         isLLSameAsPanel = data.isLLSameAsPanel;                 prismLensGap = data.prismLensGap;               wedgeMaxHeight = data.wedgeMaxHeight;         
PBA1_fit_length = data.PBA1_fit_length;                       designEI = data.designEI;                               isRRShift = data.isRRShift;                             prismMode = data.prismMode;                     wedgePBA = data.wedgePBA;                     
PBA1_fit_line = data.PBA1_fit_line;                           designPosition = data.designPosition;                   lensAperturePool = data.lensAperturePool;               prismSizeHor = data.prismSizeHor;               wedgePRA = data.wedgePRA;                     
PBA1_fit_num = data.PBA1_fit_num;                             displayCoverThickness = data.displayCoverThickness;     lensArraySizeHor = data.lensArraySizeHor;               prismSizeVer = data.prismSizeVer;               wedgePrism = data.wedgePrism;                 
PBA1_fit_point = data.PBA1_fit_point;                         displayCover_n = data.displayCover_n;                   lensArraySizeVer = data.lensArraySizeVer;               prismStructure = data.prismStructure;           wedgeVer = data.wedgeVer;                     
PBA1_fit_x = data.PBA1_fit_x;                                 display_BLP = data.display_BLP;                         lensHeightEI0 = data.lensHeightEI0;                     prismSubstrate = data.prismSubstrate;           wedge_normal = data.wedge_normal;             
PBA1_fit_y = data.PBA1_fit_y;                                 display_CDP = data.display_CDP;                         lensPitch = data.lensPitch;                             prism_n = data.prism_n;                         whichCode = data.whichCode;                   
PBA_InputArray = data.PBA_InputArray;                         display_EyeMode = data.display_EyeMode;                 lensPitchPool = data.lensPitchPool;                     pupilSize = data.pupilSize;                     whichpba = data.whichpba;                     
PBA_array_forPLA = data.PBA_array_forPLA;                     display_LensInfo = data.display_LensInfo;               lensPitch_Design = data.lensPitch_Design;               rangeY = data.rangeY;                           widthStart = data.widthStart;                 
PBA_array_forPLA_2 = data.PBA_array_forPLA_2;                 display_PrismInfo = data.display_PrismInfo;             lensRadius = data.lensRadius;                           rangeYPitch = data.rangeYPitch;                 widthStep = data.widthStep;                   
PLA_array_fromPBA = data.PLA_array_fromPBA;                   display_PupilSize = data.display_PupilSize;             lensRadiusOriginal = data.lensRadiusOriginal;           rotWedgePRA = data.rotWedgePRA;                 wp_PBA = data.wp_PBA;                         
PLA_array_fromPBA_2 = data.PLA_array_fromPBA_2;               display_RDP = data.display_RDP;                                                                                                                                                                               
        break
    end
    while whichCode == "XYGrid"
AS_XYGrid = data.AS_XYGrid;                                   RDP_PLArray = data.RDP_PLArray;                         display_VA = data.display_VA;                                   ll_array = data.ll_array;                             showGP = data.showGP;                             
AUFMode = data.AUFMode;                                       RP_XYGrid = data.RP_XYGrid;                             effectiveG = data.effectiveG;                                   ll_down = data.ll_down;                               showGRL = data.showGRL;                           
AimSphere_grid = data.AimSphere_grid;                         RP_grid = data.RP_grid;                                 eyeMode = data.eyeMode;                                         ll_left = data.ll_left;                               showLRA = data.showLRA;                           
CDP = data.CDP;                                               RV_XYGrid = data.RV_XYGrid;                             figXYGrid_AS = data.figXYGrid_AS;                               ll_right = data.ll_right;                             showMaxMin = data.showMaxMin;                     
EIHor = data.EIHor;                                           RV_grid = data.RV_grid;                                 figXYGrid_M = data.figXYGrid_M;                                 ll_up = data.ll_up;                                   showPRA = data.showPRA;                           
GPMode = data.GPMode;                                         TIR_XYGrid = data.TIR_XYGrid;                           figXYGrid_RP = data.figXYGrid_RP;                               mid_PLA = data.mid_PLA;                               showWP = data.showWP;                             
GRLMat = data.GRLMat;                                         TIR_grid = data.TIR_grid;                               figXYGrid_RV = data.figXYGrid_RV;                               numLensYOriginal = data.numLensYOriginal;             sizeforRangeY = data.sizeforRangeY;               
GRLMode = data.GRLMode;                                       VE_EyePoint = data.VE_EyePoint;                         figXYGrid_TIR = data.figXYGrid_TIR;                             outputManual = data.outputManual;                     systemTiltAngle = data.systemTiltAngle;           
I = data.I;                                                   VE_originalPoint = data.VE_originalPoint;               focal = data.focal;                                             overwrite = data.overwrite;                           tVeryBegining = data.tVeryBegining;               
LCLengthHor = data.LCLengthHor;                               WDForAutoGP = data.WDForAutoGP;                         forPLA_incident = data.forPLA_incident;                         p1 = data.p1;                                         targetWithinPanel = data.targetWithinPanel;       
LCLengthVer = data.LCLengthVer;                               WD_PLArray = data.WD_PLArray;                           forPLA_insidePrism = data.forPLA_insidePrism;                   p2 = data.p2;                                         temp_normalGP = data.temp_normalGP;               
LRA = data.LRA;                                               air_n = data.air_n;                                     forPLA_mu_PrismtoAir = data.forPLA_mu_PrismtoAir;               panelSizeHor = data.panelSizeHor;                     testMatrix = data.testMatrix;                     
LREL = data.LREL;                                             asph_leftEnd_normal = data.asph_leftEnd_normal;         forPLA_mu_airtoPrism = data.forPLA_mu_airtoPrism;               panelSizeHorLL = data.panelSizeHorLL;                 thetaPolar_PLArray = data.thetaPolar_PLArray;     
LensHeightEachLenticular = data.LensHeightEachLenticular;     asph_max_height = data.asph_max_height;                 forPLA_normalGP = data.forPLA_normalGP;                         panelSizeVer = data.panelSizeVer;                     wedgeHalfHeight = data.wedgeHalfHeight;           
LensRadiusEachLenticular = data.LensRadiusEachLenticular;     asph_rightEnd_normal = data.asph_rightEnd_normal;       forPLA_normalWP = data.forPLA_normalWP;                         panelSizeVerLL = data.panelSizeVerLL;                 wedgeMaxHeight = data.wedgeMaxHeight;             
M_XYGrid = data.M_XYGrid;                                     aspherical = data.aspherical;                           forPLA_outsidePrism = data.forPLA_outsidePrism;                 parameter = data.parameter;                           wedgePBA = data.wedgePBA;                         
M_grid = data.M_grid;                                         asphericalMat = data.asphericalMat;                     forcePupilEdgeInverse = data.forcePupilEdgeInverse;             phiAzimuthal_PLArray = data.phiAzimuthal_PLArray;     wedgePRA = data.wedgePRA;                         
OCAThickness = data.OCAThickness;                             axXYGrid_AS = data.axXYGrid_AS;                         glassThickness = data.glassThickness;                           preciseGP = data.preciseGP;                           wedgePrism = data.wedgePrism;                     
OCA_n = data.OCA_n;                                           axXYGrid_M = data.axXYGrid_M;                           glass_n = data.glass_n;                                         prismLensGap = data.prismLensGap;                     wedgeVer = data.wedgeVer;                         
PBA = data.PBA;                                               axXYGrid_RP = data.axXYGrid_RP;                         gp_PBA_array = data.gp_PBA_array;                               prismMode = data.prismMode;                           wedge_normal = data.wedge_normal;                 
PBA1_fit_length = data.PBA1_fit_length;                       axXYGrid_RV = data.axXYGrid_RV;                         isLLSameAsPanel = data.isLLSameAsPanel;                         prismSizeHor = data.prismSizeHor;                     whichCode = data.whichCode;                       
PBA1_fit_line = data.PBA1_fit_line;                           axXYGrid_TIR = data.axXYGrid_TIR;                       lensAperturePool = data.lensAperturePool;                       prismSizeVer = data.prismSizeVer;                     whichpba = data.whichpba;                         
PBA1_fit_num = data.PBA1_fit_num;                             binoDistance = data.binoDistance;                       lensArraySizeHor = data.lensArraySizeHor;                       prismStructure = data.prismStructure;                 widthStart = data.widthStart;                     
PBA1_fit_point = data.PBA1_fit_point;                         customLine = data.customLine;                           lensArraySizeVer = data.lensArraySizeVer;                       prismSubstrate = data.prismSubstrate;                 widthStep = data.widthStep;                       
PBA1_fit_x = data.PBA1_fit_x;                                 displayCoverThickness = data.displayCoverThickness;     lensCenterUserDefined_Hor = data.lensCenterUserDefined_Hor;     prism_n = data.prism_n;                               wp_PBA = data.wp_PBA;                             
PBA1_fit_y = data.PBA1_fit_y;                                 displayCover_n = data.displayCover_n;                   lensCenterUserDefined_Ver = data.lensCenterUserDefined_Ver;     pupilSize_PLArray = data.pupilSize_PLArray;           writeFig = data.writeFig;                         
PBA_InputArray = data.PBA_InputArray;                         display_CDP = data.display_CDP;                         lensHeightEI0 = data.lensHeightEI0;                             rangeY = data.rangeY;                                 numII = data.numII;                               
PBA_array_forPLA = data.PBA_array_forPLA;                     display_EyeMode = data.display_EyeMode;                 lensPitch = data.lensPitch;                                     rangeYPitch = data.rangeYPitch;                       WD = data.WD;                                     
PBA_array_forPLA_2 = data.PBA_array_forPLA_2;                 display_LensInfo = data.display_LensInfo;               lensRadius = data.lensRadius;                                   rotWedgePRA = data.rotWedgePRA;                       thetaPolarAngle = data.thetaPolarAngle;           
PLA_array_fromPBA = data.PLA_array_fromPBA;                   display_PrismInfo = data.display_PrismInfo;             lensRadiusOriginal = data.lensRadiusOriginal;                   rotationMatrix = data.rotationMatrix;                 phiAzimuthalAngle = data.phiAzimuthalAngle;       
PLA_array_fromPBA_2 = data.PLA_array_fromPBA_2;               display_PupilSize = data.display_PupilSize;             lensSubstrate = data.lensSubstrate;                             showAUF = data.showAUF;                               pupilSize = data.pupilSize;                       
PLAtoPBAFunction = data.PLAtoPBAFunction;                     display_RDP = data.display_RDP;                         lensThicknessEI0 = data.lensThicknessEI0;                       showAsph = data.showAsph;                             RDP = data.RDP;                                   
PRA = data.PRA;                                               display_STA = data.display_STA;                         lens_n = data.lens_n;                                                                                                                                                   
        break
    end
    %%
    if whichCode ~= "II"
        imageFilepath = "";
    end

    %% 輸出命名
    % custom line handle
    if ~isempty(customLine);customLine=strcat("_",customLine);end
    name_string = [];
    if outputManual == 1 % 自定義命名

        % check existence
        if ~exist('display_VA','var'); display_VA = 0;end; if ~exist('display_STA','var'); display_STA = 0;end
        if ~exist('display_PupilSize','var'); display_PupilSize = 0;end; if ~exist('display_EyeMode','var'); display_EyeMode = 0;end
        if ~exist('display_RDP','var'); display_RDP = 0;end; if ~exist('display_SegmentMode','var'); display_SegmentMode = 0;end
        if ~exist('display_RRRmode','var'); display_RRRmode = 0;end; if ~exist('display_LensInfo','var'); display_LensInfo = 0;end
        if ~exist('display_PrismInfo','var'); display_PrismInfo = 0;end; if ~exist('display_CDP','var'); display_CDP = 0;end
        if ~exist('display_qLTRP','var'); display_qLTRP = 0;end % 要新增請在此處新增

        if ~exist('showLRA','var'); showLRA = 0;end; if ~exist('showGRL','var'); showGRL = 0;end
        if ~exist('showAsph','var'); showAsph = 0;end; if ~exist('showAUF','var'); showAUF = 0;end
        if ~exist('showPRA','var'); showPRA = 0;end; if ~exist('showGP','var'); showGP = 0;end
        if ~exist('showWP','var'); showWP = 0;end

        % num 1,2,3,4,5 ...
        display_pattern = ...
            [   display_VA, display_STA, display_PupilSize, display_EyeMode, display_RDP,...
                display_SegmentMode, display_RRRmode, display_LensInfo, display_PrismInfo,...
                display_CDP, display_qLTRP  ]; % 要新增請在此處新增

        [~,display_order] = sort(display_pattern); % 命名要以該順序排列
        name_string = strings(1,length(display_pattern)); % 空字串
        termCount = 0;
        for whichTerm = display_order
            termCount = termCount + 1;
            if display_pattern(whichTerm) == 0; continue; end
            switch whichTerm
                case 1 % display_VA
                    if whichCode == "M00Curve"
                        if autoM00Analysis == 0
                            name_string(termCount) = strcat("WDR",num2str(WD),"_VVA",num2str(thetaPolarAngle),"_HVA",num2str(phiAzimuthalAngle));
                        elseif autoM00Analysis == 1
                            switch whichVATerm
                                case 1 % HVA
                                    name_string(termCount) = strcat("HVA Curve_WDR",num2str(WD),"_VVA",num2str(angleCenterVVA));
                                case 2 % VVA
                                    name_string(termCount) = strcat("VVA Curve_WDR",num2str(WD),"_HVA",num2str(angleCenterHVA));
                            end
                        end
                    else
                        name_string(termCount) = strcat("WDR",num2str(WD),"_VVA",num2str(thetaPolarAngle),"_HVA",num2str(phiAzimuthalAngle));
                    end
                case 2 % display_STA
                    name_string(termCount) = strcat("STA",num2str(systemTiltAngle));
                case 3 % display_PupilSize
                    name_string(termCount) = strcat("PS",num2str(pupilSize,'%02d'));
                case 4 % display_EyeMode
                    mono_bino_string=["mono","bino","leftEye","rightEye"];
                    if isequal(eyeMode,0);name_string(termCount)=mono_bino_string(1);end
                    if isequal(eyeMode,[-1 1]);name_string(termCount)=mono_bino_string(2);end
                    if isequal(eyeMode,-1);name_string(termCount)=mono_bino_string(3);end
                    if isequal(eyeMode,1);name_string(termCount)=mono_bino_string(4);end
                case 5 % display_RDP
                    name_string(termCount) = strcat("RDP",num2str(RDP));
                case 6 % display_SegmentMode
                    switch segmentMode
                        case 0
                            strtemp = "noSeg";
                        case 2
                            strtemp = strcat("seg",num2str(segNum));
                        otherwise
                            strtemp = "unknownSeg";
                    end
                    name_string(termCount) = strtemp;
                case 7 % display_RRRmode % II Code Only
                    RRX_string=["off","on"];
                    name_string(termCount)=strcat("RRR",RRX_string(RRRMode+1));   
                case 8 % display_LensInfo
                    strtemp2 = []; strtemp3 = []; strtemp4 = [];
                    % LRA
                    if showLRA == 1
                        strtemp1 = [strcat("LRA",num2str(LRA))];
                    end
                    % GRL
                    if showGRL == 1
                        if GRLMode == 1
                            strtemp2 = "GRL";
                        end
                    end
                    % Asph
                    if showAsph == 1
                        if aspherical == 1
                            strtemp3 = "Asph";
                        end
                    end
                    % AUF
                    if showAUF == 1
                        if AUFMode == 1
                            strtemp4 = "AUF";
                        end
                    end
                    strcomb = strjoin([strtemp1,strtemp2,strtemp3,strtemp4],'_');
                    name_string(termCount) = strcomb;         
                case 9 % display_PrismInfo   
                    strtemp2 = []; strtemp3 = []; strtemp4 = [];
                    % prism mode
                    if prismMode == 1
                        strtemp1 = ["prism"];
                        % PRA
                        if showPRA == 1
                            strtemp2 = strcat("PRA",num2str(PRA));
                        end
                        % GP
                        if showGP == 1
                            if GPMode == 1
                                if size(PBA,2) == 1
                                    strtemp3 = strcat("AutoGP_","PBA",num2str(PBA),"_WDGP",num2str(WDForAutoGP));
                                elseif size(PBA,2) > 1
                                    strtemp3 = "ManualGP";
                                end
                            end
                        end
                        % wedge prism
                        if showWP == 1
                            if wedgePrism == 1
                                strtemp4 = strcat("WP_PBA",num2str(wedgePBA),"_PRA",num2str(wedgePRA));
                            end
                        end
                    elseif prismMode == 0
                        strtemp1 = ["noprism"];
                    end
                    strcomb = strjoin([strtemp1,strtemp2,strtemp3,strtemp4],'_');
                    name_string(termCount) = strcomb;  
                case 10 % display_CDP
                    name_string(termCount) = strcat("CDP",num2str(CDP));
                case 11 % display_qLTRP
                    if q_LTRPMode == 1
                        name_string(termCount) = "q-LTRP";
                    end                                      
            end
        end
        name_string(cellfun('isempty',name_string)) = [];
        switch whichCode
            case "II"
                outputIIName = strcat(erase(imageFilepath,[".bmp",".png"]),"_II",strjoin(["",name_string],"_"),customLine,".png");
                if ~isempty(varargin) && isequal(varargin{1},"BLP")
                    outputIIName = strcat(erase(imageFilepath,[".bmp",".png"]),"_II-BLP",strjoin(["",name_string],"_"),customLine,".png"); 
                end
            case "VZA"
                outputIIName = strcat("VZA",strjoin(["",name_string],"_"),customLine,".png");
            case "M00Curve"
                outputIIName = strcat("M00Curve",strjoin(["",name_string],"_"),customLine,".png");
            case "FindGRL" % .mat file
                outputIIName = strcat("[GRL]",strjoin(["",name_string],"_"),customLine,".mat");
            case "Design" % .xlsx file
                outputIIName = strcat("Design",strjoin(["",name_string],"_"),customLine,".xlsx");
            case "XYGrid" % 模板
                outputIIName = strcat("-XYGrid",strjoin(["",name_string],"_"),customLine,".png");
        end
    elseif outputManual == 0
        switch whichCode 
            case "II"
                outputIIName = strcat(erase(imageFilepath,[".bmp",".png"]),"_II_",num2str(numII),customLine,".png");
            case "VZA"
                outputIIName = strcat("VZA_",num2str(numII),customLine,".png");
            case "M00Curve"
                outputIIName = strcat("M00Curve_",num2str(numII),customLine,".png");
            case "FindGRL"
                outputIIName = strcat("GRL-",num2str(numII),customLine,".mat");
            case "Design" % .xlsx file
                outputIIName = strcat("Design_",num2str(numII),customLine,".xlsx");
            case "XYGrid" % 模板
                outputIIName = strcat("-XYGrid_",num2str(numII),customLine,".png");
        end
        
    end
    if strlength(outputIIName) >= 250
        ThrowError("General",10,outputIIName)
    end
    disp(strcat("處理中: 條件",num2str(numII),strjoin(["",name_string],"_"),customLine));
end