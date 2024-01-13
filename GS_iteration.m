function u_final = GS_iteration(u0,f,max_iter, tol)
    err = inf;
    u = u0;
    h = 1/(size(u,2)-1);
    iter = 0;
    while (err>tol) && (iter<=max_iter)
        u = GS(u,f);
        err = norm(f-ProductMatrixFree(h,u),inf)/norm(f,inf);
        iter = iter + 1;
    end
    u_final = u;
end