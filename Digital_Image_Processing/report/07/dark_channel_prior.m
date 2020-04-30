classdef dark_channel_prior < handle
   
    properties( SetAccess=private, GetAccess=public )
        % �ڹ��캯���г�ʼ���ı���
        im_path;% ͼ��·��
        I;% ��ȡ��ͼ�񣬴�ȥ��
        M;% ͼ�������
        N;% ͼ�������
        path;% ��ȡ��ͼ������·��
        name;% ����ͼ���ļ���
        ext;% ����ͼ�����չ��
        
        % �������
        dark_channel;% ͼ��İ�ͨ��
        dark_path;% ��ͨ�����·��
        tx;% the medium transmission��ý�鴫������ 
        A;% global atmospheric light��������
        I_by_A;% I^c / A^c
        I_by_A_dark;% I^c / A^c�İ�ͨ��
        %A_loc;% A��I�е�λ��
        J;% ȥ����ͼ��
        num;% ǰnum�����ֵ��������A
        
        % ��������Ĭ��ֵ
        w;% һ����ϵ�������ڱ���һ������Ĭ��0.95
        patch_size;% ��Сֵ�˲����˲�����С��Ĭ��15X15
        t0;% ��ֹt̫С���½����������Ĭ��0.1
        
    end
    
    methods
        % ���캯��
        function obj = dark_channel_prior(im_path, varargin)
            
            % ����Ĭ�ϲ���
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
                
            
            % ��ʼ����Ա����
            obj.im_path = im_path;
            obj.I = imread(im_path);
            obj.I = im2double(obj.I);
            [obj.M, obj.N, ~] = size(obj.I);
            [obj.path, obj.name, obj.ext] = fileparts(im_path);
            obj.path = strcat(obj.path, '\');
            obj.num = round( obj.M * obj.N / 1000 );
            
            % ִ��ȥ�����
            obj.dehaze();
        end
        
        
    end
    
    methods 
        % ��ͨ��
        function img_dark = find_dark_channel(obj, img)
            % ȡÿ��ͨ���ϵ���Сֵ 
            img_dark = min( img, [], 3 );
            % ��Сֵ�˲�
            img_dark = ordfilt2( img_dark, 1, ones(obj.patch_size), 'symmetric');
        end
    end
        
    methods
        % ��A
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
        % ��tx
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
        % ȥ��
        function dehaze(obj)
            % ��ԭͼ��İ�ͨ������ʾ
            obj.dark_channel = obj.find_dark_channel( obj.I );
            figure
            imshow(obj.dark_channel);
            title('��ͨ��')
            obj.dark_path = strcat( obj.path, obj.name );
            obj.dark_path = strcat( obj.dark_path, '_dark.png');
            imwrite( obj.dark_channel, obj.dark_path );
            
            % ��A����������obj.A��
            obj.find_A();
            %��tx����������obj.tx��
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
            title('ȥ���Ľ��')
            res_path = strcat( obj.path, obj.name);
            res_path = strcat( res_path, 'res.jpg');
            imwrite( obj.J, res_path );

        end
    end
end