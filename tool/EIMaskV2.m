function [EILeftEyeMask,EIRightEyeMask,RPLeftEyeROI,RPRightEyeROI] = EIMaskV2(PInt_pnl,...
    RP_leftEye,RP_rightEye,ElementalImage_RP_leftEye,ElementalImage_RP_rightEye,...
    EIoffsetForBLP)
    
    % note: RP 1-4 (左上 左下 右下 右上)
    % PInt 1-4 左眼上交 左眼下交 右眼上交 右眼下交
    % 僅一種情形
    % 左眼RP: [交點up 交點down 右下 右上]
    % 右眼RP: [左上 左下 交點down 交點up]

    % 20230918 PInt ==> double
    %% RP_leftEye: pnl
    RP_ROI_LU = [min(floor(RP_leftEye(1,:)));min(floor(RP_leftEye(2,:)))];
    RP_ROI_RD = [max(ceil(RP_leftEye(1,:)));max(ceil(RP_leftEye(2,:)))];
    RP_RectangleROI_y = [RP_ROI_LU(2) RP_ROI_RD(2)];
    RP_RectangleROI_x = [RP_ROI_LU(1) RP_ROI_RD(1)];
    RPSizeVer = RP_RectangleROI_x(2) - RP_RectangleROI_x(1) + 1;
    RPSizeHor = RP_RectangleROI_y(2) - RP_RectangleROI_y(1) + 1;

    EIoffsetForBLPX = EIoffsetForBLP;
    EIoffsetForBLPY = EIoffsetForBLP;
    RPLeftEyeMask_X = [PInt_pnl(1,1)-EIoffsetForBLPX,PInt_pnl(1,2)+EIoffsetForBLPX,RP_leftEye(1,3)+EIoffsetForBLPX,RP_leftEye(1,4)-EIoffsetForBLPX] - RP_ROI_LU(1) + 1;
    RPLeftEyeMask_Y = [PInt_pnl(2,1)-EIoffsetForBLPY,PInt_pnl(2,2)-EIoffsetForBLPY,RP_leftEye(2,3)+EIoffsetForBLPY,RP_leftEye(2,4)+EIoffsetForBLPY] - RP_ROI_LU(2) + 1;
    RPLeftEyeROI = poly2mask(RPLeftEyeMask_Y,RPLeftEyeMask_X,RPSizeVer,RPSizeHor);
    EILeftEyeMask = ElementalImage_RP_leftEye.*RPLeftEyeROI;
    %% RP_rightEye: pnl
    RP_ROI_LU = [min(floor(RP_rightEye(1,:)));min(floor(RP_rightEye(2,:)))];
    RP_ROI_RD = [max(ceil(RP_rightEye(1,:)));max(ceil(RP_rightEye(2,:)))];
    RP_RectangleROI_y = [RP_ROI_LU(2) RP_ROI_RD(2)];
    RP_RectangleROI_x = [RP_ROI_LU(1) RP_ROI_RD(1)];
    RPSizeVer = RP_RectangleROI_x(2) - RP_RectangleROI_x(1) + 1;
    RPSizeHor = RP_RectangleROI_y(2) - RP_RectangleROI_y(1) + 1;

    RPRightEyeMask_X = [RP_rightEye(1,1)-EIoffsetForBLPX,RP_rightEye(1,2)+EIoffsetForBLPX,PInt_pnl(1,4)+EIoffsetForBLPX,PInt_pnl(1,3)-EIoffsetForBLPX] - RP_ROI_LU(1) + 1;
    RPRightEyeMask_Y = [RP_rightEye(2,1)-EIoffsetForBLPY,RP_rightEye(2,2)-EIoffsetForBLPY,PInt_pnl(2,4)+EIoffsetForBLPY,PInt_pnl(2,3)+EIoffsetForBLPY] - RP_ROI_LU(2) + 1;
    RPRightEyeROI = poly2mask(RPRightEyeMask_Y,RPRightEyeMask_X,RPSizeVer,RPSizeHor);
    EIRightEyeMask = ElementalImage_RP_rightEye.*RPRightEyeROI;
end