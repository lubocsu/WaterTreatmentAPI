s=dbstatus;
save('myBreakpoints.mat', 's');
clear all
load('myBreakpoints.mat');
dbstop(s);
Cr = [
    0.5
    1
    2
    4
    8
    18
    46
    50
    80
    90
    ];

Ar = [
    83.25
    99.8
    124.5
    165.3333333
    246
    337.4
    385.9
    450
    504
    546.6666667
    ];

%=====for Gibbs energy
M=184.11;%��/�����
Vz=0.11;%��^3/�����
Va=0.51;%��^3/�
T=293;%�
Cout_xpk=640;%���/�
% Gibbs(Cr(2:end),Ar(2:end),M,Va,Vz,T)
% Gibbs_xpk(Cr(2:end),Ar(2:end),Va,T)
% GibbsEnergy.calculate(Cr(2:end),Ar(2:end),M,Va,Vz,T)
M = Model(Cr, Ar);
ar = 1:1:length(M.isotermTypes);
M.calculate(ar);




