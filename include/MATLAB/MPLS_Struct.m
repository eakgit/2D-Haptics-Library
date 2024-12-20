classdef MPLS_Struct < handle
    properties
        seg_num
        segs
        offset_dist
        offset_segs
        normals
        arcs
        offset_interpts
        theta
        arc_bisector
        var_arc
    end
    methods

        function obj  = MPLS_Struct(offsetdist,segs)
            % Define the given path
            obj.segs = segs;
            obj.seg_num = size(segs,1);
            obj.offset_dist = offsetdist;
            obj.offset_segs = cell(obj.seg_num,2);
            for k=1:obj.seg_num
                start_pt = obj.segs{k,1};
                end_pt = obj.segs{k,2};
                direction = end_pt - start_pt;
                normal =  [-direction(2), direction(1)];
                normal = normal/norm(normal);
                obj.normals(k,:) = normal;
                obj.offset_segs{k,1} = start_pt + (obj.offset_dist*obj.normals(k,:));
                obj.offset_segs{k,2} = end_pt + (obj.offset_dist*obj.normals(k,:));
            end

            normal_number = size(obj.normals,1);
            obj.arcs = double.empty(1000,2,0);
            obj.var_arc = double.empty(1000,2,0);
            offset_number = size(obj.offset_segs,1);
            for k=1:normal_number-1
                intersection_pt = obj.segs{k,2};
                rep_inter = repmat(intersection_pt,1000,1);
                theta1 = acos(dot(obj.normals(k,:),[1 0]));
                theta2 = acos(dot(obj.normals(k+1,:),[1 0]));
                th = linspace(theta1,theta2,1000);
                obj.theta(k,:) = theta2 -theta1;
                obj.arcs(:,:,k) = rep_inter+(obj.offset_dist*transpose([cos(th);sin(th)]));
            end

            for k=1:offset_number-1
                obj.offset_interpts(k,:) = obj.calc_offset_intersection(k);
                obj.offset_segs{k,2} = obj.offset_interpts(k,:);
                obj.offset_segs{k+1,1} = obj.offset_interpts(k,:);
            end

            for k=1:obj.seg_num
                obj.arc_bisector(k,:) = obj.offset_segs{k,2}-obj.segs{k,2};
            end

            for k=1:offset_number-1
                obj.var_arc(:,:,k) = obj.varc_gen(k,0.75);
            end
        end

        function intersect_pt = calc_offset_intersection(obj,index)
            m1 = (obj.offset_segs{index,2}(2) - obj.offset_segs{index,1}(2))/(obj.offset_segs{index,2}(1) - obj.offset_segs{index,1}(1));
            m2 = (obj.offset_segs{index+1,2}(2) - obj.offset_segs{index+1,1}(2))/(obj.offset_segs{index+1,2}(1) - obj.offset_segs{index+1,1}(1));
            c1 = obj.offset_segs{index,1}(2) - m1*obj.offset_segs{index,1}(1);
            c2 = obj.offset_segs{index+1,1}(2) - m2*obj.offset_segs{index+1,1}(1);
            A = [m1 -1;m2 -1];
            b = [-c1;-c2];
            if ((m1 ~= m2)&(c1 ~= c2))
                pt = A\b;
            end
            if (obj.offset_segs{index+1,1} ==  obj.offset_segs{index,2})
                intersect_pt = obj.offset_segs{index,2};
            else
                intersect_pt = transpose(pt);

            end

        end

        function varc = varc_gen(obj,k,t)
            if t < 0
                t = 0;
            elseif t > 1
                t = 1;
            end

            arc_bsect = [obj.arc_bisector(k,1); obj.arc_bisector(k,2)];
            segcenter = obj.segs{k,2};
            th = t*obj.theta(k)/2;

            R1 = [cos(th) -sin(th);
                sin(th) cos(th)];
            R2 = [cos(-th) -sin(-th);
                sin(-th) cos(-th)];
            rot_bisect1 = R1*arc_bsect;
            rot_bisect2 = R2*arc_bsect;

            p_th = segcenter+[rot_bisect1(1) rot_bisect1(2)];
            p_thminus = segcenter+[rot_bisect2(1) rot_bisect2(2)];

            if th < 0

                offset1_x = [obj.offset_segs{k+1,1}(1) obj.offset_segs{k+1,2}(1)];
                offset1_y = [obj.offset_segs{k+1,1}(2) obj.offset_segs{k+1,2}(2)];

                xv_1 = [segcenter(1) p_th(1)];
                yv_1 = [segcenter(2) p_th(2)];


                offset2_x = [obj.offset_segs{k,1}(1) obj.offset_segs{k,2}(1)];
                offset2_y = [obj.offset_segs{k,1}(2) obj.offset_segs{k,2}(2)];

                xv_2 = [segcenter(1) p_thminus(1)];
                yv_2 = [segcenter(2) p_thminus(2)];


                [xi1 yi1] = polyxpoly(offset1_x,offset1_y,xv_1,yv_1);
                [xi2 yi2] = polyxpoly(offset2_x,offset2_y,xv_2,yv_2);

            else
                offset1_x = [obj.offset_segs{k,1}(1) obj.offset_segs{k,2}(1)];
                offset1_y = [obj.offset_segs{k,1}(2) obj.offset_segs{k,2}(2)];

                xv_1 = [segcenter(1) p_th(1)];
                yv_1 = [segcenter(2) p_th(2)];


                offset2_x = [obj.offset_segs{k+1,1}(1) obj.offset_segs{k+1,2}(1)];
                offset2_y = [obj.offset_segs{k+1,1}(2) obj.offset_segs{k+1,2}(2)];

                xv_2 = [segcenter(1) p_thminus(1)];
                yv_2 = [segcenter(2) p_thminus(2)];


                [xi1 yi1] = polyxpoly(offset1_x,offset1_y,xv_1,yv_1);
                [xi2 yi2] = polyxpoly(offset2_x,offset2_y,xv_2,yv_2);
            end

            v = [xi1 yi1];
            r = norm(segcenter-v);
            norm_ang1 = acos(dot(obj.normals(k,:),[1 0]));
            norm_ang2 = acos(dot(obj.normals(k+1,:),[1 0]));
            mid_ang = (norm_ang1+norm_ang2)/2;
            th_range = linspace(-th,th,1000);
            rep_seg_cent = repmat(segcenter,1000,1);
            varc = rep_seg_cent+r*transpose([cos(th_range+mid_ang);sin(th_range+mid_ang)]);
        end


        function plotfunc(obj)
            figure;
            hold on;
            axis equal;

            for k=1:obj.seg_num
               p(1) = plot([obj.segs{k,1}(1) obj.segs{k,2}(1)],[obj.segs{k,1}(2) obj.segs{k,2}(2)], 'r-', 'LineWidth', 2);
               p(2) = plot([obj.offset_segs{k,1}(1) obj.offset_segs{k,2}(1)],[obj.offset_segs{k,1}(2) obj.offset_segs{k,2}(2)], 'b-', 'LineWidth', 2);
               p(3) = plot([obj.segs{k,2}(1) obj.offset_segs{k,2}(1)],[obj.segs{k,2}(2) obj.offset_segs{k,2}(2)],'k-','LineWidth',2);
            end

            arc_num =size(obj.arcs,3);
            for i=1:arc_num
                arc_curr = obj.arcs(:,:,i);
               p(4) = plot(arc_curr(:,1),arc_curr(:,2), 'c-', 'LineWidth', 1.5);
            end
    
            varc_num =size(obj.var_arc,3);
            for i=1:varc_num
                varc_curr = obj.var_arc(:,:,i);
              p(5) =  plot(varc_curr(:,1),varc_curr(:,2), 'g-', 'LineWidth', 2);
            end

            xlabel('X')
            ylabel('Y')
            title('Segment and Offset Segment Graph')
            legend(p,'Original Curve','Offset Curve','Angle Bisector','MPLS Offset Curve','Variable MPLS Curve')
        end
    end
end
