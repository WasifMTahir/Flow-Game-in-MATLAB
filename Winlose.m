global ah
a=imread('3rd.jpg')
win =corr2(ah,a)
if win==1
    title(YOU WIN!!!)
else
    title(Try Again)
end