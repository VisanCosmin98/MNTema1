function [tabla,scorx,scory]= move(tabla,piesa,scorx, scory)

miscare=[0,0];
disp("introduceti miscarea dvs, introducand linia (1-3)")
miscare(1)=input(' ');
disp("si coloana(1-3)");
miscare(2)=input(' ');
[tabla,scorx,scory]=change_state(miscare,piesa,tabla,scorx,scory);
endfunction
