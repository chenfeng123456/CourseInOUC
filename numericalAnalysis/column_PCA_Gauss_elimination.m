function X = column_PCA_Gauss_elimination(A, b, n)
% A --> coefficients matrix
% b --> right-hand member
% n --> orders

for k = 1 : n - 1
   alpha = A(k, k);
   i_k = k;
   for i = k+1 : n
       if alpha < A(k, i)
           alpha = A(k, i);
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
       temp = b(i_k);
       b(i_k) = b(k);
       b(k) = temp;
   end
   m = ones(1, n);
   for i = k+1 : n
       m(i) = A(i, k) / A(k, k);
       A(i, k) = 0;
   end
   for i = k+1 : n
       for j = k+1 : n
           A(i, j) = A(i, j) - m(i) * A(k, j)
       end
       b(i) = b(i) - m(i) * b(k);
   end
end

for i = n-1 : -1 : 1
    sum = 0;
    for j = i+1 : n
        sum = sum + A(i, j) * b(j);
    end
    b(i) = (b(i) - sum) / A(i, i);
end
X = b