%% LRoV XYGrid all in one
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

% XY Grid 模式
M_grid = 1;                                 % -1: TIR happen
RP_grid = 0;                                % RP 總寬度, -1: TIR happen
RV_grid = 0;                                % 1: 實像, 0: 虛像, -1: TIR happen
TIR_grid = 0;                               % 1: TIR, 0: no TIR
AimSphere_grid = 0;                         % 不支援 AUF (結果會有誤)??, -1: TIR happen

% XY Grid 其他設定
targetWithinPanel = 1;                      % 是否只紀錄 RP 在面板內的值
showMaxMin = 1;                             % 是否在 Grid 中顯示最大值以及最小值
lensCenterUserDefined_Hor = linspace(-186.5/2,186.5/2,21); % note: "lens Center"
lensCenterUserDefined_Ver = linspace(-311.7/2,311.7/2,41); % note: "lens Center"
writeFig = 1;                               % 

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
% RR - related
RDP_PLArray = [0];                         % image height (mm)
% AUF setup                                 % auto apply when CDP < 0 or GRL Mode is on
AUFMode = 0;                                % 0: force AUFMode to be off (even when GRL Mode)
    widthStep = 0.1;                        % AUF step (mm)
    widthStart = 0.1;                       % AUF starting position (mm)
% other option
preciseGP = 0;                              % 是否使用 精準 Prism 追跡 (隨時更新 PBA)
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
eyeMode = [0];                              % -1:leftEye; 1:rightEye; 0: midEye; -1:2:1 or [-1,1]: bino
binoDistance = 60;                          % if leftEye or rightEye: distance between two eyes (mm)
pupilSize_PLArray = [0];                   % pupil radius (mm)
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
    display_RDP = 1;
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
data = LRoV_XYGrid_Process(data);
disp("-------------------------------------------")
disp("Done!")
disp(strcat("總花費時間: ",num2str(toc(tVeryBegining))));
%% show all variables
% 自行於 command window 輸入: structvars(5,data) 並 Enter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function data = LRoV_XYGrid_Process(data)
    %% preprocessing before any loop
    data = pre_before_any_loop("XYGrid",data);                              % save in BAL.mat

    %% data assignment
    while 1
    WD_PLArray = data.WD_PLArray;
    thetaPolar_PLArray = data.thetaPolar_PLArray;
    phiAzimuthal_PLArray = data.phiAzimuthal_PLArray;
    pupilSize_PLArray = data.pupilSize_PLArray;
    RDP_PLArray = data.RDP_PLArray;
    break
    end

    %% Parameter Loop
    numII = 0; data.numII = numII;
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
    numII = numII + 1;                                      data.numII = numII;
%     structvars(5,data)
    
    %% output filename
    outputIIName = display_setup("XYGrid",data);                data.outputIIName = outputIIName;
%     structvars(5,data)
    
    %% preprocessing in parameter loop
    data = pre_in_parameter_loop("XYGrid",data);          
%     structvars(5,data)
    
    %% tracing loop
    LCLengthVer = data.LCLengthVer; LCLengthHor = data.LCLengthHor;
    M_XYGrid = data.M_XYGrid;   RP_XYGrid = data.RP_XYGrid;
    RV_XYGrid = data.RV_XYGrid; TIR_XYGrid = data.TIR_XYGrid;
    AS_XYGrid = data.AS_XYGrid;
    XYGridCount = 0;
    for whichLCVer = 1:LCLengthVer % M00 distribution loop
        for whichLCHor = 1:LCLengthHor % M00 distribution loop
            XYGridCount = XYGridCount + 1;
            data.whichLCVer = whichLCVer;   data.whichLCHor = whichLCHor;
%             structvars(5,data)
            output = func_tracing("XYGrid",data);
            %% 紀錄參數
            M_XYGrid(whichLCVer,whichLCHor) = output(1);
            RP_XYGrid(whichLCVer,whichLCHor) = output(2);
            RV_XYGrid(whichLCVer,whichLCHor) = output(3);
            TIR_XYGrid(whichLCVer,whichLCHor) = output(4);
            AS_XYGrid(whichLCVer,whichLCHor) = output(5);
        end
    end
    data.M_XYGrid = M_XYGrid; data.RP_XYGrid = RP_XYGrid;
    data.RV_XYGrid = RV_XYGrid; data.TIR_XYGrid = TIR_XYGrid;
    data.AS_XYGrid = AS_XYGrid;
%     structvars(5,data)
    
    %% 作圖
    plotXYGrid(data)

    end;end;end;end % Parameter Loop

    %% Loop end
    % structvars(5,data) % structure 賦值: 僅作複製貼上使用
end