figure('Color', [.1 .3 .5])
axis equal
axis off
axis([1 7 1 7])
s = [];
for i=1:6
    for j=1:6
    a=rectangle('position',[i j 1 1], 'Facecolor', [.7 .3 .1],'edgecolor',[.3 .1 .5]);
    s=[s,a];
    end
end
set(s([6 28]), 'Facecolor', 'g')
set(s([12 27]), 'Facecolor', 'm')
set(s([8 26]), 'Facecolor', 'y')
set(s([16 36]), 'Facecolor', 'b')
set(s([22 35]), 'Facecolor', 'r')
% set(findobj('Facecolor', 'g'),'Facecolor', [rand rand rand])

[x,y]=ginput(31);
x=floor(x);
y=floor(y);
for i=1:31
    if (x(i)==1 && y(i)==6) || (x(i)==5 && y(i)==4)
    for j=(i+1):(i+13)
    rectangle('position',[x(j)+.2 y(j)+.2 .6 .6], 'Facecolor', 'g','Curvature',[1,1]);
    end
    
    elseif x(i)==2 && y(i)==6 || (x(i)==5 && y(i)==3)
    for j=(i+1):(i+5)
    rectangle('position',[x(j)+.2 y(j)+.2 .6 .6], 'Facecolor', 'm','Curvature',[1,1]);
    end
    elseif x(i)==2 && y(i)==2 || (x(i)==5 && y(i)==2)
    for j=(i+1):(i+2)
    rectangle('position',[x(j)+.2 y(j)+.2 .6 .6], 'Facecolor', 'y','Curvature',[1,1]);
    end
    elseif x(i)==3 && y(i)==4 || (x(i)==6 && y(i)==6)
    for j=(i+1):(i+4)
    rectangle('position',[x(j)+.2 y(j)+.2 .6 .6], 'Facecolor', 'b','Curvature',[1,1]);
    end
    elseif x(i)==4 && y(i)==4 || (x(i)==6 && y(i)==5)
    for j=(i+1):(i+2)
    rectangle('position',[x(j)+.2 y(j)+.2 .6 .6], 'Facecolor', 'r','Curvature',[1,1]);
    end
    end
        if findobj('facecolor','k')==0
        break
        end
end

%  waitforbuttonpress;    
%     a = get(gcf, 'CurrentCharacter');

