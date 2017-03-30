function x = treesearch(c,arbore,cale)
b=cale;
d=cale;
if (strcmp(arbore{1},c)==1)
  x=cale;
else
  x='*';
  if (isempty(arbore{2})==0)
    cale2=[cale,"."];
    b=treesearch(c,arbore{2},cale2);
   if(strcmp(b,"*") != 1 )
      x=b;
    endif
   endif
  if(strcmp(b,"*")==1)
   if(isempty(arbore{3})==0)
    cale1=cale;
    cale1=[cale1,"-"];
    d=treesearch(c,arbore{3},cale1);
     if (strcmp(d,"*")!=1)
      x=d;
     endif
    endif 
   endif
endif

endfunction