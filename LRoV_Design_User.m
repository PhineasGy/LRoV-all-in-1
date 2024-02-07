%% LRoV Design all in one
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

% < general >
% note: 
% 1. focus on midpoint, EI=0 at default. (customization support)
% 2. force GRL mode off.
designEI = 0;                           % replace EIHor
designPosition = 0;                     % -1 up, 0 mid, 1 down

LouieAnalysis = 1;                      % for bubble plot
    M00TargetStep = 3;
    M00TargetLow = 12; M00TargetHigh = 14;
    HardVATargetStep = 3;
    HardVATargetLow = 15; HardVATargetHigh = 17;

lensRadiusPool = linspace(1,3,10);
lensPitchPool = 1;
glassThicknessPool = linspace(1,6,10);

% table 處理
varName = {'Lens_radius','Lens_pitch','glass_thickness'};
targetName = {'CDP','focal','M00','RealVirtual','HardVA'};

% condition setup
condition = @(c,T)  abs(T.HardVA) > c(1) &...   % 硬體視角 最小值
                    abs(T.HardVA) < c(2) &...   % 硬體視角 最大值
                    T.CDP > c(3) & ...          % CDP 最小值
                    T.CDP < c(4) & ...          % CDP 最大值
                    T.M00 > c(5) & ...          % M00 最小值
                    T.M00 < c(6);               % M00 最大值
% 極值輸入
c = zeros(1,6);
c(1) = 12;  % HardVA min
c(2) = 20;  % HardVA max
c(3) = 0;   % CDP min
c(4) = 0;   % CDP max
c(5) = 10;  % M00 min
c(6) = 16;  % M00 max

RDP = 0;

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

% AUF setup                                 % auto apply when CDP < 0 or GRL Mode is on
AUFMode = 0;                                % 0: force AUFMode to be off (even when GRL Mode)
    widthStep = 0.1;                        % AUF step (mm)
    widthStart = 0.1;                       % AUF starting position (mm)

% other option
preciseGP = 0;                              % 是否使用 精準 Prism 追跡 (隨時更新 PBA)
softLLTracing = 0;                          % 是否使用 software LL 追跡方式

% --------------------------------------------------------- %
%% Viewing Condition %%
% --------------------------------------------------------- %
WD = 400;                        % viewing distance (raidus direction) (mm)
thetaPolarAngle = 30;                  % VVA (Z axis toward X Axis) (degree)
phiAzimuthalAngle = 0;                 % HVA (X Axis toward Y Axis) (degree)
systemTiltAngle = 0;                        % 系統傾斜角度 (轉向觀測者方向)
eyeMode = 0;                              % -1:leftEye; 1:rightEye; 0: midEye; -1:2:1 or [-1,1]: bino
binoDistance = 60;                          % if leftEye or rightEye: distance between two eyes (mm)
pupilSize = 0;                    % pupil radius (mm)
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
% < 不會用到此處 lensRadius >
lensRadius = 1.674;                         % LL radius (mm)        < 不會用到 >
lensThicknessEI0 = 1.524;                   % LL total layer thickness (mm) (keep LensSubstrate method) 20230321
% < 不會用到此處 lensPitch >
lensPitch = 1.001;                          % LL pitch (mm)         < 不會用到 >
glass_n = 1.52;                             % glass refractive index
% < 不會用到此處 glassThickness >
glassThickness = 3.760;                     % glass thickness (mm)  < 不會用到 >
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
data = LRoV_Design_Process(data);
disp("-------------------------------------------")
disp("Done!")
try
    T = data.T;
    open T;
    finalResult = data.finalResult;
    open finalResult;
    targetIndArray = data.targetIndArray;
    open targetIndArray;
catch
end
disp(strcat("總花費時間: ",num2str(toc(tVeryBegining))));
%% show all variables
% 自行於 command window 輸入: structvars(5,data) 並 Enter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function data = LRoV_Design_Process(data) 
    
    %% Design pre-processing (design code only)
    data = pre_design(data);
    lensRadiusPool = data.lensRadiusPool;   lensPitchPool = data.lensPitchPool;    glassThicknessPool = data.glassThicknessPool;
    lensPitch_Design = data.lensPitch_Design;lensRadius_Design = data.lensRadius_Design;glassThickness_Design= data.glassThickness_Design;
    sampleSize = data.sampleSize;

    %% Design Mode Loop Start %%
    designCount = 0;
    for lensRadius = lensRadiusPool
    for lensPitch = lensPitchPool %#ok<*ALIGN> 
    for glassThickness = glassThicknessPool
        designCount = designCount + 1;                data.designCount = designCount;       data.numII = designCount;
        data.lensRadius = lensRadius;   data.lensPitch = lensPitch;     data.glassThickness = glassThickness;
        continue_flag_desgin = 0;       data.continue_flag_desgin = continue_flag_desgin;
        lensPitch_Design(designCount) = lensPitch;
        lensRadius_Design(designCount) = lensRadius;
        glassThickness_Design(designCount) = glassThickness;
%         structvars(5,data)
        
        %% 前處理 (紀錄 CDP focal HardVA)
        data = pre_before_any_loop("Design",data);                              % save in BAL.mat
        if data.continue_flag_desgin; continue;end
%         structvars(5,data)

        %% preprocessing in parameter loop
        data = pre_in_parameter_loop("Design",data);         
%         structvars(5,data)
        
        %% tracing loop (只輸出紀錄 M00 和 RV)
        output = func_tracing("Design",data);
        data.M_Design = output{1};
        data.RV_Design = output{2};
%         structvars(5,data)
        
        %% progress bar
        eachPoint = round(sampleSize/10);
        if mod(designCount,eachPoint)==0
            cprintf('err',strcat(".. ",num2str(fix(designCount/eachPoint)),"0%% .."))
        end
        if designCount == sampleSize
            cprintf('err',"done.\n")
            pause(1)      
        end
    end;end;end % Design Loop

    %% Design Mode: Table Creation
    % For Louie Analysis 20230112
    targetName = data.targetName;   varName = data.varName;
    CDP_Design = data.CDP_Design;   focal_Design = data.focal_Design;   
    M_Design = data.M_Design;   HardVA_Design = data.HardVA_Design;     RV_Design = data.RV_Design;

    numTerm = length(lensRadius_Design);
    numArray = [1:numTerm]';
    totalName = [{'Term'},varName,targetName];
    T = table(numArray,lensRadius_Design,lensPitch_Design,glassThickness_Design,...
            CDP_Design,focal_Design,M_Design,RV_Design,HardVA_Design,...
              'VariableNames',totalName);
    %% Access Data:
    % EX: S = T(T.Lens_radius==0.3,:);
    condition = data.condition; c = data.c;

    beep
    finalResult = T(condition(c,T),:);
    if isempty(finalResult)
        disp("no solution found. (with condition)")
        disp("Raw Data Pool 見 T")
        open T
    else
        disp(finalResult)
        disp("優化解見 finalResult. Raw Data Pool 見 T")
        open T
        open finalResult
    end
    %% For Louie Analysis 20230112
    % Find 九宮格點
    if ~isempty(finalResult)
        LouieAnalysis = data.LouieAnalysis; 
        M00TargetLow = data.M00TargetLow;       M00TargetHigh = data.M00TargetHigh;         M00TargetStep = data.M00TargetStep;
        HardVATargetLow = data.M00TargetLow;    HardVATargetHigh = data.M00TargetHigh;      HardVATargetStep = data.M00TargetStep;
    
        if LouieAnalysis == 1
            M00Candidate = finalResult.M00;
            HardVACandidate = finalResult.HardVA;
            [nineArray_M00, nineArray_HardVA] = meshgrid(linspace(M00TargetLow,M00TargetHigh,M00TargetStep),linspace(HardVATargetLow,HardVATargetHigh,HardVATargetStep));
            targetIndArray = zeros(M00TargetStep*HardVATargetStep,1);
            temp0112_2 = 0;
            for whichM00 = 1:M00TargetStep
                for whichHardVA = 1:HardVATargetStep
                    temp0112_2 = temp0112_2 + 1; 
                    targetPoint = [nineArray_M00(1,whichM00),nineArray_HardVA(whichHardVA,1)];
                    temp0112_1 = vecnorm([abs(M00Candidate-targetPoint(1)),abs(HardVACandidate-targetPoint(2))],2,2);
                    [~,targetInd] = min(temp0112_1);
                    targetIndArray(temp0112_2) = table2array(finalResult(targetInd,1));
                end
            end
            disp("Louies Analysis Variable: targetIndArray")
            open targetIndArray
        end
    end

    %% Loop end
    try
        data.T = T;
        data.finalResult = finalResult;
        data.targetIndArray = targetIndArray;
    catch
    end
%     structvars(5,data) % structure 賦值: 僅作複製貼上使用
end