A = [1,10,100,1000;1,15,225,3375;1,20,400,8000;1,22.5,506.25,11390.625];
b = [227.04;362.78;517.35;602.97];
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
z = x(1) + x(2)*16+x(3)*16^2+x(4)*16^3;
z

