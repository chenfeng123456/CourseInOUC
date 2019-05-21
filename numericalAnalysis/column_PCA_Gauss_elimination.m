function X = column_PCA_Gauss_elimination(A, b)
% A --> coefficients matrix
% b --> right-hand member

n = length(b);
for k = 1 : n - 1
   alpha = abs(A(k, k));
   i_k = k;
   for i = k+1 : n
       if alpha < abs(A(i, k))
           alpha = abs(A(i, k));
           i_k = i;
       end
   end
   if alpha == 0
       fprintf("ÏµÊý¾ØÕóÆæÒì\n");
       break;
   end
   for j = 1 : n
       temp = A(i_k, j);
       A(i_k, j) = A(k, j);
       A(k, j) = temp;
   end
   temp = b(i_k);
   b(i_k) = b(k);
   b(k) = temp;
   
   m = ones(1, n);
   for i = k+1 : n
       m(i) = A(i, k) / A(k, k);
   end
   for i = k+1 : n
       for j = k : n
           A(i, j) = A(i, j) - m(i) * A(k, j);
       end
       b(i) = b(i) - m(i) * b(k);
   end
end


b(n) = b(n) / A(n, n);
for i = n-1 : -1 : 1
    sum = 0;
    for j = i+1 : n
        sum = sum + A(i, j) * b(j);
    end
    b(i) = (b(i) - sum) / A(i, i);
end
X = b;