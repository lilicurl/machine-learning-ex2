function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

% tomo de y las filas que son igual a 0
igualCero = find(y == 0);
% tomo de y las filas que son igual a 1
igualUno = find(y == 1);
% creo vector de X donde y = 0
col1gualCero = X(igualCero, 1);
col2igualCero = X(igualCero, 2);
% creo vector de X donde y = 1
col1igualUno = X(igualUno, 1);
col2igualUno = X(igualUno, 2);
plot(col1gualCero, col2igualCero, 'koy','markersize', 10);
plot(col1igualUno, col2igualUno, 'k+k','markersize', 10);











% =========================================================================



hold off;

end
