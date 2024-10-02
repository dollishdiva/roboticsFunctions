function transform = trf(R,p)

%will create transformation matrix for n sized R and p
x = zeros(size(R,2)+1);

if size(p,1) == 1
    p =p';
end


while size(R,2) == size(p,1)
    transform = [R,p;x(size(R,2),:)];
    transform(end) = 1;
    break
end


end