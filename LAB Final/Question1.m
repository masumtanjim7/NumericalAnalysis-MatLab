A = [1,20,400;1,25.5,650.25;1,30,900]
b = [420.0;525.5;630.0]
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

z = x(1) + x(2)*26+x(3)*26^2;
z