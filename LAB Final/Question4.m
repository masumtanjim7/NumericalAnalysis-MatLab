f =@(x) 1/2*x^3;
a = 1;
b=6;
n=32;
dx = (b-a)/n;
equ=0;
sum = 0;
for i=0:n
  equ = a + i*dx;
  if i==0 || i==n
    sum +=f(equ);
  elseif mod(i,2)==0
    sum +=4*f(equ);
  else
    sum +=2*f(equ);
  endif
end

sum =sum * (dx/3);
sum