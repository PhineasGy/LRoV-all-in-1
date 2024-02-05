function data = pre_before_any_loop(whichCode,data,varargin)
% PRE_BEFORE_ANY_LOOP
%   varargin 說明:
%       if length(varargin) == 1 && varargin{1} == 0 --> II-BLP: 進入此 Function 不需要再次抓圖

    if whichCode ~= "Design"
    disp('-------------------------------------------');
    disp('< pre_before_any_loop.m 執行開始 >')
    end
    %   upper("pre_before_any_loop"):

    %% structure assignment
    while whichCode == "II"
AUFMode = data.AUFMode;                             asphericalMat = data.asphericalMat;                     forcePupilEdgeInverse = data.forcePupilEdgeInverse;     polyFit = data.polyFit;                         showII = data.showII;                             
EIHor = data.EIHor;                                 base_segNum = data.base_segNum;                         glassThickness = data.glassThickness;                   polyNum = data.polyNum;                         showLRA = data.showLRA;                           
GPMode = data.GPMode;                               binoDistance = data.binoDistance;                       glass_n = data.glass_n;                                 preciseGP = data.preciseGP;                     showPRA = data.showPRA;                           
GRLMat = data.GRLMat;                               colorMode = data.colorMode;                             isLLSameAsPanel = data.isLLSameAsPanel;                 prismLensGap = data.prismLensGap;               showWP = data.showWP;                             
GRLMode = data.GRLMode;                             customLine = data.customLine;                           isRRShift = data.isRRShift;                             prismMode = data.prismMode;                     softLLTracing = data.softLLTracing;               
LRA = data.LRA;                                     debugMode = data.debugMode;                             lensArraySizeHor = data.lensArraySizeHor;               prismSizeHor = data.prismSizeHor;               spaHorSize = data.spaHorSize;                     
MOffset = data.MOffset;                             displayCoverThickness = data.displayCoverThickness;     lensArraySizeVer = data.lensArraySizeVer;               prismSizeVer = data.prismSizeVer;               spaVerSize = data.spaVerSize;                     
OCAThickness = data.OCAThickness;                   displayCover_n = data.displayCover_n;                   lensPitch = data.lensPitch;                             prismStructure = data.prismStructure;           systemTiltAngle = data.systemTiltAngle;           
OCA_n = data.OCA_n;                                 display_CDP = data.display_CDP;                         lensRadius = data.lensRadius;                           prismSubstrate = data.prismSubstrate;           tVeryBegining = data.tVeryBegining;               
PBA = data.PBA;                                     display_EyeMode = data.display_EyeMode;                 lensThicknessEI0 = data.lensThicknessEI0;               prism_n = data.prism_n;                         thetaPolar_PLArray = data.thetaPolar_PLArray;     
PRA = data.PRA;                                     display_LensInfo = data.display_LensInfo;               lens_n = data.lens_n;                                   pupilSize_PLArray = data.pupilSize_PLArray;     verSizeForSeg = data.verSizeForSeg;               
RDPModifierMode = data.RDPModifierMode;             display_PrismInfo = data.display_PrismInfo;             outputManual = data.outputManual;                       q_LTRPMode = data.q_LTRPMode;                   wedgePBA = data.wedgePBA;                         
RDP_PLArray = data.RDP_PLArray;                     display_PupilSize = data.display_PupilSize;             overwrite = data.overwrite;                             segFit = data.segFit;                           wedgePRA = data.wedgePRA;                         
RRFilterHalfSizeHor = data.RRFilterHalfSizeHor;     display_RDP = data.display_RDP;                         panelPixelNumHor = data.panelPixelNumHor;               segNum = data.segNum;                           wedgePrism = data.wedgePrism;                     
RRFilterHalfSizeVer = data.RRFilterHalfSizeVer;     display_RRRmode = data.display_RRRmode;                 panelPixelNumVer = data.panelPixelNumVer;               segmentMode = data.segmentMode;                 widthStart = data.widthStart;                     
RRRConstant = data.RRRConstant;                     display_STA = data.display_STA;                         panelSizeHor = data.panelSizeHor;                       showAUF = data.showAUF;                         widthStep = data.widthStep;                       
RRRMode = data.RRRMode;                             display_SegmentMode = data.display_SegmentMode;         panelSizeVer = data.panelSizeVer;                       showAsph = data.showAsph;                       writeII = data.writeII;                           
WDForAutoGP = data.WDForAutoGP;                     display_VA = data.display_VA;                           parameter = data.parameter;                             showGP = data.showGP;                           writeSpa = data.writeSpa;                         
WD_PLArray = data.WD_PLArray;                       display_qLTRP = data.display_qLTRP;                     phiAzimuthal_PLArray = data.phiAzimuthal_PLArray;       showGRL = data.showGRL;                         zero2one = data.zero2one;                         
aspherical = data.aspherical;                       eyeMode = data.eyeMode;                                 pixelSize = data.pixelSize;                                                                                                                               
    break
    end
    while whichCode == "VZA"
AUFMode = data.AUFMode;                   autoVZAnalysis = data.autoVZAnalysis;                   excelSheetName = data.excelSheetName;                   pixelSize = data.pixelSize;                     showGRL = data.showGRL;                           
EIHor = data.EIHor;                       base_segNum = data.base_segNum;                         eyeMode = data.eyeMode;                                 polyFit = data.polyFit;                         showLRA = data.showLRA;                           
GPMode = data.GPMode;                     binoDistance = data.binoDistance;                       forcePupilEdgeInverse = data.forcePupilEdgeInverse;     polyNum = data.polyNum;                         showPRA = data.showPRA;                           
GRLMat = data.GRLMat;                     criticalFailRPNumber = data.criticalFailRPNumber;       glassThickness = data.glassThickness;                   preciseGP = data.preciseGP;                     showRPFailMask = data.showRPFailMask;             
GRLMode = data.GRLMode;                   customLine = data.customLine;                           glass_n = data.glass_n;                                 prismLensGap = data.prismLensGap;               showRPMask = data.showRPMask;                     
LRA = data.LRA;                           dateStringOn = data.dateStringOn;                       isLLSameAsPanel = data.isLLSameAsPanel;                 prismMode = data.prismMode;                     showWP = data.showWP;                             
OCAThickness = data.OCAThickness;         displayCoverThickness = data.displayCoverThickness;     lensArraySizeHor = data.lensArraySizeHor;               prismSizeHor = data.prismSizeHor;               softLLTracing = data.softLLTracing;               
OCA_n = data.OCA_n;                       displayCover_n = data.displayCover_n;                   lensArraySizeVer = data.lensArraySizeVer;               prismSizeVer = data.prismSizeVer;               systemTiltAngle = data.systemTiltAngle;           
PBA = data.PBA;                           display_CDP = data.display_CDP;                         lensPitch = data.lensPitch;                             prismStructure = data.prismStructure;           tVeryBegining = data.tVeryBegining;               
PRA = data.PRA;                           display_EyeMode = data.display_EyeMode;                 lensRadius = data.lensRadius;                           prismSubstrate = data.prismSubstrate;           thetaPolar_PLArray = data.thetaPolar_PLArray;     
VATerm = data.VATerm;                     display_LensInfo = data.display_LensInfo;               lensThicknessEI0 = data.lensThicknessEI0;               prism_n = data.prism_n;                         verSizeForSeg = data.verSizeForSeg;               
WDForAutoGP = data.WDForAutoGP;           display_PrismInfo = data.display_PrismInfo;             lens_n = data.lens_n;                                   pupilSize_PLArray = data.pupilSize_PLArray;     wedgePBA = data.wedgePBA;                         
WD_PLArray = data.WD_PLArray;             display_PupilSize = data.display_PupilSize;             outputManual = data.outputManual;                       q_LTRPMode = data.q_LTRPMode;                   wedgePRA = data.wedgePRA;                         
angleCenterHVA = data.angleCenterHVA;     display_STA = data.display_STA;                         overwrite = data.overwrite;                             segFit = data.segFit;                           wedgePrism = data.wedgePrism;                     
angleCenterVVA = data.angleCenterVVA;     display_SegmentMode = data.display_SegmentMode;         panelPixelNumHor = data.panelPixelNumHor;               segNum = data.segNum;                           widthStart = data.widthStart;                     
angleStep = data.angleStep;               display_VA = data.display_VA;                           panelPixelNumVer = data.panelPixelNumVer;               segmentMode = data.segmentMode;                 widthStep = data.widthStep;                       
angleSweepHVA = data.angleSweepHVA;       display_qLTRP = data.display_qLTRP;                     panelSizeHor = data.panelSizeHor;                       showAUF = data.showAUF;                         writeExcel = data.writeExcel;                     
angleSweepVVA = data.angleSweepVVA;       dyPSMode = data.dyPSMode;                               panelSizeVer = data.panelSizeVer;                       showAsph = data.showAsph;                       writeRPFailMask = data.writeRPFailMask;           
aspherical = data.aspherical;             dynamicPS = data.dynamicPS;                             parameter = data.parameter;                             showGP = data.showGP;                           writeRPMask = data.writeRPMask;                   
asphericalMat = data.asphericalMat;       excelFileName = data.excelFileName;                     phiAzimuthal_PLArray = data.phiAzimuthal_PLArray;                                                                                                         
        break
    end
    while whichCode == "M00Curve"
AUFMode = data.AUFMode;                       angleSweepHVA = data.angleSweepHVA;                     glass_n = data.glass_n;                                   plotVZALine = data.plotVZALine;                 showGRL = data.showGRL;                     
EIHor = data.EIHor;                           angleSweepVVA = data.angleSweepVVA;                     isLLSameAsPanel = data.isLLSameAsPanel;                   preciseGP = data.preciseGP;                     showLRA = data.showLRA;                     
GPMode = data.GPMode;                         aspherical = data.aspherical;                           lensArraySizeHor = data.lensArraySizeHor;                 prismLensGap = data.prismLensGap;               showLeftEye = data.showLeftEye;             
GRLMat = data.GRLMat;                         asphericalMat = data.asphericalMat;                     lensArraySizeVer = data.lensArraySizeVer;                 prismMode = data.prismMode;                     showMax = data.showMax;                     
GRLMode = data.GRLMode;                       autoM00Analysis = data.autoM00Analysis;                 lensPitch = data.lensPitch;                               prismSizeHor = data.prismSizeHor;               showMiddleEye = data.showMiddleEye;         
GridCustomString = data.GridCustomString;     binoDistance = data.binoDistance;                       lensRadius = data.lensRadius;                             prismSizeVer = data.prismSizeVer;               showPRA = data.showPRA;                     
LRA = data.LRA;                               curveStr = data.curveStr;                               lensThicknessEI0 = data.lensThicknessEI0;                 prismStructure = data.prismStructure;           showRV = data.showRV;                       
M00GridMode = data.M00GridMode;               customLine = data.customLine;                           lens_n = data.lens_n;                                     prismSubstrate = data.prismSubstrate;           showRightEye = data.showRightEye;           
M00MatStr = data.M00MatStr;                   displayCoverThickness = data.displayCoverThickness;     outputManual = data.outputManual;                         prism_n = data.prism_n;                         showWP = data.showWP;                       
OCAThickness = data.OCAThickness;             displayCover_n = data.displayCover_n;                   overwrite = data.overwrite;                               pupilSize_PLArray = data.pupilSize_PLArray;     softLLTracing = data.softLLTracing;         
OCA_n = data.OCA_n;                           display_CDP = data.display_CDP;                         panelSizeHor = data.panelSizeHor;                         saveCurve = data.saveCurve;                     systemTiltAngle = data.systemTiltAngle;     
PBA = data.PBA;                               display_EyeMode = data.display_EyeMode;                 panelSizeVer = data.panelSizeVer;                         saveM00Mat = data.saveM00Mat;                   tVeryBegining = data.tVeryBegining;         
PRA = data.PRA;                               display_LensInfo = data.display_LensInfo;               parameter = data.parameter;                               segNum = data.segNum;                           thetaPolarAngle = data.thetaPolarAngle;     
RDP = data.RDP;                               display_PrismInfo = data.display_PrismInfo;             phiAzimuthalAngle = data.phiAzimuthalAngle;               segmentMode = data.segmentMode;                 verSizeForSeg = data.verSizeForSeg;         
VATerm = data.VATerm;                         display_PupilSize = data.display_PupilSize;             plotAVG = data.plotAVG;                                   showAUF = data.showAUF;                         wedgePBA = data.wedgePBA;                   
VZAArray = data.VZAArray;                     display_STA = data.display_STA;                         plotAimSphere = data.plotAimSphere;                       showAimSphere = data.showAimSphere;             wedgePRA = data.wedgePRA;                   
WDForAutoGP = data.WDForAutoGP;               display_VA = data.display_VA;                           plotCenter = data.plotCenter;                             showAsph = data.showAsph;                       wedgePrism = data.wedgePrism;               
WD_PLArray = data.WD_PLArray;                 exludeRVJoint = data.exludeRVJoint;                     plotM00andTIRCurveAuto = data.plotM00andTIRCurveAuto;     showAvg = data.showAvg;                         widthStart = data.widthStart;               
angleCenterHVA = data.angleCenterHVA;         eyeMode = data.eyeMode;                                 plotMax = data.plotMax;                                   showCenter = data.showCenter;                   widthStep = data.widthStep;                 
angleCenterVVA = data.angleCenterVVA;         forcePupilEdgeInverse = data.forcePupilEdgeInverse;     plotRV = data.plotRV;                                     showGP = data.showGP;                           writeGrid = data.writeGrid;                 
angleStep = data.angleStep;                   glassThickness = data.glassThickness;                   plotTIR = data.plotTIR;                                                                                                                               
        break
    end
    while whichCode == "FindGRL"
AUFMode = data.AUFMode;                 RDP = data.RDP;                                         eyeMode = data.eyeMode;                                 panelSizeHor = data.panelSizeHor;                     showGP = data.showGP;                             
EIHor = data.EIHor;                     WDForAutoGP = data.WDForAutoGP;                         forcePupilEdgeInverse = data.forcePupilEdgeInverse;     panelSizeVer = data.panelSizeVer;                     showLRA = data.showLRA;                           
GPMode = data.GPMode;                   WD_PLArray = data.WD_PLArray;                           glassThickness = data.glassThickness;                   parameter = data.parameter;                           showPRA = data.showPRA;                           
LRA = data.LRA;                         binoDistance = data.binoDistance;                       glass_n = data.glass_n;                                 phiAzimuthal_PLArray = data.phiAzimuthal_PLArray;     showWP = data.showWP;                             
LREnd = data.LREnd;                     customLine = data.customLine;                           isLLSameAsPanel = data.isLLSameAsPanel;                 plotGRL = data.plotGRL;                               softLLTracing = data.softLLTracing;               
LRNum = data.LRNum;                     displayCoverThickness = data.displayCoverThickness;     lensArraySizeHor = data.lensArraySizeHor;               preciseGP = data.preciseGP;                           systemTiltAngle = data.systemTiltAngle;           
LRStart = data.LRStart;                 displayCover_n = data.displayCover_n;                   lensArraySizeVer = data.lensArraySizeVer;               prismLensGap = data.prismLensGap;                     tVeryBegining = data.tVeryBegining;               
LRstep = data.LRstep;                   display_CDP = data.display_CDP;                         lensPitch = data.lensPitch;                             prismMode = data.prismMode;                           thetaPolar_PLArray = data.thetaPolar_PLArray;     
MAB_E2C = data.MAB_E2C;                 display_EyeMode = data.display_EyeMode;                 lensRadius = data.lensRadius;                           prismSizeHor = data.prismSizeHor;                     wedgePBA = data.wedgePBA;                         
MDesiredArray = data.MDesiredArray;     display_LensInfo = data.display_LensInfo;               lensThicknessEI0 = data.lensThicknessEI0;               prismSizeVer = data.prismSizeVer;                     wedgePRA = data.wedgePRA;                         
MRatioArray = data.MRatioArray;         display_PrismInfo = data.display_PrismInfo;             lens_n = data.lens_n;                                   prismStructure = data.prismStructure;                 wedgePrism = data.wedgePrism;                     
OCAThickness = data.OCAThickness;       display_PupilSize = data.display_PupilSize;             manualE2CRatio = data.manualE2CRatio;                   prismSubstrate = data.prismSubstrate;                 widthStart = data.widthStart;                     
OCA_n = data.OCA_n;                     display_RDP = data.display_RDP;                         manualMDesired = data.manualMDesired;                   prism_n = data.prism_n;                               widthStep = data.widthStep;                       
PBA = data.PBA;                         display_STA = data.display_STA;                         outputManual = data.outputManual;                       pupilSize_PLArray = data.pupilSize_PLArray;           writeGRL = data.writeGRL;                         
PRA = data.PRA;                         display_VA = data.display_VA;                           overwrite = data.overwrite;                             showAUF = data.showAUF;                                                                                 
    break
    end
    while whichCode == "Design" 
AUFMode = data.AUFMode;                       PRA = data.PRA;                                         eyeMode = data.eyeMode;                                 lens_n = data.lens_n;                           tVeryBegining = data.tVeryBegining;                   
CDP_Design = data.CDP_Design;                 RDP = data.RDP;                                         focal_Design = data.focal_Design;                       panelSizeHor = data.panelSizeHor;               targetName = data.targetName;                         
EIHor = data.EIHor;                           RV_Design = data.RV_Design;                             forcePupilEdgeInverse = data.forcePupilEdgeInverse;     panelSizeVer = data.panelSizeVer;               temp1 = data.temp1;                                   
GPMode = data.GPMode;                         WD = data.WD;                                           glassThickness = data.glassThickness;                   phiAzimuthalAngle = data.phiAzimuthalAngle;     thetaPolarAngle = data.thetaPolarAngle;               
HardVATargetHigh = data.HardVATargetHigh;     WDForAutoGP = data.WDForAutoGP;                         glassThicknessPool = data.glassThicknessPool;           preciseGP = data.preciseGP;                     totalName = data.totalName;                           
HardVATargetLow = data.HardVATargetLow;       aspherical = data.aspherical;                           glassThickness_Design = data.glassThickness_Design;     prismLensGap = data.prismLensGap;               varName = data.varName;                               
HardVATargetStep = data.HardVATargetStep;     asphericalMat = data.asphericalMat;                     glass_n = data.glass_n;                                 prismMode = data.prismMode;                     varTypes = data.varTypes;                             
HardVA_Design = data.HardVA_Design;           binoDistance = data.binoDistance;                       isLLSameAsPanel = data.isLLSameAsPanel;                 prismSizeHor = data.prismSizeHor;               verticalPointNum = data.verticalPointNum;             
LRA = data.LRA;                               c = data.c;                                             lensArraySizeHor = data.lensArraySizeHor;               prismSizeVer = data.prismSizeVer;               wedgePBA = data.wedgePBA;                             
LouieAnalysis = data.LouieAnalysis;           condition = data.condition;                             lensArraySizeVer = data.lensArraySizeVer;               prismStructure = data.prismStructure;           wedgePRA = data.wedgePRA;                             
M00TargetHigh = data.M00TargetHigh;           continueWarning1 = data.continueWarning1;               lensPitch = data.lensPitch;                             prismSubstrate = data.prismSubstrate;           wedgePrism = data.wedgePrism;                         
M00TargetLow = data.M00TargetLow;             continueWarning2 = data.continueWarning2;               lensPitchPool = data.lensPitchPool;                     prism_n = data.prism_n;                         widthStart = data.widthStart;                         
M00TargetStep = data.M00TargetStep;           designEI = data.designEI;                               lensPitch_Design = data.lensPitch_Design;               pupilSize = data.pupilSize;                     widthStep = data.widthStep;                           
M_Design = data.M_Design;                     designPosition = data.designPosition;                   lensRadius = data.lensRadius;                           sampleSize = data.sampleSize;                   designCount = data.designCount;                       
OCAThickness = data.OCAThickness;             design_cal_once_1 = data.design_cal_once_1;             lensRadiusPool = data.lensRadiusPool;                   softLLTracing = data.softLLTracing;             numII = data.numII;                                   
OCA_n = data.OCA_n;                           displayCoverThickness = data.displayCoverThickness;     lensRadius_Design = data.lensRadius_Design;             systemTiltAngle = data.systemTiltAngle;         continue_flag_desgin = data.continue_flag_desgin;     
PBA = data.PBA;                               displayCover_n = data.displayCover_n;                   lensThicknessEI0 = data.lensThicknessEI0;                                                                                                                     
    break
    end
    while whichCode == "XYGrid"
AUFMode = data.AUFMode;                   WD_PLArray = data.WD_PLArray;                           forcePupilEdgeInverse = data.forcePupilEdgeInverse;             panelSizeVer = data.panelSizeVer;                     showGRL = data.showGRL;                           
AimSphere_grid = data.AimSphere_grid;     aspherical = data.aspherical;                           glassThickness = data.glassThickness;                           parameter = data.parameter;                           showLRA = data.showLRA;                           
GPMode = data.GPMode;                     asphericalMat = data.asphericalMat;                     glass_n = data.glass_n;                                         phiAzimuthal_PLArray = data.phiAzimuthal_PLArray;     showMaxMin = data.showMaxMin;                     
GRLMat = data.GRLMat;                     binoDistance = data.binoDistance;                       isLLSameAsPanel = data.isLLSameAsPanel;                         preciseGP = data.preciseGP;                           showPRA = data.showPRA;                           
GRLMode = data.GRLMode;                   customLine = data.customLine;                           lensArraySizeHor = data.lensArraySizeHor;                       prismLensGap = data.prismLensGap;                     showWP = data.showWP;                             
LRA = data.LRA;                           displayCoverThickness = data.displayCoverThickness;     lensArraySizeVer = data.lensArraySizeVer;                       prismMode = data.prismMode;                           systemTiltAngle = data.systemTiltAngle;           
M_grid = data.M_grid;                     displayCover_n = data.displayCover_n;                   lensCenterUserDefined_Hor = data.lensCenterUserDefined_Hor;     prismSizeHor = data.prismSizeHor;                     tVeryBegining = data.tVeryBegining;               
OCAThickness = data.OCAThickness;         display_CDP = data.display_CDP;                         lensCenterUserDefined_Ver = data.lensCenterUserDefined_Ver;     prismSizeVer = data.prismSizeVer;                     targetWithinPanel = data.targetWithinPanel;       
OCA_n = data.OCA_n;                       display_EyeMode = data.display_EyeMode;                 lensPitch = data.lensPitch;                                     prismStructure = data.prismStructure;                 thetaPolar_PLArray = data.thetaPolar_PLArray;     
PBA = data.PBA;                           display_LensInfo = data.display_LensInfo;               lensRadius = data.lensRadius;                                   prismSubstrate = data.prismSubstrate;                 wedgePBA = data.wedgePBA;                         
PRA = data.PRA;                           display_PrismInfo = data.display_PrismInfo;             lensThicknessEI0 = data.lensThicknessEI0;                       prism_n = data.prism_n;                               wedgePRA = data.wedgePRA;                         
RDP_PLArray = data.RDP_PLArray;           display_PupilSize = data.display_PupilSize;             lens_n = data.lens_n;                                           pupilSize_PLArray = data.pupilSize_PLArray;           wedgePrism = data.wedgePrism;                     
RP_grid = data.RP_grid;                   display_RDP = data.display_RDP;                         outputManual = data.outputManual;                               showAUF = data.showAUF;                               widthStart = data.widthStart;                     
RV_grid = data.RV_grid;                   display_STA = data.display_STA;                         overwrite = data.overwrite;                                     showAsph = data.showAsph;                             widthStep = data.widthStep;                       
TIR_grid = data.TIR_grid;                 display_VA = data.display_VA;                           panelSizeHor = data.panelSizeHor;                               showGP = data.showGP;                                 writeFig = data.writeFig;                         
WDForAutoGP = data.WDForAutoGP;           eyeMode = data.eyeMode;                                                                                                                                                                                                         
        break
    end
    
    
    %% unused/fixed variables
    % 基於 II coding
    % 待處理
    while 1
        % common
        air_n = 1;
        while whichCode == "VZA"
        break
        end
        while whichCode == "M00Curve"                   
        break
        end
        while whichCode == "FindGRL"
            GRLMode = 0;    % FindGRL 沒有 GRL Mode
            aspherical = 0; % FindGRL 必為球面 (for tracing)
        break
        end
        while whichCode == "Design"
            GRLMode = 0;
        break
        end
        while whichCode == "XYGrid"
            EIHor = 0;      % XYGrid 沒有根數概念
        break
        end
        ...
    break
    end

    %% overwrite handle (parameter from debug design)
    while ismember(whichCode,["II", "VZA", "M00Curve", "FindGRL"])
        if overwrite == 1
            lensRadius = parameter(2);
            lensPitch = parameter(3);
            glassThickness = parameter(4);
        end
    break
    end
    
    %% prism
    while 1
        if prismMode == 0 % parameter set to 0 if no prism
            GPMode=0;PRA=0;prism_n=0;
            prismSubstrate=0;prismStructure=0;
            PBA=0;WDForAutoGP = 0;prismLensGap=0;
        end
        % wedge prism % 20231030
        if wedgePrism == 0 || prismMode == 0
            wedgePRA = 0;
            wedgePBA = 0;
        end
        % wedge 法向量 (fixed)
        rotWedgePRA = rotz(wedgePRA);
        wedge_normal = [-sind(wedgePBA);0;-cosd(wedgePBA)];
        wedge_normal = rotWedgePRA * wedge_normal; % 旋轉法向量
        % wedge 厚度: 
        wedgeVer = prismSizeVer;
        wedgeMaxHeight = abs(wedgeVer*tand(wedgePBA));
        wedgeHalfHeight = wedgeMaxHeight/2;
        forPLA_incident = [0;0;1];
        if length(PBA) == 1
            temp_normalGP = [sind(PBA);0;cosd(PBA)];
        else % 避免手動 GP 出現錯誤
            temp_normalGP = [sind(PBA(round((length(PBA)+1)*0.5)));0;cosd(PBA(round((length(PBA)+1)*0.5)))];
        end
        forPLA_normalGP = rotz(PRA) * temp_normalGP;
        forPLA_normalWP = -wedge_normal;
        forPLA_mu_airtoPrism = air_n / prism_n;
        forPLA_mu_PrismtoAir = 1/forPLA_mu_airtoPrism;
        % tracing
        % part 1: air into prism (through GP)
        forPLA_insidePrism = sqrt(1-forPLA_mu_airtoPrism^2*(1-(forPLA_normalGP'*forPLA_incident)^2))*forPLA_normalGP+...
                                forPLA_mu_airtoPrism*(forPLA_incident-(forPLA_normalGP'*forPLA_incident)*forPLA_normalGP); %snell's law <air到Lens>         
        % part 2: prism into air (through WP)
        forPLA_outsidePrism = sqrt(1-forPLA_mu_PrismtoAir^2*(1-(forPLA_normalWP'*forPLA_insidePrism)^2))*forPLA_normalWP+...
                                forPLA_mu_PrismtoAir*(forPLA_insidePrism-(forPLA_normalWP'*forPLA_insidePrism)*forPLA_normalWP); %snell's law <air到Lens> 
        % PLA: 與 Z 軸夾角
        mid_PLA = acosd(dot(forPLA_outsidePrism,[0,0,1]));
        if forPLA_outsidePrism(1) < 0; mid_PLA = -mid_PLA; end

        % GP setup
        % initialize
        PBA_InputArray = nan; PLA_array_fromPBA = nan; PBA_array_forPLA = nan;
        PBA1_fit_length = nan; PBA1_fit_num = nan; PBA1_fit_point = nan; PBA1_fit_line = nan;
        whichpba = nan; PBA1_fit_x = nan; PBA1_fit_y = nan; p1 = nan; p2 = nan;
        % 20231030 update
        gp_PBA_array = nan; wp_PBA = nan; VE_originalPoint = nan; VE_EyePoint = nan;
        PLAtoPBAFunction = nan;

        if GPMode == 1 && prismMode == 1
            if length(PBA) == 1 % autoGP
                % step 1: relation between PBA and PLA (with respect ot prism_n) % 20230728
                PBA_InputArray = -90:0.01:90; % 可自行調整精度
                gp_PBA_array = PBA_InputArray; wp_PBA = wedgePBA;
                [PLA_array_fromPBA,PBA_array_forPLA] = PLAvsPBA(gp_PBA_array,air_n,prism_n,...
                                                            rotz(PRA),wp_PBA,rotWedgePRA);
                % autoGP 內插加速 20231103
                % griddedInterpolant: X data 必須整理為遞增
                [PLA_array_fromPBA_2,I] = sort(PLA_array_fromPBA);
                PBA_array_forPLA_2 = PBA_array_forPLA(I);
                PLAtoPBAFunction = griddedInterpolant(PLA_array_fromPBA_2,PBA_array_forPLA_2);

                % step 2: virtual eye position (Based on prism rotation angle) (panel middle is zero point)
                % 20231027 virtual eye in 3D
                % definition: substrate top Z = 0
                VE_originalPoint = [0;0;wedgeHalfHeight];
                VE_EyePoint = VE_originalPoint + forPLA_outsidePrism * (WDForAutoGP*cosd(mid_PLA)/forPLA_outsidePrism(3));
            elseif length(PBA) > 1 % manualGP
                PBA1_manu = PBA;
                if any(diff(PBA1_manu)>0)
                    ThrowError("General",1);
                end
                % X: 距離 Y: 底角
                PBA1_fit_length = abs(panelSizeVer*cosd(PRA))+abs(panelSizeHor*sind(PRA));
                PBA1_fit_num = length(PBA1_manu);
                PBA1_fit_point = zeros(2,PBA1_fit_num);
                PBA1_fit_line = zeros(2,PBA1_fit_num-1);
                for whichpba = 1:PBA1_fit_num % 建立N條線段 (N=底角數量-1)
                    PBA1_fit_point(:,whichpba)=[(whichpba-1)*PBA1_fit_length/(PBA1_fit_num-1);PBA1_manu(whichpba)];
                    if whichpba>=2 %建立線段
                        PBA1_fit_x = PBA1_fit_point(1,(whichpba-1):whichpba)';
                        PBA1_fit_y = PBA1_fit_point(2,(whichpba-1):whichpba)';
                        % poly1 speed up 20230109
                        % y = p1 * x + p2
                        p1 = (PBA1_fit_y(2)-PBA1_fit_y(1))/(PBA1_fit_x(2)-PBA1_fit_x(1));
                        p2 = p1*(-PBA1_fit_x(1)) + PBA1_fit_y(1);
                        PBA1_fit_line(1,whichpba-1) = p1;
                        PBA1_fit_line(2,whichpba-1) = p2;
                    end
                end
            end
        end
        if GPMode == 0 && prismMode==1
            if length(PBA) ~= 1
                ThrowError("General",2);
            end
        end
    break
    end
    
    %% Lens 1
    while 1
        if isLLSameAsPanel == 1
            panelSizeHorLL = panelSizeHor;panelSizeVerLL = panelSizeVer;
        elseif isLLSameAsPanel == 0
            panelSizeHorLL = lensArraySizeHor;panelSizeVerLL = lensArraySizeVer;
        end
        lensRadiusOriginal = lensRadius;                        % store orginal value when in GRL mode
        lensHeightEI0 = lensRadiusOriginal-sqrt(lensRadiusOriginal^2-(lensPitch*0.5)^2);
        lensSubstrate = lensThicknessEI0 - lensHeightEI0;       % Keep LensSubstrate 20230321
        ll_left = -0.5 * panelSizeHorLL;
        ll_right = 0.5 * panelSizeHorLL;
        ll_up = -0.5 * panelSizeVerLL;
        ll_down = 0.5 * panelSizeVerLL;
        ll_array = [ll_left,ll_right,ll_up,ll_down];
        % 處理 LRA ( -90 < LRA < 90 )
        if LRA <= -90 || LRA >= 90
            ThrowError("General",3);
        end
    break
    end
    
    %% Lens 2 (非球面相關)
    while ismember(whichCode,["II", "VZA", "M00Curve", "Design","XYGrid"])
        % aspherical 20230717
        if aspherical == 1
            if whichCode ~= "Design"
                cprintf('err',"< aspherical mode >\n")
                disp("[info]: GRL Mode set to 0.")
                disp("[info]: CDP is no meaning.")
                disp("[info]: Lens Radius is no meaning.")
                disp("[info]: Fixed lens Height.")
                disp("[info]: Known lens endpoint.")
                disp("[info]: Lens Height, Substrate, lengthZRay3Default update.")
                disp("[info]: No AUF")
                disp("[info]: critical section: lens norm")
            end
            GRLMode = 0;
            AUFMode = 0;
            lensHeightEI0 = asph_max_height;
            lensSubstrate = lensThicknessEI0 - asph_max_height;
            pause(3)
            % load data
            % content: end point A normal vector, end point B normal vector, max lens Height (3 element)
            load(asphericalMat);
            % should contain following variables:
            % asph_max_height; asph_leftEnd_normal; asph_rightEnd_normal;
            if ~exist('asph_max_height','var') || ~exist('asph_leftEnd_normal','var') || ~exist('asph_rightEnd_normal','var')
                ThrowError("General",4);
            end
        elseif aspherical == 0
            asph_max_height = nan; asph_leftEnd_normal = nan; asph_rightEnd_normal = nan;
        end
    break
    end

    %% Lens 3
    while 1
        if lensSubstrate < 0 
            ThrowError("General",5);
        end
    break
    end

    %% segment
    while ismember(whichCode,["II", "VZA", "M00Curve"])
        segVerSize = verSizeForSeg/segNum;    % for isSegment = 2 使用 (固定segVerSize)
        if ~(segmentMode == 0 || segmentMode == 2)
            ThrowError("General",6);
        end
    break
    end
    
    %% q_LTRPMode setup
    while ismember(whichCode,["II","VZA"])
        if q_LTRPMode == 1
            panelPixelNumHor = panelPixelNumHor * 4; %#ok<*NODEF> 
            panelPixelNumVer = panelPixelNumVer * 4;
            pixelSize = panelSizeVer/panelPixelNumVer;
            segmentMode = 2;
            disp("QLTRP: ")
            disp(strcat("panel resolution (HxV): tuned to x4 (",num2str(panelPixelNumHor)," x ",num2str(panelPixelNumVer)))
            disp(strcat("segment mode tuned to segN. (segmentMode = 2)"))
        end
    break
    end
    
    %% II debug Mode
    while ismember(whichCode,["II"])
        if debugMode == 1
            disp("[Debug Mode]: RRRMode set to 0")
            display_RDP = 0;
            display_RRRmode = 0;
            RRRMode = 0;
        end
    break
    end
    
    %% CDP Check 
    while 1
        % 計算中間 Lens CDP
        effectiveG = (displayCoverThickness/displayCover_n+OCAThickness*2/OCA_n+glassThickness/glass_n+(lensHeightEI0+lensSubstrate)/lens_n);
        focal = -lensRadiusOriginal/(1-lens_n);
        if focal < 0
            ThrowError("General",7);
        end
        CDP=1/(1/focal-1/effectiveG);
        if whichCode ~= "Design"
            disp(strcat("CDP is ",num2str(CDP)," mm (from MLA Top) (近軸近似) "));
        end
        if whichCode == "Design"
            HardVA = 2*atand(lensPitch/2/effectiveG);
        end
    
        % AUF setup
        if AUFMode == 1
            lensAperturePool = [-lensPitch:widthStep:-widthStart,widthStart:widthStep:lensPitch];
            if whichCode ~= "Design"
                cprintf('key',"AUF Mode: On \n");
            end
        elseif AUFMode == 0
            lensAperturePool = lensPitch;
            if whichCode ~= "Design"
                cprintf('key',"AUF Mode: Off \n");
            end
        end
    break
    end
    
    %% 決定 range 長度 (幾根Lens)
    while 1 
        rangeYPitch = lensPitch / cosd(LRA); % range_y Pitch
        sizeforRangeY = panelSizeHorLL + panelSizeVerLL * abs(tand(LRA));
        rangeY = - floor(0.5 * sizeforRangeY / rangeYPitch) : floor(0.5 * sizeforRangeY / rangeYPitch);
        numLensYOriginal = length(rangeY); % For GRL
        if EIHor ~= 999 % EI追跡數量
            rangeY = EIHor;
        end
    break
    end
        
    %% 讀取 原圖 
    while ismember(whichCode,["II"])
        % II-BLP: 第一次進入此 Function 不需要抓圖
        if length(varargin) == 1 && varargin{1} == 0
            imagePathname = nan;
            imageFilename = nan;
            totalNumFile = 1;
            break
        end
        if debugMode == 0
            imagePathname = [];
            [imageFilename, imagePathname] = uigetfile({strcat(imagePathname,'*.png;',imagePathname,'*.bmp')}, '原圖','MultiSelect', 'on');
            if ~ischar(imagePathname) 
                ThrowError("II",5);end
            if ischar(imageFilename)
                totalNumFile = 1;
            else
                totalNumFile = length(imageFilename);
            end
        elseif debugMode == 1
            imagePathname = nan;
            imageFilename = nan;
            totalNumFile = 1;
        end
    break
    end
    
    %% 讀取 Gradient Radius Data %
    while 1
        LREL = nan;
        LensHeightEachLenticular = nan;
        LensRadiusEachLenticular = nan;
        if ismember(whichCode,["II", "VZA", "M00Curve","XYGrid"])
            if GRLMode == 1
                if isequal(GRLMat,"") || isempty(GRLMat)
                    imagePathname = [];
                    [GRLFilename, GRLPathname] = uigetfile({strcat(imagePathname,'*.mat')}, 'Gradient Lens Radius .mat 檔');
                    if ~ischar(GRLPathname) 
                    ThrowError("General",8);end
                    load(fullfile(GRLPathname, GRLFilename));
                else
                    load(GRLMat)
                end
                LREL = LensRadiusEachLenticular;
            end
        end
    break
    end

    %% VZA only
    while ismember(whichCode,["VZA"])
        % VZA check
        % VAstep check
        VAchecktemp1 = angleSweepHVA(1):angleStep:angleSweepHVA(2);
        VAchecktemp2 = angleSweepVVA(1):angleStep:angleSweepVVA(2);
        if VAchecktemp1(end) ~= angleSweepHVA(2) ||...
                VAchecktemp2(end) ~= angleSweepVVA(2)
            ThrowError("VZA",1);
        end
        % VA Mesh 20230811
        [HVAMesh,VVAMesh] = meshgrid(VAchecktemp1,VAchecktemp2); %#ok<ASGLU> 

        % excel:
        if isequal(excelFileName,"")
            if dateStringOn == 1
                filename = strcat("LimitedVA_",datestr(now,'mm-dd-yyyy HH-MM'),".xlsx");
            elseif dateStringOn == 0
                filename = strcat("LimitedVA.xlsx");
            end
        else
            if dateStringOn == 1
                filename = strcat(excelFileName,"_",datestr(now,'mm-dd-yyyy HH-MM'),".xlsx");
            elseif dateStringOn == 0
                filename = strcat(excelFileName,".xlsx");
            end
        end
        if isequal(excelSheetName,"")
            excelSheetName = 1;
        end
        fullfilename = fullfile(cd,filename);
        numtest = strlength(fullfilename);
        if numtest > 218
            ThrowError("VZA",2)
        end

        limitedVA_PL = cell(2,size(WD_PLArray,2)*size(pupilSize_PLArray,2)); % 20230215
        % info
        disp('Viewing Zone Analysis......');
        cprintf('Mode: ');
        if autoVZAnalysis == 1
            disp('Automatic Analysis.'); 
        elseif autoVZAnalysis == 0
            VATerm = 0;
            disp('Manual Analysis.'); 
        end
        
    break
    end

    %% M00Curve Only
    while whichCode == "M00Curve"
        % initialization
        VVACenteOriginal = nan;
        VVACenterArray = nan;
        checkTemp1 = nan;
        checkTemp2 = nan;

        % M00Grid String update
        if ~isequal(GridCustomString,"") && ~isempty(GridCustomString) % 支援 "" '' []
            GridCustomString = strcat("_",GridCustomString);
        end

        % M00FindMaxMode [2,1] Mode
        if autoM00Analysis == 1 && isequal(VATerm,[2 1])
            VVACenteOriginal = angleCenterVVA; % for PL Loop
        end
        
        % M00GridMode
        if autoM00Analysis == 1 && M00GridMode == 1
            VATerm = ones(1,length(angleSweepVVA(1):angleStep:angleSweepVVA(end)));
            VVACenterArray = angleSweepVVA(1):angleStep:angleSweepVVA(end);
            angleCenterVVA = VVACenterArray(1);
            disp("curve mode closing...")
            pause(0.5)
            plotM00andTIRCurveAuto = 0;
        end
        
        % Sweep Angle Check
        if autoM00Analysis == 1
            if any(VATerm == 1)
                checkTemp2 = angleSweepHVA(1):angleStep:angleSweepHVA(end) == angleCenterHVA;
                if all(checkTemp2==0)
                    ThrowError("M00Curve",1);
                end
            end
            if any(VATerm == 2)
                checkTemp1 = angleSweepVVA(1):angleStep:angleSweepVVA(end) == angleCenterVVA;
                if all(checkTemp1==0)
                    ThrowError("M00Curve",2);
                end
            end
        end

        % M00 Analysis Setup
        disp('M00 Analysis......');
        cprintf('key','Mode: ');
        if autoM00Analysis == 1
            cprintf('err','Automatic Analysis.\n');
            % 20230213 PL 相性 處理
            if isequal(VATerm,[2 1]) % 找最大 M00 模式
                angleCenterVVA = VVACenteOriginal;
            end
            if M00GridMode == 1 % M00 網格模式
                angleCenterVVA = VVACenterArray(1);
            end
            VVASet = angleSweepVVA(1):angleStep:angleSweepVVA(end);
            HVASet = angleSweepHVA(1):angleStep:angleSweepHVA(end);
            M00IndexHVACell = nan(length(VVASet),length(HVASet));
            M00IndexVVACell = nan(length(VVASet),length(HVASet));
            M00ValueCell = cell(length(VVASet),length(HVASet));
            M00IndexVVACell(:,HVASet==angleCenterHVA) = VVASet';
            M00IndexHVACell(VVASet==angleCenterVVA,:) = HVASet;
        elseif autoM00Analysis == 0
            VVASet = 0;
            HVASet = 0;
            M00IndexHVACell = phiAzimuthalAngle;
            M00IndexVVACell = thetaPolarAngle;
            M00ValueCell = cell(length(VVASet),length(HVASet));
            VATerm = 0;
            cprintf('err','Manual Analysis.\n'); 
        end
        % Structure 
        % max
        M00Max.LE = nan(length(VVASet),length(HVASet));
        M00Max.RE = nan(length(VVASet),length(HVASet));
        M00Max.ME = nan(length(VVASet),length(HVASet));
        M00Max.indexHVA = M00IndexHVACell;
        M00Max.indexVVA = M00IndexVVACell;
        % center
        M00Center.LE = nan(length(VVASet),length(HVASet));
        M00Center.RE = nan(length(VVASet),length(HVASet));
        M00Center.ME = nan(length(VVASet),length(HVASet));
        M00Center.indexHVA = M00IndexHVACell;
        M00Center.indexVVA = M00IndexVVACell;
        % avg.
        M00AVG.LE = nan(length(VVASet),length(HVASet));
        M00AVG.RE = nan(length(VVASet),length(HVASet));
        M00AVG.ME = nan(length(VVASet),length(HVASet));
        M00AVG.indexHVA = M00IndexHVACell;
        M00AVG.indexVVA = M00IndexVVACell;
        % all (raw data)
        M00Matrix.LE = cell(length(VVASet),length(HVASet));
        M00Matrix.RE = cell(length(VVASet),length(HVASet));
        M00Matrix.ME = cell(length(VVASet),length(HVASet));
        % TIR 20230711
        TIR.LE = nan(length(VVASet),length(HVASet));
        TIR.RE = nan(length(VVASet),length(HVASet));
        TIR.ME = nan(length(VVASet),length(HVASet));
        % Aim Sphere 20230720
        AimSphere.LE = nan(length(VVASet),length(HVASet));
        AimSphere.RE = nan(length(VVASet),length(HVASet));
        AimSphere.ME = nan(length(VVASet),length(HVASet));
        % RV 20230802
        RV.LE = nan(length(VVASet),length(HVASet));
        RV.RE = nan(length(VVASet),length(HVASet));
        RV.ME = nan(length(VVASet),length(HVASet));
        break
    end

    %% FindGRL Only
    while whichCode == "FindGRL"
        if manualE2CRatio==1 && manualMDesired==1
            ThrowError("FindGRL",1)
        end

        % general 
        LensRadiusCenter = lensRadius;
        LensRadiusFinal = lensRadius;
        MCenter = 0;
        MEachLens = 0;
        LL = length(rangeY);
        if mod(LL,2) == 0
            ThrowError("FindGRL",3)
        end
        
        % Ratio Creation
        RatioMTemp = nan;
        if manualE2CRatio == 1 && manualMDesired == 0 % 手動 E2C Ratio Mode
            if isempty(MRatioArray)
                pathname = [];
                [DataFilename, DataPathname] = uigetfile({strcat(pathname,'*.mat')}, '.mat 檔');
                if ~ischar(DataPathname) 
                ThrowError("FindGRL",4);end
                S = load(fullfile(DataPathname, DataFilename));
                if length(fieldnames(S)) ~= 1
                    ThrowError("FindGRL",5)
                else
                    temp0104 = getfield(S,string(fieldnames(S))); %#ok<GFLD> 
                end
            else
                temp0104 = MRatioArray;
            end
            if length(temp0104) ~= LL
                ThrowError("FindGRL",6)
            end
            RatioM = temp0104;
        elseif manualE2CRatio == 0 && manualMDesired == 1 % 手動期望 M Mode
            if isempty(MDesiredArray)
                pathname = [];
                [DataFilename, DataPathname] = uigetfile({strcat(pathname,'*.mat')}, '.mat 檔');
                if ~ischar(DataPathname) 
                ThrowError("FindGRL",7);end
                S = load(fullfile(DataPathname, DataFilename));
                if length(fieldnames(S)) ~= 1
                    ThrowError("FindGRL",5)
                else
                    MDesiredArray = getfield(S,string(fieldnames(S))); %#ok<GFLD> 
                end
            end
            if length(MDesiredArray) ~= LL
                ThrowError("FindGRL",8)
            end
        elseif manualE2CRatio == 0 && manualMDesired == 0 % 自動 MABE2C Mode
            RatioMTemp = linspace(1,MAB_E2C,(LL+1)*0.5);
            RatioM = [fliplr(RatioMTemp),RatioMTemp(2:end)];
        else
            ThrowError("FindGRL",2)
        end

        % Radius Pool Creation %
        % check LR
        if all([isempty(LRstep),isempty(LRNum)]) || all([~isempty(LRstep),~isempty(LRNum)])
            ThrowError("FindGRL",9)
        elseif isempty(LRNum)
            radiusPool = LRStart:LRstep:LREnd;
        elseif isempty(LRstep)
            radiusPool = linspace(LRStart,LREnd,LRNum);
        end 

        % other initialization
        MEachLenticular = zeros(2,length(rangeY));
        MEachLenticular(1,:) = rangeY;
        M00Pool = nan(length(radiusPool),length(rangeY)); 
        radiusNum = length(radiusPool);
        M00Output = nan(1,length(rangeY));
        LensRadiusEachLenticular = nan(1,length(rangeY)); LensRadiusEachLenticular(:) = lensRadius;
        break
    end

    %% Design Only (continue check/ record)
    while whichCode == "Design"

        %% stop/continue check
        if lensRadiusOriginal < lensPitch/2 % 透鏡不合比例時: inf
            CDP_Design(designCount) = inf;
            focal_Design(designCount) = inf;
            M_Design(designCount) = inf;
            HardVA_Design(designCount) = inf;
            RV_Design(designCount) = inf;
            if continueWarning1 == 0
                cprintf([1,0.5,0],"[warning] lensRadius < lensPitch/2, all result set to inf. (one-time warning)\n")
                continueWarning1 = continueWarning1 + 1;
            end
            continue_flag_desgin = 1;
        end
        if focal < 0 % 發散時: -inf
            CDP_Design(designCount) = -inf;
            focal_Design(designCount) = -inf;
            M_Design(designCount) = -inf;
            HardVA_Design(designCount) = -inf;
            RV_Design(designCount) = -inf;
            if continueWarning2 == 0
                cprintf([1,0.5,0],"[warning] focal < 0 (divergence), all result set to -inf. (one-time warning)\n")
                continueWarning2 = continueWarning2 + 1;
            end
            continue_flag_desgin = 1;
        end
        
        % 紀錄
        if continue_flag_desgin == 0
            CDP_Design(designCount) = CDP;
            focal_Design(designCount) = focal;
            HardVA_Design(designCount) = HardVA;
        end
        break
    end

    %% XYGrid Only
    while whichCode == "XYGrid"
        %% 作圖參數
        figXYGrid_M = nan;  figXYGrid_RP = nan;   figXYGrid_RV = nan;     figXYGrid_TIR = nan;      figXYGrid_AS = nan;
        axXYGrid_M = nan;  axXYGrid_RP = nan;   axXYGrid_RV = nan;     axXYGrid_TIR = nan;      axXYGrid_AS = nan;

        if M_grid == 1; figXYGrid_M = figure; axXYGrid_M = axes; end
        if RP_grid == 1; figXYGrid_RP = figure; axXYGrid_RP = axes; end
        if RV_grid == 1; figXYGrid_RV = figure; axXYGrid_RV = axes; end
        if TIR_grid == 1; figXYGrid_TIR = figure; axXYGrid_TIR = axes; end
        if AimSphere_grid == 1; figXYGrid_AS = figure; axXYGrid_AS = axes; end

        %% XYGrid 設定
        LCLengthVer = length(lensCenterUserDefined_Ver);
        LCLengthHor = length(lensCenterUserDefined_Hor);
        % GRL Mode Handle: 旋轉坐標系判定要帶的Radius
        % note: 與實際情形會有誤差 僅供參考大方向趨勢
        rotationMatrix = [cosd(LRA),sind(LRA);-sind(LRA),cosd(LRA)]; % 20221228
        testMatrix = zeros(length(lensCenterUserDefined_Ver),length(lensCenterUserDefined_Hor));
        M_XYGrid = nan(LCLengthVer,LCLengthHor);
        RP_XYGrid = M_XYGrid;RV_XYGrid = M_XYGrid;
        TIR_XYGrid = M_XYGrid;AS_XYGrid = M_XYGrid;
        break
    end

    %%
    data = ws2struct; data = rmfield(data,"data");
%     structvars(5,data) % structure 賦值: 僅作複製貼上使用
    %% 
    if whichCode ~= "Design"
    disp("< pre_before_any_loop.m 執行完成 >")
    disp('-------------------------------------------');
    end
end