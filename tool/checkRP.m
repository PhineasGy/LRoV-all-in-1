function mask = checkRP(II)
    redChannel = II(:, :, 1);
    greenChannel = II(:, :, 2);
    blueChannel = II(:, :, 3);
    % 當前 rule
    mask = (redChannel >= 1 & greenChannel >= 1)... % 左右眼模式: 出現黃色 --> RP相撞
        | (blueChannel >= 2); % 單眼模式: 出現 255藍 --> RP相撞
end