function x = multiple_decode(sir)
x=[];
while isempty(sir)!=1
  [cuv, sir]=strtok(sir,' ');
  x=[x, morse_decode(cuv)];
endwhile