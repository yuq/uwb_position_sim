function [X Y errors] = get_errors(real_points, delta_points, delta_distances, test_point_z)

[X Y] = meshgrid(-40:2:40);
errors = zeros(size(X));
[width height] = size(errors);

compute_points = real_points + delta_points;

for i = 1:width
    for j = 1:height
        test_point = [X(i, j) Y(i, j) test_point_z];
        compute_distances = pdist2(test_point, real_points, 'euclidean') + delta_distances;
        compute_test_point = get_position(compute_points(1:4, :), compute_distances(1:4), ...
                                          compute_points(5, :), compute_distances(5));
        errors(i, j) = pdist2(test_point, compute_test_point, 'euclidean');
    end
end

end