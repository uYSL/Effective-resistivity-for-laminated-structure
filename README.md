# Effective-resistivity-for-laminated-structure
The matlab functions for calculating the effective resistivity of 2-D and 3-D laminated structures. 

Rho_Laminated_2D.m:
the function for calculating effective resistivity of 2-D laminated structure based on Equation(5) in Merzer and Klemperer (1992)

Rho_Laminated_3D.m:
the function for calculating effective resistivity of 3-D laminated structure; 
rhox and rhoy is calculated from rho2D;
rhoz can be approximated by the Hashin-Shtrikman resistivity upper bound, which represents the resistivity of a randomly isotropic two-phase system.

HSrho3D.m:
the function for calculating H-S resistivity upper bound of a 3-D laminated structure based on Equation (4)and(5) in Waff (1974).
