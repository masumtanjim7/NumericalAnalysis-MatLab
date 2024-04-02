sum =  0;
for i = 1:1e5
  sq = sqrt(i);
  if(ceil(sq)*ceil(sq) == i)
    sum = sum + i;
  endif
 end
 sum
 