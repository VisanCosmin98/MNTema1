function m = maxim(k)
m=1;
p=length(k);
max=k(1);
for i=1:p
  if k(i)>max
    max=k(i);
    m=i;
  endif
endfor
endfunction