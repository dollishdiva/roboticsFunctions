function adjointed = adj(T)

%fetches the R matrix and p vector from Transform, creates tempT which is
%placeholder for adj matrix
tempR = zeros(size(T,1)-1);
tempT = zeros(size(T,1)-1);
tempP = zeros([1,size(T,2)-1]);

for i= 1:size(T,1)-1
    for j = 1:size(T,2)-1
        tempR(i,j) = T(i,j);
    end
end

for i = 1:size(T,2)-1
    tempP(i) = T(i,end);
end

p = skew(tempP);
adjointed = [tempR,tempT;p*tempR,tempR];

end