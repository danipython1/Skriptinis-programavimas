%% 2 laboratorinis darbas
% Danielius Kostin
% Variantas 19

clc;
clear;
close all;

%% 1. Vienmačiai masyvai

a = -2*pi:pi/4:2*pi;
b = tan(a);
c = a./b;

disp('1 uzduotis') %[output:9e1ae947]
disp('a =') %[output:3e3e8c43]
disp(a) %[output:897937fb]

disp('b =') %[output:761493c1]
disp(b) %[output:70706b98]

disp('c =') %[output:77710817]
disp(c) %[output:8d602088]

%% 2. Dvimačiai masyvai

Z = randn(2,3);

ZT = Z';

A = randn(1,3);

M = [Z; A];

D = det(M);

disp(' ') %[output:541c8bca]
disp('2 uzduotis') %[output:99187793]

disp('Z =') %[output:7f296d34]
disp(Z) %[output:58b5208c]

disp('ZT =') %[output:59680141]
disp(ZT) %[output:563ce4a0]

disp('A =') %[output:2dbd0319]
disp(A) %[output:5b6a2614]

disp('Determinantas =') %[output:8990a8c7]
disp(D) %[output:79045b1b]

%% 3. Praktinis veiksmu su masyvais taikymas

A = 7;
f = 4;
sigma = 2;
U1 = 4.5;
U2 = 2.5;

t = 0:0.005:1;

s = A*sin(2*pi*f*t);
n = sigma*randn(size(t));

x = s + n;

% a)
atrinktos = x(abs(x) > U1);

% b)
xf = x;
xf(abs(xf) < U2) = 0;

% c)
dydis_nefiltruoto = length(x);

% d)
dydis_atrinktu = length(atrinktos);

% e)
didziausia = max(xf);
maziausia = min(xf);

disp(' ') %[output:6ba0f081]
disp('3 uzduotis') %[output:2bd77036]

disp('Reiksmes virsijancios U1:') %[output:6efd4d58]
disp(atrinktos) %[output:5bbf73ca]

disp('Nefiltruoto signalo dydis:') %[output:45a0e853]
disp(dydis_nefiltruoto) %[output:8d5a521e]

disp('Atrinktu reiksmiu dydis:') %[output:8c0e744c]
disp(dydis_atrinktu) %[output:2faa2ac8]

disp('Didziausia filtruoto signalo reiksme:') %[output:0b9c8945]
disp(didziausia) %[output:66484dcd]

disp('Maziausia filtruoto signalo reiksme:') %[output:0ac421a9]
disp(maziausia) %[output:4e6e3beb]



%% Papildoma uzduotis P1

A = input('Iveskite vektoriu A: ');

B = A([1:2:end end:-2:1]);

disp('Vektorius B yra:') %[output:49839fcf]
disp(B) %[output:59b7706d]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright"}
%---
%[output:9e1ae947]
%   data: {"dataType":"text","outputData":{"text":"1 uzduotis\n","truncated":false}}
%---
%[output:3e3e8c43]
%   data: {"dataType":"text","outputData":{"text":"a =\n","truncated":false}}
%---
%[output:897937fb]
%   data: {"dataType":"text","outputData":{"text":"   -6.2832   -5.4978   -4.7124   -3.9270   -3.1416   -2.3562   -1.5708   -0.7854         0    0.7854    1.5708    2.3562    3.1416    3.9270    4.7124    5.4978    6.2832\n\n","truncated":false}}
%---
%[output:761493c1]
%   data: {"dataType":"text","outputData":{"text":"b =\n","truncated":false}}
%---
%[output:70706b98]
%   data: {"dataType":"text","outputData":{"text":"   1.0e+16 *\n\n    0.0000    0.0000   -0.5444   -0.0000    0.0000    0.0000   -1.6331   -0.0000         0    0.0000    1.6331   -0.0000   -0.0000    0.0000    0.5444   -0.0000   -0.0000\n\n","truncated":false}}
%---
%[output:77710817]
%   data: {"dataType":"text","outputData":{"text":"c =\n","truncated":false}}
%---
%[output:8d602088]
%   data: {"dataType":"text","outputData":{"text":"   1.0e+16 *\n\n   -2.5653   -0.0000    0.0000    0.0000   -2.5653   -0.0000    0.0000    0.0000       NaN    0.0000    0.0000   -0.0000   -2.5653    0.0000    0.0000   -0.0000   -2.5653\n\n","truncated":false}}
%---
%[output:541c8bca]
%   data: {"dataType":"text","outputData":{"text":" \n","truncated":false}}
%---
%[output:99187793]
%   data: {"dataType":"text","outputData":{"text":"2 uzduotis\n","truncated":false}}
%---
%[output:7f296d34]
%   data: {"dataType":"text","outputData":{"text":"Z =\n","truncated":false}}
%---
%[output:58b5208c]
%   data: {"dataType":"text","outputData":{"text":"   -0.4930    0.0458    0.6113\n   -0.1807   -0.0638    0.1093\n\n","truncated":false}}
%---
%[output:59680141]
%   data: {"dataType":"text","outputData":{"text":"ZT =\n","truncated":false}}
%---
%[output:563ce4a0]
%   data: {"dataType":"text","outputData":{"text":"   -0.4930   -0.1807\n    0.0458   -0.0638\n    0.6113    0.1093\n\n","truncated":false}}
%---
%[output:2dbd0319]
%   data: {"dataType":"text","outputData":{"text":"A =\n","truncated":false}}
%---
%[output:5b6a2614]
%   data: {"dataType":"text","outputData":{"text":"    1.8140    0.3120    1.8045\n\n","truncated":false}}
%---
%[output:8990a8c7]
%   data: {"dataType":"text","outputData":{"text":"Determinantas =\n","truncated":false}}
%---
%[output:79045b1b]
%   data: {"dataType":"text","outputData":{"text":"    0.1339\n\n","truncated":false}}
%---
%[output:6ba0f081]
%   data: {"dataType":"text","outputData":{"text":" \n","truncated":false}}
%---
%[output:2bd77036]
%   data: {"dataType":"text","outputData":{"text":"3 uzduotis\n","truncated":false}}
%---
%[output:6efd4d58]
%   data: {"dataType":"text","outputData":{"text":"Reiksmes virsijancios U1:\n","truncated":false}}
%---
%[output:5bbf73ca]
%   data: {"dataType":"text","outputData":{"text":"    4.5601    6.7140    9.2742    6.0038    8.5007    8.0773    4.8829    7.6709    5.1536    9.3663    5.8452    8.6656    5.2934   -5.3583   -6.0732   -8.0700   -5.9354   -9.6994   -8.3233   -8.1727   -6.1835   -4.9917   -6.0564   -7.0799   -4.5514   -4.5508    4.5630    6.2082    6.0489    5.4337    6.7930    7.5374    5.6423    7.5359    8.1884    7.0606   10.1171    5.1167    6.6128    5.8487   -5.7056   -7.8231   -7.0732   -7.5803   -6.7775   -6.6707   -7.0945   -5.7933   -6.2077   -5.4837   -8.9003  -10.5682   -8.4631    4.7475    8.5727    5.4960    6.3768    8.6757    6.3860    9.0449    6.1859    8.6830    7.5925    5.4843   -5.6198   -6.2701   -7.5214   -5.5781   -7.7063   -5.5744   -9.8664   -5.2987   -5.8465   -6.9639    6.4331    5.8820    6.6383    5.4964    5.6528    8.7145    7.1028    7.4541    8.1017    6.2708    6.4953    6.1578    6.4557    5.4013   -4.8105   -7.4657   -5.2004   -9.4226   -6.3871   -5.3693   -6.5601   -5.1167   -5.3765   -6.7439\n\n","truncated":false}}
%---
%[output:45a0e853]
%   data: {"dataType":"text","outputData":{"text":"Nefiltruoto signalo dydis:\n","truncated":false}}
%---
%[output:8d5a521e]
%   data: {"dataType":"text","outputData":{"text":"   201\n\n","truncated":false}}
%---
%[output:8c0e744c]
%   data: {"dataType":"text","outputData":{"text":"Atrinktu reiksmiu dydis:\n","truncated":false}}
%---
%[output:2faa2ac8]
%   data: {"dataType":"text","outputData":{"text":"    98\n\n","truncated":false}}
%---
%[output:0b9c8945]
%   data: {"dataType":"text","outputData":{"text":"Didziausia filtruoto signalo reiksme:\n","truncated":false}}
%---
%[output:66484dcd]
%   data: {"dataType":"text","outputData":{"text":"   10.1171\n\n","truncated":false}}
%---
%[output:0ac421a9]
%   data: {"dataType":"text","outputData":{"text":"Maziausia filtruoto signalo reiksme:\n","truncated":false}}
%---
%[output:4e6e3beb]
%   data: {"dataType":"text","outputData":{"text":"  -10.5682\n\n","truncated":false}}
%---
%[output:49839fcf]
%   data: {"dataType":"text","outputData":{"text":"Vektorius B yra:\n","truncated":false}}
%---
%[output:59b7706d]
%   data: {"dataType":"text","outputData":{"text":"     1     3     5     5     3     1\n\n","truncated":false}}
%---
