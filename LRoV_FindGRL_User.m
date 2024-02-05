%% LRoV FindGRL all in one
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

EIHor = 999;                                % which EI (EX: -60:60) (999: all)

% general
plotGRL = 1;
writeGRL = 1;

% GRL setup
LRStart = 1.6;                              % radius starting point (mm)
LREnd = 1.8;                                % radius ending point (mm)
    % choose one of method below to make the Pool, another parameter set to [];
LRstep = 0.001;                             % radius step (mm) % method 1: Pool = LRStart:LRstep:LREnd;
LRNum = [];                                 % radius count (#) % method 2: Pool = linspace(LRStart,LREnd,LRNum);

RDP = 0;                                    % (mm)
% M target setup
MAB_E2C = 1;                                % (Auto) MAB Ratio (Edge/Center) (M @ RDPA with PSB)
manualE2CRatio = 0;                         % input MRatioArray
    MRatioArray = [];                       % loading data if set to [];
    % example: [linspace(1,1,128),1,linspace(1,1.4,128)]; 
manualMDesired = 0;                         % manualE2CRatio and manualMDesired cannot be both 1.
    MDesiredArray = [];                     % loading data if set to [];

% wedge prism
wedgePrism = 0;                             % 
    prismSizeHor = 225.24;                  % actual length (no use)
    prismSizeVer = 343.76;                  % actual length
    wedgePBA = -5;
    wedgePRA = 0;                           % usually 0

% pupil edge inverse
forcePupilEdgeInverse = 0;                  % note: set to 1 if CDP < 0 (manually)

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
eyeMode = [0];                              % 僅支援單眼 -1:leftEye; 1:rightEye; 0: midEye;
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
lensRadius = 1.674;                         % 中心 Lens (radius) (mm)
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
data = LRoV_FindGRL_Process(data);
disp("-------------------------------------------")
disp("Done!")
disp(strcat("總花費時間: ",num2str(toc(tVeryBegining))));
%% show all variables
% 自行於 command window 輸入: structvars(5,data) 並 Enter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function data = LRoV_FindGRL_Process(data) 
    %% preprocessing before any loop
    data = pre_before_any_loop("FindGRL",data);                              % save in BAL.mat

    %% data assignment
    while 1
    WD_PLArray = data.WD_PLArray;
    thetaPolar_PLArray = data.thetaPolar_PLArray;
    phiAzimuthal_PLArray = data.phiAzimuthal_PLArray;
    pupilSize_PLArray = data.pupilSize_PLArray;
    break
    end

    %% 讀取第 N 張圖, Image Loop
    numII = 0; data.numII = numII;

    %% Parameter Loop
    if size(thetaPolar_PLArray,2)~=size(phiAzimuthal_PLArray,2);ThrowError("General",9);end
    for WD_num=1:size(WD_PLArray,2) %#ok<ALIGN> % WD
    for VVA_num=1:size(thetaPolar_PLArray,2) %#ok<ALIGN> % theta
    for PS_num=1:size(pupilSize_PLArray,2) % pupil size
        %% PL update, data update
        WD = WD_PLArray(1,WD_num);                              data.WD = WD;
        thetaPolarAngle = thetaPolar_PLArray(1,VVA_num);        data.thetaPolarAngle = thetaPolarAngle;
        phiAzimuthalAngle = phiAzimuthal_PLArray(1,VVA_num);    data.phiAzimuthalAngle = phiAzimuthalAngle;
        pupilSize = pupilSize_PLArray(1,PS_num);                data.pupilSize = pupilSize;
        numII = numII + 1;                                      data.numII = numII;
%         structvars(5,data)

        %% output filename
        outputIIName = display_setup("FindGRL",data);                data.outputIIName = outputIIName;
%         structvars(5,data)

        %% preprocessing in parameter loop
        data = pre_in_parameter_loop("FindGRL",data);          
%         structvars(5,data)
        
        %% tracing loop
        % FindGRL: 每次只跑一個 Lens，記錄所有 Radius 的解，找到最佳 Radius，換下一個 Lens
        % input:
        manualMDesired = data.manualMDesired;
        MDesiredArray = data.MDesiredArray; radiusNum = data.radiusNum;
        RatioM = data.RatioM; M00Pool = data.M00Pool; radiusPool = data.radiusPool; lensRadius = data.lensRadius;
        M00Output = data.M00Output; LensRadiusEachLenticular = data.LensRadiusEachLenticular;
        rangeYTotal = data.rangeY;   data.rangeYTotal = rangeYTotal; % Lens 總數
        tTracing = tic;
        disp('-------------------------------------------');
        disp("< 開始追跡 >")
        lensCount_outside = -1;
        for whichLens_outside = [0 rangeYTotal]
            lensCount_outside = lensCount_outside + 1;
            % update 進入 tracing function 的 rangeY
            data.rangeY = whichLens_outside; % 在 tracing 中只計算一根 Lens

            if whichLens_outside == rangeYTotal(1)
               fprintf('已完成 EI =:'); 
            end
            if lensCount_outside == 0 % whichY = 0 第一項: 只跑規格半徑 (第 0 根 Lens 半徑)
               radiusPoolFinal = lensRadius;
            else
                radiusPoolFinal = radiusPool;
            end
            % LensRadius Loop
            radiusCount = 0;
            for whichRadius = radiusPoolFinal
                radiusCount = radiusCount + 1;      
                % update 進入 tracing function 的 radius
                data.lensRadius = whichRadius;
                
                % tracing 
%                 structvars(5,data)
                M00temp = func_tracing("FindGRL",data);
                
                % 紀錄該 radius 下的 M (M00temp)
                if lensCount_outside == 0
                    M00Base = M00temp; % M00 EI=0 when radius is default value.
                    if manualMDesired == 1
                        M00DesiredEachEI = MDesiredArray; % 20230104
                    else
                        M00DesiredEachEI = RatioM * M00Base;
                    end
                elseif lensCount_outside > 0
                    M00Pool(radiusCount,lensCount_outside) = M00temp;
                end 
            end
            
            %% Find Best Radius
            if lensCount_outside > 0
                M00Desired = M00DesiredEachEI(lensCount_outside);
                M00Respect = abs(M00Pool(:,lensCount_outside)-M00Desired);
                [~,ind] = min(M00Respect);
                % 檢查找到虛實解 (震盪解) 20230113
                % 目前方法: 找波谷數量
                [~,locs] = findpeaks(-M00Respect);
                if length(locs) >= 2 % 取最小的那一組 Radius
                    M00Output(lensCount_outside) = M00Pool(min(locs),lensCount_outside);
                    LensRadiusEachLenticular(lensCount_outside) = radiusPool(min(locs));
                elseif length(locs) == 1
                    if ind == 1 && ind == locs
                        cprintf([1,0.5,0],strcat("[info]: edge solution found @ EI = ",num2str(whichLens_outside)," ( ",num2str(radiusPool(1))," )\n"))
                        M00Output(lensCount_outside) = M00Pool(ind,lensCount_outside);
                        LensRadiusEachLenticular(lensCount_outside) = radiusPool(ind);
                    elseif ind == radiusNum && ind == locs
                        cprintf([1,0.5,0],strcat("[info]: edge solution found @ EI = ",num2str(whichLens_outside)," ( ",num2str(radiusPool(end))," )\n"))
                        M00Output(lensCount_outside) = M00Pool(ind,lensCount_outside);
                        LensRadiusEachLenticular(lensCount_outside) = radiusPool(ind);
                    else
                        M00Output(lensCount_outside) = M00Pool(locs,lensCount_outside);
                        LensRadiusEachLenticular(lensCount_outside) = radiusPool(locs);
                    end
                elseif isempty(locs)
                    if ind == 1
                        cprintf([1,0.5,0],strcat("[info]: edge solution found @ EI = ",num2str(whichLens_outside)," ( ",num2str(radiusPool(1))," )\n"))
                    elseif ind == radiusNum
                        cprintf([1,0.5,0],strcat("[info]: edge solution found @ EI = ",num2str(whichLens_outside)," ( ",num2str(radiusPool(end))," )\n"))
                    end
                    M00Output(lensCount_outside) = M00Pool(ind,lensCount_outside);
                    LensRadiusEachLenticular(lensCount_outside) = radiusPool(ind);
                end      
        
                fprintf('%d, ',whichLens_outside);
                if mod(lensCount_outside-1,10)==0
                    fprintf('\n');
                end
                if whichLens_outside == rangeYTotal(end)
                   fprintf('\n'); 
                end
            end
        end
        % update data
        data.M00DesiredEachEI = M00DesiredEachEI;
        data.M00Pool = M00Pool;
        data.lensCount_outside = lensCount_outside;
        data.radiusCount = radiusCount;
        disp("< 追跡完成 >")
        disp(strcat("花費時間: ",num2str(toc(tTracing)),"s"));
        disp('-------------------------------------------');
        %% LensHeight
        LensHeightEachLenticular = LensRadiusEachLenticular-sqrt(LensRadiusEachLenticular.^2-(data.lensPitch*0.5)^2);
        %% plot
        if data.plotGRL == 1
            figure;
            hold on
            yyaxis left
            plot(rangeYTotal,M00Output)
            ylabel('M00')
            ylim([min(M00Output)-1,max(M00Output)+1])
            yline(M00Base)
            yyaxis right
            plot(rangeYTotal,LensRadiusEachLenticular)
            ylabel('Lens Radius')
            ylim([data.LRStart,data.LREnd])
            xlabel('EI')
        end
        
        %% write
        if data.writeGRL == 1
            save(outputIIName,"LensRadiusEachLenticular","LensHeightEachLenticular");
            disp(strcat("Variable 'LensRadiusEachLenticular' is saved as filename: ",outputIIName));
        elseif data.writeGRL == 0
            cprintf([1,0.5,0],"[info]: writeGRL is set to 0 therefore not yet save the data.\n")
            beep
        end
    end;end;end % Parameter Loop
    %% Loop end
    % structvars(5,data) % structure 賦值: 僅作複製貼上使用
end