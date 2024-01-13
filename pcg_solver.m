function u = pcg_solver(f)
    h = 1/(size(f,2)-1);
    f1d = reshape(f,[],1);
    u1d = pcg(@(v) Product1d(h,v),f1d,0.1*h^2);
    u = reshape(u1d,2/h+1,1/h+1);
end

function u = Product1d(h,v)
    dimy = 2/h+1;
    dimx = 1/h+1;
    v2d = reshape(v,dimy,dimx);
    prod2d = ProductMatrixFree(h,v2d);
    u = reshape(prod2d,[],1);
end