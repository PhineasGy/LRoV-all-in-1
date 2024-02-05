% 找左右眼RP交點 (For BLP Mode)
% 雙眼
function [PInt] = FindIntersectionOfTwoRPV2(RP_rightEye,RP_leftEye,RP_upMidMid,RP_downMidMid)
    PInt = nan(2,4); % 左眼RP的兩交點 --> 右眼RP的兩交點
    % 左眼RP兩交點
    arraytemp = [1,4,2,3];
    for updown = 1:2
        RPPoint1 = RP_leftEye(:,arraytemp(2*updown-1));
        RPPoint2 = RP_leftEye(:,arraytemp(2*updown));
        RPPoint3 = RP_upMidMid;
        RPPoint4 = RP_downMidMid;
        
        denominator = (RPPoint1(1)-RPPoint2(1))*(RPPoint3(2)-RPPoint4(2))-(RPPoint1(2)-RPPoint2(2))*(RPPoint3(1)-RPPoint4(1));
        if denominator == 0
            error("中線與RP水平線平行")
        end
        numeratorX = (RPPoint1(1)*RPPoint2(2)-RPPoint1(2)*RPPoint2(1)) * (RPPoint3(1)-RPPoint4(1)) - ...
            (RPPoint1(1)-RPPoint2(1)) * (RPPoint3(1)*RPPoint4(2)-RPPoint3(2)*RPPoint4(1));
        numeratorY = (RPPoint1(1)*RPPoint2(2)-RPPoint1(2)*RPPoint2(1)) * (RPPoint3(2)-RPPoint4(2)) - ...
            (RPPoint1(2)-RPPoint2(2)) * (RPPoint3(1)*RPPoint4(2)-RPPoint3(2)*RPPoint4(1));

        temp  = [numeratorX;numeratorY]/denominator;
        % 如果 交線與 RP 上下段 沒有交點
        % 左眼 取 左上 左下 (1) (2)
        if ~ (temp(2)>RPPoint1(2) && temp(2)<RPPoint2(2))
            PInt(:,updown) = RP_leftEye(:,arraytemp(2*updown-1));
        else
            PInt(:,updown) = [numeratorX;numeratorY]/denominator;
        end
    end
    % 右眼RP兩交點
    arraytemp = [1,4,2,3];
    for updown = 1:2
        RPPoint1 = RP_rightEye(:,arraytemp(2*updown-1));
        RPPoint2 = RP_rightEye(:,arraytemp(2*updown));
        RPPoint3 = RP_upMidMid;
        RPPoint4 = RP_downMidMid;
        
        denominator = (RPPoint1(1)-RPPoint2(1))*(RPPoint3(2)-RPPoint4(2))-(RPPoint1(2)-RPPoint2(2))*(RPPoint3(1)-RPPoint4(1));
        if denominator == 0
            error("中線與RP水平線平行")
        end
        numeratorX = (RPPoint1(1)*RPPoint2(2)-RPPoint1(2)*RPPoint2(1)) * (RPPoint3(1)-RPPoint4(1)) - ...
            (RPPoint1(1)-RPPoint2(1)) * (RPPoint3(1)*RPPoint4(2)-RPPoint3(2)*RPPoint4(1));
        numeratorY = (RPPoint1(1)*RPPoint2(2)-RPPoint1(2)*RPPoint2(1)) * (RPPoint3(2)-RPPoint4(2)) - ...
            (RPPoint1(2)-RPPoint2(2)) * (RPPoint3(1)*RPPoint4(2)-RPPoint3(2)*RPPoint4(1));

        temp  = [numeratorX;numeratorY]/denominator;
        % 如果 交線與 RP 上下段 沒有交點
        % 右眼 取 右上 右下 (4) (3)
        if ~ (temp(2)>RPPoint1(2) && temp(2)<RPPoint2(2))
            PInt(:,2+updown) = RP_rightEye(:,arraytemp(2*updown));
        else
            PInt(:,2+updown) = [numeratorX;numeratorY]/denominator;
        end
    end    
end