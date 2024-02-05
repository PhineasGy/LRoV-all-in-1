function [RPpointSet_LE_mm, RPpointSet_ME_mm, RPpointSet_RE_mm] = RPFitting(RPpointSet_LE_mm,RPpointSet_ME_mm,RPpointSet_RE_mm,...
    eyeMode,polyFit,polyNum,verSizeForSeg,base_segNum,segNum,lensCenter_x_fitting)

    for ee = [-1 0 1]
        if ismember(ee,eyeMode)
            switch ee
                case -1
                    RPpointSet_mm = RPpointSet_LE_mm;
                case 0
                    RPpointSet_mm = RPpointSet_ME_mm;
                case 1
                    RPpointSet_mm = RPpointSet_RE_mm;
            end

            %% 
            fit_RPpointSet_mm = nan((base_segNum+1)*2,2,size(RPpointSet_mm,3));
            for lensCount = 1:size(RPpointSet_mm,3)
                lensCenterTop_x = lensCenter_x_fitting(lensCount,1);
                lensCenterBottom_x = lensCenter_x_fitting(lensCount,2);
                % step1: 紀錄該 Lens 需要幾段 (hard only)
                base_segVerSize = verSizeForSeg/base_segNum;    
                base_XStepNum = round((lensCenterBottom_x(1) - lensCenterTop_x(1)) / base_segVerSize);
                if base_XStepNum <= 1
                    base_XStepNum = 1;
                end
                segVerSize = verSizeForSeg/segNum;
                XStepNum = round((lensCenterBottom_x(1) - lensCenterTop_x(1)) / segVerSize);
                if XStepNum <= 1
                    XStepNum = 1;
                end
                % step2: RP 點數拓展
                for left_right = [1,2]
                    segIn = RPpointSet_mm([left_right:2:(XStepNum+1)*2],:,lensCount);
                    segIn_ext = nan(base_XStepNum+1,2);
                    segIn_ext(:,1) = linspace(segIn(1,1),segIn(end,1),base_XStepNum+1);
                    if polyFit == 0 || size(segIn,1)==2
                        % 線性拓展:
                        F = griddedInterpolant(segIn(:,1),segIn(:,2)); % piece-wise fitting
                        xq = segIn_ext(:,1);
                        yq = F(xq);
                        segIn_ext(:,2) = yq;
                    elseif polyFit == 1
                        % 多項式拓展:
                        p = polyfit(segIn(:,1),segIn(:,2),polyNum);
                        xq = segIn_ext(:,1);
                        yq = polyval(p,xq);
                        segIn_ext(:,2) = yq;
                    end 
                    fit_RPpointSet_mm(left_right:2:(base_XStepNum+1)*2,:,lensCount) = segIn_ext;
                end
            end

            switch ee
                case -1
                    RPpointSet_LE_mm = fit_RPpointSet_mm;
                case 0
                    RPpointSet_ME_mm = fit_RPpointSet_mm;
                case 1
                    RPpointSet_RE_mm = fit_RPpointSet_mm;
            end
        else
            continue
        end
    end
end