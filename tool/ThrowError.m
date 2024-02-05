function ThrowError(whichCode,typeNum,varargin)

if isempty(varargin); varargin = ""; end

switch whichCode
    case "General"
        stringArray = ...
        [   
            % 1. 手動 GP 底角規則: 角度遞減
            "[錯誤] 手動 GP 底角規則應為: 角度遞減。 (系統停止)"
            % 2. no GP Mode: PBA
            "[錯誤] regular prism mode: PBA 底角數量應為: 1。 (系統停止)"
            % 3. -90 < LRA < 90 
            "[錯誤] LRA 範圍限制: -90 < LRA < 90。 (系統停止)"
            % 4. 非球面相關
            "[錯誤] 讀取 asphericalMat 失敗。 (系統停止)"
            % 5. Lens Sub < 0
            "[錯誤] lensSubstrate < 0。 (系統停止)"
            % 6. segment M00,0.5 Mode removed
            "[錯誤] segmentMode = 1 (segM00 模式) 現已不支援。目前僅支援未分段 (0) 與分 N 段 (2)。 (系統停止)"
            % 7. focal < 0
            "[錯誤] 發散 (focal < 0)。 (系統停止)"
            % 8. 未選擇 GRL .mat 
            "[錯誤] 未選擇 GRL 資料。 (系統停止)"
            % 9. VVA HVA PL array 項目數量不一樣
            "[錯誤] VVA 和 HVA PL array 項目數量需為相同。 (系統停止)"
            % 10. display name number check
            strcat("[錯誤] 輸出檔名過長。 (預設字元數 < 250，實際: ",num2str(strlength(varargin{1})),")。請嘗試調整檔案名稱或自訂義命名。 (系統停止)")
            % 11.
            "[錯誤] 'Lens_radius < Lens_pitch/2': LensHeight 將變為虛數。 (系統停止)"
            % 12. GRL
            "[錯誤]: GRL Lens 總數(GRLLensNum) < Lens總數(lensNum)。 (系統停止)"
            % 13. GRL
            "[錯誤]: 請確保 GRL mode 下 Lens 總數為奇數。 (系統停止)"
            % 14. tracing: 手動 GP
            "[錯誤]: 手動 GP 未知錯誤，找不到要帶的 PBA。 (系統停止)"
            % 15. auto-input 讀取異常
            "[錯誤]: auto-input 讀取異常。 (系統停止)"
            % 16. auto-input 比較異常
            "[錯誤]: auto-input 比較異常。 (系統停止)"

        ];
    case "II"
        stringArray = ...
        [
            % 1. no BLP Mode in applyBLP mode (移除)
            "[錯誤] BLP mode set to 0 when applying BLP ROI。 (系統停止)"
            % 2. bino eye in applyBLP mode (移除)
            "[錯誤] eye mode set to bino when applying BLP ROI。 (系統停止)"
            % 3. noSeg in applyBLP mode (移除)
            "[錯誤] segment mode set to 0 when applying BLP ROI。 (系統停止)"
            % 4. BLP_ROI_Seg >= 2  in applyBLP mode (移除)
            "[錯誤] BLPSeg should >= 2 applying BLP ROI。 (系統停止)"
            % 5. 未選擇 II 圖
            "[錯誤] 未選擇原圖。 (系統停止)"
            % 6. M00 計算出現錯誤
            "[錯誤] M00 計算出現錯誤 (可能是發生了 TIR) (系統停止)"
            % 7. II-BLP: VD array 和 VZawPS array 數量要相同 (for BLP ROI)
            "[錯誤] VD (WD_PLArray) 和 VZawPS (PS_array_BLPROI) 項目數量需為相同。 (系統停止)"
            % 8. II-BLP: 不支援一個 EI
            "[錯誤] II-BLP 不支援'只跑一個 EI'。 (系統停止)"
        ];
    case "VZA"
        stringArray = ...
        [
            % 1. VA step check
            "[錯誤] 請確保 angleSweepHVA(1):angleStep:angleSweepHVA(2) 包含..." + ...
                "angleSweepHVA(1) 和 angleSweepHVA(2) (同理 VVA)。 (系統停止)"
            % 2. excel
            "[錯誤] 存出 Excel 完整檔名字元數必須小於 218。 (系統停止)"
            % 3. 
            "[錯誤]: the length of dynamicPS and WD_PLArray should be same in dyPSMode。 (系統停止)"
            % 4.
            "[錯誤]: Unknown VA Term. Should be values contain only [1 2 3 4]。 (系統停止)"
        ];
    case "M00Curve"
        stringArray = ...
        [
            % 1.
            "[錯誤] 請確認 [angleCenterHVA] 有包含在 sweep 陣列中。 (系統停止)"
            % 2.
            "[錯誤] 請確認 [angleCenterVVA] 有包含在 sweep 陣列中。 (系統停止)"
            % 3.
            "[錯誤] Unknown VA Term. Should be values contain only [1 2]。 (系統停止)"
            % 4.
            "[錯誤]: verRange > verRangeMax。 (系統停止)"
        ];
    case "FindGRL"
        stringArray = ...
        [
            % 1.
            "[錯誤] manualE2CRatio and manualMDesired cannot be both 1。 (系統停止)" 
            % 2. 
            "[錯誤] manualE2CRatio and manualMDesired cannot only be 0 or 1。 (系統停止)"
            % 3. EI 數量需為奇數
            "[錯誤] EI 數量請保持奇數。 (系統停止)"
            % 4.
            "[錯誤] 未選擇 E2C Ratio data。 (系統停止)"
            % 5.
            "[錯誤] loading data contain more than one array (系統停止)"
            % 6. 
            "[錯誤] make sure that loading data (MRatioArray) and rangeY have same length. (系統停止)"
            % 7.
            "[錯誤] 未選擇 M Desired data。 (系統停止)"
            % 8. 
            "[錯誤] make sure that loading data (MDesiredArray) and rangeY have same length. (系統停止)"
            % 9.
            "[錯誤] make sure to keep one of parameters being []. (LRstep , LRNum) (系統停止)"

        ];
    case "Design"
        stringArray = ...
        [
            % 1.
            "[錯誤]: length(designEI)>1。 (系統停止)"
            % 2.
            "[錯誤]: designEI 只能為一個 Lens。 (系統停止)" 
            % 3.
            "[錯誤]: ~ismember(designPosition,[-1,0,1])。 (系統停止)" 
        ];

    otherwise
        error("未知錯誤: 請通知 Gy 進行 Debug 處理")
end

beep
error(stringArray(typeNum))

end