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
sum += f(equ);
else
equ = a + i*dx;
sum += 2*f(equ);
endif
end
sum = sum *(dx/2);
sum

