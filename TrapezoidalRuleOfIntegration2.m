f = @ (x) 1/x;
a = 1;
b = 3;
n = 7;
equ =0;
sum = 0;
dx = (b-a)/7;
for i=0:n
if i==0 || i==n
equ = a + i*dx;
sum + = f(equ);
elseif mod(i,2)==1
equ = a + i*dx;
sum + =2*f(equ);
else
equ = a + i*dx;
sum + = 4*f(equ);
endif
end
sum = sum *(dx/3);
sum
