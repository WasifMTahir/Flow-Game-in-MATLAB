function[]= Level4(source,eventdata)
global ah q
figure('Color', [.1 .3 .1],'WindowButtonMotionFcn','');
axis equal
axis off
axis([1 9 1 9])

ah=axes('DrawMode','Fast');
hold on;
fig=gcf;
q=get(gcf,'CurrentAxes');
s = [];
for d=1:8
    for e=1:8
    a=rectangle('position',[d e 1 1], 'Facecolor', [.3 .4 .3],'edgecolor',[.3 .1 .5]);
    s=[s,a];
    end
end
set(s([28 44]), 'Facecolor', 'g')
set(s([36 43]), 'Facecolor', 'm')
set(s([18 34]), 'Facecolor', 'y')
set(s([10 55]), 'Facecolor', 'b')
set(s([62 41]), 'Facecolor', 'r')
set(s([33 63]), 'Facecolor', 'c')
set(s([27 42]), 'Facecolor', [.2 .6 .8])

x2=[];
y2=[];
for p=1:5
  
  [x1,y1]=ginput(1);
   x1=[x2 floor(x1)];
   y1=[y2 floor(y1)];
   if numel(x1)==1 %&& (x1(1)==2 && y1(1)==2) || (x1(1)==5 && y1(1)==2)   
       set(fig,'WindowButtonMotionFcn','[x y] = DrawPath()','KeyPressFcn',@BreakPath);
       ah= set(q,'DrawMode','fast');
       
   end
end