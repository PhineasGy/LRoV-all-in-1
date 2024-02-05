% RR2RP PixelByPixel Method
function uvFromRP = RPGetUV(RP_normal,P5)
    x = RP_normal(1,:); % order important!
    y = RP_normal(2,:); % order important!

    P1 = [x(1);y(1)]; x1 = P1(1); y1 = P1(2);
    P2 = [x(2);y(2)]; x2 = P2(1); y2 = P2(2);
    P3 = [x(3);y(3)]; x3 = P3(1); y3 = P3(2);
    P4 = [x(4);y(4)]; x4 = P4(1); y4 = P4(2);

    x5=P5(1) ; y5=P5(2);

    a = (x1 * y3 - x1 * y4 - x2 * y3 + x2 * y4 + (-x3) * y1 + x3 * y2 + x4 * y1 - x4 * y2);
    b = (-x1 * y3 + 2 * x1 * y4 - x1 * y5 - x2 * y4 + x2 * y5 + x3 * y1 - x3 * y5 - 2 * x4 * y1 + x4 * y2 + x4 * y5 + x5 * y1 - x5 * y2 + x5 * y3 - x5 * y4);
    c = (-x1 * y4 + x1 * y5 + x4 * y1 - x4 * y5 - x5 * y1 + x5 * y4);
    
    if a ~= 0
        u_solutions = [(-b+sqrt(b^2-4*a*c))/(2*a);(-b-sqrt(b^2-4*a*c))/(2*a)];
        [~,index] = min(abs(u_solutions-0.5)); % test by GY
%         % Find appropriate u
%         % Find a prefer solution inside the [u,v] boundaries od blend
%         % |(Pv1 - Pv0)[index]| is maximized. 
%         Pv0_array = [P1 + u_solutions(1) * (P2 - P1),P1 + u_solutions(end) * (P2 - P1)];
%         Pv1_array = [P4 + u_solutions(1) * (P3 - P4),P4 + u_solutions(end) * (P3 - P4)];
%         Pv0_u1 = P1 + u_solutions(1) * (P2 - P1);
%         Pv1_u1 = P4 + u_solutions(1) * (P3 - P4);
%         Pv0_u2 = P1 + u_solutions(end) * (P2 - P1);
%         Pv1_u2 = P4 + u_solutions(end) * (P3 - P4);
%     
%         [~,index] = max([norm(Pv1_u1-Pv0_u1),norm(Pv1_u2-Pv0_u2)]);
%         Pv0 = Pv0_array(:,index);
%         Pv1 = Pv1_array(:,index);
        u = u_solutions(index);
        Pv0 = P1 + u * (P2 - P1);
        Pv1 = P4 + u * (P3 - P4); 
    elseif b ~= 0 % a==0
        u = -(c/b);
        Pv0 = P1 + u * (P2 - P1);
        Pv1 = P4 + u * (P3 - P4);
    else % a==0 & b ==0
        % 共點情形 (RP剩一條線)
        if (isequal(P1,P4) && isequal(P2,P3)) || (a==0 && b==0 && c==0)
            % P1 = P4; P2 = P3
            ycheck = (P2(2)-P1(2))/(P2(1)-P1(1))* (P5(1)-P1(1)) + P1(2);
            if round(ycheck) == P5(2)
                u = (P5(1)-P1(1)) / (P2(1)-P1(1));
            else
                u = -1;
            end  
            Pv0 = P1 + u * (P2 - P1);
            Pv1 = P4 + u * (P3 - P4);
        elseif isequal(P1,P2) && isequal(P3,P4)
            % P1 = P2; P1 = P4
            u = 0; % (can be any)
            Pv0 = P1 + u * (P2 - P1);
            Pv1 = P4 + u * (P3 - P4);
        else
            error("Error solving u")
        end
    end
    
    % Find v (scale factor)
    v = (P5 - Pv0) ./ (Pv1 - Pv0);
    if any(isnan(v)) || any(isinf(v))
        v = v(~isnan(v)&~isinf(v));
        if isempty(v) % RP點重疊 may have issue
%             warning("RP點重疊 mapping 結果可能有誤")
            v = 0; % 0-1 均可 (均有誤)
        end
    else
        v = v(1);
    end

    uvFromRP = [u;v];
end
