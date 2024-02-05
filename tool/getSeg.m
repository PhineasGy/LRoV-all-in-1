function segM00 = getSeg(whichCode,data)
    % 僅找分段: 簡易版本
    % getSeg(whichCode,data,0): 強制紀錄未分段
%     disp('-------------------------------------------');
%     disp("< getSeg.m 執行開始 >")
    %% data assignment
    rangeY = data.rangeY; rangeYPitch = data.rangeYPitch; lensPitch = data.lensPitch;
    segmentMode = data.segmentMode; segVerSize = data.segVerSize; verSizeForSeg = data.verSizeForSeg; segNum = data.segNum;
    eyeMode = data.eyeMode;
    LRA = data.LRA;
    panelSizeVerLL = data.panelSizeVerLL; panelSizeHorLL = data.panelSizeHorLL;
    ll_array = data.ll_array;
    softLLTracing = data.softLLTracing;

    %% parameter setup
    tSeg = tic;
    numLensX = 1;
    numLensY = length(rangeY);
    % output: segM00
    segM00.segmentPoint_Matrix = cell(numLensX,numLensY,3); % 1:左眼 2:中眼 3:右眼;
    segM00.M00Parameter_Matrix = cell(numLensX,numLensY,3); % 1:左眼 2:中眼 3:右眼;
    segM00.PS0_RPCenter_Matrix = cell(numLensX,numLensY,3); % 1:左眼 2:中眼 3:右眼;

    %% get segment
    for whichEye = eyeMode 
        lensCount = 0;
        for whichLens = rangeY
            lensCount = lensCount + 1;
            % 先計算 上下 Lens 交點陣列
            if LRA == 0
                lensCenterTop = [-panelSizeVerLL*0.5 ; whichLens*lensPitch];
                lensCenterBottom = [panelSizeVerLL*0.5 ; whichLens*lensPitch];
            end
            if LRA ~= 0
                Cpoint = [0; whichLens*rangeYPitch]; % midpoint for each lens
                lensCenterTop = LensCenter_xy_Generator(-1,Cpoint,LRA,ll_array);
                lensCenterBottom = LensCenter_xy_Generator(1,Cpoint,LRA,ll_array);
                %% software method: LRA angle rectangle cover with vertex of panel
                if softLLTracing == 1
                    lensCenterMid = [-sind(LRA) * whichLens * lensPitch; cosd(LRA) * whichLens * lensPitch];
                    lengthInclineLL_ver =  panelSizeVerLL * cosd(LRA) + panelSizeHorLL * sind(LRA);
                    vectorInclineLL = [cosd(LRA);sind(LRA)];
                    lensCenterFinalTop = lensCenterMid - 0.5*lengthInclineLL_ver * vectorInclineLL;
                    lensCenterFinalBottom = lensCenterMid + 0.5*lengthInclineLL_ver * vectorInclineLL;
                    lensCenterTop = lensCenterFinalTop;
                    lensCenterBottom = lensCenterFinalBottom;
                end
            end
            
            % 分段時 固定 xstepSize
            XStepSize = segVerSize;
            if segmentMode == 0 % 不分段: 只跑頭尾
                XStepNum = 1;
            elseif segmentMode == 2 % seg300 分段
                if whichCode ~= "M00Curve" % 小於 1 段 --> 1 段 
                    XStepNum = round((lensCenterBottom(1) - lensCenterTop(1)) / XStepSize);
                    if XStepNum <= 1
                        XStepNum = 1;
                    end
                end
                if whichCode == "M00Curve" % 1. segNum 必須為偶數 2 保證每一根 Lens 分段點含中點 (每段必須為偶數段)
                    if mod(segNum,2) ~= 0
                        error("warning: segNum should be even number to ensure the existence of midpoint");
                    end
                    verRange = (lensCenterBottom(1) - lensCenterTop(1));
                    if verRange == verSizeForSeg
                        XStepNum = segNum;
                    elseif verRange < verSizeForSeg % 保證每一根LL都會追到奇數的點 (含頭中尾): 最小為兩段 stepTemp = 2
                        stepTemp = floor(verRange/XStepSize); 
                        if mod(stepTemp,2)==1
                            stepTemp = stepTemp - 1;
                        end
                        if stepTemp == 0
                            stepTemp = 2;
                        end
                        XStepNum = stepTemp;
                    else
                        ThrowError("M00Curve",4)
                    end
                end
            end
            % finalPosition: 總段點 = 段數 + 1
            finalPosition = 1:(XStepNum+1);
            switch whichEye
                case -1
                    segM00.segmentPoint_Matrix(1,lensCount,1) = {finalPosition};
                case 0
                    segM00.segmentPoint_Matrix(1,lensCount,2) = {finalPosition};
                case 1
                    segM00.segmentPoint_Matrix(1,lensCount,3) = {finalPosition};
            end
        end
    end

%     disp("< getSeg.m 執行完成 >")
%     disp(strcat("花費時間: ",num2str(toc(tSeg)),"s"));
%     disp('-------------------------------------------');
end