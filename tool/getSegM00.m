function segM00 = getSegM00(data,num,varargin)
% num --> 
%   1: for II。 EX: segM00 = getSegM00(data,1)
%   2: for BLP ROI, set varargin{1} as VZawPS。  EX: segM00 = getSegM00(data,2,10)

    disp('-------------------------------------------');
    disp("< getSegM00.m 執行開始 >")
    
    %% data assignment
    rangeY = data.rangeY; 
    segmentMode = data.segmentMode;
    RRRMode = data.RRRMode; 
    debugMode = data.debugMode; 
    % 已在 getSeg 完成
    segM00.segmentPoint_Matrix = data.segM00.segmentPoint_Matrix;
    %% parameter setup
    tSegM00 = tic;
    numLensX = 1;
    numLensY = length(rangeY);
    % output: segM00
    segM00.M00Parameter_Matrix = cell(numLensX,numLensY,3); % 1:左眼 2:中眼 3:右眼;
    segM00.PS0_RPCenter_Matrix = cell(numLensX,numLensY,3); % 1:左眼 2:中眼 3:右眼;
    cprintf("[info]: ")
    switch segmentMode
        case 0
            cprintf('text',"不分段 ")
        case 2
            cprintf('text',"segVerSize分段 ")
        otherwise
            error("unknown segmentMode value. (0,0.5,1,or 2)")
    end
    switch RRRMode
        case 0
            cprintf('text',"RRR off\n")
        case 1
            cprintf('text',"RRR on\n")
        otherwise
            error("unknown RRRMode value. (0,1)\n")
    end
    switch debugMode
        case 1
            disp("[info]: 未計算 PS0 放大率")
        case 0
            disp("[info]: 計算 PS0 放大率")
    end

    % data saved
    data.segM00 = segM00;
%     structvars(5,data)

    %% Tracing
    if num == 1 % for M00
        segM00 = func_tracing("II",data,num); 
    elseif num == 2 % for BLP ROI
        segM00 = func_tracing("II",data,num,varargin{1}); 
    end
    % num (optional)--> if exist: record M00 and PS0 RP center
    % 1: for II, 2: for BLP ROI
    disp("< getSegM00.m 執行完成 >")
    disp(strcat("花費時間: ",num2str(toc(tSegM00)),"s"));
    disp('-------------------------------------------');
end