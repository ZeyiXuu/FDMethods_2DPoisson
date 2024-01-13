function res = GS(u,f)
    dimy = size(u,1);
    dimx = size(u,2);
    h = 1/(dimx-1);
    fh2 = h*h.*f;
    for i = 2:dimy-1
        for j = 2:dimx-1
            u(i,j)=(fh2(i,j)+u(i-1,j)+u(i+1,j)+u(i,j-1)+u(i,j+1))/4;
        end                                                                                                                                       
    end
    res = u;
end