function rho2d = Rho_Laminated_2D( L,g,t,n,rhoc,rhom )

% Rho_Laminated_2D - A function for calculating effective resistivity of 2-D laminated structure
%                     based on Equation(5) in Merzer and Klemperer (1992)
% L  --  Length of Lamellae (unit:m)
% g  --  Thickness of lamellae (unit:m)
% t  --  Vertical separation between two layers (unit:m)
% n  --  Overlap ratio
% rhoc  -- resistivity of the lamellae
% rhom  -- resistivity of matrix

%  Shuyu Liu, 2021.
%  Comments, bug reports and questions, please send to:
%  liushuyu@zju.edu.cn.
%  Copyright 2019-2021 Shuyu Liu, ZJU.
%  $Revision: 1.0 $ $Date: 2021/03/27 $

al=sqrt(rhoc/rhom/g/t);
rho2d=(rhoc*(g+t)/g/(1-n))*(coth(n*al*L)/al/L+(2-3*n));

end

