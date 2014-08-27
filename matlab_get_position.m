function pt = matlab_get_position(points, distances, key_point, key_distance)

% sort points according to distances in ascend order
[sorted_distances index] = sort(distances);
sorted_points = points(index, :);

syms x y z
Y = solve((x - sorted_points(1, 1))^2 + (y - sorted_points(1, 2))^2 + (z - sorted_points(1, 3))^2 == sorted_distances(1)^2, ...
          (x - sorted_points(2, 1))^2 + (y - sorted_points(2, 2))^2 + (z - sorted_points(2, 3))^2 == sorted_distances(2)^2, ...
          (x - key_point(1))^2 + (y - key_point(2))^2 + (z - key_point(3))^2 == key_distance^2, 'Real', true);

% no solution
if isempty(Y)
    pt = NaN(1, 3);
    return;
end

results = double([Y.x Y.y Y.z]);
nr = size(results);

% one solution
if nr(1) == 1
    pt = results;
    return;
end

% two solution
d1 =  pdist2(results(1, :), sorted_points(3, :), 'euclidean');
d2 =  pdist2(results(2, :), sorted_points(3, :), 'euclidean');

if abs(d1 - sorted_distances(3)) < abs(d2 -sorted_distances(3))
    pt = results(1, :);
else
    pt = results(2, :);
end

end
