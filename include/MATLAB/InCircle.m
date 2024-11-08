classdef InCircle < handle
    properties
        triX
        triY
        circ_geom
        circ_O
        circ_rad
        circ_g
        circ_h
        circ_i
    end


    
    %  ax=-1;ay=0;
    % bx=0;by=1;
    % cx=1;cy=0;
    methods
        function obj = InCircle(Xarr,Yarr)
            obj.triX = Xarr;
            obj.triY = Yarr;
        end
        
        % plot the triabgle
        function [g,h,i,p] = incircle_gen(obj)
            ax = obj.triX(1);
            bx = obj.triX(2);
            cx = obj.triX(3);

            ay = obj.triY(1);
            by = obj.triY(2);
            cy = obj.triY(3);
            
            plot([ax bx cx ax], [ay by cy ay]);
            hold on
            ab = distance([ax ay], [bx by]);
            ac = distance([ax ay], [cx cy]);
            bc = distance([bx by], [cx cy]);
            % d on bc. bisector theorem
            dx = cx + (bx-cx)*ac/(ac + ab);
            dy = cy + (by-cy)*ac/(ac + ab);
            % e on ab. bisector theorem
            ex = ax + (bx-ax)*ac/(ac+bc);
            ey = ay + (by-ay)*ac/(ac+bc);
            % ad and ce intercept at the center of the circle
            [ox, oy] = polyxpoly([ax dx], [ay dy], [cx ex], [cy ey]);
            obj.circ_O = [ox oy];
            % radius is the shortest distance from o to bc
            radius = obj.point_to_line([ox oy 0], [bx by 0], [cx cy 0]);
            obj.circ_rad = radius;
            % G is O's projection on bc, and is the tangent point
            [gx, gy] = obj.point_project([ox oy], [cx cy], [bx by]);
            obj.circ_g = [gx gy];
            % H is O's projection on ab, and is the tangent point
            [hx, hy] = obj.point_project([ox oy], [ax ay], [bx by]); 
            obj.circ_h = [hx hy];
            % I is O's projection on ac, and is the tangent point
            [ix, iy] = obj.point_project([ox oy], [ax ay], [cx cy]);
            obj.circ_i = [ix iy];
            % now draw everything
            plot([ax dx], [ay dy]);
            plot([cx ex], [cy ey]);
            axis equal
            % draw the circle
            p = nsidedpoly(300, 'center', [ox oy], 'Radius', radius);
            obj.circ_geom = p;
            plot(p, 'FaceColor', 'r');
            % three vertices of the triangle
            text(ax, ay, 'A');
            text(bx, by, 'B');
            text(cx, cy, 'C');
            % Note D and E are NOT the tangent points. They are the intercept of
            % bisector
            text(dx, dy, 'D');
            text(ex, ey, 'E');
            % O is the center of the circle
            text(ox, oy, 'O');
            % G, H, I are the tangent points.
            text(gx, gy, 'G');
            text(hx, hy, 'H');
            text(ix, iy, 'I')
        end
        function dist = distance(obj,p1, p2)
            dist = sqrt((p1(1) - p2(1))^2+(p1(2) - p2(2))^2);
        end
        % compute the shortest distance from a point to a line
        % https://www.mathworks.com/matlabcentral/answers/95608-is-there-a-function-in-matlab-that-calculates-the-shortest-distance-from-a-point-to-a-line
        function d = point_to_line(obj,pt, v1, v2)
            a = v1 - v2;
            b = pt - v2;
            d = norm(cross(a,b)) / norm(a);
        end      
        % project point c on to line ab. If d is the projection point on ab, then
        % the distance cd must be the min.
        function [dx, dy] = point_project(obj,c, a, b)
            ab_sq = (a(1) - b(1))^2 + (a(2) - b(2))^2;
            alpha = -((a(2)-c(2))*(b(2)-a(2))+(a(1)-c(1))*(b(1)-a(1)))/ab_sq;
            dx = a(1) + alpha*(b(1)-a(1));
            dy = a(2) + alpha*(b(2)-a(2));
        end
    end
end
