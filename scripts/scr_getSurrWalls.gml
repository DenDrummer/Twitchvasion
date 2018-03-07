///scr_getSurrWalls(x,y,height,width)
var wallCount = 0;
var xx = argument0, yy = argument1, h = argument2, w = argument3, r = SMOOTH_RANGE;
for (var yn = yy - r; yn <= yy + r; yn++)
{
    for (var xn = xx - r; xn <= xx + r; xn++)
    {
        if ((xn >= 0 && xn < w) && (yn >= 0 && yn < h))
        {
            if(point_in_rectangle(xn,yn,xx,yy,xx,yy) && global.grid[# xn, yn] == 1)
            {
                wallCount++;
            }
            else if(point_in_rectangle(xn,yn,xx-r,yy-r,xx+r,yy+r) && global.grid[# xn, yn] == 1)
            {
                wallCount++;
                //if(point_in_rectangle(xn,yn,xx-1,yy-1,xx+1,yy+1) && global.grid[# xn, yn] == 1)
                //{
                //    wallCount++;
                //}
            }
            //if ((xn != xx || yn != yy) )
            //{
            //    wallCount++;
            //}
        }
        else
        {
            wallCount++;
        }
    }
}
return wallCount;
