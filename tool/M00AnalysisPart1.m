function data = M00AnalysisPart1(data)

    %% structure assignment
    while 1
AUFMode = data.AUFMode;                                       RV = data.RV;                                           farrestDistanceVer = data.farrestDistanceVer;           outputL = data.outputL;                                           showAsph = data.showAsph;                                     
AimSphere = data.AimSphere;                                   TIR = data.TIR;                                         focal = data.focal;                                     outputManual = data.outputManual;                                 showAvg = data.showAvg;                                       
CDP = data.CDP;                                               TIRHappen = data.TIRHappen;                             forPLA_incident = data.forPLA_incident;                 outputO = data.outputO;                                           showCenter = data.showCenter;                                 
EIHor = data.EIHor;                                           UV_normal1 = data.UV_normal1;                           forPLA_insidePrism = data.forPLA_insidePrism;           overwrite = data.overwrite;                                       showGP = data.showGP;                                         
GPMode = data.GPMode;                                         VAPool = data.VAPool;                                   forPLA_mu_PrismtoAir = data.forPLA_mu_PrismtoAir;       p1 = data.p1;                                                     showGRL = data.showGRL;                                       
GRLMat = data.GRLMat;                                         VATerm = data.VATerm;                                   forPLA_mu_airtoPrism = data.forPLA_mu_airtoPrism;       p2 = data.p2;                                                     showLRA = data.showLRA;                                       
GRLMode = data.GRLMode;                                       VE_EyePoint = data.VE_EyePoint;                         forPLA_normalGP = data.forPLA_normalGP;                 panelSizeHor = data.panelSizeHor;                                 showLeftEye = data.showLeftEye;                               
GRLNumShift = data.GRLNumShift;                               VE_originalPoint = data.VE_originalPoint;               forPLA_normalWP = data.forPLA_normalWP;                 panelSizeHorLL = data.panelSizeHorLL;                             showMax = data.showMax;                                       
GridCustomString = data.GridCustomString;                     VVACenteOriginal = data.VVACenteOriginal;               forPLA_outsidePrism = data.forPLA_outsidePrism;         panelSizeVer = data.panelSizeVer;                                 showMiddleEye = data.showMiddleEye;                           
HVASet = data.HVASet;                                         VVACenterArray = data.VVACenterArray;                   forcePupilEdgeInverse = data.forcePupilEdgeInverse;     panelSizeVerLL = data.panelSizeVerLL;                             showPRA = data.showPRA;                                       
I = data.I;                                                   VVASet = data.VVASet;                                   glassThickness = data.glassThickness;                   parameter = data.parameter;                                       showRV = data.showRV;                                         
LRA = data.LRA;                                               VZAArray = data.VZAArray;                               glass_n = data.glass_n;                                 phiAzimuthalAngle = data.phiAzimuthalAngle;                       showRightEye = data.showRightEye;                             
LREL = data.LREL;                                             WD = data.WD;                                           gp_PBA_array = data.gp_PBA_array;                       phiAzimuthalAngle_original = data.phiAzimuthalAngle_original;     showWP = data.showWP;                                         
LensHeightEachLenticular = data.LensHeightEachLenticular;     WDForAutoGP = data.WDForAutoGP;                         isLLSameAsPanel = data.isLLSameAsPanel;                 phiPool = data.phiPool;                                           sizeforRangeY = data.sizeforRangeY;                           
LensRadiusEachLenticular = data.LensRadiusEachLenticular;     WD_PLArray = data.WD_PLArray;                           lengthZRay2Default = data.lengthZRay2Default;           plotAVG = data.plotAVG;                                           softLLTracing = data.softLLTracing;                           
M00AVG = data.M00AVG;                                         WDz = data.WDz;                                         lengthZRay3Default = data.lengthZRay3Default;           plotAimSphere = data.plotAimSphere;                               systemTiltAngle = data.systemTiltAngle;                       
M00Center = data.M00Center;                                   air_n = data.air_n;                                     lensAperturePool = data.lensAperturePool;               plotCenter = data.plotCenter;                                     tVeryBegining = data.tVeryBegining;                           
M00GridMode = data.M00GridMode;                               angleCenterHVA = data.angleCenterHVA;                   lensArraySizeHor = data.lensArraySizeHor;               plotM00andTIRCurveAuto = data.plotM00andTIRCurveAuto;             temp_normalGP = data.temp_normalGP;                           
M00IndexHVACell = data.M00IndexHVACell;                       angleCenterVVA = data.angleCenterVVA;                   lensArraySizeVer = data.lensArraySizeVer;               plotMax = data.plotMax;                                           termNum = data.termNum;                                       
M00IndexVVACell = data.M00IndexVVACell;                       angleStep = data.angleStep;                             lensCenter_x_fitting = data.lensCenter_x_fitting;       plotRV = data.plotRV;                                             thetaPolarAngle = data.thetaPolarAngle;                       
M00MatStr = data.M00MatStr;                                   angleSweepHVA = data.angleSweepHVA;                     lensHeightDefault = data.lensHeightDefault;             plotTIR = data.plotTIR;                                           thetaPolarAngle_original = data.thetaPolarAngle_original;     
M00Matrix = data.M00Matrix;                                   angleSweepVVA = data.angleSweepVVA;                     lensHeightEI0 = data.lensHeightEI0;                     plotVZALine = data.plotVZALine;                                   thetaPool = data.thetaPool;                                   
M00Max = data.M00Max;                                         asph_leftEnd_normal = data.asph_leftEnd_normal;         lensPitch = data.lensPitch;                             preciseGP = data.preciseGP;                                       verSizeForSeg = data.verSizeForSeg;                           
M00ValueCell = data.M00ValueCell;                             asph_max_height = data.asph_max_height;                 lensRadius = data.lensRadius;                           prismLensGap = data.prismLensGap;                                 viewAngleHor = data.viewAngleHor;                             
OCAThickness = data.OCAThickness;                             asph_rightEnd_normal = data.asph_rightEnd_normal;       lensRadiusDefault = data.lensRadiusDefault;             prismMode = data.prismMode;                                       viewAngleVer = data.viewAngleVer;                             
OCA_n = data.OCA_n;                                           aspherical = data.aspherical;                           lensRadiusOriginal = data.lensRadiusOriginal;           prismSizeHor = data.prismSizeHor;                                 viewPointHor = data.viewPointHor;                             
PBA = data.PBA;                                               asphericalMat = data.asphericalMat;                     lensSubstrate = data.lensSubstrate;                     prismSizeVer = data.prismSizeVer;                                 viewPointVer = data.viewPointVer;                             
PBA1_fit_length = data.PBA1_fit_length;                       autoM00Analysis = data.autoM00Analysis;                 lensThicknessEI0 = data.lensThicknessEI0;               prismStructure = data.prismStructure;                             wedgeHalfHeight = data.wedgeHalfHeight;                       
PBA1_fit_line = data.PBA1_fit_line;                           autoTermString = data.autoTermString;                   lens_n = data.lens_n;                                   prismSubstrate = data.prismSubstrate;                             wedgeMaxHeight = data.wedgeMaxHeight;                         
PBA1_fit_num = data.PBA1_fit_num;                             binoDistance = data.binoDistance;                       ll_array = data.ll_array;                               prism_n = data.prism_n;                                           wedgePBA = data.wedgePBA;                                     
PBA1_fit_point = data.PBA1_fit_point;                         checkTemp1 = data.checkTemp1;                           ll_down = data.ll_down;                                 pupilSize = data.pupilSize;                                       wedgePRA = data.wedgePRA;                                     
PBA1_fit_x = data.PBA1_fit_x;                                 checkTemp2 = data.checkTemp2;                           ll_left = data.ll_left;                                 pupilSize_PLArray = data.pupilSize_PLArray;                       wedgePrism = data.wedgePrism;                                 
PBA1_fit_y = data.PBA1_fit_y;                                 curveStr = data.curveStr;                               ll_right = data.ll_right;                               rangeY = data.rangeY;                                             wedgeVer = data.wedgeVer;                                     
PBA_InputArray = data.PBA_InputArray;                         customLine = data.customLine;                           ll_up = data.ll_up;                                     rangeYPitch = data.rangeYPitch;                                   wedge_normal = data.wedge_normal;                             
PBA_array_forPLA = data.PBA_array_forPLA;                     displayCoverThickness = data.displayCoverThickness;     mid_PLA = data.mid_PLA;                                 rotLRA = data.rotLRA;                                             whichCode = data.whichCode;                                   
PBA_array_forPLA_2 = data.PBA_array_forPLA_2;                 displayCover_n = data.displayCover_n;                   mu1 = data.mu1;                                         rotPRA = data.rotPRA;                                             whichVAElement = data.whichVAElement;                         
PLA_array_fromPBA = data.PLA_array_fromPBA;                   display_CDP = data.display_CDP;                         mu2 = data.mu2;                                         rotPhi = data.rotPhi;                                             whichVATerm = data.whichVATerm;                               
PLA_array_fromPBA_2 = data.PLA_array_fromPBA_2;               display_EyeMode = data.display_EyeMode;                 mu_GlasstoOCA = data.mu_GlasstoOCA;                     rotWedgePRA = data.rotWedgePRA;                                   whichpba = data.whichpba;                                     
PLAtoPBAFunction = data.PLAtoPBAFunction;                     display_LensInfo = data.display_LensInfo;               mu_LenstoOCA = data.mu_LenstoOCA;                       saveCurve = data.saveCurve;                                       widthStart = data.widthStart;                                 
PRA = data.PRA;                                               display_PrismInfo = data.display_PrismInfo;             mu_OCAtoDisplayCover = data.mu_OCAtoDisplayCover;       saveM00Mat = data.saveM00Mat;                                     widthStep = data.widthStep;                                   
RDP = data.RDP;                                               display_PupilSize = data.display_PupilSize;             mu_OCAtoGlass = data.mu_OCAtoGlass;                     segM00 = data.segM00;                                             wp_PBA = data.wp_PBA;                                         
RPpointSet_LE_wld = data.RPpointSet_LE_wld;                   display_STA = data.display_STA;                         mu_airtoLens = data.mu_airtoLens;                       segNum = data.segNum;                                             writeGrid = data.writeGrid;                                   
RPpointSet_ME_wld = data.RPpointSet_ME_wld;                   display_VA = data.display_VA;                           numII = data.numII;                                     segVerSize = data.segVerSize;                                     xNumMax = data.xNumMax;                                       
RPpointSet_RE_wld = data.RPpointSet_RE_wld;                   effectiveG = data.effectiveG;                           numLensYOriginal = data.numLensYOriginal;               segmentMode = data.segmentMode;                                   M00MatrixPadded = data.M00MatrixPadded;                       
RRpointSet_LE_wld = data.RRpointSet_LE_wld;                   exludeRVJoint = data.exludeRVJoint;                     outputA = data.outputA;                                 showAUF = data.showAUF;                                           ASMatrixPadded = data.ASMatrixPadded;                         
RRpointSet_ME_wld = data.RRpointSet_ME_wld;                   eyeMode = data.eyeMode;                                 outputD = data.outputD;                                 showAimSphere = data.showAimSphere;                               RVMatrixPadded = data.RVMatrixPadded;                         
RRpointSet_RE_wld = data.RRpointSet_RE_wld;                   farrestDistanceHor = data.farrestDistanceHor;           outputIIName = data.outputIIName;                                                                                                                                                       
    break
    end

    %% loop
    for whichEye = eyeMode 
        M00MatrixPadded_eye = M00MatrixPadded(:,:,whichEye+2);
        ASMatrixPadded_eye = ASMatrixPadded(:,:,whichEye+2);
        RVMatrixPadded_eye = RVMatrixPadded(:,:,whichEye+2);
        %% find max RVRatio over all Lens
        if any(M00MatrixPadded_eye==-1,'all')
            M00MatrixPadded_eye = nan;
            M00MaxTemp = nan;      
            M00CenterTemp = nan;
            M00AVGTemp = nan;
            TIRorNot = 1;
            ASMatrixPadded_eye = nan;
            AS_Angle_Temp = nan;
            RVMatrixPadded_eye = nan;
            RV_Temp = -1;
        else
            M00MaxTemp = max(M00MatrixPadded_eye(:));
            M00CenterTemp = M00MatrixPadded_eye((round(length(rangeY)+1)*0.5),(segNum+1+1)*0.5);
            validNum = sum(~isnan(M00MatrixPadded_eye),'all');
            M00AVGTemp = sum(M00MatrixPadded_eye(~isnan(M00MatrixPadded_eye)),'all')/validNum;
            TIRorNot = 0;
            AS_Angle_Temp = max(ASMatrixPadded_eye(:));
            % RV_Temp
            if any(RVMatrixPadded_eye(:)==0)
                RV_Temp = 0;
            else 
                RV_Temp = 1;
            end
        end

        % record max/min/avg/raw M00, TIR
        switch whichVATerm
            case 1 % HVA
                targetIndex = M00IndexHVACell == phiAzimuthalAngle_original;
            case 2 % VVA
                targetIndex = M00IndexVVACell == thetaPolarAngle_original;
            otherwise % 手動模式
                targetIndex = 1;
        end
        switch whichEye
            case -1
                M00Max.LE(targetIndex) = M00MaxTemp;
                M00Center.LE(targetIndex) = M00CenterTemp; 
                M00AVG.LE(targetIndex) = M00AVGTemp;
                M00Matrix.LE{targetIndex} = M00MatrixPadded_eye;
                TIR.LE(targetIndex) = TIRorNot;
                AimSphere.LE(targetIndex) = AS_Angle_Temp;
                RV.LE(targetIndex) = RV_Temp;
                cprintf('err'," (左眼)\n");
            case 0
                M00Max.ME(targetIndex) = M00MaxTemp;
                M00Center.ME(targetIndex) = M00CenterTemp; %有問題
                M00AVG.ME(targetIndex) = M00AVGTemp;
                M00Matrix.ME{targetIndex} = M00MatrixPadded_eye;
                TIR.ME(targetIndex) = TIRorNot;
                AimSphere.ME(targetIndex) = AS_Angle_Temp;
                RV.ME(targetIndex) = RV_Temp;
                cprintf('err'," (中眼)\n");
            case 1
                M00Max.RE(targetIndex) = M00MaxTemp;
                M00Center.RE(targetIndex) = M00CenterTemp;
                M00AVG.RE(targetIndex) = M00AVGTemp;
                M00Matrix.RE{targetIndex} = M00MatrixPadded_eye;
                TIR.RE(targetIndex) = TIRorNot;
                AimSphere.RE(targetIndex) = AS_Angle_Temp;
                RV.RE(targetIndex) = RV_Temp;
                cprintf('err'," (右眼)\n");
        end
        cprintf('key',strcat(" max M00: ",num2str(M00MaxTemp),"\n"));
        cprintf('key',strcat(" center M00: ",num2str(M00CenterTemp),"\n"));
        cprintf('key',strcat(" avg. M00: ",num2str(M00AVGTemp),"\n"));
        cprintf('key',strcat(" TIR: ",num2str(TIRorNot),"\n"))
        cprintf('key',strcat(" Aim Sphere: ",num2str(AS_Angle_Temp),"\n"))
        cprintf('key',strcat(" 純實/純虛 (1) or 虛實並存 (0): ",num2str(RV_Temp),"\n"))
        cprintf('err',"\n");
    end

    data = ws2struct; data = rmfield(data,"data");
%     structvars(5,data) % structure 賦值: 僅作複製貼上使用
end