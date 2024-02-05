% 當系統傾斜時 等效觀看角度
function [theta_polar_angle,phi_azimuthal_angle] = TiltAngle(WD,theta_polar_angle,phi_azimuthal_angle,SystemTiltAngle)
    %% 20230927 update
    % 紀錄 VVA 正負
    sign_VVA = abs(theta_polar_angle)/theta_polar_angle;
    
    % 得實際人眼位置
    WD_z=WD*cosd(theta_polar_angle); 
    ViewPoint_x=WD*sind(theta_polar_angle)*cosd(phi_azimuthal_angle);
    ViewPoint_y=WD*sind(theta_polar_angle)*sind(phi_azimuthal_angle);
    pointEye = [ViewPoint_x;ViewPoint_y;WD_z];
    pointEye_roty = roty(-SystemTiltAngle)*pointEye;
    
    % 反推 VVA (必為正值)
    theta_polar_angle = acosd(pointEye_roty(3)/WD);
    
    % 反推 HVA
    if pointEye_roty(1)~=0 % 非水平線
        if pointEye_roty(2) == 0 && pointEye_roty(1)< 0 % X 值 < 0, HVA 180
                phi_azimuthal_angle = 180;
        elseif pointEye_roty(2) == 0 && pointEye_roty(1)> 0 % X 值 > 0, HVA 0
                phi_azimuthal_angle = 0;
        else
            % atand: 鎖在 -90~90 
            phi_azimuthal_angle = atand(pointEye_roty(2)/pointEye_roty(1));
            if pointEye_roty(1) < 0 % atand 會算錯
               phi_azimuthal_angle = phi_azimuthal_angle + 180;
            end
        end
    else % 在水平線上，HVA等於原值 (正負由 VVA 正負決定) (EX: no prism DV HVA 方向)
        if sign_VVA < 0
            phi_azimuthal_angle = -phi_azimuthal_angle;
        elseif sign_VVA > 0
%             phi_azimuthal_angle;
        end
    end
    % HVA 控制在 +- 180 之間
    if phi_azimuthal_angle > 180
        phi_azimuthal_angle = phi_azimuthal_angle - 360;
    elseif phi_azimuthal_angle < -180
        phi_azimuthal_angle = phi_azimuthal_angle + 360;
    end
      
end