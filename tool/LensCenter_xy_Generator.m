% LensCenter計算 (Rot_LRoV)
% 計算過 Cpoint 且夾角 LRA 的線在 LL 舉行範圍的上下交點
function LensCenter_xy = LensCenter_xy_Generator(x_updown,Cpoint,LRA,ll_array)
    if x_updown ==-1 % 找 X- 位置 up
        if LRA>=0 % 逆時針 斜線為左上到右下
            x_test = (cosd(LRA)/sind(LRA))*(ll_array(1)-Cpoint(2))+Cpoint(1);
            if x_test <= ll_array(3)
                x_test = ll_array(3);
                y_test =  (sind(LRA)/cosd(LRA))*(ll_array(3)-Cpoint(1))+Cpoint(2);
            elseif x_test > ll_array(3)
                y_test = ll_array(1);
            end
        elseif LRA<0 % 順時針 斜線為右上到左下
            x_test = (cosd(LRA)/sind(LRA))*(ll_array(2)-Cpoint(2))+Cpoint(1);
            if x_test <= ll_array(3)
                x_test = ll_array(3);
                y_test =  (sind(LRA)/cosd(LRA))*(ll_array(3)-Cpoint(1))+Cpoint(2);
            elseif x_test > ll_array(3)
                y_test = ll_array(2);
            end                
        end
    elseif x_updown==+1 % 找 X- 位置 down
        if LRA>=0 % 逆時針 斜線為左上到右下
            x_test = (cosd(LRA)/sind(LRA))*(ll_array(2)-Cpoint(2))+Cpoint(1);
            if x_test > ll_array(4)
                x_test = ll_array(4);
                y_test =  (sind(LRA)/cosd(LRA))*(ll_array(4)-Cpoint(1))+Cpoint(2);
            elseif x_test <= ll_array(4)
                y_test = ll_array(2);
            end
        elseif LRA<0 % 順時針 斜線為右上到左下
            x_test = (cosd(LRA)/sind(LRA))*(ll_array(1)-Cpoint(2))+Cpoint(1);
            if x_test > ll_array(4)
                x_test = ll_array(4);
                y_test =  (sind(LRA)/cosd(LRA))*(ll_array(4)-Cpoint(1))+Cpoint(2);
            elseif x_test <= ll_array(4)
                y_test = ll_array(1);
            end                
        end
    end
    LensCenter_xy = [x_test; y_test];
end