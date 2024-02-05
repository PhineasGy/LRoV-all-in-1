function data = VZAAnalysis(data)
%% VZA Process %%

%% variables assignment
while 1
AUFMode = data.AUFMode;                                       VVAMesh = data.VVAMesh;                                 forPLA_incident = data.forPLA_incident;                 numLensYOriginal = data.numLensYOriginal;                         segVerSize = data.segVerSize;                                 
CDP = data.CDP;                                               WD = data.WD;                                           forPLA_insidePrism = data.forPLA_insidePrism;           numtest = data.numtest;                                           segmentMode = data.segmentMode;                               
EIHor = data.EIHor;                                           WDForAutoGP = data.WDForAutoGP;                         forPLA_mu_PrismtoAir = data.forPLA_mu_PrismtoAir;       outputA = data.outputA;                                           showAUF = data.showAUF;                                       
GPMode = data.GPMode;                                         WD_PLArray = data.WD_PLArray;                           forPLA_mu_airtoPrism = data.forPLA_mu_airtoPrism;       outputD = data.outputD;                                           showAsph = data.showAsph;                                     
GRLMat = data.GRLMat;                                         WDz = data.WDz;                                         forPLA_normalGP = data.forPLA_normalGP;                 outputIIName = data.outputIIName;                                 showGP = data.showGP;                                         
GRLMode = data.GRLMode;                                       air_n = data.air_n;                                     forPLA_normalWP = data.forPLA_normalWP;                 outputL = data.outputL;                                           showGRL = data.showGRL;                                       
GRLNumShift = data.GRLNumShift;                               angleCenterHVA = data.angleCenterHVA;                   forPLA_outsidePrism = data.forPLA_outsidePrism;         outputManual = data.outputManual;                                 showLRA = data.showLRA;                                       
HVAAllFailTag = data.HVAAllFailTag;                           angleCenterVVA = data.angleCenterVVA;                   forcePupilEdgeInverse = data.forcePupilEdgeInverse;     outputO = data.outputO;                                           showPRA = data.showPRA;                                       
HVAMesh = data.HVAMesh;                                       angleStep = data.angleStep;                             fullfilename = data.fullfilename;                       overwrite = data.overwrite;                                       showRPFailMask = data.showRPFailMask;                         
I = data.I;                                                   angleSweepHVA = data.angleSweepHVA;                     glassThickness = data.glassThickness;                   p1 = data.p1;                                                     showRPMask = data.showRPMask;                                 
LRA = data.LRA;                                               angleSweepVVA = data.angleSweepVVA;                     glass_n = data.glass_n;                                 p2 = data.p2;                                                     showWP = data.showWP;                                         
LREL = data.LREL;                                             asph_leftEnd_normal = data.asph_leftEnd_normal;         gp_PBA_array = data.gp_PBA_array;                       panelPixelNumHor = data.panelPixelNumHor;                         sizeforRangeY = data.sizeforRangeY;                           
LensHeightEachLenticular = data.LensHeightEachLenticular;     asph_max_height = data.asph_max_height;                 isLLSameAsPanel = data.isLLSameAsPanel;                 panelPixelNumVer = data.panelPixelNumVer;                         softLLTracing = data.softLLTracing;                           
LensRadiusEachLenticular = data.LensRadiusEachLenticular;     asph_rightEnd_normal = data.asph_rightEnd_normal;       lastAngle = data.lastAngle;                             panelSizeHor = data.panelSizeHor;                                 systemTiltAngle = data.systemTiltAngle;                       
OCAThickness = data.OCAThickness;                             aspherical = data.aspherical;                           lengthZRay2Default = data.lengthZRay2Default;           panelSizeHorLL = data.panelSizeHorLL;                             tVeryBegining = data.tVeryBegining;                           
OCA_n = data.OCA_n;                                           asphericalMat = data.asphericalMat;                     lengthZRay3Default = data.lengthZRay3Default;           panelSizeVer = data.panelSizeVer;                                 temp_normalGP = data.temp_normalGP;                           
PBA = data.PBA;                                               autoTermString = data.autoTermString;                   lensAperturePool = data.lensAperturePool;               panelSizeVerLL = data.panelSizeVerLL;                             thetaPolarAngle = data.thetaPolarAngle;                       
PBA1_fit_length = data.PBA1_fit_length;                       autoVZAnalysis = data.autoVZAnalysis;                   lensArraySizeHor = data.lensArraySizeHor;               parameter = data.parameter;                                       thetaPolarAngle_original = data.thetaPolarAngle_original;     
PBA1_fit_line = data.PBA1_fit_line;                           base_segNum = data.base_segNum;                         lensArraySizeVer = data.lensArraySizeVer;               phiAzimuthalAngle = data.phiAzimuthalAngle;                       thetaPolar_PLArray = data.thetaPolar_PLArray;                 
PBA1_fit_num = data.PBA1_fit_num;                             binoDistance = data.binoDistance;                       lensCenter_x_fitting = data.lensCenter_x_fitting;       phiAzimuthalAngle_original = data.phiAzimuthalAngle_original;     thetaPool = data.thetaPool;                                   
PBA1_fit_point = data.PBA1_fit_point;                         criticalFailRPNumber = data.criticalFailRPNumber;       lensHeightDefault = data.lensHeightDefault;             phiAzimuthal_PLArray = data.phiAzimuthal_PLArray;                 verSizeForSeg = data.verSizeForSeg;                           
PBA1_fit_x = data.PBA1_fit_x;                                 customLine = data.customLine;                           lensHeightEI0 = data.lensHeightEI0;                     phiPool = data.phiPool;                                           viewAngleHor = data.viewAngleHor;                             
PBA1_fit_y = data.PBA1_fit_y;                                 dateStringOn = data.dateStringOn;                       lensPitch = data.lensPitch;                             pixelSize = data.pixelSize;                                       viewAngleVer = data.viewAngleVer;                             
PBA_InputArray = data.PBA_InputArray;                         displayCoverThickness = data.displayCoverThickness;     lensRadius = data.lensRadius;                           polyFit = data.polyFit;                                           viewPointHor = data.viewPointHor;                             
PBA_array_forPLA = data.PBA_array_forPLA;                     displayCover_n = data.displayCover_n;                   lensRadiusDefault = data.lensRadiusDefault;             polyNum = data.polyNum;                                           viewPointVer = data.viewPointVer;                             
PBA_array_forPLA_2 = data.PBA_array_forPLA_2;                 display_CDP = data.display_CDP;                         lensRadiusOriginal = data.lensRadiusOriginal;           preciseGP = data.preciseGP;                                       wedgeHalfHeight = data.wedgeHalfHeight;                       
PLA_array_fromPBA = data.PLA_array_fromPBA;                   display_EyeMode = data.display_EyeMode;                 lensSubstrate = data.lensSubstrate;                     prismLensGap = data.prismLensGap;                                 wedgeMaxHeight = data.wedgeMaxHeight;                         
PLA_array_fromPBA_2 = data.PLA_array_fromPBA_2;               display_LensInfo = data.display_LensInfo;               lensThicknessEI0 = data.lensThicknessEI0;               prismMode = data.prismMode;                                       wedgePBA = data.wedgePBA;                                     
PLAtoPBAFunction = data.PLAtoPBAFunction;                     display_PrismInfo = data.display_PrismInfo;             lens_n = data.lens_n;                                   prismSizeHor = data.prismSizeHor;                                 wedgePRA = data.wedgePRA;                                     
PRA = data.PRA;                                               display_PupilSize = data.display_PupilSize;             limitedVA = data.limitedVA;                             prismSizeVer = data.prismSizeVer;                                 wedgePrism = data.wedgePrism;                                 
RPpointSet_LE_wld = data.RPpointSet_LE_wld;                   display_STA = data.display_STA;                         limitedVA_PL = data.limitedVA_PL;                       prismStructure = data.prismStructure;                             wedgeVer = data.wedgeVer;                                     
RPpointSet_ME_wld = data.RPpointSet_ME_wld;                   display_SegmentMode = data.display_SegmentMode;         ll_array = data.ll_array;                               prismSubstrate = data.prismSubstrate;                             wedge_normal = data.wedge_normal;                             
RPpointSet_RE_wld = data.RPpointSet_RE_wld;                   display_VA = data.display_VA;                           ll_down = data.ll_down;                                 prism_n = data.prism_n;                                           whichCode = data.whichCode;                                   
RRpointSet_LE_wld = data.RRpointSet_LE_wld;                   display_qLTRP = data.display_qLTRP;                     ll_left = data.ll_left;                                 pupilSize = data.pupilSize;                                       whichVAElement = data.whichVAElement;                         
RRpointSet_ME_wld = data.RRpointSet_ME_wld;                   dyPSMode = data.dyPSMode;                               ll_right = data.ll_right;                               pupilSize_PLArray = data.pupilSize_PLArray;                       whichVATerm = data.whichVATerm;                               
RRpointSet_RE_wld = data.RRpointSet_RE_wld;                   dynamicPS = data.dynamicPS;                             ll_up = data.ll_up;                                     q_LTRPMode = data.q_LTRPMode;                                     whichpba = data.whichpba;                                     
TIRHappen = data.TIRHappen;                                   effectiveG = data.effectiveG;                           mid_PLA = data.mid_PLA;                                 rangeY = data.rangeY;                                             widthStart = data.widthStart;                                 
UV_normal1 = data.UV_normal1;                                 excelFileName = data.excelFileName;                     mu1 = data.mu1;                                         rangeYPitch = data.rangeYPitch;                                   widthStep = data.widthStep;                                   
VAPool = data.VAPool;                                         excelSheetName = data.excelSheetName;                   mu2 = data.mu2;                                         rotLRA = data.rotLRA;                                             wp_PBA = data.wp_PBA;                                         
VATerm = data.VATerm;                                         eyeMode = data.eyeMode;                                 mu_GlasstoOCA = data.mu_GlasstoOCA;                     rotPRA = data.rotPRA;                                             writeExcel = data.writeExcel;                                 
VAchecktemp1 = data.VAchecktemp1;                             failNumberMatrix = data.failNumberMatrix;               mu_LenstoOCA = data.mu_LenstoOCA;                       rotPhi = data.rotPhi;                                             writeRPFailMask = data.writeRPFailMask;                       
VAchecktemp2 = data.VAchecktemp2;                             farrestDistanceHor = data.farrestDistanceHor;           mu_OCAtoDisplayCover = data.mu_OCAtoDisplayCover;       rotWedgePRA = data.rotWedgePRA;                                   writeRPMask = data.writeRPMask;                               
VE_EyePoint = data.VE_EyePoint;                               farrestDistanceVer = data.farrestDistanceVer;           mu_OCAtoGlass = data.mu_OCAtoGlass;                     segFit = data.segFit;                                             xNumMax = data.xNumMax;                                       
VE_originalPoint = data.VE_originalPoint;                     filename = data.filename;                               mu_airtoLens = data.mu_airtoLens;                       segM00 = data.segM00;                                             II = data.II;                                                 
VVAAllFailTag = data.VVAAllFailTag;                           focal = data.focal;                                     numII = data.numII;                                     segNum = data.segNum;                                                                                                           
break
end

%% Analysis
break_flag_VA = 0;
if autoVZAnalysis == 1
    if TIRHappen == 0
        % II: binary already [0,1] (double)
        mask = checkRP(II);
        [rows, ~] = find(mask);
        failPixelNumber = length(rows);
        FinalFailorPass = failPixelNumber <= criticalFailRPNumber;
        if FinalFailorPass == 0
            disp(strcat("RP pixel 相撞數目 (",num2str(failPixelNumber),")> ",num2str(criticalFailRPNumber)))
        end
        failNumberMatrix(HVAMesh==phiAzimuthalAngle_original&VVAMesh==thetaPolarAngle_original) = failPixelNumber;
    else
        FinalFailorPass = nan;
    end

    % step 3: output "Fail" or "Pass"
    % special case: TIR ("Fail" and continue to next element)
    [limitedVA,VAResult,lastAngle,continueNextTermFlag,HVAAllFailTag,VVAAllFailTag] = ...
        fail_pass(autoVZAnalysis,whichVATerm,phiAzimuthalAngle_original,thetaPolarAngle_original,TIRHappen,...
                                FinalFailorPass,whichVAElement,limitedVA,VAPool,lastAngle, ...
                                HVAAllFailTag,VVAAllFailTag);
    if isequal(VAResult,"Pass")
        cprintf('key',strcat(VAResult,"!\n"));
    elseif isequal(VAResult,"Fail")
        cprintf('err',strcat(VAResult,"!\n"));
    else
        cprintf('err',strcat(VAResult,"!\n"));
    end
    if continueNextTermFlag == 1
        if showRPMask == 1
            figure;
            imshow(II)
        end
        if writeRPMask == 1
            imwrite(II,outputIIName);
        end
        break_flag_VA = 1; % leave element pool, continue to next term.
        data = ws2struct; data = rmfield(data,"data");
        return % 離開 VZA analysis
    end 
elseif autoVZAnalysis == 0
    % 不顯示 但仍然進行 RP 測試
    failPixelNumber = nan;

    % II: binary already
    if q_LTRPMode == 1
        % II: 16K binary
        II_temp = imresize(uint8(II*255),[panelPixelNumVer/4,panelPixelNumHor/4]);
        % II_temp: 4K uint8 (0-255) (RGB)
        II_temp2 = imbinarize(II_temp);
        % II_temp2: 4K binary (RGB)
        II = double(II_temp2);
    end
    mask = checkRP(II);
    [rows, ~] = find(mask);
    failPixelNumber = length(rows);
    if showRPMask==1
        figure;
        imshow(II)
    end
    if writeRPMask==1
        imwrite(II,outputIIName);
    end
    if showRPFailMask == 1
        figure;
        imshow(mask)
    end
    if writeRPFailMask == 1
        imwrite(mask,strcat("failRP_",outputIIName,"_",num2str(failPixelNumber),".png"));
    end
    disp("failPixelNumber: ");
    disp(failPixelNumber);
end

%%
data = ws2struct; data = rmfield(data,"data");
% structvars(5,data) % structure 賦值: 僅作複製貼上使用

end