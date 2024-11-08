function arcs = arcplan_main
    % Define the given path made up of 2 segments
   % A = [1, 0];
  %  B = [2, 2];
  %  C = [3, 2.5];
    A = [1,1];
    B = [2,1];
    C = [3,0];

    segments = {A, B; B, C};
    
    % Offset distance
    offsetDistance = 0.5;
    
    % Calculate the offset path
    offsetSegments = cell(2, 2);
    for i = 1:2
        startPoint = segments{i, 1};
        endPoint = segments{i, 2};
        direction = endPoint - startPoint;
        normal = [-direction(2), direction(1)];
        normal = normal / norm(normal);
        offsetSegments{i, 1} = startPoint + offsetDistance * normal;
        offsetSegments{i, 2} = endPoint + offsetDistance * normal;
    end
    
    % Define points along the path
    pointsAlongPath = linspace(0, 1, 10);
    pathPoints = [linspace(A(1), B(1), 5)', linspace(A(2), B(2), 5)';
                  linspace(B(1), C(1), 5)', linspace(B(2), C(2), 5)'];
    
    % Calculate normals for the points along the offset path
    normals = zeros(size(pathPoints));
    for i = 1:length(pointsAlongPath)
        point = pathPoints(i, :);
        if i <= 5
            segment = [offsetSegments{1, 1}; offsetSegments{1, 2}];
        else
            segment = [offsetSegments{2, 1}; offsetSegments{2, 2}];
        end
        % Calculate the normal
        direction = segment(2, :) - segment(1, :);
        normal = [-direction(2), direction(1)];
        normal = normal / norm(normal);
        normals(i, :) = normal;
    end
    
    % For the intersection point, calculate the normal using an arc method
    intersectionPoint = B;
    % Calculate the normals of the two segments
    d1 = B - A;
    d2 = C - B;
    d1_norm = d1 / norm(d1);
    d2_norm = d2 / norm(d2);
    normal1 = [-d1_norm(2), d1_norm(1)];
    normal2 = [-d2_norm(2), d2_norm(1)];
    arcNormal = (normal1 + normal2) / 2;
    arcNormal = arcNormal / norm(arcNormal);
    
    % Print calculated normals
    fprintf('Calculated Normals:\n');
    for i = 1:size(normals, 1)
        fprintf('Point %d: Normal = [%.4f, %.4f]\n', i, normals(i, 1), normals(i, 2));
    end
    fprintf('Intersection Point Normal = [%.4f, %.4f]\n', arcNormal(1), arcNormal(2));
    
    % Plotting
    figure;
    hold on;
    axis equal;
    
    % Plot original segments
    plot([A(1), B(1)], [A(2), B(2)], 'b-', 'LineWidth', 2, 'DisplayName', 'Original Segment 1');
    plot([B(1), C(1)], [B(2), C(2)], 'r-', 'LineWidth', 2, 'DisplayName', 'Original Segment 2');
    
    % Plot offset segments
    plot([offsetSegments{1, 1}(1), offsetSegments{1, 2}(1)], [offsetSegments{1, 1}(2), offsetSegments{1, 2}(2)], 'c-', 'LineWidth', 2, 'DisplayName', 'Offset Segment 1');
    plot([offsetSegments{2, 1}(1), offsetSegments{2, 2}(1)], [offsetSegments{2, 1}(2), offsetSegments{2, 2}(2)], 'c-', 'LineWidth', 2, 'DisplayName', 'Offset Segment 2');
    
    % Plot points and normals along the offset path
    plot(pathPoints(:, 1), pathPoints(:, 2), 'ko', 'MarkerFaceColor', 'k', 'DisplayName', 'Points on Path');
    quiver(pathPoints(:, 1), pathPoints(:, 2),normals(:, 1),normals(:, 2), 0.3, 'g', 'LineWidth', 1.5, 'DisplayName', 'Normals');
    % Plot arc between normals at intersection
    theta1 = acos(dot(normal1,[1,0])); %Get the angle of the first normal in relation to the horizontal
    theta2 = acos(dot(normal2,[1,0])); %Get the angle of the second normal in relation to the horizontal
     arcPoints = linspace(theta1,theta2,1000);
     arcX = intersectionPoint(1) + offsetDistance * cos(arcPoints);
     arcY = intersectionPoint(2) + offsetDistance * sin(arcPoints);
    arcs = [transpose(arcX) transpose(arcY)];
    plot(arcX, arcY, 'c-', 'LineWidth', 1.5, 'DisplayName', 'Arc Between Normals');
    
    % Labels and legend
    xlabel('X');
    ylabel('Y');
    title('Offset Path with Normals');
   % legend('show');
    grid on;
    hold off;
end

% Run the function
hello = arcplan_main;
