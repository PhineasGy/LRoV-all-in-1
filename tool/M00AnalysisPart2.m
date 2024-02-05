function data = M00AnalysisPart2(data)

    %% structure assignment
    while 1
ASMatrixPadded = data.ASMatrixPadded;                         RPpointSet_LE_wld = data.RPpointSet_LE_wld;             display_PrismInfo = data.display_PrismInfo;             mu_airtoLens = data.mu_airtoLens;                                 segmentMode = data.segmentMode;                               
ASMatrixPadded_eye = data.ASMatrixPadded_eye;                 RPpointSet_ME_wld = data.RPpointSet_ME_wld;             display_PupilSize = data.display_PupilSize;             numII = data.numII;                                               showAUF = data.showAUF;                                       
AS_Angle_Temp = data.AS_Angle_Temp;                           RPpointSet_RE_wld = data.RPpointSet_RE_wld;             display_STA = data.display_STA;                         numLensYOriginal = data.numLensYOriginal;                         showAimSphere = data.showAimSphere;                           
AUFMode = data.AUFMode;                                       RRpointSet_LE_wld = data.RRpointSet_LE_wld;             display_VA = data.display_VA;                           outputA = data.outputA;                                           showAsph = data.showAsph;                                     
AimSphere = data.AimSphere;                                   RRpointSet_ME_wld = data.RRpointSet_ME_wld;             effectiveG = data.effectiveG;                           outputD = data.outputD;                                           showAvg = data.showAvg;                                       
CDP = data.CDP;                                               RRpointSet_RE_wld = data.RRpointSet_RE_wld;             exludeRVJoint = data.exludeRVJoint;                     outputIIName = data.outputIIName;                                 showCenter = data.showCenter;                                 
EIHor = data.EIHor;                                           RV = data.RV;                                           eyeMode = data.eyeMode;                                 outputL = data.outputL;                                           showGP = data.showGP;                                         
GPMode = data.GPMode;                                         RVMatrixPadded = data.RVMatrixPadded;                   farrestDistanceHor = data.farrestDistanceHor;           outputManual = data.outputManual;                                 showGRL = data.showGRL;                                       
GRLMat = data.GRLMat;                                         RVMatrixPadded_eye = data.RVMatrixPadded_eye;           farrestDistanceVer = data.farrestDistanceVer;           outputO = data.outputO;                                           showLRA = data.showLRA;                                       
GRLMode = data.GRLMode;                                       RV_Temp = data.RV_Temp;                                 focal = data.focal;                                     overwrite = data.overwrite;                                       showLeftEye = data.showLeftEye;                               
GRLNumShift = data.GRLNumShift;                               TIR = data.TIR;                                         forPLA_incident = data.forPLA_incident;                 p1 = data.p1;                                                     showMax = data.showMax;                                       
GridCustomString = data.GridCustomString;                     TIRHappen = data.TIRHappen;                             forPLA_insidePrism = data.forPLA_insidePrism;           p2 = data.p2;                                                     showMiddleEye = data.showMiddleEye;                           
HVASet = data.HVASet;                                         TIRorNot = data.TIRorNot;                               forPLA_mu_PrismtoAir = data.forPLA_mu_PrismtoAir;       panelSizeHor = data.panelSizeHor;                                 showPRA = data.showPRA;                                       
I = data.I;                                                   UV_normal1 = data.UV_normal1;                           forPLA_mu_airtoPrism = data.forPLA_mu_airtoPrism;       panelSizeHorLL = data.panelSizeHorLL;                             showRV = data.showRV;                                         
LRA = data.LRA;                                               VAPool = data.VAPool;                                   forPLA_normalGP = data.forPLA_normalGP;                 panelSizeVer = data.panelSizeVer;                                 showRightEye = data.showRightEye;                             
LREL = data.LREL;                                             VATerm = data.VATerm;                                   forPLA_normalWP = data.forPLA_normalWP;                 panelSizeVerLL = data.panelSizeVerLL;                             showWP = data.showWP;                                         
LensHeightEachLenticular = data.LensHeightEachLenticular;     VE_EyePoint = data.VE_EyePoint;                         forPLA_outsidePrism = data.forPLA_outsidePrism;         parameter = data.parameter;                                       sizeforRangeY = data.sizeforRangeY;                           
LensRadiusEachLenticular = data.LensRadiusEachLenticular;     VE_originalPoint = data.VE_originalPoint;               forcePupilEdgeInverse = data.forcePupilEdgeInverse;     phiAzimuthalAngle = data.phiAzimuthalAngle;                       softLLTracing = data.softLLTracing;                           
M00AVG = data.M00AVG;                                         VVACenteOriginal = data.VVACenteOriginal;               glassThickness = data.glassThickness;                   phiAzimuthalAngle_original = data.phiAzimuthalAngle_original;     systemTiltAngle = data.systemTiltAngle;                       
M00AVGTemp = data.M00AVGTemp;                                 VVACenterArray = data.VVACenterArray;                   glass_n = data.glass_n;                                 phiPool = data.phiPool;                                           tVeryBegining = data.tVeryBegining;                           
M00Center = data.M00Center;                                   VVASet = data.VVASet;                                   gp_PBA_array = data.gp_PBA_array;                       plotAVG = data.plotAVG;                                           targetIndex = data.targetIndex;                               
M00CenterTemp = data.M00CenterTemp;                           VZAArray = data.VZAArray;                               isLLSameAsPanel = data.isLLSameAsPanel;                 plotAimSphere = data.plotAimSphere;                               temp_normalGP = data.temp_normalGP;                           
M00GridMode = data.M00GridMode;                               WD = data.WD;                                           lengthZRay2Default = data.lengthZRay2Default;           plotCenter = data.plotCenter;                                     termNum = data.termNum;                                       
M00IndexHVACell = data.M00IndexHVACell;                       WDForAutoGP = data.WDForAutoGP;                         lengthZRay3Default = data.lengthZRay3Default;           plotM00andTIRCurveAuto = data.plotM00andTIRCurveAuto;             thetaPolarAngle = data.thetaPolarAngle;                       
M00IndexVVACell = data.M00IndexVVACell;                       WD_PLArray = data.WD_PLArray;                           lensAperturePool = data.lensAperturePool;               plotMax = data.plotMax;                                           thetaPolarAngle_original = data.thetaPolarAngle_original;     
M00MatStr = data.M00MatStr;                                   WDz = data.WDz;                                         lensArraySizeHor = data.lensArraySizeHor;               plotRV = data.plotRV;                                             thetaPool = data.thetaPool;                                   
M00Matrix = data.M00Matrix;                                   air_n = data.air_n;                                     lensArraySizeVer = data.lensArraySizeVer;               plotTIR = data.plotTIR;                                           validNum = data.validNum;                                     
M00MatrixPadded = data.M00MatrixPadded;                       angleCenterHVA = data.angleCenterHVA;                   lensCenter_x_fitting = data.lensCenter_x_fitting;       plotVZALine = data.plotVZALine;                                   verSizeForSeg = data.verSizeForSeg;                           
M00MatrixPadded_eye = data.M00MatrixPadded_eye;               angleCenterVVA = data.angleCenterVVA;                   lensHeightDefault = data.lensHeightDefault;             preciseGP = data.preciseGP;                                       viewAngleHor = data.viewAngleHor;                             
M00Max = data.M00Max;                                         angleStep = data.angleStep;                             lensHeightEI0 = data.lensHeightEI0;                     prismLensGap = data.prismLensGap;                                 viewAngleVer = data.viewAngleVer;                             
M00MaxTemp = data.M00MaxTemp;                                 angleSweepHVA = data.angleSweepHVA;                     lensPitch = data.lensPitch;                             prismMode = data.prismMode;                                       viewPointHor = data.viewPointHor;                             
M00ValueCell = data.M00ValueCell;                             angleSweepVVA = data.angleSweepVVA;                     lensRadius = data.lensRadius;                           prismSizeHor = data.prismSizeHor;                                 viewPointVer = data.viewPointVer;                             
OCAThickness = data.OCAThickness;                             asph_leftEnd_normal = data.asph_leftEnd_normal;         lensRadiusDefault = data.lensRadiusDefault;             prismSizeVer = data.prismSizeVer;                                 wedgeHalfHeight = data.wedgeHalfHeight;                       
OCA_n = data.OCA_n;                                           asph_max_height = data.asph_max_height;                 lensRadiusOriginal = data.lensRadiusOriginal;           prismStructure = data.prismStructure;                             wedgeMaxHeight = data.wedgeMaxHeight;                         
PBA = data.PBA;                                               asph_rightEnd_normal = data.asph_rightEnd_normal;       lensSubstrate = data.lensSubstrate;                     prismSubstrate = data.prismSubstrate;                             wedgePBA = data.wedgePBA;                                     
PBA1_fit_length = data.PBA1_fit_length;                       aspherical = data.aspherical;                           lensThicknessEI0 = data.lensThicknessEI0;               prism_n = data.prism_n;                                           wedgePRA = data.wedgePRA;                                     
PBA1_fit_line = data.PBA1_fit_line;                           asphericalMat = data.asphericalMat;                     lens_n = data.lens_n;                                   pupilSize = data.pupilSize;                                       wedgePrism = data.wedgePrism;                                 
PBA1_fit_num = data.PBA1_fit_num;                             autoM00Analysis = data.autoM00Analysis;                 ll_array = data.ll_array;                               pupilSize_PLArray = data.pupilSize_PLArray;                       wedgeVer = data.wedgeVer;                                     
PBA1_fit_point = data.PBA1_fit_point;                         autoTermString = data.autoTermString;                   ll_down = data.ll_down;                                 rangeY = data.rangeY;                                             wedge_normal = data.wedge_normal;                             
PBA1_fit_x = data.PBA1_fit_x;                                 binoDistance = data.binoDistance;                       ll_left = data.ll_left;                                 rangeYPitch = data.rangeYPitch;                                   whichCode = data.whichCode;                                   
PBA1_fit_y = data.PBA1_fit_y;                                 checkTemp1 = data.checkTemp1;                           ll_right = data.ll_right;                               rotLRA = data.rotLRA;                                             whichEye = data.whichEye;                                     
PBA_InputArray = data.PBA_InputArray;                         checkTemp2 = data.checkTemp2;                           ll_up = data.ll_up;                                     rotPRA = data.rotPRA;                                             whichVAElement = data.whichVAElement;                         
PBA_array_forPLA = data.PBA_array_forPLA;                     curveStr = data.curveStr;                               mid_PLA = data.mid_PLA;                                 rotPhi = data.rotPhi;                                             whichVATerm = data.whichVATerm;                               
PBA_array_forPLA_2 = data.PBA_array_forPLA_2;                 customLine = data.customLine;                           mu1 = data.mu1;                                         rotWedgePRA = data.rotWedgePRA;                                   whichpba = data.whichpba;                                     
PLA_array_fromPBA = data.PLA_array_fromPBA;                   displayCoverThickness = data.displayCoverThickness;     mu2 = data.mu2;                                         saveCurve = data.saveCurve;                                       widthStart = data.widthStart;                                 
PLA_array_fromPBA_2 = data.PLA_array_fromPBA_2;               displayCover_n = data.displayCover_n;                   mu_GlasstoOCA = data.mu_GlasstoOCA;                     saveM00Mat = data.saveM00Mat;                                     widthStep = data.widthStep;                                   
PLAtoPBAFunction = data.PLAtoPBAFunction;                     display_CDP = data.display_CDP;                         mu_LenstoOCA = data.mu_LenstoOCA;                       segM00 = data.segM00;                                             wp_PBA = data.wp_PBA;                                         
PRA = data.PRA;                                               display_EyeMode = data.display_EyeMode;                 mu_OCAtoDisplayCover = data.mu_OCAtoDisplayCover;       segNum = data.segNum;                                             writeGrid = data.writeGrid;                                   
RDP = data.RDP;                                               display_LensInfo = data.display_LensInfo;               mu_OCAtoGlass = data.mu_OCAtoGlass;                     segVerSize = data.segVerSize;                                     xNumMax = data.xNumMax;                                       
    break
    end

    %% 
    if autoM00Analysis == 1 
        % exlcude RV 並存
        if exludeRVJoint == 1
            RVFactorLE = RV.LE;RVFactorME = RV.ME;RVFactorRE = RV.RE;
            M00Max.LE = M00Max.LE.*RVFactorLE;M00Center.LE = M00Center.LE.*RVFactorLE;M00AVG.LE = M00AVG.LE.*RVFactorLE;
            M00Max.ME = M00Max.ME.*RVFactorME;M00Center.ME = M00Center.ME.*RVFactorME;M00AVG.ME = M00AVG.ME.*RVFactorME;
            M00Max.RE=  M00Max.RE.*RVFactorRE;M00Center.RE = M00Center.RE.*RVFactorRE;M00AVG.RE = M00AVG.RE.*RVFactorRE;
        end
        
        % plot
        if plotM00andTIRCurveAuto == 1
            HVAStr = strcat("M00_Curve_(HVA)_WD",num2str(WD),"_VVA",num2str(angleCenterVVA),"_",curveStr,".png");
            VVAStr = strcat("M00_Curve_(VVA)_WD",num2str(WD),"_HVA",num2str(angleCenterHVA),"_",curveStr,".png");
            M00Set = {M00Max,M00Center,M00AVG};
            VASet = {VVASet,HVASet,angleCenterVVA,angleCenterHVA,angleSweepVVA,angleSweepHVA,angleStep};
            plotSet = {plotMax,plotCenter,plotAVG,VVAStr,HVAStr,saveCurve,plotTIR,plotAimSphere};
            [FigCell] = plotM00_TIR(VATerm,M00Set,VASet,plotSet,TIR);
            if plotAimSphere == 1
                HVAStr = strcat("AS_Curve_(HVA)_WD",num2str(WD),"_VVA",num2str(angleCenterVVA),"_",curveStr,".png");
                VVAStr = strcat("AS_Curve_(VVA)_WD",num2str(WD),"_HVA",num2str(angleCenterHVA),"_",curveStr,".png");
                plotSet = {plotMax,plotCenter,plotAVG,VVAStr,HVAStr,saveCurve,plotTIR,plotAimSphere};
                [FigASCell] = plotAS(VATerm,AimSphere,VASet,plotSet);
            end
            if plotRV == 1
                HVAStr = strcat("RVAlone_Curve_(HVA)_WD",num2str(WD),"_VVA",num2str(angleCenterVVA),"_",curveStr,".png");
                VVAStr = strcat("RVAlone_Curve_(VVA)_WD",num2str(WD),"_HVA",num2str(angleCenterHVA),"_",curveStr,".png");
                plotSet = {plotMax,plotCenter,plotAVG,VVAStr,HVAStr,saveCurve,plotTIR,plotRV};
                [FigRVCell] = plotRVAlone(VATerm,RV,VASet,plotSet);  
            end
        end
        %% analysis
        disp('------------------------');
        [maxLE,indLE] = max(M00Max.LE,[],'all');
        [maxME,indME] = max(M00Max.ME,[],'all');
        [maxRE,indRE] = max(M00Max.RE,[],'all');
        [~,indTotal] = max([maxLE,maxME,maxRE]);
        cprintf('key',"最大 M00 - 眼睛: ")
        switch indTotal
            case 1
                cprintf('err',"左眼\n")
                indFinal = indLE;
                maxFinal = maxLE;
            case 2
                cprintf('err',"中眼\n")
                indFinal = indME;
                maxFinal = maxME;
            case 3
                cprintf('err',"右眼\n")
                indFinal = indRE;
                maxFinal = maxRE;
        end
        [maxRow,maxCol] = ind2sub([length(VVASet),length(HVASet)],indFinal);
        cprintf('key',"最大 M00 - VA: ")
        cprintf('err',strcat("VVA ",num2str(VVASet(maxRow))," HVA ",num2str(HVASet(maxCol)),"\n"))
        cprintf('key',"最大 M00 - value: ")
        cprintf('err',strcat(num2str(maxFinal),"\n"))
        
        %% VA Grid Mode
        if M00GridMode == 1
            M00Set = {M00Max,M00Center,M00AVG};
            M00GridShowArray = {showLeftEye,showMiddleEye,showRightEye,showMax,showCenter,showAvg,...
                                GridCustomString,writeGrid,...
                                showAimSphere,showRV};
            M00VZALineArray = {plotVZALine,VZAArray,numII,maxFinal};
            gridFigCell = surfM00(M00Set,WD,VVASet,HVASet,M00GridShowArray,M00VZALineArray);
            if showAimSphere == 1
                gridASFigCell = surfAS(AimSphere,WD,VVASet,HVASet,M00GridShowArray,M00VZALineArray);
            end
            if showRV == 1
                gridRVFigCell = surfRV(RV,WD,VVASet,HVASet,M00GridShowArray,M00VZALineArray);
            end
        end
    end

    %%
    % 存 M00 Data
    if saveM00Mat == 1
        save(strcat("M00Data_WD",num2str(WD),"_",M00MatStr,".mat"),'M00Matrix','M00Max','M00Center','M00AVG');
    end
    % manual mode
    if autoM00Analysis == 0
    
    end

    data = ws2struct; data = rmfield(data,"data");
%     structvars(5,data) % structure 賦值: 僅作複製貼上使用
end
%% function
% plot M00 curve
function [FigCell] = plotM00_TIR(VATerm,M00Set,VASet,plotSet,TIR)
    
    FigCell = cell(1,length(VATerm));
    M00Max = M00Set{1};
    M00Center = M00Set{2};
    M00AVG = M00Set{3};
    VVASet = VASet{1};
    HVASet = VASet{2};
    angleCenterVVA = VASet{3};
    angleCenterHVA = VASet{4};
    angleSweepVVA = VASet{5};
    angleSweepHVA = VASet{6};
    angleStep = VASet{7};
    plotMax = plotSet{1};
    plotCenter = plotSet{2};
    plotAVG = plotSet{3};
    VVAStr = plotSet{4};
    HVAStr = plotSet{5};
    saveCurve = plotSet{6};
    plotTIR = plotSet{7};
    
    % variable initialization
    termCount = 0;
    M00MaxMost = max([max(M00Max.LE,[],'all'),max(M00Max.ME,[],'all'),max(M00Max.RE,[],'all')]);
    M00MaxEach = max([max(M00Max.LE(:,HVASet==angleCenterHVA),[],'all'),...
                        max(M00Max.ME(:,HVASet==angleCenterHVA),[],'all'),...
                        max(M00Max.RE(:,HVASet==angleCenterHVA),[],'all')]);

    cprintf("[info] 作圖中...")
    for whichVATerm = VATerm % possible sort: [1,2], [2,1], 1, 2
        termCount = termCount + 1;
        %% HVA
        if whichVATerm == 1 
            legendList = cell(1,12);
            HVAFig = figure;
            hold on;
            %% max
            if plotMax == 1
                if ~all(isnan(M00Max.LE(VVASet==angleCenterVVA,:)))
                    plot(HVASet,M00Max.LE(VVASet==angleCenterVVA,:),"-r");
                    legendList{1}="左眼 max";  
                end
                if ~all(isnan(M00Max.ME(VVASet==angleCenterVVA,:)))
                    plot(HVASet,M00Max.ME(VVASet==angleCenterVVA,:),"-k");
                    legendList{2}="中眼 max";
                end
                if ~all(isnan(M00Max.RE(VVASet==angleCenterVVA,:)))
                    plot(HVASet,M00Max.RE(VVASet==angleCenterVVA,:),"-b");
                    legendList{3}="右眼 max";
                end
            end
            %% center
            if plotCenter == 1
                if ~all(isnan(M00Center.LE(VVASet==angleCenterVVA,:)))
                    plot(HVASet,M00Center.LE(VVASet==angleCenterVVA,:),":r");
                    legendList{4}="左眼 center";  
                end
                if ~all(isnan(M00Center.ME(VVASet==angleCenterVVA,:)))
                    plot(HVASet,M00Center.ME(VVASet==angleCenterVVA,:),":k");
                    legendList{5}="中眼 center";
                end
                if ~all(isnan(M00Center.RE(VVASet==angleCenterVVA,:)))
                    plot(HVASet,M00Center.RE(VVASet==angleCenterVVA,:),":b");
                    legendList{6}="右眼 center";
                end
            end
            %% AVG
            if plotAVG == 1
                if ~all(isnan(M00AVG.LE(VVASet==angleCenterVVA,:)))
                    plot(HVASet,M00AVG.LE(VVASet==angleCenterVVA,:),"--r");
                    legendList{7}="左眼 avg";  
                end
                if ~all(isnan(M00AVG.ME(VVASet==angleCenterVVA,:)))
                    plot(HVASet,M00AVG.ME(VVASet==angleCenterVVA,:),"--k");
                    legendList{8}="中眼 avg";
                end
                if ~all(isnan(M00AVG.RE(VVASet==angleCenterVVA,:)))
                    plot(HVASet,M00AVG.RE(VVASet==angleCenterVVA,:),"--b");
                    legendList{9}="右眼 avg";
                end
            end
            %% TIR
            if plotTIR == 1
                if ~all(isnan(TIR.LE(VVASet==angleCenterVVA,:)))
                    tempArray = TIR.LE(VVASet==angleCenterVVA,:);
                    tempArray(tempArray==0) = M00MaxMost/4;
                    tempArray(tempArray==1) = M00MaxMost/4*3;
                    plot(HVASet,tempArray,"-r",'LineWidth',3);
                    legendList{10}="左眼 TIR";  
                end
                if ~all(isnan(TIR.ME(VVASet==angleCenterVVA,:)))
                    tempArray = TIR.ME(VVASet==angleCenterVVA,:);
                    tempArray(tempArray==0) = M00MaxMost/4;
                    tempArray(tempArray==1) = M00MaxMost/4*3;
                    plot(HVASet,tempArray,"-k",'LineWidth',3);
                    legendList{11}="中眼 TIR";
                end
                if ~all(isnan(TIR.RE(VVASet==angleCenterVVA,:)))
                    tempArray = TIR.RE(VVASet==angleCenterVVA,:);
                    tempArray(tempArray==0) = M00MaxMost/4;
                    tempArray(tempArray==1) = M00MaxMost/4*3;
                    plot(HVASet,tempArray,"-b",'LineWidth',3);
                    legendList{12}="右眼 TIR";
                end
                text(0,M00MaxMost/4,'no TIR');
            end
            title("M00 vs HVA")
            subtitle(strcat("VVA",num2str(angleCenterVVA)," (max M00: ",num2str(M00MaxMost),")"))
            legendList(cellfun('isempty',legendList))=[];
            legend(legendList);
            xlabel("HVA");
            ylabel("M00")
            ylim([0,ceil(M00MaxMost)]); %yticks(ceil(linspace(0,ceil(M00MaxMost),10)));
            xlim([angleSweepHVA(1),angleSweepHVA(end)]); xticks(angleSweepHVA(1):angleStep:angleSweepHVA(end))
            step = HVAFig.CurrentAxes.YTick(2) - HVAFig.CurrentAxes.YTick(1);
            ylim([0,ceil(M00MaxMost)+step]); yticks(0:step:ceil(M00MaxMost)+step);

            FigCell{termCount} = HVAFig;

            if saveCurve == 1
                saveas(HVAFig,HVAStr);
            end
        end
        %% VVA
        if whichVATerm == 2
            legendList = cell(1,9);
            VVAFig = figure;
            hold on;
            %% Max
            if plotMax == 1
                if ~all(isnan(M00Max.LE(:,HVASet==angleCenterHVA)))
                    plot(VVASet,M00Max.LE(:,HVASet==angleCenterHVA),"-r");
                    legendList{1}="左眼 max"; 
                end
                if ~all(isnan(M00Max.ME(:,HVASet==angleCenterHVA)))
                    plot(VVASet,M00Max.ME(:,HVASet==angleCenterHVA),"-k");
                    legendList{2}="中眼 max"; 
                end
                if ~all(isnan(M00Max.RE(:,HVASet==angleCenterHVA)))
                    plot(VVASet,M00Max.RE(:,HVASet==angleCenterHVA),"-b");
                    legendList{3}="右眼 max";
                end
            end
            %% Center
            if plotCenter == 1
                if ~all(isnan(M00Center.LE(:,HVASet==angleCenterHVA)))
                    plot(VVASet,M00Center.LE(:,HVASet==angleCenterHVA),":r");
                    legendList{4}="左眼 center"; 
                end
                if ~all(isnan(M00Center.ME(:,HVASet==angleCenterHVA)))
                    plot(VVASet,M00Center.ME(:,HVASet==angleCenterHVA),":k");
                    legendList{5}="中眼 center"; 
                end
                if ~all(isnan(M00Center.RE(:,HVASet==angleCenterHVA)))
                    plot(VVASet,M00Center.RE(:,HVASet==angleCenterHVA),":b");
                    legendList{6}="右眼 center";
                end
            end
            %% AVG
            if plotAVG == 1
                if ~all(isnan(M00AVG.LE(:,HVASet==angleCenterHVA)))
                    plot(VVASet,M00AVG.LE(:,HVASet==angleCenterHVA),"--r");
                    legendList{7}="左眼 avg"; 
                end
                if ~all(isnan(M00AVG.ME(:,HVASet==angleCenterHVA)))
                    plot(VVASet,M00AVG.ME(:,HVASet==angleCenterHVA),"--k");
                    legendList{8}="中眼 avg"; 
                end
                if ~all(isnan(M00AVG.RE(:,HVASet==angleCenterHVA)))
                    plot(VVASet,M00AVG.RE(:,HVASet==angleCenterHVA),"--b");
                    legendList{9}="右眼 avg";
                end
            end
            %% TIR
            if plotTIR == 1
                if ~all(isnan(TIR.LE(:,HVASet==angleCenterHVA)))
                    tempArray = TIR.LE(:,HVASet==angleCenterHVA);
                    tempArray(tempArray==0) = M00MaxMost/4;
                    tempArray(tempArray==1) = M00MaxMost/4*3;
                    plot(VVASet,tempArray,"-r",'LineWidth',3);
                    legendList{10}="左眼 TIR";  
                end
                if ~all(isnan(TIR.ME(:,HVASet==angleCenterHVA)))
                    tempArray = TIR.ME(:,HVASet==angleCenterHVA);
                    tempArray(tempArray==0) = M00MaxMost/4;
                    tempArray(tempArray==1) = M00MaxMost/4*3;
                    plot(VVASet,tempArray,"-k",'LineWidth',3);
                    legendList{11}="中眼 TIR";
                end
                if ~all(isnan(TIR.RE(:,HVASet==angleCenterHVA)))
                    tempArray = TIR.RE(:,HVASet==angleCenterHVA);
                    tempArray(tempArray==0) = M00MaxMost/4;
                    tempArray(tempArray==1) = M00MaxMost/4*3;
                    plot(VVASet,tempArray,"-b",'LineWidth',3);
                    legendList{12}="右眼 TIR";
                end
                text(0,M00MaxMost/4,'no TIR');
            end
            title("M00 vs VVA")
            subtitle(strcat("HVA",num2str(angleCenterHVA)," (max M00: ",num2str(M00MaxEach),")"))
            legendList(cellfun('isempty',legendList))=[];
            legend(legendList);
            xlabel("VVA");
            ylabel("M00")
            ylim([0,ceil(M00MaxMost)]); %yticks(ceil(linspace(0,ceil(M00MaxMost),10)));
            xlim([angleSweepVVA(1),angleSweepVVA(end)]); xticks(angleSweepVVA(1):angleStep:angleSweepVVA(end)) 
            step = VVAFig.CurrentAxes.YTick(2) - VVAFig.CurrentAxes.YTick(1);
            ylim([0,ceil(M00MaxMost)+step]); yticks(0:step:ceil(M00MaxMost)+step);

            FigCell{termCount} = VVAFig;
            if saveCurve == 1
                saveas(VVAFig,VVAStr);
            end
        end
    end
    cprintf("完成\n")
end
function gridFigCell = surfM00(M00Set,WD,VVASet,HVASet,M00GridShowArray,M00VZALineArray)

    M00Max = M00Set{1};M00Center = M00Set{2};M00AVG = M00Set{3};
    showLeftEye = M00GridShowArray{1};showMiddleEye = M00GridShowArray{2};showRightEye = M00GridShowArray{3};
    showMax = M00GridShowArray{4};showCenter = M00GridShowArray{5};showAvg = M00GridShowArray{6};
    GridCustomString = M00GridShowArray{7};writeGrid = M00GridShowArray{8};
    plotVZALine = M00VZALineArray{1};VZAArray = M00VZALineArray{2};
    numII = M00VZALineArray{3};maxFinal = M00VZALineArray{4};

    [Y,X] = meshgrid(HVASet,VVASet);
    gridFigCell = cell(1,9);
    showIndex = [showLeftEye,showMax;showLeftEye,showCenter;showLeftEye,showAvg;...
                 showMiddleEye,showMax;showMiddleEye,showCenter;showMiddleEye,showAvg;...
                 showRightEye,showMax;showRightEye,showCenter;showRightEye,showAvg];
    showString = ["Left Eye","max M00";"Left Eye","center M00";"Left Eye","avg M00";...
                 "Mid Eye","max M00";"Mid Eye","center M00";"Mid Eye","avg M00";...
                 "Right Eye","max M00";"Right Eye","center M00";"Right Eye","avg M00"];
    M00Index = {M00Max.LE;M00Center.LE;M00AVG.LE;...
                M00Max.ME;M00Center.ME;M00AVG.ME;...
                M00Max.RE;M00Center.RE;M00AVG.RE};
    
    for whichGrid = 1:9
        eyeShow = showIndex(whichGrid,1);
        analysisShow = showIndex(whichGrid,2);
        eyeStr = showString(whichGrid,1);
        analysisStr = showString(whichGrid,2);
        if eyeShow == 0 || analysisShow == 0
            continue
        end
        M00Data = M00Index{whichGrid};
        [maxVAlFromM00Data,maxPosFromM00Data] = max(M00Data(M00Data~=0),[],'all');
        [maxPosRow,maxPosCol] = ind2sub([size(M00Data,1),size(M00Data,2)],maxPosFromM00Data);
        [minVAlFromM00Data,~] = min(M00Data(M00Data~=0),[],'all');
        % surf
        gridFig = figure;
        surf(X',Y',M00Data','FaceColor','interp')
        hold on
        scatter3(X(maxPosRow,maxPosCol),Y(maxPosRow,maxPosCol),maxVAlFromM00Data,'filled');
        view(90,90)
        axis equal
        colorbar
        xlim([VVASet(1) VVASet(end)])
        ylim([HVASet(1) HVASet(end)])
        title(strcat("M00 distribution @ VA (",eyeStr," ",analysisStr,")"))
        subtitle(strcat("M00: ",num2str(round(minVAlFromM00Data,2))," to ",num2str(round(maxVAlFromM00Data,2))))
        xlabel("VVA")
        ylabel("HVA")
        % VZALine
        if plotVZALine == 1
           VZA = VZAArray(numII,:); % HVA- HVA+ VVA- VVA+ OOVA(HVA=0)
           VZAXY = [VZA(5) VZA(3) VZA(5) VZA(4) VZA(5);VZA(1) 0 VZA(2) 0 VZA(1)]; % L U R D L
           hold('on')
           plot3(VZAXY(1,:),VZAXY(2,:),[maxFinal,maxFinal,maxFinal,maxFinal,maxFinal],'r','LineWidth',1)
        end
        % write figure
        if writeGrid == 1
            saveas(gridFig,strcat("(M00 VAGrid) ",eyeStr,"_",analysisStr,"_WD",num2str(WD),GridCustomString,".png"));
        end
        gridFigCell{whichGrid} = gridFig;
    end
end
% plot Aim Sphere curve
function [FigASCell] = plotAS(VATerm,AimSphere,VASet,plotSet)
    
    FigASCell = cell(1,length(VATerm));
    VVASet = VASet{1};
    HVASet = VASet{2};
    angleCenterVVA = VASet{3};
    angleCenterHVA = VASet{4};
    angleSweepVVA = VASet{5};
    angleSweepHVA = VASet{6};
    angleStep = VASet{7};
    VVAStr = plotSet{4};
    HVAStr = plotSet{5};
    saveCurve = plotSet{6};
    
    % variable initialization
    termCount = 0;
    ASMost = max([max(AimSphere.LE,[],'all'),max(AimSphere.ME,[],'all'),max(AimSphere.RE,[],'all')]);
    ASEach = max([max(AimSphere.LE(:,HVASet==angleCenterHVA),[],'all'),...
                        max(AimSphere.ME(:,HVASet==angleCenterHVA),[],'all'),...
                        max(AimSphere.RE(:,HVASet==angleCenterHVA),[],'all')]);

    cprintf("[info] Aim Sphere 作圖中...")
    for whichVATerm = VATerm % possible sort: [1,2], [2,1], 1, 2
        termCount = termCount + 1;
        %% HVA
        if whichVATerm == 1 
            legendList = cell(1,12);
            HVAFig = figure;
            hold on;
            %% plot Aim Sphere Angle
            if ~all(isnan(AimSphere.LE(VVASet==angleCenterVVA,:)))
                plot(HVASet,AimSphere.LE(VVASet==angleCenterVVA,:),"-r");
                legendList{1}="左眼 max";  
            end
            if ~all(isnan(AimSphere.ME(VVASet==angleCenterVVA,:)))
                plot(HVASet,AimSphere.ME(VVASet==angleCenterVVA,:),"-k");
                legendList{2}="中眼 max";
            end
            if ~all(isnan(AimSphere.RE(VVASet==angleCenterVVA,:)))
                plot(HVASet,AimSphere.RE(VVASet==angleCenterVVA,:),"-b");
                legendList{3}="右眼 max";
            end
            title("Aim Sphere vs HVA")
            subtitle(strcat("VVA",num2str(angleCenterVVA)," (max AS: ",num2str(ASMost),")"))
            legendList(cellfun('isempty',legendList))=[];
            legend(legendList);
            xlabel("HVA");
            ylabel("AS")
            ylim([0,ceil(ASMost)]);
            xlim([angleSweepHVA(1),angleSweepHVA(end)]); xticks(angleSweepHVA(1):angleStep:angleSweepHVA(end))
            step = HVAFig.CurrentAxes.YTick(2) - HVAFig.CurrentAxes.YTick(1);
            ylim([0,ceil(ASMost)+step]); yticks(0:step:ceil(ASMost)+step);

            FigASCell{termCount} = HVAFig;

            if saveCurve == 1
                saveas(HVAFig,HVAStr);
            end
        end
        %% VVA
        if whichVATerm == 2
            legendList = cell(1,9);
            VVAFig = figure;
            hold on;
            %% plot Aim Sphere Angle
            if ~all(isnan(AimSphere.LE(:,HVASet==angleCenterHVA)))
                plot(VVASet,AimSphere.LE(:,HVASet==angleCenterHVA),"-r");
                legendList{1}="左眼 max"; 
            end
            if ~all(isnan(AimSphere.ME(:,HVASet==angleCenterHVA)))
                plot(VVASet,AimSphere.ME(:,HVASet==angleCenterHVA),"-k");
                legendList{2}="中眼 max"; 
            end
            if ~all(isnan(AimSphere.RE(:,HVASet==angleCenterHVA)))
                plot(VVASet,AimSphere.RE(:,HVASet==angleCenterHVA),"-b");
                legendList{3}="右眼 max";
            end
            title("Aim Sphere vs VVA")
            subtitle(strcat("HVA",num2str(angleCenterHVA)," (max AS: ",num2str(ASEach),")"))
            legendList(cellfun('isempty',legendList))=[];
            legend(legendList);
            xlabel("VVA");
            ylabel("AS")
            ylim([0,ceil(ASMost)]); %yticks(ceil(linspace(0,ceil(M00MaxMost),10)));
            xlim([angleSweepVVA(1),angleSweepVVA(end)]); xticks(angleSweepVVA(1):angleStep:angleSweepVVA(end)) 
            step = VVAFig.CurrentAxes.YTick(2) - VVAFig.CurrentAxes.YTick(1);
            ylim([0,ceil(ASMost)+step]); yticks(0:step:ceil(ASMost)+step);

            FigASCell{termCount} = VVAFig;
            if saveCurve == 1
                saveas(VVAFig,VVAStr);
            end
        end
    end
    cprintf("完成\n")
end
function gridASFigCell = surfAS(AimSphere,WD,VVASet,HVASet,M00GridShowArray,M00VZALineArray)

    showLeftEye = M00GridShowArray{1};showMiddleEye = M00GridShowArray{2};showRightEye = M00GridShowArray{3};
    showAimSphere = M00GridShowArray{9};
    GridCustomString = M00GridShowArray{7};writeGrid = M00GridShowArray{8};
    plotVZALine = M00VZALineArray{1};VZAArray = M00VZALineArray{2};
    numII = M00VZALineArray{3};maxFinal = M00VZALineArray{4};

    [Y,X] = meshgrid(HVASet,VVASet);
    gridASFigCell = cell(1,3);
    showIndex = [% Aim Sphere
                 showLeftEye,showAimSphere;showMiddleEye,showAimSphere;showRightEye,showAimSphere];
    showString = [% Aim Sphere
                 "Left Eye","max Aim Sphere";"Mid Eye","max Aim Sphere";"Right Eye","max Aim Sphere"];
    ASIndex = {% Aim Sphere
                AimSphere.LE;AimSphere.ME;AimSphere.RE};
    
    for whichGrid = 1:3
        eyeShow = showIndex(whichGrid,1);
        analysisShow = showIndex(whichGrid,2);
        eyeStr = showString(whichGrid,1);
        analysisStr = showString(whichGrid,2);
        if eyeShow == 0 || analysisShow == 0
            continue
        end
        ASData = ASIndex{whichGrid};
        % surf
        gridFig = figure;
        surf(X',Y',ASData','FaceColor','interp')
        view(90,90)
        axis equal
        colorbar
        xlim([VVASet(1) VVASet(end)])
        ylim([HVASet(1) HVASet(end)])
        title(strcat("Aim Sphere distribution @ VA (",eyeStr," ",analysisStr,")"))
        subtitle(strcat("AS: ",num2str(round(min(ASData(:)),2))," to ",num2str(round(max(ASData(:)),2))))
        xlabel("VVA")
        ylabel("HVA")
        % VZALine
        if plotVZALine == 1
           VZA = VZAArray(numII,:); % HVA- HVA+ VVA- VVA+ OOVA(HVA=0)
           VZAXY = [VZA(5) VZA(3) VZA(5) VZA(4) VZA(5);VZA(1) 0 VZA(2) 0 VZA(1)]; % L U R D L
           hold('on')
           plot3(VZAXY(1,:),VZAXY(2,:),[maxFinal,maxFinal,maxFinal,maxFinal,maxFinal],'r','LineWidth',1)
        end
        % write figure
        if writeGrid == 1
            saveas(gridFig,strcat("(AS VAGrid) ",eyeStr,"_",analysisStr,"_WD",num2str(WD),GridCustomString,".png"));
        end
        gridASFigCell{whichGrid} = gridFig;
    end
end
% plot RV alone curve
function [FigRVCell] = plotRVAlone(VATerm,RV,VASet,plotSet)
    
    FigRVCell = cell(1,length(VATerm));
    VVASet = VASet{1};
    HVASet = VASet{2};
    angleCenterVVA = VASet{3};
    angleCenterHVA = VASet{4};
    angleSweepVVA = VASet{5};
    angleSweepHVA = VASet{6};
    angleStep = VASet{7};
    VVAStr = plotSet{4};
    HVAStr = plotSet{5};
    saveCurve = plotSet{6};
    
    % variable initialization
    termCount = 0;

    cprintf("[info] RV(純or並存) 作圖中...")
    for whichVATerm = VATerm % possible sort: [1,2], [2,1], 1, 2
        termCount = termCount + 1;
        %% HVA
        if whichVATerm == 1 
            legendList = cell(1,12);
            HVAFig = figure;
            hold on;
            %% plot RV
            if ~all(isnan(RV.LE(VVASet==angleCenterVVA,:)))
                plot(HVASet,RV.LE(VVASet==angleCenterVVA,:),"-r");
                legendList{1}="左眼";  
            end
            if ~all(isnan(RV.ME(VVASet==angleCenterVVA,:)))
                plot(HVASet,RV.ME(VVASet==angleCenterVVA,:),"-k");
                legendList{2}="中眼";
            end
            if ~all(isnan(RV.RE(VVASet==angleCenterVVA,:)))
                plot(HVASet,RV.RE(VVASet==angleCenterVVA,:),"-b");
                legendList{3}="右眼";
            end
            title("RV(純or並存) vs HVA")
            subtitle(strcat("VVA",num2str(angleCenterVVA)," (0:並存, 1:純, -1:TIR)"))
            legendList(cellfun('isempty',legendList))=[];
            legend(legendList);
            xlabel("HVA");
            ylabel("RV(純or並存)")
            ylim([-2,2]);
            xlim([angleSweepHVA(1),angleSweepHVA(end)]); xticks(angleSweepHVA(1):angleStep:angleSweepHVA(end))
            
            FigRVCell{termCount} = HVAFig;

            if saveCurve == 1
                saveas(HVAFig,HVAStr);
            end
        end
        %% VVA
        if whichVATerm == 2
            legendList = cell(1,9);
            VVAFig = figure;
            hold on;
            %% plot Aim Sphere Angle
            if ~all(isnan(RV.LE(:,HVASet==angleCenterHVA)))
                plot(VVASet,RV.LE(:,HVASet==angleCenterHVA),"-r");
                legendList{1}="左眼"; 
            end
            if ~all(isnan(RV.ME(:,HVASet==angleCenterHVA)))
                plot(VVASet,RV.ME(:,HVASet==angleCenterHVA),"-k");
                legendList{2}="中眼"; 
            end
            if ~all(isnan(RV.RE(:,HVASet==angleCenterHVA)))
                plot(VVASet,RV.RE(:,HVASet==angleCenterHVA),"-b");
                legendList{3}="右眼";
            end
            title("RV(純or並存) vs VVA")
            subtitle(strcat("HVA",num2str(angleCenterHVA)," (0:並存, 1:純, -1:TIR)"))
            legendList(cellfun('isempty',legendList))=[];
            legend(legendList);
            xlabel("VVA");
            ylabel("RV(純or並存)")
            ylim([-2,2]);
            xlim([angleSweepVVA(1),angleSweepVVA(end)]); xticks(angleSweepVVA(1):angleStep:angleSweepVVA(end)) 

            FigRVCell{termCount} = VVAFig;
            if saveCurve == 1
                saveas(VVAFig,VVAStr);
            end
        end
    end
    cprintf("完成\n")
end
function gridRVFigCell = surfRV(RV,WD,VVASet,HVASet,M00GridShowArray,M00VZALineArray)

    showLeftEye = M00GridShowArray{1};showMiddleEye = M00GridShowArray{2};showRightEye = M00GridShowArray{3};
    showRV = M00GridShowArray{10};
    GridCustomString = M00GridShowArray{7};writeGrid = M00GridShowArray{8};
    plotVZALine = M00VZALineArray{1};VZAArray = M00VZALineArray{2};
    numII = M00VZALineArray{3};maxFinal = M00VZALineArray{4};

    [Y,X] = meshgrid(HVASet,VVASet);
    gridRVFigCell = cell(1,3);
    showIndex = [% RV
                 showLeftEye,showRV;showMiddleEye,showRV;showRightEye,showRV];
    showString = [% RV
                 "Left Eye","RV(純or並存)";"Mid Eye","RV(純或並存)";"Right Eye","RV(純或並存)"];
    RVIndex = {% RV
                RV.LE;RV.ME;RV.RE};
    
    for whichGrid = 1:3
        eyeShow = showIndex(whichGrid,1);
        analysisShow = showIndex(whichGrid,2);
        eyeStr = showString(whichGrid,1);
        analysisStr = showString(whichGrid,2);
        if eyeShow == 0 || analysisShow == 0
            continue
        end
        RVData = RVIndex{whichGrid};
        % surf
        gridFig = figure;
        surf(X',Y',RVData')
        view(90,90)
        axis equal
        colorbar
        xlim([VVASet(1) VVASet(end)])
        ylim([HVASet(1) HVASet(end)])
        title(strcat("RV(純or共存) distribution @ VA (",eyeStr," ",analysisStr,")"))
        subtitle("(0:並存, 1:純, -1:TIR)")
        xlabel("VVA")
        ylabel("HVA")
        % VZALine
        if plotVZALine == 1
           VZA = VZAArray(numII,:); % HVA- HVA+ VVA- VVA+ OOVA(HVA=0)
           VZAXY = [VZA(5) VZA(3) VZA(5) VZA(4) VZA(5);VZA(1) 0 VZA(2) 0 VZA(1)]; % L U R D L
           hold('on')
           plot3(VZAXY(1,:),VZAXY(2,:),[maxFinal,maxFinal,maxFinal,maxFinal,maxFinal],'r','LineWidth',1)
        end
        % write figure
        if writeGrid == 1
            saveas(gridFig,strcat("(RV(純or共存) VAGrid) ",eyeStr,"_",analysisStr,"_WD",num2str(WD),GridCustomString,".png"));
        end
        gridRVFigCell{whichGrid} = gridFig;
    end
end