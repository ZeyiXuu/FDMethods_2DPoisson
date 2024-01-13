function res = ProductMatrixFree(h,v)
    % Given any v, output A*v in a matrix-free manner

    dimx = 1/h + 1;
    dimy = 2/h + 1;
    u = zeros(dimy,dimx);
    for x = 2:dimx-1
        for y = 2:dimy-1
            % Initialize u(y, x)
            u(y, x) = 4 * v(y, x);
            
            % Add neighboring values if they are within bounds
            if x > 1
                u(y, x) = u(y, x) - v(y, x-1);
            end
            if x < dimx
                u(y, x) = u(y, x) - v(y, x+1);
            end
            if y > 1
                u(y, x) = u(y, x) - v(y-1, x);
            end
            if y < dimy
                u(y, x) = u(y, x) - v(y+1, x);
            end
        end
    end

    res = u/h^2;
end