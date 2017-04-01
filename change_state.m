function [tabla, scorx, scory] = change_state(miscare,piesa,tabla,scorx,scory)
r=0;
if(miscare(1)<4 && miscare(1)>0 && miscare(2)<4 && miscare(2)>0)
  if tabla(miscare(1),miscare(2))==' '
    tabla(miscare(1),miscare(2))=piesa;
    scorx(miscare(1))+=1;
    for i=1:3
      if (tabla(miscare(1),i)!=piesa && tabla(miscare(1),i)!=' ')
      r=1;
      endif
    endfor
    if r==1;
    scorx(miscare(1))=0;
    endif
    scory(miscare(1))=0;
    r=0;
     scorx(miscare(2)+3)+=1;
     for i=1:3
      if (tabla(i,miscare(2))!=piesa && tabla(i,miscare(2))!=' ')
      r=1;
      endif
     endfor
     if r==1
     scorx(miscare(2)+3)=0;
     endif
     scory(miscare(2)+3)=0;
     r=0;
    if(miscare(1)==miscare(2))
      
      scorx(7)+=1;
      for i=1:3
        if tabla(i,i)!=piesa && tabla(i,i)!=' '
          r=1;
        endif
      endfor
      if r==1
        scorx(7)=0
      endif
      scory(7)=0;
     endif
    r=0;
      

    if(miscare(1)+miscare(2)==4)
      scorx(8)+=1;
      for j=1:3
        for  k=1:3
          if j+k==4 && tabla(j,k)!=piesa && tabla(j,k)!=' '
            scorx(8)=0;
           endif
          endfor
         endfor

      scory(8)=0;
    endif
   else disp("miscare invalida, incercati din nou")
   [ tabla,scorx,scory]=move(tabla, piesa, scorx, scory);
  endif
else disp("miscare invalida, incercati din nou")
  [tabla,scorx,scory]=move(tabla, piesa, scorx, scory);
endif
  
endfunction