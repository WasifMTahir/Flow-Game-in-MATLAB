function BreakPath(varargin)
 fig = varargin{1};
 key = get(fig,'CurrentCharacter');

 
 if (key == 32)  %Ascii value of spacebar
     set(fig,'WindowButtonMotionFcn','[x y] = DrawPath()');
 elseif (key==114)
     set(fig,'WindowButtonMotionFcn','[x y] = red()');
 elseif (key==103)
     set(fig,'WindowButtonMotionFcn','[x y] = green()');
 elseif (key==98)
     set(fig,'WindowButtonMotionFcn','[x y] = blue()');
 elseif (key==121)
     set(fig,'WindowButtonMotionFcn','[x y] = yellow()');
 elseif (key==109)
     set(fig,'WindowButtonMotionFcn','[x y] = magenta()');
 elseif (key==99)
     set(fig,'WindowButtonMotionFcn','[x y] = cyan()');
  elseif (key==108)
     set(fig,'WindowButtonMotionFcn','[x y] = ltblue()');
 end
