function g= gaussian(f)
%��˹�˲�
%��δ������һ����˹�˲����������һ��С���ɣ�ʹ��ͼ���ף��ﵽ���׵�Ч��
%gaussian
%��ʾԭͼ
f = imread(f);
figure,imshow(f,[]);
h=fspecial('gaussian',[3 3],100);
I1=imfilter(f,h,'same');
%��ʾ������˹�˲�����֮���ͼ
figure,imshow(I1,[]); 

%blend
G = (f*(1 - opacity)+(f+2*I1-1)*opacity);
%��ʾ����blend����֮���ͼ
figure,imshow(G,[]); 

%����RGB��ֵ����ΪԽ���RGBֵ��Խ��
G=G+30;
%��ʾ�������״���֮���ͼ
figure,imshow(G,[]);

g=G;
end

% 
% ��������������������������������
% ��Ȩ����������ΪCSDN������tianguiyuyu����ԭ�����£���ѭ CC 4.0 BY-SA ��ȨЭ�飬ת���븽��ԭ�ĳ������Ӽ���������
% ԭ�����ӣ�https://blog.csdn.net/tianguiyuyu/article/details/79058394