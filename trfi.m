function inverseTransform = trfi(T,R)
%will calculate the inverse of a transform matrix given either a transform
%matrix input or a rotation matrix and position vector

%should work for n size transforms (I'm not testing it past 4 though)
%note if using R,p form T = R and R = p


switch nargin
    case 1
       %fetches the R matrix and p vector from Transform
        tempR = zeros(size(T,1)-1);
        tempP = zeros([1,size(T,2)-1]);
        tempT = zeros(size(T,1));

        for i= 1:size(T,1)-1
            for j = 1:size(T,2)-1
            tempR(i,j) = T(i,j);
            end
        end
        for i = 1:size(T,2)-1
            tempP(i) = T(i,end);
        end
        %builds inverse
        inverseTransform = [tempR',-tempR'*tempP';tempT(end,:)];
        inverseTransform(end) = 1;
    otherwise
        if size(R,2) > 1
            R=R';
        end

        tempT = zeros(size(T,1)+1);
        inverseTransform = [T',-T'*R;tempT(end,:)];
        inverseTransform(end) = 1;
end
end
