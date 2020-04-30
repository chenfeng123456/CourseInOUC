classdef dark_channel_prior < handle
   
    properties( SetAccess=private, GetAccess=public )
        % 在构造函数中初始化的变量
        im_path;% 图像路径
        I;% 读取的图像，待去雾
        M;% 图像的行数
        N;% 图像的列数
        path;% 读取的图像所在路径
        name;% 所读图像文件名
        ext;% 所读图像的扩展名
        
        % 待求变量
        dark_channel;% 图像的暗通道
        dark_path;% 暗通道结果路径
        tx;% the medium transmission，媒介传播函数 
        A;% global atmospheric light，大气光
        I_by_A;% I^c / A^c
        I_by_A_dark;% I^c / A^c的暗通道
        %A_loc;% A在I中的位置
        J;% 去雾后的图像
        num;% 前num个最大值，用于求A
        
        % 常数，有默认值
        w;% 一个常系数，用于保留一定的雾，默认0.95
        patch_size;% 最小值滤波的滤波器大小，默认15X15
        t0;% 防止t太小导致结果有噪声，默认0.1
        
    end
    
    methods
        % 构造函数
        function obj = dark_channel_prior(im_path, varargin)
            
            % 设置默认参数
            obj.w = 0.95;
            obj.patch_size = 15;
            obj.t0 = 0.1;
            if length(varargin) == 1
                obj.w = varargin{1};
            elseif length(varargin) == 2
                obj.w = varargin{1};
                obj.patch_size = varargin{2};
            elseif length(varargin) == 3
                obj.w = varargin{1};
                obj.patch_size = varargin{2};
                obj.t0 = varargin{3};
            end
                
            
            % 初始化成员变量
            obj.im_path = im_path;
            obj.I = imread(im_path);
            obj.I = im2double(obj.I);
            [obj.M, obj.N, ~] = size(obj.I);
            [obj.path, obj.name, obj.ext] = fileparts(im_path);
            obj.path = strcat(obj.path, '\');
            obj.num = round( obj.M * obj.N / 1000 );
            
            % 执行去雾操作
            obj.dehaze();
        end
        
        
    end
    
    methods 
        % 求暗通道
        function img_dark = find_dark_channel(obj, img)
            % 取每个通道上的最小值 
            img_dark = min( img, [], 3 );
            % 最小值滤波
            img_dark = ordfilt2( img_dark, 1, ones(obj.patch_size), 'symmetric');
        end
    end
        
    methods
        % 求A
        function find_A(obj)
            t = sort( obj.dark_channel(:), 'descend' );
            [m, n] = find( obj.dark_channel >= t(obj.num), obj.num);
            obj.A = [0, 0, 0];
            %obj.A_loc = [0, 0];
            for x = 1 : obj.num
%                 intensity = max( obj.I( m(x), n(x), : ) );
%                 if intensity > max(obj.A)
%                     obj.A(1) = obj.I( m(x), n(x), 1 );
%                     obj.A(2) = obj.I( m(x), n(x), 2 );
%                     obj.A(3) = obj.I( m(x), n(x), 3 );
%                 end
                if obj.I( m(x), n(x), 1) > obj.A(1)
                    obj.A(1) = obj.I( m(x), n(x), 1);
                end
                if obj.I( m(x), n(x), 2) > obj.A(2)
                    obj.A(2) = obj.I( m(x), n(x), 2);
                end
                if obj.I( m(x), n(x), 3) > obj.A(3)
                    obj.A(3) = obj.I( m(x), n(x), 3);
                end

            end
            
        end
    end
    
    
    methods
        % 求tx
        function find_tx(obj)
            obj.tx = zeros( obj.M, obj.N );
            obj.I_by_A = obj.I;
            obj.I_by_A(:, :, 1) = obj.I_by_A(:, :, 1) / obj.A(1);
            obj.I_by_A(:, :, 2) = obj.I_by_A(:, :, 2) / obj.A(2);
            obj.I_by_A(:, :, 3) = obj.I_by_A(:, :, 3) / obj.A(3);
            obj.I_by_A_dark = obj.find_dark_channel( obj.I_by_A );
            obj.tx = 1 - obj.w * obj.I_by_A_dark;
        end
    end
    
    methods
        % 去雾
        function dehaze(obj)
            % 求原图像的暗通道并显示
            obj.dark_channel = obj.find_dark_channel( obj.I );
            figure
            imshow(obj.dark_channel);
            title('暗通道')
            obj.dark_path = strcat( obj.path, obj.name );
            obj.dark_path = strcat( obj.dark_path, '_dark.png');
            imwrite( obj.dark_channel, obj.dark_path );
            
            % 求A，结果存放在obj.A中
            obj.find_A();
            %求tx，结果存放在obj.tx中
            obj.find_tx();
            
            obj.J = obj.I;
            for x = 1 : obj.M
                for y = 1 : obj.N
                    for c = 1 : 3
                        obj.J(x, y, c) = obj.I(x, y, c) - obj.A(c);
                        obj.J(x, y, c) = obj.J(x, y, c) / max( obj.tx(x, y), obj.t0);
                        obj.J(x, y, c) = obj.J(x, y, c) + obj.A(c);
                    end
                end
            end
            
            figure
            imshow(obj.J)
            title('去雾后的结果')
            res_path = strcat( obj.path, obj.name);
            res_path = strcat( res_path, 'res.jpg');
            imwrite( obj.J, res_path );

        end
    end
end