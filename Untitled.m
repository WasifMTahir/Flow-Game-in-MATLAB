global ah
figure('Color', [.1 .3 .1])
axis equal
axis off
axis([1 7 1 7])
q=gca;
s = [];
for d=1:6
    for e=1:6
    a=rectangle('position',[d e 1 1], 'Facecolor', [.3 .4 .3],'edgecolor',[.3 .1 .5]);
    s=[s,a];
    end
end
set(s([6 28]), 'Facecolor', 'g')
set(s([12 27]), 'Facecolor', 'm')
set(s([8 26]), 'Facecolor', 'y')
set(s([16 36]), 'Facecolor', 'b')
set(s([22 35]), 'Facecolor', 'r')
set(gcf, 'KeyPressFcn', 'b = get(gcf, ''CurrentCharacter'');');

[x1,y1]=ginput;
x1=floor(x1);
y1=floor(y1);

b=1;
for p=1:6
    if (x1(p)==2 && y(p)==2) || (x1(p)==5 && y(p)==2)
    
set(h,'WindowButtonMotionFcn','[x y] = wbmcb()');

% axis([1 7 1 7]);
ah = set(q,'DrawMode','fast');
% axis equal
% hold on;
    end   
% while 1
%     double(b)
%     if (x(p)==2 && y(p)==2) || (x(p)==5 && y(p)==2)
%     end
% for i=1:21
%     if double(b) == 28 %left arrow
%         rectangle('position',[x-i y .6 .6], 'Facecolor', 'y','Curvature',[1,1]);
%     elseif double(b) == 29  %right arrow
%      rectangle('position',[x(i)+.2 y(i)+.2 .6 .6], 'Facecolor', 'y','Curvature',[1,1]);
%     elseif double(b) == 30  %up arrow
%      rectangle('position',[x(i) y(i)+1 .6 .6], 'Facecolor', 'y','Curvature',[1,1]);
%     end
% end     
% end
end
