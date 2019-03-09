close all
clear all

global menu
menu=figure('position',[0 0 800 600], 'Visible','on','units','normalized');
axis([0 800 0 600]);

background=imread('flow.jpg');
hbackground=image(background);

L3 = uicontrol(menu,'Position',[.15 .2 .2 .05],'Style','PushButton','units','normalized',...
    'String','Level 1');
L4 = uicontrol(menu,'Position',[.40 .2 .2 .05],'Style','PushButton','units','normalized',...
    'String','Level 2');
L5 = uicontrol(menu,'Position',[.65 .2 .2 .05],'Style','PushButton','units','normalized',...
    'String','Level 3');
Instruct = uicontrol(menu,'Position',[.7 .8 .2 .05],'Style','PushButton','units','normalized',...
    'String','Instructions');

set(L3,'callback',@Level3);
set(L4,'callback',@Level4);
set(L5,'callback',@Level5);
set(Instruct,'callback',@Instructions);
axis off