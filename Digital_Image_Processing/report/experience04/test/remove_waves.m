classdef remove_waves < handle
    % 必须加handle，不然不能再构造函数以外的函数里改变成员变量
    properties( SetAccess = private, GetAccess = public )
        im_path; % 完整的路径
        path; % 图像所在目录
        im_name; % 图像文件名
        ext; % 图像扩展名
        im_orig; % 原图
        im_double; % 把原图转换成double
        M; % 行数
        N; % 列数
        F; % 原图的傅里叶变换
        logF; % log(1+abs(F))
        spectrum; % 把F的值映射到0~1范围
        SDv;
        SDu;
        SDv_pk; % SDv的峰值
        SDv_pkloc; % SDv峰值的位置
        SDv_valleyloc; % SDv波谷的位置
        SDu_pk;% SDu的峰值
        SDu_pkloc; % SDu峰值的位置
        SDu_valleyloc; % SDu波谷的位置
    end
    
    methods
        % 构造函数
        function obj = remove_waves(img_path)
            obj.im_path = img_path;
            [obj.path, obj.im_name, obj.ext]  = fileparts(img_path);
            obj.path = strcat(obj.path, '\');
            obj.im_orig = imread(img_path); % 读取图像
            obj.im_double = im2double(obj.im_orig); % 将图像转为double
            [obj.M, obj.N] = size(obj.im_orig); % 得到图像的行数、列数
            % 计算原图的傅里叶变换
            obj.F = fft2(obj.im_double);
            obj.F = fftshift(obj.F);
            % 把频谱图的值映射到0~1范围
            obj.logF = log(1+abs(obj.F));
            obj.spectrum = obj.logF / max(max(obj.logF));
            % 计算累计分布函数
            obj.projection();
            % 显示原图及频谱
            h = figure
            subplot(2, 1, 1), imshow(obj.im_orig), title('原图')
            subplot(2, 1, 2), imshow(obj.spectrum), title('原图频谱图')
            % 使用print函数保存图像，可以保存为更高的分辨率（600）
            print(h, '-dpng', '-r600', strcat(obj.path, 'spectrum_of_img.png'))
        end     
    end
    
    
    
    methods
        % 计算投影图
        function projection(obj)
            % 初始化两个方向的累计函数值
            obj.SDv = zeros(1, obj.N);
            obj.SDu = zeros(1, obj.M);
            % 计算列方向上的累积分布函数
            for v = 1 : obj.N
                for u = 1 : obj.M
                    obj.SDv(v) = obj.SDv(v) + obj.logF(u, v);
                end
            end
            % 找SDv所有峰值及其坐标
            [obj.SDv_pk, obj.SDv_pkloc] = findpeaks(obj.SDv);
            % 取SDu的相反数，可用findpeaks求得所有波谷的坐标
            [temp, obj.SDv_valleyloc] = findpeaks(-obj.SDv);
            % 计算行方向上的累积分布函数
            for u = 1 : obj.M
                for v = 1 : obj.N
                    obj.SDu(u) = obj.SDu(u) + obj.logF(u, v);
                end
            end
            % 找SDu所有峰值及其坐标
            [obj.SDu_pk, obj.SDu_pkloc] = findpeaks(obj.SDu);
            % 取SDu的相反数，可用findpeaks求得所有波谷的坐标
            [temp, obj.SDu_valleyloc] = findpeaks(-obj.SDu);
            
            figure
            % 画出原函数
            subplot(2, 1, 1), plot(obj.SDv), hold on 
            % 标出所有的峰值
            subplot(2, 1, 1), plot(obj.SDv_pkloc, obj.SDv_pk, 'r.', 'Markersize', 2), hold on
            % 标出所有波谷
            subplot(2, 1, 1), plot(obj.SDv_valleyloc, obj.SDv(obj.SDv_valleyloc), 'g.', 'Markersize', 2)
            title('列方向累积分布函数'), xlabel('v'), ylabel('S_D(v)')
            % 画出原函数
            subplot(2, 1, 2), plot(obj.SDu), hold on
            % 标出所有的峰值
            subplot(2, 1, 2), plot(obj.SDu_pkloc, obj.SDu_pk, 'r.', 'Markersize', 2), hold on
            % 标出所有波谷
            subplot(2, 1, 2), plot(obj.SDu_valleyloc, obj.SDu(obj.SDu_valleyloc), 'g.', 'Markersize', 2)
            title('行方向累积分布函数'), xlabel('u'), ylabel('S_D(u)')
            name = strcat(obj.path, 'SD.png');
            %saveas(gcf, strcat(obj.path, 'SD.png'))
            % 可以保存成更高分辨率的图像，-r600设置分辨率
            print(gcf, '-dpng', '-r600', name);
            
        end
    end
            
end
