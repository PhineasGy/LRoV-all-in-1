%% LRoV M00Curve all in one
% 當前版本: V1.36
clear
clc
close all
tVeryBegining = tic;
%% Add paths
addpath([pwd '/tool']);                     % 綁定工具資料夾
% rmpath([pwd '/tool']);
disp('[info] function and example data Path added');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 使用者輸入 %%
while 1
%% Mode Switch % 亂七八糟功能區 %%
% --------------------------------------------------------- %
auto_input = 0;                             % 實驗性內容，存在 Debug 困難的風險 (請檢查變數型態是否正確)
    txt_file = "auto_input_list (sample).txt";
EIHor = 999;                                    % which EI (EX: -60:60) (999: all)
RDP = 0;
% (for both)
saveM00Mat = 0;
    M00MatStr = "";

autoM00Analysis = 1;                            % 0: manual, 1: auto
% (auto mode only) 
% [special mode]: [2 1] (HVA with VVA(max M00)) 
VATerm = [1 2];                                 % 1:HVA 2:VVA
angleStep = 10;                                 % must > 0
angleSweepVVA = [20 40];                        % absolute angle, must contain 2 value and (1) < (2).
angleSweepHVA = [-10 10];                       % absolute angle, must contain 2 value and (1) < (2).
angleCenterVVA = 30;                            % absolute angle, stop point
angleCenterHVA = 0;                             % absolute angle, stop point

exludeRVJoint = 1;                              % 是否排除掉虛實並存的位置 (M00 將記為 0)

plotM00andTIRCurveAuto = 1;                     % (auto mode only). plot M00 curve vs VA (avg,center,max)
    plotMax = 1;
    plotCenter = 0;
    plotAVG = 0;
    plotTIR = 0;
    plotAimSphere = 0;                          % 定位球面 Curve
    plotRV = 0;                                 % 虛實純or並存 Curve (記得要打開AUF: forceAUFOff = 0)
    saveCurve = 0;
    curveStr = "";

M00GridMode = 1;                                % TIR: 白掉
    showLeftEye = 0;
    showMiddleEye = 1;
    showRightEye = 0;
    showMax = 1;
    showCenter = 0;
    showAvg = 0;
    showAimSphere = 0;                          % 定位球面 Grid
    showRV = 0;                                 % 虛實純or並存 Grid (記得要打開AUF: forceAUFOff = 0)
    GridCustomString = "";
    writeGrid = 0;
    plotVZALine = 0;                         
        VZAArray = [-13,3,28,43,40;...
                    -13,13,28,48,40;...
                    -3,13,28,43,40;...
                    3,13,40,40,40];             % [HVA-,HVA+,VVA-,VVA+,OOVA;...for PL]
    
% wedge prism
wedgePrism = 0;                                 % note: WP_PRA = GP_PRA
    prismSizeHor = 225.24;                      % actual length (no use)
    prismSizeVer = 343.76;                      % actual length
    wedgePBA = -5;
    wedgePRA = 0;                               % usually 0

% aspherical
aspherical = 0;                                 % pupil edge inverse at default
    asphericalMat = "(asph) Aperture1.mat";
% pupil edge inverse
forcePupilEdgeInverse = 0;                      % note: set to 1 if CDP < 0 純虛像 (manually)
% GRL
GRLMode = 1;                                    % 0/1: gradient lens radius
    GRLMat = "GRL-F13L20,LRA12,E2C0.73-1.25_0322 (KeepSub).mat";                     % GRLMat = "",[],'' to choose file from folder
% seg
segmentMode = 2;                                % 0: noSeg; 2: segN
    % segN mode: (將固定段長 "verSizeForSeg/segNum" 以調整分段數)
    % verSizeForSeg 建議與 LL ver Size 同值 
    verSizeForSeg = 311.7;
    segNum = 4;                                 % 段數 (segNum = 4 --> 四段追跡五點(頭尾))

% AUF setup                                 % auto apply when CDP < 0 or GRL Mode is on
AUFMode = 0;                                % 0: force AUFMode to be off (even when GRL Mode)
    widthStep = 0.1;                        % AUF step (mm)
    widthStart = 0.1;                       % AUF starting position (mm)
% other option
preciseGP = 0;                              % 是否使用 精準 Prism 追跡 (隨時更新 PBA)
softLLTracing = 0;                          % 是否使用 software LL 追跡方式
overwrite = 0;                              % overwrite handle (for debug-design mode)
    % paramter: (1) term (2) radius (3) pitch (4) gap glass thickness
    parameter = [33053	1.660660661	1	3.626262626]; 
% --------------------------------------------------------- %
%% Viewing Condition %%
% --------------------------------------------------------- %
WD_PLArray = [400] ;                        % viewing distance (raidus direction) (mm)
thetaPolarAngle = 30;                       % VVA (Z axis toward X Axis) (degree)
phiAzimuthalAngle = 0;                      % HVA (X Axis toward Y Axis) (degree)
systemTiltAngle = 0;                        % 系統傾斜角度 (轉向觀測者方向)
eyeMode = [-1 0 1];                         % -1:leftEye; 1:rightEye; 0: midEye; (支援 [-1 0 1])
binoDistance = 60;                          % if leftEye or rightEye: distance between two eyes (mm)
pupilSize_PLArray = [0];                    % pupil radius (mm)

% --------------------------------------------------------- %
%% System Module %%
% --------------------------------------------------------- %
% upper part (prism)
prismMode = 1;                              % 0/1.
GPMode = 1;                                 % 0/1: gradient prism
PRA = -10;                                  % prism array rotation angle (+:counterclockwise) (degree)
prism_n = 1.49;                             % prism refractive index (default white)
prismSubstrate = 1.934;                     % prism substrate layer thickness (mm)
prismStructure = 0.066;                     % prism structure layer thickness (mm)
PBA = [41.5];                               % prism bottom angle: autoGP/noGP [N]; manualGP [N1,N2,...](N1>N2...) (degree)
WDForAutoGP = 550;                          % WD setup for AutoGP case
prismLensGap = 0.15;                        % air gap between "prism structure mid" and "lens top" (mm)

% lower part (others)
LRA = 12;                                   % LL array rotation angle (+:counterclockwise) (-90 < LRA < 90) (degree)
lens_n = 1.49;                              % LL refractive index
lensRadius = 1.674;                         % LL radius (mm)
lensThicknessEI0 = 1.524;                   % LL total layer thickness (mm) (keep LensSubstrate method) 20230321
lensPitch = 1.001;                          % LL pitch (mm)
glass_n = 1.52;                             % glass refractive index
glassThickness = 3.760;                     % glass thickness (mm)
displayCover_n = 1.51;                      % display cover refractive index
displayCoverThickness = 0.264;              % display cover thickness (mm)
OCA_n = 1.49;                               % OCA refractive index
OCAThickness = 0;                           % OCA thickness (mm)

% Panel (Default:13.3 4K Portrait Mode)
panelSizeHor = 165.24;                      % panel horizontal size (mm)
panelSizeVer = 293.76;                      % panel vertical size (mm)

% LL Size
isLLSameAsPanel = 0;                        % 0/1.
lensArraySizeHor = 186.5;                   % if isLLSameAsPanel == 0 (mm)
lensArraySizeVer = 311.7;                   % if isLLSameAsPanel == 0 (mm)
% --------------------------------------------------------- %
%% Output/Display Filename %%
% --------------------------------------------------------- %
outputManual = 1;                               % 0: named by number; 1: named by manual control
    display_VA = 1;                             % EX: ..._WDR500_VVA30_HVA15_... (before STA)
    display_STA = 1;
    display_PupilSize = 1;
    display_EyeMode = 1;
    display_LensInfo = 1;
        showLRA = 1;
        showGRL = 1;
        showAsph = 1;
        showAUF = 1;
    display_PrismInfo = 1;                      % HasPrism PRA GPMode(WDGP if AutoGP) WPMode
        showPRA = 1;
        showGP = 1;
        showWP = 1;
    display_CDP = 1;
    customLine= 'allin1';                       % extra custom line after the naming rules 
break
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
while auto_input == 1
    disp("[info] 自動輸入模式開啟。(注意: 將覆蓋原來輸入值)")
    original_input = ws2struct; original_input = rmfield(original_input,"auto_input");
    txt2 = auto_input_check(txt_file,original_input);
    for ii = 1:length(txt2)
        txt_temp = txt2{ii};
        eval(txt_temp);
    end
    clear txt2 ii txt_temp original_input 
    break
end
clear auto_input txt_file
data = ws2struct; 
% structvars(5,data) % = structure 賦值: 僅作複製貼上使用
data = LRoV_M00Curve_Process(data);
disp("-------------------------------------------")
disp("Done!")
disp(strcat("總花費時間: ",num2str(toc(tVeryBegining))));
%% show all variables
% 自行於 command window 輸入: structvars(5,data) 並 Enter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function data = LRoV_M00Curve_Process(data) 
    %% preprocessing before any loop
    data = pre_before_any_loop("M00Curve",data);                             % save in BAL.mat
    %% 分段
    % M00Curve 必為奇數個分段點 (即會含中點)
    segM00 = getSeg("M00Curve",data);                                              % segment only, no M00
    data.segM00 = segM00;

    %% data assignment
    while 1
    WD_PLArray = data.WD_PLArray;
    pupilSize_PLArray = data.pupilSize_PLArray;
    break
    end
    numII = 0; data.numII = numII;
    %% Parameter Loop
    for WD_num=1:size(WD_PLArray,2) %#ok<ALIGN> % WD
    for PS_num=1:size(pupilSize_PLArray,2) % pupil size
        %% PL update, data update
        WD = WD_PLArray(1,WD_num);                              data.WD = WD;
        pupilSize = pupilSize_PLArray(1,PS_num);                data.pupilSize = pupilSize;
        numII = numII + 1;                                      data.numII = numII;
        termNum = 0;                                            data.termNum = termNum;

        %% VA Loop
        VATerm = data.VATerm;
        thetaPolarAngle = data.thetaPolarAngle; phiAzimuthalAngle = data.phiAzimuthalAngle;
        angleCenterVVA = data.angleCenterVVA; angleCenterHVA = data.angleCenterHVA;
        HVASet = data.HVASet; VVASet = data.VVASet;

        for whichVATerm = VATerm % HVA- HVA+ VVA- VVA+ (in order)
            data.whichVATerm = whichVATerm;
            termNum = termNum + 1;                              data.termNum = termNum;
            switch whichVATerm
                case 0 % Manual Mode
                    thetaPool = thetaPolarAngle;
                    phiPool = phiAzimuthalAngle;  
                case 1 % HVA
                    phiPool = HVASet;
                    thetaPool = repmat(angleCenterVVA,[1,length(phiPool)]);
                    disp("----------------------");
                    disp("HVA checking ......");
                case 2 % VVA
                    thetaPool = VVASet;
                    phiPool = repmat(angleCenterHVA,[1,length(thetaPool)]);
                    disp("----------------------");
                    disp("VVA checking ......");
                otherwise
                    ThrowError("M00Curve",3)
            end
            data.thetaPool = thetaPool; data.phiPool = phiPool;
            VAPool = [thetaPool;phiPool]; data.VAPool = VAPool;
            autoTermString = ["HVA","VVA"]; data.autoTermString = autoTermString;
            
            %% output filename
%             structvars(5,data)
            outputIIName = display_setup("M00Curve",data);                data.outputIIName = outputIIName;

            for whichVAElement = 1:size(VAPool,2) % [theta;phi]
                T_eachVAElement = tic;
                data.whichVAElement = whichVAElement;
                TIRHappen = 0;                              data.TIRHappen = TIRHappen;
                %% Parameter Loop Assignment
                while 1 
                thetaPolarAngle = VAPool(1,whichVAElement); data.thetaPolarAngle = thetaPolarAngle;
                phiAzimuthalAngle = VAPool(2,whichVAElement); data.phiAzimuthalAngle = phiAzimuthalAngle;
                break % while 1
                end
%                 structvars(5,data)

                %% preprocessing in parameter loop
                data = pre_in_parameter_loop("M00Curve",data);            
%                 structvars(5,data)

                %% tracing loop
                output = func_tracing("M00Curve",data);
                data.M00MatrixPadded = output{1};
                data.ASMatrixPadded = output{2};
                data.RVMatrixPadded = output{3};
%                 structvars(5,data)
    
                %% M00 Analysis Part 1: 紀錄 
                data = M00AnalysisPart1(data);

                %% end analysis
                disp(strcat("花費時間: ",num2str(toc(T_eachVAElement)),"s"));
                disp('-------------------------------------------');
            end % VA Loop (VVA HVA)

            %% special mode check 
            M00GridMode = data.M00GridMode;
            M00Max = data.M00Max; M00Center = data.M00Center; M00AVG = data.M00AVG; 
            VVACenterArray = data.VVACenterArray;
            % 1. find the VVA with max M00
            % 2. set this VVA as VVAcenter for HVA
            if isequal(VATerm,[2 1]) && whichVATerm == 2 && M00GridMode == 0
                [tempLE,indLE] = max(M00Max.LE(:,HVASet==angleCenterHVA));  data.tempLE = tempLE; data.indLE = indLE;
                [tempME,indME] = max(M00Max.ME(:,HVASet==angleCenterHVA));  data.tempME = tempME; data.indME = indME;
                [tempRE,indRE] = max(M00Max.RE(:,HVASet==angleCenterHVA));  data.tempRE = tempRE; data.indRE = indRE;
                indArray = [indLE,indME,indRE];                             data.indArray = indArray;
                [~,indtotal] = max([tempLE,tempME,tempRE]);
                VVATarget = VVASet(indArray(indtotal));                     data.VVATarget = VVATarget;
            
                % VVATarget --> angleCenterVVA
                % processing
                angleCenterVVA = VVATarget;                                 data.angleCenterVVA = angleCenterVVA;
                M00IndexHVACell = nan(length(VVASet),length(HVASet));       data.M00IndexHVACell = M00IndexHVACell;
                M00IndexHVACell(VVASet==angleCenterVVA,:) = HVASet;         data.M00IndexHVACell = M00IndexHVACell;
                M00Max.indexHVA = M00IndexHVACell;                          data.M00Max = M00Max;
                M00Center.indexHVA = M00IndexHVACell;                       data.M00Center = M00Center;
                M00AVG.indexHVA = M00IndexHVACell;                          data.M00AVG = M00AVG;
            end
            if M00GridMode == 1 && termNum < length(VATerm)
                angleCenterVVA = VVACenterArray(termNum+1);                 data.angleCenterVVA = angleCenterVVA;
                M00IndexHVACell = nan(length(VVASet),length(HVASet));       data.M00IndexHVACell = M00IndexHVACell;
                M00IndexHVACell(VVASet==angleCenterVVA,:) = HVASet;         data.M00IndexHVACell = M00IndexHVACell;
                M00Max.indexHVA = M00IndexHVACell;                          data.M00Max = M00Max;
                M00Center.indexHVA = M00IndexHVACell;                       data.M00Center = M00Center;
                M00AVG.indexHVA = M00IndexHVACell;                          data.M00AVG = M00AVG;
            end
        end % VA Loop (VATerm 1:4)
%         structvars(5,data)
        % M00 Analysis Part 2: 分析
        data = M00AnalysisPart2(data);

    end;end % Parameter Loop
    %% Loop end
    % structvars(5,data) % structure 賦值: 僅作複製貼上使用
end