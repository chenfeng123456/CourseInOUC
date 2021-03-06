classdef adaptive_medfilter < handle
    properties( SetAccess = private, GetAccess = public )
        im_path; % 图像路径
        img; % 读取的图像
        path; % 所读图像所在的路径
        im_name; % 所读图像的文件名
        ext; % 所读图像的扩展名
        Smax; % 滤波器最大尺寸
        M; % 图像的行数
        N; % 图像的列数
        padding; % 图像边缘的填充方式
        res; % 滤波后的图像
        res_pad; % 填充后的图像
        filt_start_row; % 滤波开始的行下标
        filt_end_row; % 滤波结束的行下标
        filt_start_col; % 滤波开始的列下标
        filt_end_col; % 滤波结束的列下标
    end
    
    methods
        % 构造函数
        function obj = adaptive_medfilter(im_path)
            % 设置默认参数
            if nargin < 3
                Smax = 51;
                padding = 'symmetric';
            end
            obj.im_path = im_path;
            [obj.path, obj.im_name, obj.ext]  = fileparts(im_path);
            obj.path = strcat(obj.path, '\');
            obj.img = imread(im_path);
            [obj.M, obj.N, ~] = size(obj.img);
            obj.Smax = Smax;
            obj.padding = padding;
            obj.res = obj.img; % 复制一份图像用作滤波
            % 给图像做填充，防止索引越界
            obj.res_pad = padarray(obj.res, [obj.Smax, obj.Smax], padding); 
            % 确定滤波起始和终止的位置
            obj.filt_start_row = 1 + obj.Smax;
            obj.filt_end_row = obj.filt_start_row + obj.M - 1;
            obj.filt_start_col = 1 + obj.Smax;
            obj.filt_end_col = obj.filt_start_col + obj.N - 1;
            
            obj.adaptive_filt()
        end
    end
    
    methods
        function show_res(obj)
            h = figure;
            imshow(obj.res)
            print(h, '-dpng', '-r600', strcat(obj.path, 'adaptive_medfilter_res.png') )
        end
    end
    
    methods
        % 滤波函数 
        function adaptive_filt(obj)
            for x = obj.filt_start_row : obj.filt_end_row
                for y = obj.filt_start_col : obj.filt_end_col
                    for c = 1 : 3
                        Zxy = obj.res_pad(x, y, c);
                        for i = 3 : 2 : obj.Smax
                            d = floor( i / 2 );
                            row = [x-d, x+d];
                            col = [y-d, y+d];
                            % 加性偏置
                            addend = uint8(ones(i, i)); 
                            % Sxy窗内最小值
%                             obj.res_pad( row(1):row(2), col(1):col(2), c)
%                             addend
%                             size(obj.res_pad)
%                             row
%                             col
                            Zmin = min( min( obj.res_pad( row(1):row(2), col(1):col(2), c)+addend ) ); 
                            % Sxy窗内最大值
                            Zmax = max( max( obj.res_pad( row(1):row(2), col(1):col(2), c)+addend ) ); 
                            % Sxy窗内中值
                            Zmed = median( median( obj.res_pad( row(1):row(2), col(1):col(2), c)+addend ) ); 
                            % level A
                            A1 = Zmed - Zmin;
                            A2 = Zmed - Zmax;
                            if ( ( A1 > 0 ) && ( A2 < 0 ) ) || ( i == obj.Smax)
                                % level B
                                B1 = Zxy - Zmin;
                                B2 = Zxy - Zmax;
                                if ( ( B1 > 0 ) && ( B2 < 0 ) )
                                    obj.res(x-obj.Smax, y-obj.Smax, c) = Zxy;
                                else
                                    obj.res(x-obj.Smax, y-obj.Smax, c) = Zmed;
                                end

                            end
                        end
                    end
                end
            end
            obj.show_res()
        end
    end
end
        


% 
% Smax = 15;
% img = imread(path);
% [M, N] = size(img);
% % 边缘填充方式
% padding = 'symmetric';
% 
% for x = 1 : M
%     for y = 1 : N
%         for i = 3 : 2 : Smax
%             addend = ones(i, i); % 加性偏置
%             Zmin = ordfilt2( img, 1, addend, padding ); % Sxy窗内最小值
%             Zmax = ordfilt2( img, i*i, addend, padding ); % Sxy窗内最大值
%             Zmed = medfilt2( img, [i, i], padding ); % Sxy窗内中值
%             