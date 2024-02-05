function txt2 = auto_input_check(txt_file,original_input)
    %% 讀取文件
    try
        id = fopen(txt_file);
        % Read all lines & collect in cell array
        txt = textscan(id,'%s','delimiter','\n');
        txt2 = txt{1};
        for ii = 1:length(txt2)
            txt_temp = txt2{ii};
            eval(txt_temp);
        end
        clear ans id txt_file txt ii txt_temp  
        fclose('all');
    catch e
        fclose('all');
        beep
        cprintf("\n")
        disp(strcat('錯誤行數: ',num2str(ii)," (請檢查文件檔)"));
        disp(e.message);
        ThrowError("General",15)
    end
    %% if 讀取成功, 檢查輸入合理性
    auto_input = ws2struct; auto_input = rmfield(auto_input,{'original_input','txt2','ans'});
    % 說明: 自動輸入的變數不可以含有原 Code 內沒有的輸入
    % EX: II Code 中輸入沒有名為 "Hi" 的變數，則自動輸入文件中若出現 Hi = 1 的輸入，輸出錯誤
    original_Fields = fieldnames(original_input);
    auto_Fields = fieldnames(auto_input);
    if any(~ismember(auto_Fields,original_Fields))
        disp("[error] 偵測到原 Code 沒有的輸入參數: (請 '%' 或移除)")
        disp(auto_Fields(~ismember(auto_Fields,original_Fields)))
        ThrowError("General",16)
    end

end