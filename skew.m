function skew = skew(w)
%creates skew symmetric matrix for column or row vector (size 3)

if size(w,2) == 1 || size(w,1) == 1 
    skew = [0 -w(3) w(2); w(3) 0 -w(1); -w(2) w(1) 0];
else
    disp("skew matrix not possible with this vector");
end


end