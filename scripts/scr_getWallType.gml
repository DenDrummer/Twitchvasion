///scr_getWallType(x,y,w,h)
var wt    = 0,
    worth = 1,
    xx    = argument0,
    yy    = argument1,
    h     = argument2,
    w     = argument3;
for(var i = yy - 1; i <= yy; i++)
{
    for(var j = xx - 1; j <= xx; j++)
    {
        //create temporary vars
        var tx, ty;
        //if i or j is outside the map, choose the wall on the other end of the map
        
        //x coordinate
        if(j < 0)
        {
            tx = j + w;
        }
        if(i > h)
        {
            tx = j - w;
        }
        else
        {
            tx = j;
        }
        
        //y coordinate
        if(i < 0)
        {
            ty = i + h;
        }
        if(i > h)
        {
            ty = i - h;
        }
        else
        {
            ty = i;
        }
        
        //check if wall or not
        if(global.grid[# tx, ty] == 1)
        {
            wt += worth;
        }
        
        worth *= 2;
    }
}
return wt;
