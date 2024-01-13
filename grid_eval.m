function res = grid_eval(h, fun)
% grid evaluation

% Step 1: Define the function
% fun = @(x, y) x.^2 + y.^2;
% fun = @(x,y) 2*pi*pi.*sin(pi*x).*sin(pi*y);

% Step 2: Create a 2D grid
[X, Y] = meshgrid(0:h:1, 0:h:2);

% Step 3: Evaluate the function on the grid
Z = fun(X, Y);

% Plot the results
surf(X, Y, Z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Function Evaluation on a 2D Grid');

% Save the figure
saveas(gcf, 'eval_fun.png'); % Change the file name and extension as needed

res = Z;
end