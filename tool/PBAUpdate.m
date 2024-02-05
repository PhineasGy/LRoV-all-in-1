function PBA_desired = PBAUpdate(pointA,wedgeHeight,VE_EyePoint,PLA_array_fromPBA,PBA_array_forPLA,PRA)
    % 20231027 直接由 VEP(virtual eye point) 和 QP(query point) 決定 PLA --> PBA
    % (wrong)
    % substrate top Z = 0
    QP = [pointA(1:2);wedgeHeight]; QP_XY = QP(1:2);
    VEP = VE_EyePoint; VEP_XY = VEP(1:2);
    QV = VEP - QP; % query vector
%     PLA_desired =  acosd(dot(QV,[0;0;1])/norm(QV));
%     % PLA 正負: X 座標比較
%     if QV(1) < 0; PLA_desired = - PLA_desired;end

    % 依舊要找 QP 到 "VEP 在 GP-PRA 上延長線"的距離
    % 不能直接找 QP 到 VEP 的距離
    if norm(VEP_XY)~=0 
        Length_LensVirtualEye_1 = abs(QP_XY'*VEP_XY-norm(VEP_XY)^2)/norm(VEP_XY); % 點到線距離
        % 判斷 L 正負 20230808
        % 假設 零點 (0,0) 一定在虛擬眼之上
        % if L 和 零點 在切線同一側: L > 0
        % 切線方程式: E𝑦∗𝑦+𝐸𝑥∗𝑥−(𝐸𝑦^2+𝐸𝑥^2)=0
        centerSide = -norm(VEP_XY)^2;
        targetSide = QP_XY'*VEP_XY - norm(VEP_XY)^2;
        if centerSide*targetSide < 0;Length_LensVirtualEye_1 = -Length_LensVirtualEye_1;end
    elseif norm(VEP_XY) == 0
        if PRA == 0
            Length_LensVirtualEye_1 = -QP(1);
        elseif PRA ==90 || PRA ==-90
            Length_LensVirtualEye_1 = -QP(2);
        else
            Length_LensVirtualEye_1 = -QP(1)*cosd(PRA);
        end
    end
    PLA_desired = atand(Length_LensVirtualEye_1/(QV(3)));
    PBA_desired = interp1(PLA_array_fromPBA,PBA_array_forPLA,PLA_desired);
end