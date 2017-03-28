function Z = zigzag(n)
%se initializeaza matricea, indicii, si  variabila auxiliara edge
%edge ne spune daca suntem pe margine, deoarece daca suntem pe margine apare
%o incrementare aditionala a indicelui
Z = zeros(n);
crt=0;
j=1;
k=1;
edge=0;


while (1)
%acest loop while completeaza partea de deasupra anti-diagonalei principale 
%cu numere crescatoare, luand pe rand fiecare anti-diagonala, si  se 
%opreste atunci cand ambele capete ale anti-diagonalei principale sunt diferite de 0
   if(Z(1,n) !=0 && Z(n,1) !=0)
    break
   endif

  if  (j==1 && k ==1) 
    Z(j,k)=crt;
    k=k+1;
    
  elseif (j==1 && k>1)
    if (edge == 1 && k != n) 
      crt+=1;
      Z(j,k)=crt;
      k=k+1;
      if (Z(1,n)!=0 && Z(n,1) !=0)
        break
      endif
      endif
    while (k>1 && j<=n)
      if (Z(1,n)!=0 && Z(n,1) !=0)
        break
      endif
      crt+=1;
      Z(j,k)=crt;
      k=k-1;
      j=j+1;
    endwhile
    edge=1;
  elseif (j>1 && k==1)
   if (edge == 1 && j!=n)
      crt+=1;
      Z(j,k)=crt;
      j=j+1;
      if (Z(1,n)!=0 && Z(n,1) !=0)
        break
      endif
    endif
    while (j>1 && k<=n)
      if (Z(1,n)!=0 && Z(n,1) !=0)
        break
      endif
     crt+=1;
     Z(j,k)=crt;
     k=k+1;
     j=j-1;
    endwhile
   edge=1;
  endif
endwhile
%matricea este rasturnata, astfel incat coltul din stanga sus devine coltul din 
%dreapta jos 
Z=flipud(Z);
Z=fliplr(Z);
crt=n*n-1;
edge=0;
j=1;
k=1;
while (1)
%se aplica din nou aceeasi metoda ca pentru jumatatea cealalta a matricei,
%doar ca acum numerele descresc de la n*n-1
  if (Z(1,n-1)!=0 && Z(n-1,1)!=0)
    break
   endif

  if  (j==1 && k ==1) 
    Z(j,k)=crt;
    k=k+1;
    
  elseif (j==1 && k>1)
    if (edge == 1 && k != n) 
      crt-=1;
      Z(j,k)=crt;
      k=k+1;

    endif
    while (k>1 && j<=n)
      crt-=1;
      Z(j,k)=crt;
      k=k-1;
      j=j+1;
    endwhile
    edge=1;
  elseif (j>1 && k==1)
   if (edge == 1 && j!=n)
      crt-=1;
      Z(j,k)=crt;
      j=j+1;
    endif;
    while (j>1 && k<=n)
    crt-=1;
     Z(j,k)=crt;
     k=k+1;
     j=j-1;
    endwhile
   edge=1;
  endif
endwhile
Z=fliplr(Z);
Z=flipud(Z);
%Matricea se rastoarna din nou , ajungand inapoi la pozitia originala
%si fiind completata in totalitate cu numerele cerute
endfunction