classdef img_detection < handle
    properties( SetAccess = private, GetAccess = public )
        img_orig;
        img;
        img_gray;
        maxR;
        maxC;
        flag = 0;
        cnt = 0;
        thred_of_num = 1500;
        thred_of_pix = 80;
    end
    
    methods
        function obj = img_detection(im_path)
            obj.img_orig = imread(im_path);
            obj.img = obj.img_orig;
            obj.img_gray = rgb2gray(obj.img);
            [obj.maxR, obj.maxC] = size(obj.img_gray);
            obj.flag = 0;
            obj.cnt = 0;
            obj.im_detect_defacement
        end
    end
    
    methods ( Access = private )
        function im_count_defacement(obj, row, col)
            if ( row > obj.maxR || row < 1 || col > obj.maxC || col < 1 )
                
            elseif ( obj.img_gray(row, col) <= obj.thred_of_pix )
                %orig = img(row, col);
                obj.cnt = obj.cnt + 1;
                if ( obj.cnt < obj.thred_of_num )
                    obj.img(row, col) = 255;
                    obj.img_gray(row, col) = 255;
                    obj.im_count_defacement(row-1, col-1);
                    obj.im_count_defacement(row-1, col);
                    obj.im_count_defacement(row-1, col+1);
                    obj.im_count_defacement(row, col-1);
                    obj.im_count_defacement(row, col+1);
                    obj.im_count_defacement(row+1, col-1);
                    obj.im_count_defacement(row+1, col);
                    obj.im_count_defacement(row+1, col+1);
                end
                
            end
        end
    end
    
    methods
        function im_detect_defacement(obj)
            obj.img = obj.img_orig;
            obj.img_gray = rgb2gray(obj.img);
            obj.flag = 0;
            obj.cnt = 0;
           
            figure(1);
            subplot(1, 3, 1);
            imshow(obj.img_orig)
            title('原始图像')
            subplot(1, 3, 2);
            imshow(obj.img_gray)
            title('灰度图像')
            
            for i = 1 : obj.maxR
                for j = 1 : obj.maxC
                    if ( obj.img_gray( i, j ) <= obj.thred_of_pix )
                        obj.cnt = 0;%清空计数器
                        obj.im_count_defacement(i, j);
                        if ( obj.cnt >= obj.thred_of_num-1 )
                            fprintf("num = %d\n", obj.cnt);
                            obj.flag = 1;
                            break;
                        end
                    end
                end
                if ( obj.flag == 1 )
                    break;
                end
            end
            fprintf('flag = %d\n', obj.flag);
            subplot(1, 3, 3);
            imshow(obj.img)
            if ( obj.flag )
                title('有损毁')
            else
                title('无损毁')
            end
        end
    end

end