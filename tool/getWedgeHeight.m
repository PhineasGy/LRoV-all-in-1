function wedgeHeight = getWedgeHeight(pointA,rotWedgePRA,prismSizeVer,wedgePBA)
    pointXY = [pointA(1);pointA(2)];        % example
    pointXYRot = rotWedgePRA \ [pointXY;0];      % 反矩陣 (座標轉換)
    pointXYRot = pointXYRot(1:2);
    pointXYRotShift = pointXYRot + [prismSizeVer/2;0];
    wedgeHeight = abs(pointXYRotShift(1)*tand(wedgePBA));
end