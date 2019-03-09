function [x y] = blue(src,evnt)
    global ah
    axis equal
    axis off
    cp = get(ah,'CurrentPoint');  
    x = cp(1,1);y = cp(1,2);
    
     [a,b]=wavread('bubbles.wav');
    sound(a,b) 
     
    if x<9 && y<9 && x>1 && y>1 
            
    rectangle('position',[floor(x)+.1 floor(y)+.1 .8 .8], 'Facecolor', 'b','Curvature',[.5,.5],'edgecolor','none');
    end