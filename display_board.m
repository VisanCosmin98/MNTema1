function [] = display_board(tabla)

disp(" ");
printf(" %c | %c | %c \n", tabla(1,1),tabla(1,2), tabla(1,3));
printf("-----------\n");
printf(" %c | %c | %c \n", tabla(2,1),tabla(2,2), tabla(2,3)); 
printf("-----------\n");
printf(" %c | %c | %c \n", tabla(3,1),tabla(3,2), tabla(3,3));
disp(" ");

endfunction
