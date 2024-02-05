function xyForRR = RRGetPosition(RR_normal,uvFromRP)
    x = RR_normal(1,:); % order important!
    y = RR_normal(2,:); % order important!
    u = uvFromRP(1);
    v = uvFromRP(2);
    
    P1 = [x(1);y(1)];
    P2 = [x(2);y(2)];
    P3 = [x(3);y(3)];
    P4 = [x(4);y(4)];

    Pv0 = P1 + u * (P2 - P1);
    Pv1 = P4 + u * (P3 - P4);
    xyForRR = Pv0 + v * (Pv1 - Pv0);
end