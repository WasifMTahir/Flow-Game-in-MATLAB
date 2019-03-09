close all
clc
clear

global ah
figure('WindowButtonMotionFcn','[x y] = wbmcb()');
flow
axis([1 7 1 7]);
ah = axes('DrawMode','Fast');
hold on;