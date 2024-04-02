f = @(x) 1/x^2;
a = 2;
b = 5;
n = 26;
equ = 0;
sum = 0;
dx = (b-a)/n;
for i=0:n
  if i==0 || i==n
    equ = a+i*dx;
    sum +=f(equ);
   else
    equ = a+ i*dx;
    sum += 2*f(equ);
  endif
end
sum = sum*(dx/2);
sum