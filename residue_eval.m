function resi = residue_eval(h)
    % Given any product A*u, evaluate the residue A*u-f, where f is the
    % rught-hand-side function
    v = grid_eval(h,@(x,y) sol(x,y));
    f = grid_eval(h,@(x,y) rhsfun(x,y));
    Au = ProductMatrixFree(h,v);

    resi = norm(Au - f,inf);
end