function pt = get_position(points, distances, key_point, key_distance)

% sort points according to distances in ascend order
[sorted_distances index] = sort(distances);
sorted_points = points(index, :);

compute_points = [sorted_points(1:2, :); key_point];
compute_distances = [sorted_distances(1:2) key_distance];

results = compute_position(compute_points, compute_distances);

% no solution
if ~isreal(results)
    pt = NaN(1, 3);
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

function results = compute_position(points, distances)

    a1 = 2 * (points(2, 1) - points(1, 1));
    b1 = 2 * (points(2, 2) - points(1, 2));
    c1 = 2 * (points(2, 3) - points(1, 3));
    e1 = distances(1)^2 - distances(2)^2 + points(2, 1)^2 - points(1, 1)^2 + points(2, 2)^2 - points(1, 2)^2 + points(2, 3)^2 - points(1, 3)^2;
    
    a2 = 2 * (points(3, 1) - points(1, 1));
    b2 = 2 * (points(3, 2) - points(1, 2));
    c2 = 2 * (points(3, 3) - points(1, 3));
    e2 = distances(1)^2 - distances(3)^2 + points(3, 1)^2 - points(1, 1)^2 + points(3, 2)^2 - points(1, 2)^2 + points(3, 3)^2 - points(1, 3)^2;
    
    A = - (b1 * c2 - b2 * c1) / (b1 * a2 - b2 * a1);
	B =   (b1 * e2 - b2 * e1) / (b1 * a2 - b2 * a1);
    
	C = - (a1 * c2 - a2 * c1) / (a1 * b2 - a2 * b1);
	D =   (a1 * e2 - a2 * e1) / (a1 * b2 - a2 * b1);
    
    a = A * A + C * C + 1;
	b = 2 * (A * (B - points(3, 1)) + C * (D - points(3, 2)) - points(3, 3));
	c = (B - points(3, 1))^2 + (D - points(3, 2))^2 + points(3, 3)^2 - distances(3)^2;

    results = zeros(2, 3);
    
	results(1, 3) = (-b + sqrt(b * b - 4 * a * c)) / (2 * a);
    results(2, 3) = (-b - sqrt(b * b - 4 * a * c)) / (2 * a);
		
    results(1, 1) = A * results(1, 3) + B;
    results(2, 1) = A * results(2, 3) + B;

	results(1, 2) = C * results(1, 3) + D;
	results(2, 2) = C * results(2, 3) + D;
end
