f=imread('dct5.jpg');
[M,N]=size(f);
 figure, imshow(f);
%  figure, imhist(f);
% R=imnoise2('salt & pepper', M,N, 0.1,0);
% c=find(R == 0);
% gp=f;
% gp(c)=0;
% figure, imshow(gp), title('with peper noise');


R=imnoise2('salt & pepper', M,N, 0.2,0.2);

c=find(R == 0);
gs=f;
gs(c)=0;

c=find(R == 1);

gs(c)=255;

 figure, imshow(gs), title('with salt noise');
% figure, imhist(gs);

% R=imnoise2('salt & pepper', M,N);
% % c=find(R == 0);
% % gs=f;
% % gs(c)=255;
% R=uint8(R);
% K = imadd(f,R,'uint8');
% figure, imshow(K)
% figure, imhist(K);


%with mean filter
fp=spfilt(gs, 'median',5,5);
figure, imshow(fp), title('with mean filter');

