close all
clc
clear

global ah
figure('WindowButtonMotionFcn','[x y] = wbmcb()');
%flow
axis([1 7 1 7]);
h=gcf;
s = [];
for d=1:6
    for e=1:6
    a=rectangle('position',[d e 1 1], 'Facecolor', [.7 .3 .1],'edgecolor',[.3 .1 .5]);
    s=[s,a];
    end
end
set(s([6 28]), 'Facecolor', 'g')
set(s([12 27]), 'Facecolor', 'm')
set(s([8 26]), 'Facecolor', 'y')
set(s([16 36]), 'Facecolor', 'b')
set(s([22 35]), 'Facecolor', 'r')
ah = axes('DrawMode','Fast');
hold on;