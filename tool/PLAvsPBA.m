% PLA vs PBA
function [PLA_array_fromPBA,PBA_array_forPLA] = PLAvsPBA(gp_PBA_array,air_n,prism_n,...
    rotPRA,wp_PBA,rotWedgePRA)
    % 20231027: 三維向量法
    % 因為大部分情形 GP PRA 不等於 Wedge PRA， PLA 必須使用三維計算
    % incident vector: 垂直入射
    forPLA_incident = [0;0;1];
    % normal vector: WP (fixed)
    wedge_normal = [-sind(wp_PBA);0;-cosd(wp_PBA)];
    wedge_normal = rotWedgePRA * wedge_normal;
    forPLA_normalWP = -wedge_normal; % 往 +Z 追跡
    % other parameters
    forPLA_mu_airtoPrism = air_n / prism_n;
    forPLA_mu_PrismtoAir = 1/forPLA_mu_airtoPrism;
    
    % tracing to get PLA
    count = 0;
    PLA_array = nan(1,length(gp_PBA_array));
    for gp_PBA = gp_PBA_array
        count = count + 1;
        % normalGP update
        temp_normalGP = [sind(gp_PBA);0;cosd(gp_PBA)];
        forPLA_normalGP = rotPRA * temp_normalGP;
        % tracing
        % part 1: air into prism (through GP)
        forPLA_insidePrism = sqrt(1-forPLA_mu_airtoPrism^2*(1-(forPLA_normalGP'*forPLA_incident)^2))*forPLA_normalGP+...
                                forPLA_mu_airtoPrism*(forPLA_incident-(forPLA_normalGP'*forPLA_incident)*forPLA_normalGP); %snell's law <air到Lens>         
        % part 2: prism into air (through WP)
        forPLA_outsidePrism = sqrt(1-forPLA_mu_PrismtoAir^2*(1-(forPLA_normalWP'*forPLA_insidePrism)^2))*forPLA_normalWP+...
                                forPLA_mu_PrismtoAir*(forPLA_insidePrism-(forPLA_normalWP'*forPLA_insidePrism)*forPLA_normalWP); %snell's law <air到Lens> 
        % PLA: 與 Z 軸夾角
        PLA = acosd(dot(forPLA_outsidePrism,[0,0,1]));

        % PLA 正負判定:
        % X 向量: forPLA_outsidePrism(1) < 0 --> PLA < 0
        if forPLA_outsidePrism(1) < 0; PLA = -PLA; end
        PLA_array(count) = PLA;
    end
    % filt TIR Term
    gp_PBA_array(imag(PLA_array)~=0) = [];
    PLA_array(imag(PLA_array)~=0) = [];
    PLA_array_fromPBA = PLA_array;
    PBA_array_forPLA = gp_PBA_array;
end