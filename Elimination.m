clear 
clc
A = [1,2,1;3,8,1;0,4,1]
B = [2,12,2]'
AUG = [A,B]
[M,N] = size(A);
L = eye(M,N);
for j = 1:M
    for i = 1:N
        if (i>j)
            if (AUG(i,j) ~= 0)
                AUG(i,:) = (AUG(i,j)/AUG(j,j))*AUG(j,:) - AUG(i,:)
                L()
            end
        end
    end
end