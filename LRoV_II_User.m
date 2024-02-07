%% LRoV II all in one 
% 當前版本: V1.37
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
EIHor = 999;                                % which EI (EX: -60:60) (999: all)
% write, show 
showII = 0;                                 % 0/1.
writeII = 1;                                % 0/1.
writeSpa = 0;                               % 0/1: spatial apodization switch
    spaHorSize = 165.24;                    % spa horizontal Size (mm)
    spaVerSize = 293.76;                    % spa vertical Size (mm)
    zero2one = 1;                           % 0/1: 0-->1 switch
% wedge prism
wedgePrism = 0;                             % note: WP_PRA = GP_PRA
    prismSizeHor = 225.24;                  % actual length (no use)
    prismSizeVer = 343.76;                  % actual length
    wedgePBA = -5;
    wedgePRA = 0;                           % usually 0
% aspherical
aspherical = 0;                             % pupil edge inverse at default
    asphericalMat = "(asph) Aperture1.mat";
% pupil edge inverse
forcePupilEdgeInverse = 0;                  % note: set to 1 if CDP < 0 (manually)
% GRL
GRLMode = 1;                                % 0/1: gradient lens radius
    GRLMat = "GRL-F13L20,LRA12,E2C0.73-1.25_0322 (KeepSub).mat";                     % GRLMat = "",[],'' to choose file from folder
% seg
segmentMode = 2;                            % 0: noSeg; 2: segN
    % segN mode: (將固定段長 "verSizeForSeg/segNum" 以調整分段數)
    % verSizeForSeg 建議與 LL ver Size 同值 
    verSizeForSeg = 311.7;
    segNum = 5;                             % 段數 (segNum = 5 --> 五段追跡六點(頭尾))
    segFit = 0;                             % 是否 近似分段
        base_segNum = 300;                  % 近似分段的 target
        polyFit = 1;                        % 近似分段的方法 0:線性
            polyNum = 2;                    % 多項式次數
% M00
RRRMode = 1;                                % 0: off, 1: RRR/ManualM
    RRRConstant = 0;                        % 0: off, if RRRMode == 1: manually control M (same M for all position)
MOffset = 1;                                % M00 = M00 * this value
% RR - related
RDP_PLArray = [40];                         % image height (mm)
RRFilterHalfSizeHor = 0;                    % RR mean filter hor size ==> this value * 2 + 1 % 目前設 1 接近軟體
RRFilterHalfSizeVer = 0;                    % RR mean filter ver size ==> this value * 2 + 1 % 目前設 1 接近軟體
isRRShift = 1;                              % whether RR content is shifted to center or not
% debug Mode (no need to input image) (II-ROI version) (VZARP)
debugMode = 1;                              % 是否進入全白 II-ROI mode
    colorMode = 1;                          % 0: all white, 1: R(右眼) G(左眼) B(中眼)
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
thetaPolar_PLArray = [30];                  % VVA (Z axis toward X Axis) (degree)
phiAzimuthal_PLArray = [0];                 % HVA (X Axis toward Y Axis) (degree)
systemTiltAngle = 0;                        % 系統傾斜角度 (轉向觀測者方向)
    RDPModifierMode = 0;                    % 是否將場景進行傾倒補償
eyeMode = [-1 1];                           % -1:leftEye; 1:rightEye; 0: midEye; -1:2:1 or [-1,1]: bino
binoDistance = 60;                          % if leftEye or rightEye: distance between two eyes (mm)
pupilSize_PLArray = [08];                   % pupil radius (mm)
% --------------------------------------------------------- %
%% System Module %%
% --------------------------------------------------------- %
% upper part (prism)
prismMode = 0;                              % 0/1.
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
glassThickness = 3.663;                     % glass thickness (mm)
displayCover_n = 1.51;                      % display cover refractive index
displayCoverThickness = 0.264;              % display cover thickness (mm)
OCA_n = 1.49;                               % OCA refractive index
OCAThickness = 0;                           % OCA thickness (mm)

% Panel (Default:13.3 4K Portrait Mode)
panelSizeHor = 165.24;                      % panel horizontal size (mm)
panelSizeVer = 293.76;                      % panel vertical size (mm)
panelPixelNumHor = 2160;                    % panel horizontal pixel number (resolution)
panelPixelNumVer = 3840;                    % panel vertical pixel number (resolution)
pixelSize = panelSizeVer/panelPixelNumVer;  % (mm)
q_LTRPMode = 0;                             % seg301 + 16Kdownto4K(binary) mode

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
    display_RDP = 1;
    display_SegmentMode = 1;
    display_RRRmode = 1;
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
    display_qLTRP = 1;
    customLine= 'allin1';                       % extra custom line after the naming rules 
break
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% auto-input
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
data = LRoV_II_Process(data);
disp("-------------------------------------------")
disp("Done!")
disp(strcat("總花費時間: ",num2str(toc(tVeryBegining))));
%% show all variables
% 自行於 command window 輸入: structvars(5,data) 並 Enter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function data = LRoV_II_Process(data) 
    %% preprocessing before any loop
    data = pre_before_any_loop("II",data);                              % save in BAL.mat

    %% 計算分段點
    segM00 = getSeg("II",data);                                         % update segM00.segmentPoint_Matrix only
    data.segM00 = segM00;

    %% data assignment
    while 1
    totalNumFile = data.totalNumFile; imageFilename = data.imageFilename; imagePathname = data.imagePathname;
    panelPixelNumVer = data.panelPixelNumVer; panelPixelNumHor = data.panelPixelNumHor;
    debugMode = data.debugMode;
    WD_PLArray = data.WD_PLArray;
    thetaPolar_PLArray = data.thetaPolar_PLArray;
    phiAzimuthal_PLArray = data.phiAzimuthal_PLArray;
    pupilSize_PLArray = data.pupilSize_PLArray;
    RDP_PLArray = data.RDP_PLArray;
    break
    end

    %% 讀取第 N 張圖, Image Loop
    numII = 0; data.numII = numII;
    for whichFile = 1:totalNumFile 
        while 1 % 讀取原圖 (remove depth image)
            if debugMode == 0
                if totalNumFile==1
                    name = imageFilename;
                else
                    name = imageFilename{whichFile};
                end
                imageFilepath = fullfile(imagePathname, name);
                originalImage = im2double(imread(imageFilepath)); % [0 255] unit8 --> [0 1] double
            elseif debugMode == 1
                originalImage = zeros(panelPixelNumVer,panelPixelNumHor);
                imageFilepath = "";
            end 
            % data saved
            data.imageFilepath = imageFilepath;
            data.originalImage = originalImage;
        break % while 1
        end

        %% Parameter Loop
        if size(thetaPolar_PLArray,2)~=size(phiAzimuthal_PLArray,2);ThrowError("General",9);end
        for WD_num=1:size(WD_PLArray,2) %#ok<ALIGN> % WD
        for VVA_num=1:size(thetaPolar_PLArray,2) %#ok<ALIGN> % theta
        for PS_num=1:size(pupilSize_PLArray,2) %#ok<ALIGN> % pupil size
        for RDP_num=1:size(RDP_PLArray,2) % floor ceil
        %% PL update, data update
        WD = WD_PLArray(1,WD_num);                              data.WD = WD;
        thetaPolarAngle = thetaPolar_PLArray(1,VVA_num);        data.thetaPolarAngle = thetaPolarAngle;
        phiAzimuthalAngle = phiAzimuthal_PLArray(1,VVA_num);    data.phiAzimuthalAngle = phiAzimuthalAngle;
        pupilSize = pupilSize_PLArray(1,PS_num);                data.pupilSize = pupilSize;
        RDP = RDP_PLArray(1,RDP_num);                           data.RDP = RDP;
        RDP_original = RDP;                                     data.RDP_original = RDP_original;
        numII = numII + 1;                                      data.numII = numII;
%         structvars(5,data)

        %% output filename
        outputIIName = display_setup("II",data);                data.outputIIName = outputIIName;
%         structvars(5,data)

        %% preprocessing in parameter loop
        data = pre_in_parameter_loop("II",data);          
%         structvars(5,data)
        
        %% segM00 (if needed)
        if debugMode == 0 
            segM00 = getSegM00(data,1);                 % 1: for II , 2: for BLP ROI (exclusive to II_BLP Code)   
            if isequal(segM00.M00Parameter_Matrix,-1);ThrowError("II",7);end
            data.segM00 = segM00;
        end
%         structvars(5,data)
        %% tracing loop
        tTracing = tic;
        disp('-------------------------------------------');
        disp("< tracing.m 執行開始 >")
        output = func_tracing("II",data);
        disp("< tracing.m 執行完成 >")
        disp(strcat("花費時間: ",num2str(toc(tTracing)),"s"));
        disp('-------------------------------------------');
        data.RPpointSet_LE_wld = output{1,1}; data.RRpointSet_LE_wld = output{1,2};
        data.RPpointSet_ME_wld = output{2,1}; data.RRpointSet_ME_wld = output{2,2};
        data.RPpointSet_RE_wld = output{3,1}; data.RRpointSet_RE_wld = output{3,2};
        data.farrestDistanceVer = output{4,1}; data.farrestDistanceHor = output{4,2};
        TIRHappen = output{5,1};
        if TIRHappen == 1
            outputIIName_update = erase(outputIIName,".png");
            outputIIName_update = strcat(outputIIName_update,"_(TIR).png");
            data.outputIIName = outputIIName_update;
        end
        
        %% mapping loop
%         structvars(5,data)
        tMapping = tic;
        disp('-------------------------------------------');
        disp("< mapping.m 執行開始 >")
        II = func_mapping("II",data,"noBLP");
        disp("< mapping.m 執行完成 >")
        disp(strcat("花費時間: ",num2str(toc(tMapping)),"s"));
        disp('-------------------------------------------');
        
        end;end;end;end % Parameter Loop
    end % Image Loop
    %% Loop end
    % structvars(5,data) % structure 賦值: 僅作複製貼上使用
end