function output = err_eval(h)
    f = grid_eval(h,@(x,y) rhsfun(x,y));
    uh = pcg_solver(f);
    uI = grid_eval(h,@(x,y) sol(x,y));
    output = norm(uh-uI,inf);
end