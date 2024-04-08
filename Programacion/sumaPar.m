function [s] = sumaPar(M)

s = 0;
[x,y] = size(M);
for i=1:1:x
    for j=1:1:y
        if bitand(M(i,j),1)==0
        %if mod(M(i,j),2)==0
            s = s+M(i,i);
        end
    end
end

end