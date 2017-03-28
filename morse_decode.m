function x = morse_decode(sir)

arbore=morse();
n=1;
while(n<=length(sir))
  if(n>=4)
    x='*';
    break
  endif
 if sir(n)=='.'
    arbore=arbore{2};
    n=n+1;
 elseif sir(n)=='-'
    arbore=arbore{3};
    n=n+1;
 else 
   x='*';
   break
 endif
 x=arbore{1};
endwhile
endfunction