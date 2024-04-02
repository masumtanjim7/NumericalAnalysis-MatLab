A = [1,15;1,20];
b = [362.78;517.35];
n = length(b);
for i=1:n-1
for k = i+1:n
fec = A(k,i)/A(i,i);
A(k,i:n) = A(k,i:n)-fec*A(i,i:n);
b(k) = b(k)-fec*b(i);
endfor
end
x = zeros(n,1);
for i=n:-1:1
x(i) = (b(i) - A(i,i+1:n)*x(i+1:n))/A(i,i);
end
z = x(1) + x(2)*16;
z
