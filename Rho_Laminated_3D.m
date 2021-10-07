function [ rhox,rhoy,rhoz ] = Rho_Laminated_3D( Lx,Ly,nx,ny,g,t,rhoc,rhom )
% Rho_Laminated_3D- A function for calculating effective resistivity of 3-D laminated structure;
%                   rhox and rhoy is calculated from rho2D, rhoz can be approximated by the Hashin-Shtrikman resistivity upper
%                   bound(the function HSrho3D), which represents the
%                   resistivity of a randomly isotropic two-phase system.
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


rhox2D=Rho_Laminated_2D(Lx,g,t,nx,rhoc,rhom);
rhoy2D=Rho_Laminated_2D(Ly,g,t,ny,rhoc,rhom);

rhox=rhox2D.*2*(1-ny);
rhoy=rhoy2D.*2*(1-nx);
rhoz=HSrho3D( Lx,Ly,nx,ny,g,t,rhoc,rhom )

end

