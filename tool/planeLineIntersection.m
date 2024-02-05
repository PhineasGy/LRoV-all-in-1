function RDPNew = planeLineIntersection(systemTiltAngle,systemThickness,panelSizeVer,point_pupiledge_final,directional)
    % Plane: dot(n,[x;y;z]) + D = 0
    n = [-sind(systemTiltAngle);0;cosd(systemTiltAngle)];
    pointOnPlane = [-panelSizeVer*0.5;0;systemThickness];
    D = - dot(n,pointOnPlane);
    % Line1: [x;y;z] = pointOnLine + eyeline * t; solve t.
    pointOnLine_1 = point_pupiledge_final(:,1);
    eyeline_1 = directional(:,1);
    % t: dot(n,[pointOnLine + eyeline * t]) + D = 0
    % solve method (slow)
%     syms t
%     EQ = dot(n,[pointOnLine_1 + eyeline_1 * t]) + D == 0;
%     tt = double(solve(EQ,t))
    % directly
    tt = -(dot(n,pointOnLine_1)+D)/(dot(n,eyeline_1));

    % pointDesired: pointOnLine + eyeline * tt
    pointDesired_1 = pointOnLine_1 + eyeline_1 * tt;
    RDPNew_1 = pointDesired_1(3) - systemThickness;
    
    % Line2: [x;y;z] = pointOnLine + eyeline * t; solve t.
    pointOnLine_2 = point_pupiledge_final(:,2);
    eyeline_2 = directional(:,2);
    % t: dot(n,[pointOnLine + eyeline * t]) + D = 0
    % solve method (slow)
%     syms t
%     EQ = dot(n,[pointOnLine_2 + eyeline_2 * t]) + D == 0;
%     tt = double(solve(EQ,t));
    % directly
    tt = -(dot(n,pointOnLine_2)+D)/(dot(n,eyeline_2));
    % pointDesired: pointOnLine + eyeline * tt
    pointDesired_2 = pointOnLine_2 + eyeline_2 * tt;
    RDPNew_2 = pointDesired_2(3) - systemThickness;

    RDPNew = 0.5*(RDPNew_1+RDPNew_2);
end