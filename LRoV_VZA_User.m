%% LRoV VZA all in one
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
% (for both)
showRPMask = 0;                             % show VZARP 0/1.
writeRPMask = 0;                            % write VZARP 0/1.
autoVZAnalysis = 1;                         % 0: manual, 1: auto
% (auto mode only)
    VATerm = 1:4;                           % HVA- HVA+ VVA- VVA+ in order
    angleStep = 1;                          % must > 0
    angleSweepVVA = [10 60];                % absolute angle, must contain 2 value and (1) < (2).
    angleSweepHVA = [-27 27];               % absolute angle, must contain 2 value and (1) < (2).
    angleCenterVVA = 30;                    % absolute angle, stop point
    angleCenterHVA = 0;                     % absolute angle, stop point
    criticalFailRPNumber = 1000;            
    writeExcel = 1;                         % write limitedVA (PL loop support)
        excelFileName = "";                 % if "": "LimitedVA_....xlsx"
        excelSheetName = "";                % if "": sheetname = 1. (string or numeric support)
        dateStringOn = 0;                   % if off, make sure excel file is already closed
% (manual mode only)
    showRPFailMask = 0;                     % show RPFailMask (binary) (manual mode only)
    writeRPFailMask = 0;                    % write RPFailMask (binary) (manual mode only)
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
WD_PLArray = [400 500 600 700] ;            % viewing distance (raidus direction) (mm)
thetaPolar_PLArray = [30];                  % VVA (Z axis toward X Axis) (degree)
phiAzimuthal_PLArray = [0];                 % HVA (X Axis toward Y Axis) (degree)
systemTiltAngle = 0;                        % 系統傾斜角度 (轉向觀測者方向)
eyeMode = [-1 1];                           % -1:leftEye; 1:rightEye; 0: midEye; -1:2:1 or [-1,1]: bino
binoDistance = 60;                          % if leftEye or rightEye: distance between two eyes (mm)
pupilSize_PLArray = [15];                   % pupil radius (mm)
dyPSMode = 1;                               % apply different PS for each VD (VD_PL only)
    dynamicPS = [9,11,12,14];
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
panelPixelNumHor = 2160;                    % panel horizontal pixel number (resolution)
panelPixelNumVer = 3840;                    % panel vertical pixel number (resolution)
pixelSize = panelSizeVer/panelPixelNumVer;  % (mm)
q_LTRPMode = 0;                             % seg301 + 16Kdownto4K(binary) mode (BLPMode must == 0 for now) 

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
    display_SegmentMode = 1;
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
data = LRoV_VZA_Process(data);
disp("-------------------------------------------")
disp("Done!")
disp(strcat("總花費時間: ",num2str(toc(tVeryBegining))));
%% show all variables
% 自行於 command window 輸入: structvars(5,data) 並 Enter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function data = LRoV_VZA_Process(data) 
    %% preprocessing before any loop
    data = pre_before_any_loop("VZA",data);                             % save in BAL.mat
    %% 計算分段點
    segM00 = getSeg("VZA",data);                                              % update segM00.segmentPoint_Matrix only
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
        limitedVA = nan(2,4);                                   data.limitedVA = limitedVA;
        VAchecktemp2 = data.VAchecktemp2;                       VAchecktemp1 = data.VAchecktemp1;
        failNumberMatrix = nan(length(VAchecktemp2),length(VAchecktemp1)); data.failNumberMatrix = failNumberMatrix;
        HVAAllFailTag = 0;                                      data.HVAAllFailTag = HVAAllFailTag;
        VVAAllFailTag = 0;                                      data.VVAAllFailTag = VVAAllFailTag;
        % dynamic PS
        dyPSMode = data.dyPSMode;                                 dynamicPS = data.dynamicPS;
        if dyPSMode == 1
            if length(dynamicPS) ~= length(WD_PLArray)
                ThrowError("VZA",3);
            end
            pupilSize = dynamicPS(WD_num);                      data.pupilSize = pupilSize;
        end
        %% VA Loop
        VATerm = data.VATerm;
        thetaPolar_PLArray = data.thetaPolar_PLArray; phiAzimuthal_PLArray = data.phiAzimuthal_PLArray;
        angleCenterVVA = data.angleCenterVVA; angleCenterHVA = data.angleCenterHVA;
        for whichVATerm = VATerm % HVA- HVA+ VVA- VVA+ (in order)
            data.whichVATerm = whichVATerm;
            lastAngle = nan; data.lastAngle = lastAngle;
            switch whichVATerm
                case 0 % Manual Mode
                    thetaPool = thetaPolar_PLArray;
                    phiPool = phiAzimuthal_PLArray;  
                case 1 % HVA-
                    phiPool = VAchecktemp1;
                    thetaPool = repmat(angleCenterVVA,[1,length(phiPool)]);
                    disp("----------------------");
                    disp("HVA- checking ......");
                case 2 % HVA+
                    phiPool = fliplr(VAchecktemp1);
                    thetaPool = repmat(angleCenterVVA,[1,length(phiPool)]);
                    disp("----------------------");
                    disp("HVA+ checking ......");
                case 3 % VVA-
                    thetaPool = VAchecktemp2;
                    phiPool = repmat(angleCenterHVA,[1,length(thetaPool)]);
                    disp("----------------------");
                    disp("VVA- checking ......");
                case 4 % VVA+    
                    thetaPool = fliplr(VAchecktemp2);
                    phiPool = repmat(angleCenterHVA,[1,length(thetaPool)]); %#ok<*REPMAT> 
                    disp("----------------------");
                    disp("VVA+ checking ......");
                otherwise
                    ThrowError("VZA",4)
            end
            data.thetaPool = thetaPool; data.phiPool = phiPool;
            %% check if all fail: set to -777 and continue
            if HVAAllFailTag == 1 && (whichVATerm == 1 || whichVATerm == 2)
                beep
                cprintf([1,0.5,0], strcat("Warning: 一邊掃到尾已經全部 Fail (set value -777) .\n"));
                limitedVA(:,1) = -777;
                limitedVA(:,2) = -777;
                data.limitedVA = limitedVA;
                continue
            end
            if VVAAllFailTag == 1 && (whichVATerm == 3 || whichVATerm == 4)
                beep
                cprintf([1,0.5,0], strcat("Warning: 一邊掃到尾已經全部 Fail (set value -777) .\n"));
                limitedVA(:,3) = -777;
                limitedVA(:,4) = -777;
                data.limitedVA = limitedVA;
                continue
            end
            VAPool = [thetaPool;phiPool]; data.VAPool = VAPool;
            autoTermString = ["HVA-","HVA+","VVA-","VVA+"]; data.autoTermString = autoTermString;
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
                
                %% output filename
                outputIIName = display_setup("VZA",data);                data.outputIIName = outputIIName;
%                 structvars(5,data)

                %% preprocessing in parameter loop
                data = pre_in_parameter_loop("VZA",data);        
%                 structvars(5,data)
                
                %% tracing loop
                output = func_tracing("VZA",data);
                data.RPpointSet_LE_wld = output{1,1}; data.RRpointSet_LE_wld = output{1,2};
                data.RPpointSet_ME_wld = output{2,1}; data.RRpointSet_ME_wld = output{2,2};
                data.RPpointSet_RE_wld = output{3,1}; data.RRpointSet_RE_wld = output{3,2};
                data.farrestDistanceVer = output{4,1}; data.farrestDistanceHor = output{4,2}; 
                data.TIRHappen = output{5,1}; TIRHappen = data.TIRHappen;
                if TIRHappen == 1
                    outputIIName_update = erase(outputIIName,".png");
                    outputIIName_update = strcat(outputIIName_update,"_(TIR).png");
                    data.outputIIName = outputIIName_update;
                end
      
                %% draw RP
%                 structvars(5,data)
                if TIRHappen == 0
                    II = func_mapping("VZA",data,"noBLP");
                else
                    II = nan;
                end
                data.II = II;
                
                %% VZA analysis
%                 structvars(5,data)
                data = VZAAnalysis(data);
                HVAAllFailTag = data.HVAAllFailTag;
                VVAAllFailTag = data.VVAAllFailTag;

                %% end analysis
                disp(strcat("花費時間: ",num2str(toc(T_eachVAElement)),"s"));
                disp('-------------------------------------------');
                if data.break_flag_VA == 1; break;end % continue to next VA term
            end % VA Loop (VVA HVA)
        end % VA Loop (VATerm 1:4)

        %% write excel
        while 1 % parameter assignment
            autoVZAnalysis = data.autoVZAnalysis;
            writeExcel = data.writeExcel; filename = data.filename; excelSheetName = data.excelSheetName;
            numII = data.numII;
            WD = data.WD; VAchecktemp1 = data.VAchecktemp1; VAchecktemp2 = data.VAchecktemp2; pupilSize = data.pupilSize;
            limitedVA = data.limitedVA; failNumberMatrix = data.failNumberMatrix;
            limitedVA_PL = data.limitedVA_PL;
        break
        end
        
        if autoVZAnalysis == 1
            cprintf('------------------------')
            cprintf('Red','Analysis Complete')
            cprintf('------------------------\n')
            disp('All results have been stored in variables: LimitedVA');
            disp(" ");
            disp("LimitedVA (HVA- HVA+ VVA- VVA+)");
            disp(limitedVA);
            if writeExcel == 1
                % 20230220 加速
                cprintf("Writing Excel......");
                % 建立模板
                strtemp = ["HVA-";"HVA+";"VVA-";"VVA+"];   
                writematrix(strcat("(-- WD ",num2str(WD)," --)"),filename,'Sheet',excelSheetName,'Range',strcat('A',num2str(1+10*(numII-1))));
                writematrix(strtemp,filename,'Sheet',excelSheetName,'Range',strcat('A',num2str(3+10*(numII-1))));
                % 放入Data
                writematrix(limitedVA',filename,'Sheet',excelSheetName,'Range',strcat('B',num2str(3+10*(numII-1))));
                % 紀錄 fail RP 20230811
                writematrix("VVA/HVA",filename,"Sheet",strcat("Raw(VD",num2str(WD),")"),"Range","A1")
                writematrix(VAchecktemp1,filename,"Sheet",strcat("Raw(VD",num2str(WD),")"),"Range","B1")
                writematrix(VAchecktemp2',filename,"Sheet",strcat("Raw(VD",num2str(WD),")"),"Range","A2")
                writematrix(failNumberMatrix,filename,"Sheet",strcat("Raw(VD",num2str(WD),")"),"Range","B2")
        
                % 自動調整 寬
                cprintf("Excel AutoTune...");
                hExcel = actxserver('Excel.Application');
                hWorkbook = hExcel.Workbooks.Open(strcat(cd,"\",filename)); 
                sheetNum = hWorkbook.Sheets.Count;
                for ex = 1:sheetNum
                    FS_sheet = hWorkbook.Sheets.Item(ex);
                    % alignment
                    FS_sheet.Cells.EntireColumn.AutoFit;
                    FS_sheet.Cells.EntireRow.AutoFit;
                    FS_sheet.Cells.HorizontalAlignment = 3;
                    FS_sheet.Cells.VerticalAlignment = 2;
                    % select
                    FS_sheet.Select;
                    FS_sheet.Cells.Font.Name = 'Calibri';
                    FS_sheet.Range("A1").Select;
                end
                hWorkbook.Save
                hWorkbook.Close
                hExcel.Quit
                cprintf("Done.\n");
            end
        end
        limitedVA_PL{1,numII} = strcat("WD",num2str(WD),"_PS",num2str(pupilSize));
        limitedVA_PL{2,numII} = limitedVA;
        data.limitedVA_PL = limitedVA_PL;
    end;end % Parameter Loop
    %% Loop end
    % structvars(5,data) % structure 賦值: 僅作複製貼上使用
end