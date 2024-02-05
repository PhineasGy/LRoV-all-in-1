function [midLineCell,LLLineCell] = createBLPROI(data)
    
% input: PS0 RP (每一根Lens 每一段 左右眼) (rangeY x rangeX x 2)
% loop: rangeY, each loop record: 左 LL 點 中線點 (final lens 記錄左 LL 中線 右 LL) 邊界座標
% 中線: 由左右眼 RP 中線，面積權重決定 (中線靠面積較小者)
% LL 線: 由兩中線的一半決定

%% input
RPpointSet_LE_wld = data.segM00.RP_LE;
RPpointSet_RE_wld = data.segM00.RP_RE;
lensPitch = data.lensPitch; WD = data.WD; effectiveG = data.effectiveG;
hpfLL_wld = (lensPitch*0.5)*((WD+effectiveG)/(WD));

rangeY = data.rangeY; segM00 = data.segM00; 
xNumMax = data.xNumMax; % 段數

%% output
midLineCell = cell(xNumMax+1,length(rangeY));
LLLineCell = cell(xNumMax+1,length(rangeY)+1);

RPWidthCell_LE = cell(xNumMax+1,length(rangeY));
RPWidthCell_RE = cell(xNumMax+1,length(rangeY));

%% Loop
% if Count = final: 記錄 上下/左右
% if Count ~= final: 紀錄 下/右
lensCount = 0; % 從 2 開始記錄
for whichLens = rangeY
    lensCount = lensCount + 1;
    %% rangeX
    rangeX = segM00.segmentPoint_Matrix{1,lensCount,1};
    segCount = 0; % 分段點數
    %% segment loop  
    for whichSeg = rangeX(1:end-1)
        segCount = segCount + 1;
        %% 左右眼 RP data (四邊形)
        % 左眼
        RP_lu_le = RPpointSet_LE_wld(2*segCount-1,:,lensCount)';
        RP_ru_le = RPpointSet_LE_wld(2*segCount,:,lensCount)';
        RP_ld_le = RPpointSet_LE_wld(2*(segCount+1)-1,:,lensCount)';
        RP_rd_le = RPpointSet_LE_wld(2*(segCount+1),:,lensCount)';
        RP_u_center_le = 0.5 * (RP_lu_le + RP_ru_le);
        RP_d_center_le = 0.5 * (RP_ld_le + RP_rd_le);

        % 右眼
        RP_lu_re = RPpointSet_RE_wld(2*segCount-1,:,lensCount)';
        RP_ru_re = RPpointSet_RE_wld(2*segCount,:,lensCount)';
        RP_ld_re = RPpointSet_RE_wld(2*(segCount+1)-1,:,lensCount)';
        RP_rd_re = RPpointSet_RE_wld(2*(segCount+1),:,lensCount)';
        RP_u_center_re = 0.5 * (RP_lu_re + RP_ru_re);
        RP_d_center_re = 0.5 * (RP_ld_re + RP_rd_re);

        % 20231129 長度分點 (取代面積法)
        RP_u_length_le = norm(RP_lu_le-RP_ru_le);
        RP_d_length_le = norm(RP_ld_le-RP_rd_le);
        RP_u_length_re = norm(RP_lu_re-RP_ru_re);
        RP_d_length_re = norm(RP_ld_re-RP_rd_re);
        ratio_u_le = (RP_u_length_le)/(RP_u_length_le+RP_u_length_re);
        ratio_u_re = (RP_u_length_re)/(RP_u_length_le+RP_u_length_re);
        ratio_d_le = (RP_d_length_le)/(RP_d_length_le+RP_d_length_re);
        ratio_d_re = (RP_d_length_re)/(RP_d_length_le+RP_d_length_re);

        %% 決定中線 (RP 長度分點)
        u_center_midline = ratio_u_re * RP_u_center_le + ratio_u_le * RP_u_center_re;
        d_center_midline = ratio_d_re * RP_d_center_le + ratio_d_le * RP_d_center_re;
        
        %% 決定 LL 線

        if lensCount == 1 % 最左邊線: 中線推 "Pitch*" (考慮推 Pitch 長度) (hpfLL_wld)
            % 左線: 中線與垂直軸角度"推一個長度"
            vec_midline = d_center_midline - u_center_midline;
            angle_midline = atand(vec_midline(2)/vec_midline(1));
            u_leftline = u_center_midline - [hpfLL_wld*sind(angle_midline) ;hpfLL_wld*cosd(angle_midline)];
            d_leftline = d_center_midline - [hpfLL_wld*sind(angle_midline) ;hpfLL_wld*cosd(angle_midline)];
        elseif lensCount == length(rangeY) % 最右邊線 中線推 "Pitch*" (考慮推 Pitch 長度) (hpfLL_wld)
            % 左線 (正常計算: 推的長度按 RP 長度比例)
            u_center_midline_last = midLineCell{segCount,lensCount-1};
            d_center_midline_last = midLineCell{segCount+1,lensCount-1};
            % 決定左右推的長度 
            % 上一根 Lens 左眼 RP vs 這一根 Lens 右眼 RP
            lengthPush_left_u = RPWidthCell_LE{segCount,lensCount-1};
            lengthPush_right_u = RP_u_length_re;
            lengthPush_left_d = RPWidthCell_LE{segCount+1,lensCount-1};
            lengthPush_right_d = RP_d_length_re;
            ratioPush_left_u = (lengthPush_left_u)/(lengthPush_left_u+lengthPush_right_u);
            ratioPush_right_u = (lengthPush_right_u)/(lengthPush_left_u+lengthPush_right_u);
            ratioPush_left_d = (lengthPush_left_d)/(lengthPush_left_d+lengthPush_right_d);
            ratioPush_right_d = (lengthPush_right_d)/(lengthPush_left_d+lengthPush_right_d);
            
            % (RP 長度分點)
            u_leftline = ratioPush_right_u * u_center_midline_last + ratioPush_left_u * u_center_midline;
            d_leftline = ratioPush_right_d * d_center_midline_last + ratioPush_left_d * d_center_midline;

            % 右線: 中線與垂直軸角度推一個長度
            vec_midline = d_center_midline - u_center_midline;
            angle_midline = atand(vec_midline(2)/vec_midline(1));
            u_rightline = u_center_midline + [hpfLL_wld*sind(angle_midline);hpfLL_wld*cosd(angle_midline)];
            d_rightline = d_center_midline + [hpfLL_wld*sind(angle_midline);hpfLL_wld*cosd(angle_midline)];
        else
            % 左線 (正常計算: 推的長度按 RP 長度比例)
            u_center_midline_last = midLineCell{segCount,lensCount-1};
            d_center_midline_last = midLineCell{segCount+1,lensCount-1};
            % 決定左右推的長度 
            % 上一根 Lens 左眼 RP vs 這一根 Lens 右眼 RP
            lengthPush_left_u = RPWidthCell_LE{segCount,lensCount-1};
            lengthPush_right_u = RP_u_length_re;
            lengthPush_left_d = RPWidthCell_LE{segCount+1,lensCount-1};
            lengthPush_right_d = RP_d_length_re;
            ratioPush_left_u = (lengthPush_left_u)/(lengthPush_left_u+lengthPush_right_u);
            ratioPush_right_u = (lengthPush_right_u)/(lengthPush_left_u+lengthPush_right_u);
            ratioPush_left_d = (lengthPush_left_d)/(lengthPush_left_d+lengthPush_right_d);
            ratioPush_right_d = (lengthPush_right_d)/(lengthPush_left_d+lengthPush_right_d);

            % (RP 長度分點)
            u_leftline = ratioPush_right_u * u_center_midline_last + ratioPush_left_u * u_center_midline;
            d_leftline = ratioPush_right_d * d_center_midline_last + ratioPush_left_d * d_center_midline;
        end

        RP_u_length_le = norm(RP_lu_le-RP_ru_le);
        RP_d_length_le = norm(RP_ld_le-RP_rd_le);
        RP_u_length_re = norm(RP_lu_re-RP_ru_re);
        RP_d_length_re = norm(RP_ld_re-RP_rd_re);
        
        %% RP Width 紀錄
        if segCount == rangeX(end-1) % 最後一段: 紀錄上下
            RPWidthCell_LE{segCount,lensCount} = RP_u_length_le;
            RPWidthCell_RE{segCount,lensCount} = RP_u_length_re;
            RPWidthCell_LE{segCount+1,lensCount} = RP_d_length_le;
            RPWidthCell_RE{segCount+1,lensCount} = RP_d_length_re;
        else
            RPWidthCell_LE{segCount,lensCount} = RP_u_length_le;
            RPWidthCell_RE{segCount,lensCount} = RP_u_length_re;
        end
        %% Mid Line 紀錄
        if segCount == rangeX(end-1) % 最後一段: 紀錄上下
            midLineCell{segCount,lensCount} = u_center_midline;
            midLineCell{segCount+1,lensCount} = d_center_midline;
        else
            midLineCell{segCount,lensCount} = u_center_midline;
        end
        %% LL Line 紀錄
        if segCount == rangeX(end-1) && lensCount == length(rangeY)
            LLLineCell{segCount+1,lensCount+1} = d_rightline;
            LLLineCell{segCount,lensCount+1} = u_rightline;
            LLLineCell{segCount+1,lensCount} = d_leftline;
            LLLineCell{segCount,lensCount} = u_leftline;
        elseif segCount ~= rangeX(end-1) && lensCount == length(rangeY)
            LLLineCell{segCount,lensCount+1} = u_rightline;
            LLLineCell{segCount,lensCount} = u_leftline;
        elseif segCount == rangeX(end-1) && lensCount ~= length(rangeY)
            LLLineCell{segCount+1,lensCount} = d_leftline;
            LLLineCell{segCount,lensCount} = u_leftline;
        else
            LLLineCell{segCount,lensCount} = u_leftline;
        end
    end
end