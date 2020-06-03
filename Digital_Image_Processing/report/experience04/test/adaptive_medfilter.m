classdef adaptive_medfilter < handle
    properties( SetAccess = private, GetAccess = public )
        im_path; % ͼ��·��
        img; % ��ȡ��ͼ��
        path; % ����ͼ�����ڵ�·��
        im_name; % ����ͼ����ļ���
        ext; % ����ͼ�����չ��
        Smax; % �˲������ߴ�
        M; % ͼ�������
        N; % ͼ�������
        padding; % ͼ���Ե����䷽ʽ
        res; % �˲����ͼ��
        res_pad; % �����ͼ��
        filt_start_row; % �˲���ʼ�����±�
        filt_end_row; % �˲����������±�
        filt_start_col; % �˲���ʼ�����±�
        filt_end_col; % �˲����������±�
    end
    
    methods
        % ���캯��
        function obj = adaptive_medfilter(im_path)
            % ����Ĭ�ϲ���
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
            obj.res = obj.img; % ����һ��ͼ�������˲�
            % ��ͼ������䣬��ֹ����Խ��
            obj.res_pad = padarray(obj.res, [obj.Smax, obj.Smax], padding); 
            % ȷ���˲���ʼ����ֹ��λ��
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
        % �˲����� 
        function adaptive_filt(obj)
            for x = obj.filt_start_row : obj.filt_end_row
                for y = obj.filt_start_col : obj.filt_end_col
                    for c = 1 : 3
                        Zxy = obj.res_pad(x, y, c);
                        for i = 3 : 2 : obj.Smax
                            d = floor( i / 2 );
                            row = [x-d, x+d];
                            col = [y-d, y+d];
                            % ����ƫ��
                            addend = uint8(ones(i, i)); 
                            % Sxy������Сֵ
%                             obj.res_pad( row(1):row(2), col(1):col(2), c)
%                             addend
%                             size(obj.res_pad)
%                             row
%                             col
                            Zmin = min( min( obj.res_pad( row(1):row(2), col(1):col(2), c)+addend ) ); 
                            % Sxy�������ֵ
                            Zmax = max( max( obj.res_pad( row(1):row(2), col(1):col(2), c)+addend ) ); 
                            % Sxy������ֵ
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
% % ��Ե��䷽ʽ
% padding = 'symmetric';
% 
% for x = 1 : M
%     for y = 1 : N
%         for i = 3 : 2 : Smax
%             addend = ones(i, i); % ����ƫ��
%             Zmin = ordfilt2( img, 1, addend, padding ); % Sxy������Сֵ
%             Zmax = ordfilt2( img, i*i, addend, padding ); % Sxy�������ֵ
%             Zmed = medfilt2( img, [i, i], padding ); % Sxy������ֵ
%             