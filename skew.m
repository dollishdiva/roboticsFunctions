function skew = skew(w,v)
%creates skew symmetric matrix for column or row vector (size 3), or screw
%given w and lin vel v

switch nargin
    case 1
    if size(w,2) == 1 || size(w,1) == 1 
        skew = [0 -w(3) w(2); w(3) 0 -w(1); -w(2) w(1) 0];
    else
        disp("skew matrix not possible with this vector");
    end
    otherwise
        skew = [0 -w(3) w(2) v(1); w(3) 0 -w(1) v(2); -w(2) w(1) 0 v(3); 0 0 0 0];

end
end
