function Z = zigzag(n)

Z = zeros(n);
crt=0;
j=1;
k=1;
edge=0;
mid=0

while (1)
   if(Z(1,n) !=0 && Z(n,1) !=0)
    break
   endif

  if  (j==1 && k ==1) 
    Z(j,k)=crt;
    k=k+1;
    
  elseif (j==1 && k>1)
    if (edge == 1 && k != n) 
      crt+=1
      Z(j,k)=crt
      k=k+1;
      if (Z(1,n)!=0 && Z(n,1) !=0)
        break
      endif
      endif
    while (k>1 && j<=n)
      if (Z(1,n)!=0 && Z(n,1) !=0)
        break
      endif
      crt +=1
      Z(j,k)=crt
      k=k-1;
      j=j+1;
    endwhile
    edge=1;
  elseif (j>1 && k==1)
   if (edge == 1 && j!=n)
      
      crt+=1
      Z(j,k)=crt
      j=j+1;
      if (Z(1,n)!=0 && Z(n,1) !=0)
        break
      endif
    endif
    while (j>1 && k<=n)
      if (Z(1,n)!=0 && Z(n,1) !=0)
        break
      endif
    crt+=1
     Z(j,k)=crt
     k=k+1;
     j=j-1;
    endwhile
   edge=1;
  endif
endwhile
Z=flipud(Z)
Z=fliplr(Z)
crt=n*n-1
edge=0
j=1
k=1
while (1)
  if (Z(1,n-1)!=0 && Z(n-1,1)!=0)
    break
   endif

  if  (j==1 && k ==1) 
    Z(j,k)=crt;
    k=k+1;
    
  elseif (j==1 && k>1)
    if (edge == 1 && k != n) 
      crt-=1
      Z(j,k)=crt
      k=k+1;

    endif
    while (k>1 && j<=n)
      crt -=1
      Z(j,k)=crt
      k=k-1;
      j=j+1;
    endwhile
    edge=1;
  elseif (j>1 && k==1)
   if (edge == 1 && j!=n)
      crt-=1
      Z(j,k)=crt
      j=j+1;
    endif
    while (j>1 && k<=n)
    crt-=1
     Z(j,k)=crt
     k=k+1;
     j=j-1;
    endwhile
   edge=1;
  endif
endwhile
Z=fliplr(Z)
Z=flipud(Z)
endfunction