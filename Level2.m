clear all
global ah q
figure('Color', [.1 .3 .1],'WindowButtonMotionFcn','')
axis([1 8 1 8])
axis equal
axis off

ah=axes('DrawMode','Fast');
hold on;
fig=gcf;
q=get(gcf,'CurrentAxes');

s = [];
for d=1:7
    for e=1:7
    a=rectangle('position',[d e 1 1], 'Facecolor', [.3 .4 .3],'edgecolor',[.3 .1 .5]);
    s=[s,a];
    end
end
set(s([43 48]), 'Facecolor', 'g')
set(s([4 38]), 'Facecolor', 'm')
set(s([31 35]), 'Facecolor', 'y')
set(s([17 49]), 'Facecolor', 'b')
set(s([5 21]), 'Facecolor', 'r')
set(s([18 34]), 'Facecolor', 'c')
set(gcf, 'KeyPressFcn', 'b = get(gcf, ''CurrentCharacter'');');

x2=[];
y2=[];
for p=1:5
  
  [x1,y1]=ginput(1);
   x1=[x2 floor(x1)];
   y1=[y2 floor(y1)];
   if numel(x1)==1 && (x1(1)==2 && y1(1)==2) || (x1(1)==5 && y1(1)==2)   
       set(fig,'WindowButtonMotionFcn','[x y] = DrawPath()','KeyPressFcn',@BreakPath);
       ah= set(q,'DrawMode','fast');
       
   end
end