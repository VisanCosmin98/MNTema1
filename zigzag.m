function Z = zigzag(n)

Z = zeros(n,n);
crt=0;
j=1;
k=1;

while crt < n*n
disp("iter")
  if  (j==1 && k ==1) 
    Z(j,k)=crt;
    crt+=1;
    k+=1;
    disp("if1")
  elseif (j==1 && k!=1)
    Z(j,k)==crt;
    disp("if2")
    while k!=1
    disp("while1")
      crt +=1;
      k-=1;
      j+=1;
      Z(j,k)=crt
    endwhile
  elseif (j!=1 && k==1)
    Z(j,k)==crt;
    disp("if3")
    while j!=1
    disp("while2")
     crt+=1;
     k+=1;
     j-=1;
     Z(j,k)==crt
    endwhile
  endif
endwhile
endfunction