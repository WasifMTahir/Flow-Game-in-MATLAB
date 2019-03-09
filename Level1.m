function[]= Level1(source,eventdata)

global ah q
figure('Color', [.1 .3 .1],'WindowButtonMotionFcn','');

% axis([1 7 1 7]);


ah = axes('DrawMode','Fast','XLim',[1 8], 'YLim',[1 8]);
hold on;
axis off
fig=gcf;
q=get(fig,'currentaxes');
% q=get(fig,'CurrentAxes');
s = [];
for d=1:6
    for e=1:6
    a=rectangle('position',[d e 1 1], 'Facecolor', [.3 .4 .3],'edgecolor',[.3 .1 .5],'LineWidth', 2);
    s=[s,a];
    end
end
text(3,7.5,'CLICK ANYWHERE TO START');
set(s([6 28]), 'Facecolor', 'g')
set(s([12 27]), 'Facecolor', 'm')
set(s([8 26]), 'Facecolor', 'y')
set(s([16 36]), 'Facecolor', 'b')
set(s([22 35]), 'Facecolor', 'r')

x2=[];
y2=[];
for p=1:5
  
  [x1,y1]=ginput(1);
   x1=[x2 floor(x1)];
   y1=[y2 floor(y1)];
   if numel(x1)==1 && (x1(1)==2 && y1(1)==2) || (x1(1)==5 && y1(1)==2)   
       set(fig,'WindowButtonMotionFcn','[x y] = DrawPath()','KeyPressFcn',@BreakPath);
       axis equal
       ah = set(q,'DrawMode','fast','XLim',[1 7], 'YLim',[1 7]);
       
   end   
end
%    if (x1(p)==1 && y1(p)==6) || (x1(p)==5 && y1(p)==4)   
%        set(fig,'WindowButtonMotionFcn','[x y] = green()');
%        ah = set(q,'DrawMode','fast');
%    end