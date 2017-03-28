function m = morse()

hh = {'H' {} {}};
vv = {'V' {} {}};
ff = {'F' {} {}};
ll = {'L' {} {}};
pp = {'P' {} {}};
jj = {'J' {} {}};
bb = {'B' {} {}};
xx = {'X' {} {}};
cc = {'C' {} {}};
yy = {'Y' {} {}};
zz = {'Z' {} {}};
qq = {'Q' {} {}};

ss = {'S' hh vv};
uu = {'U' ff {}};
rr = {'R' ll {}};
ww = {'W' pp jj};
dd = {'D' bb xx};
kk = {'K' cc yy};
gg = {'G' zz qq};
oo = {'O' {} {}};

ii = {'I' ss uu};
aa = {'A' rr ww};
nn = {'N' dd kk};
mm = {'M' gg oo};

ee = {'E' ii aa};
tt = {'T' nn mm};

m = {'' ee tt};
endfunction 