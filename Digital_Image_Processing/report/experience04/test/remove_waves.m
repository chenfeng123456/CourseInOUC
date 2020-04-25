classdef remove_waves < handle
    % �����handle����Ȼ�����ٹ��캯������ĺ�����ı��Ա����
    properties( SetAccess = private, GetAccess = public )
        im_path; % ������·��
        path; % ͼ������Ŀ¼
        im_name; % ͼ���ļ���
        ext; % ͼ����չ��
        im_orig; % ԭͼ
        im_double; % ��ԭͼת����double
        M; % ����
        N; % ����
        F; % ԭͼ�ĸ���Ҷ�任
        logF; % log(1+abs(F))
        spectrum; % ��F��ֵӳ�䵽0~1��Χ
        SDv;
        SDu;
        SDv_pk; % SDv�ķ�ֵ
        SDv_pkloc; % SDv��ֵ��λ��
        SDv_valleyloc; % SDv���ȵ�λ��
        SDu_pk;% SDu�ķ�ֵ
        SDu_pkloc; % SDu��ֵ��λ��
        SDu_valleyloc; % SDu���ȵ�λ��
    end
    
    methods
        % ���캯��
        function obj = remove_waves(img_path)
            obj.im_path = img_path;
            [obj.path, obj.im_name, obj.ext]  = fileparts(img_path);
            obj.path = strcat(obj.path, '\');
            obj.im_orig = imread(img_path); % ��ȡͼ��
            obj.im_double = im2double(obj.im_orig); % ��ͼ��תΪdouble
            [obj.M, obj.N] = size(obj.im_orig); % �õ�ͼ�������������
            % ����ԭͼ�ĸ���Ҷ�任
            obj.F = fft2(obj.im_double);
            obj.F = fftshift(obj.F);
            % ��Ƶ��ͼ��ֵӳ�䵽0~1��Χ
            obj.logF = log(1+abs(obj.F));
            obj.spectrum = obj.logF / max(max(obj.logF));
            % �����ۼƷֲ�����
            obj.projection();
            % ��ʾԭͼ��Ƶ��
            h = figure
            subplot(2, 1, 1), imshow(obj.im_orig), title('ԭͼ')
            subplot(2, 1, 2), imshow(obj.spectrum), title('ԭͼƵ��ͼ')
            % ʹ��print��������ͼ�񣬿��Ա���Ϊ���ߵķֱ��ʣ�600��
            print(h, '-dpng', '-r600', strcat(obj.path, 'spectrum_of_img.png'))
        end     
    end
    
    
    
    methods
        % ����ͶӰͼ
        function projection(obj)
            % ��ʼ������������ۼƺ���ֵ
            obj.SDv = zeros(1, obj.N);
            obj.SDu = zeros(1, obj.M);
            % �����з����ϵ��ۻ��ֲ�����
            for v = 1 : obj.N
                for u = 1 : obj.M
                    obj.SDv(v) = obj.SDv(v) + obj.logF(u, v);
                end
            end
            % ��SDv���з�ֵ��������
            [obj.SDv_pk, obj.SDv_pkloc] = findpeaks(obj.SDv);
            % ȡSDu���෴��������findpeaks������в��ȵ�����
            [temp, obj.SDv_valleyloc] = findpeaks(-obj.SDv);
            % �����з����ϵ��ۻ��ֲ�����
            for u = 1 : obj.M
                for v = 1 : obj.N
                    obj.SDu(u) = obj.SDu(u) + obj.logF(u, v);
                end
            end
            % ��SDu���з�ֵ��������
            [obj.SDu_pk, obj.SDu_pkloc] = findpeaks(obj.SDu);
            % ȡSDu���෴��������findpeaks������в��ȵ�����
            [temp, obj.SDu_valleyloc] = findpeaks(-obj.SDu);
            
            figure
            % ����ԭ����
            subplot(2, 1, 1), plot(obj.SDv), hold on 
            % ������еķ�ֵ
            subplot(2, 1, 1), plot(obj.SDv_pkloc, obj.SDv_pk, 'r.', 'Markersize', 2), hold on
            % ������в���
            subplot(2, 1, 1), plot(obj.SDv_valleyloc, obj.SDv(obj.SDv_valleyloc), 'g.', 'Markersize', 2)
            title('�з����ۻ��ֲ�����'), xlabel('v'), ylabel('S_D(v)')
            % ����ԭ����
            subplot(2, 1, 2), plot(obj.SDu), hold on
            % ������еķ�ֵ
            subplot(2, 1, 2), plot(obj.SDu_pkloc, obj.SDu_pk, 'r.', 'Markersize', 2), hold on
            % ������в���
            subplot(2, 1, 2), plot(obj.SDu_valleyloc, obj.SDu(obj.SDu_valleyloc), 'g.', 'Markersize', 2)
            title('�з����ۻ��ֲ�����'), xlabel('u'), ylabel('S_D(u)')
            name = strcat(obj.path, 'SD.png');
            %saveas(gcf, strcat(obj.path, 'SD.png'))
            % ���Ա���ɸ��߷ֱ��ʵ�ͼ��-r600���÷ֱ���
            print(gcf, '-dpng', '-r600', name);
            
        end
    end
            
end
