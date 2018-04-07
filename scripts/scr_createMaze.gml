///scr_createMaze()
randomize();
w = (room_width div CELL_SIZE);
h = (room_height div CELL_SIZE);

global.grid = ds_grid_create(w, h);

for(var i = 0; i <= h; i++)
{
    for(var j = 0; j <= w; j++)
    {
        var r = irandom(AIR_CHANCE + GRID_FILL);
        if(r < GRID_FILL)
        {
            global.grid[# j, i] = 1;  //create wall
        }
        else
        {
            global.grid[# j, i] = 0;  //create air
        }
    }
}

scr_grid_smooth(w, h);

scr_buildMaze();
