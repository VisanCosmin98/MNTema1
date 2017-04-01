function [tabla,scorx,scory] =determina(tabla, scorx, scory,movenr,calc)
mut=0;
if movenr==0
 if tabla(2,2)==' '
   miscare=[2,2];
   [tabla ,scory,scorx]=change_state(miscare,calc,tabla,scory,scorx);
   mut=1;
 elseif tabla(1,1)==' '
   miscare=[1,1];
   [tabla,scory,scorx]=change_state(miscare,calc,tabla,scory,scorx);
  mut=1;
  endif
 mut=1;
else  

   for i=1:8
    if scory(i)==2
     [tabla,scory,scorx]=block(tabla,scory,scorx,i,calc);
     mut=1;
     break;
    endif
   endfor
   if mut==0
    for i=1:8
    if scorx(i)==2
     [tabla,scory,scorx]=block(tabla,scory,scorx,i,calc);
     mut=1;
     break;
    endif
  endfor
  endif
endif
if mut==0
[maxpoz]=maxim(scory);
[tabla, scory, scorx]=block(tabla, scory, scorx,maxpoz , calc);
mut=1;
endif
  
endfunction