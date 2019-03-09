function [x y] = DrawPath(src,evnt)
    global ah
    
    cp = get(ah,'CurrentPoint');  
    x = cp(1,1);y = cp(1,2);
     axis equal
    %for i=1:10
    %[x1,y1]=ginput;
    if x<7 && y<7 && x>1 && y>1 %&& x1==5 && y1==2
%        if (x1==2 && y1==2) || (x1==5 && y1==2)
     [transp,map,alph]=imread('transparent.png');
     htransp=image(transp);
     set(htransp,'xdata',[size(transp,2)/256 0]);
     set(htransp,'ydata',[size(transp,1)/256 0]);
     set(htransp,'alphadata',alph);
%    rectangle('position',[floor(x) floor(y) 1 1], 'Facecolor', [.3 .4 .3],'Curvature',[1,1]);
%        end
    %end
    end