### To use these scripts for ur robotics calcs just save them all in the same folder and add them to your MATLAB path!

**function descriptions**
skew: creates a 3x3 skew symmetric matrix given a size 3 row or column vector.
rot: outputs the rotation matrix R given a rotation axis and angular distance.
roti: outputs the rotation axis and angular distance given a rotation matrix.
trf: creates a size n transform matrix given a nxn rotation matrix and n size row or column position vector.
trfi: takes the inverse of a transformation matrix given either a transformation matrix OR a rotation matrix and position vector (n size).
adj: creates the 2nx2n adjoint matrix given the nxn transformation matrix.
