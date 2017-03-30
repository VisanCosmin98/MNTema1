function x = morse_encode(c)
x='';
arbore=morse();
x = treesearch(c,arbore,x);
endfunction