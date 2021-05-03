function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix
[m,n] = size(A);
L=eye(n)
P=eye(n)
U=A

if size(A)~= [n,n]
    error('not a square matrix')
elseif nargin <1
    error ('did not input a matrix')
end

for c=1:n
   for s=c+1:m
       L(s,c) = U(s,c)/U(c,c);
       U(s,c:m)=U(s,c:m)-L(s,c)*U(c,c:m);
       L(m/n,n./m)=1
       L(m,n)=1;
       L(n-1,m-1);
   end
end
end



