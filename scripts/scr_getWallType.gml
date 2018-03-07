///scr_getWallType(x,y,w,h)
var wt = 0,
    xx = argument0,
    yy = argument1,
    h  = argument2,
    w  = argument3;
//upper left
if(xx == 0 || yy == 0)
{
    wt += 1;
}
else if(global.grid[# xx-1,yy-1] == 1)
{
    wt += 1;
}
//upper right
if(xx == h || yy == 0)
{
    wt += 2;
}
else if(global.grid[# xx,yy-1] == 1)
{
    wt += 2;
}
//lower left
if(xx == 0 || yy == w)
{
    wt += 4;
}
else if(global.grid[# xx-1,yy] == 1)
{
    wt += 4;
}
//lower right
if(xx == h || yy == w)
{
    wt += 8;
}
else if(global.grid[# xx,yy] == 1)
{
    wt += 8;
}
return wt;
