function [] = joc()
joc=1;

totalx=0;
totaly=0;
while(joc==1 )
  choice=menu("Alegeti daca vrei sa jucati cu X sau O", "X", "O","Nu vreau sa mai joc");
    printf("Scorurile sunt \n Calculator: %d \n Jucator: %d \n", totaly, totalx);
  movenr=0;
  ocupat=0;
  nowhile=0;
  victoryx=0;
  victoryy=0;
  scorx=[0,0,0,0,0,0,0,0];
  scory=[0,0,0,0,0,0,0,0];
  if (choice == 3)
    nowhile=1;
    joc=0;
   endif
  if joc ==1
  if choice==1
    piesa="X";
    calc="O"
  else 
    piesa="O";
    calc="X"
    
  endif
  tabla=[" " " " " " ;" " " " " ";" " " " " "];
  display_board(tabla);
  if(choice == 1)
  while victoryx==0 && victoryy==0 && ocupat<=9 && nowhile!=1

    [tabla,scorx,scory]=move(tabla,piesa,scorx,scory);
    
    for i=1:8
      if(scory(i)>=3)
        victoryy=1;
        totaly+=1;
        disp("Calculatorul a castigat!")
        break;
      endif
      if(scorx(i)>=3)
        victoryx=1;
        totalx+=1;
        disp("Ati castigat!")
        break;
      endif
     endfor
     
    ocupat++
    display_board(tabla);
    [tabla,scorx,scory]=determina(tabla,scorx,scory,movenr,calc);
    ocupat++;
    display_board(tabla);
    movenr++;
    
    for i=1:8
      if(scory(i)>=3)
        victoryy=1;
        totaly+=1;
        disp("Calculatorul a castigat!")
        break;
      endif
      if(scorx(i)>=3)
        victoryx=1;
        totalx+=1;
        disp("Ati castigat!")
        break;
      endif
     endfor
     if ocupat>=9 && victoryx==0 && victoryy ==0
      disp("Remiza!")
      
      endif
         
    endwhile
  else
  while victoryx==0 && victoryy==0 && ocupat<=9 && nowhile!=1    
    [tabla, scorx, scory]=determina(tabla,scorx,scory,movenr,calc);
    ocupat++;
    display_board(tabla)
    
    for i=1:8
      if(scory(i)>=3)
        victoryy=1;
        totaly+=1;
       
        break;
      endif
      if(scorx(i)>=3)
        victoryx=1;
        totalx+=1;
       
        break;
      endif
     endfor
     
    movenr++;
    if victoryy!=1
    [tabla,scorx,scory]=move(tabla,piesa,scorx,scory);
    ocupat++;
    
    display_board(tabla);
    endif
    for i=1:8
      if(scory(i)>=3)
        victoryy=1;
        totaly+=1;
        disp("Calculatorul a castigat!")
        break;
      endif
      if(scorx(i)>=3)
        victoryx=1;
        totalx+=1;
        disp("Ati castigat!")
        break;
      endif
     endfor
     if ocupat>=9 && victoryx==0 && victoryy ==0
      disp("Remiza!")
    
      endif
         
    
    endwhile
  endif
  endif
endwhile

 
endfunction
