function data = pre_design(data)

%%
AUFMode = data.AUFMode;                       PRA = data.PRA;                                         eyeMode = data.eyeMode;                                 lens_n = data.lens_n;                           pupilSize = data.pupilSize;                 
GPMode = data.GPMode;                         RDP = data.RDP;                                         forcePupilEdgeInverse = data.forcePupilEdgeInverse;     panelSizeHor = data.panelSizeHor;               softLLTracing = data.softLLTracing;         
HardVATargetHigh = data.HardVATargetHigh;     WD = data.WD;                                           glassThickness = data.glassThickness;                   panelSizeVer = data.panelSizeVer;               systemTiltAngle = data.systemTiltAngle;     
HardVATargetLow = data.HardVATargetLow;       WDForAutoGP = data.WDForAutoGP;                         glassThicknessPool = data.glassThicknessPool;           phiAzimuthalAngle = data.phiAzimuthalAngle;     tVeryBegining = data.tVeryBegining;         
HardVATargetStep = data.HardVATargetStep;     aspherical = data.aspherical;                           glass_n = data.glass_n;                                 preciseGP = data.preciseGP;                     targetName = data.targetName;               
LRA = data.LRA;                               asphericalMat = data.asphericalMat;                     isLLSameAsPanel = data.isLLSameAsPanel;                 prismLensGap = data.prismLensGap;               thetaPolarAngle = data.thetaPolarAngle;     
LouieAnalysis = data.LouieAnalysis;           binoDistance = data.binoDistance;                       lensArraySizeHor = data.lensArraySizeHor;               prismMode = data.prismMode;                     varName = data.varName;                     
M00TargetHigh = data.M00TargetHigh;           c = data.c;                                             lensArraySizeVer = data.lensArraySizeVer;               prismSizeHor = data.prismSizeHor;               wedgePBA = data.wedgePBA;                   
M00TargetLow = data.M00TargetLow;             condition = data.condition;                             lensPitch = data.lensPitch;                             prismSizeVer = data.prismSizeVer;               wedgePRA = data.wedgePRA;                   
M00TargetStep = data.M00TargetStep;           designEI = data.designEI;                               lensPitchPool = data.lensPitchPool;                     prismStructure = data.prismStructure;           wedgePrism = data.wedgePrism;               
OCAThickness = data.OCAThickness;             designPosition = data.designPosition;                   lensRadius = data.lensRadius;                           prismSubstrate = data.prismSubstrate;           widthStart = data.widthStart;               
OCA_n = data.OCA_n;                           displayCoverThickness = data.displayCoverThickness;     lensRadiusPool = data.lensRadiusPool;                   prism_n = data.prism_n;                         widthStep = data.widthStep;                 
PBA = data.PBA;                               displayCover_n = data.displayCover_n;                   lensThicknessEI0 = data.lensThicknessEI0;                                                                                                           

%% Design Only

% table variable
totalName = [varName,targetName];
varTypes = cell(1,length(totalName));
[varTypes{1:length(totalName)}] = deal('double');

% other setup
cprintf('key',"[info]: Design Mode On... \n");
if length(designEI)>1;ThrowError("Design",1);end
if designEI == 999;ThrowError("Design",2);end
cprintf(strcat("[Design Mode]: target EI:",num2str(designEI),".\n"));
if ~ismember(designPosition,[-1,0,1]);ThrowError("Design",3);end
switch designPosition;case -1;temp1 = "top point.";case 0;temp1 = "middle point.";case 1;temp1 = "bottom point.";end
cprintf(strcat("[Design Mode]: target Position:",temp1,".\n"));
EIHor = designEI;
switch designPosition
    case -1;verticalPointNum = -999;
    case 0;verticalPointNum = 1;
    case 1;verticalPointNum = 999;
end
cprintf(strcat("[Design Mode] Pupil Size:",num2str(pupilSize),"\n"))
cprintf('key','[Design Mode] Creating Pool... \n');
% parameter initialization
sampleSize = length(lensRadiusPool)*length(lensPitchPool)*length(glassThicknessPool);

% 'Design' for design loop variable.
% input variable
lensPitch_Design = nan(sampleSize,1);lensRadius_Design = nan(sampleSize,1);glassThickness_Design = nan(sampleSize,1);
% output variable
CDP_Design = nan(sampleSize,1);focal_Design = nan(sampleSize,1);M_Design = nan(sampleSize,1);
RV_Design = nan(sampleSize,1);HardVA_Design = nan(sampleSize,1);
% other 
continueWarning1 = 0;continueWarning2 = 0;
design_cal_once_1 = 0;

%% output
data = ws2struct; data = rmfield(data,"data");
end