%segs = {[-1,0] [0,1];[0,1] [1,0]};
segs = {[1,1] [2,1];[2,1] [3,0];[3,0] [4,-1];[4 -1] [5 -3]};
offset = 1;
mpls = MPLS_Struct(offset,segs);
%mpls.varc_gen(1,0.5)
mpls.plotfunc()
