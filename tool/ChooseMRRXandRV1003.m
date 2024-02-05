function [RRX_linear_array] = ChooseMRRXandRV1003(whichEye,M00Curve_Matrix,lensCount,RRRConstant)
    % M_RRX Based on Each Lens and Each Eye
    %% M00 Array
    try
        if isnan(M00Curve_Matrix) % RRR off
            RRX_linear_array = nan;
        end
    catch % M00Curve_Matrix 是 cell 沒有 isnan 函數
        % RRRConstant check (must >= 0)
        if RRRConstant < 0 
            error("Error: RRRMode cannot contain negative value.");
        end
        % RRR solution
        switch whichEye
            case -1 % left eye
                RRX_linear_array = M00Curve_Matrix{1,lensCount,1};
            case 0 % middle eye
                RRX_linear_array = M00Curve_Matrix{1,lensCount,2};
            case 1 % bottom eye
                RRX_linear_array = M00Curve_Matrix{1,lensCount,3};
        end
    
        % RRX constant solution
        if RRRConstant > 0
            RRX_linear_array(:,1) = 0;
            RRX_linear_array(:,2) = RRRConstant;
        end
    end
end


