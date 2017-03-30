function x = multiple_encode(str)
x=[];
n=1;
while n<=length(str)
  litera=str(n);
  n++;
  x=[x, morse_encode(litera)];
endwhile