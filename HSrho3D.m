function rhou = HSrho3D( Lx,Ly,nx,ny,g,t,rhoc,rhom )

% HSrho3D  - A function for calculating H-S resistivity upper bound of a 3-D laminated structure
%            based on Equation (4)and(5) in Waff (1974).
% Lx Ly  --  Length of Lamellae in the x and y direction, respectively (unit:m)
% g      --  Thickness of lamellae (unit:m)
% t      --  Vertical separation between two layers (unit:m)
% nx ny  --  Overlap ratio in the x and y direction, respectively
% rhoc  -- resistivity of the lamellae
% rhom  -- resistivity of matrix
%  Shuyu Liu, 2021.
%  Comments, bug reports and questions, please send to:
%  liushuyu@zju.edu.cn.
%  Copyright 2019-2021 Shuyu Liu, ZJU.
%  $Revision: 1.0 $ $Date: 2021/03/27 $

Sx=(1-2*nx)*Lx;
Sy=(1-2*ny)*Ly;
Cm=Lx*Ly*g/(Lx+Sx)/(Ly+Sy)/(g+t);  % volumn ratio for conductive phase
Cs=1-Cm;
sigmac=1/rhoc;
sigmam=1/rhom;
sigmal=sigmam+Cm*(1/(sigmac-sigmam)+Cs/3/sigmam)^(-1);
rhou=1/sigmal;

end

