% Analysis Output Process
function [limitedVA,VAResult,lastAngle,continueNextTermFlag,HVAAllFailTag,VVAAllFailTag] = ...
    fail_pass(autoVZAnalysis,whichVATerm,phiAzimuthalAngle_original,thetaPolarAngle_original,TIRHappen,...
                            FinalFailorPass,whichVAElement,limitedVA,VAPool,lastAngle, ...
                            HVAAllFailTag,VVAAllFailTag) % 20230210

VAResult = ""; % "" if manual
autoTermString = ["HVA-","HVA+","VVA-","VVA+"];

while (autoVZAnalysis == 1)
    %% Parameter Initialization
    continueNextTermFlag = 0; % 是否繼續下一個項目 (HVA- --> HVA+)
    if whichVATerm == 1 || whichVATerm == 2 % HVA
        targetVA = phiAzimuthalAngle_original;
        targetString = "HVA";
    elseif whichVATerm == 3 || whichVATerm == 4  % VVA
        targetVA = thetaPolarAngle_original;
        targetString = "VVA";
    end
    %% TIR (Check Next Element)
    if TIRHappen == 1
        cprintf([1,0.5,0], strcat("Warning: TIR detected. (判定為Fail) \n"));
        lastAngle = targetVA;
        VAResult = "Fail";
        % 當 掃到 另一側最後一組 是 TIR: -777 % 20221108
        if whichVAElement == size(VAPool,2)
            strtemp = strcat("Warning: Fail to all ",autoTermString(whichVATerm)," region (set value -777)\n");
            cprintf([1,0.5,0], strcat(strtemp));
            limitedVA(:,whichVATerm) = -777;
            if whichVATerm == 1 || whichVATerm == 2
                HVAAllFailTag = 1;
            elseif whichVATerm == 3 || whichVATerm == 4
                VVAAllFailTag = 1;
            end
            continueNextTermFlag = 1;
        end
        break
    end
 
    %% Further Check
    % 1. 第一個就 Pass: (1) Next Term (2) Output 777
    if FinalFailorPass == 1 && whichVAElement == 1
        beep;
        strtemp = strcat("Warning (",autoTermString(whichVATerm),"): First Angle Already Pass: ",targetString,num2str(targetVA),' (set value 777)\n');
        cprintf([1,0.5,0], strcat(strtemp));
        % output VA
        limitedVA(:,whichVATerm) = 777;
        continueNextTermFlag = 1;
        VAResult = "Unknown";
        break
    end
    % 2. 只要不是最後一個 Element 是 Fail: (1) Next Element (2) Record Angle
    if FinalFailorPass == 0 && whichVAElement ~= size(VAPool,2)
        % record as lastVA
        lastAngle = targetVA;
        VAResult = "Fail";
        break
    end
    % 3. 非第一個 Element 是 Pass: (1) Next Term (2) Output ResultVA
    if FinalFailorPass == 1
        limitedVA(1,whichVATerm) = lastAngle;
        limitedVA(2,whichVATerm) = targetVA;
        continueNextTermFlag = 1;
        VAResult = "Pass";
        break
    end

    % 4. 最後一個 Element 是 Fail: (1) Next Term (2) Output -777
    if FinalFailorPass == 0 && whichVAElement == size(VAPool,2)
        beep;
        strtemp = strcat("Warning: Fail to all ",autoTermString(whichVATerm)," region (set value -777)\n");
        cprintf([1,0.5,0], strcat(strtemp));
        limitedVA(:,whichVATerm) = -777;
        if whichVATerm == 1 || whichVATerm == 2
            HVAAllFailTag = 1;
        elseif whichVATerm == 3 || whichVATerm == 4
            VVAAllFailTag = 1;
        end
        continueNextTermFlag = 1;
        VAResult = "Fail";
        break
    end
end
end