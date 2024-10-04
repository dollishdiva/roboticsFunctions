function rotate = rot(w,theta)
%outputs the rotation matrix given the rotation axis w and the rotation
%distance theta


if size(w,1) == 1
    w =w';
end

rotate = eye(size(w,1))+sin(theta)*skew(w)+(1-cos(theta))*skew(w)^2;
end
