///scr_getSurrWalls(x,y,height,width)
// x      -> xx
// y      -> yy
// height -> h
// width  -> w
var wallCount = 0;
var xx = argument0,
    yy = argument1,
    h = argument2,
    w = argument3,
    r = SMOOTH_RANGE;
// for each row in the range
for (var yn = yy - r; yn <= yy + r; yn++)
{
    // for each cell in the range on the row
    for (var xn = xx - r; xn <= xx + r; xn++)
    {
        // create temporary replacement vars
        var txn, tyn;
        
        // if xn is out of the map choose the wall on the other side of the map
        if(xn < 0)
        {
            txn = xn + w;
        }
        else if(xn >= w)
        {
            txn = xn - w;
        }
        else
        {
            txn = xn;
        }
        
        // if yn is out of the map choose the wall on the other side of the map
        if(yn < 0)
        {
            tyn = yn + h;
        }
        else if(yn >= h)
        {
            tyn = yn - h;
        }
        else
        {
            tyn = yn;
        }
        
        // count walls using txn and tyn
        if(global.grid[# txn, tyn] == 1)
        {
            wallCount++;
        }
    }
}
return wallCount;
