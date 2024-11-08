fig = figure();
ax = axes(fig);
currentPoint = [];

finish=false;
while ~finish
 fig.WindowButtonMotionFcn = {@mouseMotionCB,currentPoint};
 k=get(gcf,'CurrentCharacter');
    if k=='q', finish=true; end
end

function mouseMotionCB(fig, event,curr_point)
    %fprintf('Current Point is %f %f\n', ax_handle.CurrentPoint(1,1:2));
    curr_point = fig.CurrentAxes.CurrentPoint(1,1:2);
end