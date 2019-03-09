function [x y] = magenta(src,evnt)
    global ah q
    axis equal
    axis off
    cp = get(ah,'CurrentPoint');  
    x = cp(1,1);y = cp(1,2);
     
    xlimits=get(q,'XLim');
    ylimits=get(q,'YLim');
    xmin=xlimits(1);
    xmax=xlimits(2);
    ymin=ylimits(1);
    ymax=ylimits(2);
    if x<xmax && y<ymax && x>xmin && y>ymin 
            
    rectangle('position',[floor(x)+.1 floor(y)+.1 .8 .8], 'Facecolor', 'm','Curvature',[.5,.5],'edgecolor',[1 0 1]);
    end
