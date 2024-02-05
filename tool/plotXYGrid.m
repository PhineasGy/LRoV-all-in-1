function plotXYGrid(data)

%% parameter assignment
while 1
AS_XYGrid = data.AS_XYGrid;                                   RRpointSet_LE_wld = data.RRpointSet_LE_wld;             figXYGrid_AS = data.figXYGrid_AS;                               mu1 = data.mu1;                                                   rotPhi = data.rotPhi;                                         
AUFMode = data.AUFMode;                                       RRpointSet_ME_wld = data.RRpointSet_ME_wld;             figXYGrid_M = data.figXYGrid_M;                                 mu2 = data.mu2;                                                   rotWedgePRA = data.rotWedgePRA;                               
AimSphere_grid = data.AimSphere_grid;                         RRpointSet_RE_wld = data.RRpointSet_RE_wld;             figXYGrid_RP = data.figXYGrid_RP;                               mu_GlasstoOCA = data.mu_GlasstoOCA;                               rotationMatrix = data.rotationMatrix;                         
CDP = data.CDP;                                               RV_XYGrid = data.RV_XYGrid;                             figXYGrid_RV = data.figXYGrid_RV;                               mu_LenstoOCA = data.mu_LenstoOCA;                                 showAUF = data.showAUF;                                       
EIHor = data.EIHor;                                           RV_grid = data.RV_grid;                                 figXYGrid_TIR = data.figXYGrid_TIR;                             mu_OCAtoDisplayCover = data.mu_OCAtoDisplayCover;                 showAsph = data.showAsph;                                     
GPMode = data.GPMode;                                         TIR_XYGrid = data.TIR_XYGrid;                           focal = data.focal;                                             mu_OCAtoGlass = data.mu_OCAtoGlass;                               showGP = data.showGP;                                         
GRLMat = data.GRLMat;                                         TIR_grid = data.TIR_grid;                               forPLA_incident = data.forPLA_incident;                         mu_airtoLens = data.mu_airtoLens;                                 showGRL = data.showGRL;                                       
GRLMode = data.GRLMode;                                       UV_normal1 = data.UV_normal1;                           forPLA_insidePrism = data.forPLA_insidePrism;                   numII = data.numII;                                               showLRA = data.showLRA;                                       
GRLNumShift = data.GRLNumShift;                               VE_EyePoint = data.VE_EyePoint;                         forPLA_mu_PrismtoAir = data.forPLA_mu_PrismtoAir;               numLensYOriginal = data.numLensYOriginal;                         showMaxMin = data.showMaxMin;                                 
I = data.I;                                                   VE_originalPoint = data.VE_originalPoint;               forPLA_mu_airtoPrism = data.forPLA_mu_airtoPrism;               outputA = data.outputA;                                           showPRA = data.showPRA;                                       
LCLengthHor = data.LCLengthHor;                               WD = data.WD;                                           forPLA_normalGP = data.forPLA_normalGP;                         outputD = data.outputD;                                           showWP = data.showWP;                                         
LCLengthVer = data.LCLengthVer;                               WDForAutoGP = data.WDForAutoGP;                         forPLA_normalWP = data.forPLA_normalWP;                         outputIIName = data.outputIIName;                                 sizeforRangeY = data.sizeforRangeY;                           
LRA = data.LRA;                                               WD_PLArray = data.WD_PLArray;                           forPLA_outsidePrism = data.forPLA_outsidePrism;                 outputL = data.outputL;                                           systemTiltAngle = data.systemTiltAngle;                       
LREL = data.LREL;                                             WDz = data.WDz;                                         forcePupilEdgeInverse = data.forcePupilEdgeInverse;             outputManual = data.outputManual;                                 tVeryBegining = data.tVeryBegining;                           
LensHeightEachLenticular = data.LensHeightEachLenticular;     air_n = data.air_n;                                     glassThickness = data.glassThickness;                           outputO = data.outputO;                                           targetWithinPanel = data.targetWithinPanel;                   
LensRadiusEachLenticular = data.LensRadiusEachLenticular;     asph_leftEnd_normal = data.asph_leftEnd_normal;         glass_n = data.glass_n;                                         overwrite = data.overwrite;                                       temp_normalGP = data.temp_normalGP;                           
M_XYGrid = data.M_XYGrid;                                     asph_max_height = data.asph_max_height;                 gp_PBA_array = data.gp_PBA_array;                               p1 = data.p1;                                                     testMatrix = data.testMatrix;                                 
M_grid = data.M_grid;                                         asph_rightEnd_normal = data.asph_rightEnd_normal;       isLLSameAsPanel = data.isLLSameAsPanel;                         p2 = data.p2;                                                     thetaPolarAngle = data.thetaPolarAngle;                       
OCAThickness = data.OCAThickness;                             aspherical = data.aspherical;                           lengthZRay2Default = data.lengthZRay2Default;                   panelSizeHor = data.panelSizeHor;                                 thetaPolarAngle_original = data.thetaPolarAngle_original;     
OCA_n = data.OCA_n;                                           asphericalMat = data.asphericalMat;                     lengthZRay3Default = data.lengthZRay3Default;                   panelSizeHorLL = data.panelSizeHorLL;                             thetaPolar_PLArray = data.thetaPolar_PLArray;                 
PBA = data.PBA;                                               axXYGrid_AS = data.axXYGrid_AS;                         lensAperturePool = data.lensAperturePool;                       panelSizeVer = data.panelSizeVer;                                 viewAngleHor = data.viewAngleHor;                             
PBA1_fit_length = data.PBA1_fit_length;                       axXYGrid_M = data.axXYGrid_M;                           lensArraySizeHor = data.lensArraySizeHor;                       panelSizeVerLL = data.panelSizeVerLL;                             viewAngleVer = data.viewAngleVer;                             
PBA1_fit_line = data.PBA1_fit_line;                           axXYGrid_RP = data.axXYGrid_RP;                         lensArraySizeVer = data.lensArraySizeVer;                       parameter = data.parameter;                                       viewPointHor = data.viewPointHor;                             
PBA1_fit_num = data.PBA1_fit_num;                             axXYGrid_RV = data.axXYGrid_RV;                         lensCenterUserDefined_Hor = data.lensCenterUserDefined_Hor;     phiAzimuthalAngle = data.phiAzimuthalAngle;                       viewPointVer = data.viewPointVer;                             
PBA1_fit_point = data.PBA1_fit_point;                         axXYGrid_TIR = data.axXYGrid_TIR;                       lensCenterUserDefined_Ver = data.lensCenterUserDefined_Ver;     phiAzimuthalAngle_original = data.phiAzimuthalAngle_original;     wedgeHalfHeight = data.wedgeHalfHeight;                       
PBA1_fit_x = data.PBA1_fit_x;                                 binoDistance = data.binoDistance;                       lensCenter_x_fitting = data.lensCenter_x_fitting;               phiAzimuthal_PLArray = data.phiAzimuthal_PLArray;                 wedgeMaxHeight = data.wedgeMaxHeight;                         
PBA1_fit_y = data.PBA1_fit_y;                                 customLine = data.customLine;                           lensHeightDefault = data.lensHeightDefault;                     preciseGP = data.preciseGP;                                       wedgePBA = data.wedgePBA;                                     
PBA_InputArray = data.PBA_InputArray;                         displayCoverThickness = data.displayCoverThickness;     lensHeightEI0 = data.lensHeightEI0;                             prismLensGap = data.prismLensGap;                                 wedgePRA = data.wedgePRA;                                     
PBA_array_forPLA = data.PBA_array_forPLA;                     displayCover_n = data.displayCover_n;                   lensPitch = data.lensPitch;                                     prismMode = data.prismMode;                                       wedgePrism = data.wedgePrism;                                 
PBA_array_forPLA_2 = data.PBA_array_forPLA_2;                 display_CDP = data.display_CDP;                         lensRadius = data.lensRadius;                                   prismSizeHor = data.prismSizeHor;                                 wedgeVer = data.wedgeVer;                                     
PLA_array_fromPBA = data.PLA_array_fromPBA;                   display_EyeMode = data.display_EyeMode;                 lensRadiusDefault = data.lensRadiusDefault;                     prismSizeVer = data.prismSizeVer;                                 wedge_normal = data.wedge_normal;                             
PLA_array_fromPBA_2 = data.PLA_array_fromPBA_2;               display_LensInfo = data.display_LensInfo;               lensRadiusOriginal = data.lensRadiusOriginal;                   prismStructure = data.prismStructure;                             whichCode = data.whichCode;                                   
PLAtoPBAFunction = data.PLAtoPBAFunction;                     display_PrismInfo = data.display_PrismInfo;             lensSubstrate = data.lensSubstrate;                             prismSubstrate = data.prismSubstrate;                             whichpba = data.whichpba;                                     
PRA = data.PRA;                                               display_PupilSize = data.display_PupilSize;             lensThicknessEI0 = data.lensThicknessEI0;                       prism_n = data.prism_n;                                           widthStart = data.widthStart;                                 
RDP = data.RDP;                                               display_RDP = data.display_RDP;                         lens_n = data.lens_n;                                           pupilSize = data.pupilSize;                                       widthStep = data.widthStep;                                   
RDP_PLArray = data.RDP_PLArray;                               display_STA = data.display_STA;                         ll_array = data.ll_array;                                       pupilSize_PLArray = data.pupilSize_PLArray;                       wp_PBA = data.wp_PBA;                                         
RP_XYGrid = data.RP_XYGrid;                                   display_VA = data.display_VA;                           ll_down = data.ll_down;                                         rangeY = data.rangeY;                                             writeFig = data.writeFig;                                     
RP_grid = data.RP_grid;                                       effectiveG = data.effectiveG;                           ll_left = data.ll_left;                                         rangeYPitch = data.rangeYPitch;                                   xNumMax = data.xNumMax;                                       
RPpointSet_LE_wld = data.RPpointSet_LE_wld;                   eyeMode = data.eyeMode;                                 ll_right = data.ll_right;                                       rotLRA = data.rotLRA;                                             whichLCVer = data.whichLCVer;                                 
RPpointSet_ME_wld = data.RPpointSet_ME_wld;                   farrestDistanceHor = data.farrestDistanceHor;           ll_up = data.ll_up;                                             rotPRA = data.rotPRA;                                             whichLCHor = data.whichLCHor;                                 
RPpointSet_RE_wld = data.RPpointSet_RE_wld;                   farrestDistanceVer = data.farrestDistanceVer;           mid_PLA = data.mid_PLA;                                                                                                                                                                         
break
end

%% plot process
[Y,X] = meshgrid(lensCenterUserDefined_Hor,lensCenterUserDefined_Ver);
displayArray = [M_grid,RP_grid,RV_grid,TIR_grid,AimSphere_grid];
dataArray = {M_XYGrid,RP_XYGrid,RV_XYGrid,TIR_XYGrid,AS_XYGrid};
stringArray = ["M","RP","RV","TIR","定位球面角度"];
for whichGrid = 1:length(displayArray)
    if displayArray(whichGrid) == 0;continue;end
    gridData = dataArray{whichGrid};
    strTemp = stringArray(whichGrid);
    switch whichGrid
        case 1 ; figTemp = figXYGrid_M; axTemp = axXYGrid_M;
        case 2 ; figTemp = figXYGrid_RP; axTemp = axXYGrid_RP;
        case 3 ; figTemp = figXYGrid_RV; axTemp = axXYGrid_RV;
        case 4 ; figTemp = figXYGrid_TIR; axTemp = axXYGrid_TIR;
        case 5 ; figTemp = figXYGrid_AS; axTemp = axXYGrid_AS;
    end
    figure(figTemp);
    if whichGrid ~= 3 && whichGrid ~= 4 % RV, TIR: use surf
        surf(axTemp,X',Y',gridData','FaceColor','interp')
        gridDataForMaxMin = gridData;
        gridDataForMaxMin(gridData==-1) = nan; % 排除掉 TIR 位置
        [maxValue,maxInd] = max(gridDataForMaxMin(:)); 
        [minValue,minInd] = min(gridDataForMaxMin(:));
        if showMaxMin == 1
            % scatter max and min location
            hold on
            scatter3(axTemp,X(maxInd),Y(maxInd),maxValue,'r')
            scatter3(axTemp,X(minInd),Y(minInd),maxValue,'r','filled') % Z值: 使點的位置永遠高於 surf
        end
        colorbar
        subtitle(strcat(strTemp,": ",num2str(round(minValue,2))," to ",num2str(round(maxValue,2))))
    else % Real/Virtual and TIR use mesh
        mesh(axTemp,X',Y',gridData','FaceColor','flat','EdgeColor',"r","LineStyle",":") 
        colorList = [0,0,0;1,1,1];
        colormap(colorList)
        switch whichGrid
            case 3 % RV
                subtitle("0: virtual, 1: real")
            case 4 % TIR
                subtitle("0: noTIR, 1: TIR")
        end
        clim([0 1])
    end
    view(90,90)
    axis equal
    xlim([lensCenterUserDefined_Ver(1) lensCenterUserDefined_Ver(end)])
    ylim([lensCenterUserDefined_Hor(1) lensCenterUserDefined_Hor(end)])
    title(strcat(strTemp," XYGrid"));
    if writeFig == 1
        saveas(figTemp,strcat("(",strTemp,")",outputIIName));
    end
end
end