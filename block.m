function [tabla, scorx, scory]=block(tabla,scorx,scory,i,piesa)
b=0;
if i<=3
  for j=1:3
   if tabla (i,j)==' '
    miscare=[i,j];
    [tabla,scorx,scory]=change_state(miscare,piesa,tabla,scorx,scory);
    break;
   endif
  endfor
endif
if i>3 && i <=6
  for j=1:3
   if tabla (j,i-3)==' '
    miscare=[j,i-3];
    [tabla,scorx,scory]=change_state(miscare,piesa,tabla,scorx,scory);
    break;
   endif
  endfor
endif
if i==7
  for j=1:3
   if tabla (j,j)==' '
    miscare=[j,j];
    [tabla,scorx,scory]=change_state(miscare,piesa,tabla,scorx,scory);
    break;
   endif
  endfor
endif
if i==8
   for j=1:3
   if b==1
    break
   endif
    for k=1:3
      if j+k ==4 && tabla(j,k)==' '
       miscare=[j,k];
       [tabla,scorx,scory]=change_state(miscare,piesa,tabla,scorx,scory);
        b=1;
        break
       endif
      endfor
     endfor
endif
endfunction