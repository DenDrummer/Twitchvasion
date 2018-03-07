///scr_grid_smooth(width, height)
var w = argument0, h = argument1;
var newMap = ds_grid_create(w,h);
for (var i = 0; i < h; i++)
{
    for (var j = 0; j < w; j++)
    {
        //nwt: nearby wall tiles
        var nwt = scr_getSurrWalls(j,i,h,w);
        if (nwt > SMOOTH_CREATE)
        {
            newMap[# j,i] = 1;
        }
        else if (nwt < SMOOTH_DESTROY)
        {
            newMap[# j,i] = 0;
        }
        else
        {
            newMap[# j,i] = global.grid[# j,i];
        }
    }
}

ds_grid_copy(global.grid, newMap);

ds_grid_destroy(newMap);
