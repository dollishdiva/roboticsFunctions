### To use these scripts for ur robotics calcs just save them all in the same folder and add them to your MATLAB path!

**function descriptions**  
skew(w,v): creates a 3x3 skew symmetric matrix given a size 3 row or column vector. Creates a 4x4 screw skew symmetric matrix if given both w and v  
rot(w,theta): outputs the rotation matrix R given a rotation axis (w) and angular distance (theta).  
roti(R): outputs the rotation axis and angular distance given a rotation matrix.  
trf(R,p): creates a size n transform matrix given a nxn rotation matrix (R) and n size row or column position vector (p).  
trfi(T) or trfi(R,p): takes the inverse of a transformation matrix given either a transformation matrix (T) OR a rotation matrix (R) and position vector (p) (n size).  
adj(T): creates the 2nx2n adjoint matrix given the nxn transformation matrix (T).  
