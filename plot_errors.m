real_points = [4 4 0; -4 4 0; -4 -4 0; 4 -4 0; 0 -2 8];
delta_points = [0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0];
delta_distances = [0.1 0 0 0 0];
test_point_z = -1;

[X Y errors] = get_errors(real_points, delta_points, delta_distances, test_point_z);
[C h] = contour(X, Y, errors);
set(h,'ShowText','on');